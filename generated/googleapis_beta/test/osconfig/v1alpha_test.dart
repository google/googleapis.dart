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

import 'package:googleapis_beta/osconfig/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCVSSv3 = 0;
api.CVSSv3 buildCVSSv3() {
  final o = api.CVSSv3();
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.exploitabilityScore = 42.0;
    o.impactScore = 42.0;
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCVSSv3--;
  return o;
}

void checkCVSSv3(api.CVSSv3 o) {
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    unittest.expect(
      o.attackComplexity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.confidentialityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exploitabilityScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impactScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integrityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegesRequired!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInteraction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCVSSv3--;
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

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
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

core.int buildCounterFixedOrPercent = 0;
api.FixedOrPercent buildFixedOrPercent() {
  final o = api.FixedOrPercent();
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    o.fixed = 42;
    o.percent = 42;
  }
  buildCounterFixedOrPercent--;
  return o;
}

void checkFixedOrPercent(api.FixedOrPercent o) {
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    unittest.expect(
      o.fixed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percent!,
      unittest.equals(42),
    );
  }
  buildCounterFixedOrPercent--;
}

core.List<api.InstanceOSPoliciesComplianceOSPolicyCompliance> buildUnnamed0() =>
    [
      buildInstanceOSPoliciesComplianceOSPolicyCompliance(),
      buildInstanceOSPoliciesComplianceOSPolicyCompliance(),
    ];

void checkUnnamed0(
    core.List<api.InstanceOSPoliciesComplianceOSPolicyCompliance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceOSPoliciesComplianceOSPolicyCompliance(o[0]);
  checkInstanceOSPoliciesComplianceOSPolicyCompliance(o[1]);
}

core.int buildCounterInstanceOSPoliciesCompliance = 0;
api.InstanceOSPoliciesCompliance buildInstanceOSPoliciesCompliance() {
  final o = api.InstanceOSPoliciesCompliance();
  buildCounterInstanceOSPoliciesCompliance++;
  if (buildCounterInstanceOSPoliciesCompliance < 3) {
    o.detailedState = 'foo';
    o.detailedStateReason = 'foo';
    o.instance = 'foo';
    o.lastComplianceCheckTime = 'foo';
    o.lastComplianceRunId = 'foo';
    o.name = 'foo';
    o.osPolicyCompliances = buildUnnamed0();
    o.state = 'foo';
  }
  buildCounterInstanceOSPoliciesCompliance--;
  return o;
}

