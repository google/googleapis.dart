// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.driveactivity.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/driveactivity/v2.dart' as api;

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

core.int buildCounterAction = 0;
api.Action buildAction() {
  var o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.actor = buildActor();
    o.detail = buildActionDetail();
    o.target = buildTarget();
    o.timeRange = buildTimeRange();
    o.timestamp = 'foo';
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkActor(o.actor);
    checkActionDetail(o.detail);
    checkTarget(o.target);
    checkTimeRange(o.timeRange);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterAction--;
}

core.int buildCounterActionDetail = 0;
api.ActionDetail buildActionDetail() {
  var o = api.ActionDetail();
  buildCounterActionDetail++;
  if (buildCounterActionDetail < 3) {
    o.comment = buildComment();
    o.create = buildCreate();
    o.delete = buildDelete();
    o.dlpChange = buildDataLeakPreventionChange();
    o.edit = buildEdit();
    o.move = buildMove();
    o.permissionChange = buildPermissionChange();
    o.reference = buildApplicationReference();
    o.rename = buildRename();
    o.restore = buildRestore();
    o.settingsChange = buildSettingsChange();
  }
  buildCounterActionDetail--;
  return o;
}

void checkActionDetail(api.ActionDetail o) {
  buildCounterActionDetail++;
  if (buildCounterActionDetail < 3) {
    checkComment(o.comment);
    checkCreate(o.create);
    checkDelete(o.delete);
    checkDataLeakPreventionChange(o.dlpChange);
    checkEdit(o.edit);
    checkMove(o.move);
    checkPermissionChange(o.permissionChange);
    checkApplicationReference(o.reference);
    checkRename(o.rename);
    checkRestore(o.restore);
    checkSettingsChange(o.settingsChange);
  }
  buildCounterActionDetail--;
}

core.int buildCounterActor = 0;
api.Actor buildActor() {
  var o = api.Actor();
  buildCounterActor++;
  if (buildCounterActor < 3) {
    o.administrator = buildAdministrator();
    o.anonymous = buildAnonymousUser();
    o.impersonation = buildImpersonation();
    o.system = buildSystemEvent();
    o.user = buildUser();
  }
  buildCounterActor--;
  return o;
}

void checkActor(api.Actor o) {
  buildCounterActor++;
  if (buildCounterActor < 3) {
    checkAdministrator(o.administrator);
    checkAnonymousUser(o.anonymous);
    checkImpersonation(o.impersonation);
    checkSystemEvent(o.system);
    checkUser(o.user);
  }
  buildCounterActor--;
}

core.int buildCounterAdministrator = 0;
api.Administrator buildAdministrator() {
  var o = api.Administrator();
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {}
  buildCounterAdministrator--;
  return o;
}

void checkAdministrator(api.Administrator o) {
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {}
  buildCounterAdministrator--;
}

core.int buildCounterAnonymousUser = 0;
api.AnonymousUser buildAnonymousUser() {
  var o = api.AnonymousUser();
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {}
  buildCounterAnonymousUser--;
  return o;
}

void checkAnonymousUser(api.AnonymousUser o) {
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {}
  buildCounterAnonymousUser--;
}

core.int buildCounterAnyone = 0;
api.Anyone buildAnyone() {
  var o = api.Anyone();
  buildCounterAnyone++;
  if (buildCounterAnyone < 3) {}
  buildCounterAnyone--;
  return o;
}

void checkAnyone(api.Anyone o) {
  buildCounterAnyone++;
  if (buildCounterAnyone < 3) {}
  buildCounterAnyone--;
}

core.int buildCounterApplicationReference = 0;
api.ApplicationReference buildApplicationReference() {
  var o = api.ApplicationReference();
  buildCounterApplicationReference++;
  if (buildCounterApplicationReference < 3) {
    o.type = 'foo';
  }
  buildCounterApplicationReference--;
  return o;
}

void checkApplicationReference(api.ApplicationReference o) {
  buildCounterApplicationReference++;
  if (buildCounterApplicationReference < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterApplicationReference--;
}

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  var o = api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.assignedUser = buildUser();
    o.subtype = 'foo';
  }
  buildCounterAssignment--;
  return o;
}

void checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    checkUser(o.assignedUser);
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterAssignment--;
}

core.List<api.User> buildUnnamed3869() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed3869(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  var o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.assignment = buildAssignment();
    o.mentionedUsers = buildUnnamed3869();
    o.post = buildPost();
    o.suggestion = buildSuggestion();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkAssignment(o.assignment);
    checkUnnamed3869(o.mentionedUsers);
    checkPost(o.post);
    checkSuggestion(o.suggestion);
  }
  buildCounterComment--;
}

