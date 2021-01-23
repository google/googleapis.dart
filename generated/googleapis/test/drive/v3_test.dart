// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.drive.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/drive/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAboutDriveThemes = 0;
api.AboutDriveThemes buildAboutDriveThemes() {
  var o = api.AboutDriveThemes();
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
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAboutDriveThemes--;
}

core.List<api.AboutDriveThemes> buildUnnamed2638() {
  var o = <api.AboutDriveThemes>[];
  o.add(buildAboutDriveThemes());
  o.add(buildAboutDriveThemes());
  return o;
}

void checkUnnamed2638(core.List<api.AboutDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutDriveThemes(o[0]);
  checkAboutDriveThemes(o[1]);
}

core.List<core.String> buildUnnamed2639() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2639(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.List<core.String>> buildUnnamed2640() {
  var o = <core.String, core.List<core.String>>{};
  o['x'] = buildUnnamed2639();
  o['y'] = buildUnnamed2639();
  return o;
}

void checkUnnamed2640(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2639(o['x']);
  checkUnnamed2639(o['y']);
}

core.List<core.String> buildUnnamed2641() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2641(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2642() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2642(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.List<core.String>> buildUnnamed2643() {
  var o = <core.String, core.List<core.String>>{};
  o['x'] = buildUnnamed2642();
  o['y'] = buildUnnamed2642();
  return o;
}

void checkUnnamed2643(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2642(o['x']);
  checkUnnamed2642(o['y']);
}

core.Map<core.String, core.String> buildUnnamed2644() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2644(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterAboutStorageQuota = 0;
api.AboutStorageQuota buildAboutStorageQuota() {
  var o = api.AboutStorageQuota();
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
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.usage, unittest.equals('foo'));
    unittest.expect(o.usageInDrive, unittest.equals('foo'));
    unittest.expect(o.usageInDriveTrash, unittest.equals('foo'));
  }
  buildCounterAboutStorageQuota--;
}

core.int buildCounterAboutTeamDriveThemes = 0;
api.AboutTeamDriveThemes buildAboutTeamDriveThemes() {
  var o = api.AboutTeamDriveThemes();
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
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAboutTeamDriveThemes--;
}

core.List<api.AboutTeamDriveThemes> buildUnnamed2645() {
  var o = <api.AboutTeamDriveThemes>[];
  o.add(buildAboutTeamDriveThemes());
  o.add(buildAboutTeamDriveThemes());
  return o;
}

void checkUnnamed2645(core.List<api.AboutTeamDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutTeamDriveThemes(o[0]);
  checkAboutTeamDriveThemes(o[1]);
}

core.int buildCounterAbout = 0;
api.About buildAbout() {
  var o = api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.appInstalled = true;
    o.canCreateDrives = true;
    o.canCreateTeamDrives = true;
    o.driveThemes = buildUnnamed2638();
    o.exportFormats = buildUnnamed2640();
    o.folderColorPalette = buildUnnamed2641();
    o.importFormats = buildUnnamed2643();
    o.kind = 'foo';
    o.maxImportSizes = buildUnnamed2644();
    o.maxUploadSize = 'foo';
    o.storageQuota = buildAboutStorageQuota();
    o.teamDriveThemes = buildUnnamed2645();
    o.user = buildUser();
  }
  buildCounterAbout--;
  return o;
}

void checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    unittest.expect(o.appInstalled, unittest.isTrue);
    unittest.expect(o.canCreateDrives, unittest.isTrue);
    unittest.expect(o.canCreateTeamDrives, unittest.isTrue);
    checkUnnamed2638(o.driveThemes);
    checkUnnamed2640(o.exportFormats);
    checkUnnamed2641(o.folderColorPalette);
    checkUnnamed2643(o.importFormats);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2644(o.maxImportSizes);
    unittest.expect(o.maxUploadSize, unittest.equals('foo'));
    checkAboutStorageQuota(o.storageQuota);
    checkUnnamed2645(o.teamDriveThemes);
    checkUser(o.user);
  }
  buildCounterAbout--;
}

core.int buildCounterChange = 0;
api.Change buildChange() {
  var o = api.Change();
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
    o.time = core.DateTime.parse("2002-02-27T14:01:02");
    o.type = 'foo';
  }
  buildCounterChange--;
  return o;
}

void checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    unittest.expect(o.changeType, unittest.equals('foo'));
    checkDrive(o.drive);
    unittest.expect(o.driveId, unittest.equals('foo'));
    checkFile(o.file);
    unittest.expect(o.fileId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.removed, unittest.isTrue);
    checkTeamDrive(o.teamDrive);
    unittest.expect(o.teamDriveId, unittest.equals('foo'));
    unittest.expect(
        o.time, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChange--;
}

