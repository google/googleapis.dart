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

import 'package:googleapis/cloudcontrolspartner/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessApprovalRequest = 0;
api.AccessApprovalRequest buildAccessApprovalRequest() {
  final o = api.AccessApprovalRequest();
  buildCounterAccessApprovalRequest++;
  if (buildCounterAccessApprovalRequest < 3) {
    o.name = 'foo';
    o.requestTime = 'foo';
    o.requestedExpirationTime = 'foo';
    o.requestedReason = buildAccessReason();
  }
  buildCounterAccessApprovalRequest--;
  return o;
}

void checkAccessApprovalRequest(api.AccessApprovalRequest o) {
  buildCounterAccessApprovalRequest++;
  if (buildCounterAccessApprovalRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedExpirationTime!,
      unittest.equals('foo'),
    );
    checkAccessReason(o.requestedReason!);
  }
  buildCounterAccessApprovalRequest--;
}

core.int buildCounterAccessReason = 0;
api.AccessReason buildAccessReason() {
  final o = api.AccessReason();
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    o.detail = 'foo';
    o.type = 'foo';
  }
  buildCounterAccessReason--;
  return o;
}

void checkAccessReason(api.AccessReason o) {
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessReason--;
}

core.int buildCounterConnectionError = 0;
api.ConnectionError buildConnectionError() {
  final o = api.ConnectionError();
  buildCounterConnectionError++;
  if (buildCounterConnectionError < 3) {
    o.errorDomain = 'foo';
    o.errorMessage = 'foo';
  }
  buildCounterConnectionError--;
  return o;
}

