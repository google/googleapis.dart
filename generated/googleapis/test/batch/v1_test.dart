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

import 'package:googleapis/batch/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccelerator = 0;
api.Accelerator buildAccelerator() {
  final o = api.Accelerator();
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    o.count = 'foo';
    o.installGpuDrivers = true;
    o.type = 'foo';
  }
  buildCounterAccelerator--;
  return o;
}

void checkAccelerator(api.Accelerator o) {
  buildCounterAccelerator++;
  if (buildCounterAccelerator < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(o.installGpuDrivers!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccelerator--;
}

core.List<core.int> buildUnnamed0() => [
      42,
      42,
    ];

void checkUnnamed0(core.List<core.int> o) {
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

core.int buildCounterActionCondition = 0;
api.ActionCondition buildActionCondition() {
  final o = api.ActionCondition();
  buildCounterActionCondition++;
  if (buildCounterActionCondition < 3) {
    o.exitCodes = buildUnnamed0();
  }
  buildCounterActionCondition--;
  return o;
}

void checkActionCondition(api.ActionCondition o) {
  buildCounterActionCondition++;
  if (buildCounterActionCondition < 3) {
    checkUnnamed0(o.exitCodes!);
  }
  buildCounterActionCondition--;
}

core.List<api.AgentTaskInfo> buildUnnamed1() => [
      buildAgentTaskInfo(),
      buildAgentTaskInfo(),
    ];

void checkUnnamed1(core.List<api.AgentTaskInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentTaskInfo(o[0]);
  checkAgentTaskInfo(o[1]);
}

core.int buildCounterAgentInfo = 0;
api.AgentInfo buildAgentInfo() {
  final o = api.AgentInfo();
  buildCounterAgentInfo++;
  if (buildCounterAgentInfo < 3) {
    o.jobId = 'foo';
    o.reportTime = 'foo';
    o.state = 'foo';
    o.taskGroupId = 'foo';
    o.tasks = buildUnnamed1();
  }
  buildCounterAgentInfo--;
  return o;
}

void checkAgentInfo(api.AgentInfo o) {
  buildCounterAgentInfo++;
  if (buildCounterAgentInfo < 3) {
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskGroupId!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.tasks!);
  }
  buildCounterAgentInfo--;
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterAgentMetadata = 0;
api.AgentMetadata buildAgentMetadata() {
  final o = api.AgentMetadata();
  buildCounterAgentMetadata++;
  if (buildCounterAgentMetadata < 3) {
    o.creationTime = 'foo';
    o.creator = 'foo';
    o.imageVersion = 'foo';
    o.instance = 'foo';
    o.instanceId = 'foo';
    o.instancePreemptionNoticeReceived = true;
    o.osRelease = buildUnnamed2();
    o.version = 'foo';
    o.zone = 'foo';
  }
  buildCounterAgentMetadata--;
  return o;
}

void checkAgentMetadata(api.AgentMetadata o) {
  buildCounterAgentMetadata++;
  if (buildCounterAgentMetadata < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.instancePreemptionNoticeReceived!, unittest.isTrue);
    checkUnnamed2(o.osRelease!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentMetadata--;
}

core.int buildCounterAgentTask = 0;
api.AgentTask buildAgentTask() {
  final o = api.AgentTask();
  buildCounterAgentTask++;
  if (buildCounterAgentTask < 3) {
    o.intendedState = 'foo';
    o.reachedBarrier = 'foo';
    o.spec = buildTaskSpec();
    o.status = buildTaskStatus();
    o.task = 'foo';
  }
  buildCounterAgentTask--;
  return o;
}

void checkAgentTask(api.AgentTask o) {
  buildCounterAgentTask++;
  if (buildCounterAgentTask < 3) {
    unittest.expect(
      o.intendedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reachedBarrier!,
      unittest.equals('foo'),
    );
    checkTaskSpec(o.spec!);
    checkTaskStatus(o.status!);
    unittest.expect(
      o.task!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentTask--;
}

core.int buildCounterAgentTaskInfo = 0;
api.AgentTaskInfo buildAgentTaskInfo() {
  final o = api.AgentTaskInfo();
  buildCounterAgentTaskInfo++;
  if (buildCounterAgentTaskInfo < 3) {
    o.runnable = 'foo';
    o.taskId = 'foo';
    o.taskStatus = buildTaskStatus();
  }
  buildCounterAgentTaskInfo--;
  return o;
}

void checkAgentTaskInfo(api.AgentTaskInfo o) {
  buildCounterAgentTaskInfo++;
  if (buildCounterAgentTaskInfo < 3) {
    unittest.expect(
      o.runnable!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
    checkTaskStatus(o.taskStatus!);
  }
  buildCounterAgentTaskInfo--;
}

core.int buildCounterAgentTimingInfo = 0;
api.AgentTimingInfo buildAgentTimingInfo() {
  final o = api.AgentTimingInfo();
  buildCounterAgentTimingInfo++;
  if (buildCounterAgentTimingInfo < 3) {
    o.agentStartupTime = 'foo';
    o.bootTime = 'foo';
    o.scriptStartupTime = 'foo';
  }
  buildCounterAgentTimingInfo--;
  return o;
}

void checkAgentTimingInfo(api.AgentTimingInfo o) {
  buildCounterAgentTimingInfo++;
  if (buildCounterAgentTimingInfo < 3) {
    unittest.expect(
      o.agentStartupTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scriptStartupTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentTimingInfo--;
}

core.List<api.InstancePolicyOrTemplate> buildUnnamed3() => [
      buildInstancePolicyOrTemplate(),
      buildInstancePolicyOrTemplate(),
    ];

void checkUnnamed3(core.List<api.InstancePolicyOrTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstancePolicyOrTemplate(o[0]);
  checkInstancePolicyOrTemplate(o[1]);
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterAllocationPolicy = 0;
api.AllocationPolicy buildAllocationPolicy() {
  final o = api.AllocationPolicy();
  buildCounterAllocationPolicy++;
  if (buildCounterAllocationPolicy < 3) {
    o.instances = buildUnnamed3();
    o.labels = buildUnnamed4();
    o.location = buildLocationPolicy();
    o.network = buildNetworkPolicy();
    o.serviceAccount = buildServiceAccount();
  }
  buildCounterAllocationPolicy--;
  return o;
}

void checkAllocationPolicy(api.AllocationPolicy o) {
  buildCounterAllocationPolicy++;
  if (buildCounterAllocationPolicy < 3) {
    checkUnnamed3(o.instances!);
    checkUnnamed4(o.labels!);
    checkLocationPolicy(o.location!);
    checkNetworkPolicy(o.network!);
    checkServiceAccount(o.serviceAccount!);
  }
  buildCounterAllocationPolicy--;
}

core.int buildCounterAttachedDisk = 0;
api.AttachedDisk buildAttachedDisk() {
  final o = api.AttachedDisk();
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    o.deviceName = 'foo';
    o.existingDisk = 'foo';
    o.newDisk = buildDisk();
  }
  buildCounterAttachedDisk--;
  return o;
}

void checkAttachedDisk(api.AttachedDisk o) {
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.existingDisk!,
      unittest.equals('foo'),
    );
    checkDisk(o.newDisk!);
  }
  buildCounterAttachedDisk--;
}

core.List<api.AuditLogConfig> buildUnnamed5() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed5(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed5(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBarrier = 0;
api.Barrier buildBarrier() {
  final o = api.Barrier();
  buildCounterBarrier++;
  if (buildCounterBarrier < 3) {
    o.name = 'foo';
  }
  buildCounterBarrier--;
  return o;
}

void checkBarrier(api.Barrier o) {
  buildCounterBarrier++;
  if (buildCounterBarrier < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBarrier--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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
    o.members = buildUnnamed7();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7(o.members!);
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

core.int buildCounterComputeResource = 0;
api.ComputeResource buildComputeResource() {
  final o = api.ComputeResource();
  buildCounterComputeResource++;
  if (buildCounterComputeResource < 3) {
    o.bootDiskMib = 'foo';
    o.cpuMilli = 'foo';
    o.memoryMib = 'foo';
  }
  buildCounterComputeResource--;
  return o;
}

void checkComputeResource(api.ComputeResource o) {
  buildCounterComputeResource++;
  if (buildCounterComputeResource < 3) {
    unittest.expect(
      o.bootDiskMib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuMilli!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMib!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeResource--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.blockExternalNetwork = true;
    o.commands = buildUnnamed8();
    o.entrypoint = 'foo';
    o.imageUri = 'foo';
    o.options = 'foo';
    o.password = 'foo';
    o.username = 'foo';
    o.volumes = buildUnnamed9();
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    unittest.expect(o.blockExternalNetwork!, unittest.isTrue);
    checkUnnamed8(o.commands!);
    unittest.expect(
      o.entrypoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.options!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.volumes!);
  }
  buildCounterContainer--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.diskInterface = 'foo';
    o.image = 'foo';
    o.sizeGb = 'foo';
    o.snapshot = 'foo';
    o.type = 'foo';
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(
      o.diskInterface!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisk--;
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

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.encryptedVariables = buildKMSEnvMap();
    o.secretVariables = buildUnnamed10();
    o.variables = buildUnnamed11();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkKMSEnvMap(o.encryptedVariables!);
    checkUnnamed10(o.secretVariables!);
    checkUnnamed11(o.variables!);
  }
  buildCounterEnvironment--;
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

core.int buildCounterGCS = 0;
api.GCS buildGCS() {
  final o = api.GCS();
  buildCounterGCS++;
  if (buildCounterGCS < 3) {
    o.remotePath = 'foo';
  }
  buildCounterGCS--;
  return o;
}

void checkGCS(api.GCS o) {
  buildCounterGCS++;
  if (buildCounterGCS < 3) {
    unittest.expect(
      o.remotePath!,
      unittest.equals('foo'),
    );
  }
  buildCounterGCS--;
}

core.List<api.Accelerator> buildUnnamed12() => [
      buildAccelerator(),
      buildAccelerator(),
    ];

void checkUnnamed12(core.List<api.Accelerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccelerator(o[0]);
  checkAccelerator(o[1]);
}

core.List<api.AttachedDisk> buildUnnamed13() => [
      buildAttachedDisk(),
      buildAttachedDisk(),
    ];

void checkUnnamed13(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

core.int buildCounterInstancePolicy = 0;
api.InstancePolicy buildInstancePolicy() {
  final o = api.InstancePolicy();
  buildCounterInstancePolicy++;
  if (buildCounterInstancePolicy < 3) {
    o.accelerators = buildUnnamed12();
    o.bootDisk = buildDisk();
    o.disks = buildUnnamed13();
    o.machineType = 'foo';
    o.minCpuPlatform = 'foo';
    o.provisioningModel = 'foo';
  }
  buildCounterInstancePolicy--;
  return o;
}

void checkInstancePolicy(api.InstancePolicy o) {
  buildCounterInstancePolicy++;
  if (buildCounterInstancePolicy < 3) {
    checkUnnamed12(o.accelerators!);
    checkDisk(o.bootDisk!);
    checkUnnamed13(o.disks!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisioningModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstancePolicy--;
}

core.int buildCounterInstancePolicyOrTemplate = 0;
api.InstancePolicyOrTemplate buildInstancePolicyOrTemplate() {
  final o = api.InstancePolicyOrTemplate();
  buildCounterInstancePolicyOrTemplate++;
  if (buildCounterInstancePolicyOrTemplate < 3) {
    o.installGpuDrivers = true;
    o.instanceTemplate = 'foo';
    o.policy = buildInstancePolicy();
  }
  buildCounterInstancePolicyOrTemplate--;
  return o;
}

void checkInstancePolicyOrTemplate(api.InstancePolicyOrTemplate o) {
  buildCounterInstancePolicyOrTemplate++;
  if (buildCounterInstancePolicyOrTemplate < 3) {
    unittest.expect(o.installGpuDrivers!, unittest.isTrue);
    unittest.expect(
      o.instanceTemplate!,
      unittest.equals('foo'),
    );
    checkInstancePolicy(o.policy!);
  }
  buildCounterInstancePolicyOrTemplate--;
}

core.int buildCounterInstanceStatus = 0;
api.InstanceStatus buildInstanceStatus() {
  final o = api.InstanceStatus();
  buildCounterInstanceStatus++;
  if (buildCounterInstanceStatus < 3) {
    o.bootDisk = buildDisk();
    o.machineType = 'foo';
    o.provisioningModel = 'foo';
    o.taskPack = 'foo';
  }
  buildCounterInstanceStatus--;
  return o;
}

void checkInstanceStatus(api.InstanceStatus o) {
  buildCounterInstanceStatus++;
  if (buildCounterInstanceStatus < 3) {
    checkDisk(o.bootDisk!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisioningModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskPack!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceStatus--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<api.JobNotification> buildUnnamed15() => [
      buildJobNotification(),
      buildJobNotification(),
    ];

void checkUnnamed15(core.List<api.JobNotification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobNotification(o[0]);
  checkJobNotification(o[1]);
}

core.List<api.TaskGroup> buildUnnamed16() => [
      buildTaskGroup(),
      buildTaskGroup(),
    ];

void checkUnnamed16(core.List<api.TaskGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskGroup(o[0]);
  checkTaskGroup(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.allocationPolicy = buildAllocationPolicy();
    o.createTime = 'foo';
    o.labels = buildUnnamed14();
    o.logsPolicy = buildLogsPolicy();
    o.name = 'foo';
    o.notifications = buildUnnamed15();
    o.priority = 'foo';
    o.status = buildJobStatus();
    o.taskGroups = buildUnnamed16();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkAllocationPolicy(o.allocationPolicy!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.labels!);
    checkLogsPolicy(o.logsPolicy!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.notifications!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    checkJobStatus(o.status!);
    checkUnnamed16(o.taskGroups!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterJob--;
}

core.int buildCounterJobNotification = 0;
api.JobNotification buildJobNotification() {
  final o = api.JobNotification();
  buildCounterJobNotification++;
  if (buildCounterJobNotification < 3) {
    o.message = buildMessage();
    o.pubsubTopic = 'foo';
  }
  buildCounterJobNotification--;
  return o;
}

void checkJobNotification(api.JobNotification o) {
  buildCounterJobNotification++;
  if (buildCounterJobNotification < 3) {
    checkMessage(o.message!);
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobNotification--;
}

core.List<api.StatusEvent> buildUnnamed17() => [
      buildStatusEvent(),
      buildStatusEvent(),
    ];

void checkUnnamed17(core.List<api.StatusEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusEvent(o[0]);
  checkStatusEvent(o[1]);
}

core.Map<core.String, api.TaskGroupStatus> buildUnnamed18() => {
      'x': buildTaskGroupStatus(),
      'y': buildTaskGroupStatus(),
    };

void checkUnnamed18(core.Map<core.String, api.TaskGroupStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskGroupStatus(o['x']!);
  checkTaskGroupStatus(o['y']!);
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  final o = api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.runDuration = 'foo';
    o.state = 'foo';
    o.statusEvents = buildUnnamed17();
    o.taskGroups = buildUnnamed18();
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    unittest.expect(
      o.runDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.statusEvents!);
    checkUnnamed18(o.taskGroups!);
  }
  buildCounterJobStatus--;
}

core.int buildCounterKMSEnvMap = 0;
api.KMSEnvMap buildKMSEnvMap() {
  final o = api.KMSEnvMap();
  buildCounterKMSEnvMap++;
  if (buildCounterKMSEnvMap < 3) {
    o.cipherText = 'foo';
    o.keyName = 'foo';
  }
  buildCounterKMSEnvMap--;
  return o;
}

void checkKMSEnvMap(api.KMSEnvMap o) {
  buildCounterKMSEnvMap++;
  if (buildCounterKMSEnvMap < 3) {
    unittest.expect(
      o.cipherText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterKMSEnvMap--;
}

core.int buildCounterLifecyclePolicy = 0;
api.LifecyclePolicy buildLifecyclePolicy() {
  final o = api.LifecyclePolicy();
  buildCounterLifecyclePolicy++;
  if (buildCounterLifecyclePolicy < 3) {
    o.action = 'foo';
    o.actionCondition = buildActionCondition();
  }
  buildCounterLifecyclePolicy--;
  return o;
}

void checkLifecyclePolicy(api.LifecyclePolicy o) {
  buildCounterLifecyclePolicy++;
  if (buildCounterLifecyclePolicy < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkActionCondition(o.actionCondition!);
  }
  buildCounterLifecyclePolicy--;
}

core.List<api.Job> buildUnnamed19() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed19(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed19(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<api.Location> buildUnnamed21() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed21(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed21(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed22() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed22(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed22();
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
    checkUnnamed22(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Task> buildUnnamed23() => [
      buildTask(),
      buildTask(),
    ];

void checkUnnamed23(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterListTasksResponse = 0;
api.ListTasksResponse buildListTasksResponse() {
  final o = api.ListTasksResponse();
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.tasks = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterListTasksResponse--;
  return o;
}

void checkListTasksResponse(api.ListTasksResponse o) {
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.tasks!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListTasksResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed25();
    o.locationId = 'foo';
    o.metadata = buildUnnamed26();
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
    checkUnnamed25(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
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

core.int buildCounterLocationPolicy = 0;
api.LocationPolicy buildLocationPolicy() {
  final o = api.LocationPolicy();
  buildCounterLocationPolicy++;
  if (buildCounterLocationPolicy < 3) {
    o.allowedLocations = buildUnnamed27();
  }
  buildCounterLocationPolicy--;
  return o;
}

void checkLocationPolicy(api.LocationPolicy o) {
  buildCounterLocationPolicy++;
  if (buildCounterLocationPolicy < 3) {
    checkUnnamed27(o.allowedLocations!);
  }
  buildCounterLocationPolicy--;
}

core.int buildCounterLogsPolicy = 0;
api.LogsPolicy buildLogsPolicy() {
  final o = api.LogsPolicy();
  buildCounterLogsPolicy++;
  if (buildCounterLogsPolicy < 3) {
    o.destination = 'foo';
    o.logsPath = 'foo';
  }
  buildCounterLogsPolicy--;
  return o;
}

void checkLogsPolicy(api.LogsPolicy o) {
  buildCounterLogsPolicy++;
  if (buildCounterLogsPolicy < 3) {
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logsPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogsPolicy--;
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.newJobState = 'foo';
    o.newTaskState = 'foo';
    o.type = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(
      o.newJobState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newTaskState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessage--;
}

core.int buildCounterNFS = 0;
api.NFS buildNFS() {
  final o = api.NFS();
  buildCounterNFS++;
  if (buildCounterNFS < 3) {
    o.remotePath = 'foo';
    o.server = 'foo';
  }
  buildCounterNFS--;
  return o;
}

void checkNFS(api.NFS o) {
  buildCounterNFS++;
  if (buildCounterNFS < 3) {
    unittest.expect(
      o.remotePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.server!,
      unittest.equals('foo'),
    );
  }
  buildCounterNFS--;
}

core.int buildCounterNetworkInterface = 0;
api.NetworkInterface buildNetworkInterface() {
  final o = api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.network = 'foo';
    o.noExternalIpAddress = true;
    o.subnetwork = 'foo';
  }
  buildCounterNetworkInterface--;
  return o;
}

void checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noExternalIpAddress!, unittest.isTrue);
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkInterface--;
}

core.List<api.NetworkInterface> buildUnnamed28() => [
      buildNetworkInterface(),
      buildNetworkInterface(),
    ];

void checkUnnamed28(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

core.int buildCounterNetworkPolicy = 0;
api.NetworkPolicy buildNetworkPolicy() {
  final o = api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.networkInterfaces = buildUnnamed28();
  }
  buildCounterNetworkPolicy--;
  return o;
}

void checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    checkUnnamed28(o.networkInterfaces!);
  }
  buildCounterNetworkPolicy--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed29();
    o.name = 'foo';
    o.response = buildUnnamed30();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed29(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed31() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed31(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed32() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed32(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed31();
    o.bindings = buildUnnamed32();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed31(o.auditConfigs!);
    checkUnnamed32(o.bindings!);
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

core.int buildCounterReportAgentStateRequest = 0;
api.ReportAgentStateRequest buildReportAgentStateRequest() {
  final o = api.ReportAgentStateRequest();
  buildCounterReportAgentStateRequest++;
  if (buildCounterReportAgentStateRequest < 3) {
    o.agentInfo = buildAgentInfo();
    o.agentTimingInfo = buildAgentTimingInfo();
    o.metadata = buildAgentMetadata();
  }
  buildCounterReportAgentStateRequest--;
  return o;
}

void checkReportAgentStateRequest(api.ReportAgentStateRequest o) {
  buildCounterReportAgentStateRequest++;
  if (buildCounterReportAgentStateRequest < 3) {
    checkAgentInfo(o.agentInfo!);
    checkAgentTimingInfo(o.agentTimingInfo!);
    checkAgentMetadata(o.metadata!);
  }
  buildCounterReportAgentStateRequest--;
}

core.List<api.AgentTask> buildUnnamed33() => [
      buildAgentTask(),
      buildAgentTask(),
    ];

void checkUnnamed33(core.List<api.AgentTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentTask(o[0]);
  checkAgentTask(o[1]);
}

core.int buildCounterReportAgentStateResponse = 0;
api.ReportAgentStateResponse buildReportAgentStateResponse() {
  final o = api.ReportAgentStateResponse();
  buildCounterReportAgentStateResponse++;
  if (buildCounterReportAgentStateResponse < 3) {
    o.defaultReportInterval = 'foo';
    o.minReportInterval = 'foo';
    o.tasks = buildUnnamed33();
  }
  buildCounterReportAgentStateResponse--;
  return o;
}

void checkReportAgentStateResponse(api.ReportAgentStateResponse o) {
  buildCounterReportAgentStateResponse++;
  if (buildCounterReportAgentStateResponse < 3) {
    unittest.expect(
      o.defaultReportInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minReportInterval!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.tasks!);
  }
  buildCounterReportAgentStateResponse--;
}

core.int buildCounterRunnable = 0;
api.Runnable buildRunnable() {
  final o = api.Runnable();
  buildCounterRunnable++;
  if (buildCounterRunnable < 3) {
    o.alwaysRun = true;
    o.background = true;
    o.barrier = buildBarrier();
    o.container = buildContainer();
    o.environment = buildEnvironment();
    o.ignoreExitStatus = true;
    o.script = buildScript();
    o.timeout = 'foo';
  }
  buildCounterRunnable--;
  return o;
}

void checkRunnable(api.Runnable o) {
  buildCounterRunnable++;
  if (buildCounterRunnable < 3) {
    unittest.expect(o.alwaysRun!, unittest.isTrue);
    unittest.expect(o.background!, unittest.isTrue);
    checkBarrier(o.barrier!);
    checkContainer(o.container!);
    checkEnvironment(o.environment!);
    unittest.expect(o.ignoreExitStatus!, unittest.isTrue);
    checkScript(o.script!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunnable--;
}

core.int buildCounterScript = 0;
api.Script buildScript() {
  final o = api.Script();
  buildCounterScript++;
  if (buildCounterScript < 3) {
    o.path = 'foo';
    o.text = 'foo';
  }
  buildCounterScript--;
  return o;
}

void checkScript(api.Script o) {
  buildCounterScript++;
  if (buildCounterScript < 3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterScript--;
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

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scopes = buildUnnamed34();
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
    checkUnnamed34(o.scopes!);
  }
  buildCounterServiceAccount--;
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

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
      buildUnnamed35(),
      buildUnnamed35(),
    ];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed36();
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
    checkUnnamed36(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusEvent = 0;
api.StatusEvent buildStatusEvent() {
  final o = api.StatusEvent();
  buildCounterStatusEvent++;
  if (buildCounterStatusEvent < 3) {
    o.description = 'foo';
    o.eventTime = 'foo';
    o.taskExecution = buildTaskExecution();
    o.taskState = 'foo';
    o.type = 'foo';
  }
  buildCounterStatusEvent--;
  return o;
}

void checkStatusEvent(api.StatusEvent o) {
  buildCounterStatusEvent++;
  if (buildCounterStatusEvent < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    checkTaskExecution(o.taskExecution!);
    unittest.expect(
      o.taskState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusEvent--;
}

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.name = 'foo';
    o.status = buildTaskStatus();
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTaskStatus(o.status!);
  }
  buildCounterTask--;
}

core.int buildCounterTaskExecution = 0;
api.TaskExecution buildTaskExecution() {
  final o = api.TaskExecution();
  buildCounterTaskExecution++;
  if (buildCounterTaskExecution < 3) {
    o.exitCode = 42;
  }
  buildCounterTaskExecution--;
  return o;
}

void checkTaskExecution(api.TaskExecution o) {
  buildCounterTaskExecution++;
  if (buildCounterTaskExecution < 3) {
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
  }
  buildCounterTaskExecution--;
}

core.List<api.Environment> buildUnnamed37() => [
      buildEnvironment(),
      buildEnvironment(),
    ];

void checkUnnamed37(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterTaskGroup = 0;
api.TaskGroup buildTaskGroup() {
  final o = api.TaskGroup();
  buildCounterTaskGroup++;
  if (buildCounterTaskGroup < 3) {
    o.name = 'foo';
    o.parallelism = 'foo';
    o.permissiveSsh = true;
    o.requireHostsFile = true;
    o.taskCount = 'foo';
    o.taskCountPerNode = 'foo';
    o.taskEnvironments = buildUnnamed37();
    o.taskSpec = buildTaskSpec();
  }
  buildCounterTaskGroup--;
  return o;
}

void checkTaskGroup(api.TaskGroup o) {
  buildCounterTaskGroup++;
  if (buildCounterTaskGroup < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parallelism!,
      unittest.equals('foo'),
    );
    unittest.expect(o.permissiveSsh!, unittest.isTrue);
    unittest.expect(o.requireHostsFile!, unittest.isTrue);
    unittest.expect(
      o.taskCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskCountPerNode!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.taskEnvironments!);
    checkTaskSpec(o.taskSpec!);
  }
  buildCounterTaskGroup--;
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
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

core.List<api.InstanceStatus> buildUnnamed39() => [
      buildInstanceStatus(),
      buildInstanceStatus(),
    ];

void checkUnnamed39(core.List<api.InstanceStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceStatus(o[0]);
  checkInstanceStatus(o[1]);
}

core.int buildCounterTaskGroupStatus = 0;
api.TaskGroupStatus buildTaskGroupStatus() {
  final o = api.TaskGroupStatus();
  buildCounterTaskGroupStatus++;
  if (buildCounterTaskGroupStatus < 3) {
    o.counts = buildUnnamed38();
    o.instances = buildUnnamed39();
  }
  buildCounterTaskGroupStatus--;
  return o;
}

void checkTaskGroupStatus(api.TaskGroupStatus o) {
  buildCounterTaskGroupStatus++;
  if (buildCounterTaskGroupStatus < 3) {
    checkUnnamed38(o.counts!);
    checkUnnamed39(o.instances!);
  }
  buildCounterTaskGroupStatus--;
}

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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

core.List<api.LifecyclePolicy> buildUnnamed41() => [
      buildLifecyclePolicy(),
      buildLifecyclePolicy(),
    ];

void checkUnnamed41(core.List<api.LifecyclePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLifecyclePolicy(o[0]);
  checkLifecyclePolicy(o[1]);
}

core.List<api.Runnable> buildUnnamed42() => [
      buildRunnable(),
      buildRunnable(),
    ];

void checkUnnamed42(core.List<api.Runnable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunnable(o[0]);
  checkRunnable(o[1]);
}

core.List<api.Volume> buildUnnamed43() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed43(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterTaskSpec = 0;
api.TaskSpec buildTaskSpec() {
  final o = api.TaskSpec();
  buildCounterTaskSpec++;
  if (buildCounterTaskSpec < 3) {
    o.computeResource = buildComputeResource();
    o.environment = buildEnvironment();
    o.environments = buildUnnamed40();
    o.lifecyclePolicies = buildUnnamed41();
    o.maxRetryCount = 42;
    o.maxRunDuration = 'foo';
    o.runnables = buildUnnamed42();
    o.volumes = buildUnnamed43();
  }
  buildCounterTaskSpec--;
  return o;
}

void checkTaskSpec(api.TaskSpec o) {
  buildCounterTaskSpec++;
  if (buildCounterTaskSpec < 3) {
    checkComputeResource(o.computeResource!);
    checkEnvironment(o.environment!);
    checkUnnamed40(o.environments!);
    checkUnnamed41(o.lifecyclePolicies!);
    unittest.expect(
      o.maxRetryCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxRunDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.runnables!);
    checkUnnamed43(o.volumes!);
  }
  buildCounterTaskSpec--;
}

core.List<api.StatusEvent> buildUnnamed44() => [
      buildStatusEvent(),
      buildStatusEvent(),
    ];

void checkUnnamed44(core.List<api.StatusEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusEvent(o[0]);
  checkStatusEvent(o[1]);
}

core.int buildCounterTaskStatus = 0;
api.TaskStatus buildTaskStatus() {
  final o = api.TaskStatus();
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    o.state = 'foo';
    o.statusEvents = buildUnnamed44();
  }
  buildCounterTaskStatus--;
  return o;
}

void checkTaskStatus(api.TaskStatus o) {
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.statusEvents!);
  }
  buildCounterTaskStatus--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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
    o.permissions = buildUnnamed45();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed45(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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
    o.permissions = buildUnnamed46();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed46(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.deviceName = 'foo';
    o.gcs = buildGCS();
    o.mountOptions = buildUnnamed47();
    o.mountPath = 'foo';
    o.nfs = buildNFS();
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    checkGCS(o.gcs!);
    checkUnnamed47(o.mountOptions!);
    unittest.expect(
      o.mountPath!,
      unittest.equals('foo'),
    );
    checkNFS(o.nfs!);
  }
  buildCounterVolume--;
}

void main() {
  unittest.group('obj-schema-Accelerator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccelerator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Accelerator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccelerator(od);
    });
  });

  unittest.group('obj-schema-ActionCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionCondition(od);
    });
  });

  unittest.group('obj-schema-AgentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AgentInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAgentInfo(od);
    });
  });

  unittest.group('obj-schema-AgentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentMetadata(od);
    });
  });

  unittest.group('obj-schema-AgentTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AgentTask.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAgentTask(od);
    });
  });

  unittest.group('obj-schema-AgentTaskInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentTaskInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentTaskInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentTaskInfo(od);
    });
  });

  unittest.group('obj-schema-AgentTimingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentTimingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentTimingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentTimingInfo(od);
    });
  });

  unittest.group('obj-schema-AllocationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllocationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllocationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllocationPolicy(od);
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

  unittest.group('obj-schema-Barrier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBarrier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Barrier.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBarrier(od);
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

  unittest.group('obj-schema-ComputeResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeResource(od);
    });
  });

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Container.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContainer(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od);
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

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
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

  unittest.group('obj-schema-GCS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGCS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GCS.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGCS(od);
    });
  });

  unittest.group('obj-schema-InstancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancePolicy(od);
    });
  });

  unittest.group('obj-schema-InstancePolicyOrTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancePolicyOrTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancePolicyOrTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancePolicyOrTemplate(od);
    });
  });

  unittest.group('obj-schema-InstanceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceStatus(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobNotification(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobStatus(od);
    });
  });

  unittest.group('obj-schema-KMSEnvMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKMSEnvMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KMSEnvMap.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKMSEnvMap(od);
    });
  });

  unittest.group('obj-schema-LifecyclePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLifecyclePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LifecyclePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLifecyclePolicy(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTasksResponse(od);
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

  unittest.group('obj-schema-LocationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationPolicy(od);
    });
  });

  unittest.group('obj-schema-LogsPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogsPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LogsPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogsPolicy(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-NFS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNFS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NFS.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNFS(od);
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

  unittest.group('obj-schema-NetworkPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPolicy(od);
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

  unittest.group('obj-schema-ReportAgentStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportAgentStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportAgentStateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportAgentStateRequest(od);
    });
  });

  unittest.group('obj-schema-ReportAgentStateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportAgentStateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportAgentStateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportAgentStateResponse(od);
    });
  });

  unittest.group('obj-schema-Runnable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunnable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Runnable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRunnable(od);
    });
  });

  unittest.group('obj-schema-Script', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Script.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScript(od);
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

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
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

  unittest.group('obj-schema-StatusEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusEvent(od);
    });
  });

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Task.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTask(od);
    });
  });

  unittest.group('obj-schema-TaskExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskExecution(od);
    });
  });

  unittest.group('obj-schema-TaskGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TaskGroup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTaskGroup(od);
    });
  });

  unittest.group('obj-schema-TaskGroupStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskGroupStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskGroupStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskGroupStatus(od);
    });
  });

  unittest.group('obj-schema-TaskSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TaskSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTaskSpec(od);
    });
  });

  unittest.group('obj-schema-TaskStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TaskStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTaskStatus(od);
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

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations;
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
      final res = api.BatchApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs;
      final arg_request = buildJob();
      final arg_parent = 'foo';
      final arg_jobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          queryMap['jobId']!.first,
          unittest.equals(arg_jobId),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          jobId: arg_jobId, requestId: arg_requestId, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs;
      final arg_name = 'foo';
      final arg_reason = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['reason']!.first,
          unittest.equals(arg_reason),
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
      final response = await res.delete(arg_name,
          reason: arg_reason, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs;
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs;
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
      final res = api.BatchApi(mock).projects.locations.jobs;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs;
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
      final res = api.BatchApi(mock).projects.locations.jobs;
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

  unittest.group('resource-ProjectsLocationsJobsTaskGroupsTasksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs.taskGroups.tasks;
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
        final resp = convert.json.encode(buildTask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTask(response as api.Task);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.jobs.taskGroups.tasks;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListTasksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTasksResponse(response as api.ListTasksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsStateResource', () {
    unittest.test('method--report', () async {
      final mock = HttpServerMock();
      final res = api.BatchApi(mock).projects.locations.state;
      final arg_request = buildReportAgentStateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportAgentStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportAgentStateRequest(obj);

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
        final resp = convert.json.encode(buildReportAgentStateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.report(arg_request, arg_parent, $fields: arg_$fields);
      checkReportAgentStateResponse(response as api.ReportAgentStateResponse);
    });
  });
}
