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

import 'package:googleapis/osconfig/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterAptSettings = 0;
api.AptSettings buildAptSettings() {
  final o = api.AptSettings();
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    o.excludes = buildUnnamed0();
    o.exclusivePackages = buildUnnamed1();
    o.type = 'foo';
  }
  buildCounterAptSettings--;
  return o;
}

void checkAptSettings(api.AptSettings o) {
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    checkUnnamed0(o.excludes!);
    checkUnnamed1(o.exclusivePackages!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAptSettings--;
}

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

core.int buildCounterCancelPatchJobRequest = 0;
api.CancelPatchJobRequest buildCancelPatchJobRequest() {
  final o = api.CancelPatchJobRequest();
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
  return o;
}

void checkCancelPatchJobRequest(api.CancelPatchJobRequest o) {
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
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

core.int buildCounterExecStep = 0;
api.ExecStep buildExecStep() {
  final o = api.ExecStep();
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    o.linuxExecStepConfig = buildExecStepConfig();
    o.windowsExecStepConfig = buildExecStepConfig();
  }
  buildCounterExecStep--;
  return o;
}

void checkExecStep(api.ExecStep o) {
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    checkExecStepConfig(o.linuxExecStepConfig!);
    checkExecStepConfig(o.windowsExecStepConfig!);
  }
  buildCounterExecStep--;
}

core.List<core.int> buildUnnamed2() => [
      42,
      42,
    ];

void checkUnnamed2(core.List<core.int> o) {
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

core.int buildCounterExecStepConfig = 0;
api.ExecStepConfig buildExecStepConfig() {
  final o = api.ExecStepConfig();
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    o.allowedSuccessCodes = buildUnnamed2();
    o.gcsObject = buildGcsObject();
    o.interpreter = 'foo';
    o.localPath = 'foo';
  }
  buildCounterExecStepConfig--;
  return o;
}

void checkExecStepConfig(api.ExecStepConfig o) {
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    checkUnnamed2(o.allowedSuccessCodes!);
    checkGcsObject(o.gcsObject!);
    unittest.expect(
      o.interpreter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecStepConfig--;
}

core.int buildCounterExecutePatchJobRequest = 0;
api.ExecutePatchJobRequest buildExecutePatchJobRequest() {
  final o = api.ExecutePatchJobRequest();
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.dryRun = true;
    o.duration = 'foo';
    o.instanceFilter = buildPatchInstanceFilter();
    o.patchConfig = buildPatchConfig();
    o.rollout = buildPatchRollout();
  }
  buildCounterExecutePatchJobRequest--;
  return o;
}

void checkExecutePatchJobRequest(api.ExecutePatchJobRequest o) {
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkPatchInstanceFilter(o.instanceFilter!);
    checkPatchConfig(o.patchConfig!);
    checkPatchRollout(o.rollout!);
  }
  buildCounterExecutePatchJobRequest--;
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

core.int buildCounterGcsObject = 0;
api.GcsObject buildGcsObject() {
  final o = api.GcsObject();
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    o.bucket = 'foo';
    o.generationNumber = 'foo';
    o.object = 'foo';
  }
  buildCounterGcsObject--;
  return o;
}

void checkGcsObject(api.GcsObject o) {
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generationNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.object!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsObject--;
}

core.int buildCounterGooSettings = 0;
api.GooSettings buildGooSettings() {
  final o = api.GooSettings();
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
  return o;
}

void checkGooSettings(api.GooSettings o) {
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
}

core.Map<core.String, api.InventoryItem> buildUnnamed3() => {
      'x': buildInventoryItem(),
      'y': buildInventoryItem(),
    };

void checkUnnamed3(core.Map<core.String, api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o['x']!);
  checkInventoryItem(o['y']!);
}

core.int buildCounterInventory = 0;
api.Inventory buildInventory() {
  final o = api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed3();
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
    checkUnnamed3(o.items!);
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
    buildUnnamed4() => [
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
        ];

void checkUnnamed4(
    core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[0]);
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[1]);
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

core.int buildCounterInventoryWindowsUpdatePackage = 0;
api.InventoryWindowsUpdatePackage buildInventoryWindowsUpdatePackage() {
  final o = api.InventoryWindowsUpdatePackage();
  buildCounterInventoryWindowsUpdatePackage++;
  if (buildCounterInventoryWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed4();
    o.description = 'foo';
    o.kbArticleIds = buildUnnamed5();
    o.lastDeploymentChangeTime = 'foo';
    o.moreInfoUrls = buildUnnamed6();
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
    checkUnnamed4(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.kbArticleIds!);
    unittest.expect(
      o.lastDeploymentChangeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.moreInfoUrls!);
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

core.List<api.PatchDeployment> buildUnnamed11() => [
      buildPatchDeployment(),
      buildPatchDeployment(),
    ];

void checkUnnamed11(core.List<api.PatchDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchDeployment(o[0]);
  checkPatchDeployment(o[1]);
}

core.int buildCounterListPatchDeploymentsResponse = 0;
api.ListPatchDeploymentsResponse buildListPatchDeploymentsResponse() {
  final o = api.ListPatchDeploymentsResponse();
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchDeployments = buildUnnamed11();
  }
  buildCounterListPatchDeploymentsResponse--;
  return o;
}

void checkListPatchDeploymentsResponse(api.ListPatchDeploymentsResponse o) {
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.patchDeployments!);
  }
  buildCounterListPatchDeploymentsResponse--;
}

