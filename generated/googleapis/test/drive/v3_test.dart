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

import 'package:googleapis/drive/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.List<api.AboutDriveThemes> buildUnnamed0() => [
      buildAboutDriveThemes(),
      buildAboutDriveThemes(),
    ];

void checkUnnamed0(core.List<api.AboutDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutDriveThemes(o[0]);
  checkAboutDriveThemes(o[1]);
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

core.Map<core.String, core.List<core.String>> buildUnnamed2() => {
      'x': buildUnnamed1(),
      'y': buildUnnamed1(),
    };

void checkUnnamed2(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1(o['x']!);
  checkUnnamed1(o['y']!);
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

core.Map<core.String, core.List<core.String>> buildUnnamed5() => {
      'x': buildUnnamed4(),
      'y': buildUnnamed4(),
    };

void checkUnnamed5(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4(o['x']!);
  checkUnnamed4(o['y']!);
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

core.int buildCounterAboutStorageQuota = 0;
api.AboutStorageQuota buildAboutStorageQuota() {
  final o = api.AboutStorageQuota();
  buildCounterAboutStorageQuota++;
  if (buildCounterAboutStorageQuota < 3) {
    o.limit = 'foo';
    o.usage = 'foo';
    o.usageInDrive = 'foo';
    o.usageInDriveTrash = 'foo';
  }
  buildCounterAboutStorageQuota--;
  return o;
}

void checkAboutStorageQuota(api.AboutStorageQuota o) {
  buildCounterAboutStorageQuota++;
  if (buildCounterAboutStorageQuota < 3) {
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usageInDrive!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usageInDriveTrash!,
      unittest.equals('foo'),
    );
  }
  buildCounterAboutStorageQuota--;
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

core.List<api.AboutTeamDriveThemes> buildUnnamed7() => [
      buildAboutTeamDriveThemes(),
      buildAboutTeamDriveThemes(),
    ];

void checkUnnamed7(core.List<api.AboutTeamDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutTeamDriveThemes(o[0]);
  checkAboutTeamDriveThemes(o[1]);
}

core.int buildCounterAbout = 0;
api.About buildAbout() {
  final o = api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.appInstalled = true;
    o.canCreateDrives = true;
    o.canCreateTeamDrives = true;
    o.driveThemes = buildUnnamed0();
    o.exportFormats = buildUnnamed2();
    o.folderColorPalette = buildUnnamed3();
    o.importFormats = buildUnnamed5();
    o.kind = 'foo';
    o.maxImportSizes = buildUnnamed6();
    o.maxUploadSize = 'foo';
    o.storageQuota = buildAboutStorageQuota();
    o.teamDriveThemes = buildUnnamed7();
    o.user = buildUser();
  }
  buildCounterAbout--;
  return o;
}

void checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    unittest.expect(o.appInstalled!, unittest.isTrue);
    unittest.expect(o.canCreateDrives!, unittest.isTrue);
    unittest.expect(o.canCreateTeamDrives!, unittest.isTrue);
    checkUnnamed0(o.driveThemes!);
    checkUnnamed2(o.exportFormats!);
    checkUnnamed3(o.folderColorPalette!);
    checkUnnamed5(o.importFormats!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.maxImportSizes!);
    unittest.expect(
      o.maxUploadSize!,
      unittest.equals('foo'),
    );
    checkAboutStorageQuota(o.storageQuota!);
    checkUnnamed7(o.teamDriveThemes!);
    checkUser(o.user!);
  }
  buildCounterAbout--;
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  final o = api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.changeType = 'foo';
    o.drive = buildDrive();
    o.driveId = 'foo';
    o.file = buildFile();
    o.fileId = 'foo';
    o.kind = 'foo';
    o.removed = true;
    o.teamDrive = buildTeamDrive();
    o.teamDriveId = 'foo';
    o.time = core.DateTime.parse('2002-02-27T14:01:02');
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
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.removed!, unittest.isTrue);
    checkTeamDrive(o.teamDrive!);
    unittest.expect(
      o.teamDriveId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.time!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChange--;
}

core.List<api.Change> buildUnnamed8() => [
      buildChange(),
      buildChange(),
    ];

