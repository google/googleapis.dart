// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

import 'package:googleapis/assuredworkloads/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest =
    0;
api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
    buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest <
      3) {
    o.comment = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(
    api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest o) {
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest <
      3) {
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonCompliantOrgPolicy!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse =
    0;
api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
    buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse();
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(
    api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1Violation> buildUnnamed0() => [
      buildGoogleCloudAssuredworkloadsV1Violation(),
      buildGoogleCloudAssuredworkloadsV1Violation(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudAssuredworkloadsV1Violation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1Violation(o[0]);
  checkGoogleCloudAssuredworkloadsV1Violation(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse = 0;
api.GoogleCloudAssuredworkloadsV1ListViolationsResponse
    buildGoogleCloudAssuredworkloadsV1ListViolationsResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1ListViolationsResponse();
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.violations = buildUnnamed0();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(
    api.GoogleCloudAssuredworkloadsV1ListViolationsResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.violations!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListViolationsResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1Workload> buildUnnamed1() => [
      buildGoogleCloudAssuredworkloadsV1Workload(),
      buildGoogleCloudAssuredworkloadsV1Workload(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudAssuredworkloadsV1Workload> o) {
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
    o.workloads = buildUnnamed1();
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
    checkUnnamed1(o.workloads!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ListWorkloadsResponse--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest =
    0;
api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
    buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest <
      3) {
    o.etag = 'foo';
    o.partnerPermissions =
        buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(
    api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest o) {
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest <
      3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
        o.partnerPermissions!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest =
    0;
api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
    buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest() {
  final o = api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest <
      3) {
    o.restrictionType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(
    api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest o) {
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest <
      3) {
    unittest.expect(
      o.restrictionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse =
    0;
api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
    buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse();
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(
    api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse <
      3) {}
  buildCounterGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse--;
}

core.List<api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext>
    buildUnnamed2() => [
          buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext(),
          buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext(),
        ];

void checkUnnamed2(
    core.List<api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(o[0]);
  checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(o[1]);
}

core.int buildCounterGoogleCloudAssuredworkloadsV1Violation = 0;
api.GoogleCloudAssuredworkloadsV1Violation
    buildGoogleCloudAssuredworkloadsV1Violation() {
  final o = api.GoogleCloudAssuredworkloadsV1Violation();
  buildCounterGoogleCloudAssuredworkloadsV1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Violation < 3) {
    o.acknowledged = true;
    o.acknowledgementTime = 'foo';
    o.auditLogLink = 'foo';
    o.beginTime = 'foo';
    o.category = 'foo';
    o.description = 'foo';
    o.exceptionAuditLogLink = 'foo';
    o.exceptionContexts = buildUnnamed2();
    o.name = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
    o.orgPolicyConstraint = 'foo';
    o.remediation = buildGoogleCloudAssuredworkloadsV1ViolationRemediation();
    o.resolveTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1Violation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1Violation(
    api.GoogleCloudAssuredworkloadsV1Violation o) {
  buildCounterGoogleCloudAssuredworkloadsV1Violation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1Violation < 3) {
    unittest.expect(o.acknowledged!, unittest.isTrue);
    unittest.expect(
      o.acknowledgementTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.auditLogLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.beginTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exceptionAuditLogLink!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.exceptionContexts!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonCompliantOrgPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgPolicyConstraint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1ViolationRemediation(o.remediation!);
    unittest.expect(
      o.resolveTime!,
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
  buildCounterGoogleCloudAssuredworkloadsV1Violation--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext = 0;
api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext
    buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext < 3) {
    o.acknowledgementTime = 'foo';
    o.comment = 'foo';
    o.principalEmail = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(
    api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext o) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext < 3) {
    unittest.expect(
      o.acknowledgementTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.principalEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationExceptionContext--;
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

core.int buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation = 0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediation
    buildGoogleCloudAssuredworkloadsV1ViolationRemediation() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationRemediation();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation < 3) {
    o.compliantValues = buildUnnamed3();
    o.instructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
    o.remediationType = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediation(
    api.GoogleCloudAssuredworkloadsV1ViolationRemediation o) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation < 3) {
    checkUnnamed3(o.compliantValues!);
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(
        o.instructions!);
    unittest.expect(
      o.remediationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediation--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions =
    0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
    buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions() {
  final o = api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions <
      3) {
    o.consoleInstructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
    o.gcloudInstructions =
        buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(
    api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions o) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions <
      3) {
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
        o.consoleInstructions!);
    checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
        o.gcloudInstructions!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions--;
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole =
    0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
    buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole() {
  final o = api
      .GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole <
      3) {
    o.additionalLinks = buildUnnamed4();
    o.consoleUris = buildUnnamed5();
    o.steps = buildUnnamed6();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
    api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
        o) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole <
      3) {
    checkUnnamed4(o.additionalLinks!);
    checkUnnamed5(o.consoleUris!);
    checkUnnamed6(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole--;
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

core.int
    buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud =
    0;
api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
    buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud() {
  final o =
      api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud <
      3) {
    o.additionalLinks = buildUnnamed7();
    o.gcloudCommands = buildUnnamed8();
    o.steps = buildUnnamed9();
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
    api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud o) {
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud++;
  if (buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud <
      3) {
    checkUnnamed7(o.additionalLinks!);
    checkUnnamed8(o.gcloudCommands!);
    checkUnnamed9(o.steps!);
  }
  buildCounterGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud--;
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

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>
    buildUnnamed12() => [
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[0]);
  checkGoogleCloudAssuredworkloadsV1WorkloadResourceSettings(o[1]);
}

core.List<api.GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>
    buildUnnamed13() => [
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
          buildGoogleCloudAssuredworkloadsV1WorkloadResourceInfo(),
        ];

void checkUnnamed13(
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
    o.complianceStatus =
        buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
    o.compliantButDisallowedServices = buildUnnamed10();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.ekmProvisioningResponse =
        buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
    o.enableSovereignControls = true;
    o.etag = 'foo';
    o.kajEnrollmentState = 'foo';
    o.kmsSettings = buildGoogleCloudAssuredworkloadsV1WorkloadKMSSettings();
    o.labels = buildUnnamed11();
    o.name = 'foo';
    o.partner = 'foo';
    o.provisionedResourcesParent = 'foo';
    o.resourceSettings = buildUnnamed12();
    o.resources = buildUnnamed13();
    o.saaEnrollmentResponse =
        buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
    o.violationNotificationsEnabled = true;
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
    checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(
        o.complianceStatus!);
    checkUnnamed10(o.compliantButDisallowedServices!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(
        o.ekmProvisioningResponse!);
    unittest.expect(o.enableSovereignControls!, unittest.isTrue);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kajEnrollmentState!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssuredworkloadsV1WorkloadKMSSettings(o.kmsSettings!);
    checkUnnamed11(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisionedResourcesParent!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.resourceSettings!);
    checkUnnamed13(o.resources!);
    checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(
        o.saaEnrollmentResponse!);
    unittest.expect(o.violationNotificationsEnabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudAssuredworkloadsV1Workload--;
}

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus
    buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus < 3) {
    o.acknowledgedViolationCount = 42;
    o.activeViolationCount = 42;
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(
    api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus < 3) {
    unittest.expect(
      o.acknowledgedViolationCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.activeViolationCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus--;
}

core.int
    buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse =
    0;
api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
    buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse <
      3) {
    o.ekmProvisioningErrorDomain = 'foo';
    o.ekmProvisioningErrorMapping = 'foo';
    o.ekmProvisioningState = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(
    api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse <
      3) {
    unittest.expect(
      o.ekmProvisioningErrorDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ekmProvisioningErrorMapping!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ekmProvisioningState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse--;
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

core.int buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions =
    0;
api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
    buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions < 3) {
    o.dataLogsViewer = true;
    o.remediateFolderViolations = true;
    o.serviceAccessApprover = true;
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(
    api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions < 3) {
    unittest.expect(o.dataLogsViewer!, unittest.isTrue);
    unittest.expect(o.remediateFolderViolations!, unittest.isTrue);
    unittest.expect(o.serviceAccessApprover!, unittest.isTrue);
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions--;
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse = 0;
api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
    buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse() {
  final o = api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse <
      3) {
    o.setupErrors = buildUnnamed14();
    o.setupStatus = 'foo';
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse--;
  return o;
}

void checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(
    api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse o) {
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse++;
  if (buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse <
      3) {
    checkUnnamed14(o.setupErrors!);
    unittest.expect(
      o.setupStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed15() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed15(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed15();
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
    checkUnnamed15(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
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
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ListViolationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1ListViolationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ListViolationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(od);
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

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1Violation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1Violation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1Violation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1Violation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ViolationExceptionContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1ViolationExceptionContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ViolationExceptionContext.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ViolationExceptionContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1ViolationRemediation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1ViolationRemediation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ViolationRemediation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud(
          od);
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

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadComplianceStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse(od);
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

  unittest.group(
      'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions(od);
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
      'obj-schema-GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse(od);
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

    unittest.test('method--mutatePartnerPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest(obj);

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
      final response = await res.mutatePartnerPermissions(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Workload(
          response as api.GoogleCloudAssuredworkloadsV1Workload);
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

    unittest.test('method--restrictAllowedResources', () async {
      final mock = HttpServerMock();
      final res =
          api.AssuredworkloadsApi(mock).organizations.locations.workloads;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.restrictAllowedResources(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse(
          response as api
              .GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsWorkloadsViolationsResource',
      () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(mock)
          .organizations
          .locations
          .workloads
          .violations;
      final arg_request =
          buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.acknowledge(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse(response
          as api.GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(mock)
          .organizations
          .locations
          .workloads
          .violations;
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
            convert.json.encode(buildGoogleCloudAssuredworkloadsV1Violation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1Violation(
          response as api.GoogleCloudAssuredworkloadsV1Violation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AssuredworkloadsApi(mock)
          .organizations
          .locations
          .workloads
          .violations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
            .encode(buildGoogleCloudAssuredworkloadsV1ListViolationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudAssuredworkloadsV1ListViolationsResponse(
          response as api.GoogleCloudAssuredworkloadsV1ListViolationsResponse);
    });
  });
}