core.List<api.PatchJobInstanceDetails> buildUnnamed12() => [
      buildPatchJobInstanceDetails(),
      buildPatchJobInstanceDetails(),
    ];

void checkUnnamed12(core.List<api.PatchJobInstanceDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJobInstanceDetails(o[0]);
  checkPatchJobInstanceDetails(o[1]);
}

core.int buildCounterListPatchJobInstanceDetailsResponse = 0;
api.ListPatchJobInstanceDetailsResponse
    buildListPatchJobInstanceDetailsResponse() {
  final o = api.ListPatchJobInstanceDetailsResponse();
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchJobInstanceDetails = buildUnnamed12();
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
  return o;
}

void checkListPatchJobInstanceDetailsResponse(
    api.ListPatchJobInstanceDetailsResponse o) {
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.patchJobInstanceDetails!);
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
}

core.List<api.PatchJob> buildUnnamed13() => [
      buildPatchJob(),
      buildPatchJob(),
    ];

void checkUnnamed13(core.List<api.PatchJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJob(o[0]);
  checkPatchJob(o[1]);
}

core.int buildCounterListPatchJobsResponse = 0;
api.ListPatchJobsResponse buildListPatchJobsResponse() {
  final o = api.ListPatchJobsResponse();
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.patchJobs = buildUnnamed13();
  }
  buildCounterListPatchJobsResponse--;
  return o;
}

void checkListPatchJobsResponse(api.ListPatchJobsResponse o) {
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.patchJobs!);
  }
  buildCounterListPatchJobsResponse--;
}

core.List<api.VulnerabilityReport> buildUnnamed14() => [
      buildVulnerabilityReport(),
      buildVulnerabilityReport(),
    ];

void checkUnnamed14(core.List<api.VulnerabilityReport> o) {
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
    o.vulnerabilityReports = buildUnnamed14();
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
    checkUnnamed14(o.vulnerabilityReports!);
  }
  buildCounterListVulnerabilityReportsResponse--;
}

core.int buildCounterMonthlySchedule = 0;
api.MonthlySchedule buildMonthlySchedule() {
  final o = api.MonthlySchedule();
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    o.monthDay = 42;
    o.weekDayOfMonth = buildWeekDayOfMonth();
  }
  buildCounterMonthlySchedule--;
  return o;
}

void checkMonthlySchedule(api.MonthlySchedule o) {
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    unittest.expect(
      o.monthDay!,
      unittest.equals(42),
    );
    checkWeekDayOfMonth(o.weekDayOfMonth!);
  }
  buildCounterMonthlySchedule--;
}

core.List<api.OSPolicyResourceGroup> buildUnnamed15() => [
      buildOSPolicyResourceGroup(),
      buildOSPolicyResourceGroup(),
    ];

void checkUnnamed15(core.List<api.OSPolicyResourceGroup> o) {
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
    o.resourceGroups = buildUnnamed15();
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
    checkUnnamed15(o.resourceGroups!);
  }
  buildCounterOSPolicy--;
}

core.List<api.OSPolicy> buildUnnamed16() => [
      buildOSPolicy(),
      buildOSPolicy(),
    ];

