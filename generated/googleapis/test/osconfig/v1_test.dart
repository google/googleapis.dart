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

core.List<core.String> buildUnnamed3088() => [
      'foo',
      'foo',
    ];

void checkUnnamed3088(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3089() => [
      'foo',
      'foo',
    ];

void checkUnnamed3089(core.List<core.String> o) {
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
    o.excludes = buildUnnamed3088();
    o.exclusivePackages = buildUnnamed3089();
    o.type = 'foo';
  }
  buildCounterAptSettings--;
  return o;
}

void checkAptSettings(api.AptSettings o) {
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    checkUnnamed3088(o.excludes!);
    checkUnnamed3089(o.exclusivePackages!);
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

core.List<core.int> buildUnnamed3090() => [
      42,
      42,
    ];

void checkUnnamed3090(core.List<core.int> o) {
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
    o.allowedSuccessCodes = buildUnnamed3090();
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
    checkUnnamed3090(o.allowedSuccessCodes!);
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

core.Map<core.String, api.InventoryItem> buildUnnamed3091() => {
      'x': buildInventoryItem(),
      'y': buildInventoryItem(),
    };

void checkUnnamed3091(core.Map<core.String, api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o['x']!);
  checkInventoryItem(o['y']!);
}

core.int buildCounterInventory = 0;
api.Inventory buildInventory() {
  final o = api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed3091();
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
    checkUnnamed3091(o.items!);
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
    buildUnnamed3092() => [
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
          buildInventoryWindowsUpdatePackageWindowsUpdateCategory(),
        ];

void checkUnnamed3092(
    core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[0]);
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[1]);
}

core.List<core.String> buildUnnamed3093() => [
      'foo',
      'foo',
    ];