core.int buildCounterConsolidationStrategy = 0;
api.ConsolidationStrategy buildConsolidationStrategy() {
  var o = api.ConsolidationStrategy();
  buildCounterConsolidationStrategy++;
  if (buildCounterConsolidationStrategy < 3) {
    o.legacy = buildLegacy();
    o.none = buildNoConsolidation();
  }
  buildCounterConsolidationStrategy--;
  return o;
}

void checkConsolidationStrategy(api.ConsolidationStrategy o) {
  buildCounterConsolidationStrategy++;
  if (buildCounterConsolidationStrategy < 3) {
    checkLegacy(o.legacy);
    checkNoConsolidation(o.none);
  }
  buildCounterConsolidationStrategy--;
}

core.int buildCounterCopy = 0;
api.Copy buildCopy() {
  var o = api.Copy();
  buildCounterCopy++;
  if (buildCounterCopy < 3) {
    o.originalObject = buildTargetReference();
  }
  buildCounterCopy--;
  return o;
}

void checkCopy(api.Copy o) {
  buildCounterCopy++;
  if (buildCounterCopy < 3) {
    checkTargetReference(o.originalObject);
  }
  buildCounterCopy--;
}

core.int buildCounterCreate = 0;
api.Create buildCreate() {
  var o = api.Create();
  buildCounterCreate++;
  if (buildCounterCreate < 3) {
    o.copy = buildCopy();
    o.new_ = buildNew();
    o.upload = buildUpload();
  }
  buildCounterCreate--;
  return o;
}

void checkCreate(api.Create o) {
  buildCounterCreate++;
  if (buildCounterCreate < 3) {
    checkCopy(o.copy);
    checkNew(o.new_);
    checkUpload(o.upload);
  }
  buildCounterCreate--;
}

core.int buildCounterDataLeakPreventionChange = 0;
api.DataLeakPreventionChange buildDataLeakPreventionChange() {
  var o = api.DataLeakPreventionChange();
  buildCounterDataLeakPreventionChange++;
  if (buildCounterDataLeakPreventionChange < 3) {
    o.type = 'foo';
  }
  buildCounterDataLeakPreventionChange--;
  return o;
}

void checkDataLeakPreventionChange(api.DataLeakPreventionChange o) {
  buildCounterDataLeakPreventionChange++;
  if (buildCounterDataLeakPreventionChange < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDataLeakPreventionChange--;
}

core.int buildCounterDelete = 0;
api.Delete buildDelete() {
  var o = api.Delete();
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    o.type = 'foo';
  }
  buildCounterDelete--;
  return o;
}

void checkDelete(api.Delete o) {
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDelete--;
}

core.int buildCounterDeletedUser = 0;
api.DeletedUser buildDeletedUser() {
  var o = api.DeletedUser();
  buildCounterDeletedUser++;
  if (buildCounterDeletedUser < 3) {}
  buildCounterDeletedUser--;
  return o;
}

void checkDeletedUser(api.DeletedUser o) {
  buildCounterDeletedUser++;
  if (buildCounterDeletedUser < 3) {}
  buildCounterDeletedUser--;
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  var o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.legacyId = 'foo';
    o.name = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.legacyId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDomain--;
}

core.int buildCounterDrive = 0;
api.Drive buildDrive() {
  var o = api.Drive();
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    o.name = 'foo';
    o.root = buildDriveItem();
    o.title = 'foo';
  }
  buildCounterDrive--;
  return o;
}

void checkDrive(api.Drive o) {
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkDriveItem(o.root);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDrive--;
}

core.List<api.Action> buildUnnamed3870() {
  var o = <api.Action>[];
  o.add(buildAction());
  o.add(buildAction());
  return o;
}