void checkUnnamed16(core.List<api.OSPolicy> o) {
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
    o.osPolicies = buildUnnamed16();
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
    checkUnnamed16(o.osPolicies!);
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

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed17() => [
      buildOSPolicyAssignmentLabelSet(),
      buildOSPolicyAssignmentLabelSet(),
    ];

void checkUnnamed17(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentLabelSet> buildUnnamed18() => [
      buildOSPolicyAssignmentLabelSet(),
      buildOSPolicyAssignmentLabelSet(),
    ];

void checkUnnamed18(core.List<api.OSPolicyAssignmentLabelSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentLabelSet(o[0]);
  checkOSPolicyAssignmentLabelSet(o[1]);
}

core.List<api.OSPolicyAssignmentInstanceFilterInventory> buildUnnamed19() => [
      buildOSPolicyAssignmentInstanceFilterInventory(),
      buildOSPolicyAssignmentInstanceFilterInventory(),
    ];

void checkUnnamed19(
    core.List<api.OSPolicyAssignmentInstanceFilterInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyAssignmentInstanceFilterInventory(o[0]);
  checkOSPolicyAssignmentInstanceFilterInventory(o[1]);
}

core.int buildCounterOSPolicyAssignmentInstanceFilter = 0;
api.OSPolicyAssignmentInstanceFilter buildOSPolicyAssignmentInstanceFilter() {
  final o = api.OSPolicyAssignmentInstanceFilter();
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    o.all = true;
    o.exclusionLabels = buildUnnamed17();
    o.inclusionLabels = buildUnnamed18();
    o.inventories = buildUnnamed19();
  }
  buildCounterOSPolicyAssignmentInstanceFilter--;
  return o;
}

void checkOSPolicyAssignmentInstanceFilter(
    api.OSPolicyAssignmentInstanceFilter o) {
  buildCounterOSPolicyAssignmentInstanceFilter++;
  if (buildCounterOSPolicyAssignmentInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed17(o.exclusionLabels!);
    checkUnnamed18(o.inclusionLabels!);
    checkUnnamed19(o.inventories!);
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

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed20();
  }
  buildCounterOSPolicyAssignmentLabelSet--;
  return o;
}

void checkOSPolicyAssignmentLabelSet(api.OSPolicyAssignmentLabelSet o) {
  buildCounterOSPolicyAssignmentLabelSet++;
  if (buildCounterOSPolicyAssignmentLabelSet < 3) {
    checkUnnamed20(o.labels!);
  }
  buildCounterOSPolicyAssignmentLabelSet--;
}

core.List<api.OSPolicyAssignmentReportOSPolicyCompliance> buildUnnamed21() => [
      buildOSPolicyAssignmentReportOSPolicyCompliance(),
      buildOSPolicyAssignmentReportOSPolicyCompliance(),
    ];

void checkUnnamed21(
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
    o.osPolicyCompliances = buildUnnamed21();
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
    checkUnnamed21(o.osPolicyCompliances!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentReport--;
}

core.List<
        api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance>
    buildUnnamed22() => [
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(),
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance(),
        ];

void checkUnnamed22(
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
    o.osPolicyResourceCompliances = buildUnnamed22();
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
    checkUnnamed22(o.osPolicyResourceCompliances!);
  }
  buildCounterOSPolicyAssignmentReportOSPolicyCompliance--;
}

core.List<
        api.OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep>
    buildUnnamed23() => [
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(),
          buildOSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep(),
        ];

void checkUnnamed23(
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
    o.configSteps = buildUnnamed23();
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
    checkUnnamed23(o.configSteps!);
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

core.int buildCounterOSPolicyResourceExecResourceExec = 0;
api.OSPolicyResourceExecResourceExec buildOSPolicyResourceExecResourceExec() {
  final o = api.OSPolicyResourceExecResourceExec();
  buildCounterOSPolicyResourceExecResourceExec++;
  if (buildCounterOSPolicyResourceExecResourceExec < 3) {
    o.args = buildUnnamed24();
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
    checkUnnamed24(o.args!);
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

core.List<api.OSPolicyInventoryFilter> buildUnnamed25() => [
      buildOSPolicyInventoryFilter(),
      buildOSPolicyInventoryFilter(),
    ];

void checkUnnamed25(core.List<api.OSPolicyInventoryFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyInventoryFilter(o[0]);
  checkOSPolicyInventoryFilter(o[1]);
}

core.List<api.OSPolicyResource> buildUnnamed26() => [
      buildOSPolicyResource(),
      buildOSPolicyResource(),
    ];

void checkUnnamed26(core.List<api.OSPolicyResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSPolicyResource(o[0]);
  checkOSPolicyResource(o[1]);
}

core.int buildCounterOSPolicyResourceGroup = 0;
api.OSPolicyResourceGroup buildOSPolicyResourceGroup() {
  final o = api.OSPolicyResourceGroup();
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    o.inventoryFilters = buildUnnamed25();
    o.resources = buildUnnamed26();
  }
  buildCounterOSPolicyResourceGroup--;
  return o;
}

void checkOSPolicyResourceGroup(api.OSPolicyResourceGroup o) {
  buildCounterOSPolicyResourceGroup++;
  if (buildCounterOSPolicyResourceGroup < 3) {
    checkUnnamed25(o.inventoryFilters!);
    checkUnnamed26(o.resources!);
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

core.int buildCounterOSPolicyResourcePackageResourceMSI = 0;
api.OSPolicyResourcePackageResourceMSI
    buildOSPolicyResourcePackageResourceMSI() {
  final o = api.OSPolicyResourcePackageResourceMSI();
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    o.properties = buildUnnamed27();
    o.source = buildOSPolicyResourceFile();
  }
  buildCounterOSPolicyResourcePackageResourceMSI--;
  return o;
}

void checkOSPolicyResourcePackageResourceMSI(
    api.OSPolicyResourcePackageResourceMSI o) {
  buildCounterOSPolicyResourcePackageResourceMSI++;
  if (buildCounterOSPolicyResourcePackageResourceMSI < 3) {
    checkUnnamed27(o.properties!);
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

core.int buildCounterOSPolicyResourceRepositoryResourceAptRepository = 0;
api.OSPolicyResourceRepositoryResourceAptRepository
    buildOSPolicyResourceRepositoryResourceAptRepository() {
  final o = api.OSPolicyResourceRepositoryResourceAptRepository();
  buildCounterOSPolicyResourceRepositoryResourceAptRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceAptRepository < 3) {
    o.archiveType = 'foo';
    o.components = buildUnnamed28();
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
    checkUnnamed28(o.components!);
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

core.int buildCounterOSPolicyResourceRepositoryResourceYumRepository = 0;
api.OSPolicyResourceRepositoryResourceYumRepository
    buildOSPolicyResourceRepositoryResourceYumRepository() {
  final o = api.OSPolicyResourceRepositoryResourceYumRepository();
  buildCounterOSPolicyResourceRepositoryResourceYumRepository++;
  if (buildCounterOSPolicyResourceRepositoryResourceYumRepository < 3) {
    o.baseUrl = 'foo';
    o.displayName = 'foo';
    o.gpgKeys = buildUnnamed29();
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
    checkUnnamed29(o.gpgKeys!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceYumRepository--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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
    o.gpgKeys = buildUnnamed30();
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
    checkUnnamed30(o.gpgKeys!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyResourceRepositoryResourceZypperRepository--;
}

core.int buildCounterOneTimeSchedule = 0;
api.OneTimeSchedule buildOneTimeSchedule() {
  final o = api.OneTimeSchedule();
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    o.executeTime = 'foo';
  }
  buildCounterOneTimeSchedule--;
  return o;
}

void checkOneTimeSchedule(api.OneTimeSchedule o) {
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    unittest.expect(
      o.executeTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOneTimeSchedule--;
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
    o.metadata = buildUnnamed31();
    o.name = 'foo';
    o.response = buildUnnamed32();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed31(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPatchConfig = 0;
api.PatchConfig buildPatchConfig() {
  final o = api.PatchConfig();
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    o.apt = buildAptSettings();
    o.goo = buildGooSettings();
    o.postStep = buildExecStep();
    o.preStep = buildExecStep();
    o.rebootConfig = 'foo';
    o.windowsUpdate = buildWindowsUpdateSettings();
    o.yum = buildYumSettings();
    o.zypper = buildZypperSettings();
  }
  buildCounterPatchConfig--;
  return o;
}

void checkPatchConfig(api.PatchConfig o) {
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    checkAptSettings(o.apt!);
    checkGooSettings(o.goo!);
    checkExecStep(o.postStep!);
    checkExecStep(o.preStep!);
    unittest.expect(
      o.rebootConfig!,
      unittest.equals('foo'),
    );
    checkWindowsUpdateSettings(o.windowsUpdate!);
    checkYumSettings(o.yum!);
    checkZypperSettings(o.zypper!);
  }
  buildCounterPatchConfig--;
}

core.int buildCounterPatchDeployment = 0;
api.PatchDeployment buildPatchDeployment() {
  final o = api.PatchDeployment();
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.duration = 'foo';
    o.instanceFilter = buildPatchInstanceFilter();
    o.lastExecuteTime = 'foo';
    o.name = 'foo';
    o.oneTimeSchedule = buildOneTimeSchedule();
    o.patchConfig = buildPatchConfig();
    o.recurringSchedule = buildRecurringSchedule();
    o.rollout = buildPatchRollout();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPatchDeployment--;
  return o;
}

void checkPatchDeployment(api.PatchDeployment o) {
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkPatchInstanceFilter(o.instanceFilter!);
    unittest.expect(
      o.lastExecuteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOneTimeSchedule(o.oneTimeSchedule!);
    checkPatchConfig(o.patchConfig!);
    checkRecurringSchedule(o.recurringSchedule!);
    checkPatchRollout(o.rollout!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchDeployment--;
}

core.List<api.PatchInstanceFilterGroupLabel> buildUnnamed33() => [
      buildPatchInstanceFilterGroupLabel(),
      buildPatchInstanceFilterGroupLabel(),
    ];

void checkUnnamed33(core.List<api.PatchInstanceFilterGroupLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchInstanceFilterGroupLabel(o[0]);
  checkPatchInstanceFilterGroupLabel(o[1]);
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

core.int buildCounterPatchInstanceFilter = 0;
api.PatchInstanceFilter buildPatchInstanceFilter() {
  final o = api.PatchInstanceFilter();
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    o.all = true;
    o.groupLabels = buildUnnamed33();
    o.instanceNamePrefixes = buildUnnamed34();
    o.instances = buildUnnamed35();
    o.zones = buildUnnamed36();
  }
  buildCounterPatchInstanceFilter--;
  return o;
}

void checkPatchInstanceFilter(api.PatchInstanceFilter o) {
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed33(o.groupLabels!);
    checkUnnamed34(o.instanceNamePrefixes!);
    checkUnnamed35(o.instances!);
    checkUnnamed36(o.zones!);
  }
  buildCounterPatchInstanceFilter--;
}

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.int buildCounterPatchInstanceFilterGroupLabel = 0;
api.PatchInstanceFilterGroupLabel buildPatchInstanceFilterGroupLabel() {
  final o = api.PatchInstanceFilterGroupLabel();
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    o.labels = buildUnnamed37();
  }
  buildCounterPatchInstanceFilterGroupLabel--;
  return o;
}

void checkPatchInstanceFilterGroupLabel(api.PatchInstanceFilterGroupLabel o) {
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    checkUnnamed37(o.labels!);
  }
  buildCounterPatchInstanceFilterGroupLabel--;
}

core.int buildCounterPatchJob = 0;
api.PatchJob buildPatchJob() {
  final o = api.PatchJob();
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.dryRun = true;
    o.duration = 'foo';
    o.errorMessage = 'foo';
    o.instanceDetailsSummary = buildPatchJobInstanceDetailsSummary();
    o.instanceFilter = buildPatchInstanceFilter();
    o.name = 'foo';
    o.patchConfig = buildPatchConfig();
    o.patchDeployment = 'foo';
    o.percentComplete = 42.0;
    o.rollout = buildPatchRollout();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPatchJob--;
  return o;
}

void checkPatchJob(api.PatchJob o) {
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkPatchJobInstanceDetailsSummary(o.instanceDetailsSummary!);
    checkPatchInstanceFilter(o.instanceFilter!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPatchConfig(o.patchConfig!);
    unittest.expect(
      o.patchDeployment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentComplete!,
      unittest.equals(42.0),
    );
    checkPatchRollout(o.rollout!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchJob--;
}

core.int buildCounterPatchJobInstanceDetails = 0;
api.PatchJobInstanceDetails buildPatchJobInstanceDetails() {
  final o = api.PatchJobInstanceDetails();
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    o.attemptCount = 'foo';
    o.failureReason = 'foo';
    o.instanceSystemId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterPatchJobInstanceDetails--;
  return o;
}

void checkPatchJobInstanceDetails(api.PatchJobInstanceDetails o) {
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    unittest.expect(
      o.attemptCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceSystemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchJobInstanceDetails--;
}

core.int buildCounterPatchJobInstanceDetailsSummary = 0;
api.PatchJobInstanceDetailsSummary buildPatchJobInstanceDetailsSummary() {
  final o = api.PatchJobInstanceDetailsSummary();
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    o.ackedInstanceCount = 'foo';
    o.applyingPatchesInstanceCount = 'foo';
    o.downloadingPatchesInstanceCount = 'foo';
    o.failedInstanceCount = 'foo';
    o.inactiveInstanceCount = 'foo';
    o.noAgentDetectedInstanceCount = 'foo';
    o.notifiedInstanceCount = 'foo';
    o.pendingInstanceCount = 'foo';
    o.postPatchStepInstanceCount = 'foo';
    o.prePatchStepInstanceCount = 'foo';
    o.rebootingInstanceCount = 'foo';
    o.startedInstanceCount = 'foo';
    o.succeededInstanceCount = 'foo';
    o.succeededRebootRequiredInstanceCount = 'foo';
    o.timedOutInstanceCount = 'foo';
  }
  buildCounterPatchJobInstanceDetailsSummary--;
  return o;
}

void checkPatchJobInstanceDetailsSummary(api.PatchJobInstanceDetailsSummary o) {
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    unittest.expect(
      o.ackedInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applyingPatchesInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadingPatchesInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failedInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inactiveInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noAgentDetectedInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notifiedInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postPatchStepInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prePatchStepInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rebootingInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startedInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.succeededInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.succeededRebootRequiredInstanceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timedOutInstanceCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchJobInstanceDetailsSummary--;
}

core.int buildCounterPatchRollout = 0;
api.PatchRollout buildPatchRollout() {
  final o = api.PatchRollout();
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    o.disruptionBudget = buildFixedOrPercent();
    o.mode = 'foo';
  }
  buildCounterPatchRollout--;
  return o;
}

void checkPatchRollout(api.PatchRollout o) {
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    checkFixedOrPercent(o.disruptionBudget!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchRollout--;
}

core.int buildCounterPausePatchDeploymentRequest = 0;
api.PausePatchDeploymentRequest buildPausePatchDeploymentRequest() {
  final o = api.PausePatchDeploymentRequest();
  buildCounterPausePatchDeploymentRequest++;
  if (buildCounterPausePatchDeploymentRequest < 3) {}
  buildCounterPausePatchDeploymentRequest--;
  return o;
}

void checkPausePatchDeploymentRequest(api.PausePatchDeploymentRequest o) {
  buildCounterPausePatchDeploymentRequest++;
  if (buildCounterPausePatchDeploymentRequest < 3) {}
  buildCounterPausePatchDeploymentRequest--;
}

core.int buildCounterRecurringSchedule = 0;
api.RecurringSchedule buildRecurringSchedule() {
  final o = api.RecurringSchedule();
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    o.endTime = 'foo';
    o.frequency = 'foo';
    o.lastExecuteTime = 'foo';
    o.monthly = buildMonthlySchedule();
    o.nextExecuteTime = 'foo';
    o.startTime = 'foo';
    o.timeOfDay = buildTimeOfDay();
    o.timeZone = buildTimeZone();
    o.weekly = buildWeeklySchedule();
  }
  buildCounterRecurringSchedule--;
  return o;
}

void checkRecurringSchedule(api.RecurringSchedule o) {
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frequency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastExecuteTime!,
      unittest.equals('foo'),
    );
    checkMonthlySchedule(o.monthly!);
    unittest.expect(
      o.nextExecuteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.timeOfDay!);
    checkTimeZone(o.timeZone!);
    checkWeeklySchedule(o.weekly!);
  }
  buildCounterRecurringSchedule--;
}

core.int buildCounterResumePatchDeploymentRequest = 0;
api.ResumePatchDeploymentRequest buildResumePatchDeploymentRequest() {
  final o = api.ResumePatchDeploymentRequest();
  buildCounterResumePatchDeploymentRequest++;
  if (buildCounterResumePatchDeploymentRequest < 3) {}
  buildCounterResumePatchDeploymentRequest--;
  return o;
}

void checkResumePatchDeploymentRequest(api.ResumePatchDeploymentRequest o) {
  buildCounterResumePatchDeploymentRequest++;
  if (buildCounterResumePatchDeploymentRequest < 3) {}
  buildCounterResumePatchDeploymentRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed39() => [
      buildUnnamed38(),
      buildUnnamed38(),
    ];

void checkUnnamed39(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed38(o[0]);
  checkUnnamed38(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed39();
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
    checkUnnamed39(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeZone--;
}

core.List<api.VulnerabilityReportVulnerability> buildUnnamed40() => [
      buildVulnerabilityReportVulnerability(),
      buildVulnerabilityReportVulnerability(),
    ];

void checkUnnamed40(core.List<api.VulnerabilityReportVulnerability> o) {
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
    o.vulnerabilities = buildUnnamed40();
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
    checkUnnamed40(o.vulnerabilities!);
  }
  buildCounterVulnerabilityReport--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.List<api.VulnerabilityReportVulnerabilityItem> buildUnnamed43() => [
      buildVulnerabilityReportVulnerabilityItem(),
      buildVulnerabilityReportVulnerabilityItem(),
    ];

void checkUnnamed43(core.List<api.VulnerabilityReportVulnerabilityItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVulnerabilityReportVulnerabilityItem(o[0]);
  checkVulnerabilityReportVulnerabilityItem(o[1]);
}

core.int buildCounterVulnerabilityReportVulnerability = 0;
api.VulnerabilityReportVulnerability buildVulnerabilityReportVulnerability() {
  final o = api.VulnerabilityReportVulnerability();
  buildCounterVulnerabilityReportVulnerability++;
  if (buildCounterVulnerabilityReportVulnerability < 3) {
    o.availableInventoryItemIds = buildUnnamed41();
    o.createTime = 'foo';
    o.details = buildVulnerabilityReportVulnerabilityDetails();
    o.installedInventoryItemIds = buildUnnamed42();
    o.items = buildUnnamed43();
    o.updateTime = 'foo';
  }
  buildCounterVulnerabilityReportVulnerability--;
  return o;
}

void checkVulnerabilityReportVulnerability(
    api.VulnerabilityReportVulnerability o) {
  buildCounterVulnerabilityReportVulnerability++;
  if (buildCounterVulnerabilityReportVulnerability < 3) {
    checkUnnamed41(o.availableInventoryItemIds!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkVulnerabilityReportVulnerabilityDetails(o.details!);
    checkUnnamed42(o.installedInventoryItemIds!);
    checkUnnamed43(o.items!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerability--;
}

core.List<api.VulnerabilityReportVulnerabilityDetailsReference>
    buildUnnamed44() => [
          buildVulnerabilityReportVulnerabilityDetailsReference(),
          buildVulnerabilityReportVulnerabilityDetailsReference(),
        ];

void checkUnnamed44(
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
    o.references = buildUnnamed44();
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
    checkUnnamed44(o.references!);
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

core.int buildCounterVulnerabilityReportVulnerabilityItem = 0;
api.VulnerabilityReportVulnerabilityItem
    buildVulnerabilityReportVulnerabilityItem() {
  final o = api.VulnerabilityReportVulnerabilityItem();
  buildCounterVulnerabilityReportVulnerabilityItem++;
  if (buildCounterVulnerabilityReportVulnerabilityItem < 3) {
    o.availableInventoryItemId = 'foo';
    o.fixedCpeUri = 'foo';
    o.installedInventoryItemId = 'foo';
    o.upstreamFix = 'foo';
  }
  buildCounterVulnerabilityReportVulnerabilityItem--;
  return o;
}

void checkVulnerabilityReportVulnerabilityItem(
    api.VulnerabilityReportVulnerabilityItem o) {
  buildCounterVulnerabilityReportVulnerabilityItem++;
  if (buildCounterVulnerabilityReportVulnerabilityItem < 3) {
    unittest.expect(
      o.availableInventoryItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installedInventoryItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upstreamFix!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerabilityItem--;
}

core.int buildCounterWeekDayOfMonth = 0;
api.WeekDayOfMonth buildWeekDayOfMonth() {
  final o = api.WeekDayOfMonth();
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    o.dayOfWeek = 'foo';
    o.dayOffset = 42;
    o.weekOrdinal = 42;
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
      o.dayOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.weekOrdinal!,
      unittest.equals(42),
    );
  }
  buildCounterWeekDayOfMonth--;
}

core.int buildCounterWeeklySchedule = 0;
api.WeeklySchedule buildWeeklySchedule() {
  final o = api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.dayOfWeek = 'foo';
  }
  buildCounterWeeklySchedule--;
  return o;
}

void checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
  }
  buildCounterWeeklySchedule--;
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

core.int buildCounterWindowsUpdateSettings = 0;
api.WindowsUpdateSettings buildWindowsUpdateSettings() {
  final o = api.WindowsUpdateSettings();
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    o.classifications = buildUnnamed45();
    o.excludes = buildUnnamed46();
    o.exclusivePatches = buildUnnamed47();
  }
  buildCounterWindowsUpdateSettings--;
  return o;
}

void checkWindowsUpdateSettings(api.WindowsUpdateSettings o) {
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    checkUnnamed45(o.classifications!);
    checkUnnamed46(o.excludes!);
    checkUnnamed47(o.exclusivePatches!);
  }
  buildCounterWindowsUpdateSettings--;
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.int buildCounterYumSettings = 0;
api.YumSettings buildYumSettings() {
  final o = api.YumSettings();
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    o.excludes = buildUnnamed48();
    o.exclusivePackages = buildUnnamed49();
    o.minimal = true;
    o.security = true;
  }
  buildCounterYumSettings--;
  return o;
}

void checkYumSettings(api.YumSettings o) {
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    checkUnnamed48(o.excludes!);
    checkUnnamed49(o.exclusivePackages!);
    unittest.expect(o.minimal!, unittest.isTrue);
    unittest.expect(o.security!, unittest.isTrue);
  }
  buildCounterYumSettings--;
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.int buildCounterZypperSettings = 0;
api.ZypperSettings buildZypperSettings() {
  final o = api.ZypperSettings();
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    o.categories = buildUnnamed50();
    o.excludes = buildUnnamed51();
    o.exclusivePatches = buildUnnamed52();
    o.severities = buildUnnamed53();
    o.withOptional = true;
    o.withUpdate = true;
  }
  buildCounterZypperSettings--;
  return o;
}

void checkZypperSettings(api.ZypperSettings o) {
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    checkUnnamed50(o.categories!);
    checkUnnamed51(o.excludes!);
    checkUnnamed52(o.exclusivePatches!);
    checkUnnamed53(o.severities!);
    unittest.expect(o.withOptional!, unittest.isTrue);
    unittest.expect(o.withUpdate!, unittest.isTrue);
  }
  buildCounterZypperSettings--;
}

void main() {
  unittest.group('obj-schema-AptSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAptSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AptSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAptSettings(od);
    });
  });

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

  unittest.group('obj-schema-CancelPatchJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelPatchJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelPatchJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelPatchJobRequest(od);
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

  unittest.group('obj-schema-ExecStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ExecStep.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecStep(od);
    });
  });

  unittest.group('obj-schema-ExecStepConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecStepConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecStepConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecStepConfig(od);
    });
  });

  unittest.group('obj-schema-ExecutePatchJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutePatchJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutePatchJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutePatchJobRequest(od);
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

  unittest.group('obj-schema-GcsObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsObject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsObject(od);
    });
  });

  unittest.group('obj-schema-GooSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooSettings(od);
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

  unittest.group('obj-schema-ListPatchDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchDeploymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPatchDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPatchJobInstanceDetailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchJobInstanceDetailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchJobInstanceDetailsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPatchJobInstanceDetailsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPatchJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPatchJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPatchJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPatchJobsResponse(od);
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

  unittest.group('obj-schema-MonthlySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonthlySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonthlySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonthlySchedule(od);
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

  unittest.group('obj-schema-OSPolicyResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyResource(od);
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

  unittest.group('obj-schema-OneTimeSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOneTimeSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OneTimeSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOneTimeSchedule(od);
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

  unittest.group('obj-schema-PatchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchConfig(od);
    });
  });

  unittest.group('obj-schema-PatchDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchDeployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchDeployment(od);
    });
  });

  unittest.group('obj-schema-PatchInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchInstanceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-PatchInstanceFilterGroupLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchInstanceFilterGroupLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchInstanceFilterGroupLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchInstanceFilterGroupLabel(od);
    });
  });

  unittest.group('obj-schema-PatchJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PatchJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPatchJob(od);
    });
  });

  unittest.group('obj-schema-PatchJobInstanceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJobInstanceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchJobInstanceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchJobInstanceDetails(od);
    });
  });

  unittest.group('obj-schema-PatchJobInstanceDetailsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchJobInstanceDetailsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchJobInstanceDetailsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchJobInstanceDetailsSummary(od);
    });
  });

  unittest.group('obj-schema-PatchRollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchRollout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchRollout(od);
    });
  });

  unittest.group('obj-schema-PausePatchDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPausePatchDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PausePatchDeploymentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPausePatchDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-RecurringSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecurringSchedule(od);
    });
  });

  unittest.group('obj-schema-ResumePatchDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumePatchDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumePatchDeploymentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumePatchDeploymentRequest(od);
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

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeZone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeZone(od);
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

  unittest.group('obj-schema-VulnerabilityReportVulnerabilityItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityReportVulnerabilityItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityReportVulnerabilityItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityReportVulnerabilityItem(od);
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

  unittest.group('obj-schema-WeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeeklySchedule(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdateSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdateSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdateSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsUpdateSettings(od);
    });
  });

  unittest.group('obj-schema-YumSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYumSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YumSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYumSettings(od);
    });
  });

  unittest.group('obj-schema-ZypperSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZypperSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZypperSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZypperSettings(od);
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
  });

  unittest.group('resource-ProjectsPatchDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPatchDeployment();
      final arg_parent = 'foo';
      final arg_patchDeploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PatchDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPatchDeployment(obj);

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
          queryMap['patchDeploymentId']!.first,
          unittest.equals(arg_patchDeploymentId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPatchDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          patchDeploymentId: arg_patchDeploymentId, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
        final resp = convert.json.encode(buildPatchDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
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
        final resp = convert.json.encode(buildListPatchDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPatchDeploymentsResponse(
          response as api.ListPatchDeploymentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPatchDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PatchDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPatchDeployment(obj);

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
        final resp = convert.json.encode(buildPatchDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildPausePatchDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PausePatchDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPausePatchDeploymentRequest(obj);

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
        final resp = convert.json.encode(buildPatchDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.pause(arg_request, arg_name, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchDeployments;
      final arg_request = buildResumePatchDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumePatchDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumePatchDeploymentRequest(obj);

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
        final resp = convert.json.encode(buildPatchDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkPatchDeployment(response as api.PatchDeployment);
    });
  });

  unittest.group('resource-ProjectsPatchJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
      final arg_request = buildCancelPatchJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelPatchJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelPatchJobRequest(obj);

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
        final resp = convert.json.encode(buildPatchJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
      final arg_request = buildExecutePatchJobRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecutePatchJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExecutePatchJobRequest(obj);

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
        final resp = convert.json.encode(buildPatchJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.execute(arg_request, arg_parent, $fields: arg_$fields);
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
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
        final resp = convert.json.encode(buildPatchJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPatchJob(response as api.PatchJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs;
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
        final resp = convert.json.encode(buildListPatchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPatchJobsResponse(response as api.ListPatchJobsResponse);
    });
  });

  unittest.group('resource-ProjectsPatchJobsInstanceDetailsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OSConfigApi(mock).projects.patchJobs.instanceDetails;
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
        final resp =
            convert.json.encode(buildListPatchJobInstanceDetailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPatchJobInstanceDetailsResponse(
          response as api.ListPatchJobInstanceDetailsResponse);
    });
  });
}