void checkUnnamed3093(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3094() => [
      'foo',
      'foo',
    ];

void checkUnnamed3094(core.List<core.String> o) {
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
    o.categories = buildUnnamed3092();
    o.description = 'foo';
    o.kbArticleIds = buildUnnamed3093();
    o.lastDeploymentChangeTime = 'foo';
    o.moreInfoUrls = buildUnnamed3094();
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
    checkUnnamed3092(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed3093(o.kbArticleIds!);
    unittest.expect(
      o.lastDeploymentChangeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3094(o.moreInfoUrls!);
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

core.List<api.Inventory> buildUnnamed3095() => [
      buildInventory(),
      buildInventory(),
    ];

void checkUnnamed3095(core.List<api.Inventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventory(o[0]);
  checkInventory(o[1]);
}

core.int buildCounterListInventoriesResponse = 0;
api.ListInventoriesResponse buildListInventoriesResponse() {
  final o = api.ListInventoriesResponse();
  buildCounterListInventoriesResponse++;
  if (buildCounterListInventoriesResponse < 3) {
    o.inventories = buildUnnamed3095();
    o.nextPageToken = 'foo';
  }
  buildCounterListInventoriesResponse--;
  return o;
}

void checkListInventoriesResponse(api.ListInventoriesResponse o) {
  buildCounterListInventoriesResponse++;
  if (buildCounterListInventoriesResponse < 3) {
    checkUnnamed3095(o.inventories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInventoriesResponse--;
}

core.List<api.PatchDeployment> buildUnnamed3096() => [
      buildPatchDeployment(),
      buildPatchDeployment(),
    ];

void checkUnnamed3096(core.List<api.PatchDeployment> o) {
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
    o.patchDeployments = buildUnnamed3096();
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
    checkUnnamed3096(o.patchDeployments!);
  }
  buildCounterListPatchDeploymentsResponse--;
}

core.List<api.PatchJobInstanceDetails> buildUnnamed3097() => [
      buildPatchJobInstanceDetails(),
      buildPatchJobInstanceDetails(),
    ];

void checkUnnamed3097(core.List<api.PatchJobInstanceDetails> o) {
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
    o.patchJobInstanceDetails = buildUnnamed3097();
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
    checkUnnamed3097(o.patchJobInstanceDetails!);
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
}

core.List<api.PatchJob> buildUnnamed3098() => [
      buildPatchJob(),
      buildPatchJob(),
    ];

void checkUnnamed3098(core.List<api.PatchJob> o) {
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
    o.patchJobs = buildUnnamed3098();
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
    checkUnnamed3098(o.patchJobs!);
  }
  buildCounterListPatchJobsResponse--;
}

core.List<api.VulnerabilityReport> buildUnnamed3099() => [
      buildVulnerabilityReport(),
      buildVulnerabilityReport(),
    ];

void checkUnnamed3099(core.List<api.VulnerabilityReport> o) {
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
    o.vulnerabilityReports = buildUnnamed3099();
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
    checkUnnamed3099(o.vulnerabilityReports!);
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

core.int buildCounterOSPolicyAssignmentOperationMetadata = 0;
api.OSPolicyAssignmentOperationMetadata
    buildOSPolicyAssignmentOperationMetadata() {
  final o = api.OSPolicyAssignmentOperationMetadata();
  buildCounterOSPolicyAssignmentOperationMetadata++;
  if (buildCounterOSPolicyAssignmentOperationMetadata < 3) {
    o.apiMethod = 'foo';
    o.osPolicyAssignment = 'foo';
    o.rolloutStartTime = 'foo';
    o.rolloutState = 'foo';
    o.rolloutUpdateTime = 'foo';
  }
  buildCounterOSPolicyAssignmentOperationMetadata--;
  return o;
}

void checkOSPolicyAssignmentOperationMetadata(
    api.OSPolicyAssignmentOperationMetadata o) {
  buildCounterOSPolicyAssignmentOperationMetadata++;
  if (buildCounterOSPolicyAssignmentOperationMetadata < 3) {
    unittest.expect(
      o.apiMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osPolicyAssignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutUpdateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOSPolicyAssignmentOperationMetadata--;
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
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchDeployment--;
}

core.List<api.PatchInstanceFilterGroupLabel> buildUnnamed3100() => [
      buildPatchInstanceFilterGroupLabel(),
      buildPatchInstanceFilterGroupLabel(),
    ];

void checkUnnamed3100(core.List<api.PatchInstanceFilterGroupLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchInstanceFilterGroupLabel(o[0]);
  checkPatchInstanceFilterGroupLabel(o[1]);
}

core.List<core.String> buildUnnamed3101() => [
      'foo',
      'foo',
    ];

void checkUnnamed3101(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3102() => [
      'foo',
      'foo',
    ];

void checkUnnamed3102(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3103() => [
      'foo',
      'foo',
    ];

void checkUnnamed3103(core.List<core.String> o) {
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
    o.groupLabels = buildUnnamed3100();
    o.instanceNamePrefixes = buildUnnamed3101();
    o.instances = buildUnnamed3102();
    o.zones = buildUnnamed3103();
  }
  buildCounterPatchInstanceFilter--;
  return o;
}

void checkPatchInstanceFilter(api.PatchInstanceFilter o) {
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    unittest.expect(o.all!, unittest.isTrue);
    checkUnnamed3100(o.groupLabels!);
    checkUnnamed3101(o.instanceNamePrefixes!);
    checkUnnamed3102(o.instances!);
    checkUnnamed3103(o.zones!);
  }
  buildCounterPatchInstanceFilter--;
}

core.Map<core.String, core.String> buildUnnamed3104() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3104(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3104();
  }
  buildCounterPatchInstanceFilterGroupLabel--;
  return o;
}

void checkPatchInstanceFilterGroupLabel(api.PatchInstanceFilterGroupLabel o) {
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    checkUnnamed3104(o.labels!);
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

core.List<api.VulnerabilityReportVulnerability> buildUnnamed3105() => [
      buildVulnerabilityReportVulnerability(),
      buildVulnerabilityReportVulnerability(),
    ];

void checkUnnamed3105(core.List<api.VulnerabilityReportVulnerability> o) {
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
    o.vulnerabilities = buildUnnamed3105();
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
    checkUnnamed3105(o.vulnerabilities!);
  }
  buildCounterVulnerabilityReport--;
}

core.List<core.String> buildUnnamed3106() => [
      'foo',
      'foo',
    ];

void checkUnnamed3106(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3107() => [
      'foo',
      'foo',
    ];

void checkUnnamed3107(core.List<core.String> o) {
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
    o.availableInventoryItemIds = buildUnnamed3106();
    o.createTime = 'foo';
    o.details = buildVulnerabilityReportVulnerabilityDetails();
    o.installedInventoryItemIds = buildUnnamed3107();
    o.updateTime = 'foo';
  }
  buildCounterVulnerabilityReportVulnerability--;
  return o;
}

void checkVulnerabilityReportVulnerability(
    api.VulnerabilityReportVulnerability o) {
  buildCounterVulnerabilityReportVulnerability++;
  if (buildCounterVulnerabilityReportVulnerability < 3) {
    checkUnnamed3106(o.availableInventoryItemIds!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkVulnerabilityReportVulnerabilityDetails(o.details!);
    checkUnnamed3107(o.installedInventoryItemIds!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityReportVulnerability--;
}

core.List<api.VulnerabilityReportVulnerabilityDetailsReference>
    buildUnnamed3108() => [
          buildVulnerabilityReportVulnerabilityDetailsReference(),
          buildVulnerabilityReportVulnerabilityDetailsReference(),
        ];

void checkUnnamed3108(
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
    o.references = buildUnnamed3108();
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
    checkUnnamed3108(o.references!);
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

core.int buildCounterWeekDayOfMonth = 0;
api.WeekDayOfMonth buildWeekDayOfMonth() {
  final o = api.WeekDayOfMonth();
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    o.dayOfWeek = 'foo';
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

core.List<core.String> buildUnnamed3109() => [
      'foo',
      'foo',
    ];

void checkUnnamed3109(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3110() => [
      'foo',
      'foo',
    ];

void checkUnnamed3110(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3111() => [
      'foo',
      'foo',
    ];

void checkUnnamed3111(core.List<core.String> o) {
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
    o.classifications = buildUnnamed3109();
    o.excludes = buildUnnamed3110();
    o.exclusivePatches = buildUnnamed3111();
  }
  buildCounterWindowsUpdateSettings--;
  return o;
}

void checkWindowsUpdateSettings(api.WindowsUpdateSettings o) {
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    checkUnnamed3109(o.classifications!);
    checkUnnamed3110(o.excludes!);
    checkUnnamed3111(o.exclusivePatches!);
  }
  buildCounterWindowsUpdateSettings--;
}

core.List<core.String> buildUnnamed3112() => [
      'foo',
      'foo',
    ];

void checkUnnamed3112(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3113() => [
      'foo',
      'foo',
    ];

void checkUnnamed3113(core.List<core.String> o) {
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
    o.excludes = buildUnnamed3112();
    o.exclusivePackages = buildUnnamed3113();
    o.minimal = true;
    o.security = true;
  }
  buildCounterYumSettings--;
  return o;
}

void checkYumSettings(api.YumSettings o) {
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    checkUnnamed3112(o.excludes!);
    checkUnnamed3113(o.exclusivePackages!);
    unittest.expect(o.minimal!, unittest.isTrue);
    unittest.expect(o.security!, unittest.isTrue);
  }
  buildCounterYumSettings--;
}

core.List<core.String> buildUnnamed3114() => [
      'foo',
      'foo',
    ];

void checkUnnamed3114(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3115() => [
      'foo',
      'foo',
    ];

void checkUnnamed3115(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3116() => [
      'foo',
      'foo',
    ];

void checkUnnamed3116(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3117() => [
      'foo',
      'foo',
    ];

void checkUnnamed3117(core.List<core.String> o) {
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
    o.categories = buildUnnamed3114();
    o.excludes = buildUnnamed3115();
    o.exclusivePatches = buildUnnamed3116();
    o.severities = buildUnnamed3117();
    o.withOptional = true;
    o.withUpdate = true;
  }
  buildCounterZypperSettings--;
  return o;
}

void checkZypperSettings(api.ZypperSettings o) {
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    checkUnnamed3114(o.categories!);
    checkUnnamed3115(o.excludes!);
    checkUnnamed3116(o.exclusivePatches!);
    checkUnnamed3117(o.severities!);
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

  unittest.group('obj-schema-CancelPatchJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelPatchJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelPatchJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelPatchJobRequest(od);
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

  unittest.group('obj-schema-OSPolicyAssignmentOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSPolicyAssignmentOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OSPolicyAssignmentOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOSPolicyAssignmentOperationMetadata(od);
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

  unittest.group('obj-schema-RecurringSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecurringSchedule(od);
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