void checkUnnamed3870(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.List<api.Actor> buildUnnamed3871() {
  var o = <api.Actor>[];
  o.add(buildActor());
  o.add(buildActor());
  return o;
}

void checkUnnamed3871(core.List<api.Actor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActor(o[0]);
  checkActor(o[1]);
}

core.List<api.Target> buildUnnamed3872() {
  var o = <api.Target>[];
  o.add(buildTarget());
  o.add(buildTarget());
  return o;
}

void checkUnnamed3872(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.int buildCounterDriveActivity = 0;
api.DriveActivity buildDriveActivity() {
  var o = api.DriveActivity();
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    o.actions = buildUnnamed3870();
    o.actors = buildUnnamed3871();
    o.primaryActionDetail = buildActionDetail();
    o.targets = buildUnnamed3872();
    o.timeRange = buildTimeRange();
    o.timestamp = 'foo';
  }
  buildCounterDriveActivity--;
  return o;
}

void checkDriveActivity(api.DriveActivity o) {
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    checkUnnamed3870(o.actions);
    checkUnnamed3871(o.actors);
    checkActionDetail(o.primaryActionDetail);
    checkUnnamed3872(o.targets);
    checkTimeRange(o.timeRange);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterDriveActivity--;
}

core.int buildCounterDriveFile = 0;
api.DriveFile buildDriveFile() {
  var o = api.DriveFile();
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {}
  buildCounterDriveFile--;
  return o;
}

void checkDriveFile(api.DriveFile o) {
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {}
  buildCounterDriveFile--;
}

core.int buildCounterDriveFolder = 0;
api.DriveFolder buildDriveFolder() {
  var o = api.DriveFolder();
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    o.type = 'foo';
  }
  buildCounterDriveFolder--;
  return o;
}

void checkDriveFolder(api.DriveFolder o) {
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDriveFolder--;
}

core.int buildCounterDriveItem = 0;
api.DriveItem buildDriveItem() {
  var o = api.DriveItem();
  buildCounterDriveItem++;
  if (buildCounterDriveItem < 3) {
    o.driveFile = buildDriveFile();
    o.driveFolder = buildDriveFolder();
    o.file = buildFile();
    o.folder = buildFolder();
    o.mimeType = 'foo';
    o.name = 'foo';
    o.owner = buildOwner();
    o.title = 'foo';
  }
  buildCounterDriveItem--;
  return o;
}