core.List<api.Change> buildUnnamed2646() {
  var o = <api.Change>[];
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

void checkUnnamed2646(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangeList = 0;
api.ChangeList buildChangeList() {
  var o = api.ChangeList();
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    o.changes = buildUnnamed2646();
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
    checkUnnamed2646(o.changes);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newStartPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChangeList--;
}

core.Map<core.String, core.String> buildUnnamed2647() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2647(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed2647();
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
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2647(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterCommentQuotedFileContent = 0;
api.CommentQuotedFileContent buildCommentQuotedFileContent() {
  var o = api.CommentQuotedFileContent();
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
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCommentQuotedFileContent--;
}

core.List<api.Reply> buildUnnamed2648() {
  var o = <api.Reply>[];
  o.add(buildReply());
  o.add(buildReply());
  return o;
}

void checkUnnamed2648(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  var o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.anchor = 'foo';
    o.author = buildUser();
    o.content = 'foo';
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.htmlContent = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.quotedFileContent = buildCommentQuotedFileContent();
    o.replies = buildUnnamed2648();
    o.resolved = true;
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(o.anchor, unittest.equals('foo'));
    checkUser(o.author);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createdTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkCommentQuotedFileContent(o.quotedFileContent);
    checkUnnamed2648(o.replies);
    unittest.expect(o.resolved, unittest.isTrue);
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed2649() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed2649(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
api.CommentList buildCommentList() {
  var o = api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.comments = buildUnnamed2649();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCommentList--;
  return o;
}

void checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed2649(o.comments);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCommentList--;
}

core.int buildCounterContentRestriction = 0;
api.ContentRestriction buildContentRestriction() {
  var o = api.ContentRestriction();
  buildCounterContentRestriction++;
  if (buildCounterContentRestriction < 3) {
    o.readOnly = true;
    o.reason = 'foo';
    o.restrictingUser = buildUser();
    o.restrictionTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.type = 'foo';
  }
  buildCounterContentRestriction--;
  return o;
}

void checkContentRestriction(api.ContentRestriction o) {
  buildCounterContentRestriction++;
  if (buildCounterContentRestriction < 3) {
    unittest.expect(o.readOnly, unittest.isTrue);
    unittest.expect(o.reason, unittest.equals('foo'));
    checkUser(o.restrictingUser);
    unittest.expect(o.restrictionTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContentRestriction--;
}

core.int buildCounterDriveBackgroundImageFile = 0;
api.DriveBackgroundImageFile buildDriveBackgroundImageFile() {
  var o = api.DriveBackgroundImageFile();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
    unittest.expect(o.xCoordinate, unittest.equals(42.0));
    unittest.expect(o.yCoordinate, unittest.equals(42.0));
  }
  buildCounterDriveBackgroundImageFile--;
}

core.int buildCounterDriveCapabilities = 0;
api.DriveCapabilities buildDriveCapabilities() {
  var o = api.DriveCapabilities();
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
    unittest.expect(o.canAddChildren, unittest.isTrue);
    unittest.expect(
        o.canChangeCopyRequiresWriterPermissionRestriction, unittest.isTrue);
    unittest.expect(o.canChangeDomainUsersOnlyRestriction, unittest.isTrue);
    unittest.expect(o.canChangeDriveBackground, unittest.isTrue);
    unittest.expect(o.canChangeDriveMembersOnlyRestriction, unittest.isTrue);
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canCopy, unittest.isTrue);
    unittest.expect(o.canDeleteChildren, unittest.isTrue);
    unittest.expect(o.canDeleteDrive, unittest.isTrue);
    unittest.expect(o.canDownload, unittest.isTrue);
    unittest.expect(o.canEdit, unittest.isTrue);
    unittest.expect(o.canListChildren, unittest.isTrue);
    unittest.expect(o.canManageMembers, unittest.isTrue);
    unittest.expect(o.canReadRevisions, unittest.isTrue);
    unittest.expect(o.canRename, unittest.isTrue);
    unittest.expect(o.canRenameDrive, unittest.isTrue);
    unittest.expect(o.canShare, unittest.isTrue);
    unittest.expect(o.canTrashChildren, unittest.isTrue);
  }
  buildCounterDriveCapabilities--;
}

core.int buildCounterDriveRestrictions = 0;
api.DriveRestrictions buildDriveRestrictions() {
  var o = api.DriveRestrictions();
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
    unittest.expect(o.adminManagedRestrictions, unittest.isTrue);
    unittest.expect(o.copyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.domainUsersOnly, unittest.isTrue);
    unittest.expect(o.driveMembersOnly, unittest.isTrue);
  }
  buildCounterDriveRestrictions--;
}

core.int buildCounterDrive = 0;
api.Drive buildDrive() {
  var o = api.Drive();
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    o.backgroundImageFile = buildDriveBackgroundImageFile();
    o.backgroundImageLink = 'foo';
    o.capabilities = buildDriveCapabilities();
    o.colorRgb = 'foo';
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    checkDriveBackgroundImageFile(o.backgroundImageFile);
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    checkDriveCapabilities(o.capabilities);
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.createdTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkDriveRestrictions(o.restrictions);
    unittest.expect(o.themeId, unittest.equals('foo'));
  }
  buildCounterDrive--;
}

core.List<api.Drive> buildUnnamed2650() {
  var o = <api.Drive>[];
  o.add(buildDrive());
  o.add(buildDrive());
  return o;
}

void checkUnnamed2650(core.List<api.Drive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDrive(o[0]);
  checkDrive(o[1]);
}

core.int buildCounterDriveList = 0;
api.DriveList buildDriveList() {
  var o = api.DriveList();
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    o.drives = buildUnnamed2650();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDriveList--;
  return o;
}

void checkDriveList(api.DriveList o) {
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    checkUnnamed2650(o.drives);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDriveList--;
}

core.Map<core.String, core.String> buildUnnamed2651() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2651(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterFileCapabilities = 0;
api.FileCapabilities buildFileCapabilities() {
  var o = api.FileCapabilities();
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    o.canAddChildren = true;
    o.canAddFolderFromAnotherDrive = true;
    o.canAddMyDriveParent = true;
    o.canChangeCopyRequiresWriterPermission = true;
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
    unittest.expect(o.canAddChildren, unittest.isTrue);
    unittest.expect(o.canAddFolderFromAnotherDrive, unittest.isTrue);
    unittest.expect(o.canAddMyDriveParent, unittest.isTrue);
    unittest.expect(o.canChangeCopyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.canChangeViewersCanCopyContent, unittest.isTrue);
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canCopy, unittest.isTrue);
    unittest.expect(o.canDelete, unittest.isTrue);
    unittest.expect(o.canDeleteChildren, unittest.isTrue);
    unittest.expect(o.canDownload, unittest.isTrue);
    unittest.expect(o.canEdit, unittest.isTrue);
    unittest.expect(o.canListChildren, unittest.isTrue);
    unittest.expect(o.canModifyContent, unittest.isTrue);
    unittest.expect(o.canModifyContentRestriction, unittest.isTrue);
    unittest.expect(o.canMoveChildrenOutOfDrive, unittest.isTrue);
    unittest.expect(o.canMoveChildrenOutOfTeamDrive, unittest.isTrue);
    unittest.expect(o.canMoveChildrenWithinDrive, unittest.isTrue);
    unittest.expect(o.canMoveChildrenWithinTeamDrive, unittest.isTrue);
    unittest.expect(o.canMoveItemIntoTeamDrive, unittest.isTrue);
    unittest.expect(o.canMoveItemOutOfDrive, unittest.isTrue);
    unittest.expect(o.canMoveItemOutOfTeamDrive, unittest.isTrue);
    unittest.expect(o.canMoveItemWithinDrive, unittest.isTrue);
    unittest.expect(o.canMoveItemWithinTeamDrive, unittest.isTrue);
    unittest.expect(o.canMoveTeamDriveItem, unittest.isTrue);
    unittest.expect(o.canReadDrive, unittest.isTrue);
    unittest.expect(o.canReadRevisions, unittest.isTrue);
    unittest.expect(o.canReadTeamDrive, unittest.isTrue);
    unittest.expect(o.canRemoveChildren, unittest.isTrue);
    unittest.expect(o.canRemoveMyDriveParent, unittest.isTrue);
    unittest.expect(o.canRename, unittest.isTrue);
    unittest.expect(o.canShare, unittest.isTrue);
    unittest.expect(o.canTrash, unittest.isTrue);
    unittest.expect(o.canTrashChildren, unittest.isTrue);
    unittest.expect(o.canUntrash, unittest.isTrue);
  }
  buildCounterFileCapabilities--;
}

core.int buildCounterFileContentHintsThumbnail = 0;
api.FileContentHintsThumbnail buildFileContentHintsThumbnail() {
  var o = api.FileContentHintsThumbnail();
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
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterFileContentHintsThumbnail--;
}

core.int buildCounterFileContentHints = 0;
api.FileContentHints buildFileContentHints() {
  var o = api.FileContentHints();
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
    unittest.expect(o.indexableText, unittest.equals('foo'));
    checkFileContentHintsThumbnail(o.thumbnail);
  }
  buildCounterFileContentHints--;
}