void checkConnectionError(api.ConnectionError o) {
  buildCounterConnectionError++;
  if (buildCounterConnectionError < 3) {
    unittest.expect(
      o.errorDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionError--;
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

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterConsole = 0;
api.Console buildConsole() {
  final o = api.Console();
  buildCounterConsole++;
  if (buildCounterConsole < 3) {
    o.additionalLinks = buildUnnamed0();
    o.consoleUris = buildUnnamed1();
    o.steps = buildUnnamed2();
  }
  buildCounterConsole--;
  return o;
}

void checkConsole(api.Console o) {
  buildCounterConsole++;
  if (buildCounterConsole < 3) {
    checkUnnamed0(o.additionalLinks!);
    checkUnnamed1(o.consoleUris!);
    checkUnnamed2(o.steps!);
  }
  buildCounterConsole--;
}

core.int buildCounterCustomer = 0;
api.Customer buildCustomer() {
  final o = api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.customerOnboardingState = buildCustomerOnboardingState();
    o.displayName = 'foo';
    o.isOnboarded = true;
    o.name = 'foo';
  }
  buildCounterCustomer--;
  return o;
}

void checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    checkCustomerOnboardingState(o.customerOnboardingState!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isOnboarded!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomer--;
}

core.List<api.CustomerOnboardingStep> buildUnnamed3() => [
      buildCustomerOnboardingStep(),
      buildCustomerOnboardingStep(),
    ];

void checkUnnamed3(core.List<api.CustomerOnboardingStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerOnboardingStep(o[0]);
  checkCustomerOnboardingStep(o[1]);
}

core.int buildCounterCustomerOnboardingState = 0;
api.CustomerOnboardingState buildCustomerOnboardingState() {
  final o = api.CustomerOnboardingState();
  buildCounterCustomerOnboardingState++;
  if (buildCounterCustomerOnboardingState < 3) {
    o.onboardingSteps = buildUnnamed3();
  }
  buildCounterCustomerOnboardingState--;
  return o;
}

void checkCustomerOnboardingState(api.CustomerOnboardingState o) {
  buildCounterCustomerOnboardingState++;
  if (buildCounterCustomerOnboardingState < 3) {
    checkUnnamed3(o.onboardingSteps!);
  }
  buildCounterCustomerOnboardingState--;
}

core.int buildCounterCustomerOnboardingStep = 0;
api.CustomerOnboardingStep buildCustomerOnboardingStep() {
  final o = api.CustomerOnboardingStep();
  buildCounterCustomerOnboardingStep++;
  if (buildCounterCustomerOnboardingStep < 3) {
    o.completionState = 'foo';
    o.completionTime = 'foo';
    o.startTime = 'foo';
    o.step = 'foo';
  }
  buildCounterCustomerOnboardingStep--;
  return o;
}

void checkCustomerOnboardingStep(api.CustomerOnboardingStep o) {
  buildCounterCustomerOnboardingStep++;
  if (buildCounterCustomerOnboardingStep < 3) {
    unittest.expect(
      o.completionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerOnboardingStep--;
}

core.int buildCounterEkmConnection = 0;
api.EkmConnection buildEkmConnection() {
  final o = api.EkmConnection();
  buildCounterEkmConnection++;
  if (buildCounterEkmConnection < 3) {
    o.connectionError = buildConnectionError();
    o.connectionName = 'foo';
    o.connectionState = 'foo';
  }
  buildCounterEkmConnection--;
  return o;
}

void checkEkmConnection(api.EkmConnection o) {
  buildCounterEkmConnection++;
  if (buildCounterEkmConnection < 3) {
    checkConnectionError(o.connectionError!);
    unittest.expect(
      o.connectionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionState!,
      unittest.equals('foo'),
    );
  }
  buildCounterEkmConnection--;
}

core.List<api.EkmConnection> buildUnnamed4() => [
      buildEkmConnection(),
      buildEkmConnection(),
    ];

void checkUnnamed4(core.List<api.EkmConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEkmConnection(o[0]);
  checkEkmConnection(o[1]);
}

core.int buildCounterEkmConnections = 0;
api.EkmConnections buildEkmConnections() {
  final o = api.EkmConnections();
  buildCounterEkmConnections++;
  if (buildCounterEkmConnections < 3) {
    o.ekmConnections = buildUnnamed4();
    o.name = 'foo';
  }
  buildCounterEkmConnections--;
  return o;
}

void checkEkmConnections(api.EkmConnections o) {
  buildCounterEkmConnections++;
  if (buildCounterEkmConnections < 3) {
    checkUnnamed4(o.ekmConnections!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterEkmConnections--;
}

core.int buildCounterEkmMetadata = 0;
api.EkmMetadata buildEkmMetadata() {
  final o = api.EkmMetadata();
  buildCounterEkmMetadata++;
  if (buildCounterEkmMetadata < 3) {
    o.ekmEndpointUri = 'foo';
    o.ekmSolution = 'foo';
  }
  buildCounterEkmMetadata--;
  return o;
}

void checkEkmMetadata(api.EkmMetadata o) {
  buildCounterEkmMetadata++;
  if (buildCounterEkmMetadata < 3) {
    unittest.expect(
      o.ekmEndpointUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ekmSolution!,
      unittest.equals('foo'),
    );
  }
  buildCounterEkmMetadata--;
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

core.int buildCounterGcloud = 0;
api.Gcloud buildGcloud() {
  final o = api.Gcloud();
  buildCounterGcloud++;
  if (buildCounterGcloud < 3) {
    o.additionalLinks = buildUnnamed5();
    o.gcloudCommands = buildUnnamed6();
    o.steps = buildUnnamed7();
  }
  buildCounterGcloud--;
  return o;
}

void checkGcloud(api.Gcloud o) {
  buildCounterGcloud++;
  if (buildCounterGcloud < 3) {
    checkUnnamed5(o.additionalLinks!);
    checkUnnamed6(o.gcloudCommands!);
    checkUnnamed7(o.steps!);
  }
  buildCounterGcloud--;
}

core.int buildCounterInstructions = 0;
api.Instructions buildInstructions() {
  final o = api.Instructions();
  buildCounterInstructions++;
  if (buildCounterInstructions < 3) {
    o.consoleInstructions = buildConsole();
    o.gcloudInstructions = buildGcloud();
  }
  buildCounterInstructions--;
  return o;
}

void checkInstructions(api.Instructions o) {
  buildCounterInstructions++;
  if (buildCounterInstructions < 3) {
    checkConsole(o.consoleInstructions!);
    checkGcloud(o.gcloudInstructions!);
  }
  buildCounterInstructions--;
}

core.List<api.AccessApprovalRequest> buildUnnamed8() => [
      buildAccessApprovalRequest(),
      buildAccessApprovalRequest(),
    ];

void checkUnnamed8(core.List<api.AccessApprovalRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessApprovalRequest(o[0]);
  checkAccessApprovalRequest(o[1]);
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

core.int buildCounterListAccessApprovalRequestsResponse = 0;
api.ListAccessApprovalRequestsResponse
    buildListAccessApprovalRequestsResponse() {
  final o = api.ListAccessApprovalRequestsResponse();
  buildCounterListAccessApprovalRequestsResponse++;
  if (buildCounterListAccessApprovalRequestsResponse < 3) {
    o.accessApprovalRequests = buildUnnamed8();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed9();
  }
  buildCounterListAccessApprovalRequestsResponse--;
  return o;
}

void checkListAccessApprovalRequestsResponse(
    api.ListAccessApprovalRequestsResponse o) {
  buildCounterListAccessApprovalRequestsResponse++;
  if (buildCounterListAccessApprovalRequestsResponse < 3) {
    checkUnnamed8(o.accessApprovalRequests!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListAccessApprovalRequestsResponse--;
}

core.List<api.Customer> buildUnnamed10() => [
      buildCustomer(),
      buildCustomer(),
    ];

void checkUnnamed10(core.List<api.Customer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomer(o[0]);
  checkCustomer(o[1]);
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

core.int buildCounterListCustomersResponse = 0;
api.ListCustomersResponse buildListCustomersResponse() {
  final o = api.ListCustomersResponse();
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    o.customers = buildUnnamed10();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed11();
  }
  buildCounterListCustomersResponse--;
  return o;
}

void checkListCustomersResponse(api.ListCustomersResponse o) {
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    checkUnnamed10(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListCustomersResponse--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<api.Violation> buildUnnamed13() => [
      buildViolation(),
      buildViolation(),
    ];

void checkUnnamed13(core.List<api.Violation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkViolation(o[0]);
  checkViolation(o[1]);
}

core.int buildCounterListViolationsResponse = 0;
api.ListViolationsResponse buildListViolationsResponse() {
  final o = api.ListViolationsResponse();
  buildCounterListViolationsResponse++;
  if (buildCounterListViolationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
    o.violations = buildUnnamed13();
  }
  buildCounterListViolationsResponse--;
  return o;
}

void checkListViolationsResponse(api.ListViolationsResponse o) {
  buildCounterListViolationsResponse++;
  if (buildCounterListViolationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.unreachable!);
    checkUnnamed13(o.violations!);
  }
  buildCounterListViolationsResponse--;
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

core.List<api.Workload> buildUnnamed15() => [
      buildWorkload(),
      buildWorkload(),
    ];

void checkUnnamed15(core.List<api.Workload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkload(o[0]);
  checkWorkload(o[1]);
}

core.int buildCounterListWorkloadsResponse = 0;
api.ListWorkloadsResponse buildListWorkloadsResponse() {
  final o = api.ListWorkloadsResponse();
  buildCounterListWorkloadsResponse++;
  if (buildCounterListWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
    o.workloads = buildUnnamed15();
  }
  buildCounterListWorkloadsResponse--;
  return o;
}

void checkListWorkloadsResponse(api.ListWorkloadsResponse o) {
  buildCounterListWorkloadsResponse++;
  if (buildCounterListWorkloadsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.unreachable!);
    checkUnnamed15(o.workloads!);
  }
  buildCounterListWorkloadsResponse--;
}

core.List<api.EkmMetadata> buildUnnamed16() => [
      buildEkmMetadata(),
      buildEkmMetadata(),
    ];

void checkUnnamed16(core.List<api.EkmMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEkmMetadata(o[0]);
  checkEkmMetadata(o[1]);
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<api.Sku> buildUnnamed18() => [
      buildSku(),
      buildSku(),
    ];

void checkUnnamed18(core.List<api.Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSku(o[0]);
  checkSku(o[1]);
}

core.int buildCounterPartner = 0;
api.Partner buildPartner() {
  final o = api.Partner();
  buildCounterPartner++;
  if (buildCounterPartner < 3) {
    o.createTime = 'foo';
    o.ekmSolutions = buildUnnamed16();
    o.name = 'foo';
    o.operatedCloudRegions = buildUnnamed17();
    o.partnerProjectId = 'foo';
    o.skus = buildUnnamed18();
    o.updateTime = 'foo';
  }
  buildCounterPartner--;
  return o;
}

void checkPartner(api.Partner o) {
  buildCounterPartner++;
  if (buildCounterPartner < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.ekmSolutions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.operatedCloudRegions!);
    unittest.expect(
      o.partnerProjectId!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.skus!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartner--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterPartnerPermissions = 0;
api.PartnerPermissions buildPartnerPermissions() {
  final o = api.PartnerPermissions();
  buildCounterPartnerPermissions++;
  if (buildCounterPartnerPermissions < 3) {
    o.name = 'foo';
    o.partnerPermissions = buildUnnamed19();
  }
  buildCounterPartnerPermissions--;
  return o;
}

void checkPartnerPermissions(api.PartnerPermissions o) {
  buildCounterPartnerPermissions++;
  if (buildCounterPartnerPermissions < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.partnerPermissions!);
  }
  buildCounterPartnerPermissions--;
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

core.int buildCounterRemediation = 0;
api.Remediation buildRemediation() {
  final o = api.Remediation();
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    o.compliantValues = buildUnnamed20();
    o.instructions = buildInstructions();
    o.remediationType = 'foo';
  }
  buildCounterRemediation--;
  return o;
}

void checkRemediation(api.Remediation o) {
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    checkUnnamed20(o.compliantValues!);
    checkInstructions(o.instructions!);
    unittest.expect(
      o.remediationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemediation--;
}

core.int buildCounterSku = 0;
api.Sku buildSku() {
  final o = api.Sku();
  buildCounterSku++;
  if (buildCounterSku < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterSku--;
  return o;
}

void checkSku(api.Sku o) {
  buildCounterSku++;
  if (buildCounterSku < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterSku--;
}

core.int buildCounterViolation = 0;
api.Violation buildViolation() {
  final o = api.Violation();
  buildCounterViolation++;
  if (buildCounterViolation < 3) {
    o.beginTime = 'foo';
    o.category = 'foo';
    o.description = 'foo';
    o.folderId = 'foo';
    o.name = 'foo';
    o.nonCompliantOrgPolicy = 'foo';
    o.remediation = buildRemediation();
    o.resolveTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterViolation--;
  return o;
}

void checkViolation(api.Violation o) {
  buildCounterViolation++;
  if (buildCounterViolation < 3) {
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
      o.folderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonCompliantOrgPolicy!,
      unittest.equals('foo'),
    );
    checkRemediation(o.remediation!);
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
  buildCounterViolation--;
}

core.int buildCounterWorkload = 0;
api.Workload buildWorkload() {
  final o = api.Workload();
  buildCounterWorkload++;
  if (buildCounterWorkload < 3) {
    o.createTime = 'foo';
    o.folder = 'foo';
    o.folderId = 'foo';
    o.isOnboarded = true;
    o.keyManagementProjectId = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.partner = 'foo';
    o.workloadOnboardingState = buildWorkloadOnboardingState();
  }
  buildCounterWorkload--;
  return o;
}

void checkWorkload(api.Workload o) {
  buildCounterWorkload++;
  if (buildCounterWorkload < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folderId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isOnboarded!, unittest.isTrue);
    unittest.expect(
      o.keyManagementProjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partner!,
      unittest.equals('foo'),
    );
    checkWorkloadOnboardingState(o.workloadOnboardingState!);
  }
  buildCounterWorkload--;
}

core.List<api.WorkloadOnboardingStep> buildUnnamed21() => [
      buildWorkloadOnboardingStep(),
      buildWorkloadOnboardingStep(),
    ];

void checkUnnamed21(core.List<api.WorkloadOnboardingStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadOnboardingStep(o[0]);
  checkWorkloadOnboardingStep(o[1]);
}

core.int buildCounterWorkloadOnboardingState = 0;
api.WorkloadOnboardingState buildWorkloadOnboardingState() {
  final o = api.WorkloadOnboardingState();
  buildCounterWorkloadOnboardingState++;
  if (buildCounterWorkloadOnboardingState < 3) {
    o.onboardingSteps = buildUnnamed21();
  }
  buildCounterWorkloadOnboardingState--;
  return o;
}

void checkWorkloadOnboardingState(api.WorkloadOnboardingState o) {
  buildCounterWorkloadOnboardingState++;
  if (buildCounterWorkloadOnboardingState < 3) {
    checkUnnamed21(o.onboardingSteps!);
  }
  buildCounterWorkloadOnboardingState--;
}

core.int buildCounterWorkloadOnboardingStep = 0;
api.WorkloadOnboardingStep buildWorkloadOnboardingStep() {
  final o = api.WorkloadOnboardingStep();
  buildCounterWorkloadOnboardingStep++;
  if (buildCounterWorkloadOnboardingStep < 3) {
    o.completionState = 'foo';
    o.completionTime = 'foo';
    o.startTime = 'foo';
    o.step = 'foo';
  }
  buildCounterWorkloadOnboardingStep--;
  return o;
}

void checkWorkloadOnboardingStep(api.WorkloadOnboardingStep o) {
  buildCounterWorkloadOnboardingStep++;
  if (buildCounterWorkloadOnboardingStep < 3) {
    unittest.expect(
      o.completionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.completionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadOnboardingStep--;
}

void main() {
  unittest.group('obj-schema-AccessApprovalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessApprovalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessApprovalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessApprovalRequest(od);
    });
  });

  unittest.group('obj-schema-AccessReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessReason(od);
    });
  });

  unittest.group('obj-schema-ConnectionError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionError(od);
    });
  });

  unittest.group('obj-schema-Console', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Console.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConsole(od);
    });
  });

  unittest.group('obj-schema-Customer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Customer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomer(od);
    });
  });

  unittest.group('obj-schema-CustomerOnboardingState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerOnboardingState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerOnboardingState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerOnboardingState(od);
    });
  });

  unittest.group('obj-schema-CustomerOnboardingStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerOnboardingStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerOnboardingStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerOnboardingStep(od);
    });
  });

  unittest.group('obj-schema-EkmConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEkmConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EkmConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEkmConnection(od);
    });
  });

  unittest.group('obj-schema-EkmConnections', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEkmConnections();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EkmConnections.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEkmConnections(od);
    });
  });

  unittest.group('obj-schema-EkmMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEkmMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EkmMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEkmMetadata(od);
    });
  });

  unittest.group('obj-schema-Gcloud', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcloud();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Gcloud.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcloud(od);
    });
  });

  unittest.group('obj-schema-Instructions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstructions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Instructions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstructions(od);
    });
  });

  unittest.group('obj-schema-ListAccessApprovalRequestsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccessApprovalRequestsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccessApprovalRequestsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccessApprovalRequestsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-ListViolationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListViolationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListViolationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListViolationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkloadsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkloadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkloadsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkloadsResponse(od);
    });
  });

  unittest.group('obj-schema-Partner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Partner.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPartner(od);
    });
  });

  unittest.group('obj-schema-PartnerPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartnerPermissions(od);
    });
  });

  unittest.group('obj-schema-Remediation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemediation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Remediation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemediation(od);
    });
  });

  unittest.group('obj-schema-Sku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sku.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSku(od);
    });
  });

  unittest.group('obj-schema-Violation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Violation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkViolation(od);
    });
  });

  unittest.group('obj-schema-Workload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Workload.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkload(od);
    });
  });

  unittest.group('obj-schema-WorkloadOnboardingState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadOnboardingState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadOnboardingState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadOnboardingState(od);
    });
  });

  unittest.group('obj-schema-WorkloadOnboardingStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadOnboardingStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadOnboardingStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadOnboardingStep(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsResource', () {
    unittest.test('method--getPartner', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudControlsPartnerServiceApi(mock).organizations.locations;
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
        final resp = convert.json.encode(buildPartner());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPartner(arg_name, $fields: arg_$fields);
      checkPartner(response as api.Partner);
    });
  });

  unittest.group('resource-OrganizationsLocationsCustomersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers;
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
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers;
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
        final resp = convert.json.encode(buildListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomersResponse(response as api.ListCustomersResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsCustomersWorkloadsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads;
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
        final resp = convert.json.encode(buildWorkload());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkload(response as api.Workload);
    });

    unittest.test('method--getEkmConnections', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads;
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
        final resp = convert.json.encode(buildEkmConnections());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEkmConnections(arg_name, $fields: arg_$fields);
      checkEkmConnections(response as api.EkmConnections);
    });

    unittest.test('method--getPartnerPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads;
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
        final resp = convert.json.encode(buildPartnerPermissions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getPartnerPermissions(arg_name, $fields: arg_$fields);
      checkPartnerPermissions(response as api.PartnerPermissions);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads;
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
        final resp = convert.json.encode(buildListWorkloadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkloadsResponse(response as api.ListWorkloadsResponse);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsCustomersWorkloadsAccessApprovalRequestsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads
          .accessApprovalRequests;
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
            convert.json.encode(buildListAccessApprovalRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccessApprovalRequestsResponse(
          response as api.ListAccessApprovalRequestsResponse);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsCustomersWorkloadsViolationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads
          .violations;
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
        final resp = convert.json.encode(buildViolation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkViolation(response as api.Violation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudControlsPartnerServiceApi(mock)
          .organizations
          .locations
          .customers
          .workloads
          .violations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
        final resp = convert.json.encode(buildListViolationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListViolationsResponse(response as api.ListViolationsResponse);
    });
  });
}