void checkDriveItem(api.DriveItem o) {
  buildCounterDriveItem++;
  if (buildCounterDriveItem < 3) {
    checkDriveFile(o.driveFile);
    checkDriveFolder(o.driveFolder);
    checkFile(o.file);
    checkFolder(o.folder);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOwner(o.owner);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveItem--;
}

core.int buildCounterDriveItemReference = 0;
api.DriveItemReference buildDriveItemReference() {
  var o = api.DriveItemReference();
  buildCounterDriveItemReference++;
  if (buildCounterDriveItemReference < 3) {
    o.driveFile = buildDriveFile();
    o.driveFolder = buildDriveFolder();
    o.file = buildFile();
    o.folder = buildFolder();
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterDriveItemReference--;
  return o;
}

void checkDriveItemReference(api.DriveItemReference o) {
  buildCounterDriveItemReference++;
  if (buildCounterDriveItemReference < 3) {
    checkDriveFile(o.driveFile);
    checkDriveFolder(o.driveFolder);
    checkFile(o.file);
    checkFolder(o.folder);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveItemReference--;
}

core.int buildCounterDriveReference = 0;
api.DriveReference buildDriveReference() {
  var o = api.DriveReference();
  buildCounterDriveReference++;
  if (buildCounterDriveReference < 3) {
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterDriveReference--;
  return o;
}

void checkDriveReference(api.DriveReference o) {
  buildCounterDriveReference++;
  if (buildCounterDriveReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveReference--;
}

core.int buildCounterEdit = 0;
api.Edit buildEdit() {
  var o = api.Edit();
  buildCounterEdit++;
  if (buildCounterEdit < 3) {}
  buildCounterEdit--;
  return o;
}

void checkEdit(api.Edit o) {
  buildCounterEdit++;
  if (buildCounterEdit < 3) {}
  buildCounterEdit--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  var o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {}
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {}
  buildCounterFile--;
}

core.int buildCounterFileComment = 0;
api.FileComment buildFileComment() {
  var o = api.FileComment();
  buildCounterFileComment++;
  if (buildCounterFileComment < 3) {
    o.legacyCommentId = 'foo';
    o.legacyDiscussionId = 'foo';
    o.linkToDiscussion = 'foo';
    o.parent = buildDriveItem();
  }
  buildCounterFileComment--;
  return o;
}

void checkFileComment(api.FileComment o) {
  buildCounterFileComment++;
  if (buildCounterFileComment < 3) {
    unittest.expect(o.legacyCommentId, unittest.equals('foo'));
    unittest.expect(o.legacyDiscussionId, unittest.equals('foo'));
    unittest.expect(o.linkToDiscussion, unittest.equals('foo'));
    checkDriveItem(o.parent);
  }
  buildCounterFileComment--;
}

core.int buildCounterFolder = 0;
api.Folder buildFolder() {
  var o = api.Folder();
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    o.type = 'foo';
  }
  buildCounterFolder--;
  return o;
}

void checkFolder(api.Folder o) {
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFolder--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.email = 'foo';
    o.title = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.int buildCounterImpersonation = 0;
api.Impersonation buildImpersonation() {
  var o = api.Impersonation();
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    o.impersonatedUser = buildUser();
  }
  buildCounterImpersonation--;
  return o;
}

void checkImpersonation(api.Impersonation o) {
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    checkUser(o.impersonatedUser);
  }
  buildCounterImpersonation--;
}

core.int buildCounterKnownUser = 0;
api.KnownUser buildKnownUser() {
  var o = api.KnownUser();
  buildCounterKnownUser++;
  if (buildCounterKnownUser < 3) {
    o.isCurrentUser = true;
    o.personName = 'foo';
  }
  buildCounterKnownUser--;
  return o;
}

void checkKnownUser(api.KnownUser o) {
  buildCounterKnownUser++;
  if (buildCounterKnownUser < 3) {
    unittest.expect(o.isCurrentUser, unittest.isTrue);
    unittest.expect(o.personName, unittest.equals('foo'));
  }
  buildCounterKnownUser--;
}

core.int buildCounterLegacy = 0;
api.Legacy buildLegacy() {
  var o = api.Legacy();
  buildCounterLegacy++;
  if (buildCounterLegacy < 3) {}
  buildCounterLegacy--;
  return o;
}

void checkLegacy(api.Legacy o) {
  buildCounterLegacy++;
  if (buildCounterLegacy < 3) {}
  buildCounterLegacy--;
}

core.List<api.TargetReference> buildUnnamed3873() {
  var o = <api.TargetReference>[];
  o.add(buildTargetReference());
  o.add(buildTargetReference());
  return o;
}

void checkUnnamed3873(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

core.List<api.TargetReference> buildUnnamed3874() {
  var o = <api.TargetReference>[];
  o.add(buildTargetReference());
  o.add(buildTargetReference());
  return o;
}

void checkUnnamed3874(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

core.int buildCounterMove = 0;
api.Move buildMove() {
  var o = api.Move();
  buildCounterMove++;
  if (buildCounterMove < 3) {
    o.addedParents = buildUnnamed3873();
    o.removedParents = buildUnnamed3874();
  }
  buildCounterMove--;
  return o;
}

void checkMove(api.Move o) {
  buildCounterMove++;
  if (buildCounterMove < 3) {
    checkUnnamed3873(o.addedParents);
    checkUnnamed3874(o.removedParents);
  }
  buildCounterMove--;
}

core.int buildCounterNew = 0;
api.New buildNew() {
  var o = api.New();
  buildCounterNew++;
  if (buildCounterNew < 3) {}
  buildCounterNew--;
  return o;
}

void checkNew(api.New o) {
  buildCounterNew++;
  if (buildCounterNew < 3) {}
  buildCounterNew--;
}

core.int buildCounterNoConsolidation = 0;
api.NoConsolidation buildNoConsolidation() {
  var o = api.NoConsolidation();
  buildCounterNoConsolidation++;
  if (buildCounterNoConsolidation < 3) {}
  buildCounterNoConsolidation--;
  return o;
}

void checkNoConsolidation(api.NoConsolidation o) {
  buildCounterNoConsolidation++;
  if (buildCounterNoConsolidation < 3) {}
  buildCounterNoConsolidation--;
}

core.int buildCounterOwner = 0;
api.Owner buildOwner() {
  var o = api.Owner();
  buildCounterOwner++;
  if (buildCounterOwner < 3) {
    o.domain = buildDomain();
    o.drive = buildDriveReference();
    o.teamDrive = buildTeamDriveReference();
    o.user = buildUser();
  }
  buildCounterOwner--;
  return o;
}

void checkOwner(api.Owner o) {
  buildCounterOwner++;
  if (buildCounterOwner < 3) {
    checkDomain(o.domain);
    checkDriveReference(o.drive);
    checkTeamDriveReference(o.teamDrive);
    checkUser(o.user);
  }
  buildCounterOwner--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  var o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.allowDiscovery = true;
    o.anyone = buildAnyone();
    o.domain = buildDomain();
    o.group = buildGroup();
    o.role = 'foo';
    o.user = buildUser();
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.allowDiscovery, unittest.isTrue);
    checkAnyone(o.anyone);
    checkDomain(o.domain);
    checkGroup(o.group);
    unittest.expect(o.role, unittest.equals('foo'));
    checkUser(o.user);
  }
  buildCounterPermission--;
}

core.List<api.Permission> buildUnnamed3875() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed3875(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.List<api.Permission> buildUnnamed3876() {
  var o = <api.Permission>[];
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

void checkUnnamed3876(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionChange = 0;
api.PermissionChange buildPermissionChange() {
  var o = api.PermissionChange();
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    o.addedPermissions = buildUnnamed3875();
    o.removedPermissions = buildUnnamed3876();
  }
  buildCounterPermissionChange--;
  return o;
}

void checkPermissionChange(api.PermissionChange o) {
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    checkUnnamed3875(o.addedPermissions);
    checkUnnamed3876(o.removedPermissions);
  }
  buildCounterPermissionChange--;
}

core.int buildCounterPost = 0;
api.Post buildPost() {
  var o = api.Post();
  buildCounterPost++;
  if (buildCounterPost < 3) {
    o.subtype = 'foo';
  }
  buildCounterPost--;
  return o;
}

void checkPost(api.Post o) {
  buildCounterPost++;
  if (buildCounterPost < 3) {
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterPost--;
}

core.int buildCounterQueryDriveActivityRequest = 0;
api.QueryDriveActivityRequest buildQueryDriveActivityRequest() {
  var o = api.QueryDriveActivityRequest();
  buildCounterQueryDriveActivityRequest++;
  if (buildCounterQueryDriveActivityRequest < 3) {
    o.ancestorName = 'foo';
    o.consolidationStrategy = buildConsolidationStrategy();
    o.filter = 'foo';
    o.itemName = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterQueryDriveActivityRequest--;
  return o;
}

void checkQueryDriveActivityRequest(api.QueryDriveActivityRequest o) {
  buildCounterQueryDriveActivityRequest++;
  if (buildCounterQueryDriveActivityRequest < 3) {
    unittest.expect(o.ancestorName, unittest.equals('foo'));
    checkConsolidationStrategy(o.consolidationStrategy);
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.itemName, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterQueryDriveActivityRequest--;
}

core.List<api.DriveActivity> buildUnnamed3877() {
  var o = <api.DriveActivity>[];
  o.add(buildDriveActivity());
  o.add(buildDriveActivity());
  return o;
}

void checkUnnamed3877(core.List<api.DriveActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDriveActivity(o[0]);
  checkDriveActivity(o[1]);
}

core.int buildCounterQueryDriveActivityResponse = 0;
api.QueryDriveActivityResponse buildQueryDriveActivityResponse() {
  var o = api.QueryDriveActivityResponse();
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    o.activities = buildUnnamed3877();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryDriveActivityResponse--;
  return o;
}

void checkQueryDriveActivityResponse(api.QueryDriveActivityResponse o) {
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    checkUnnamed3877(o.activities);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterQueryDriveActivityResponse--;
}

core.int buildCounterRename = 0;
api.Rename buildRename() {
  var o = api.Rename();
  buildCounterRename++;
  if (buildCounterRename < 3) {
    o.newTitle = 'foo';
    o.oldTitle = 'foo';
  }
  buildCounterRename--;
  return o;
}

void checkRename(api.Rename o) {
  buildCounterRename++;
  if (buildCounterRename < 3) {
    unittest.expect(o.newTitle, unittest.equals('foo'));
    unittest.expect(o.oldTitle, unittest.equals('foo'));
  }
  buildCounterRename--;
}

core.int buildCounterRestore = 0;
api.Restore buildRestore() {
  var o = api.Restore();
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    o.type = 'foo';
  }
  buildCounterRestore--;
  return o;
}

void checkRestore(api.Restore o) {
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRestore--;
}

core.int buildCounterRestrictionChange = 0;
api.RestrictionChange buildRestrictionChange() {
  var o = api.RestrictionChange();
  buildCounterRestrictionChange++;
  if (buildCounterRestrictionChange < 3) {
    o.feature = 'foo';
    o.newRestriction = 'foo';
  }
  buildCounterRestrictionChange--;
  return o;
}

void checkRestrictionChange(api.RestrictionChange o) {
  buildCounterRestrictionChange++;
  if (buildCounterRestrictionChange < 3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.newRestriction, unittest.equals('foo'));
  }
  buildCounterRestrictionChange--;
}

core.List<api.RestrictionChange> buildUnnamed3878() {
  var o = <api.RestrictionChange>[];
  o.add(buildRestrictionChange());
  o.add(buildRestrictionChange());
  return o;
}

void checkUnnamed3878(core.List<api.RestrictionChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestrictionChange(o[0]);
  checkRestrictionChange(o[1]);
}

core.int buildCounterSettingsChange = 0;
api.SettingsChange buildSettingsChange() {
  var o = api.SettingsChange();
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    o.restrictionChanges = buildUnnamed3878();
  }
  buildCounterSettingsChange--;
  return o;
}

void checkSettingsChange(api.SettingsChange o) {
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    checkUnnamed3878(o.restrictionChanges);
  }
  buildCounterSettingsChange--;
}

core.int buildCounterSuggestion = 0;
api.Suggestion buildSuggestion() {
  var o = api.Suggestion();
  buildCounterSuggestion++;
  if (buildCounterSuggestion < 3) {
    o.subtype = 'foo';
  }
  buildCounterSuggestion--;
  return o;
}

void checkSuggestion(api.Suggestion o) {
  buildCounterSuggestion++;
  if (buildCounterSuggestion < 3) {
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterSuggestion--;
}

core.int buildCounterSystemEvent = 0;
api.SystemEvent buildSystemEvent() {
  var o = api.SystemEvent();
  buildCounterSystemEvent++;
  if (buildCounterSystemEvent < 3) {
    o.type = 'foo';
  }
  buildCounterSystemEvent--;
  return o;
}

void checkSystemEvent(api.SystemEvent o) {
  buildCounterSystemEvent++;
  if (buildCounterSystemEvent < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSystemEvent--;
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  var o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.drive = buildDrive();
    o.driveItem = buildDriveItem();
    o.fileComment = buildFileComment();
    o.teamDrive = buildTeamDrive();
  }
  buildCounterTarget--;
  return o;
}

void checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    checkDrive(o.drive);
    checkDriveItem(o.driveItem);
    checkFileComment(o.fileComment);
    checkTeamDrive(o.teamDrive);
  }
  buildCounterTarget--;
}

core.int buildCounterTargetReference = 0;
api.TargetReference buildTargetReference() {
  var o = api.TargetReference();
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    o.drive = buildDriveReference();
    o.driveItem = buildDriveItemReference();
    o.teamDrive = buildTeamDriveReference();
  }
  buildCounterTargetReference--;
  return o;
}

void checkTargetReference(api.TargetReference o) {
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    checkDriveReference(o.drive);
    checkDriveItemReference(o.driveItem);
    checkTeamDriveReference(o.teamDrive);
  }
  buildCounterTargetReference--;
}