core.List<api.ContentRestriction> buildUnnamed2652() {
  var o = <api.ContentRestriction>[];
  o.add(buildContentRestriction());
  o.add(buildContentRestriction());
  return o;
}

void checkUnnamed2652(core.List<api.ContentRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentRestriction(o[0]);
  checkContentRestriction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2653() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2653(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterFileImageMediaMetadataLocation = 0;
api.FileImageMediaMetadataLocation buildFileImageMediaMetadataLocation() {
  var o = api.FileImageMediaMetadataLocation();
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
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterFileImageMediaMetadataLocation--;
}

core.int buildCounterFileImageMediaMetadata = 0;
api.FileImageMediaMetadata buildFileImageMediaMetadata() {
  var o = api.FileImageMediaMetadata();
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
    unittest.expect(o.aperture, unittest.equals(42.0));
    unittest.expect(o.cameraMake, unittest.equals('foo'));
    unittest.expect(o.cameraModel, unittest.equals('foo'));
    unittest.expect(o.colorSpace, unittest.equals('foo'));
    unittest.expect(o.exposureBias, unittest.equals(42.0));
    unittest.expect(o.exposureMode, unittest.equals('foo'));
    unittest.expect(o.exposureTime, unittest.equals(42.0));
    unittest.expect(o.flashUsed, unittest.isTrue);
    unittest.expect(o.focalLength, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.isoSpeed, unittest.equals(42));
    unittest.expect(o.lens, unittest.equals('foo'));
    checkFileImageMediaMetadataLocation(o.location);
    unittest.expect(o.maxApertureValue, unittest.equals(42.0));
    unittest.expect(o.meteringMode, unittest.equals('foo'));
    unittest.expect(o.rotation, unittest.equals(42));
    unittest.expect(o.sensor, unittest.equals('foo'));
    unittest.expect(o.subjectDistance, unittest.equals(42));
    unittest.expect(o.time, unittest.equals('foo'));
    unittest.expect(o.whiteBalance, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileImageMediaMetadata--;
}

core.List<api.User> buildUnnamed2654() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed2654(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.List<core.String> buildUnnamed2655() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2655(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2656() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2656(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Permission> buildUnnamed2657() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed2657(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2658() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2658(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterFileShortcutDetails = 0;
api.FileShortcutDetails buildFileShortcutDetails() {
  var o = api.FileShortcutDetails();
  buildCounterFileShortcutDetails++;
  if (buildCounterFileShortcutDetails < 3) {
    o.targetId = 'foo';
    o.targetMimeType = 'foo';
  }
  buildCounterFileShortcutDetails--;
  return o;
}

void checkFileShortcutDetails(api.FileShortcutDetails o) {
  buildCounterFileShortcutDetails++;
  if (buildCounterFileShortcutDetails < 3) {
    unittest.expect(o.targetId, unittest.equals('foo'));
    unittest.expect(o.targetMimeType, unittest.equals('foo'));
  }
  buildCounterFileShortcutDetails--;
}

core.List<core.String> buildUnnamed2659() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileVideoMediaMetadata = 0;
api.FileVideoMediaMetadata buildFileVideoMediaMetadata() {
  var o = api.FileVideoMediaMetadata();
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
    unittest.expect(o.durationMillis, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileVideoMediaMetadata--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  var o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.appProperties = buildUnnamed2651();
    o.capabilities = buildFileCapabilities();
    o.contentHints = buildFileContentHints();
    o.contentRestrictions = buildUnnamed2652();
    o.copyRequiresWriterPermission = true;
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = 'foo';
    o.driveId = 'foo';
    o.explicitlyTrashed = true;
    o.exportLinks = buildUnnamed2653();
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
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedByMe = true;
    o.modifiedByMeTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.originalFilename = 'foo';
    o.ownedByMe = true;
    o.owners = buildUnnamed2654();
    o.parents = buildUnnamed2655();
    o.permissionIds = buildUnnamed2656();
    o.permissions = buildUnnamed2657();
    o.properties = buildUnnamed2658();
    o.quotaBytesUsed = 'foo';
    o.shared = true;
    o.sharedWithMeTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.sharingUser = buildUser();
    o.shortcutDetails = buildFileShortcutDetails();
    o.size = 'foo';
    o.spaces = buildUnnamed2659();
    o.starred = true;
    o.teamDriveId = 'foo';
    o.thumbnailLink = 'foo';
    o.thumbnailVersion = 'foo';
    o.trashed = true;
    o.trashedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.trashingUser = buildUser();
    o.version = 'foo';
    o.videoMediaMetadata = buildFileVideoMediaMetadata();
    o.viewedByMe = true;
    o.viewedByMeTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    checkUnnamed2651(o.appProperties);
    checkFileCapabilities(o.capabilities);
    checkFileContentHints(o.contentHints);
    checkUnnamed2652(o.contentRestrictions);
    unittest.expect(o.copyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.createdTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.driveId, unittest.equals('foo'));
    unittest.expect(o.explicitlyTrashed, unittest.isTrue);
    checkUnnamed2653(o.exportLinks);
    unittest.expect(o.fileExtension, unittest.equals('foo'));
    unittest.expect(o.folderColorRgb, unittest.equals('foo'));
    unittest.expect(o.fullFileExtension, unittest.equals('foo'));
    unittest.expect(o.hasAugmentedPermissions, unittest.isTrue);
    unittest.expect(o.hasThumbnail, unittest.isTrue);
    unittest.expect(o.headRevisionId, unittest.equals('foo'));
    unittest.expect(o.iconLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkFileImageMediaMetadata(o.imageMediaMetadata);
    unittest.expect(o.isAppAuthorized, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUser(o.lastModifyingUser);
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedByMe, unittest.isTrue);
    unittest.expect(o.modifiedByMeTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.modifiedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.ownedByMe, unittest.isTrue);
    checkUnnamed2654(o.owners);
    checkUnnamed2655(o.parents);
    checkUnnamed2656(o.permissionIds);
    checkUnnamed2657(o.permissions);
    checkUnnamed2658(o.properties);
    unittest.expect(o.quotaBytesUsed, unittest.equals('foo'));
    unittest.expect(o.shared, unittest.isTrue);
    unittest.expect(o.sharedWithMeTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUser(o.sharingUser);
    checkFileShortcutDetails(o.shortcutDetails);
    unittest.expect(o.size, unittest.equals('foo'));
    checkUnnamed2659(o.spaces);
    unittest.expect(o.starred, unittest.isTrue);
    unittest.expect(o.teamDriveId, unittest.equals('foo'));
    unittest.expect(o.thumbnailLink, unittest.equals('foo'));
    unittest.expect(o.thumbnailVersion, unittest.equals('foo'));
    unittest.expect(o.trashed, unittest.isTrue);
    unittest.expect(o.trashedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUser(o.trashingUser);
    unittest.expect(o.version, unittest.equals('foo'));
    checkFileVideoMediaMetadata(o.videoMediaMetadata);
    unittest.expect(o.viewedByMe, unittest.isTrue);
    unittest.expect(o.viewedByMeTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.viewersCanCopyContent, unittest.isTrue);
    unittest.expect(o.webContentLink, unittest.equals('foo'));
    unittest.expect(o.webViewLink, unittest.equals('foo'));
    unittest.expect(o.writersCanShare, unittest.isTrue);
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed2660() {
  var o = <api.File>[];
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

void checkUnnamed2660(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
api.FileList buildFileList() {
  var o = api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.files = buildUnnamed2660();
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
    checkUnnamed2660(o.files);
    unittest.expect(o.incompleteSearch, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFileList--;
}

core.List<core.String> buildUnnamed2661() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2661(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeneratedIds = 0;
api.GeneratedIds buildGeneratedIds() {
  var o = api.GeneratedIds();
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    o.ids = buildUnnamed2661();
    o.kind = 'foo';
    o.space = 'foo';
  }
  buildCounterGeneratedIds--;
  return o;
}

void checkGeneratedIds(api.GeneratedIds o) {
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    checkUnnamed2661(o.ids);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.space, unittest.equals('foo'));
  }
  buildCounterGeneratedIds--;
}

core.int buildCounterPermissionPermissionDetails = 0;
api.PermissionPermissionDetails buildPermissionPermissionDetails() {
  var o = api.PermissionPermissionDetails();
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
    unittest.expect(o.inherited, unittest.isTrue);
    unittest.expect(o.inheritedFrom, unittest.equals('foo'));
    unittest.expect(o.permissionType, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPermissionPermissionDetails--;
}

core.List<api.PermissionPermissionDetails> buildUnnamed2662() {
  var o = <api.PermissionPermissionDetails>[];
  o.add(buildPermissionPermissionDetails());
  o.add(buildPermissionPermissionDetails());
  return o;
}

void checkUnnamed2662(core.List<api.PermissionPermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionPermissionDetails(o[0]);
  checkPermissionPermissionDetails(o[1]);
}

core.int buildCounterPermissionTeamDrivePermissionDetails = 0;
api.PermissionTeamDrivePermissionDetails
    buildPermissionTeamDrivePermissionDetails() {
  var o = api.PermissionTeamDrivePermissionDetails();
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
    unittest.expect(o.inherited, unittest.isTrue);
    unittest.expect(o.inheritedFrom, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.teamDrivePermissionType, unittest.equals('foo'));
  }
  buildCounterPermissionTeamDrivePermissionDetails--;
}

core.List<api.PermissionTeamDrivePermissionDetails> buildUnnamed2663() {
  var o = <api.PermissionTeamDrivePermissionDetails>[];
  o.add(buildPermissionTeamDrivePermissionDetails());
  o.add(buildPermissionTeamDrivePermissionDetails());
  return o;
}

void checkUnnamed2663(core.List<api.PermissionTeamDrivePermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionTeamDrivePermissionDetails(o[0]);
  checkPermissionTeamDrivePermissionDetails(o[1]);
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  var o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.allowFileDiscovery = true;
    o.deleted = true;
    o.displayName = 'foo';
    o.domain = 'foo';
    o.emailAddress = 'foo';
    o.expirationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.id = 'foo';
    o.kind = 'foo';
    o.permissionDetails = buildUnnamed2662();
    o.photoLink = 'foo';
    o.role = 'foo';
    o.teamDrivePermissionDetails = buildUnnamed2663();
    o.type = 'foo';
    o.view = 'foo';
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.allowFileDiscovery, unittest.isTrue);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.expirationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2662(o.permissionDetails);
    unittest.expect(o.photoLink, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    checkUnnamed2663(o.teamDrivePermissionDetails);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

core.List<api.Permission> buildUnnamed2664() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed2664(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionList = 0;
api.PermissionList buildPermissionList() {
  var o = api.PermissionList();
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.permissions = buildUnnamed2664();
  }
  buildCounterPermissionList--;
  return o;
}

void checkPermissionList(api.PermissionList o) {
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2664(o.permissions);
  }
  buildCounterPermissionList--;
}

core.int buildCounterReply = 0;
api.Reply buildReply() {
  var o = api.Reply();
  buildCounterReply++;
  if (buildCounterReply < 3) {
    o.action = 'foo';
    o.author = buildUser();
    o.content = 'foo';
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.htmlContent = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterReply--;
  return o;
}

void checkReply(api.Reply o) {
  buildCounterReply++;
  if (buildCounterReply < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUser(o.author);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createdTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterReply--;
}

core.List<api.Reply> buildUnnamed2665() {
  var o = <api.Reply>[];
  o.add(buildReply());
  o.add(buildReply());
  return o;
}

void checkUnnamed2665(core.List<api.Reply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReply(o[0]);
  checkReply(o[1]);
}

core.int buildCounterReplyList = 0;
api.ReplyList buildReplyList() {
  var o = api.ReplyList();
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.replies = buildUnnamed2665();
  }
  buildCounterReplyList--;
  return o;
}

void checkReplyList(api.ReplyList o) {
  buildCounterReplyList++;
  if (buildCounterReplyList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2665(o.replies);
  }
  buildCounterReplyList--;
}

core.Map<core.String, core.String> buildUnnamed2666() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2666(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  var o = api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.exportLinks = buildUnnamed2666();
    o.id = 'foo';
    o.keepForever = true;
    o.kind = 'foo';
    o.lastModifyingUser = buildUser();
    o.md5Checksum = 'foo';
    o.mimeType = 'foo';
    o.modifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    checkUnnamed2666(o.exportLinks);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.keepForever, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUser(o.lastModifyingUser);
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.publishAuto, unittest.isTrue);
    unittest.expect(o.published, unittest.isTrue);
    unittest.expect(o.publishedLink, unittest.equals('foo'));
    unittest.expect(o.publishedOutsideDomain, unittest.isTrue);
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterRevision--;
}

core.List<api.Revision> buildUnnamed2667() {
  var o = <api.Revision>[];
  o.add(buildRevision());
  o.add(buildRevision());
  return o;
}

void checkUnnamed2667(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.int buildCounterRevisionList = 0;
api.RevisionList buildRevisionList() {
  var o = api.RevisionList();
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed2667();
  }
  buildCounterRevisionList--;
  return o;
}

void checkRevisionList(api.RevisionList o) {
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2667(o.revisions);
  }
  buildCounterRevisionList--;
}

core.int buildCounterStartPageToken = 0;
api.StartPageToken buildStartPageToken() {
  var o = api.StartPageToken();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startPageToken, unittest.equals('foo'));
  }
  buildCounterStartPageToken--;
}

core.int buildCounterTeamDriveBackgroundImageFile = 0;
api.TeamDriveBackgroundImageFile buildTeamDriveBackgroundImageFile() {
  var o = api.TeamDriveBackgroundImageFile();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
    unittest.expect(o.xCoordinate, unittest.equals(42.0));
    unittest.expect(o.yCoordinate, unittest.equals(42.0));
  }
  buildCounterTeamDriveBackgroundImageFile--;
}

core.int buildCounterTeamDriveCapabilities = 0;
api.TeamDriveCapabilities buildTeamDriveCapabilities() {
  var o = api.TeamDriveCapabilities();
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
    unittest.expect(o.canAddChildren, unittest.isTrue);
    unittest.expect(
        o.canChangeCopyRequiresWriterPermissionRestriction, unittest.isTrue);
    unittest.expect(o.canChangeDomainUsersOnlyRestriction, unittest.isTrue);
    unittest.expect(o.canChangeTeamDriveBackground, unittest.isTrue);
    unittest.expect(o.canChangeTeamMembersOnlyRestriction, unittest.isTrue);
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canCopy, unittest.isTrue);
    unittest.expect(o.canDeleteChildren, unittest.isTrue);
    unittest.expect(o.canDeleteTeamDrive, unittest.isTrue);
    unittest.expect(o.canDownload, unittest.isTrue);
    unittest.expect(o.canEdit, unittest.isTrue);
    unittest.expect(o.canListChildren, unittest.isTrue);
    unittest.expect(o.canManageMembers, unittest.isTrue);
    unittest.expect(o.canReadRevisions, unittest.isTrue);
    unittest.expect(o.canRemoveChildren, unittest.isTrue);
    unittest.expect(o.canRename, unittest.isTrue);
    unittest.expect(o.canRenameTeamDrive, unittest.isTrue);
    unittest.expect(o.canShare, unittest.isTrue);
    unittest.expect(o.canTrashChildren, unittest.isTrue);
  }
  buildCounterTeamDriveCapabilities--;
}

core.int buildCounterTeamDriveRestrictions = 0;
api.TeamDriveRestrictions buildTeamDriveRestrictions() {
  var o = api.TeamDriveRestrictions();
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
    unittest.expect(o.adminManagedRestrictions, unittest.isTrue);
    unittest.expect(o.copyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.domainUsersOnly, unittest.isTrue);
    unittest.expect(o.teamMembersOnly, unittest.isTrue);
  }
  buildCounterTeamDriveRestrictions--;
}

core.int buildCounterTeamDrive = 0;
api.TeamDrive buildTeamDrive() {
  var o = api.TeamDrive();
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    o.backgroundImageFile = buildTeamDriveBackgroundImageFile();
    o.backgroundImageLink = 'foo';
    o.capabilities = buildTeamDriveCapabilities();
    o.colorRgb = 'foo';
    o.createdTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    checkTeamDriveBackgroundImageFile(o.backgroundImageFile);
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    checkTeamDriveCapabilities(o.capabilities);
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.createdTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTeamDriveRestrictions(o.restrictions);
    unittest.expect(o.themeId, unittest.equals('foo'));
  }
  buildCounterTeamDrive--;
}

core.List<api.TeamDrive> buildUnnamed2668() {
  var o = <api.TeamDrive>[];
  o.add(buildTeamDrive());
  o.add(buildTeamDrive());
  return o;
}

void checkUnnamed2668(core.List<api.TeamDrive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeamDrive(o[0]);
  checkTeamDrive(o[1]);
}

core.int buildCounterTeamDriveList = 0;
api.TeamDriveList buildTeamDriveList() {
  var o = api.TeamDriveList();
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.teamDrives = buildUnnamed2668();
  }
  buildCounterTeamDriveList--;
  return o;
}

void checkTeamDriveList(api.TeamDriveList o) {
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2668(o.teamDrives);
  }
  buildCounterTeamDriveList--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.me, unittest.isTrue);
    unittest.expect(o.permissionId, unittest.equals('foo'));
    unittest.expect(o.photoLink, unittest.equals('foo'));
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-AboutDriveThemes', () {
    unittest.test('to-json--from-json', () {
      var o = buildAboutDriveThemes();
      var od = api.AboutDriveThemes.fromJson(o.toJson());
      checkAboutDriveThemes(od);
    });
  });

  unittest.group('obj-schema-AboutStorageQuota', () {
    unittest.test('to-json--from-json', () {
      var o = buildAboutStorageQuota();
      var od = api.AboutStorageQuota.fromJson(o.toJson());
      checkAboutStorageQuota(od);
    });
  });

  unittest.group('obj-schema-AboutTeamDriveThemes', () {
    unittest.test('to-json--from-json', () {
      var o = buildAboutTeamDriveThemes();
      var od = api.AboutTeamDriveThemes.fromJson(o.toJson());
      checkAboutTeamDriveThemes(od);
    });
  });

  unittest.group('obj-schema-About', () {
    unittest.test('to-json--from-json', () {
      var o = buildAbout();
      var od = api.About.fromJson(o.toJson());
      checkAbout(od);
    });
  });

  unittest.group('obj-schema-Change', () {
    unittest.test('to-json--from-json', () {
      var o = buildChange();
      var od = api.Change.fromJson(o.toJson());
      checkChange(od);
    });
  });

  unittest.group('obj-schema-ChangeList', () {
    unittest.test('to-json--from-json', () {
      var o = buildChangeList();
      var od = api.ChangeList.fromJson(o.toJson());
      checkChangeList(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-CommentQuotedFileContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentQuotedFileContent();
      var od = api.CommentQuotedFileContent.fromJson(o.toJson());
      checkCommentQuotedFileContent(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () {
      var o = buildComment();
      var od = api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CommentList', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentList();
      var od = api.CommentList.fromJson(o.toJson());
      checkCommentList(od);
    });
  });

  unittest.group('obj-schema-ContentRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentRestriction();
      var od = api.ContentRestriction.fromJson(o.toJson());
      checkContentRestriction(od);
    });
  });

  unittest.group('obj-schema-DriveBackgroundImageFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveBackgroundImageFile();
      var od = api.DriveBackgroundImageFile.fromJson(o.toJson());
      checkDriveBackgroundImageFile(od);
    });
  });

  unittest.group('obj-schema-DriveCapabilities', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveCapabilities();
      var od = api.DriveCapabilities.fromJson(o.toJson());
      checkDriveCapabilities(od);
    });
  });

  unittest.group('obj-schema-DriveRestrictions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveRestrictions();
      var od = api.DriveRestrictions.fromJson(o.toJson());
      checkDriveRestrictions(od);
    });
  });

  unittest.group('obj-schema-Drive', () {
    unittest.test('to-json--from-json', () {
      var o = buildDrive();
      var od = api.Drive.fromJson(o.toJson());
      checkDrive(od);
    });
  });

  unittest.group('obj-schema-DriveList', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveList();
      var od = api.DriveList.fromJson(o.toJson());
      checkDriveList(od);
    });
  });

  unittest.group('obj-schema-FileCapabilities', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileCapabilities();
      var od = api.FileCapabilities.fromJson(o.toJson());
      checkFileCapabilities(od);
    });
  });

  unittest.group('obj-schema-FileContentHintsThumbnail', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileContentHintsThumbnail();
      var od = api.FileContentHintsThumbnail.fromJson(o.toJson());
      checkFileContentHintsThumbnail(od);
    });
  });

  unittest.group('obj-schema-FileContentHints', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileContentHints();
      var od = api.FileContentHints.fromJson(o.toJson());
      checkFileContentHints(od);
    });
  });

  unittest.group('obj-schema-FileImageMediaMetadataLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileImageMediaMetadataLocation();
      var od = api.FileImageMediaMetadataLocation.fromJson(o.toJson());
      checkFileImageMediaMetadataLocation(od);
    });
  });

  unittest.group('obj-schema-FileImageMediaMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileImageMediaMetadata();
      var od = api.FileImageMediaMetadata.fromJson(o.toJson());
      checkFileImageMediaMetadata(od);
    });
  });

  unittest.group('obj-schema-FileShortcutDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileShortcutDetails();
      var od = api.FileShortcutDetails.fromJson(o.toJson());
      checkFileShortcutDetails(od);
    });
  });

  unittest.group('obj-schema-FileVideoMediaMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileVideoMediaMetadata();
      var od = api.FileVideoMediaMetadata.fromJson(o.toJson());
      checkFileVideoMediaMetadata(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () {
      var o = buildFile();
      var od = api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileList', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileList();
      var od = api.FileList.fromJson(o.toJson());
      checkFileList(od);
    });
  });

  unittest.group('obj-schema-GeneratedIds', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeneratedIds();
      var od = api.GeneratedIds.fromJson(o.toJson());
      checkGeneratedIds(od);
    });
  });

  unittest.group('obj-schema-PermissionPermissionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermissionPermissionDetails();
      var od = api.PermissionPermissionDetails.fromJson(o.toJson());
      checkPermissionPermissionDetails(od);
    });
  });

  unittest.group('obj-schema-PermissionTeamDrivePermissionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermissionTeamDrivePermissionDetails();
      var od = api.PermissionTeamDrivePermissionDetails.fromJson(o.toJson());
      checkPermissionTeamDrivePermissionDetails(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermission();
      var od = api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group('obj-schema-PermissionList', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermissionList();
      var od = api.PermissionList.fromJson(o.toJson());
      checkPermissionList(od);
    });
  });

  unittest.group('obj-schema-Reply', () {
    unittest.test('to-json--from-json', () {
      var o = buildReply();
      var od = api.Reply.fromJson(o.toJson());
      checkReply(od);
    });
  });

  unittest.group('obj-schema-ReplyList', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplyList();
      var od = api.ReplyList.fromJson(o.toJson());
      checkReplyList(od);
    });
  });

  unittest.group('obj-schema-Revision', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevision();
      var od = api.Revision.fromJson(o.toJson());
      checkRevision(od);
    });
  });

  unittest.group('obj-schema-RevisionList', () {
    unittest.test('to-json--from-json', () {
      var o = buildRevisionList();
      var od = api.RevisionList.fromJson(o.toJson());
      checkRevisionList(od);
    });
  });

  unittest.group('obj-schema-StartPageToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartPageToken();
      var od = api.StartPageToken.fromJson(o.toJson());
      checkStartPageToken(od);
    });
  });

  unittest.group('obj-schema-TeamDriveBackgroundImageFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveBackgroundImageFile();
      var od = api.TeamDriveBackgroundImageFile.fromJson(o.toJson());
      checkTeamDriveBackgroundImageFile(od);
    });
  });

  unittest.group('obj-schema-TeamDriveCapabilities', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveCapabilities();
      var od = api.TeamDriveCapabilities.fromJson(o.toJson());
      checkTeamDriveCapabilities(od);
    });
  });

  unittest.group('obj-schema-TeamDriveRestrictions', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveRestrictions();
      var od = api.TeamDriveRestrictions.fromJson(o.toJson());
      checkTeamDriveRestrictions(od);
    });
  });

  unittest.group('obj-schema-TeamDrive', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDrive();
      var od = api.TeamDrive.fromJson(o.toJson());
      checkTeamDrive(od);
    });
  });

  unittest.group('obj-schema-TeamDriveList', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveList();
      var od = api.TeamDriveList.fromJson(o.toJson());
      checkTeamDriveList(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('resource-AboutResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).about;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("about"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAbout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkAbout(response);
      })));
    });
  });

  unittest.group('resource-ChangesResourceApi', () {
    unittest.test('method--getStartPageToken', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).changes;
      var arg_driveId = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("changes/startPageToken"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStartPageToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getStartPageToken(
              driveId: arg_driveId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              teamDriveId: arg_teamDriveId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartPageToken(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).changes;
      var arg_pageToken = 'foo';
      var arg_driveId = 'foo';
      var arg_includeCorpusRemovals = true;
      var arg_includeItemsFromAllDrives = true;
      var arg_includePermissionsForView = 'foo';
      var arg_includeRemoved = true;
      var arg_includeTeamDriveItems = true;
      var arg_pageSize = 42;
      var arg_restrictToMyDrive = true;
      var arg_spaces = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("changes"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeCorpusRemovals"].first,
            unittest.equals("$arg_includeCorpusRemovals"));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["includeRemoved"].first,
            unittest.equals("$arg_includeRemoved"));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["restrictToMyDrive"].first,
            unittest.equals("$arg_restrictToMyDrive"));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChangeList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_pageToken,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangeList(response);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).changes;
      var arg_request = buildChannel();
      var arg_pageToken = 'foo';
      var arg_driveId = 'foo';
      var arg_includeCorpusRemovals = true;
      var arg_includeItemsFromAllDrives = true;
      var arg_includePermissionsForView = 'foo';
      var arg_includeRemoved = true;
      var arg_includeTeamDriveItems = true;
      var arg_pageSize = 42;
      var arg_restrictToMyDrive = true;
      var arg_spaces = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("changes/watch"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeCorpusRemovals"].first,
            unittest.equals("$arg_includeCorpusRemovals"));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["includeRemoved"].first,
            unittest.equals("$arg_includeRemoved"));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["restrictToMyDrive"].first,
            unittest.equals("$arg_restrictToMyDrive"));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_pageToken,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-ChannelsResourceApi', () {
    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("channels/stop"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-CommentsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).comments;
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).comments;
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_includeDeleted = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_commentId,
              includeDeleted: arg_includeDeleted, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).comments;
      var arg_fileId = 'foo';
      var arg_includeDeleted = true;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startModifiedTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startModifiedTime"].first,
            unittest.equals(arg_startModifiedTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              includeDeleted: arg_includeDeleted,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startModifiedTime: arg_startModifiedTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });
  });

  unittest.group('resource-DrivesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_request = buildDrive();
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Drive.fromJson(json);
        checkDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("drives"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_driveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_driveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_driveId = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_driveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_driveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test('method--hide', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_driveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        index = path.indexOf('/hide', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_driveId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/hide"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hide(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_q = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("drives"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDriveList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              q: arg_q,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDriveList(response);
      })));
    });

    unittest.test('method--unhide', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_driveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        index = path.indexOf('/unhide', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_driveId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/unhide"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unhide(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).drives;
      var arg_request = buildDrive();
      var arg_driveId = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Drive.fromJson(json);
        checkDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_driveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_driveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });
  });

  unittest.group('resource-FilesResourceApi', () {
    unittest.test('method--copy', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = 'foo';
      var arg_enforceSingleParent = true;
      var arg_ignoreDefaultVisibility = true;
      var arg_includePermissionsForView = 'foo';
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/copy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/copy"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["ignoreDefaultVisibility"].first,
            unittest.equals("$arg_ignoreDefaultVisibility"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["keepRevisionForever"].first,
            unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copy(arg_request, arg_fileId,
              enforceSingleParent: arg_enforceSingleParent,
              ignoreDefaultVisibility: arg_ignoreDefaultVisibility,
              includePermissionsForView: arg_includePermissionsForView,
              keepRevisionForever: arg_keepRevisionForever,
              ocrLanguage: arg_ocrLanguage,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--create', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_enforceSingleParent = true;
      var arg_ignoreDefaultVisibility = true;
      var arg_includePermissionsForView = 'foo';
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useContentAsIndexableText = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("files"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["ignoreDefaultVisibility"].first,
            unittest.equals("$arg_ignoreDefaultVisibility"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["keepRevisionForever"].first,
            unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useContentAsIndexableText"].first,
            unittest.equals("$arg_useContentAsIndexableText"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              enforceSingleParent: arg_enforceSingleParent,
              ignoreDefaultVisibility: arg_ignoreDefaultVisibility,
              includePermissionsForView: arg_includePermissionsForView,
              keepRevisionForever: arg_keepRevisionForever,
              ocrLanguage: arg_ocrLanguage,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useContentAsIndexableText: arg_useContentAsIndexableText,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_fileId = 'foo';
      var arg_enforceSingleParent = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId,
              enforceSingleParent: arg_enforceSingleParent,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--emptyTrash', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_enforceSingleParent = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("files/trash"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .emptyTrash(
              enforceSingleParent: arg_enforceSingleParent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--export', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_fileId = 'foo';
      var arg_mimeType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/export', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/export"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["mimeType"].first, unittest.equals(arg_mimeType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_fileId, arg_mimeType, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--generateIds', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_count = 42;
      var arg_space = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("files/generateIds"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["count"].first),
            unittest.equals(arg_count));
        unittest.expect(queryMap["space"].first, unittest.equals(arg_space));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGeneratedIds());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIds(count: arg_count, space: arg_space, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGeneratedIds(response);
      })));
    });

    unittest.test('method--get', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_fileId = 'foo';
      var arg_acknowledgeAbuse = true;
      var arg_includePermissionsForView = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["acknowledgeAbuse"].first,
            unittest.equals("$arg_acknowledgeAbuse"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId,
              acknowledgeAbuse: arg_acknowledgeAbuse,
              includePermissionsForView: arg_includePermissionsForView,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_corpora = 'foo';
      var arg_corpus = 'foo';
      var arg_driveId = 'foo';
      var arg_includeItemsFromAllDrives = true;
      var arg_includePermissionsForView = 'foo';
      var arg_includeTeamDriveItems = true;
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_q = 'foo';
      var arg_spaces = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("files"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["corpora"].first, unittest.equals(arg_corpora));
        unittest.expect(queryMap["corpus"].first, unittest.equals(arg_corpus));
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFileList(response);
      })));
    });

    unittest.test('method--update', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = 'foo';
      var arg_addParents = 'foo';
      var arg_enforceSingleParent = true;
      var arg_includePermissionsForView = 'foo';
      var arg_keepRevisionForever = true;
      var arg_ocrLanguage = 'foo';
      var arg_removeParents = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useContentAsIndexableText = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["addParents"].first, unittest.equals(arg_addParents));
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["keepRevisionForever"].first,
            unittest.equals("$arg_keepRevisionForever"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(queryMap["removeParents"].first,
            unittest.equals(arg_removeParents));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useContentAsIndexableText"].first,
            unittest.equals("$arg_useContentAsIndexableText"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId,
              addParents: arg_addParents,
              enforceSingleParent: arg_enforceSingleParent,
              includePermissionsForView: arg_includePermissionsForView,
              keepRevisionForever: arg_keepRevisionForever,
              ocrLanguage: arg_ocrLanguage,
              removeParents: arg_removeParents,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useContentAsIndexableText: arg_useContentAsIndexableText,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--watch', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).files;
      var arg_request = buildChannel();
      var arg_fileId = 'foo';
      var arg_acknowledgeAbuse = true;
      var arg_includePermissionsForView = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/watch"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["acknowledgeAbuse"].first,
            unittest.equals("$arg_acknowledgeAbuse"));
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_fileId,
              acknowledgeAbuse: arg_acknowledgeAbuse,
              includePermissionsForView: arg_includePermissionsForView,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-PermissionsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = 'foo';
      var arg_emailMessage = 'foo';
      var arg_enforceSingleParent = true;
      var arg_moveToNewOwnersRoot = true;
      var arg_sendNotificationEmail = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_transferOwnership = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["emailMessage"].first, unittest.equals(arg_emailMessage));
        unittest.expect(queryMap["enforceSingleParent"].first,
            unittest.equals("$arg_enforceSingleParent"));
        unittest.expect(queryMap["moveToNewOwnersRoot"].first,
            unittest.equals("$arg_moveToNewOwnersRoot"));
        unittest.expect(queryMap["sendNotificationEmail"].first,
            unittest.equals("$arg_sendNotificationEmail"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["transferOwnership"].first,
            unittest.equals("$arg_transferOwnership"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_fileId,
              emailMessage: arg_emailMessage,
              enforceSingleParent: arg_enforceSingleParent,
              moveToNewOwnersRoot: arg_moveToNewOwnersRoot,
              sendNotificationEmail: arg_sendNotificationEmail,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              transferOwnership: arg_transferOwnership,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).permissions;
      var arg_fileId = 'foo';
      var arg_permissionId = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_permissionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_permissionId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).permissions;
      var arg_fileId = 'foo';
      var arg_permissionId = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_permissionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_permissionId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).permissions;
      var arg_fileId = 'foo';
      var arg_includePermissionsForView = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includePermissionsForView"].first,
            unittest.equals(arg_includePermissionsForView));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPermissionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              includePermissionsForView: arg_includePermissionsForView,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermissionList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = 'foo';
      var arg_permissionId = 'foo';
      var arg_removeExpiration = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_transferOwnership = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_permissionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["removeExpiration"].first,
            unittest.equals("$arg_removeExpiration"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["transferOwnership"].first,
            unittest.equals("$arg_transferOwnership"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_permissionId,
              removeExpiration: arg_removeExpiration,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              transferOwnership: arg_transferOwnership,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response);
      })));
    });
  });

  unittest.group('resource-RepliesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).replies;
      var arg_request = buildReply();
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Reply.fromJson(json);
        checkReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/replies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/replies"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReply(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).replies;
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_replyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_replyId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_commentId, arg_replyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).replies;
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_replyId = 'foo';
      var arg_includeDeleted = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_replyId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_commentId, arg_replyId,
              includeDeleted: arg_includeDeleted, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReply(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).replies;
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_includeDeleted = true;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/replies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/replies"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReplyList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId, arg_commentId,
              includeDeleted: arg_includeDeleted,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReplyList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).replies;
      var arg_request = buildReply();
      var arg_fileId = 'foo';
      var arg_commentId = 'foo';
      var arg_replyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Reply.fromJson(json);
        checkReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/comments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf('/replies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_commentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_replyId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReply());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_commentId, arg_replyId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReply(response);
      })));
    });
  });

  unittest.group('resource-RevisionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).revisions;
      var arg_fileId = 'foo';
      var arg_revisionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_revisionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.DriveApi(mock).revisions;
      var arg_fileId = 'foo';
      var arg_revisionId = 'foo';
      var arg_acknowledgeAbuse = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_revisionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["acknowledgeAbuse"].first,
            unittest.equals("$arg_acknowledgeAbuse"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_revisionId,
              acknowledgeAbuse: arg_acknowledgeAbuse, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).revisions;
      var arg_fileId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/revisions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/revisions"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRevisionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevisionList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).revisions;
      var arg_request = buildRevision();
      var arg_fileId = 'foo';
      var arg_revisionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Revision.fromJson(json);
        checkRevision(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf('/revisions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_revisionId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });
  });

  unittest.group('resource-TeamdrivesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).teamdrives;
      var arg_request = buildTeamDrive();
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TeamDrive.fromJson(json);
        checkTeamDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("teamdrives"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDrive(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).teamdrives;
      var arg_teamDriveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_teamDriveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_teamDriveId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).teamdrives;
      var arg_teamDriveId = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_teamDriveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_teamDriveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDrive(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).teamdrives;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_q = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("teamdrives"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTeamDriveList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              q: arg_q,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDriveList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DriveApi(mock).teamdrives;
      var arg_request = buildTeamDrive();
      var arg_teamDriveId = 'foo';
      var arg_useDomainAdminAccess = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TeamDrive.fromJson(json);
        checkTeamDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v3/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_teamDriveId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTeamDrive());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_teamDriveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDrive(response);
      })));
    });
  });
}