void checkUnnamed8(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangeList = 0;
api.ChangeList buildChangeList() {
  final o = api.ChangeList();
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    o.changes = buildUnnamed8();
    o.kind = 'foo';
    o.newStartPageToken = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChangeList--;
  return o;
}

void checkChangeList(api.ChangeList o) {
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    checkUnnamed8(o.changes!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newStartPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeList--;
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

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed9();
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
    checkUnnamed9(o.params!);
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

core.int buildCounterCommentQuotedFileContent = 0;
api.CommentQuotedFileContent buildCommentQuotedFileContent() {
  final o = api.CommentQuotedFileContent();
  buildCounterCommentQuotedFileContent++;
  if (buildCounterCommentQuotedFileContent < 3) {
    o.mimeType = 'foo';
    o.value = 'foo';
  }
  buildCounterCommentQuotedFileContent--;
  return o;
}

void checkCommentQuotedFileContent(api.CommentQuotedFileContent o) {
  buildCounterCommentQuotedFileContent++;
  if (buildCounterCommentQuotedFileContent < 3) {
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentQuotedFileContent--;
}

core.List<api.Reply> buildUnnamed10() => [
      buildReply(),
      buildReply(),
    ];

void checkUnnamed10(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.anchor = 'foo';
    o.author = buildUser();
    o.content = 'foo';
    o.createdTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.deleted = true;
    o.htmlContent = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.modifiedTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.quotedFileContent = buildCommentQuotedFileContent();
    o.replies = buildUnnamed10();
    o.resolved = true;
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
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.htmlContent!,
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
      o.modifiedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkCommentQuotedFileContent(o.quotedFileContent!);
    checkUnnamed10(o.replies!);
    unittest.expect(o.resolved!, unittest.isTrue);
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed11() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed11(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
api.CommentList buildCommentList() {
  final o = api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.comments = buildUnnamed11();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCommentList--;
  return o;
}

void checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed11(o.comments!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommentList--;
}

core.int buildCounterContentRestriction = 0;
api.ContentRestriction buildContentRestriction() {
  final o = api.ContentRestriction();
  buildCounterContentRestriction++;
  if (buildCounterContentRestriction < 3) {
    o.readOnly = true;
    o.reason = 'foo';
    o.restrictingUser = buildUser();
    o.restrictionTime = core.DateTime.parse('2002-02-27T14:01:02');
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
      o.restrictionTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
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
    o.createdTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.hidden = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
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
      o.createdTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
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
    checkDriveRestrictions(o.restrictions!);
    unittest.expect(
      o.themeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDrive--;
}

core.List<api.Drive> buildUnnamed12() => [
      buildDrive(),
      buildDrive(),
    ];

void checkUnnamed12(core.List<api.Drive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDrive(o[0]);
  checkDrive(o[1]);
}

core.int buildCounterDriveList = 0;
api.DriveList buildDriveList() {
  final o = api.DriveList();
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    o.drives = buildUnnamed12();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDriveList--;
  return o;
}

void checkDriveList(api.DriveList o) {
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    checkUnnamed12(o.drives!);
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

core.Map<core.String, core.String?> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String?> o) {
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

core.int buildCounterFileCapabilities = 0;
api.FileCapabilities buildFileCapabilities() {
  final o = api.FileCapabilities();
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    o.canAddChildren = true;
    o.canAddFolderFromAnotherDrive = true;
    o.canAddMyDriveParent = true;
    o.canChangeCopyRequiresWriterPermission = true;
    o.canChangeSecurityUpdateEnabled = true;
    o.canChangeViewersCanCopyContent = true;
    o.canComment = true;
    o.canCopy = true;
    o.canDelete = true;
    o.canDeleteChildren = true;
    o.canDownload = true;
    o.canEdit = true;
    o.canListChildren = true;
    o.canModifyContent = true;
    o.canModifyContentRestriction = true;
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
    unittest.expect(o.canAddChildren!, unittest.isTrue);
    unittest.expect(o.canAddFolderFromAnotherDrive!, unittest.isTrue);
    unittest.expect(o.canAddMyDriveParent!, unittest.isTrue);
    unittest.expect(o.canChangeCopyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(o.canChangeSecurityUpdateEnabled!, unittest.isTrue);
    unittest.expect(o.canChangeViewersCanCopyContent!, unittest.isTrue);
    unittest.expect(o.canComment!, unittest.isTrue);
    unittest.expect(o.canCopy!, unittest.isTrue);
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDeleteChildren!, unittest.isTrue);
    unittest.expect(o.canDownload!, unittest.isTrue);
    unittest.expect(o.canEdit!, unittest.isTrue);
    unittest.expect(o.canListChildren!, unittest.isTrue);
    unittest.expect(o.canModifyContent!, unittest.isTrue);
    unittest.expect(o.canModifyContentRestriction!, unittest.isTrue);
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

core.int buildCounterFileContentHintsThumbnail = 0;
api.FileContentHintsThumbnail buildFileContentHintsThumbnail() {
  final o = api.FileContentHintsThumbnail();
  buildCounterFileContentHintsThumbnail++;
  if (buildCounterFileContentHintsThumbnail < 3) {
    o.image = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterFileContentHintsThumbnail--;
  return o;
}

void checkFileContentHintsThumbnail(api.FileContentHintsThumbnail o) {
  buildCounterFileContentHintsThumbnail++;
  if (buildCounterFileContentHintsThumbnail < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileContentHintsThumbnail--;
}

core.int buildCounterFileContentHints = 0;
api.FileContentHints buildFileContentHints() {
  final o = api.FileContentHints();
  buildCounterFileContentHints++;
  if (buildCounterFileContentHints < 3) {
    o.indexableText = 'foo';
    o.thumbnail = buildFileContentHintsThumbnail();
  }
  buildCounterFileContentHints--;
  return o;
}

void checkFileContentHints(api.FileContentHints o) {
  buildCounterFileContentHints++;
  if (buildCounterFileContentHints < 3) {
    unittest.expect(
      o.indexableText!,
      unittest.equals('foo'),
    );
    checkFileContentHintsThumbnail(o.thumbnail!);
  }
  buildCounterFileContentHints--;
}

core.List<api.ContentRestriction> buildUnnamed14() => [
      buildContentRestriction(),
      buildContentRestriction(),
    ];

void checkUnnamed14(core.List<api.ContentRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentRestriction(o[0]);
  checkContentRestriction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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
    o.time = 'foo';
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
      o.time!,
      unittest.equals('foo'),
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

core.List<api.User> buildUnnamed16() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed16(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
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

core.List<api.Permission> buildUnnamed19() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed19(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.Map<core.String, core.String?> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String?> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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
    o.appProperties = buildUnnamed13();
    o.capabilities = buildFileCapabilities();
    o.contentHints = buildFileContentHints();
    o.contentRestrictions = buildUnnamed14();
    o.copyRequiresWriterPermission = true;
    o.createdTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.description = 'foo';
    o.driveId = 'foo';
    o.explicitlyTrashed = true;
    o.exportLinks = buildUnnamed15();
    o.fileExtension = 'foo';
    o.folderColorRgb = 'foo';
    o.fullFileExtension = 'foo';
    o.hasAugmentedPermissions = true;
    o.hasThumbnail = true;
    o.headRevisionId = 'foo';
    o.iconLink = 'foo';
    o.id = 'foo';
    o.imageMediaMetadata = buildFileImageMediaMetadata();
    o.isAppAuthorized = true;
    o.kind = 'foo';
    o.lastModifyingUser = buildUser();
    o.linkShareMetadata = buildFileLinkShareMetadata();
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedByMe = true;
    o.modifiedByMeTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.modifiedTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.name = 'foo';
    o.originalFilename = 'foo';
    o.ownedByMe = true;
    o.owners = buildUnnamed16();
    o.parents = buildUnnamed17();
    o.permissionIds = buildUnnamed18();
    o.permissions = buildUnnamed19();
    o.properties = buildUnnamed20();
    o.quotaBytesUsed = 'foo';
    o.resourceKey = 'foo';
    o.shared = true;
    o.sharedWithMeTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.sharingUser = buildUser();
    o.shortcutDetails = buildFileShortcutDetails();
    o.size = 'foo';
    o.spaces = buildUnnamed21();
    o.starred = true;
    o.teamDriveId = 'foo';
    o.thumbnailLink = 'foo';
    o.thumbnailVersion = 'foo';
    o.trashed = true;
    o.trashedTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.trashingUser = buildUser();
    o.version = 'foo';
    o.videoMediaMetadata = buildFileVideoMediaMetadata();
    o.viewedByMe = true;
    o.viewedByMeTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.viewersCanCopyContent = true;
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
    checkUnnamed13(o.appProperties!);
    checkFileCapabilities(o.capabilities!);
    checkFileContentHints(o.contentHints!);
    checkUnnamed14(o.contentRestrictions!);
    unittest.expect(o.copyRequiresWriterPermission!, unittest.isTrue);
    unittest.expect(
      o.createdTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.driveId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.explicitlyTrashed!, unittest.isTrue);
    checkUnnamed15(o.exportLinks!);
    unittest.expect(
      o.fileExtension!,
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
    unittest.expect(o.isAppAuthorized!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUser(o.lastModifyingUser!);
    checkFileLinkShareMetadata(o.linkShareMetadata!);
    unittest.expect(
      o.md5Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.modifiedByMe!, unittest.isTrue);
    unittest.expect(
      o.modifiedByMeTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.modifiedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalFilename!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ownedByMe!, unittest.isTrue);
    checkUnnamed16(o.owners!);
    checkUnnamed17(o.parents!);
    checkUnnamed18(o.permissionIds!);
    checkUnnamed19(o.permissions!);
    checkUnnamed20(o.properties!);
    unittest.expect(
      o.quotaBytesUsed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceKey!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shared!, unittest.isTrue);
    unittest.expect(
      o.sharedWithMeTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUser(o.sharingUser!);
    checkFileShortcutDetails(o.shortcutDetails!);
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.spaces!);
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(
      o.teamDriveId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.trashed!, unittest.isTrue);
    unittest.expect(
      o.trashedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUser(o.trashingUser!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    checkFileVideoMediaMetadata(o.videoMediaMetadata!);
    unittest.expect(o.viewedByMe!, unittest.isTrue);
    unittest.expect(
      o.viewedByMeTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(o.viewersCanCopyContent!, unittest.isTrue);
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

core.List<api.File> buildUnnamed22() => [
      buildFile(),
      buildFile(),
    ];

void checkUnnamed22(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
api.FileList buildFileList() {
  final o = api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.files = buildUnnamed22();
    o.incompleteSearch = true;
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFileList--;
  return o;
}

void checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    checkUnnamed22(o.files!);
    unittest.expect(o.incompleteSearch!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileList--;
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

core.int buildCounterGeneratedIds = 0;
api.GeneratedIds buildGeneratedIds() {
  final o = api.GeneratedIds();
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    o.ids = buildUnnamed23();
    o.kind = 'foo';
    o.space = 'foo';
  }
  buildCounterGeneratedIds--;
  return o;
}

void checkGeneratedIds(api.GeneratedIds o) {
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    checkUnnamed23(o.ids!);
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

core.int buildCounterPermissionPermissionDetails = 0;
api.PermissionPermissionDetails buildPermissionPermissionDetails() {
  final o = api.PermissionPermissionDetails();
  buildCounterPermissionPermissionDetails++;
  if (buildCounterPermissionPermissionDetails < 3) {
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

core.List<api.PermissionPermissionDetails> buildUnnamed24() => [
      buildPermissionPermissionDetails(),
      buildPermissionPermissionDetails(),
    ];

void checkUnnamed24(core.List<api.PermissionPermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionPermissionDetails(o[0]);
  checkPermissionPermissionDetails(o[1]);
}

core.int buildCounterPermissionTeamDrivePermissionDetails = 0;
api.PermissionTeamDrivePermissionDetails
    buildPermissionTeamDrivePermissionDetails() {
  final o = api.PermissionTeamDrivePermissionDetails();
  buildCounterPermissionTeamDrivePermissionDetails++;
  if (buildCounterPermissionTeamDrivePermissionDetails < 3) {
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

core.List<api.PermissionTeamDrivePermissionDetails> buildUnnamed25() => [
      buildPermissionTeamDrivePermissionDetails(),
      buildPermissionTeamDrivePermissionDetails(),
    ];

void checkUnnamed25(core.List<api.PermissionTeamDrivePermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionTeamDrivePermissionDetails(o[0]);
  checkPermissionTeamDrivePermissionDetails(o[1]);
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.allowFileDiscovery = true;
    o.deleted = true;
    o.displayName = 'foo';
    o.domain = 'foo';
    o.emailAddress = 'foo';
    o.expirationTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.id = 'foo';
    o.kind = 'foo';
    o.permissionDetails = buildUnnamed24();
    o.photoLink = 'foo';
    o.role = 'foo';
    o.teamDrivePermissionDetails = buildUnnamed25();
    o.type = 'foo';
    o.view = 'foo';
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.allowFileDiscovery!, unittest.isTrue);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.permissionDetails!);
    unittest.expect(
      o.photoLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.teamDrivePermissionDetails!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermission--;
}

core.List<api.Permission> buildUnnamed26() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed26(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionList = 0;
api.PermissionList buildPermissionList() {
  final o = api.PermissionList();
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.permissions = buildUnnamed26();
  }
  buildCounterPermissionList--;
  return o;
}

void checkPermissionList(api.PermissionList o) {
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.permissions!);
  }
  buildCounterPermissionList--;
}

core.int buildCounterReply = 0;
api.Reply buildReply() {
  final o = api.Reply();
  buildCounterReply++;
  if (buildCounterReply < 3) {
    o.action = 'foo';
    o.author = buildUser();
    o.content = 'foo';
    o.createdTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.deleted = true;
    o.htmlContent = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.modifiedTime = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterReply--;
  return o;
}

void checkReply(api.Reply o) {
  buildCounterReply++;
  if (buildCounterReply < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkUser(o.author!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.htmlContent!,
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
      o.modifiedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterReply--;
}

core.List<api.Reply> buildUnnamed27() => [
      buildReply(),
      buildReply(),
    ];

void checkUnnamed27(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterReplyList = 0;
api.ReplyList buildReplyList() {
  final o = api.ReplyList();
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.replies = buildUnnamed27();
  }
  buildCounterReplyList--;
  return o;
}

void checkReplyList(api.ReplyList o) {
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.replies!);
  }
  buildCounterReplyList--;
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

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  final o = api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.exportLinks = buildUnnamed28();
    o.id = 'foo';
    o.keepForever = true;
    o.kind = 'foo';
    o.lastModifyingUser = buildUser();
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.originalFilename = 'foo';
    o.publishAuto = true;
    o.published = true;
    o.publishedLink = 'foo';
    o.publishedOutsideDomain = true;
    o.size = 'foo';
  }
  buildCounterRevision--;
  return o;
}

void checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    checkUnnamed28(o.exportLinks!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.keepForever!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUser(o.lastModifyingUser!);
    unittest.expect(
      o.md5Checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifiedTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.originalFilename!,
      unittest.equals('foo'),
    );
    unittest.expect(o.publishAuto!, unittest.isTrue);
    unittest.expect(o.published!, unittest.isTrue);
    unittest.expect(
      o.publishedLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.publishedOutsideDomain!, unittest.isTrue);
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevision--;
}

core.List<api.Revision> buildUnnamed29() => [
      buildRevision(),
      buildRevision(),
    ];

void checkUnnamed29(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.int buildCounterRevisionList = 0;
api.RevisionList buildRevisionList() {
  final o = api.RevisionList();
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed29();
  }
  buildCounterRevisionList--;
  return o;
}

void checkRevisionList(api.RevisionList o) {
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.revisions!);
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
    o.createdTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
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
      o.createdTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
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
    checkTeamDriveRestrictions(o.restrictions!);
    unittest.expect(
      o.themeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeamDrive--;
}

core.List<api.TeamDrive> buildUnnamed30() => [
      buildTeamDrive(),
      buildTeamDrive(),
    ];

void checkUnnamed30(core.List<api.TeamDrive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeamDrive(o[0]);
  checkTeamDrive(o[1]);
}

core.int buildCounterTeamDriveList = 0;
api.TeamDriveList buildTeamDriveList() {
  final o = api.TeamDriveList();
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.teamDrives = buildUnnamed30();
  }
  buildCounterTeamDriveList--;
  return o;
}

void checkTeamDriveList(api.TeamDriveList o) {
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.teamDrives!);
  }
  buildCounterTeamDriveList--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = 'foo';
    o.emailAddress = 'foo';
    o.kind = 'foo';
    o.me = true;
    o.permissionId = 'foo';
    o.photoLink = 'foo';
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
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.me!, unittest.isTrue);
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-AboutDriveThemes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutDriveThemes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutDriveThemes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutDriveThemes(od);
    });
  });

  unittest.group('obj-schema-AboutStorageQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAboutStorageQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AboutStorageQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAboutStorageQuota(od);
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

  unittest.group('obj-schema-CommentQuotedFileContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentQuotedFileContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentQuotedFileContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommentQuotedFileContent(od);
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

  unittest.group('obj-schema-FileContentHintsThumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileContentHintsThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileContentHintsThumbnail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileContentHintsThumbnail(od);
    });
  });

  unittest.group('obj-schema-FileContentHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileContentHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileContentHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileContentHints(od);
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

  unittest.group('obj-schema-PermissionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionList(od);
    });
  });

  unittest.group('obj-schema-Reply', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReply();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Reply.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReply(od);
    });
  });

  unittest.group('obj-schema-ReplyList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplyList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReplyList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReplyList(od);
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
          unittest.equals('drive/v3/'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAbout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get($fields: arg_$fields);
      checkAbout(response as api.About);
    });
  });

  unittest.group('resource-ChangesResource', () {
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
          unittest.equals('drive/v3/'),
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
      final arg_pageToken = 'foo';
      final arg_driveId = 'foo';
      final arg_includeCorpusRemovals = true;
      final arg_includeItemsFromAllDrives = true;
      final arg_includePermissionsForView = 'foo';
      final arg_includeRemoved = true;
      final arg_includeTeamDriveItems = true;
      final arg_pageSize = 42;
      final arg_restrictToMyDrive = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['includeCorpusRemovals']!.first,
          unittest.equals('$arg_includeCorpusRemovals'),
        );
        unittest.expect(
          queryMap['includeItemsFromAllDrives']!.first,
          unittest.equals('$arg_includeItemsFromAllDrives'),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeRemoved']!.first,
          unittest.equals('$arg_includeRemoved'),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['restrictToMyDrive']!.first,
          unittest.equals('$arg_restrictToMyDrive'),
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
        final resp = convert.json.encode(buildChangeList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_pageToken,
          driveId: arg_driveId,
          includeCorpusRemovals: arg_includeCorpusRemovals,
          includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
          includePermissionsForView: arg_includePermissionsForView,
          includeRemoved: arg_includeRemoved,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          pageSize: arg_pageSize,
          restrictToMyDrive: arg_restrictToMyDrive,
          spaces: arg_spaces,
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
      final arg_pageToken = 'foo';
      final arg_driveId = 'foo';
      final arg_includeCorpusRemovals = true;
      final arg_includeItemsFromAllDrives = true;
      final arg_includePermissionsForView = 'foo';
      final arg_includeRemoved = true;
      final arg_includeTeamDriveItems = true;
      final arg_pageSize = 42;
      final arg_restrictToMyDrive = true;
      final arg_spaces = 'foo';
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
          unittest.equals('drive/v3/'),
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
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['driveId']!.first,
          unittest.equals(arg_driveId),
        );
        unittest.expect(
          queryMap['includeCorpusRemovals']!.first,
          unittest.equals('$arg_includeCorpusRemovals'),
        );
        unittest.expect(
          queryMap['includeItemsFromAllDrives']!.first,
          unittest.equals('$arg_includeItemsFromAllDrives'),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeRemoved']!.first,
          unittest.equals('$arg_includeRemoved'),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['restrictToMyDrive']!.first,
          unittest.equals('$arg_restrictToMyDrive'),
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
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(arg_request, arg_pageToken,
          driveId: arg_driveId,
          includeCorpusRemovals: arg_includeCorpusRemovals,
          includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
          includePermissionsForView: arg_includePermissionsForView,
          includeRemoved: arg_includeRemoved,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          pageSize: arg_pageSize,
          restrictToMyDrive: arg_restrictToMyDrive,
          spaces: arg_spaces,
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
          unittest.equals('drive/v3/'),
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

  unittest.group('resource-CommentsResource', () {
    unittest.test('method--create', () async {
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
          unittest.equals('drive/v3/'),
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
          await res.create(arg_request, arg_fileId, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).comments;
      final arg_fileId = 'foo';
      final arg_includeDeleted = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startModifiedTime = 'foo';
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
          unittest.equals('drive/v3/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startModifiedTime']!.first,
          unittest.equals(arg_startModifiedTime),
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
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startModifiedTime: arg_startModifiedTime,
          $fields: arg_$fields);
      checkCommentList(response as api.CommentList);
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
          unittest.equals('drive/v3/'),
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
    unittest.test('method--create', () async {
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
          unittest.equals('drive/v3/'),
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
          await res.create(arg_request, arg_requestId, $fields: arg_$fields);
      checkDrive(response as api.Drive);
    });

    unittest.test('method--delete', () async {
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
          unittest.equals('drive/v3/'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_driveId, $fields: arg_$fields);
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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).drives;
      final arg_pageSize = 42;
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
          unittest.equals('drive/v3/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
          pageSize: arg_pageSize,
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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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
      final arg_enforceSingleParent = true;
      final arg_ignoreDefaultVisibility = true;
      final arg_includePermissionsForView = 'foo';
      final arg_keepRevisionForever = true;
      final arg_ocrLanguage = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['ignoreDefaultVisibility']!.first,
          unittest.equals('$arg_ignoreDefaultVisibility'),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['keepRevisionForever']!.first,
          unittest.equals('$arg_keepRevisionForever'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
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
      final response = await res.copy(arg_request, arg_fileId,
          enforceSingleParent: arg_enforceSingleParent,
          ignoreDefaultVisibility: arg_ignoreDefaultVisibility,
          includePermissionsForView: arg_includePermissionsForView,
          keepRevisionForever: arg_keepRevisionForever,
          ocrLanguage: arg_ocrLanguage,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkFile(response as api.File);
    });

    unittest.test('method--create', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_enforceSingleParent = true;
      final arg_ignoreDefaultVisibility = true;
      final arg_includePermissionsForView = 'foo';
      final arg_keepRevisionForever = true;
      final arg_ocrLanguage = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['ignoreDefaultVisibility']!.first,
          unittest.equals('$arg_ignoreDefaultVisibility'),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['keepRevisionForever']!.first,
          unittest.equals('$arg_keepRevisionForever'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
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
      final response = await res.create(arg_request,
          enforceSingleParent: arg_enforceSingleParent,
          ignoreDefaultVisibility: arg_ignoreDefaultVisibility,
          includePermissionsForView: arg_includePermissionsForView,
          keepRevisionForever: arg_keepRevisionForever,
          ocrLanguage: arg_ocrLanguage,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useContentAsIndexableText: arg_useContentAsIndexableText,
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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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
      final arg_count = 42;
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
          unittest.equals('drive/v3/'),
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
          core.int.parse(queryMap['count']!.first),
          unittest.equals(arg_count),
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
          count: arg_count,
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
          unittest.equals('drive/v3/'),
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
      final response = await res.get(arg_fileId,
          acknowledgeAbuse: arg_acknowledgeAbuse,
          includePermissionsForView: arg_includePermissionsForView,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
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
      final arg_includePermissionsForView = 'foo';
      final arg_includeTeamDriveItems = true;
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          unittest.equals('drive/v3/'),
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
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['includeTeamDriveItems']!.first,
          unittest.equals('$arg_includeTeamDriveItems'),
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
          includePermissionsForView: arg_includePermissionsForView,
          includeTeamDriveItems: arg_includeTeamDriveItems,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          q: arg_q,
          spaces: arg_spaces,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          teamDriveId: arg_teamDriveId,
          $fields: arg_$fields);
      checkFileList(response as api.FileList);
    });

    unittest.test('method--update', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).files;
      final arg_request = buildFile();
      final arg_fileId = 'foo';
      final arg_addParents = 'foo';
      final arg_enforceSingleParent = true;
      final arg_includePermissionsForView = 'foo';
      final arg_keepRevisionForever = true;
      final arg_ocrLanguage = 'foo';
      final arg_removeParents = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['enforceSingleParent']!.first,
          unittest.equals('$arg_enforceSingleParent'),
        );
        unittest.expect(
          queryMap['includePermissionsForView']!.first,
          unittest.equals(arg_includePermissionsForView),
        );
        unittest.expect(
          queryMap['keepRevisionForever']!.first,
          unittest.equals('$arg_keepRevisionForever'),
        );
        unittest.expect(
          queryMap['ocrLanguage']!.first,
          unittest.equals(arg_ocrLanguage),
        );
        unittest.expect(
          queryMap['removeParents']!.first,
          unittest.equals(arg_removeParents),
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
          enforceSingleParent: arg_enforceSingleParent,
          includePermissionsForView: arg_includePermissionsForView,
          keepRevisionForever: arg_keepRevisionForever,
          ocrLanguage: arg_ocrLanguage,
          removeParents: arg_removeParents,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
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
      final arg_includePermissionsForView = 'foo';
      final arg_supportsAllDrives = true;
      final arg_supportsTeamDrives = true;
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
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(arg_request, arg_fileId,
          acknowledgeAbuse: arg_acknowledgeAbuse,
          includePermissionsForView: arg_includePermissionsForView,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_request = buildPermission();
      final arg_fileId = 'foo';
      final arg_emailMessage = 'foo';
      final arg_enforceSingleParent = true;
      final arg_moveToNewOwnersRoot = true;
      final arg_sendNotificationEmail = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['sendNotificationEmail']!.first,
          unittest.equals('$arg_sendNotificationEmail'),
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
      final response = await res.create(arg_request, arg_fileId,
          emailMessage: arg_emailMessage,
          enforceSingleParent: arg_enforceSingleParent,
          moveToNewOwnersRoot: arg_moveToNewOwnersRoot,
          sendNotificationEmail: arg_sendNotificationEmail,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          transferOwnership: arg_transferOwnership,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });

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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).permissions;
      final arg_fileId = 'foo';
      final arg_includePermissionsForView = 'foo';
      final arg_pageSize = 42;
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
          unittest.equals('drive/v3/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          supportsAllDrives: arg_supportsAllDrives,
          supportsTeamDrives: arg_supportsTeamDrives,
          useDomainAdminAccess: arg_useDomainAdminAccess,
          $fields: arg_$fields);
      checkPermissionList(response as api.PermissionList);
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
          unittest.equals('drive/v3/'),
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

  unittest.group('resource-RepliesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_request = buildReply();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Reply.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReply(obj);

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
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_fileId, arg_commentId,
          $fields: arg_$fields);
      checkReply(response as api.Reply);
    });

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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_fileId, arg_commentId, arg_replyId,
          includeDeleted: arg_includeDeleted, $fields: arg_$fields);
      checkReply(response as api.Reply);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_includeDeleted = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildReplyList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId, arg_commentId,
          includeDeleted: arg_includeDeleted,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkReplyList(response as api.ReplyList);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).replies;
      final arg_request = buildReply();
      final arg_fileId = 'foo';
      final arg_commentId = 'foo';
      final arg_replyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Reply.fromJson(json as core.Map<core.String, core.dynamic>);
        checkReply(obj);

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
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_fileId, arg_commentId, arg_replyId,
          $fields: arg_$fields);
      checkReply(response as api.Reply);
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
          unittest.equals('drive/v3/'),
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
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_fileId = 'foo';
      final arg_revisionId = 'foo';
      final arg_acknowledgeAbuse = true;
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
          unittest.equals('drive/v3/'),
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
          queryMap['acknowledgeAbuse']!.first,
          unittest.equals('$arg_acknowledgeAbuse'),
        );
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
      final response = await res.get(arg_fileId, arg_revisionId,
          acknowledgeAbuse: arg_acknowledgeAbuse, $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).revisions;
      final arg_fileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('drive/v3/'),
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
        final resp = convert.json.encode(buildRevisionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_fileId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkRevisionList(response as api.RevisionList);
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
          unittest.equals('drive/v3/'),
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
    unittest.test('method--create', () async {
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
          unittest.equals('drive/v3/'),
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
          await res.create(arg_request, arg_requestId, $fields: arg_$fields);
      checkTeamDrive(response as api.TeamDrive);
    });

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
          unittest.equals('drive/v3/'),
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
          unittest.equals('drive/v3/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveApi(mock).teamdrives;
      final arg_pageSize = 42;
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
          unittest.equals('drive/v3/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
          pageSize: arg_pageSize,
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
          unittest.equals('drive/v3/'),
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
