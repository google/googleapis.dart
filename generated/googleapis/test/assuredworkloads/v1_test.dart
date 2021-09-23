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

import 'package:googleapis/assuredworkloads/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int
    buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata =
    0;
api.GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
    buildGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata() {
  final o = api.GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata();
  buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata <
      3) {
    o.complianceRegime = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata(
    api.GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata o) {
  buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata++;
  if (buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata <
      3) {
    unittest.expect(
      o.complianceRegime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata--;
}

core.List<api.GoogleCloudAssuredworkloadsV1Workload> buildUnnamed0() => [
      buildGoogleCloudAssuredworkloadsV1Workload(),
      buildGoogleCloudAssuredworkloadsV1Workload(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudAssuredworkloadsV1Workload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1Workload(o[0]);
  checkGoogleCloudAssuredworkloadsV1Workload(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse = 0;
api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse
    buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloads = buildUnnamed0();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(
    api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.workloads!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>
    buildUnnamed2() => [
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
        ];

void checkUnnamed2(
    core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>
    buildUnnamed3() => [
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
        ];

void checkUnnamed3(
    core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Workload = 0;
api.GoogleCloudAssuredworkloadsV1Workload
    buildGoogleCloudAssuredworkloadsV1Workload() {
  final o = api.GoogleCloudAssuredworkloadsV1Workload();
  buildCounterGoogleCloudAssuredworkloadsV1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Workload < 3) {
    o.billingAccount = 'foo';
    o.complianceRegime = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.kmsSettings = buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.provisionedResourcesParent = 'foo';
    o.resourceSettings = buildUnnamed2();
    o.resources = buildUnnamed3();
  }
  buildCounterGoogleCloudAssuredworkloadsV1Workload--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Workload(
    api.GoogleCloudAssuredworkloadsV1Workload o) {
  buildCounterGoogleCloudAssuredworkloadsV1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Workload < 3) {
    unittest.expect(
      o.billingAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.complianceRegime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(o.kmsSettings!);
    checkUnnamed1(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisionedResourcesParent!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.resourceSettings!);
    checkUnnamed3(o.resources!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1Workload--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings
    buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings < 3) {
    o.nextRotationTime = 'foo';
    o.rotationPeriod = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(
    api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings < 3) {
    unittest.expect(
      o.nextRotationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotationPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadKMSSettings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
    buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo < 3) {
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(
    api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo < 3) {
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceInfo--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
    buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings < 3) {
    o.displayName = 'foo';
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(
    api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadResourceSettings--;
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>
    buildUnnamed4() => [
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
        ];

void checkUnnamed4(
    core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[1]);
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata =
    0;
api.GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
    buildGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata();
  buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata <
      3) {
    o.complianceRegime = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.parent = 'foo';
    o.resourceSettings = buildUnnamed4();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata(
    api.GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata <
      3) {
    unittest.expect(
      o.complianceRegime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.resourceSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>
    buildUnnamed6() => [
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(),
        ];

void checkUnnamed6(
    core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo>
    buildUnnamed7() => [
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(),
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(),
        ];

void checkUnnamed7(
    core.List<api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(o[0]);
  checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1Workload = 0;
api.GoogleCloudAssuredworkloadsV1beta1Workload
    buildGoogleCloudAssuredworkloadsV1beta1Workload() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1Workload();
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Workload < 3) {
    o.billingAccount = 'foo';
    o.cjisSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
    o.complianceRegime = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.fedrampHighSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
    o.fedrampModerateSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
    o.il4Settings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.provisionedResourcesParent = 'foo';
    o.resourceSettings = buildUnnamed6();
    o.resources = buildUnnamed7();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1Workload(
    api.GoogleCloudAssuredworkloadsV1beta1Workload o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1Workload < 3) {
    unittest.expect(
      o.billingAccount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(
        o.cjisSettings!);
    unittest.expect(
      o.complianceRegime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(
        o.fedrampHighSettings!);
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
        o.fedrampModerateSettings!);
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(o.il4Settings!);
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
    checkUnnamed5(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisionedResourcesParent!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.resourceSettings!);
    checkUnnamed7(o.resources!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1Workload--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings < 3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings =
    0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings <
      3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings <
      3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings =
    0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings() {
  final o =
      api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings <
      3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings <
      3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings < 3) {
    o.kmsSettings =
        buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings < 3) {
    checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(o.kmsSettings!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings < 3) {
    o.nextRotationTime = 'foo';
    o.rotationPeriod = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings < 3) {
    unittest.expect(
      o.nextRotationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotationPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo < 3) {
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo < 3) {
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings = 0;
api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings
    buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings() {
  final o = api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings();
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings <
      3) {
    o.displayName = 'foo';
    o.resourceId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(
    api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings o) {
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings++;
  if (buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings <
      3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed8() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed8(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed8();
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
    checkUnnamed8(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed9();
    o.name = 'foo';
    o.response = buildUnnamed10();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed9(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed12() => [
      buildUnnamed11(),
      buildUnnamed11(),
    ];

void checkUnnamed12(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o[0]);
  checkUnnamed11(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed12();
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
    checkUnnamed12(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ListWorkloadsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1Workload(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1WorkloadKMSSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1WorkloadResourceInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadResourceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1beta1Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1Workload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1Workload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1Workload(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings(od);
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

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
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

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.operations;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.operations;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1Workload();
      final arg_parent = 'foo';
      final arg_externalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAssuredworkloadsV1Workload(obj);

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
          queryMap['externalId']!.first,
          unittest.equals(arg_externalId),
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
      final response = await res.create(arg_request, arg_parent,
          externalId: arg_externalId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
        final resp =
            convert.json.encode(buildGoogleCloudAssuredworkloadsV1Workload());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Workload(
          response as api.GoogleCloudAssuredworkloadsV1Workload);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
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
        final resp = convert.json
            .encode(buildGoogleCloudAssuredworkloadsV1ListWorkloadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1ListWorkloadsResponse(
          response as api.GoogleCloudAssuredworkloadsV1ListWorkloadsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request = buildGoogleCloudAssuredworkloadsV1Workload();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudAssuredworkloadsV1Workload.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAssuredworkloadsV1Workload(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudAssuredworkloadsV1Workload());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Workload(
          response as api.GoogleCloudAssuredworkloadsV1Workload);
    });
  });
}