core.int buildCounterTeamDrive = 0;
api.TeamDrive buildTeamDrive() {
  var o = api.TeamDrive();
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    o.name = 'foo';
    o.root = buildDriveItem();
    o.title = 'foo';
  }
  buildCounterTeamDrive--;
  return o;
}

void checkTeamDrive(api.TeamDrive o) {
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkDriveItem(o.root);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterTeamDrive--;
}

core.int buildCounterTeamDriveReference = 0;
api.TeamDriveReference buildTeamDriveReference() {
  var o = api.TeamDriveReference();
  buildCounterTeamDriveReference++;
  if (buildCounterTeamDriveReference < 3) {
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterTeamDriveReference--;
  return o;
}

void checkTeamDriveReference(api.TeamDriveReference o) {
  buildCounterTeamDriveReference++;
  if (buildCounterTeamDriveReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterTeamDriveReference--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  var o = api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeRange--;
  return o;
}

void checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.int buildCounterUnknownUser = 0;
api.UnknownUser buildUnknownUser() {
  var o = api.UnknownUser();
  buildCounterUnknownUser++;
  if (buildCounterUnknownUser < 3) {}
  buildCounterUnknownUser--;
  return o;
}

void checkUnknownUser(api.UnknownUser o) {
  buildCounterUnknownUser++;
  if (buildCounterUnknownUser < 3) {}
  buildCounterUnknownUser--;
}

core.int buildCounterUpload = 0;
api.Upload buildUpload() {
  var o = api.Upload();
  buildCounterUpload++;
  if (buildCounterUpload < 3) {}
  buildCounterUpload--;
  return o;
}

void checkUpload(api.Upload o) {
  buildCounterUpload++;
  if (buildCounterUpload < 3) {}
  buildCounterUpload--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.deletedUser = buildDeletedUser();
    o.knownUser = buildKnownUser();
    o.unknownUser = buildUnknownUser();
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkDeletedUser(o.deletedUser);
    checkKnownUser(o.knownUser);
    checkUnknownUser(o.unknownUser);
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () {
      var o = buildAction();
      var od = api.Action.fromJson(o.toJson());
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActionDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildActionDetail();
      var od = api.ActionDetail.fromJson(o.toJson());
      checkActionDetail(od);
    });
  });

  unittest.group('obj-schema-Actor', () {
    unittest.test('to-json--from-json', () {
      var o = buildActor();
      var od = api.Actor.fromJson(o.toJson());
      checkActor(od);
    });
  });

  unittest.group('obj-schema-Administrator', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministrator();
      var od = api.Administrator.fromJson(o.toJson());
      checkAdministrator(od);
    });
  });

  unittest.group('obj-schema-AnonymousUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnonymousUser();
      var od = api.AnonymousUser.fromJson(o.toJson());
      checkAnonymousUser(od);
    });
  });

  unittest.group('obj-schema-Anyone', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnyone();
      var od = api.Anyone.fromJson(o.toJson());
      checkAnyone(od);
    });
  });

  unittest.group('obj-schema-ApplicationReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplicationReference();
      var od = api.ApplicationReference.fromJson(o.toJson());
      checkApplicationReference(od);
    });
  });

  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssignment();
      var od = api.Assignment.fromJson(o.toJson());
      checkAssignment(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () {
      var o = buildComment();
      var od = api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group('obj-schema-ConsolidationStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildConsolidationStrategy();
      var od = api.ConsolidationStrategy.fromJson(o.toJson());
      checkConsolidationStrategy(od);
    });
  });

  unittest.group('obj-schema-Copy', () {
    unittest.test('to-json--from-json', () {
      var o = buildCopy();
      var od = api.Copy.fromJson(o.toJson());
      checkCopy(od);
    });
  });

  unittest.group('obj-schema-Create', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreate();
      var od = api.Create.fromJson(o.toJson());
      checkCreate(od);
    });
  });

  unittest.group('obj-schema-DataLeakPreventionChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataLeakPreventionChange();
      var od = api.DataLeakPreventionChange.fromJson(o.toJson());
      checkDataLeakPreventionChange(od);
    });
  });

  unittest.group('obj-schema-Delete', () {
    unittest.test('to-json--from-json', () {
      var o = buildDelete();
      var od = api.Delete.fromJson(o.toJson());
      checkDelete(od);
    });
  });

  unittest.group('obj-schema-DeletedUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeletedUser();
      var od = api.DeletedUser.fromJson(o.toJson());
      checkDeletedUser(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomain();
      var od = api.Domain.fromJson(o.toJson());
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-Drive', () {
    unittest.test('to-json--from-json', () {
      var o = buildDrive();
      var od = api.Drive.fromJson(o.toJson());
      checkDrive(od);
    });
  });

  unittest.group('obj-schema-DriveActivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveActivity();
      var od = api.DriveActivity.fromJson(o.toJson());
      checkDriveActivity(od);
    });
  });

  unittest.group('obj-schema-DriveFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveFile();
      var od = api.DriveFile.fromJson(o.toJson());
      checkDriveFile(od);
    });
  });

  unittest.group('obj-schema-DriveFolder', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveFolder();
      var od = api.DriveFolder.fromJson(o.toJson());
      checkDriveFolder(od);
    });
  });

  unittest.group('obj-schema-DriveItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveItem();
      var od = api.DriveItem.fromJson(o.toJson());
      checkDriveItem(od);
    });
  });

  unittest.group('obj-schema-DriveItemReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveItemReference();
      var od = api.DriveItemReference.fromJson(o.toJson());
      checkDriveItemReference(od);
    });
  });

  unittest.group('obj-schema-DriveReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveReference();
      var od = api.DriveReference.fromJson(o.toJson());
      checkDriveReference(od);
    });
  });

  unittest.group('obj-schema-Edit', () {
    unittest.test('to-json--from-json', () {
      var o = buildEdit();
      var od = api.Edit.fromJson(o.toJson());
      checkEdit(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () {
      var o = buildFile();
      var od = api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileComment', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileComment();
      var od = api.FileComment.fromJson(o.toJson());
      checkFileComment(od);
    });
  });

  unittest.group('obj-schema-Folder', () {
    unittest.test('to-json--from-json', () {
      var o = buildFolder();
      var od = api.Folder.fromJson(o.toJson());
      checkFolder(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-Impersonation', () {
    unittest.test('to-json--from-json', () {
      var o = buildImpersonation();
      var od = api.Impersonation.fromJson(o.toJson());
      checkImpersonation(od);
    });
  });

  unittest.group('obj-schema-KnownUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildKnownUser();
      var od = api.KnownUser.fromJson(o.toJson());
      checkKnownUser(od);
    });
  });

  unittest.group('obj-schema-Legacy', () {
    unittest.test('to-json--from-json', () {
      var o = buildLegacy();
      var od = api.Legacy.fromJson(o.toJson());
      checkLegacy(od);
    });
  });

  unittest.group('obj-schema-Move', () {
    unittest.test('to-json--from-json', () {
      var o = buildMove();
      var od = api.Move.fromJson(o.toJson());
      checkMove(od);
    });
  });

  unittest.group('obj-schema-New', () {
    unittest.test('to-json--from-json', () {
      var o = buildNew();
      var od = api.New.fromJson(o.toJson());
      checkNew(od);
    });
  });

  unittest.group('obj-schema-NoConsolidation', () {
    unittest.test('to-json--from-json', () {
      var o = buildNoConsolidation();
      var od = api.NoConsolidation.fromJson(o.toJson());
      checkNoConsolidation(od);
    });
  });

  unittest.group('obj-schema-Owner', () {
    unittest.test('to-json--from-json', () {
      var o = buildOwner();
      var od = api.Owner.fromJson(o.toJson());
      checkOwner(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermission();
      var od = api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group('obj-schema-PermissionChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermissionChange();
      var od = api.PermissionChange.fromJson(o.toJson());
      checkPermissionChange(od);
    });
  });

  unittest.group('obj-schema-Post', () {
    unittest.test('to-json--from-json', () {
      var o = buildPost();
      var od = api.Post.fromJson(o.toJson());
      checkPost(od);
    });
  });

  unittest.group('obj-schema-QueryDriveActivityRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryDriveActivityRequest();
      var od = api.QueryDriveActivityRequest.fromJson(o.toJson());
      checkQueryDriveActivityRequest(od);
    });
  });

  unittest.group('obj-schema-QueryDriveActivityResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryDriveActivityResponse();
      var od = api.QueryDriveActivityResponse.fromJson(o.toJson());
      checkQueryDriveActivityResponse(od);
    });
  });

  unittest.group('obj-schema-Rename', () {
    unittest.test('to-json--from-json', () {
      var o = buildRename();
      var od = api.Rename.fromJson(o.toJson());
      checkRename(od);
    });
  });

  unittest.group('obj-schema-Restore', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestore();
      var od = api.Restore.fromJson(o.toJson());
      checkRestore(od);
    });
  });

  unittest.group('obj-schema-RestrictionChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestrictionChange();
      var od = api.RestrictionChange.fromJson(o.toJson());
      checkRestrictionChange(od);
    });
  });

  unittest.group('obj-schema-SettingsChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettingsChange();
      var od = api.SettingsChange.fromJson(o.toJson());
      checkSettingsChange(od);
    });
  });

  unittest.group('obj-schema-Suggestion', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestion();
      var od = api.Suggestion.fromJson(o.toJson());
      checkSuggestion(od);
    });
  });

  unittest.group('obj-schema-SystemEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystemEvent();
      var od = api.SystemEvent.fromJson(o.toJson());
      checkSystemEvent(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () {
      var o = buildTarget();
      var od = api.Target.fromJson(o.toJson());
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetReference();
      var od = api.TargetReference.fromJson(o.toJson());
      checkTargetReference(od);
    });
  });

  unittest.group('obj-schema-TeamDrive', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDrive();
      var od = api.TeamDrive.fromJson(o.toJson());
      checkTeamDrive(od);
    });
  });

  unittest.group('obj-schema-TeamDriveReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveReference();
      var od = api.TeamDriveReference.fromJson(o.toJson());
      checkTeamDriveReference(od);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeRange();
      var od = api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-UnknownUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnknownUser();
      var od = api.UnknownUser.fromJson(o.toJson());
      checkUnknownUser(od);
    });
  });

  unittest.group('obj-schema-Upload', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpload();
      var od = api.Upload.fromJson(o.toJson());
      checkUpload(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('resource-ActivityResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.ActivityResourceApi res = api.DriveactivityApi(mock).activity;
      var arg_request = buildQueryDriveActivityRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.QueryDriveActivityRequest.fromJson(json);
        checkQueryDriveActivityRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2/activity:query"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildQueryDriveActivityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryDriveActivityResponse(response);
      })));
    });
  });
}
