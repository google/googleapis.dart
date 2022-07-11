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

import 'package:googleapis/drive/v2.dart' as api;
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

core.int buildCounterAboutAdditionalRoleInfoRoleSets = 0;
api.AboutAdditionalRoleInfoRoleSets buildAboutAdditionalRoleInfoRoleSets() {
  final o = api.AboutAdditionalRoleInfoRoleSets();
  buildCounterAboutAdditionalRoleInfoRoleSets++;
  if (buildCounterAboutAdditionalRoleInfoRoleSets < 3) {
    o.additionalRoles = buildUnnamed0();
    o.primaryRole = 'foo';
  }
  buildCounterAboutAdditionalRoleInfoRoleSets--;
  return o;
}

void checkAboutAdditionalRoleInfoRoleSets(
    api.AboutAdditionalRoleInfoRoleSets o) {
  buildCounterAboutAdditionalRoleInfoRoleSets++;
  if (buildCounterAboutAdditionalRoleInfoRoleSets < 3) {
    checkUnnamed0(o.additionalRoles!);
    unittest.expect(
      o.primaryRole!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutAdditionalRoleInfoRoleSets--;
}

core.List<api.AboutAdditionalRoleInfoRoleSets> buildUnnamed1() => [
      buildAboutAdditionalRoleInfoRoleSets(),
      buildAboutAdditionalRoleInfoRoleSets(),
    ];

void checkUnnamed1(core.List<api.AboutAdditionalRoleInfoRoleSets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutAdditionalRoleInfoRoleSets(o[0]);
  checkAboutAdditionalRoleInfoRoleSets(o[1]);
}

core.int buildCounterAboutAdditionalRoleInfo = 0;
api.AboutAdditionalRoleInfo buildAboutAdditionalRoleInfo() {
  final o = api.AboutAdditionalRoleInfo();
  buildCounterAboutAdditionalRoleInfo++;
  if (buildCounterAboutAdditionalRoleInfo < 3) {
    o.roleSets = buildUnnamed1();
    o.type = 'foo';
  }
  buildCounterAboutAdditionalRoleInfo--;
  return o;
}

void checkAboutAdditionalRoleInfo(api.AboutAdditionalRoleInfo o) {
  buildCounterAboutAdditionalRoleInfo++;
  if (buildCounterAboutAdditionalRoleInfo < 3) {
    checkUnnamed1(o.roleSets!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutAdditionalRoleInfo--;
}

core.List<api.AboutAdditionalRoleInfo> buildUnnamed2() => [
      buildAboutAdditionalRoleInfo(),
      buildAboutAdditionalRoleInfo(),
    ];

void checkUnnamed2(core.List<api.AboutAdditionalRoleInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutAdditionalRoleInfo(o[0]);
  checkAboutAdditionalRoleInfo(o[1]);
}

core.int buildCounterAboutDriveThemes = 0;
api.AboutDriveThemes buildAboutDriveThemes() {
  final o = api.AboutDriveThemes();
  buildCounterAboutDriveThemes++;
  if (buildCounterAboutDriveThemes < 3) {
    o.backgroundImageLink = 'foo';
    o.colorRgb = 'foo';
    o.id = 'foo';
  }
  buildCounterAboutDriveThemes--;
  return o;
}

void checkAboutDriveThemes(api.AboutDriveThemes o) {
  buildCounterAboutDriveThemes++;
  if (buildCounterAboutDriveThemes < 3) {
    unittest.expect(
      o.backgroundImageLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.colorRgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutDriveThemes--;
}

core.List<api.AboutDriveThemes> buildUnnamed3() => [
      buildAboutDriveThemes(),
      buildAboutDriveThemes(),
    ];

void checkUnnamed3(core.List<api.AboutDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutDriveThemes(o[0]);
  checkAboutDriveThemes(o[1]);
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

core.int buildCounterAboutExportFormats = 0;
api.AboutExportFormats buildAboutExportFormats() {
  final o = api.AboutExportFormats();
  buildCounterAboutExportFormats++;
  if (buildCounterAboutExportFormats < 3) {
    o.source = 'foo';
    o.targets = buildUnnamed4();
  }
  buildCounterAboutExportFormats--;
  return o;
}

void checkAboutExportFormats(api.AboutExportFormats o) {
  buildCounterAboutExportFormats++;
  if (buildCounterAboutExportFormats < 3) {
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.targets!);
  }
  buildCounterAboutExportFormats--;
}

core.List<api.AboutExportFormats> buildUnnamed5() => [
      buildAboutExportFormats(),
      buildAboutExportFormats(),
    ];

void checkUnnamed5(core.List<api.AboutExportFormats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutExportFormats(o[0]);
  checkAboutExportFormats(o[1]);
}

core.int buildCounterAboutFeatures = 0;
api.AboutFeatures buildAboutFeatures() {
  final o = api.AboutFeatures();
  buildCounterAboutFeatures++;
  if (buildCounterAboutFeatures < 3) {
    o.featureName = 'foo';
    o.featureRate = 42.0;
  }
  buildCounterAboutFeatures--;
  return o;
}

void checkAboutFeatures(api.AboutFeatures o) {
  buildCounterAboutFeatures++;
  if (buildCounterAboutFeatures < 3) {
    unittest.expect(
      o.featureName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.featureRate!,
      unittest.equals(42.0),
    );
  }
  buildCounterAboutFeatures--;
}

core.List<api.AboutFeatures> buildUnnamed6() => [
      buildAboutFeatures(),
      buildAboutFeatures(),
    ];

void checkUnnamed6(core.List<api.AboutFeatures> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutFeatures(o[0]);
  checkAboutFeatures(o[1]);
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

core.int buildCounterAboutImportFormats = 0;
api.AboutImportFormats buildAboutImportFormats() {
  final o = api.AboutImportFormats();
  buildCounterAboutImportFormats++;
  if (buildCounterAboutImportFormats < 3) {
    o.source = 'foo';
    o.targets = buildUnnamed8();
  }
  buildCounterAboutImportFormats--;
  return o;
}

void checkAboutImportFormats(api.AboutImportFormats o) {
  buildCounterAboutImportFormats++;
  if (buildCounterAboutImportFormats < 3) {
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.targets!);
  }
  buildCounterAboutImportFormats--;
}

core.List<api.AboutImportFormats> buildUnnamed9() => [
      buildAboutImportFormats(),
      buildAboutImportFormats(),
    ];

void checkUnnamed9(core.List<api.AboutImportFormats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutImportFormats(o[0]);
  checkAboutImportFormats(o[1]);
}

core.int buildCounterAboutMaxUploadSizes = 0;
api.AboutMaxUploadSizes buildAboutMaxUploadSizes() {
  final o = api.AboutMaxUploadSizes();
  buildCounterAboutMaxUploadSizes++;
  if (buildCounterAboutMaxUploadSizes < 3) {
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterAboutMaxUploadSizes--;
  return o;
}

void checkAboutMaxUploadSizes(api.AboutMaxUploadSizes o) {
  buildCounterAboutMaxUploadSizes++;
  if (buildCounterAboutMaxUploadSizes < 3) {
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutMaxUploadSizes--;
}

core.List<api.AboutMaxUploadSizes> buildUnnamed10() => [
      buildAboutMaxUploadSizes(),
      buildAboutMaxUploadSizes(),
    ];

void checkUnnamed10(core.List<api.AboutMaxUploadSizes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutMaxUploadSizes(o[0]);
  checkAboutMaxUploadSizes(o[1]);
}

core.int buildCounterAboutQuotaBytesByService = 0;
api.AboutQuotaBytesByService buildAboutQuotaBytesByService() {
  final o = api.AboutQuotaBytesByService();
  buildCounterAboutQuotaBytesByService++;
  if (buildCounterAboutQuotaBytesByService < 3) {
    o.bytesUsed = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterAboutQuotaBytesByService--;
  return o;
}

void checkAboutQuotaBytesByService(api.AboutQuotaBytesByService o) {
  buildCounterAboutQuotaBytesByService++;
  if (buildCounterAboutQuotaBytesByService < 3) {
    unittest.expect(
      o.bytesUsed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutQuotaBytesByService--;
}

core.List<api.AboutQuotaBytesByService> buildUnnamed11() => [
      buildAboutQuotaBytesByService(),
      buildAboutQuotaBytesByService(),
    ];

void checkUnnamed11(core.List<api.AboutQuotaBytesByService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutQuotaBytesByService(o[0]);
  checkAboutQuotaBytesByService(o[1]);
}

core.int buildCounterAboutTeamDriveThemes = 0;
api.AboutTeamDriveThemes buildAboutTeamDriveThemes() {
  final o = api.AboutTeamDriveThemes();
  buildCounterAboutTeamDriveThemes++;
  if (buildCounterAboutTeamDriveThemes < 3) {
    o.backgroundImageLink = 'foo';
    o.colorRgb = 'foo';
    o.id = 'foo';
  }
  buildCounterAboutTeamDriveThemes--;
  return o;
}

void checkAboutTeamDriveThemes(api.AboutTeamDriveThemes o) {
  buildCounterAboutTeamDriveThemes++;
  if (buildCounterAboutTeamDriveThemes < 3) {
    unittest.expect(
      o.backgroundImageLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.colorRgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutTeamDriveThemes--;
}

core.List<api.AboutTeamDriveThemes> buildUnnamed12() => [
      buildAboutTeamDriveThemes(),
      buildAboutTeamDriveThemes(),
    ];

void checkUnnamed12(core.List<api.AboutTeamDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutTeamDriveThemes(o[0]);
  checkAboutTeamDriveThemes(o[1]);
}

core.int buildCounterAbout = 0;
api.About buildAbout() {
  final o = api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.additionalRoleInfo = buildUnnamed2();
    o.canCreateDrives = true;
    o.canCreateTeamDrives = true;
    o.domainSharingPolicy = 'foo';
    o.driveThemes = buildUnnamed3();
    o.etag = 'foo';
    o.exportFormats = buildUnnamed5();
    o.features = buildUnnamed6();
    o.folderColorPalette = buildUnnamed7();
    o.importFormats = buildUnnamed9();
    o.isCurrentAppInstalled = true;
    o.kind = 'foo';
    o.languageCode = 'foo';
    o.largestChangeId = 'foo';
    o.maxUploadSizes = buildUnnamed10();
    o.name = 'foo';
    o.permissionId = 'foo';
    o.quotaBytesByService = buildUnnamed11();
    o.quotaBytesTotal = 'foo';
    o.quotaBytesUsed = 'foo';
    o.quotaBytesUsedAggregate = 'foo';
    o.quotaBytesUsedInTrash = 'foo';
    o.quotaType = 'foo';
    o.remainingChangeIds = 'foo';
    o.rootFolderId = 'foo';
    o.selfLink = 'foo';
    o.teamDriveThemes = buildUnnamed12();
    o.user = buildUser();
  }
  buildCounterAbout--;
  return o;
}

void checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    checkUnnamed2(o.additionalRoleInfo!);
    unittest.expect(o.canCreateDrives!, unittest.isTrue);
    unittest.expect(o.canCreateTeamDrives!, unittest.isTrue);
    unittest.expect(
      o.domainSharingPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.driveThemes!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.exportFormats!);
    checkUnnamed6(o.features!);
    checkUnnamed7(o.folderColorPalette!);
    checkUnnamed9(o.importFormats!);
    unittest.expect(o.isCurrentAppInstalled!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.largestChangeId!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.maxUploadSizes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.quotaBytesByService!);
    unittest.expect(
      o.quotaBytesTotal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaBytesUsed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaBytesUsedAggregate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaBytesUsedInTrash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingChangeIds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootFolderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.teamDriveThemes!);
    checkUser(o.user!);
  }
  buildCounterAbout--;
}

core.int buildCounterAppIcons = 0;
api.AppIcons buildAppIcons() {
  final o = api.AppIcons();
  buildCounterAppIcons++;
  if (buildCounterAppIcons < 3) {
    o.category = 'foo';
    o.iconUrl = 'foo';
    o.size = 42;
  }
  buildCounterAppIcons--;
  return o;
}

void checkAppIcons(api.AppIcons o) {
  buildCounterAppIcons++;
  if (buildCounterAppIcons < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals(42),
    );
  }
  buildCounterAppIcons--;
}

core.List<api.AppIcons> buildUnnamed13() => [
      buildAppIcons(),
      buildAppIcons(),
    ];

void checkUnnamed13(core.List<api.AppIcons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppIcons(o[0]);
  checkAppIcons(o[1]);
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

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterApp = 0;
api.App buildApp() {
  final o = api.App();
  buildCounterApp++;
  if (buildCounterApp < 3) {
    o.authorized = true;
    o.createInFolderTemplate = 'foo';
    o.createUrl = 'foo';
    o.hasDriveWideScope = true;
    o.icons = buildUnnamed13();
    o.id = 'foo';
    o.installed = true;
    o.kind = 'foo';
    o.longDescription = 'foo';
    o.name = 'foo';
    o.objectType = 'foo';
    o.openUrlTemplate = 'foo';
    o.primaryFileExtensions = buildUnnamed14();
    o.primaryMimeTypes = buildUnnamed15();
    o.productId = 'foo';
    o.productUrl = 'foo';
    o.secondaryFileExtensions = buildUnnamed16();
    o.secondaryMimeTypes = buildUnnamed17();
    o.shortDescription = 'foo';
    o.supportsCreate = true;
    o.supportsImport = true;
    o.supportsMultiOpen = true;
    o.supportsOfflineCreate = true;
    o.useByDefault = true;
  }
  buildCounterApp--;
  return o;
}

void checkApp(api.App o) {
  buildCounterApp++;
  if (buildCounterApp < 3) {
    unittest.expect(o.authorized!, unittest.isTrue);
    unittest.expect(
      o.createInFolderTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasDriveWideScope!, unittest.isTrue);
    checkUnnamed13(o.icons!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.installed!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.openUrlTemplate!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.primaryFileExtensions!);
    checkUnnamed15(o.primaryMimeTypes!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.secondaryFileExtensions!);
    checkUnnamed17(o.secondaryMimeTypes!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsCreate!, unittest.isTrue);
    unittest.expect(o.supportsImport!, unittest.isTrue);
    unittest.expect(o.supportsMultiOpen!, unittest.isTrue);
    unittest.expect(o.supportsOfflineCreate!, unittest.isTrue);
    unittest.expect(o.useByDefault!, unittest.isTrue);
  }
  buildCounterApp--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.List<api.App> buildUnnamed19() => [
      buildApp(),
      buildApp(),
    ];

void checkUnnamed19(core.List<api.App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApp(o[0]);
  checkApp(o[1]);
}

core.int buildCounterAppList = 0;
api.AppList buildAppList() {
  final o = api.AppList();
  buildCounterAppList++;
  if (buildCounterAppList < 3) {
    o.defaultAppIds = buildUnnamed18();
    o.etag = 'foo';
    o.items = buildUnnamed19();
    o.kind = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterAppList--;
  return o;
}

void checkAppList(api.AppList o) {
  buildCounterAppList++;
  if (buildCounterAppList < 3) {
    checkUnnamed18(o.defaultAppIds!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppList--;
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  final o = api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.changeType = 'foo';
    o.deleted = true;
    o.drive = buildDrive();
    o.driveId = 'foo';
    o.file = buildFile();
    o.fileId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.modificationDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.selfLink = 'foo';
    o.teamDrive = buildTeamDrive();
    o.teamDriveId = 'foo';
    o.type = 'foo';
  }
  buildCounterChange--;
  return o;
}

void checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    unittest.expect(
      o.changeType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    checkDrive(o.drive!);
    unittest.expect(
      o.driveId!,
      unittest.equals('foo'),
    );
    checkFile(o.file!);
    unittest.expect(
      o.fileId!,
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
      o.modificationDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkTeamDrive(o.teamDrive!);
    unittest.expect(
      o.teamDriveId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChange--;
}

core.List<api.Change> buildUnnamed20() => [
      buildChange(),
      buildChange(),
    ];

void checkUnnamed20(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangeList = 0;
api.ChangeList buildChangeList() {
  final o = api.ChangeList();
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed20();
    o.kind = 'foo';
    o.largestChangeId = 'foo';
    o.newStartPageToken = 'foo';
    o.nextLink = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterChangeList--;
  return o;
}

void checkChangeList(api.ChangeList o) {
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.largestChangeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newStartPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeList--;
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

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed21();
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
    checkUnnamed21(o.params!);
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

core.List<api.ChildReference> buildUnnamed22() => [
      buildChildReference(),
      buildChildReference(),
    ];

void checkUnnamed22(core.List<api.ChildReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildReference(o[0]);
  checkChildReference(o[1]);
}

core.int buildCounterChildList = 0;
api.ChildList buildChildList() {
  final o = api.ChildList();
  buildCounterChildList++;
  if (buildCounterChildList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed22();
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterChildList--;
  return o;
}

void checkChildList(api.ChildList o) {
  buildCounterChildList++;
  if (buildCounterChildList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterChildList--;
}

core.int buildCounterChildReference = 0;
api.ChildReference buildChildReference() {
  final o = api.ChildReference();
  buildCounterChildReference++;
  if (buildCounterChildReference < 3) {
    o.childLink = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterChildReference--;
  return o;
}

void checkChildReference(api.ChildReference o) {
  buildCounterChildReference++;
  if (buildCounterChildReference < 3) {
    unittest.expect(
      o.childLink!,
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
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterChildReference--;
}

core.int buildCounterCommentContext = 0;
api.CommentContext buildCommentContext() {
  final o = api.CommentContext();
  buildCounterCommentContext++;
  if (buildCounterCommentContext < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterCommentContext--;
  return o;
}

void checkCommentContext(api.CommentContext o) {
  buildCounterCommentContext++;
  if (buildCounterCommentContext < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentContext--;
}

core.List<api.CommentReply> buildUnnamed23() => [
      buildCommentReply(),
      buildCommentReply(),
    ];

void checkUnnamed23(core.List<api.CommentReply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentReply(o[0]);
  checkCommentReply(o[1]);
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.anchor = 'foo';
    o.author = buildUser();
    o.commentId = 'foo';
    o.content = 'foo';
    o.context = buildCommentContext();
    o.createdDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.deleted = true;
    o.fileId = 'foo';
    o.fileTitle = 'foo';
    o.htmlContent = 'foo';
    o.kind = 'foo';
    o.modifiedDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.replies = buildUnnamed23();
    o.selfLink = 'foo';
    o.status = 'foo';
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(
      o.anchor!,
      unittest.equals('foo'),
    );
    checkUser(o.author!);
    unittest.expect(
      o.commentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkCommentContext(o.context!);
    unittest.expect(
      o.createdDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.fileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed23(o.replies!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed24() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed24(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
api.CommentList buildCommentList() {
  final o = api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.items = buildUnnamed24();
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterCommentList--;
  return o;
}

void checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed24(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentList--;
}

core.int buildCounterCommentReply = 0;
api.CommentReply buildCommentReply() {
  final o = api.CommentReply();
  buildCounterCommentReply++;
  if (buildCounterCommentReply < 3) {
    o.author = buildUser();
    o.content = 'foo';
    o.createdDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.deleted = true;
    o.htmlContent = 'foo';
    o.kind = 'foo';
    o.modifiedDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.replyId = 'foo';
    o.verb = 'foo';
  }
  buildCounterCommentReply--;
  return o;
}

void checkCommentReply(api.CommentReply o) {
  buildCounterCommentReply++;
  if (buildCounterCommentReply < 3) {
    checkUser(o.author!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.htmlContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.replyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentReply--;
}

core.List<api.CommentReply> buildUnnamed25() => [
      buildCommentReply(),
      buildCommentReply(),
    ];

void checkUnnamed25(core.List<api.CommentReply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentReply(o[0]);
  checkCommentReply(o[1]);
}

core.int buildCounterCommentReplyList = 0;
api.CommentReplyList buildCommentReplyList() {
  final o = api.CommentReplyList();
  buildCounterCommentReplyList++;
  if (buildCounterCommentReplyList < 3) {
    o.items = buildUnnamed25();
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterCommentReplyList--;
  return o;
}

void checkCommentReplyList(api.CommentReplyList o) {
  buildCounterCommentReplyList++;
  if (buildCounterCommentReplyList < 3) {
    checkUnnamed25(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentReplyList--;
}

core.int buildCounterContentRestriction = 0;
api.ContentRestriction buildContentRestriction() {
  final o = api.ContentRestriction();
  buildCounterContentRestriction++;
  if (buildCounterContentRestriction < 3) {
    o.readOnly = true;
    o.reason = 'foo';
    o.restrictingUser = buildUser();
    o.restrictionDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.type = 'foo';
  }
  buildCounterContentRestriction--;
  return o;
}

void checkContentRestriction(api.ContentRestriction o) {
  buildCounterContentRestriction++;
  if (buildCounterContentRestriction < 3) {
    unittest.expect(o.readOnly!, unittest.isTrue);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    checkUser(o.restrictingUser!);
    unittest.expect(
      o.restrictionDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentRestriction--;
}

core.int buildCounterDriveBackgroundImageFile = 0;
api.DriveBackgroundImageFile buildDriveBackgroundImageFile() {
  final o = api.DriveBackgroundImageFile();
  buildCounterDriveBackgroundImageFile++;
  if (buildCounterDriveBackgroundImageFile < 3) {
    o.id = 'foo';
    o.width = 42.0;
    o.xCoordinate = 42.0;
    o.yCoordinate = 42.0;
  }
  buildCounterDriveBackgroundImageFile--;
  return o;
}

void checkDriveBackgroundImageFile(api.DriveBackgroundImageFile o) {
  buildCounterDriveBackgroundImageFile++;
  if (buildCounterDriveBackgroundImageFile < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.xCoordinate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.yCoordinate!,
      unittest.equals(42.0),
    );
  }
  buildCounterDriveBackgroundImageFile--;
}

core.int buildCounterDriveCapabilities = 0;
api.DriveCapabilities buildDriveCapabilities() {
  final o = api.DriveCapabilities();
  buildCounterDriveCapabilities++;
  if (buildCounterDriveCapabilities < 3) {
    o.canAddChildren = true;
    o.canChangeCopyRequiresWriterPermissionRestriction = true;
    o.canChangeDomainUsersOnlyRestriction = true;
    o.canChangeDriveBackground = true;
    o.canChangeDriveMembersOnlyRestriction = true;
    o.canComment = true;
    o.canCopy = true;
    o.canDeleteChildren = true;
    o.canDeleteDrive = true;
    o.canDownload = true;
    o.canEdit = true;
    o.canListChildren = true;
    o.canManageMembers = true;
    o.canReadRevisions = true;
    o.canRename = true;
    o.canRenameDrive = true;
    o.canResetDriveRestrictions = true;
    o.canShare = true;
    o.canTrashChildren = true;
  }
  buildCounterDriveCapabilities--;
  return o;
}

void checkDriveCapabilities(api.DriveCapabilities o) {
  buildCounterDriveCapabilities++;
  if (buildCounterDriveCapabilities < 3) {
    unittest.expect(o.canAddChildren!, unittest.isTrue);
    unittest.expect(
        o.canChangeCopyRequiresWriterPermissionRestriction!, unittest.isTrue);
    unittest.expect(o.canChangeDomainUsersOnlyRestriction!, unittest.isTrue);
    unittest.expect(o.canChangeDriveBackground!, unittest.isTrue);
    unittest.expect(o.canChangeDriveMembersOnlyRestriction!, unittest.isTrue);
    unittest.expect(o.canComment!, unittest.isTrue);
    unittest.expect(o.canCopy!, unittest.isTrue);
    unittest.expect(o.canDeleteChildren!, unittest.isTrue);
    unittest.expect(o.canDeleteDrive!, unittest.isTrue);
    unittest.expect(o.canDownload!, unittest.isTrue);
    unittest.expect(o.canEdit!, unittest.isTrue);
    unittest.expect(o.canListChildren!, unittest.isTrue);
    unittest.expect(o.canManageMembers!, unittest.isTrue);
    unittest.expect(o.canReadRevisions!, unittest.isTrue);
    unittest.expect(o.canRename!, unittest.isTrue);
    unittest.expect(o.canRenameDrive!, unittest.isTrue);
    unittest.expect(o.canResetDriveRestrictions!, unittest.isTrue);
    unittest.expect(o.canShare!, unittest.isTrue);
    unittest.expect(o.canTrashChildren!, unittest.isTrue);
  }
  buildCounterDriveCapabilities--;
}

core.int buildCounterDriveRestrictions = 0;
api.DriveRestrictions buildDriveRestrictions() {
  final o = api.DriveRestrictions();
  buildCounterDriveRestrictions++;
  if (buildCounterDriveRestrictions < 3) {
    o.adminManagedRestrictions = true;
    o.copyRequiresWriterPermission = true;
    o.domainUsersOnly = true;
    o.driveMembersOnly = true;
  }
  buildCounterDriveRestrictions--;
  return o;
}

void checkDriveRestrictions(api.DriveRestrictions o) {
  buildCounterDriveRestrictions++;
  if (buildCounterDriveRestrictions < 3) {
    unittest.expect(o.adminManagedRestrictions!, unittest.isTrue);
    unittest.expect(o.copyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(o.domainUsersOnly!, unittest.isTrue);
    unittest.expect(o.driveMembersOnly!, unittest.isTrue);
  }
  buildCounterDriveRestrictions--;
}

core.int buildCounterDrive = 0;
api.Drive buildDrive() {
  final o = api.Drive();
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    o.backgroundImageFile = buildDriveBackgroundImageFile();
    o.backgroundImageLink = 'foo';
    o.capabilities = buildDriveCapabilities();
    o.colorRgb = 'foo';
    o.createdDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.hidden = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.orgUnitId = 'foo';
    o.restrictions = buildDriveRestrictions();
    o.themeId = 'foo';
  }
  buildCounterDrive--;
  return o;
}

void checkDrive(api.Drive o) {
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    checkDriveBackgroundImageFile(o.backgroundImageFile!);
    unittest.expect(
      o.backgroundImageLink!,
      unittest.equals('foo'),
    );
    checkDriveCapabilities(o.capabilities!);
    unittest.expect(
      o.colorRgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    checkDriveRestrictions(o.restrictions!);
    unittest.expect(
      o.themeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDrive--;
}

core.List<api.Drive> buildUnnamed26() => [
      buildDrive(),
      buildDrive(),
    ];

void checkUnnamed26(core.List<api.Drive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDrive(o[0]);
  checkDrive(o[1]);
}

core.int buildCounterDriveList = 0;
api.DriveList buildDriveList() {
  final o = api.DriveList();
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    o.items = buildUnnamed26();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDriveList--;
  return o;
}

void checkDriveList(api.DriveList o) {
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    checkUnnamed26(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveList--;
}

core.int buildCounterFileCapabilities = 0;
api.FileCapabilities buildFileCapabilities() {
  final o = api.FileCapabilities();
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    o.canAcceptOwnership = true;
    o.canAddChildren = true;
    o.canAddFolderFromAnotherDrive = true;
    o.canAddMyDriveParent = true;
    o.canChangeCopyRequiresWriterPermission = true;
    o.canChangeRestrictedDownload = true;
    o.canChangeSecurityUpdateEnabled = true;
    o.canComment = true;
    o.canCopy = true;
    o.canDelete = true;
    o.canDeleteChildren = true;
    o.canDownload = true;
    o.canEdit = true;
    o.canListChildren = true;
    o.canModifyContent = true;
    o.canModifyContentRestriction = true;
    o.canModifyLabels = true;
    o.canMoveChildrenOutOfDrive = true;
    o.canMoveChildrenOutOfTeamDrive = true;
    o.canMoveChildrenWithinDrive = true;
    o.canMoveChildrenWithinTeamDrive = true;
    o.canMoveItemIntoTeamDrive = true;
    o.canMoveItemOutOfDrive = true;
    o.canMoveItemOutOfTeamDrive = true;
    o.canMoveItemWithinDrive = true;
    o.canMoveItemWithinTeamDrive = true;
    o.canMoveTeamDriveItem = true;
    o.canReadDrive = true;
    o.canReadLabels = true;
    o.canReadRevisions = true;
    o.canReadTeamDrive = true;
    o.canRemoveChildren = true;
    o.canRemoveMyDriveParent = true;
    o.canRename = true;
    o.canShare = true;
    o.canTrash = true;
    o.canTrashChildren = true;
    o.canUntrash = true;
  }
  buildCounterFileCapabilities--;
  return o;
}

void checkFileCapabilities(api.FileCapabilities o) {
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    unittest.expect(o.canAcceptOwnership!, unittest.isTrue);
    unittest.expect(o.canAddChildren!, unittest.isTrue);
    unittest.expect(o.canAddFolderFromAnotherDrive!, unittest.isTrue);
    unittest.expect(o.canAddMyDriveParent!, unittest.isTrue);
    unittest.expect(o.canChangeCopyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(o.canChangeRestrictedDownload!, unittest.isTrue);
    unittest.expect(o.canChangeSecurityUpdateEnabled!, unittest.isTrue);
    unittest.expect(o.canComment!, unittest.isTrue);
    unittest.expect(o.canCopy!, unittest.isTrue);
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDeleteChildren!, unittest.isTrue);
    unittest.expect(o.canDownload!, unittest.isTrue);
    unittest.expect(o.canEdit!, unittest.isTrue);
    unittest.expect(o.canListChildren!, unittest.isTrue);
    unittest.expect(o.canModifyContent!, unittest.isTrue);
    unittest.expect(o.canModifyContentRestriction!, unittest.isTrue);
    unittest.expect(o.canModifyLabels!, unittest.isTrue);
    unittest.expect(o.canMoveChildrenOutOfDrive!, unittest.isTrue);
    unittest.expect(o.canMoveChildrenOutOfTeamDrive!, unittest.isTrue);
    unittest.expect(o.canMoveChildrenWithinDrive!, unittest.isTrue);
    unittest.expect(o.canMoveChildrenWithinTeamDrive!, unittest.isTrue);
    unittest.expect(o.canMoveItemIntoTeamDrive!, unittest.isTrue);
    unittest.expect(o.canMoveItemOutOfDrive!, unittest.isTrue);
    unittest.expect(o.canMoveItemOutOfTeamDrive!, unittest.isTrue);
    unittest.expect(o.canMoveItemWithinDrive!, unittest.isTrue);
    unittest.expect(o.canMoveItemWithinTeamDrive!, unittest.isTrue);
    unittest.expect(o.canMoveTeamDriveItem!, unittest.isTrue);
    unittest.expect(o.canReadDrive!, unittest.isTrue);
    unittest.expect(o.canReadLabels!, unittest.isTrue);
    unittest.expect(o.canReadRevisions!, unittest.isTrue);
    unittest.expect(o.canReadTeamDrive!, unittest.isTrue);
    unittest.expect(o.canRemoveChildren!, unittest.isTrue);
    unittest.expect(o.canRemoveMyDriveParent!, unittest.isTrue);
    unittest.expect(o.canRename!, unittest.isTrue);
    unittest.expect(o.canShare!, unittest.isTrue);
    unittest.expect(o.canTrash!, unittest.isTrue);
    unittest.expect(o.canTrashChildren!, unittest.isTrue);
    unittest.expect(o.canUntrash!, unittest.isTrue);
  }
  buildCounterFileCapabilities--;
}

core.List<api.ContentRestriction> buildUnnamed27() => [
      buildContentRestriction(),
      buildContentRestriction(),
    ];

void checkUnnamed27(core.List<api.ContentRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentRestriction(o[0]);
  checkContentRestriction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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

core.int buildCounterFileImageMediaMetadataLocation = 0;
api.FileImageMediaMetadataLocation buildFileImageMediaMetadataLocation() {
  final o = api.FileImageMediaMetadataLocation();
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterFileImageMediaMetadataLocation--;
  return o;
}

void checkFileImageMediaMetadataLocation(api.FileImageMediaMetadataLocation o) {
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    unittest.expect(
      o.altitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterFileImageMediaMetadataLocation--;
}

core.int buildCounterFileImageMediaMetadata = 0;
api.FileImageMediaMetadata buildFileImageMediaMetadata() {
  final o = api.FileImageMediaMetadata();
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    o.aperture = 42.0;
    o.cameraMake = 'foo';
    o.cameraModel = 'foo';
    o.colorSpace = 'foo';
    o.date = 'foo';
    o.exposureBias = 42.0;
    o.exposureMode = 'foo';
    o.exposureTime = 42.0;
    o.flashUsed = true;
    o.focalLength = 42.0;
    o.height = 42;
    o.isoSpeed = 42;
    o.lens = 'foo';
    o.location = buildFileImageMediaMetadataLocation();
    o.maxApertureValue = 42.0;
    o.meteringMode = 'foo';
    o.rotation = 42;
    o.sensor = 'foo';
    o.subjectDistance = 42;
    o.whiteBalance = 'foo';
    o.width = 42;
  }
  buildCounterFileImageMediaMetadata--;
  return o;
}

void checkFileImageMediaMetadata(api.FileImageMediaMetadata o) {
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    unittest.expect(
      o.aperture!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.cameraMake!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cameraModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.colorSpace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exposureBias!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.exposureMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exposureTime!,
      unittest.equals(42.0),
    );
    unittest.expect(o.flashUsed!, unittest.isTrue);
    unittest.expect(
      o.focalLength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.isoSpeed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lens!,
      unittest.equals('foo'),
    );
    checkFileImageMediaMetadataLocation(o.location!);
    unittest.expect(
      o.maxApertureValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.meteringMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotation!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sensor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectDistance!,
      unittest.equals(42),
    );
    unittest.expect(
      o.whiteBalance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterFileImageMediaMetadata--;
}

core.int buildCounterFileIndexableText = 0;
api.FileIndexableText buildFileIndexableText() {
  final o = api.FileIndexableText();
  buildCounterFileIndexableText++;
  if (buildCounterFileIndexableText < 3) {
    o.text = 'foo';
  }
  buildCounterFileIndexableText--;
  return o;
}

void checkFileIndexableText(api.FileIndexableText o) {
  buildCounterFileIndexableText++;
  if (buildCounterFileIndexableText < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileIndexableText--;
}

core.List<api.Label> buildUnnamed29() => [
      buildLabel(),
      buildLabel(),
    ];

void checkUnnamed29(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterFileLabelInfo = 0;
api.FileLabelInfo buildFileLabelInfo() {
  final o = api.FileLabelInfo();
  buildCounterFileLabelInfo++;
  if (buildCounterFileLabelInfo < 3) {
    o.labels = buildUnnamed29();
  }
  buildCounterFileLabelInfo--;
  return o;
}

void checkFileLabelInfo(api.FileLabelInfo o) {
  buildCounterFileLabelInfo++;
  if (buildCounterFileLabelInfo < 3) {
    checkUnnamed29(o.labels!);
  }
  buildCounterFileLabelInfo--;
}

core.int buildCounterFileLabels = 0;
api.FileLabels buildFileLabels() {
  final o = api.FileLabels();
  buildCounterFileLabels++;
  if (buildCounterFileLabels < 3) {
    o.hidden = true;
    o.modified = true;
    o.restricted = true;
    o.starred = true;
    o.trashed = true;
    o.viewed = true;
  }
  buildCounterFileLabels--;
  return o;
}

void checkFileLabels(api.FileLabels o) {
  buildCounterFileLabels++;
  if (buildCounterFileLabels < 3) {
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(o.modified!, unittest.isTrue);
    unittest.expect(o.restricted!, unittest.isTrue);
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(o.trashed!, unittest.isTrue);
    unittest.expect(o.viewed!, unittest.isTrue);
  }
  buildCounterFileLabels--;
}

core.int buildCounterFileLinkShareMetadata = 0;
api.FileLinkShareMetadata buildFileLinkShareMetadata() {
  final o = api.FileLinkShareMetadata();
  buildCounterFileLinkShareMetadata++;
  if (buildCounterFileLinkShareMetadata < 3) {
    o.securityUpdateEligible = true;
    o.securityUpdateEnabled = true;
  }
  buildCounterFileLinkShareMetadata--;
  return o;
}

void checkFileLinkShareMetadata(api.FileLinkShareMetadata o) {
  buildCounterFileLinkShareMetadata++;
  if (buildCounterFileLinkShareMetadata < 3) {
    unittest.expect(o.securityUpdateEligible!, unittest.isTrue);
    unittest.expect(o.securityUpdateEnabled!, unittest.isTrue);
  }
  buildCounterFileLinkShareMetadata--;
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

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.List<api.User> buildUnnamed32() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed32(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.List<api.ParentReference> buildUnnamed33() => [
      buildParentReference(),
      buildParentReference(),
    ];

void checkUnnamed33(core.List<api.ParentReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParentReference(o[0]);
  checkParentReference(o[1]);
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

core.List<api.Permission> buildUnnamed35() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed35(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.List<api.Property> buildUnnamed36() => [
      buildProperty(),
      buildProperty(),
    ];

void checkUnnamed36(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterFileShortcutDetails = 0;
api.FileShortcutDetails buildFileShortcutDetails() {
  final o = api.FileShortcutDetails();
  buildCounterFileShortcutDetails++;
  if (buildCounterFileShortcutDetails < 3) {
    o.targetId = 'foo';
    o.targetMimeType = 'foo';
    o.targetResourceKey = 'foo';
  }
  buildCounterFileShortcutDetails--;
  return o;
}

void checkFileShortcutDetails(api.FileShortcutDetails o) {
  buildCounterFileShortcutDetails++;
  if (buildCounterFileShortcutDetails < 3) {
    unittest.expect(
      o.targetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetMimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetResourceKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileShortcutDetails--;
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

core.int buildCounterFileThumbnail = 0;
api.FileThumbnail buildFileThumbnail() {
  final o = api.FileThumbnail();
  buildCounterFileThumbnail++;
  if (buildCounterFileThumbnail < 3) {
    o.image = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterFileThumbnail--;
  return o;
}

void checkFileThumbnail(api.FileThumbnail o) {
  buildCounterFileThumbnail++;
  if (buildCounterFileThumbnail < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileThumbnail--;
}

core.int buildCounterFileVideoMediaMetadata = 0;
api.FileVideoMediaMetadata buildFileVideoMediaMetadata() {
  final o = api.FileVideoMediaMetadata();
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    o.durationMillis = 'foo';
    o.height = 42;
    o.width = 42;
  }
  buildCounterFileVideoMediaMetadata--;
  return o;
}

void checkFileVideoMediaMetadata(api.FileVideoMediaMetadata o) {
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    unittest.expect(
      o.durationMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterFileVideoMediaMetadata--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.alternateLink = 'foo';
    o.appDataContents = true;
    o.canComment = true;
    o.canReadRevisions = true;
    o.capabilities = buildFileCapabilities();
    o.contentRestrictions = buildUnnamed27();
    o.copyRequiresWriterPermission = true;
    o.copyable = true;
    o.createdDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.defaultOpenWithLink = 'foo';
    o.description = 'foo';
    o.downloadUrl = 'foo';
    o.driveId = 'foo';
    o.editable = true;
    o.embedLink = 'foo';
    o.etag = 'foo';
    o.explicitlyTrashed = true;
    o.exportLinks = buildUnnamed28();
    o.fileExtension = 'foo';
    o.fileSize = 'foo';
    o.folderColorRgb = 'foo';
    o.fullFileExtension = 'foo';
    o.hasAugmentedPermissions = true;
    o.hasThumbnail = true;
    o.headRevisionId = 'foo';
    o.iconLink = 'foo';
    o.id = 'foo';
    o.imageMediaMetadata = buildFileImageMediaMetadata();
    o.indexableText = buildFileIndexableText();
    o.isAppAuthorized = true;
    o.kind = 'foo';
    o.labelInfo = buildFileLabelInfo();
    o.labels = buildFileLabels();
    o.lastModifyingUser = buildUser();
    o.lastModifyingUserName = 'foo';
    o.lastViewedByMeDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.linkShareMetadata = buildFileLinkShareMetadata();
    o.markedViewedByMeDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedByMeDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.modifiedDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.openWithLinks = buildUnnamed30();
    o.originalFilename = 'foo';
    o.ownedByMe = true;
    o.ownerNames = buildUnnamed31();
    o.owners = buildUnnamed32();
    o.parents = buildUnnamed33();
    o.permissionIds = buildUnnamed34();
    o.permissions = buildUnnamed35();
    o.properties = buildUnnamed36();
    o.quotaBytesUsed = 'foo';
    o.resourceKey = 'foo';
    o.selfLink = 'foo';
    o.shareable = true;
    o.shared = true;
    o.sharedWithMeDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.sharingUser = buildUser();
    o.shortcutDetails = buildFileShortcutDetails();
    o.spaces = buildUnnamed37();
    o.teamDriveId = 'foo';
    o.thumbnail = buildFileThumbnail();
    o.thumbnailLink = 'foo';
    o.thumbnailVersion = 'foo';
    o.title = 'foo';
    o.trashedDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.trashingUser = buildUser();
    o.userPermission = buildPermission();
    o.version = 'foo';
    o.videoMediaMetadata = buildFileVideoMediaMetadata();
    o.webContentLink = 'foo';
    o.webViewLink = 'foo';
    o.writersCanShare = true;
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.appDataContents!, unittest.isTrue);
    unittest.expect(o.canComment!, unittest.isTrue);
    unittest.expect(o.canReadRevisions!, unittest.isTrue);
    checkFileCapabilities(o.capabilities!);
    checkUnnamed27(o.contentRestrictions!);
    unittest.expect(o.copyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(o.copyable!, unittest.isTrue);
    unittest.expect(
      o.createdDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.defaultOpenWithLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.driveId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.editable!, unittest.isTrue);
    unittest.expect(
      o.embedLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.explicitlyTrashed!, unittest.isTrue);
    checkUnnamed28(o.exportLinks!);
    unittest.expect(
      o.fileExtension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folderColorRgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullFileExtension!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasAugmentedPermissions!, unittest.isTrue);
    unittest.expect(o.hasThumbnail!, unittest.isTrue);
    unittest.expect(
      o.headRevisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkFileImageMediaMetadata(o.imageMediaMetadata!);
    checkFileIndexableText(o.indexableText!);
    unittest.expect(o.isAppAuthorized!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkFileLabelInfo(o.labelInfo!);
    checkFileLabels(o.labels!);
    checkUser(o.lastModifyingUser!);
    unittest.expect(
      o.lastModifyingUserName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastViewedByMeDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkFileLinkShareMetadata(o.linkShareMetadata!);
    unittest.expect(
      o.markedViewedByMeDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.md5Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedByMeDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.modifiedDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed30(o.openWithLinks!);
    unittest.expect(
      o.originalFilename!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ownedByMe!, unittest.isTrue);
    checkUnnamed31(o.ownerNames!);
    checkUnnamed32(o.owners!);
    checkUnnamed33(o.parents!);
    checkUnnamed34(o.permissionIds!);
    checkUnnamed35(o.permissions!);
    checkUnnamed36(o.properties!);
    unittest.expect(
      o.quotaBytesUsed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shareable!, unittest.isTrue);
    unittest.expect(o.shared!, unittest.isTrue);
    unittest.expect(
      o.sharedWithMeDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUser(o.sharingUser!);
    checkFileShortcutDetails(o.shortcutDetails!);
    checkUnnamed37(o.spaces!);
    unittest.expect(
      o.teamDriveId!,
      unittest.equals('foo'),
    );
    checkFileThumbnail(o.thumbnail!);
    unittest.expect(
      o.thumbnailLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trashedDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUser(o.trashingUser!);
    checkPermission(o.userPermission!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    checkFileVideoMediaMetadata(o.videoMediaMetadata!);
    unittest.expect(
      o.webContentLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webViewLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.writersCanShare!, unittest.isTrue);
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed38() => [
      buildFile(),
      buildFile(),
    ];

void checkUnnamed38(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
api.FileList buildFileList() {
  final o = api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.etag = 'foo';
    o.incompleteSearch = true;
    o.items = buildUnnamed38();
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterFileList--;
  return o;
}

void checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.incompleteSearch!, unittest.isTrue);
    checkUnnamed38(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileList--;
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

core.int buildCounterGeneratedIds = 0;
api.GeneratedIds buildGeneratedIds() {
  final o = api.GeneratedIds();
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    o.ids = buildUnnamed39();
    o.kind = 'foo';
    o.space = 'foo';
  }
  buildCounterGeneratedIds--;
  return o;
}

void checkGeneratedIds(api.GeneratedIds o) {
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    checkUnnamed39(o.ids!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.space!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeneratedIds--;
}

core.Map<core.String, api.LabelField> buildUnnamed40() => {
      'x': buildLabelField(),
      'y': buildLabelField(),
    };

void checkUnnamed40(core.Map<core.String, api.LabelField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelField(o['x']!);
  checkLabelField(o['y']!);
}

core.int buildCounterLabel = 0;
api.Label buildLabel() {
  final o = api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.fields = buildUnnamed40();
    o.id = 'foo';
    o.kind = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterLabel--;
  return o;
}

void checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    checkUnnamed40(o.fields!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabel--;
}

core.List<core.DateTime> buildUnnamed41() => [
      core.DateTime.parse('2002-02-27T14:01:02Z'),
      core.DateTime.parse('2002-02-27T14:01:02Z'),
    ];

void checkUnnamed41(core.List<core.DateTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
  );
  unittest.expect(
    o[1],
    unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
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

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.List<api.User> buildUnnamed45() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed45(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterLabelField = 0;
api.LabelField buildLabelField() {
  final o = api.LabelField();
  buildCounterLabelField++;
  if (buildCounterLabelField < 3) {
    o.dateString = buildUnnamed41();
    o.id = 'foo';
    o.integer = buildUnnamed42();
    o.kind = 'foo';
    o.selection = buildUnnamed43();
    o.text = buildUnnamed44();
    o.user = buildUnnamed45();
    o.valueType = 'foo';
  }
  buildCounterLabelField--;
  return o;
}

void checkLabelField(api.LabelField o) {
  buildCounterLabelField++;
  if (buildCounterLabelField < 3) {
    checkUnnamed41(o.dateString!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.integer!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.selection!);
    checkUnnamed44(o.text!);
    checkUnnamed45(o.user!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelField--;
}

core.List<core.DateTime> buildUnnamed46() => [
      core.DateTime.parse('2002-02-27T14:01:02Z'),
      core.DateTime.parse('2002-02-27T14:01:02Z'),
    ];

void checkUnnamed46(core.List<core.DateTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
  );
  unittest.expect(
    o[1],
    unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
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

core.int buildCounterLabelFieldModification = 0;
api.LabelFieldModification buildLabelFieldModification() {
  final o = api.LabelFieldModification();
  buildCounterLabelFieldModification++;
  if (buildCounterLabelFieldModification < 3) {
    o.fieldId = 'foo';
    o.kind = 'foo';
    o.setDateValues = buildUnnamed46();
    o.setIntegerValues = buildUnnamed47();
    o.setSelectionValues = buildUnnamed48();
    o.setTextValues = buildUnnamed49();
    o.setUserValues = buildUnnamed50();
    o.unsetValues = true;
  }
  buildCounterLabelFieldModification--;
  return o;
}

void checkLabelFieldModification(api.LabelFieldModification o) {
  buildCounterLabelFieldModification++;
  if (buildCounterLabelFieldModification < 3) {
    unittest.expect(
      o.fieldId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.setDateValues!);
    checkUnnamed47(o.setIntegerValues!);
    checkUnnamed48(o.setSelectionValues!);
    checkUnnamed49(o.setTextValues!);
    checkUnnamed50(o.setUserValues!);
    unittest.expect(o.unsetValues!, unittest.isTrue);
  }
  buildCounterLabelFieldModification--;
}

core.List<api.Label> buildUnnamed51() => [
      buildLabel(),
      buildLabel(),
    ];

void checkUnnamed51(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterLabelList = 0;
api.LabelList buildLabelList() {
  final o = api.LabelList();
  buildCounterLabelList++;
  if (buildCounterLabelList < 3) {
    o.items = buildUnnamed51();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterLabelList--;
  return o;
}

void checkLabelList(api.LabelList o) {
  buildCounterLabelList++;
  if (buildCounterLabelList < 3) {
    checkUnnamed51(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelList--;
}

core.List<api.LabelFieldModification> buildUnnamed52() => [
      buildLabelFieldModification(),
      buildLabelFieldModification(),
    ];

void checkUnnamed52(core.List<api.LabelFieldModification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelFieldModification(o[0]);
  checkLabelFieldModification(o[1]);
}

core.int buildCounterLabelModification = 0;
api.LabelModification buildLabelModification() {
  final o = api.LabelModification();
  buildCounterLabelModification++;
  if (buildCounterLabelModification < 3) {
    o.fieldModifications = buildUnnamed52();
    o.kind = 'foo';
    o.labelId = 'foo';
    o.removeLabel = true;
  }
  buildCounterLabelModification--;
  return o;
}

void checkLabelModification(api.LabelModification o) {
  buildCounterLabelModification++;
  if (buildCounterLabelModification < 3) {
    checkUnnamed52(o.fieldModifications!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.removeLabel!, unittest.isTrue);
  }
  buildCounterLabelModification--;
}

core.List<api.LabelModification> buildUnnamed53() => [
      buildLabelModification(),
      buildLabelModification(),
    ];

void checkUnnamed53(core.List<api.LabelModification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelModification(o[0]);
  checkLabelModification(o[1]);
}

core.int buildCounterModifyLabelsRequest = 0;
api.ModifyLabelsRequest buildModifyLabelsRequest() {
  final o = api.ModifyLabelsRequest();
  buildCounterModifyLabelsRequest++;
  if (buildCounterModifyLabelsRequest < 3) {
    o.kind = 'foo';
    o.labelModifications = buildUnnamed53();
  }
  buildCounterModifyLabelsRequest--;
  return o;
}

void checkModifyLabelsRequest(api.ModifyLabelsRequest o) {
  buildCounterModifyLabelsRequest++;
  if (buildCounterModifyLabelsRequest < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.labelModifications!);
  }
  buildCounterModifyLabelsRequest--;
}

core.List<api.Label> buildUnnamed54() => [
      buildLabel(),
      buildLabel(),
    ];

void checkUnnamed54(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterModifyLabelsResponse = 0;
api.ModifyLabelsResponse buildModifyLabelsResponse() {
  final o = api.ModifyLabelsResponse();
  buildCounterModifyLabelsResponse++;
  if (buildCounterModifyLabelsResponse < 3) {
    o.kind = 'foo';
    o.modifiedLabels = buildUnnamed54();
  }
  buildCounterModifyLabelsResponse--;
  return o;
}

void checkModifyLabelsResponse(api.ModifyLabelsResponse o) {
  buildCounterModifyLabelsResponse++;
  if (buildCounterModifyLabelsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.modifiedLabels!);
  }
  buildCounterModifyLabelsResponse--;
}

core.List<api.ParentReference> buildUnnamed55() => [
      buildParentReference(),
      buildParentReference(),
    ];

void checkUnnamed55(core.List<api.ParentReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParentReference(o[0]);
  checkParentReference(o[1]);
}

core.int buildCounterParentList = 0;
api.ParentList buildParentList() {
  final o = api.ParentList();
  buildCounterParentList++;
  if (buildCounterParentList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed55();
    o.kind = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterParentList--;
  return o;
}

void checkParentList(api.ParentList o) {
  buildCounterParentList++;
  if (buildCounterParentList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterParentList--;
}

core.int buildCounterParentReference = 0;
api.ParentReference buildParentReference() {
  final o = api.ParentReference();
  buildCounterParentReference++;
  if (buildCounterParentReference < 3) {
    o.id = 'foo';
    o.isRoot = true;
    o.kind = 'foo';
    o.parentLink = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterParentReference--;
  return o;
}

void checkParentReference(api.ParentReference o) {
  buildCounterParentReference++;
  if (buildCounterParentReference < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRoot!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterParentReference--;
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterPermissionPermissionDetails = 0;
api.PermissionPermissionDetails buildPermissionPermissionDetails() {
  final o = api.PermissionPermissionDetails();
  buildCounterPermissionPermissionDetails++;
  if (buildCounterPermissionPermissionDetails < 3) {
    o.additionalRoles = buildUnnamed57();
    o.inherited = true;
    o.inheritedFrom = 'foo';
    o.permissionType = 'foo';
    o.role = 'foo';
  }
  buildCounterPermissionPermissionDetails--;
  return o;
}

void checkPermissionPermissionDetails(api.PermissionPermissionDetails o) {
  buildCounterPermissionPermissionDetails++;
  if (buildCounterPermissionPermissionDetails < 3) {
    checkUnnamed57(o.additionalRoles!);
    unittest.expect(o.inherited!, unittest.isTrue);
    unittest.expect(
      o.inheritedFrom!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionPermissionDetails--;
}

core.List<api.PermissionPermissionDetails> buildUnnamed58() => [
      buildPermissionPermissionDetails(),
      buildPermissionPermissionDetails(),
    ];

void checkUnnamed58(core.List<api.PermissionPermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionPermissionDetails(o[0]);
  checkPermissionPermissionDetails(o[1]);
}

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterPermissionTeamDrivePermissionDetails = 0;
api.PermissionTeamDrivePermissionDetails
    buildPermissionTeamDrivePermissionDetails() {
  final o = api.PermissionTeamDrivePermissionDetails();
  buildCounterPermissionTeamDrivePermissionDetails++;
  if (buildCounterPermissionTeamDrivePermissionDetails < 3) {
    o.additionalRoles = buildUnnamed59();
    o.inherited = true;
    o.inheritedFrom = 'foo';
    o.role = 'foo';
    o.teamDrivePermissionType = 'foo';
  }
  buildCounterPermissionTeamDrivePermissionDetails--;
  return o;
}

void checkPermissionTeamDrivePermissionDetails(
    api.PermissionTeamDrivePermissionDetails o) {
  buildCounterPermissionTeamDrivePermissionDetails++;
  if (buildCounterPermissionTeamDrivePermissionDetails < 3) {
    checkUnnamed59(o.additionalRoles!);
    unittest.expect(o.inherited!, unittest.isTrue);
    unittest.expect(
      o.inheritedFrom!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.teamDrivePermissionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionTeamDrivePermissionDetails--;
}

core.List<api.PermissionTeamDrivePermissionDetails> buildUnnamed60() => [
      buildPermissionTeamDrivePermissionDetails(),
      buildPermissionTeamDrivePermissionDetails(),
    ];

void checkUnnamed60(core.List<api.PermissionTeamDrivePermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionTeamDrivePermissionDetails(o[0]);
  checkPermissionTeamDrivePermissionDetails(o[1]);
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.additionalRoles = buildUnnamed56();
    o.authKey = 'foo';
    o.deleted = true;
    o.domain = 'foo';
    o.emailAddress = 'foo';
    o.etag = 'foo';
    o.expirationDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.pendingOwner = true;
    o.permissionDetails = buildUnnamed58();
    o.photoLink = 'foo';
    o.role = 'foo';
    o.selfLink = 'foo';
    o.teamDrivePermissionDetails = buildUnnamed60();
    o.type = 'foo';
    o.value = 'foo';
    o.view = 'foo';
    o.withLink = true;
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    checkUnnamed56(o.additionalRoles!);
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationDate!,
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
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pendingOwner!, unittest.isTrue);
    checkUnnamed58(o.permissionDetails!);
    unittest.expect(
      o.photoLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.teamDrivePermissionDetails!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
    unittest.expect(o.withLink!, unittest.isTrue);
  }
  buildCounterPermission--;
}

core.int buildCounterPermissionId = 0;
api.PermissionId buildPermissionId() {
  final o = api.PermissionId();
  buildCounterPermissionId++;
  if (buildCounterPermissionId < 3) {
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterPermissionId--;
  return o;
}

void checkPermissionId(api.PermissionId o) {
  buildCounterPermissionId++;
  if (buildCounterPermissionId < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionId--;
}

core.List<api.Permission> buildUnnamed61() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed61(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionList = 0;
api.PermissionList buildPermissionList() {
  final o = api.PermissionList();
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed61();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterPermissionList--;
  return o;
}

void checkPermissionList(api.PermissionList o) {
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionList--;
}

core.int buildCounterProperty = 0;
api.Property buildProperty() {
  final o = api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.etag = 'foo';
    o.key = 'foo';
    o.kind = 'foo';
    o.selfLink = 'foo';
    o.value = 'foo';
    o.visibility = 'foo';
  }
  buildCounterProperty--;
  return o;
}

void checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterProperty--;
}

core.List<api.Property> buildUnnamed62() => [
      buildProperty(),
      buildProperty(),
    ];

void checkUnnamed62(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterPropertyList = 0;
api.PropertyList buildPropertyList() {
  final o = api.PropertyList();
  buildCounterPropertyList++;
  if (buildCounterPropertyList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed62();
    o.kind = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterPropertyList--;
  return o;
}

void checkPropertyList(api.PropertyList o) {
  buildCounterPropertyList++;
  if (buildCounterPropertyList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterPropertyList--;
}

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  final o = api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.downloadUrl = 'foo';
    o.etag = 'foo';
    o.exportLinks = buildUnnamed63();
    o.fileSize = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifyingUser = buildUser();
    o.lastModifyingUserName = 'foo';
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.originalFilename = 'foo';
    o.pinned = true;
    o.publishAuto = true;
    o.published = true;
    o.publishedLink = 'foo';
    o.publishedOutsideDomain = true;
    o.selfLink = 'foo';
  }
  buildCounterRevision--;
  return o;
}

void checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.exportLinks!);
    unittest.expect(
      o.fileSize!,
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
    checkUser(o.lastModifyingUser!);
    unittest.expect(
      o.lastModifyingUserName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.originalFilename!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pinned!, unittest.isTrue);
    unittest.expect(o.publishAuto!, unittest.isTrue);
    unittest.expect(o.published!, unittest.isTrue);
    unittest.expect(
      o.publishedLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.publishedOutsideDomain!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevision--;
}

core.List<api.Revision> buildUnnamed64() => [
      buildRevision(),
      buildRevision(),
    ];

void checkUnnamed64(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.int buildCounterRevisionList = 0;
api.RevisionList buildRevisionList() {
  final o = api.RevisionList();
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed64();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.selfLink = 'foo';
  }
  buildCounterRevisionList--;
  return o;
}

void checkRevisionList(api.RevisionList o) {
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevisionList--;
}

core.int buildCounterStartPageToken = 0;
api.StartPageToken buildStartPageToken() {
  final o = api.StartPageToken();
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    o.kind = 'foo';
    o.startPageToken = 'foo';
  }
  buildCounterStartPageToken--;
  return o;
}

void checkStartPageToken(api.StartPageToken o) {
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartPageToken--;
}

core.int buildCounterTeamDriveBackgroundImageFile = 0;
api.TeamDriveBackgroundImageFile buildTeamDriveBackgroundImageFile() {
  final o = api.TeamDriveBackgroundImageFile();
  buildCounterTeamDriveBackgroundImageFile++;
  if (buildCounterTeamDriveBackgroundImageFile < 3) {
    o.id = 'foo';
    o.width = 42.0;
    o.xCoordinate = 42.0;
    o.yCoordinate = 42.0;
  }
  buildCounterTeamDriveBackgroundImageFile--;
  return o;
}

void checkTeamDriveBackgroundImageFile(api.TeamDriveBackgroundImageFile o) {
  buildCounterTeamDriveBackgroundImageFile++;
  if (buildCounterTeamDriveBackgroundImageFile < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.xCoordinate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.yCoordinate!,
      unittest.equals(42.0),
    );
  }
  buildCounterTeamDriveBackgroundImageFile--;
}

core.int buildCounterTeamDriveCapabilities = 0;
api.TeamDriveCapabilities buildTeamDriveCapabilities() {
  final o = api.TeamDriveCapabilities();
  buildCounterTeamDriveCapabilities++;
  if (buildCounterTeamDriveCapabilities < 3) {
    o.canAddChildren = true;
    o.canChangeCopyRequiresWriterPermissionRestriction = true;
    o.canChangeDomainUsersOnlyRestriction = true;
    o.canChangeTeamDriveBackground = true;
    o.canChangeTeamMembersOnlyRestriction = true;
    o.canComment = true;
    o.canCopy = true;
    o.canDeleteChildren = true;
    o.canDeleteTeamDrive = true;
    o.canDownload = true;
    o.canEdit = true;
    o.canListChildren = true;
    o.canManageMembers = true;
    o.canReadRevisions = true;
    o.canRemoveChildren = true;
    o.canRename = true;
    o.canRenameTeamDrive = true;
    o.canResetTeamDriveRestrictions = true;
    o.canShare = true;
    o.canTrashChildren = true;
  }
  buildCounterTeamDriveCapabilities--;
  return o;
}

void checkTeamDriveCapabilities(api.TeamDriveCapabilities o) {
  buildCounterTeamDriveCapabilities++;
  if (buildCounterTeamDriveCapabilities < 3) {
    unittest.expect(o.canAddChildren!, unittest.isTrue);
    unittest.expect(
        o.canChangeCopyRequiresWriterPermissionRestriction!, unittest.isTrue);
    unittest.expect(o.canChangeDomainUsersOnlyRestriction!, unittest.isTrue);
    unittest.expect(o.canChangeTeamDriveBackground!, unittest.isTrue);
    unittest.expect(o.canChangeTeamMembersOnlyRestriction!, unittest.isTrue);
    unittest.expect(o.canComment!, unittest.isTrue);
    unittest.expect(o.canCopy!, unittest.isTrue);
    unittest.expect(o.canDeleteChildren!, unittest.isTrue);
    unittest.expect(o.canDeleteTeamDrive!, unittest.isTrue);
    unittest.expect(o.canDownload!, unittest.isTrue);
    unittest.expect(o.canEdit!, unittest.isTrue);
    unittest.expect(o.canListChildren!, unittest.isTrue);
    unittest.expect(o.canManageMembers!, unittest.isTrue);
    unittest.expect(o.canReadRevisions!, unittest.isTrue);
    unittest.expect(o.canRemoveChildren!, unittest.isTrue);
    unittest.expect(o.canRename!, unittest.isTrue);
    unittest.expect(o.canRenameTeamDrive!, unittest.isTrue);
    unittest.expect(o.canResetTeamDriveRestrictions!, unittest.isTrue);
    unittest.expect(o.canShare!, unittest.isTrue);
    unittest.expect(o.canTrashChildren!, unittest.isTrue);
  }
  buildCounterTeamDriveCapabilities--;
}

core.int buildCounterTeamDriveRestrictions = 0;
api.TeamDriveRestrictions buildTeamDriveRestrictions() {
  final o = api.TeamDriveRestrictions();
  buildCounterTeamDriveRestrictions++;
  if (buildCounterTeamDriveRestrictions < 3) {
    o.adminManagedRestrictions = true;
    o.copyRequiresWriterPermission = true;
    o.domainUsersOnly = true;
    o.teamMembersOnly = true;
  }
  buildCounterTeamDriveRestrictions--;
  return o;
}

void checkTeamDriveRestrictions(api.TeamDriveRestrictions o) {
  buildCounterTeamDriveRestrictions++;
  if (buildCounterTeamDriveRestrictions < 3) {
    unittest.expect(o.adminManagedRestrictions!, unittest.isTrue);
    unittest.expect(o.copyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(o.domainUsersOnly!, unittest.isTrue);
    unittest.expect(o.teamMembersOnly!, unittest.isTrue);
  }
  buildCounterTeamDriveRestrictions--;
}

core.int buildCounterTeamDrive = 0;
api.TeamDrive buildTeamDrive() {
  final o = api.TeamDrive();
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    o.backgroundImageFile = buildTeamDriveBackgroundImageFile();
    o.backgroundImageLink = 'foo';
    o.capabilities = buildTeamDriveCapabilities();
    o.colorRgb = 'foo';
    o.createdDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.orgUnitId = 'foo';
    o.restrictions = buildTeamDriveRestrictions();
    o.themeId = 'foo';
  }
  buildCounterTeamDrive--;
  return o;
}

void checkTeamDrive(api.TeamDrive o) {
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    checkTeamDriveBackgroundImageFile(o.backgroundImageFile!);
    unittest.expect(
      o.backgroundImageLink!,
      unittest.equals('foo'),
    );
    checkTeamDriveCapabilities(o.capabilities!);
    unittest.expect(
      o.colorRgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdDate!,
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
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    checkTeamDriveRestrictions(o.restrictions!);
    unittest.expect(
      o.themeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeamDrive--;
}

core.List<api.TeamDrive> buildUnnamed65() => [
      buildTeamDrive(),
      buildTeamDrive(),
    ];

void checkUnnamed65(core.List<api.TeamDrive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeamDrive(o[0]);
  checkTeamDrive(o[1]);
}

core.int buildCounterTeamDriveList = 0;
api.TeamDriveList buildTeamDriveList() {
  final o = api.TeamDriveList();
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    o.items = buildUnnamed65();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterTeamDriveList--;
  return o;
}

void checkTeamDriveList(api.TeamDriveList o) {
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    checkUnnamed65(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeamDriveList--;
}

core.int buildCounterUserPicture = 0;
api.UserPicture buildUserPicture() {
  final o = api.UserPicture();
  buildCounterUserPicture++;
  if (buildCounterUserPicture < 3) {
    o.url = 'foo';
  }
  buildCounterUserPicture--;
  return o;
}

void checkUserPicture(api.UserPicture o) {
  buildCounterUserPicture++;
  if (buildCounterUserPicture < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserPicture--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = 'foo';
    o.emailAddress = 'foo';
    o.isAuthenticatedUser = true;
    o.kind = 'foo';
    o.permissionId = 'foo';
    o.picture = buildUserPicture();
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAuthenticatedUser!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
    checkUserPicture(o.picture!);
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-AboutAdditionalRoleInfoRoleSets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutAdditionalRoleInfoRoleSets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutAdditionalRoleInfoRoleSets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutAdditionalRoleInfoRoleSets(od);
    });
  });

  unittest.group('obj-schema-AboutAdditionalRoleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutAdditionalRoleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutAdditionalRoleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutAdditionalRoleInfo(od);
    });
  });

  unittest.group('obj-schema-AboutDriveThemes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutDriveThemes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutDriveThemes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutDriveThemes(od);
    });
  });

  unittest.group('obj-schema-AboutExportFormats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutExportFormats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutExportFormats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutExportFormats(od);
    });
  });

  unittest.group('obj-schema-AboutFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutFeatures(od);
    });
  });

  unittest.group('obj-schema-AboutImportFormats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutImportFormats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutImportFormats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutImportFormats(od);
    });
  });

  unittest.group('obj-schema-AboutMaxUploadSizes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutMaxUploadSizes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutMaxUploadSizes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutMaxUploadSizes(od);
    });
  });

  unittest.group('obj-schema-AboutQuotaBytesByService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutQuotaBytesByService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutQuotaBytesByService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutQuotaBytesByService(od);
    });
  });

  unittest.group('obj-schema-AboutTeamDriveThemes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutTeamDriveThemes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutTeamDriveThemes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutTeamDriveThemes(od);
    });
  });

  unittest.group('obj-schema-About', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.About.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAbout(od);
    });
  });

  unittest.group('obj-schema-AppIcons', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppIcons();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppIcons.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppIcons(od);
    });
  });

  unittest.group('obj-schema-App', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.App.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApp(od);
    });
  });

  unittest.group('obj-schema-AppList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppList(od);
    });
  });

  unittest.group('obj-schema-Change', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Change.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChange(od);
    });
  });

  unittest.group('obj-schema-ChangeList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangeList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChangeList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChangeList(od);
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

  unittest.group('obj-schema-ChildList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChildList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChildList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChildList(od);
    });
  });

  unittest.group('obj-schema-ChildReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChildReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChildReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChildReference(od);
    });
  });

  unittest.group('obj-schema-CommentContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentContext(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Comment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CommentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentList(od);
    });
  });

  unittest.group('obj-schema-CommentReply', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentReply();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentReply.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentReply(od);
    });
  });

  unittest.group('obj-schema-CommentReplyList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentReplyList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentReplyList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentReplyList(od);
    });
  });

  unittest.group('obj-schema-ContentRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentRestriction(od);
    });
  });

  unittest.group('obj-schema-DriveBackgroundImageFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveBackgroundImageFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveBackgroundImageFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveBackgroundImageFile(od);
    });
  });

  unittest.group('obj-schema-DriveCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveCapabilities(od);
    });
  });

  unittest.group('obj-schema-DriveRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveRestrictions(od);
    });
  });

  unittest.group('obj-schema-Drive', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDrive();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Drive.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDrive(od);
    });
  });

  unittest.group('obj-schema-DriveList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DriveList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDriveList(od);
    });
  });

  unittest.group('obj-schema-FileCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileCapabilities(od);
    });
  });

  unittest.group('obj-schema-FileImageMediaMetadataLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileImageMediaMetadataLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileImageMediaMetadataLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileImageMediaMetadataLocation(od);
    });
  });

  unittest.group('obj-schema-FileImageMediaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileImageMediaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileImageMediaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileImageMediaMetadata(od);
    });
  });

  unittest.group('obj-schema-FileIndexableText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileIndexableText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileIndexableText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileIndexableText(od);
    });
  });

  unittest.group('obj-schema-FileLabelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileLabelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileLabelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileLabelInfo(od);
    });
  });

  unittest.group('obj-schema-FileLabels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileLabels.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileLabels(od);
    });
  });

  unittest.group('obj-schema-FileLinkShareMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileLinkShareMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileLinkShareMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileLinkShareMetadata(od);
    });
  });

  unittest.group('obj-schema-FileShortcutDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileShortcutDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileShortcutDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileShortcutDetails(od);
    });
  });

  unittest.group('obj-schema-FileThumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileThumbnail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileThumbnail(od);
    });
  });

  unittest.group('obj-schema-FileVideoMediaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileVideoMediaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileVideoMediaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileVideoMediaMetadata(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.File.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileList(od);
    });
  });

  unittest.group('obj-schema-GeneratedIds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedIds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedIds.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedIds(od);
    });
  });

  unittest.group('obj-schema-Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Label.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabel(od);
    });
  });

  unittest.group('obj-schema-LabelField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LabelField.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabelField(od);
    });
  });

  unittest.group('obj-schema-LabelFieldModification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelFieldModification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelFieldModification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelFieldModification(od);
    });
  });

  unittest.group('obj-schema-LabelList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LabelList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabelList(od);
    });
  });

  unittest.group('obj-schema-LabelModification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelModification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelModification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelModification(od);
    });
  });

  unittest.group('obj-schema-ModifyLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyLabelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-ParentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ParentList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParentList(od);
    });
  });

  unittest.group('obj-schema-ParentReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParentReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParentReference(od);
    });
  });

  unittest.group('obj-schema-PermissionPermissionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionPermissionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionPermissionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionPermissionDetails(od);
    });
  });

  unittest.group('obj-schema-PermissionTeamDrivePermissionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionTeamDrivePermissionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionTeamDrivePermissionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionTeamDrivePermissionDetails(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Permission.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPermission(od);
    });
  });

  unittest.group('obj-schema-PermissionId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionId(od);
    });
  });

  unittest.group('obj-schema-PermissionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionList(od);
    });
  });

  unittest.group('obj-schema-Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Property.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProperty(od);
    });
  });

  unittest.group('obj-schema-PropertyList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPropertyList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PropertyList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPropertyList(od);
    });
  });

  unittest.group('obj-schema-Revision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Revision.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRevision(od);
    });
  });

  unittest.group('obj-schema-RevisionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevisionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevisionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevisionList(od);
    });
  });

  unittest.group('obj-schema-StartPageToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartPageToken(od);
    });
  });

  unittest.group('obj-schema-TeamDriveBackgroundImageFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveBackgroundImageFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveBackgroundImageFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveBackgroundImageFile(od);
    });
  });

  unittest.group('obj-schema-TeamDriveCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveCapabilities(od);
    });
  });

  unittest.group('obj-schema-TeamDriveRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveRestrictions(od);
    });
  });

  unittest.group('obj-schema-TeamDrive', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDrive();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TeamDrive.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTeamDrive(od);
    });
  });

  unittest.group('obj-schema-TeamDriveList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveList(od);
    });
  });

  unittest.group('obj-schema-UserPicture', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPicture();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPicture.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserPicture(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('resource-AboutResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).about;
      final arg_includeSubscribed = true;
      final arg_maxChangeIdCount = 'foo';
      final arg_startChangeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('about'),
        );
        pathOffset += 5;

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
          queryMap['includeSubscribed']!.first,
          unittest.equals('$arg_includeSubscribed'),
        );
        unittest.expect(
          queryMap['maxChangeIdCount']!.first,
          unittest.equals(arg_maxChangeIdCount),
        );
        unittest.expect(
          queryMap['startChangeId']!.first,
          unittest.equals(arg_startChangeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAbout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          includeSubscribed: arg_includeSubscribed,
          maxChangeIdCount: arg_maxChangeIdCount,
          startChangeId: arg_startChangeId,
          $fields: arg_$fields);
      checkAbout(response as api.About);
    });
  });

  unittest.group('resource-AppsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).apps;
      final arg_appId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('apps/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_appId'),
        );

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
        final resp = convert.json.encode(buildApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_appId, $fields: arg_$fields);
      checkApp(response as api.App);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).apps;
      final arg_appFilterExtensions = 'foo';
      final arg_appFilterMimeTypes = 'foo';
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('apps'),
        );
        pathOffset += 4;

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
          queryMap['appFilterExtensions']!.first,
          unittest.equals(arg_appFilterExtensions),
        );
        unittest.expect(
          queryMap['appFilterMimeTypes']!.first,
          unittest.equals(arg_appFilterMimeTypes),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          appFilterExtensions: arg_appFilterExtensions,
          appFilterMimeTypes: arg_appFilterMimeTypes,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkAppList(response as api.AppList);
    });
  });

  unittest.group('resource-ChangesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).changes;
      final arg_changeId = 'foo';
      final arg_driveId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_teamDriveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('changes/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_changeId'),
        );

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
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['teamDriveId']!.first,
          unittest.equals(arg_teamDriveId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_changeId,
          driveId: arg_driveId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkChange(response as api.Change);
    });

    unittest.test('method--getStartPageToken', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).changes;
      final arg_driveId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_teamDriveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('changes/startPageToken'),
        );
        pathOffset += 22;

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
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['teamDriveId']!.first,
          unittest.equals(arg_teamDriveId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStartPageToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getStartPageToken(
          driveId: arg_driveId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkStartPageToken(response as api.StartPageToken);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).changes;
      final arg_driveId = 'foo';
      final arg_includeCorpusRemovals = true;
      final arg_includeDeleted = true;
      final arg_includeItemsFromAllDrives = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_includeSubscribed = true;
      final arg_includeTeamDriveItems = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_spaces = 'foo';
      final arg_startChangeId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_teamDriveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('changes'),
        );
        pathOffset += 7;

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
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['includeCorpusRemovals']!.first,
          unittest.equals('$arg_includeCorpusRemovals'),
        );
        unittest.expect(
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
        );
        unittest.expect(
          queryMap['includeItemsFromAllDrives']!.first,
          unittest.equals('$arg_includeItemsFromAllDrives'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeSubscribed']!.first,
          unittest.equals('$arg_includeSubscribed'),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
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
          queryMap['spaces']!.first,
          unittest.equals(arg_spaces),
        );
        unittest.expect(
          queryMap['startChangeId']!.first,
          unittest.equals(arg_startChangeId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['teamDriveId']!.first,
          unittest.equals(arg_teamDriveId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChangeList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          driveId: arg_driveId,
          includeCorpusRemovals: arg_includeCorpusRemovals,
          includeDeleted: arg_includeDeleted,
          includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          includeSubscribed: arg_includeSubscribed,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          spaces: arg_spaces,
          startChangeId: arg_startChangeId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkChangeList(response as api.ChangeList);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).changes;
      final arg_request = buildChannel();
      final arg_driveId = 'foo';
      final arg_includeCorpusRemovals = true;
      final arg_includeDeleted = true;
      final arg_includeItemsFromAllDrives = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_includeSubscribed = true;
      final arg_includeTeamDriveItems = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_spaces = 'foo';
      final arg_startChangeId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_teamDriveId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('changes/watch'),
        );
        pathOffset += 13;

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
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['includeCorpusRemovals']!.first,
          unittest.equals('$arg_includeCorpusRemovals'),
        );
        unittest.expect(
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
        );
        unittest.expect(
          queryMap['includeItemsFromAllDrives']!.first,
          unittest.equals('$arg_includeItemsFromAllDrives'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeSubscribed']!.first,
          unittest.equals('$arg_includeSubscribed'),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
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
          queryMap['spaces']!.first,
          unittest.equals(arg_spaces),
        );
        unittest.expect(
          queryMap['startChangeId']!.first,
          unittest.equals(arg_startChangeId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['teamDriveId']!.first,
          unittest.equals(arg_teamDriveId),
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
      final response = await res.watch(arg_request,
          driveId: arg_driveId,
          includeCorpusRemovals: arg_includeCorpusRemovals,
          includeDeleted: arg_includeDeleted,
          includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          includeSubscribed: arg_includeSubscribed,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          spaces: arg_spaces,
          startChangeId: arg_startChangeId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).channels;
      final arg_request = buildChannel();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('channels/stop'),
        );
        pathOffset += 13;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.stop(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-ChildrenResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).children;
      final arg_folderId = 'foo';
      final arg_childId = 'foo';
      final arg_enforceSingleParent = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/children/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/children/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_childId'),
        );

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
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
      await res.delete(arg_folderId, arg_childId,
          enforceSingleParent: arg_enforceSingleParent, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).children;
      final arg_folderId = 'foo';
      final arg_childId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/children/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/children/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_childId'),
        );

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
        final resp = convert.json.encode(buildChildReference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_folderId, arg_childId, $fields: arg_$fields);
      checkChildReference(response as api.ChildReference);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).children;
      final arg_request = buildChildReference();
      final arg_folderId = 'foo';
      final arg_enforceSingleParent = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChildReference.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChildReference(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/children', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/children'),
        );
        pathOffset += 9;

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChildReference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_folderId,
          enforceSingleParent: arg_enforceSingleParent,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkChildReference(response as api.ChildReference);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).children;
      final arg_folderId = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/children', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/children'),
        );
        pathOffset += 9;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChildList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_folderId,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          q: arg_q,
          $fields: arg_$fields);
      checkChildList(response as api.ChildList);
    });
  });

  unittest.group('resource-CommentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_fileId, arg_commentId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_includeDeleted = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

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
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId, arg_commentId,
          includeDeleted: arg_includeDeleted, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_request = buildComment();
      final arg_fileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/comments'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_fileId, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_fileId = 'foo';
      final arg_includeDeleted = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_updatedMin = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/comments'),
        );
        pathOffset += 9;

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
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
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
          queryMap['updatedMin']!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId,
          includeDeleted: arg_includeDeleted,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          updatedMin: arg_updatedMin,
          $fields: arg_$fields);
      checkCommentList(response as api.CommentList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_request = buildComment();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

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
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_fileId, arg_commentId,
          $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_request = buildComment();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );

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
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_fileId, arg_commentId,
          $fields: arg_$fields);
      checkComment(response as api.Comment);
    });
  });

  unittest.group('resource-DrivesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_driveId = 'foo';
      final arg_allowItemDeletion = true;
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('drives/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_driveId'),
        );

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
          queryMap['allowItemDeletion']!.first,
          unittest.equals('$arg_allowItemDeletion'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
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
      await res.delete(arg_driveId,
          allowItemDeletion: arg_allowItemDeletion,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_driveId = 'foo';
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('drives/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_driveId'),
        );

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
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_driveId,
          useDomainAdminAccess: arg_useDomainAdminAccess, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });

    unittest.test('method--hide', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_driveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('drives/'),
        );
        pathOffset += 7;
        index = path.indexOf('/hide', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_driveId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/hide'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.hide(arg_driveId, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_request = buildDrive();
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Drive.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDrive(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('drives'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_requestId, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('drives'),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDriveList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          q: arg_q,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkDriveList(response as api.DriveList);
    });

    unittest.test('method--unhide', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_driveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('drives/'),
        );
        pathOffset += 7;
        index = path.indexOf('/unhide', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_driveId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/unhide'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unhide(arg_driveId, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_request = buildDrive();
      final arg_driveId = 'foo';
      final arg_useDomainAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Drive.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDrive(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('drives/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_driveId'),
        );

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
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_driveId,
          useDomainAdminAccess: arg_useDomainAdminAccess, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });
  });

  unittest.group('resource-FilesResource', () {
    unittest.test('method--copy', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_fileId = 'foo';
      final arg_convert = true;
      final arg_enforceSingleParent = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_ocr = true;
      final arg_ocrLanguage = 'foo';
      final arg_pinned = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_timedTextLanguage = 'foo';
      final arg_timedTextTrackName = 'foo';
      final arg_visibility = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.File.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFile(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/copy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/copy'),
        );
        pathOffset += 5;

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
          queryMap['convert']!.first,
          unittest.equals('$arg_convert'),
        );
        unittest.expect(
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['ocr']!.first,
          unittest.equals('$arg_ocr'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
        );
        unittest.expect(
          queryMap['pinned']!.first,
          unittest.equals('$arg_pinned'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['timedTextLanguage']!.first,
          unittest.equals(arg_timedTextLanguage),
        );
        unittest.expect(
          queryMap['timedTextTrackName']!.first,
          unittest.equals(arg_timedTextTrackName),
        );
        unittest.expect(
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.copy(arg_request, arg_fileId,
          convert: arg_convert,
          enforceSingleParent: arg_enforceSingleParent,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          ocr: arg_ocr,
          ocrLanguage: arg_ocrLanguage,
          pinned: arg_pinned,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          timedTextLanguage: arg_timedTextLanguage,
          timedTextTrackName: arg_timedTextTrackName,
          visibility: arg_visibility,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_enforceSingleParent = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
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
      await res.delete(arg_fileId,
          enforceSingleParent: arg_enforceSingleParent,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
    });

    unittest.test('method--emptyTrash', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_enforceSingleParent = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('files/trash'),
        );
        pathOffset += 11;

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
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
      await res.emptyTrash(
          enforceSingleParent: arg_enforceSingleParent, $fields: arg_$fields);
    });

    unittest.test('method--export', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_mimeType = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/export', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/export'),
        );
        pathOffset += 7;

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
          queryMap['mimeType']!.first,
          unittest.equals(arg_mimeType),
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
      await res.export(arg_fileId, arg_mimeType, $fields: arg_$fields);
    });

    unittest.test('method--generateIds', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_maxResults = 42;
      final arg_space = 'foo';
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('files/generateIds'),
        );
        pathOffset += 17;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['space']!.first,
          unittest.equals(arg_space),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGeneratedIds());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateIds(
          maxResults: arg_maxResults,
          space: arg_space,
          type: arg_type,
          $fields: arg_$fields);
      checkGeneratedIds(response as api.GeneratedIds);
    });

    unittest.test('method--get', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_acknowledgeAbuse = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_projection = 'foo';
      final arg_revisionId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_updateViewedDate = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );

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
          queryMap['acknowledgeAbuse']!.first,
          unittest.equals('$arg_acknowledgeAbuse'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['revisionId']!.first,
          unittest.equals(arg_revisionId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['updateViewedDate']!.first,
          unittest.equals('$arg_updateViewedDate'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId,
          acknowledgeAbuse: arg_acknowledgeAbuse,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          projection: arg_projection,
          revisionId: arg_revisionId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          updateViewedDate: arg_updateViewedDate,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_convert = true;
      final arg_enforceSingleParent = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_ocr = true;
      final arg_ocrLanguage = 'foo';
      final arg_pinned = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_timedTextLanguage = 'foo';
      final arg_timedTextTrackName = 'foo';
      final arg_useContentAsIndexableText = true;
      final arg_visibility = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.File.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFile(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('files'),
        );
        pathOffset += 5;

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
          queryMap['convert']!.first,
          unittest.equals('$arg_convert'),
        );
        unittest.expect(
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['ocr']!.first,
          unittest.equals('$arg_ocr'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
        );
        unittest.expect(
          queryMap['pinned']!.first,
          unittest.equals('$arg_pinned'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['timedTextLanguage']!.first,
          unittest.equals(arg_timedTextLanguage),
        );
        unittest.expect(
          queryMap['timedTextTrackName']!.first,
          unittest.equals(arg_timedTextTrackName),
        );
        unittest.expect(
          queryMap['useContentAsIndexableText']!.first,
          unittest.equals('$arg_useContentAsIndexableText'),
        );
        unittest.expect(
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          convert: arg_convert,
          enforceSingleParent: arg_enforceSingleParent,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          ocr: arg_ocr,
          ocrLanguage: arg_ocrLanguage,
          pinned: arg_pinned,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          timedTextLanguage: arg_timedTextLanguage,
          timedTextTrackName: arg_timedTextTrackName,
          useContentAsIndexableText: arg_useContentAsIndexableText,
          visibility: arg_visibility,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_corpora = 'foo';
      final arg_corpus = 'foo';
      final arg_driveId = 'foo';
      final arg_includeItemsFromAllDrives = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_includeTeamDriveItems = true;
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_projection = 'foo';
      final arg_q = 'foo';
      final arg_spaces = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_teamDriveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('files'),
        );
        pathOffset += 5;

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
          queryMap['corpora']!.first,
          unittest.equals(arg_corpora),
        );
        unittest.expect(
          queryMap['corpus']!.first,
          unittest.equals(arg_corpus),
        );
        unittest.expect(
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['includeItemsFromAllDrives']!.first,
          unittest.equals('$arg_includeItemsFromAllDrives'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['spaces']!.first,
          unittest.equals(arg_spaces),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['teamDriveId']!.first,
          unittest.equals(arg_teamDriveId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          corpora: arg_corpora,
          corpus: arg_corpus,
          driveId: arg_driveId,
          includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          projection: arg_projection,
          q: arg_q,
          spaces: arg_spaces,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkFileList(response as api.FileList);
    });

    unittest.test('method--listLabels', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/listLabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/listLabels'),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildLabelList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listLabels(arg_fileId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLabelList(response as api.LabelList);
    });

    unittest.test('method--modifyLabels', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildModifyLabelsRequest();
      final arg_fileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyLabelsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/modifyLabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/modifyLabels'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildModifyLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.modifyLabels(arg_request, arg_fileId, $fields: arg_$fields);
      checkModifyLabelsResponse(response as api.ModifyLabelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_fileId = 'foo';
      final arg_addParents = 'foo';
      final arg_convert = true;
      final arg_enforceSingleParent = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_modifiedDateBehavior = 'foo';
      final arg_newRevision = true;
      final arg_ocr = true;
      final arg_ocrLanguage = 'foo';
      final arg_pinned = true;
      final arg_removeParents = 'foo';
      final arg_setModifiedDate = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_timedTextLanguage = 'foo';
      final arg_timedTextTrackName = 'foo';
      final arg_updateViewedDate = true;
      final arg_useContentAsIndexableText = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.File.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFile(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );

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
          queryMap['addParents']!.first,
          unittest.equals(arg_addParents),
        );
        unittest.expect(
          queryMap['convert']!.first,
          unittest.equals('$arg_convert'),
        );
        unittest.expect(
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['modifiedDateBehavior']!.first,
          unittest.equals(arg_modifiedDateBehavior),
        );
        unittest.expect(
          queryMap['newRevision']!.first,
          unittest.equals('$arg_newRevision'),
        );
        unittest.expect(
          queryMap['ocr']!.first,
          unittest.equals('$arg_ocr'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
        );
        unittest.expect(
          queryMap['pinned']!.first,
          unittest.equals('$arg_pinned'),
        );
        unittest.expect(
          queryMap['removeParents']!.first,
          unittest.equals(arg_removeParents),
        );
        unittest.expect(
          queryMap['setModifiedDate']!.first,
          unittest.equals('$arg_setModifiedDate'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['timedTextLanguage']!.first,
          unittest.equals(arg_timedTextLanguage),
        );
        unittest.expect(
          queryMap['timedTextTrackName']!.first,
          unittest.equals(arg_timedTextTrackName),
        );
        unittest.expect(
          queryMap['updateViewedDate']!.first,
          unittest.equals('$arg_updateViewedDate'),
        );
        unittest.expect(
          queryMap['useContentAsIndexableText']!.first,
          unittest.equals('$arg_useContentAsIndexableText'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_fileId,
          addParents: arg_addParents,
          convert: arg_convert,
          enforceSingleParent: arg_enforceSingleParent,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          modifiedDateBehavior: arg_modifiedDateBehavior,
          newRevision: arg_newRevision,
          ocr: arg_ocr,
          ocrLanguage: arg_ocrLanguage,
          pinned: arg_pinned,
          removeParents: arg_removeParents,
          setModifiedDate: arg_setModifiedDate,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          timedTextLanguage: arg_timedTextLanguage,
          timedTextTrackName: arg_timedTextTrackName,
          updateViewedDate: arg_updateViewedDate,
          useContentAsIndexableText: arg_useContentAsIndexableText,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--touch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/touch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/touch'),
        );
        pathOffset += 6;

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
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.touch(arg_fileId,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--trash', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/trash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/trash'),
        );
        pathOffset += 6;

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
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.trash(arg_fileId,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--untrash', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_fileId = 'foo';
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/untrash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/untrash'),
        );
        pathOffset += 8;

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
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.untrash(arg_fileId,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--update', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_fileId = 'foo';
      final arg_addParents = 'foo';
      final arg_convert = true;
      final arg_enforceSingleParent = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_modifiedDateBehavior = 'foo';
      final arg_newRevision = true;
      final arg_ocr = true;
      final arg_ocrLanguage = 'foo';
      final arg_pinned = true;
      final arg_removeParents = 'foo';
      final arg_setModifiedDate = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_timedTextLanguage = 'foo';
      final arg_timedTextTrackName = 'foo';
      final arg_updateViewedDate = true;
      final arg_useContentAsIndexableText = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.File.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFile(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );

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
          queryMap['addParents']!.first,
          unittest.equals(arg_addParents),
        );
        unittest.expect(
          queryMap['convert']!.first,
          unittest.equals('$arg_convert'),
        );
        unittest.expect(
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['modifiedDateBehavior']!.first,
          unittest.equals(arg_modifiedDateBehavior),
        );
        unittest.expect(
          queryMap['newRevision']!.first,
          unittest.equals('$arg_newRevision'),
        );
        unittest.expect(
          queryMap['ocr']!.first,
          unittest.equals('$arg_ocr'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
        );
        unittest.expect(
          queryMap['pinned']!.first,
          unittest.equals('$arg_pinned'),
        );
        unittest.expect(
          queryMap['removeParents']!.first,
          unittest.equals(arg_removeParents),
        );
        unittest.expect(
          queryMap['setModifiedDate']!.first,
          unittest.equals('$arg_setModifiedDate'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['timedTextLanguage']!.first,
          unittest.equals(arg_timedTextLanguage),
        );
        unittest.expect(
          queryMap['timedTextTrackName']!.first,
          unittest.equals(arg_timedTextTrackName),
        );
        unittest.expect(
          queryMap['updateViewedDate']!.first,
          unittest.equals('$arg_updateViewedDate'),
        );
        unittest.expect(
          queryMap['useContentAsIndexableText']!.first,
          unittest.equals('$arg_useContentAsIndexableText'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_fileId,
          addParents: arg_addParents,
          convert: arg_convert,
          enforceSingleParent: arg_enforceSingleParent,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          modifiedDateBehavior: arg_modifiedDateBehavior,
          newRevision: arg_newRevision,
          ocr: arg_ocr,
          ocrLanguage: arg_ocrLanguage,
          pinned: arg_pinned,
          removeParents: arg_removeParents,
          setModifiedDate: arg_setModifiedDate,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          timedTextLanguage: arg_timedTextLanguage,
          timedTextTrackName: arg_timedTextTrackName,
          updateViewedDate: arg_updateViewedDate,
          useContentAsIndexableText: arg_useContentAsIndexableText,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--watch', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildChannel();
      final arg_fileId = 'foo';
      final arg_acknowledgeAbuse = true;
      final arg_includeLabels = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_projection = 'foo';
      final arg_revisionId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_updateViewedDate = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/watch'),
        );
        pathOffset += 6;

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
          queryMap['acknowledgeAbuse']!.first,
          unittest.equals('$arg_acknowledgeAbuse'),
        );
        unittest.expect(
          queryMap['includeLabels']!.first,
          unittest.equals(arg_includeLabels),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['revisionId']!.first,
          unittest.equals(arg_revisionId),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['updateViewedDate']!.first,
          unittest.equals('$arg_updateViewedDate'),
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
      final response = await res.watch(arg_request, arg_fileId,
          acknowledgeAbuse: arg_acknowledgeAbuse,
          includeLabels: arg_includeLabels,
          includePermissionsForView: arg_includePermissionsForView,
          projection: arg_projection,
          revisionId: arg_revisionId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          updateViewedDate: arg_updateViewedDate,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-ParentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).parents;
      final arg_fileId = 'foo';
      final arg_parentId = 'foo';
      final arg_enforceSingleParent = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/parents/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/parents/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_parentId'),
        );

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
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
      await res.delete(arg_fileId, arg_parentId,
          enforceSingleParent: arg_enforceSingleParent, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).parents;
      final arg_fileId = 'foo';
      final arg_parentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/parents/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/parents/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_parentId'),
        );

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
        final resp = convert.json.encode(buildParentReference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_fileId, arg_parentId, $fields: arg_$fields);
      checkParentReference(response as api.ParentReference);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).parents;
      final arg_request = buildParentReference();
      final arg_fileId = 'foo';
      final arg_enforceSingleParent = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ParentReference.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkParentReference(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/parents', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/parents'),
        );
        pathOffset += 8;

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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildParentReference());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_fileId,
          enforceSingleParent: arg_enforceSingleParent,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkParentReference(response as api.ParentReference);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).parents;
      final arg_fileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/parents', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/parents'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildParentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId, $fields: arg_$fields);
      checkParentList(response as api.ParentList);
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_fileId = 'foo';
      final arg_permissionId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
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
      await res.delete(arg_fileId, arg_permissionId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_fileId = 'foo';
      final arg_permissionId = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId, arg_permissionId,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });

    unittest.test('method--getIdForEmail', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_email = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('permissionIds/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_email'),
        );

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
        final resp = convert.json.encode(buildPermissionId());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIdForEmail(arg_email, $fields: arg_$fields);
      checkPermissionId(response as api.PermissionId);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_request = buildPermission();
      final arg_fileId = 'foo';
      final arg_emailMessage = 'foo';
      final arg_enforceSingleParent = true;
      final arg_moveToNewOwnersRoot = true;
      final arg_sendNotificationEmails = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_useDomainAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Permission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPermission(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/permissions'),
        );
        pathOffset += 12;

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
          queryMap['emailMessage']!.first,
          unittest.equals(arg_emailMessage),
        );
        unittest.expect(
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['moveToNewOwnersRoot']!.first,
          unittest.equals('$arg_moveToNewOwnersRoot'),
        );
        unittest.expect(
          queryMap['sendNotificationEmails']!.first,
          unittest.equals('$arg_sendNotificationEmails'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_fileId,
          emailMessage: arg_emailMessage,
          enforceSingleParent: arg_enforceSingleParent,
          moveToNewOwnersRoot: arg_moveToNewOwnersRoot,
          sendNotificationEmails: arg_sendNotificationEmails,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_fileId = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/permissions'),
        );
        pathOffset += 12;

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
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
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
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermissionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId,
          includePermissionsForView: arg_includePermissionsForView,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermissionList(response as api.PermissionList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_request = buildPermission();
      final arg_fileId = 'foo';
      final arg_permissionId = 'foo';
      final arg_removeExpiration = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_transferOwnership = true;
      final arg_useDomainAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Permission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPermission(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
          queryMap['removeExpiration']!.first,
          unittest.equals('$arg_removeExpiration'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['transferOwnership']!.first,
          unittest.equals('$arg_transferOwnership'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_fileId, arg_permissionId,
          removeExpiration: arg_removeExpiration,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          transferOwnership: arg_transferOwnership,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_request = buildPermission();
      final arg_fileId = 'foo';
      final arg_permissionId = 'foo';
      final arg_removeExpiration = true;
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
      final arg_transferOwnership = true;
      final arg_useDomainAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Permission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPermission(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
          queryMap['removeExpiration']!.first,
          unittest.equals('$arg_removeExpiration'),
        );
        unittest.expect(
          queryMap['supportsAllDrives']!.first,
          unittest.equals('$arg_supportsAllDrives'),
        );
        unittest.expect(
          queryMap['supportsTeamDrives']!.first,
          unittest.equals('$arg_supportsTeamDrives'),
        );
        unittest.expect(
          queryMap['transferOwnership']!.first,
          unittest.equals('$arg_transferOwnership'),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_fileId, arg_permissionId,
          removeExpiration: arg_removeExpiration,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          transferOwnership: arg_transferOwnership,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_fileId = 'foo';
      final arg_propertyKey = 'foo';
      final arg_visibility = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/properties/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_propertyKey'),
        );

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
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
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
      await res.delete(arg_fileId, arg_propertyKey,
          visibility: arg_visibility, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_fileId = 'foo';
      final arg_propertyKey = 'foo';
      final arg_visibility = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/properties/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_propertyKey'),
        );

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
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId, arg_propertyKey,
          visibility: arg_visibility, $fields: arg_$fields);
      checkProperty(response as api.Property);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_request = buildProperty();
      final arg_fileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Property.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProperty(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/properties'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_fileId, $fields: arg_$fields);
      checkProperty(response as api.Property);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_fileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/properties'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildPropertyList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId, $fields: arg_$fields);
      checkPropertyList(response as api.PropertyList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_request = buildProperty();
      final arg_fileId = 'foo';
      final arg_propertyKey = 'foo';
      final arg_visibility = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Property.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProperty(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/properties/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_propertyKey'),
        );

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
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_fileId, arg_propertyKey,
          visibility: arg_visibility, $fields: arg_$fields);
      checkProperty(response as api.Property);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).properties;
      final arg_request = buildProperty();
      final arg_fileId = 'foo';
      final arg_propertyKey = 'foo';
      final arg_visibility = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Property.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProperty(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/properties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/properties/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_propertyKey'),
        );

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
          queryMap['visibility']!.first,
          unittest.equals(arg_visibility),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_fileId, arg_propertyKey,
          visibility: arg_visibility, $fields: arg_$fields);
      checkProperty(response as api.Property);
    });
  });

  unittest.group('resource-RepliesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_replyId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/replies/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_replyId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_fileId, arg_commentId, arg_replyId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_replyId = 'foo';
      final arg_includeDeleted = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/replies/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_replyId'),
        );

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
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId, arg_commentId, arg_replyId,
          includeDeleted: arg_includeDeleted, $fields: arg_$fields);
      checkCommentReply(response as api.CommentReply);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_request = buildCommentReply();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommentReply.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommentReply(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/replies'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildCommentReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_fileId, arg_commentId,
          $fields: arg_$fields);
      checkCommentReply(response as api.CommentReply);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_includeDeleted = true;
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/replies'),
        );
        pathOffset += 8;

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
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCommentReplyList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId, arg_commentId,
          includeDeleted: arg_includeDeleted,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCommentReplyList(response as api.CommentReplyList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_request = buildCommentReply();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_replyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommentReply.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommentReply(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/replies/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_replyId'),
        );

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
        final resp = convert.json.encode(buildCommentReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_fileId, arg_commentId, arg_replyId,
          $fields: arg_$fields);
      checkCommentReply(response as api.CommentReply);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_request = buildCommentReply();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_replyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommentReply.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommentReply(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/comments/'),
        );
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/replies/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_replyId'),
        );

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
        final resp = convert.json.encode(buildCommentReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_fileId, arg_commentId, arg_replyId,
          $fields: arg_$fields);
      checkCommentReply(response as api.CommentReply);
    });
  });

  unittest.group('resource-RevisionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_fileId = 'foo';
      final arg_revisionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/revisions/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_fileId, arg_revisionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_fileId = 'foo';
      final arg_revisionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/revisions/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionId'),
        );

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
        final resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_fileId, arg_revisionId, $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_fileId = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/revisions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/revisions'),
        );
        pathOffset += 10;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildRevisionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkRevisionList(response as api.RevisionList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_request = buildRevision();
      final arg_fileId = 'foo';
      final arg_revisionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Revision.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRevision(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/revisions/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionId'),
        );

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
        final resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_fileId, arg_revisionId,
          $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_request = buildRevision();
      final arg_fileId = 'foo';
      final arg_revisionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Revision.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRevision(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/revisions/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionId'),
        );

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
        final resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_fileId, arg_revisionId,
          $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });
  });

  unittest.group('resource-TeamdrivesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_teamDriveId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('teamdrives/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_teamDriveId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_teamDriveId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_teamDriveId = 'foo';
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('teamdrives/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_teamDriveId'),
        );

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
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_teamDriveId,
          useDomainAdminAccess: arg_useDomainAdminAccess, $fields: arg_$fields);
      checkTeamDrive(response as api.TeamDrive);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_request = buildTeamDrive();
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TeamDrive.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTeamDrive(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('teamdrives'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_requestId, $fields: arg_$fields);
      checkTeamDrive(response as api.TeamDrive);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
      final arg_useDomainAdminAccess = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('teamdrives'),
        );
        pathOffset += 10;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTeamDriveList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          q: arg_q,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkTeamDriveList(response as api.TeamDriveList);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_request = buildTeamDrive();
      final arg_teamDriveId = 'foo';
      final arg_useDomainAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.TeamDrive.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTeamDrive(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v2/'),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('teamdrives/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_teamDriveId'),
        );

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
          queryMap['useDomainAdminAccess']!.first,
          unittest.equals('$arg_useDomainAdminAccess'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_teamDriveId,
          useDomainAdminAccess: arg_useDomainAdminAccess, $fields: arg_$fields);
      checkTeamDrive(response as api.TeamDrive);
    });
  });
}