void checkInstanceOSPoliciesCompliance(api.InstanceOSPoliciesCompliance o) {
  buildCounterInstanceOSPoliciesCompliance++;
  if (buildCounterInstanceOSPoliciesCompliance < 3) {
    unittest.expect(
      o.detailedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detailedStateReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastComplianceCheckTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastComplianceRunId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.osPolicyCompliances!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceOSPoliciesCompliance--;
}

core.List<api.OSPolicyResourceCompliance> buildUnnamed1() => [
      buildOSPolicyResourceCompliance(),
      buildOSPolicyResourceCompliance(),
    ];

void checkUnnamed1(core.List<api.OSPolicyResourceCompliance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResourceCompliance(o[0]);
  checkOSPolicyResourceCompliance(o[1]);
}

core.int buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance = 0;
api.InstanceOSPoliciesComplianceOSPolicyCompliance
    buildInstanceOSPoliciesComplianceOSPolicyCompliance() {
  final o = api.InstanceOSPoliciesComplianceOSPolicyCompliance();
  buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance++;
  if (buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance < 3) {
    o.osPolicyAssignment = 'foo';
    o.osPolicyId = 'foo';
    o.osPolicyResourceCompliances = buildUnnamed1();
    o.state = 'foo';
  }
  buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance--;
  return o;
}

void checkInstanceOSPoliciesComplianceOSPolicyCompliance(
    api.InstanceOSPoliciesComplianceOSPolicyCompliance o) {
  buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance++;
  if (buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance < 3) {
    unittest.expect(
      o.osPolicyAssignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osPolicyId!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.osPolicyResourceCompliances!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceOSPoliciesComplianceOSPolicyCompliance--;
}

core.Map<core.String, api.InventoryItem> buildUnnamed2() => {
      'x': buildInventoryItem(),
      'y': buildInventoryItem(),
    };

void checkUnnamed2(core.Map<core.String, api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o['x']!);
  checkInventoryItem(o['y']!);
}

core.int buildCounterInventory = 0;
api.Inventory buildInventory() {
  final o = api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed2();
    o.name = 'foo';
    o.osInfo = buildInventoryOsInfo();
    o.updateTime = 'foo';
  }
  buildCounterInventory--;
  return o;
}

void checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    checkUnnamed2(o.items!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkInventoryOsInfo(o.osInfo!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventory--;
}

core.int buildCounterInventoryItem = 0;
api.InventoryItem buildInventoryItem() {
  final o = api.InventoryItem();
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    o.availablePackage = buildInventorySoftwarePackage();
    o.createTime = 'foo';
    o.id = 'foo';
    o.installedPackage = buildInventorySoftwarePackage();
    o.originType = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInventoryItem--;
  return o;
}

void checkInventoryItem(api.InventoryItem o) {
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    checkInventorySoftwarePackage(o.availablePackage!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkInventorySoftwarePackage(o.installedPackage!);
    unittest.expect(
      o.originType!,
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
  }
  buildCounterInventoryItem--;
}

core.int buildCounterInventoryOsInfo = 0;
api.InventoryOsInfo buildInventoryOsInfo() {
  final o = api.InventoryOsInfo();
  buildCounterInventoryOsInfo++;
  if (buildCounterInventoryOsInfo < 3) {
    o.architecture = 'foo';
    o.hostname = 'foo';
    o.kernelRelease = 'foo';
    o.kernelVersion = 'foo';
    o.longName = 'foo';
    o.osconfigAgentVersion = 'foo';
    o.shortName = 'foo';
    o.version = 'foo';
  }
  buildCounterInventoryOsInfo--;
  return o;
}

void checkInventoryOsInfo(api.InventoryOsInfo o) {
  buildCounterInventoryOsInfo++;
  if (buildCounterInventoryOsInfo < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelRelease!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osconfigAgentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryOsInfo--;
}

core.int buildCounterInventorySoftwarePackage = 0;
api.InventorySoftwarePackage buildInventorySoftwarePackage() {
  final o = api.InventorySoftwarePackage();
  buildCounterInventorySoftwarePackage++;
  if (buildCounterInventorySoftwarePackage < 3) {
    o.aptPackage = buildInventoryVersionedPackage();
    o.cosPackage = buildInventoryVersionedPackage();
    o.googetPackage = buildInventoryVersionedPackage();
    o.qfePackage = buildInventoryWindowsQuickFixEngineeringPackage();
    o.windowsApplication = buildInventoryWindowsApplication();
    o.wuaPackage = buildInventoryWindowsUpdatePackage();
    o.yumPackage = buildInventoryVersionedPackage();
    o.zypperPackage = buildInventoryVersionedPackage();
    o.zypperPatch = buildInventoryZypperPatch();
  }
  buildCounterInventorySoftwarePackage--;
  return o;
}

void checkInventorySoftwarePackage(api.InventorySoftwarePackage o) {
  buildCounterInventorySoftwarePackage++;
  if (buildCounterInventorySoftwarePackage < 3) {
    checkInventoryVersionedPackage(o.aptPackage!);
    checkInventoryVersionedPackage(o.cosPackage!);
    checkInventoryVersionedPackage(o.googetPackage!);
    checkInventoryWindowsQuickFixEngineeringPackage(o.qfePackage!);
    checkInventoryWindowsApplication(o.windowsApplication!);
    checkInventoryWindowsUpdatePackage(o.wuaPackage!);
    checkInventoryVersionedPackage(o.yumPackage!);
    checkInventoryVersionedPackage(o.zypperPackage!);
    checkInventoryZypperPatch(o.zypperPatch!);
  }
  buildCounterInventorySoftwarePackage--;
}

core.int buildCounterInventoryVersionedPackage = 0;
api.InventoryVersionedPackage buildInventoryVersionedPackage() {
  final o = api.InventoryVersionedPackage();
  buildCounterInventoryVersionedPackage++;
  if (buildCounterInventoryVersionedPackage < 3) {
    o.architecture = 'foo';
    o.packageName = 'foo';
    o.version = 'foo';
  }
  buildCounterInventoryVersionedPackage--;
  return o;
}

void checkInventoryVersionedPackage(api.InventoryVersionedPackage o) {
  buildCounterInventoryVersionedPackage++;
  if (buildCounterInventoryVersionedPackage < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryVersionedPackage--;
}

core.int buildCounterInventoryWindowsApplication = 0;
api.InventoryWindowsApplication buildInventoryWindowsApplication() {
  final o = api.InventoryWindowsApplication();
  buildCounterInventoryWindowsApplication++;
  if (buildCounterInventoryWindowsApplication < 3) {
    o.displayName = 'foo';
    o.displayVersion = 'foo';
    o.helpLink = 'foo';
    o.installDate = buildDate();
    o.publisher = 'foo';
  }
  buildCounterInventoryWindowsApplication--;
  return o;
}

void checkInventoryWindowsApplication(api.InventoryWindowsApplication o) {
  buildCounterInventoryWindowsApplication++;
  if (buildCounterInventoryWindowsApplication < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.helpLink!,
      unittest.equals('foo'),
    );
    checkDate(o.installDate!);
    unittest.expect(
      o.publisher!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryWindowsApplication--;
}

core.int buildCounterInventoryWindowsQuickFixEngineeringPackage = 0;
api.InventoryWindowsQuickFixEngineeringPackage
    buildInventoryWindowsQuickFixEngineeringPackage() {
  final o = api.InventoryWindowsQuickFixEngineeringPackage();
  buildCounterInventoryWindowsQuickFixEngineeringPackage++;
  if (buildCounterInventoryWindowsQuickFixEngineeringPackage < 3) {
    o.caption = 'foo';
    o.description = 'foo';
    o.hotFixId = 'foo';
    o.installTime = 'foo';
  }
  buildCounterInventoryWindowsQuickFixEngineeringPackage--;
  return o;
}

void checkInventoryWindowsQuickFixEngineeringPackage(
    api.InventoryWindowsQuickFixEngineeringPackage o) {
  buildCounterInventoryWindowsQuickFixEngineeringPackage++;
  if (buildCounterInventoryWindowsQuickFixEngineeringPackage < 3) {
    unittest.expect(
      o.caption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hotFixId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryWindowsQuickFixEngineeringPackage--;
}

core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory>
    buildUnnamed3() => [
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
        ];

void checkUnnamed3(
    core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[0]);
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[1]);
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

core.int buildCounterInventoryWindowsUpdatePackage = 0;
api.InventoryWindowsUpdatePackage buildInventoryWindowsUpdatePackage() {
  final o = api.InventoryWindowsUpdatePackage();
  buildCounterInventoryWindowsUpdatePackage++;
  if (buildCounterInventoryWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed3();
    o.description = 'foo';
    o.kbArticleIds = buildUnnamed4();
    o.lastDeploymentChangeTime = 'foo';
    o.moreInfoUrls = buildUnnamed5();
    o.revisionNumber = 42;
    o.supportUrl = 'foo';
    o.title = 'foo';
    o.updateId = 'foo';
  }
  buildCounterInventoryWindowsUpdatePackage--;
  return o;
}

void checkInventoryWindowsUpdatePackage(api.InventoryWindowsUpdatePackage o) {
  buildCounterInventoryWindowsUpdatePackage++;
  if (buildCounterInventoryWindowsUpdatePackage < 3) {
    checkUnnamed3(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.kbArticleIds!);
    unittest.expect(
      o.lastDeploymentChangeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.moreInfoUrls!);
    unittest.expect(
      o.revisionNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.supportUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryWindowsUpdatePackage--;
}

core.int buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory = 0;
api.InventoryWindowsUpdatePackageWindowsUpdateCategory
    buildInventoryWindowsUpdatePackageWindowsUpdateCategory() {
  final o = api.InventoryWindowsUpdatePackageWindowsUpdateCategory();
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory++;
  if (buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory--;
  return o;
}

void checkInventoryWindowsUpdatePackageWindowsUpdateCategory(
    api.InventoryWindowsUpdatePackageWindowsUpdateCategory o) {
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory++;
  if (buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory--;
}

core.int buildCounterInventoryZypperPatch = 0;
api.InventoryZypperPatch buildInventoryZypperPatch() {
  final o = api.InventoryZypperPatch();
  buildCounterInventoryZypperPatch++;
  if (buildCounterInventoryZypperPatch < 3) {
    o.category = 'foo';
    o.patchName = 'foo';
    o.severity = 'foo';
    o.summary = 'foo';
  }
  buildCounterInventoryZypperPatch--;
  return o;
}

void checkInventoryZypperPatch(api.InventoryZypperPatch o) {
  buildCounterInventoryZypperPatch++;
  if (buildCounterInventoryZypperPatch < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.patchName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventoryZypperPatch--;
}

core.List<api.InstanceOSPoliciesCompliance> buildUnnamed6() => [
      buildInstanceOSPoliciesCompliance(),
      buildInstanceOSPoliciesCompliance(),
    ];

void checkUnnamed6(core.List<api.InstanceOSPoliciesCompliance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceOSPoliciesCompliance(o[0]);
  checkInstanceOSPoliciesCompliance(o[1]);
}

core.int buildCounterListInstanceOSPoliciesCompliancesResponse = 0;
api.ListInstanceOSPoliciesCompliancesResponse
    buildListInstanceOSPoliciesCompliancesResponse() {
  final o = api.ListInstanceOSPoliciesCompliancesResponse();
  buildCounterListInstanceOSPoliciesCompliancesResponse++;
  if (buildCounterListInstanceOSPoliciesCompliancesResponse < 3) {
    o.instanceOsPoliciesCompliances = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstanceOSPoliciesCompliancesResponse--;
  return o;
}

void checkListInstanceOSPoliciesCompliancesResponse(
    api.ListInstanceOSPoliciesCompliancesResponse o) {
  buildCounterListInstanceOSPoliciesCompliancesResponse++;
  if (buildCounterListInstanceOSPoliciesCompliancesResponse < 3) {
    checkUnnamed6(o.instanceOsPoliciesCompliances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInstanceOSPoliciesCompliancesResponse--;
}

core.List<api.Inventory> buildUnnamed7() => [
      buildInventory(),
      buildInventory(),
    ];

void checkUnnamed7(core.List<api.Inventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventory(o[0]);
  checkInventory(o[1]);
}

core.int buildCounterListInventoriesResponse = 0;
api.ListInventoriesResponse buildListInventoriesResponse() {
  final o = api.ListInventoriesResponse();
  buildCounterListInventoriesResponse++;
  if (buildCounterListInventoriesResponse < 3) {
    o.inventories = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventoriesResponse--;
  return o;
}

void checkListInventoriesResponse(api.ListInventoriesResponse o) {
  buildCounterListInventoriesResponse++;
  if (buildCounterListInventoriesResponse < 3) {
    checkUnnamed7(o.inventories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInventoriesResponse--;
}

core.List<api.OSPolicyAssignmentReport> buildUnnamed8() => [
      buildOSPolicyAssignmentReport(),
      buildOSPolicyAssignmentReport(),
    ];

void checkUnnamed8(core.List<api.OSPolicyAssignmentReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentReport(o[0]);
  checkOSPolicyAssignmentReport(o[1]);
}

core.int buildCounterListOSPolicyAssignmentReportsResponse = 0;
api.ListOSPolicyAssignmentReportsResponse
    buildListOSPolicyAssignmentReportsResponse() {
  final o = api.ListOSPolicyAssignmentReportsResponse();
  buildCounterListOSPolicyAssignmentReportsResponse++;
  if (buildCounterListOSPolicyAssignmentReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.osPolicyAssignmentReports = buildUnnamed8();
  }
  buildCounterListOSPolicyAssignmentReportsResponse--;
  return o;
}

void checkListOSPolicyAssignmentReportsResponse(
    api.ListOSPolicyAssignmentReportsResponse o) {
  buildCounterListOSPolicyAssignmentReportsResponse++;
  if (buildCounterListOSPolicyAssignmentReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.osPolicyAssignmentReports!);
  }
  buildCounterListOSPolicyAssignmentReportsResponse--;
}

core.List<api.OSPolicyAssignment> buildUnnamed9() => [
      buildOSPolicyAssignment(),
      buildOSPolicyAssignment(),
    ];

void checkUnnamed9(core.List<api.OSPolicyAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignment(o[0]);
  checkOSPolicyAssignment(o[1]);
}

core.int buildCounterListOSPolicyAssignmentRevisionsResponse = 0;
api.ListOSPolicyAssignmentRevisionsResponse
    buildListOSPolicyAssignmentRevisionsResponse() {
  final o = api.ListOSPolicyAssignmentRevisionsResponse();
  buildCounterListOSPolicyAssignmentRevisionsResponse++;
  if (buildCounterListOSPolicyAssignmentRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.osPolicyAssignments = buildUnnamed9();
  }
  buildCounterListOSPolicyAssignmentRevisionsResponse--;
  return o;
}

void checkListOSPolicyAssignmentRevisionsResponse(
    api.ListOSPolicyAssignmentRevisionsResponse o) {
  buildCounterListOSPolicyAssignmentRevisionsResponse++;
  if (buildCounterListOSPolicyAssignmentRevisionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.osPolicyAssignments!);
  }
  buildCounterListOSPolicyAssignmentRevisionsResponse--;
}

core.List<api.OSPolicyAssignment> buildUnnamed10() => [
      buildOSPolicyAssignment(),
      buildOSPolicyAssignment(),
    ];

void checkUnnamed10(core.List<api.OSPolicyAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignment(o[0]);
  checkOSPolicyAssignment(o[1]);
}

core.int buildCounterListOSPolicyAssignmentsResponse = 0;
api.ListOSPolicyAssignmentsResponse buildListOSPolicyAssignmentsResponse() {
  final o = api.ListOSPolicyAssignmentsResponse();
  buildCounterListOSPolicyAssignmentsResponse++;
  if (buildCounterListOSPolicyAssignmentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.osPolicyAssignments = buildUnnamed10();
  }
  buildCounterListOSPolicyAssignmentsResponse--;
  return o;
}

void checkListOSPolicyAssignmentsResponse(
    api.ListOSPolicyAssignmentsResponse o) {
  buildCounterListOSPolicyAssignmentsResponse++;
  if (buildCounterListOSPolicyAssignmentsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.osPolicyAssignments!);
  }
  buildCounterListOSPolicyAssignmentsResponse--;
}

core.List<api.VulnerabilityReport> buildUnnamed11() => [
      buildVulnerabilityReport(),
      buildVulnerabilityReport(),
    ];

void checkUnnamed11(core.List<api.VulnerabilityReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVulnerabilityReport(o[0]);
  checkVulnerabilityReport(o[1]);
}

core.int buildCounterListVulnerabilityReportsResponse = 0;
api.ListVulnerabilityReportsResponse buildListVulnerabilityReportsResponse() {
  final o = api.ListVulnerabilityReportsResponse();
  buildCounterListVulnerabilityReportsResponse++;
  if (buildCounterListVulnerabilityReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.vulnerabilityReports = buildUnnamed11();
  }
  buildCounterListVulnerabilityReportsResponse--;
  return o;
}

void checkListVulnerabilityReportsResponse(
    api.ListVulnerabilityReportsResponse o) {
  buildCounterListVulnerabilityReportsResponse++;
  if (buildCounterListVulnerabilityReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.vulnerabilityReports!);
  }
  buildCounterListVulnerabilityReportsResponse--;
}

core.List<api.OSPolicyResourceGroup> buildUnnamed12() => [
      buildOSPolicyResourceGroup(),
      buildOSPolicyResourceGroup(),
    ];

void checkUnnamed12(core.List<api.OSPolicyResourceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResourceGroup(o[0]);
  checkOSPolicyResourceGroup(o[1]);
}

core.int buildCounterOSPolicy = 0;
api.OSPolicy buildOSPolicy() {
  final o = api.OSPolicy();
  buildCounterOSPolicy++;
  if (buildCounterOSPolicy < 3) {
    o.allowNoResourceGroupMatch = true;
    o.description = 'foo';
    o.id = 'foo';
    o.mode = 'foo';
    o.resourceGroups = buildUnnamed12();
  }
  buildCounterOSPolicy--;
  return o;
}

void checkOSPolicy(api.OSPolicy o) {
  buildCounterOSPolicy++;
  if (buildCounterOSPolicy < 3) {
    unittest.expect(o.allowNoResourceGroupMatch!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.resourceGroups!);
  }
  buildCounterOSPolicy--;
}

core.List<api.OSPolicy> buildUnnamed13() => [
      buildOSPolicy(),
      buildOSPolicy(),
    ];

void checkUnnamed13(core.List<api.OSPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicy(o[0]);
  checkOSPolicy(o[1]);
}

core.int buildCounterOSPolicyAssignment = 0;
api.OSPolicyAssignment buildOSPolicyAssignment() {
  final o = api.OSPolicyAssignment();
  buildCounterOSPolicyAssignment++;
  if (buildCounterOSPolicyAssignment < 3) {
    o.baseline = true;
    o.deleted = true;
    o.description = 'foo';
    o.etag = 'foo';
    o.instanceFilter = buildOSPolicyAssignmentInstanceFilter();
    o.name = 'foo';
    o.osPolicies = buildUnnamed13();
    o.reconciling = true;
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.rollout = buildOSPolicyAssignmentRollout();
    o.rolloutState = 'foo';
    o.uid = 'foo';
  }
  buildCounterOSPolicyAssignment--;
  return o;
}

void checkOSPolicyAssignment(api.OSPolicyAssignment o) {
  buildCounterOSPolicyAssignment++;
  if (buildCounterOSPolicyAssignment < 3) {
    unittest.expect(o.baseline!, unittest.isTrue);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkOSPolicyAssignmentInstanceFilter(o.instanceFilter!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.osPolicies!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.revisionCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkOSPolicyAssignmentRollout(o.rollout!);
    unittest.expect(
      o.rolloutState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignment--;
}

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed14() => [
      buildOSPolicyAssignmentLabelSet(),
      buildOSPolicyAssignmentLabelSet(),
    ];

void checkUnnamed14(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed15() => [
      buildOSPolicyAssignmentLabelSet(),
      buildOSPolicyAssignmentLabelSet(),
    ];

void checkUnnamed15(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentInstanceFilterInventory> buildUnnamed16() => [
      buildOSPolicyAssignmentInstanceFilterInventory(),
      buildOSPolicyAssignmentInstanceFilterInventory(),
    ];

void checkUnnamed16(
    core.List<api.OSPolicyAssignmentInstanceFilterInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentInstanceFilterInventory(o[0]);
  checkOSPolicyAssignmentInstanceFilterInventory(o[1]);
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

core.int buildCounterOSPolicyAssignmentInstanceFilter = 0;
api.OSPolicyAssignmentInstanceFilter buildOSPolicyAssignmentInstanceFilter() {
  final o = api.OSPolicyAssignmentInstanceFilter();
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    o.all = true;
    o.exclusionLabels = buildUnnamed14();
    o.inclusionLabels = buildUnnamed15();
    o.inventories = buildUnnamed16();
    o.osShortNames = buildUnnamed17();
  }
  buildCounterOSPolicyAssignmentInstanceFilter--;
  return o;
}

void checkOSPolicyAssignmentInstanceFilter(
    api.OSPolicyAssignmentInstanceFilter o) {
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed14(o.exclusionLabels!);
    checkUnnamed15(o.inclusionLabels!);
    checkUnnamed16(o.inventories!);
    checkUnnamed17(o.osShortNames!);
  }
  buildCounterOSPolicyAssignmentInstanceFilter--;
}

core.int buildCounterOSPolicyAssignmentInstanceFilterInventory = 0;
api.OSPolicyAssignmentInstanceFilterInventory
    buildOSPolicyAssignmentInstanceFilterInventory() {
  final o = api.OSPolicyAssignmentInstanceFilterInventory();
  buildCounterOSPolicyAssignmentInstanceFilterInventory++;
  if (buildCounterOSPolicyAssignmentInstanceFilterInventory < 3) {
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterOSPolicyAssignmentInstanceFilterInventory--;
  return o;
}

void checkOSPolicyAssignmentInstanceFilterInventory(
    api.OSPolicyAssignmentInstanceFilterInventory o) {
  buildCounterOSPolicyAssignmentInstanceFilterInventory++;
  if (buildCounterOSPolicyAssignmentInstanceFilterInventory < 3) {
    unittest.expect(
      o.osShortName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentInstanceFilterInventory--;
}

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
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

core.int buildCounterOSPolicyAssignmentLabelSet = 0;
api.OSPolicyAssignmentLabelSet buildOSPolicyAssignmentLabelSet() {
  final o = api.OSPolicyAssignmentLabelSet();
  buildCounterOSPolicyAssignmentLabelSet++;
  if (buildCounterOSPolicyAssignmentLabelSet < 3) {
    o.labels = buildUnnamed18();
  }
  buildCounterOSPolicyAssignmentLabelSet--;
  return o;
}

void checkOSPolicyAssignmentLabelSet(api.OSPolicyAssignmentLabelSet o) {
  buildCounterOSPolicyAssignmentLabelSet++;
  if (buildCounterOSPolicyAssignmentLabelSet < 3) {
    checkUnnamed18(o.labels!);
  }
  buildCounterOSPolicyAssignmentLabelSet--;
}

core.List<api.OSPolicyAssignmentReportOSPolicyCompliance> buildUnnamed19() => [
      buildOSPolicyAssignmentReportOSPolicyCompliance(),
      buildOSPolicyAssignmentReportOSPolicyCompliance(),
    ];

void checkUnnamed19(
    core.List<api.OSPolicyAssignmentReportOSPolicyCompliance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentReportOSPolicyCompliance(o[0]);
  checkOSPolicyAssignmentReportOSPolicyCompliance(o[1]);
}

core.int buildCounterOSPolicyAssignmentReport = 0;
api.OSPolicyAssignmentReport buildOSPolicyAssignmentReport() {
  final o = api.OSPolicyAssignmentReport();
  buildCounterOSPolicyAssignmentReport++;
  if (buildCounterOSPolicyAssignmentReport < 3) {
    o.instance = 'foo';
    o.lastRunId = 'foo';
    o.name = 'foo';
    o.osPolicyAssignment = 'foo';
    o.osPolicyCompliances = buildUnnamed19();
    o.updateTime = 'foo';
  }
  buildCounterOSPolicyAssignmentReport--;
  return o;
}

void checkOSPolicyAssignmentReport(api.OSPolicyAssignmentReport o) {
  buildCounterOSPolicyAssignmentReport++;
  if (buildCounterOSPolicyAssignmentReport < 3) {
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastRunId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osPolicyAssignment!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.osPolicyCompliances!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentReport--;
}

core.List<
        api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance>
    buildUnnamed20() => [
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(),
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(),
        ];

void checkUnnamed20(
    core.List<
            api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(
      o[0]);
  checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(
      o[1]);
}

core.int buildCounterOSPolicyAssignmentReportOSPolicyCompliance = 0;
api.OSPolicyAssignmentReportOSPolicyCompliance
    buildOSPolicyAssignmentReportOSPolicyCompliance() {
  final o = api.OSPolicyAssignmentReportOSPolicyCompliance();
  buildCounterOSPolicyAssignmentReportOSPolicyCompliance++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyCompliance < 3) {
    o.complianceState = 'foo';
    o.complianceStateReason = 'foo';
    o.osPolicyId = 'foo';
    o.osPolicyResourceCompliances = buildUnnamed20();
  }
  buildCounterOSPolicyAssignmentReportOSPolicyCompliance--;
  return o;
}

void checkOSPolicyAssignmentReportOSPolicyCompliance(
    api.OSPolicyAssignmentReportOSPolicyCompliance o) {
  buildCounterOSPolicyAssignmentReportOSPolicyCompliance++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyCompliance < 3) {
    unittest.expect(
      o.complianceState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.complianceStateReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osPolicyId!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.osPolicyResourceCompliances!);
  }
  buildCounterOSPolicyAssignmentReportOSPolicyCompliance--;
}

core.List<
        api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep>
    buildUnnamed21() => [
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(),
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(),
        ];

void checkUnnamed21(
    core.List<
            api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(
      o[0]);
  checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(
      o[1]);
}

core.int
    buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance =
    0;
api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance
    buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance() {
  final o = api
      .OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance();
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance <
      3) {
    o.complianceState = 'foo';
    o.complianceStateReason = 'foo';
    o.configSteps = buildUnnamed21();
    o.execResourceOutput =
        buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput();
    o.osPolicyResourceId = 'foo';
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance--;
  return o;
}

void checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(
    api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance
        o) {
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance <
      3) {
    unittest.expect(
      o.complianceState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.complianceStateReason!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.configSteps!);
    checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput(
        o.execResourceOutput!);
    unittest.expect(
      o.osPolicyResourceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance--;
}

core.int
    buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput =
    0;
api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput
    buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput() {
  final o = api
      .OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput();
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput <
      3) {
    o.enforcementOutput = 'foo';
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput--;
  return o;
}

void checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput(
    api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput
        o) {
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput <
      3) {
    unittest.expect(
      o.enforcementOutput!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput--;
}

core.int
    buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep =
    0;
api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep
    buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep() {
  final o = api
      .OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep();
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep <
      3) {
    o.errorMessage = 'foo';
    o.type = 'foo';
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep--;
  return o;
}

void checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(
    api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep
        o) {
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep++;
  if (buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep <
      3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep--;
}

core.int buildCounterOSPolicyAssignmentRollout = 0;
api.OSPolicyAssignmentRollout buildOSPolicyAssignmentRollout() {
  final o = api.OSPolicyAssignmentRollout();
  buildCounterOSPolicyAssignmentRollout++;
  if (buildCounterOSPolicyAssignmentRollout < 3) {
    o.disruptionBudget = buildFixedOrPercent();
    o.minWaitDuration = 'foo';
  }
  buildCounterOSPolicyAssignmentRollout--;
  return o;
}

void checkOSPolicyAssignmentRollout(api.OSPolicyAssignmentRollout o) {
  buildCounterOSPolicyAssignmentRollout++;
  if (buildCounterOSPolicyAssignmentRollout < 3) {
    checkFixedOrPercent(o.disruptionBudget!);
    unittest.expect(
      o.minWaitDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentRollout--;
}

core.int buildCounterOSPolicyInventoryFilter = 0;
api.OSPolicyInventoryFilter buildOSPolicyInventoryFilter() {
  final o = api.OSPolicyInventoryFilter();
  buildCounterOSPolicyInventoryFilter++;
  if (buildCounterOSPolicyInventoryFilter < 3) {
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterOSPolicyInventoryFilter--;
  return o;
}

void checkOSPolicyInventoryFilter(api.OSPolicyInventoryFilter o) {
  buildCounterOSPolicyInventoryFilter++;
  if (buildCounterOSPolicyInventoryFilter < 3) {
    unittest.expect(
      o.osShortName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyInventoryFilter--;
}

core.int buildCounterOSPolicyOSFilter = 0;
api.OSPolicyOSFilter buildOSPolicyOSFilter() {
  final o = api.OSPolicyOSFilter();
  buildCounterOSPolicyOSFilter++;
  if (buildCounterOSPolicyOSFilter < 3) {
    o.osShortName = 'foo';
    o.osVersion = 'foo';
  }
  buildCounterOSPolicyOSFilter--;
  return o;
}

void checkOSPolicyOSFilter(api.OSPolicyOSFilter o) {
  buildCounterOSPolicyOSFilter++;
  if (buildCounterOSPolicyOSFilter < 3) {
    unittest.expect(
      o.osShortName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyOSFilter--;
}

core.int buildCounterOSPolicyResource = 0;
api.OSPolicyResource buildOSPolicyResource() {
  final o = api.OSPolicyResource();
  buildCounterOSPolicyResource++;
  if (buildCounterOSPolicyResource < 3) {
    o.exec = buildOSPolicyResourceExecResource();
    o.file = buildOSPolicyResourceFileResource();
    o.id = 'foo';
    o.pkg = buildOSPolicyResourcePackageResource();
    o.repository = buildOSPolicyResourceRepositoryResource();
  }
  buildCounterOSPolicyResource--;
  return o;
}

void checkOSPolicyResource(api.OSPolicyResource o) {
  buildCounterOSPolicyResource++;
  if (buildCounterOSPolicyResource < 3) {
    checkOSPolicyResourceExecResource(o.exec!);
    checkOSPolicyResourceFileResource(o.file!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkOSPolicyResourcePackageResource(o.pkg!);
    checkOSPolicyResourceRepositoryResource(o.repository!);
  }
  buildCounterOSPolicyResource--;
}

core.List<api.OSPolicyResourceConfigStep> buildUnnamed22() => [
      buildOSPolicyResourceConfigStep(),
      buildOSPolicyResourceConfigStep(),
    ];

void checkUnnamed22(core.List<api.OSPolicyResourceConfigStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResourceConfigStep(o[0]);
  checkOSPolicyResourceConfigStep(o[1]);
}

core.int buildCounterOSPolicyResourceCompliance = 0;
api.OSPolicyResourceCompliance buildOSPolicyResourceCompliance() {
  final o = api.OSPolicyResourceCompliance();
  buildCounterOSPolicyResourceCompliance++;
  if (buildCounterOSPolicyResourceCompliance < 3) {
    o.configSteps = buildUnnamed22();
    o.execResourceOutput = buildOSPolicyResourceComplianceExecResourceOutput();
    o.osPolicyResourceId = 'foo';
    o.state = 'foo';
  }
  buildCounterOSPolicyResourceCompliance--;
  return o;
}

void checkOSPolicyResourceCompliance(api.OSPolicyResourceCompliance o) {
  buildCounterOSPolicyResourceCompliance++;
  if (buildCounterOSPolicyResourceCompliance < 3) {
    checkUnnamed22(o.configSteps!);
    checkOSPolicyResourceComplianceExecResourceOutput(o.execResourceOutput!);
    unittest.expect(
      o.osPolicyResourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceCompliance--;
}

core.int buildCounterOSPolicyResourceComplianceExecResourceOutput = 0;
api.OSPolicyResourceComplianceExecResourceOutput
    buildOSPolicyResourceComplianceExecResourceOutput() {
  final o = api.OSPolicyResourceComplianceExecResourceOutput();
  buildCounterOSPolicyResourceComplianceExecResourceOutput++;
  if (buildCounterOSPolicyResourceComplianceExecResourceOutput < 3) {
    o.enforcementOutput = 'foo';
  }
  buildCounterOSPolicyResourceComplianceExecResourceOutput--;
  return o;
}

void checkOSPolicyResourceComplianceExecResourceOutput(
    api.OSPolicyResourceComplianceExecResourceOutput o) {
  buildCounterOSPolicyResourceComplianceExecResourceOutput++;
  if (buildCounterOSPolicyResourceComplianceExecResourceOutput < 3) {
    unittest.expect(
      o.enforcementOutput!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceComplianceExecResourceOutput--;
}

core.int buildCounterOSPolicyResourceConfigStep = 0;
api.OSPolicyResourceConfigStep buildOSPolicyResourceConfigStep() {
  final o = api.OSPolicyResourceConfigStep();
  buildCounterOSPolicyResourceConfigStep++;
  if (buildCounterOSPolicyResourceConfigStep < 3) {
    o.errorMessage = 'foo';
    o.outcome = 'foo';
    o.type = 'foo';
  }
  buildCounterOSPolicyResourceConfigStep--;
  return o;
}

void checkOSPolicyResourceConfigStep(api.OSPolicyResourceConfigStep o) {
  buildCounterOSPolicyResourceConfigStep++;
  if (buildCounterOSPolicyResourceConfigStep < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outcome!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceConfigStep--;
}

core.int buildCounterOSPolicyResourceExecResource = 0;
api.OSPolicyResourceExecResource buildOSPolicyResourceExecResource() {
  final o = api.OSPolicyResourceExecResource();
  buildCounterOSPolicyResourceExecResource++;
  if (buildCounterOSPolicyResourceExecResource < 3) {
    o.enforce = buildOSPolicyResourceExecResourceExec();
    o.validate = buildOSPolicyResourceExecResourceExec();
  }
  buildCounterOSPolicyResourceExecResource--;
  return o;
}

void checkOSPolicyResourceExecResource(api.OSPolicyResourceExecResource o) {
  buildCounterOSPolicyResourceExecResource++;
  if (buildCounterOSPolicyResourceExecResource < 3) {
    checkOSPolicyResourceExecResourceExec(o.enforce!);
    checkOSPolicyResourceExecResourceExec(o.validate!);
  }
  buildCounterOSPolicyResourceExecResource--;
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

core.int buildCounterOSPolicyResourceExecResourceExec = 0;
api.OSPolicyResourceExecResourceExec buildOSPolicyResourceExecResourceExec() {
  final o = api.OSPolicyResourceExecResourceExec();
  buildCounterOSPolicyResourceExecResourceExec++;
  if (buildCounterOSPolicyResourceExecResourceExec < 3) {
    o.args = buildUnnamed23();
    o.file = buildOSPolicyResourceFile();
    o.interpreter = 'foo';
    o.outputFilePath = 'foo';
    o.script = 'foo';
  }
  buildCounterOSPolicyResourceExecResourceExec--;
  return o;
}

void checkOSPolicyResourceExecResourceExec(
    api.OSPolicyResourceExecResourceExec o) {
  buildCounterOSPolicyResourceExecResourceExec++;
  if (buildCounterOSPolicyResourceExecResourceExec < 3) {
    checkUnnamed23(o.args!);
    checkOSPolicyResourceFile(o.file!);
    unittest.expect(
      o.interpreter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputFilePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.script!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceExecResourceExec--;
}

core.int buildCounterOSPolicyResourceFile = 0;
api.OSPolicyResourceFile buildOSPolicyResourceFile() {
  final o = api.OSPolicyResourceFile();
  buildCounterOSPolicyResourceFile++;
  if (buildCounterOSPolicyResourceFile < 3) {
    o.allowInsecure = true;
    o.gcs = buildOSPolicyResourceFileGcs();
    o.localPath = 'foo';
    o.remote = buildOSPolicyResourceFileRemote();
  }
  buildCounterOSPolicyResourceFile--;
  return o;
}

void checkOSPolicyResourceFile(api.OSPolicyResourceFile o) {
  buildCounterOSPolicyResourceFile++;
  if (buildCounterOSPolicyResourceFile < 3) {
    unittest.expect(o.allowInsecure!, unittest.isTrue);
    checkOSPolicyResourceFileGcs(o.gcs!);
    unittest.expect(
      o.localPath!,
      unittest.equals('foo'),
    );
    checkOSPolicyResourceFileRemote(o.remote!);
  }
  buildCounterOSPolicyResourceFile--;
}

core.int buildCounterOSPolicyResourceFileGcs = 0;
api.OSPolicyResourceFileGcs buildOSPolicyResourceFileGcs() {
  final o = api.OSPolicyResourceFileGcs();
  buildCounterOSPolicyResourceFileGcs++;
  if (buildCounterOSPolicyResourceFileGcs < 3) {
    o.bucket = 'foo';
    o.generation = 'foo';
    o.object = 'foo';
  }
  buildCounterOSPolicyResourceFileGcs--;
  return o;
}

void checkOSPolicyResourceFileGcs(api.OSPolicyResourceFileGcs o) {
  buildCounterOSPolicyResourceFileGcs++;
  if (buildCounterOSPolicyResourceFileGcs < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.object!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceFileGcs--;
}

core.int buildCounterOSPolicyResourceFileRemote = 0;
api.OSPolicyResourceFileRemote buildOSPolicyResourceFileRemote() {
  final o = api.OSPolicyResourceFileRemote();
  buildCounterOSPolicyResourceFileRemote++;
  if (buildCounterOSPolicyResourceFileRemote < 3) {
    o.sha256Checksum = 'foo';
    o.uri = 'foo';
  }
  buildCounterOSPolicyResourceFileRemote--;
  return o;
}

void checkOSPolicyResourceFileRemote(api.OSPolicyResourceFileRemote o) {
  buildCounterOSPolicyResourceFileRemote++;
  if (buildCounterOSPolicyResourceFileRemote < 3) {
    unittest.expect(
      o.sha256Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceFileRemote--;
}

core.int buildCounterOSPolicyResourceFileResource = 0;
api.OSPolicyResourceFileResource buildOSPolicyResourceFileResource() {
  final o = api.OSPolicyResourceFileResource();
  buildCounterOSPolicyResourceFileResource++;
  if (buildCounterOSPolicyResourceFileResource < 3) {
    o.content = 'foo';
    o.file = buildOSPolicyResourceFile();
    o.path = 'foo';
    o.permissions = 'foo';
    o.state = 'foo';
  }
  buildCounterOSPolicyResourceFileResource--;
  return o;
}

void checkOSPolicyResourceFileResource(api.OSPolicyResourceFileResource o) {
  buildCounterOSPolicyResourceFileResource++;
  if (buildCounterOSPolicyResourceFileResource < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkOSPolicyResourceFile(o.file!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceFileResource--;
}

core.List<api.OSPolicyInventoryFilter> buildUnnamed24() => [
      buildOSPolicyInventoryFilter(),
      buildOSPolicyInventoryFilter(),
    ];

void checkUnnamed24(core.List<api.OSPolicyInventoryFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyInventoryFilter(o[0]);
  checkOSPolicyInventoryFilter(o[1]);
}

core.List<api.OSPolicyResource> buildUnnamed25() => [
      buildOSPolicyResource(),
      buildOSPolicyResource(),
    ];

void checkUnnamed25(core.List<api.OSPolicyResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResource(o[0]);
  checkOSPolicyResource(o[1]);
}

core.int buildCounterOSPolicyResourceGroup = 0;
api.OSPolicyResourceGroup buildOSPolicyResourceGroup() {
  final o = api.OSPolicyResourceGroup();
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    o.inventoryFilters = buildUnnamed24();
    o.osFilter = buildOSPolicyOSFilter();
    o.resources = buildUnnamed25();
  }
  buildCounterOSPolicyResourceGroup--;
  return o;
}

void checkOSPolicyResourceGroup(api.OSPolicyResourceGroup o) {
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    checkUnnamed24(o.inventoryFilters!);
    checkOSPolicyOSFilter(o.osFilter!);
    checkUnnamed25(o.resources!);
  }
  buildCounterOSPolicyResourceGroup--;
}

core.int buildCounterOSPolicyResourcePackageResource = 0;
api.OSPolicyResourcePackageResource buildOSPolicyResourcePackageResource() {
  final o = api.OSPolicyResourcePackageResource();
  buildCounterOSPolicyResourcePackageResource++;
  if (buildCounterOSPolicyResourcePackageResource < 3) {
    o.apt = buildOSPolicyResourcePackageResourceAPT();
    o.deb = buildOSPolicyResourcePackageResourceDeb();
    o.desiredState = 'foo';
    o.googet = buildOSPolicyResourcePackageResourceGooGet();
    o.msi = buildOSPolicyResourcePackageResourceMSI();
    o.rpm = buildOSPolicyResourcePackageResourceRPM();
    o.yum = buildOSPolicyResourcePackageResourceYUM();
    o.zypper = buildOSPolicyResourcePackageResourceZypper();
  }
  buildCounterOSPolicyResourcePackageResource--;
  return o;
}

void checkOSPolicyResourcePackageResource(
    api.OSPolicyResourcePackageResource o) {
  buildCounterOSPolicyResourcePackageResource++;
  if (buildCounterOSPolicyResourcePackageResource < 3) {
    checkOSPolicyResourcePackageResourceAPT(o.apt!);
    checkOSPolicyResourcePackageResourceDeb(o.deb!);
    unittest.expect(
      o.desiredState!,
      unittest.equals('foo'),
    );
    checkOSPolicyResourcePackageResourceGooGet(o.googet!);
    checkOSPolicyResourcePackageResourceMSI(o.msi!);
    checkOSPolicyResourcePackageResourceRPM(o.rpm!);
    checkOSPolicyResourcePackageResourceYUM(o.yum!);
    checkOSPolicyResourcePackageResourceZypper(o.zypper!);
  }
  buildCounterOSPolicyResourcePackageResource--;
}

core.int buildCounterOSPolicyResourcePackageResourceAPT = 0;
api.OSPolicyResourcePackageResourceAPT
    buildOSPolicyResourcePackageResourceAPT() {
  final o = api.OSPolicyResourcePackageResourceAPT();
  buildCounterOSPolicyResourcePackageResourceAPT++;
  if (buildCounterOSPolicyResourcePackageResourceAPT < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceAPT--;
  return o;
}

void checkOSPolicyResourcePackageResourceAPT(
    api.OSPolicyResourcePackageResourceAPT o) {
  buildCounterOSPolicyResourcePackageResourceAPT++;
  if (buildCounterOSPolicyResourcePackageResourceAPT < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourcePackageResourceAPT--;
}

core.int buildCounterOSPolicyResourcePackageResourceDeb = 0;
api.OSPolicyResourcePackageResourceDeb
    buildOSPolicyResourcePackageResourceDeb() {
  final o = api.OSPolicyResourcePackageResourceDeb();
  buildCounterOSPolicyResourcePackageResourceDeb++;
  if (buildCounterOSPolicyResourcePackageResourceDeb < 3) {
    o.pullDeps = true;
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceDeb--;
  return o;
}

void checkOSPolicyResourcePackageResourceDeb(
    api.OSPolicyResourcePackageResourceDeb o) {
  buildCounterOSPolicyResourcePackageResourceDeb++;
  if (buildCounterOSPolicyResourcePackageResourceDeb < 3) {
    unittest.expect(o.pullDeps!, unittest.isTrue);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceDeb--;
}

core.int buildCounterOSPolicyResourcePackageResourceGooGet = 0;
api.OSPolicyResourcePackageResourceGooGet
    buildOSPolicyResourcePackageResourceGooGet() {
  final o = api.OSPolicyResourcePackageResourceGooGet();
  buildCounterOSPolicyResourcePackageResourceGooGet++;
  if (buildCounterOSPolicyResourcePackageResourceGooGet < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceGooGet--;
  return o;
}

void checkOSPolicyResourcePackageResourceGooGet(
    api.OSPolicyResourcePackageResourceGooGet o) {
  buildCounterOSPolicyResourcePackageResourceGooGet++;
  if (buildCounterOSPolicyResourcePackageResourceGooGet < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourcePackageResourceGooGet--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterOSPolicyResourcePackageResourceMSI = 0;
api.OSPolicyResourcePackageResourceMSI
    buildOSPolicyResourcePackageResourceMSI() {
  final o = api.OSPolicyResourcePackageResourceMSI();
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    o.properties = buildUnnamed26();
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceMSI--;
  return o;
}

void checkOSPolicyResourcePackageResourceMSI(
    api.OSPolicyResourcePackageResourceMSI o) {
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    checkUnnamed26(o.properties!);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceMSI--;
}

core.int buildCounterOSPolicyResourcePackageResourceRPM = 0;
api.OSPolicyResourcePackageResourceRPM
    buildOSPolicyResourcePackageResourceRPM() {
  final o = api.OSPolicyResourcePackageResourceRPM();
  buildCounterOSPolicyResourcePackageResourceRPM++;
  if (buildCounterOSPolicyResourcePackageResourceRPM < 3) {
    o.pullDeps = true;
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceRPM--;
  return o;
}

void checkOSPolicyResourcePackageResourceRPM(
    api.OSPolicyResourcePackageResourceRPM o) {
  buildCounterOSPolicyResourcePackageResourceRPM++;
  if (buildCounterOSPolicyResourcePackageResourceRPM < 3) {
    unittest.expect(o.pullDeps!, unittest.isTrue);
    checkOSPolicyResourceFile(o.source!);
  }
  buildCounterOSPolicyResourcePackageResourceRPM--;
}

core.int buildCounterOSPolicyResourcePackageResourceYUM = 0;
api.OSPolicyResourcePackageResourceYUM
    buildOSPolicyResourcePackageResourceYUM() {
  final o = api.OSPolicyResourcePackageResourceYUM();
  buildCounterOSPolicyResourcePackageResourceYUM++;
  if (buildCounterOSPolicyResourcePackageResourceYUM < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceYUM--;
  return o;
}

void checkOSPolicyResourcePackageResourceYUM(
    api.OSPolicyResourcePackageResourceYUM o) {
  buildCounterOSPolicyResourcePackageResourceYUM++;
  if (buildCounterOSPolicyResourcePackageResourceYUM < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourcePackageResourceYUM--;
}

core.int buildCounterOSPolicyResourcePackageResourceZypper = 0;
api.OSPolicyResourcePackageResourceZypper
    buildOSPolicyResourcePackageResourceZypper() {
  final o = api.OSPolicyResourcePackageResourceZypper();
  buildCounterOSPolicyResourcePackageResourceZypper++;
  if (buildCounterOSPolicyResourcePackageResourceZypper < 3) {
    o.name = 'foo';
  }
  buildCounterOSPolicyResourcePackageResourceZypper--;
  return o;
}

void checkOSPolicyResourcePackageResourceZypper(
    api.OSPolicyResourcePackageResourceZypper o) {
  buildCounterOSPolicyResourcePackageResourceZypper++;
  if (buildCounterOSPolicyResourcePackageResourceZypper < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourcePackageResourceZypper--;
}

core.int buildCounterOSPolicyResourceRepositoryResource = 0;
api.OSPolicyResourceRepositoryResource
    buildOSPolicyResourceRepositoryResource() {
  final o = api.OSPolicyResourceRepositoryResource();
  buildCounterOSPolicyResourceRepositoryResource++;
  if (buildCounterOSPolicyResourceRepositoryResource < 3) {
    o.apt = buildOSPolicyResourceRepositoryResourceAptRepository();
    o.goo = buildOSPolicyResourceRepositoryResourceGooRepository();
    o.yum = buildOSPolicyResourceRepositoryResourceYumRepository();
    o.zypper = buildOSPolicyResourceRepositoryResourceZypperRepository();
  }
  buildCounterOSPolicyResourceRepositoryResource--;
  return o;
}

void checkOSPolicyResourceRepositoryResource(
    api.OSPolicyResourceRepositoryResource o) {
  buildCounterOSPolicyResourceRepositoryResource++;
  if (buildCounterOSPolicyResourceRepositoryResource < 3) {
    checkOSPolicyResourceRepositoryResourceAptRepository(o.apt!);
    checkOSPolicyResourceRepositoryResourceGooRepository(o.goo!);
    checkOSPolicyResourceRepositoryResourceYumRepository(o.yum!);
    checkOSPolicyResourceRepositoryResourceZypperRepository(o.zypper!);
  }
  buildCounterOSPolicyResourceRepositoryResource--;
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

core.int buildCounterOSPolicyResourceRepositoryResourceAptRepository = 0;
api.OSPolicyResourceRepositoryResourceAptRepository
    buildOSPolicyResourceRepositoryResourceAptRepository() {
  final o = api.OSPolicyResourceRepositoryResourceAptRepository();
  buildCounterOSPolicyResourceRepositoryResourceAptRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceAptRepository < 3) {
    o.archiveType = 'foo';
    o.components = buildUnnamed27();
    o.distribution = 'foo';
    o.gpgKey = 'foo';
    o.uri = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceAptRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceAptRepository(
    api.OSPolicyResourceRepositoryResourceAptRepository o) {
  buildCounterOSPolicyResourceRepositoryResourceAptRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceAptRepository < 3) {
    unittest.expect(
      o.archiveType!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.components!);
    unittest.expect(
      o.distribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gpgKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceAptRepository--;
}

core.int buildCounterOSPolicyResourceRepositoryResourceGooRepository = 0;
api.OSPolicyResourceRepositoryResourceGooRepository
    buildOSPolicyResourceRepositoryResourceGooRepository() {
  final o = api.OSPolicyResourceRepositoryResourceGooRepository();
  buildCounterOSPolicyResourceRepositoryResourceGooRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceGooRepository < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceGooRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceGooRepository(
    api.OSPolicyResourceRepositoryResourceGooRepository o) {
  buildCounterOSPolicyResourceRepositoryResourceGooRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceGooRepository < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceGooRepository--;
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

core.int buildCounterOSPolicyResourceRepositoryResourceYumRepository = 0;
api.OSPolicyResourceRepositoryResourceYumRepository
    buildOSPolicyResourceRepositoryResourceYumRepository() {
  final o = api.OSPolicyResourceRepositoryResourceYumRepository();
  buildCounterOSPolicyResourceRepositoryResourceYumRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceYumRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed28();
    o.id = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceYumRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceYumRepository(
    api.OSPolicyResourceRepositoryResourceYumRepository o) {
  buildCounterOSPolicyResourceRepositoryResourceYumRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceYumRepository < 3) {
    unittest.expect(
      o.baseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.gpgKeys!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceYumRepository--;
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

core.int buildCounterOSPolicyResourceRepositoryResourceZypperRepository = 0;
api.OSPolicyResourceRepositoryResourceZypperRepository
    buildOSPolicyResourceRepositoryResourceZypperRepository() {
  final o = api.OSPolicyResourceRepositoryResourceZypperRepository();
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceZypperRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed29();
    o.id = 'foo';
  }
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository--;
  return o;
}

void checkOSPolicyResourceRepositoryResourceZypperRepository(
    api.OSPolicyResourceRepositoryResourceZypperRepository o) {
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceZypperRepository < 3) {
    unittest.expect(
      o.baseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.gpgKeys!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository--;
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed33() => [
      buildUnnamed32(),
      buildUnnamed32(),
    ];

void checkUnnamed33(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed32(o[0]);
  checkUnnamed32(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed33();
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
    checkUnnamed33(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.VulnerabilityReportVulnerability> buildUnnamed34() => [
      buildVulnerabilityReportVulnerability(),
      buildVulnerabilityReportVulnerability(),
    ];

void checkUnnamed34(core.List<api.VulnerabilityReportVulnerability> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVulnerabilityReportVulnerability(o[0]);
  checkVulnerabilityReportVulnerability(o[1]);
}

core.int buildCounterVulnerabilityReport = 0;
api.VulnerabilityReport buildVulnerabilityReport() {
  final o = api.VulnerabilityReport();
  buildCounterVulnerabilityReport++;
  if (buildCounterVulnerabilityReport < 3) {
    o.name = 'foo';
    o.updateTime = 'foo';
    o.vulnerabilities = buildUnnamed34();
  }
  buildCounterVulnerabilityReport--;
  return o;
}

void checkVulnerabilityReport(api.VulnerabilityReport o) {
  buildCounterVulnerabilityReport++;
  if (buildCounterVulnerabilityReport < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.vulnerabilities!);
  }
  buildCounterVulnerabilityReport--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterVulnerabilityReportVulnerability = 0;
api.VulnerabilityReportVulnerability buildVulnerabilityReportVulnerability() {
  final o = api.VulnerabilityReportVulnerability();
  buildCounterVulnerabilityReportVulnerability++;
  if (buildCounterVulnerabilityReportVulnerability < 3) {
    o.availableInventoryItemIds = buildUnnamed35();
    o.createTime = 'foo';
    o.details = buildVulnerabilityReportVulnerabilityDetails();
    o.installedInventoryItemIds = buildUnnamed36();
    o.updateTime = 'foo';
  }
  buildCounterVulnerabilityReportVulnerability--;
  return o;
}

void checkVulnerabilityReportVulnerability(
    api.VulnerabilityReportVulnerability o) {
  buildCounterVulnerabilityReportVulnerability++;
  if (buildCounterVulnerabilityReportVulnerability < 3) {
    checkUnnamed35(o.availableInventoryItemIds!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkVulnerabilityReportVulnerabilityDetails(o.details!);
    checkUnnamed36(o.installedInventoryItemIds!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerability--;
}

core.List<api.VulnerabilityReportVulnerabilityDetailsReference>
    buildUnnamed37() => [
          buildVulnerabilityReportVulnerabilityDetailsReference(),
          buildVulnerabilityReportVulnerabilityDetailsReference(),
        ];

void checkUnnamed37(
    core.List<api.VulnerabilityReportVulnerabilityDetailsReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVulnerabilityReportVulnerabilityDetailsReference(o[0]);
  checkVulnerabilityReportVulnerabilityDetailsReference(o[1]);
}

core.int buildCounterVulnerabilityReportVulnerabilityDetails = 0;
api.VulnerabilityReportVulnerabilityDetails
    buildVulnerabilityReportVulnerabilityDetails() {
  final o = api.VulnerabilityReportVulnerabilityDetails();
  buildCounterVulnerabilityReportVulnerabilityDetails++;
  if (buildCounterVulnerabilityReportVulnerabilityDetails < 3) {
    o.cve = 'foo';
    o.cvssV2Score = 42.0;
    o.cvssV3 = buildCVSSv3();
    o.description = 'foo';
    o.references = buildUnnamed37();
    o.severity = 'foo';
  }
  buildCounterVulnerabilityReportVulnerabilityDetails--;
  return o;
}

void checkVulnerabilityReportVulnerabilityDetails(
    api.VulnerabilityReportVulnerabilityDetails o) {
  buildCounterVulnerabilityReportVulnerabilityDetails++;
  if (buildCounterVulnerabilityReportVulnerabilityDetails < 3) {
    unittest.expect(
      o.cve!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cvssV2Score!,
      unittest.equals(42.0),
    );
    checkCVSSv3(o.cvssV3!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.references!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerabilityDetails--;
}

core.int buildCounterVulnerabilityReportVulnerabilityDetailsReference = 0;
api.VulnerabilityReportVulnerabilityDetailsReference
    buildVulnerabilityReportVulnerabilityDetailsReference() {
  final o = api.VulnerabilityReportVulnerabilityDetailsReference();
  buildCounterVulnerabilityReportVulnerabilityDetailsReference++;
  if (buildCounterVulnerabilityReportVulnerabilityDetailsReference < 3) {
    o.source = 'foo';
    o.url = 'foo';
  }
  buildCounterVulnerabilityReportVulnerabilityDetailsReference--;
  return o;
}

void checkVulnerabilityReportVulnerabilityDetailsReference(
    api.VulnerabilityReportVulnerabilityDetailsReference o) {
  buildCounterVulnerabilityReportVulnerabilityDetailsReference++;
  if (buildCounterVulnerabilityReportVulnerabilityDetailsReference < 3) {
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerabilityDetailsReference--;
}

void main() {
  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSSv3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CVSSv3.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSSv3(od);
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

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
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

  unittest.group('obj-schema-FixedOrPercent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixedOrPercent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixedOrPercent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFixedOrPercent(od);
    });
  });

  unittest.group('obj-schema-InstanceOSPoliciesCompliance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceOSPoliciesCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceOSPoliciesCompliance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceOSPoliciesCompliance(od);
    });
  });

  unittest.group('obj-schema-InstanceOSPoliciesComplianceOSPolicyCompliance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceOSPoliciesComplianceOSPolicyCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceOSPoliciesComplianceOSPolicyCompliance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceOSPoliciesComplianceOSPolicyCompliance(od);
    });
  });

  unittest.group('obj-schema-Inventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Inventory.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInventory(od);
    });
  });

  unittest.group('obj-schema-InventoryItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryItem(od);
    });
  });

  unittest.group('obj-schema-InventoryOsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryOsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryOsInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryOsInfo(od);
    });
  });

  unittest.group('obj-schema-InventorySoftwarePackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySoftwarePackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySoftwarePackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventorySoftwarePackage(od);
    });
  });

  unittest.group('obj-schema-InventoryVersionedPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryVersionedPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryVersionedPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryVersionedPackage(od);
    });
  });

  unittest.group('obj-schema-InventoryWindowsApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryWindowsApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryWindowsApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryWindowsApplication(od);
    });
  });

  unittest.group('obj-schema-InventoryWindowsQuickFixEngineeringPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryWindowsQuickFixEngineeringPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryWindowsQuickFixEngineeringPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryWindowsQuickFixEngineeringPackage(od);
    });
  });

  unittest.group('obj-schema-InventoryWindowsUpdatePackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryWindowsUpdatePackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryWindowsUpdatePackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryWindowsUpdatePackage(od);
    });
  });

  unittest.group(
      'obj-schema-InventoryWindowsUpdatePackageWindowsUpdateCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryWindowsUpdatePackageWindowsUpdateCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.InventoryWindowsUpdatePackageWindowsUpdateCategory.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkInventoryWindowsUpdatePackageWindowsUpdateCategory(od);
    });
  });

  unittest.group('obj-schema-InventoryZypperPatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryZypperPatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryZypperPatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventoryZypperPatch(od);
    });
  });

  unittest.group('obj-schema-ListInstanceOSPoliciesCompliancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstanceOSPoliciesCompliancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstanceOSPoliciesCompliancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstanceOSPoliciesCompliancesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInventoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInventoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInventoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInventoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOSPolicyAssignmentReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOSPolicyAssignmentReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOSPolicyAssignmentReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOSPolicyAssignmentReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOSPolicyAssignmentRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOSPolicyAssignmentRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOSPolicyAssignmentRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOSPolicyAssignmentRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOSPolicyAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOSPolicyAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOSPolicyAssignmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOSPolicyAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVulnerabilityReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVulnerabilityReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVulnerabilityReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVulnerabilityReportsResponse(od);
    });
  });

  unittest.group('obj-schema-OSPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicy(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignment(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentInstanceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentInstanceFilterInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentInstanceFilterInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentInstanceFilterInventory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentInstanceFilterInventory(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentLabelSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentLabelSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentLabelSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentLabelSet(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentReport(od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentReportOSPolicyCompliance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentReportOSPolicyCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentReportOSPolicyCompliance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentReportOSPolicyCompliance(od);
    });
  });

  unittest.group(
      'obj-schema-OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(
          od);
    });
  });

  unittest.group(
      'obj-schema-OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput(
          od);
    });
  });

  unittest.group(
      'obj-schema-OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(
          od);
    });
  });

  unittest.group('obj-schema-OSPolicyAssignmentRollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentRollout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentRollout(od);
    });
  });

  unittest.group('obj-schema-OSPolicyInventoryFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyInventoryFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyInventoryFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyInventoryFilter(od);
    });
  });

  unittest.group('obj-schema-OSPolicyOSFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyOSFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyOSFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyOSFilter(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceCompliance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceCompliance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceCompliance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceCompliance(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceComplianceExecResourceOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceComplianceExecResourceOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceComplianceExecResourceOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceComplianceExecResourceOutput(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceConfigStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceConfigStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceConfigStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceConfigStep(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceExecResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceExecResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceExecResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceExecResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceExecResourceExec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceExecResourceExec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceExecResourceExec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceExecResourceExec(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceFile(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileGcs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileGcs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileGcs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceFileGcs(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileRemote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileRemote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileRemote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceFileRemote(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceFileResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceFileResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceFileResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceFileResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceGroup(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceAPT', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceAPT();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceAPT.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceAPT(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceDeb', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceDeb();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceDeb.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceDeb(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceGooGet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceGooGet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceGooGet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceGooGet(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceMSI', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceMSI();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceMSI.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceMSI(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceRPM', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceRPM();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceRPM.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceRPM(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceYUM', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceYUM();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceYUM.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceYUM(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourcePackageResourceZypper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourcePackageResourceZypper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourcePackageResourceZypper.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourcePackageResourceZypper(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceRepositoryResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceRepositoryResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceRepositoryResource(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceRepositoryResourceAptRepository',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResourceAptRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceRepositoryResourceAptRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceRepositoryResourceAptRepository(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceRepositoryResourceGooRepository',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResourceGooRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceRepositoryResourceGooRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceRepositoryResourceGooRepository(od);
    });
  });

  unittest.group('obj-schema-OSPolicyResourceRepositoryResourceYumRepository',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResourceYumRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResourceRepositoryResourceYumRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceRepositoryResourceYumRepository(od);
    });
  });

  unittest.group(
      'obj-schema-OSPolicyResourceRepositoryResourceZypperRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResourceRepositoryResourceZypperRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSPolicyResourceRepositoryResourceZypperRepository.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResourceRepositoryResourceZypperRepository(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityReport(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityReportVulnerability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityReportVulnerability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityReportVulnerability.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityReportVulnerability(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityReportVulnerabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityReportVulnerabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityReportVulnerabilityDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityReportVulnerabilityDetails(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityReportVulnerabilityDetailsReference',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityReportVulnerabilityDetailsReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityReportVulnerabilityDetailsReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityReportVulnerabilityDetailsReference(od);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsInstanceOSPoliciesCompliancesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instanceOSPoliciesCompliances;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildInstanceOSPoliciesCompliance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstanceOSPoliciesCompliance(
          response as api.InstanceOSPoliciesCompliance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instanceOSPoliciesCompliances;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            .encode(buildListInstanceOSPoliciesCompliancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstanceOSPoliciesCompliancesResponse(
          response as api.ListInstanceOSPoliciesCompliancesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesInventoriesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.instances.inventories;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkInventory(response as api.Inventory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OSConfigApi(mock).projects.locations.instances.inventories;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListInventoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListInventoriesResponse(response as api.ListInventoriesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsInstancesOsPolicyAssignmentsReportsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instances
          .osPolicyAssignments
          .reports;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOSPolicyAssignmentReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOSPolicyAssignmentReport(response as api.OSPolicyAssignmentReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instances
          .osPolicyAssignments
          .reports;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildListOSPolicyAssignmentReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOSPolicyAssignmentReportsResponse(
          response as api.ListOSPolicyAssignmentReportsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsInstancesVulnerabilityReportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instances
          .vulnerabilityReports;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildVulnerabilityReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVulnerabilityReport(response as api.VulnerabilityReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .instances
          .vulnerabilityReports;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildListVulnerabilityReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVulnerabilityReportsResponse(
          response as api.ListVulnerabilityReportsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOsPolicyAssignmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
      final arg_request = buildOSPolicyAssignment();
      final arg_parent = 'foo';
      final arg_osPolicyAssignmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OSPolicyAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOSPolicyAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
          queryMap['osPolicyAssignmentId']!.first,
          unittest.equals(arg_osPolicyAssignmentId),
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
          osPolicyAssignmentId: arg_osPolicyAssignmentId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOSPolicyAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOSPolicyAssignment(response as api.OSPolicyAssignment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildListOSPolicyAssignmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOSPolicyAssignmentsResponse(
          response as api.ListOSPolicyAssignmentsResponse);
    });

    unittest.test('method--listRevisions', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildListOSPolicyAssignmentRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listRevisions(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOSPolicyAssignmentRevisionsResponse(
          response as api.ListOSPolicyAssignmentRevisionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.locations.osPolicyAssignments;
      final arg_request = buildOSPolicyAssignment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OSPolicyAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOSPolicyAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsOsPolicyAssignmentsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .osPolicyAssignments
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock)
          .projects
          .locations
          .osPolicyAssignments
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
        );
        pathOffset += 8;
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
  });
}
