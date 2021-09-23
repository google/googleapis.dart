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

import 'package:googleapis/driveactivity/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
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
    checkActor(o.actor!);
    checkActionDetail(o.detail!);
    checkTarget(o.target!);
    checkTimeRange(o.timeRange!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterAction--;
}

core.int buildCounterActionDetail = 0;
api.ActionDetail buildActionDetail() {
  final o = api.ActionDetail();
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
    checkComment(o.comment!);
    checkCreate(o.create!);
    checkDelete(o.delete!);
    checkDataLeakPreventionChange(o.dlpChange!);
    checkEdit(o.edit!);
    checkMove(o.move!);
    checkPermissionChange(o.permissionChange!);
    checkApplicationReference(o.reference!);
    checkRename(o.rename!);
    checkRestore(o.restore!);
    checkSettingsChange(o.settingsChange!);
  }
  buildCounterActionDetail--;
}

core.int buildCounterActor = 0;
api.Actor buildActor() {
  final o = api.Actor();
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
    checkAdministrator(o.administrator!);
    checkAnonymousUser(o.anonymous!);
    checkImpersonation(o.impersonation!);
    checkSystemEvent(o.system!);
    checkUser(o.user!);
  }
  buildCounterActor--;
}

core.int buildCounterAdministrator = 0;
api.Administrator buildAdministrator() {
  final o = api.Administrator();
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
  final o = api.AnonymousUser();
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
  final o = api.Anyone();
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
  final o = api.ApplicationReference();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationReference--;
}

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  final o = api.Assignment();
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
    checkUser(o.assignedUser!);
    unittest.expect(
      o.subtype!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssignment--;
}

core.List<api.User> buildUnnamed0() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed0(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.assignment = buildAssignment();
    o.mentionedUsers = buildUnnamed0();
    o.post = buildPost();
    o.suggestion = buildSuggestion();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkAssignment(o.assignment!);
    checkUnnamed0(o.mentionedUsers!);
    checkPost(o.post!);
    checkSuggestion(o.suggestion!);
  }
  buildCounterComment--;
}

core.int buildCounterConsolidationStrategy = 0;
api.ConsolidationStrategy buildConsolidationStrategy() {
  final o = api.ConsolidationStrategy();
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
    checkLegacy(o.legacy!);
    checkNoConsolidation(o.none!);
  }
  buildCounterConsolidationStrategy--;
}

core.int buildCounterCopy = 0;
api.Copy buildCopy() {
  final o = api.Copy();
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
    checkTargetReference(o.originalObject!);
  }
  buildCounterCopy--;
}

core.int buildCounterCreate = 0;
api.Create buildCreate() {
  final o = api.Create();
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
    checkCopy(o.copy!);
    checkNew(o.new_!);
    checkUpload(o.upload!);
  }
  buildCounterCreate--;
}

core.int buildCounterDataLeakPreventionChange = 0;
api.DataLeakPreventionChange buildDataLeakPreventionChange() {
  final o = api.DataLeakPreventionChange();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataLeakPreventionChange--;
}

core.int buildCounterDelete = 0;
api.Delete buildDelete() {
  final o = api.Delete();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDelete--;
}

core.int buildCounterDeletedUser = 0;
api.DeletedUser buildDeletedUser() {
  final o = api.DeletedUser();
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
  final o = api.Domain();
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
    unittest.expect(
      o.legacyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomain--;
}

core.int buildCounterDrive = 0;
api.Drive buildDrive() {
  final o = api.Drive();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkDriveItem(o.root!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDrive--;
}

core.List<api.Action> buildUnnamed1() => [
      buildAction(),
      buildAction(),
    ];

void checkUnnamed1(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.List<api.Actor> buildUnnamed2() => [
      buildActor(),
      buildActor(),
    ];

void checkUnnamed2(core.List<api.Actor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActor(o[0]);
  checkActor(o[1]);
}

core.List<api.Target> buildUnnamed3() => [
      buildTarget(),
      buildTarget(),
    ];

void checkUnnamed3(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.int buildCounterDriveActivity = 0;
api.DriveActivity buildDriveActivity() {
  final o = api.DriveActivity();
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    o.actions = buildUnnamed1();
    o.actors = buildUnnamed2();
    o.primaryActionDetail = buildActionDetail();
    o.targets = buildUnnamed3();
    o.timeRange = buildTimeRange();
    o.timestamp = 'foo';
  }
  buildCounterDriveActivity--;
  return o;
}

void checkDriveActivity(api.DriveActivity o) {
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    checkUnnamed1(o.actions!);
    checkUnnamed2(o.actors!);
    checkActionDetail(o.primaryActionDetail!);
    checkUnnamed3(o.targets!);
    checkTimeRange(o.timeRange!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveActivity--;
}

core.int buildCounterDriveFile = 0;
api.DriveFile buildDriveFile() {
  final o = api.DriveFile();
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
  final o = api.DriveFolder();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveFolder--;
}

core.int buildCounterDriveItem = 0;
api.DriveItem buildDriveItem() {
  final o = api.DriveItem();
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
    checkDriveFile(o.driveFile!);
    checkDriveFolder(o.driveFolder!);
    checkFile(o.file!);
    checkFolder(o.folder!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOwner(o.owner!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveItem--;
}

core.int buildCounterDriveItemReference = 0;
api.DriveItemReference buildDriveItemReference() {
  final o = api.DriveItemReference();
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
    checkDriveFile(o.driveFile!);
    checkDriveFolder(o.driveFolder!);
    checkFile(o.file!);
    checkFolder(o.folder!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveItemReference--;
}

core.int buildCounterDriveReference = 0;
api.DriveReference buildDriveReference() {
  final o = api.DriveReference();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveReference--;
}

core.int buildCounterEdit = 0;
api.Edit buildEdit() {
  final o = api.Edit();
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
  final o = api.File();
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
  final o = api.FileComment();
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
    unittest.expect(
      o.legacyCommentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.legacyDiscussionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkToDiscussion!,
      unittest.equals('foo'),
    );
    checkDriveItem(o.parent!);
  }
  buildCounterFileComment--;
}

core.int buildCounterFolder = 0;
api.Folder buildFolder() {
  final o = api.Folder();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFolder--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
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
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.int buildCounterImpersonation = 0;
api.Impersonation buildImpersonation() {
  final o = api.Impersonation();
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
    checkUser(o.impersonatedUser!);
  }
  buildCounterImpersonation--;
}

core.int buildCounterKnownUser = 0;
api.KnownUser buildKnownUser() {
  final o = api.KnownUser();
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
    unittest.expect(o.isCurrentUser!, unittest.isTrue);
    unittest.expect(
      o.personName!,
      unittest.equals('foo'),
    );
  }
  buildCounterKnownUser--;
}

core.int buildCounterLegacy = 0;
api.Legacy buildLegacy() {
  final o = api.Legacy();
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

core.List<api.TargetReference> buildUnnamed4() => [
      buildTargetReference(),
      buildTargetReference(),
    ];

void checkUnnamed4(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

core.List<api.TargetReference> buildUnnamed5() => [
      buildTargetReference(),
      buildTargetReference(),
    ];

void checkUnnamed5(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

core.int buildCounterMove = 0;
api.Move buildMove() {
  final o = api.Move();
  buildCounterMove++;
  if (buildCounterMove < 3) {
    o.addedParents = buildUnnamed4();
    o.removedParents = buildUnnamed5();
  }
  buildCounterMove--;
  return o;
}

void checkMove(api.Move o) {
  buildCounterMove++;
  if (buildCounterMove < 3) {
    checkUnnamed4(o.addedParents!);
    checkUnnamed5(o.removedParents!);
  }
  buildCounterMove--;
}

core.int buildCounterNew = 0;
api.New buildNew() {
  final o = api.New();
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
  final o = api.NoConsolidation();
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
  final o = api.Owner();
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
    checkDomain(o.domain!);
    checkDriveReference(o.drive!);
    checkTeamDriveReference(o.teamDrive!);
    checkUser(o.user!);
  }
  buildCounterOwner--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
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
    unittest.expect(o.allowDiscovery!, unittest.isTrue);
    checkAnyone(o.anyone!);
    checkDomain(o.domain!);
    checkGroup(o.group!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkUser(o.user!);
  }
  buildCounterPermission--;
}

core.List<api.Permission> buildUnnamed6() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed6(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.List<api.Permission> buildUnnamed7() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed7(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionChange = 0;
api.PermissionChange buildPermissionChange() {
  final o = api.PermissionChange();
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    o.addedPermissions = buildUnnamed6();
    o.removedPermissions = buildUnnamed7();
  }
  buildCounterPermissionChange--;
  return o;
}

void checkPermissionChange(api.PermissionChange o) {
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    checkUnnamed6(o.addedPermissions!);
    checkUnnamed7(o.removedPermissions!);
  }
  buildCounterPermissionChange--;
}

core.int buildCounterPost = 0;
api.Post buildPost() {
  final o = api.Post();
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
    unittest.expect(
      o.subtype!,
      unittest.equals('foo'),
    );
  }
  buildCounterPost--;
}

core.int buildCounterQueryDriveActivityRequest = 0;
api.QueryDriveActivityRequest buildQueryDriveActivityRequest() {
  final o = api.QueryDriveActivityRequest();
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
    unittest.expect(
      o.ancestorName!,
      unittest.equals('foo'),
    );
    checkConsolidationStrategy(o.consolidationStrategy!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryDriveActivityRequest--;
}

core.List<api.DriveActivity> buildUnnamed8() => [
      buildDriveActivity(),
      buildDriveActivity(),
    ];

void checkUnnamed8(core.List<api.DriveActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDriveActivity(o[0]);
  checkDriveActivity(o[1]);
}

core.int buildCounterQueryDriveActivityResponse = 0;
api.QueryDriveActivityResponse buildQueryDriveActivityResponse() {
  final o = api.QueryDriveActivityResponse();
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    o.activities = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryDriveActivityResponse--;
  return o;
}

void checkQueryDriveActivityResponse(api.QueryDriveActivityResponse o) {
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    checkUnnamed8(o.activities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryDriveActivityResponse--;
}

core.int buildCounterRename = 0;
api.Rename buildRename() {
  final o = api.Rename();
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
    unittest.expect(
      o.newTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldTitle!,
      unittest.equals('foo'),
    );
  }
  buildCounterRename--;
}

core.int buildCounterRestore = 0;
api.Restore buildRestore() {
  final o = api.Restore();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestore--;
}

core.int buildCounterRestrictionChange = 0;
api.RestrictionChange buildRestrictionChange() {
  final o = api.RestrictionChange();
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
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newRestriction!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestrictionChange--;
}

core.List<api.RestrictionChange> buildUnnamed9() => [
      buildRestrictionChange(),
      buildRestrictionChange(),
    ];

void checkUnnamed9(core.List<api.RestrictionChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestrictionChange(o[0]);
  checkRestrictionChange(o[1]);
}

core.int buildCounterSettingsChange = 0;
api.SettingsChange buildSettingsChange() {
  final o = api.SettingsChange();
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    o.restrictionChanges = buildUnnamed9();
  }
  buildCounterSettingsChange--;
  return o;
}

void checkSettingsChange(api.SettingsChange o) {
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    checkUnnamed9(o.restrictionChanges!);
  }
  buildCounterSettingsChange--;
}

core.int buildCounterSuggestion = 0;
api.Suggestion buildSuggestion() {
  final o = api.Suggestion();
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
    unittest.expect(
      o.subtype!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuggestion--;
}

core.int buildCounterSystemEvent = 0;
api.SystemEvent buildSystemEvent() {
  final o = api.SystemEvent();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemEvent--;
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
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
    checkDrive(o.drive!);
    checkDriveItem(o.driveItem!);
    checkFileComment(o.fileComment!);
    checkTeamDrive(o.teamDrive!);
  }
  buildCounterTarget--;
}

core.int buildCounterTargetReference = 0;
api.TargetReference buildTargetReference() {
  final o = api.TargetReference();
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
    checkDriveReference(o.drive!);
    checkDriveItemReference(o.driveItem!);
    checkTeamDriveReference(o.teamDrive!);
  }
  buildCounterTargetReference--;
}

core.int buildCounterTeamDrive = 0;
api.TeamDrive buildTeamDrive() {
  final o = api.TeamDrive();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkDriveItem(o.root!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeamDrive--;
}

core.int buildCounterTeamDriveReference = 0;
api.TeamDriveReference buildTeamDriveReference() {
  final o = api.TeamDriveReference();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeamDriveReference--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  final o = api.TimeRange();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeRange--;
}

core.int buildCounterUnknownUser = 0;
api.UnknownUser buildUnknownUser() {
  final o = api.UnknownUser();
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
  final o = api.Upload();
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
  final o = api.User();
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
    checkDeletedUser(o.deletedUser!);
    checkKnownUser(o.knownUser!);
    checkUnknownUser(o.unknownUser!);
  }
  buildCounterUser--;
}

void main() {
  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionDetail(od);
    });
  });

  unittest.group('obj-schema-Actor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Actor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActor(od);
    });
  });

  unittest.group('obj-schema-Administrator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministrator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Administrator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrator(od);
    });
  });

  unittest.group('obj-schema-AnonymousUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnonymousUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnonymousUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnonymousUser(od);
    });
  });

  unittest.group('obj-schema-Anyone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnyone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Anyone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnyone(od);
    });
  });

  unittest.group('obj-schema-ApplicationReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationReference(od);
    });
  });

  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Assignment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssignment(od);
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

  unittest.group('obj-schema-ConsolidationStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsolidationStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsolidationStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsolidationStrategy(od);
    });
  });

  unittest.group('obj-schema-Copy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Copy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCopy(od);
    });
  });

  unittest.group('obj-schema-Create', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Create.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCreate(od);
    });
  });

  unittest.group('obj-schema-DataLeakPreventionChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataLeakPreventionChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataLeakPreventionChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataLeakPreventionChange(od);
    });
  });

  unittest.group('obj-schema-Delete', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDelete();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Delete.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDelete(od);
    });
  });

  unittest.group('obj-schema-DeletedUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeletedUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeletedUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeletedUser(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomain(od);
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

  unittest.group('obj-schema-DriveActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveActivity(od);
    });
  });

  unittest.group('obj-schema-DriveFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DriveFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDriveFile(od);
    });
  });

  unittest.group('obj-schema-DriveFolder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveFolder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveFolder(od);
    });
  });

  unittest.group('obj-schema-DriveItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DriveItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDriveItem(od);
    });
  });

  unittest.group('obj-schema-DriveItemReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveItemReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveItemReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveItemReference(od);
    });
  });

  unittest.group('obj-schema-DriveReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveReference(od);
    });
  });

  unittest.group('obj-schema-Edit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEdit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Edit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEdit(od);
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

  unittest.group('obj-schema-FileComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileComment(od);
    });
  });

  unittest.group('obj-schema-Folder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Folder.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFolder(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-Impersonation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpersonation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Impersonation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImpersonation(od);
    });
  });

  unittest.group('obj-schema-KnownUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKnownUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KnownUser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKnownUser(od);
    });
  });

  unittest.group('obj-schema-Legacy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLegacy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Legacy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLegacy(od);
    });
  });

  unittest.group('obj-schema-Move', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMove();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Move.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMove(od);
    });
  });

  unittest.group('obj-schema-New', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNew();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.New.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNew(od);
    });
  });

  unittest.group('obj-schema-NoConsolidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNoConsolidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NoConsolidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNoConsolidation(od);
    });
  });

  unittest.group('obj-schema-Owner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOwner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Owner.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOwner(od);
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

  unittest.group('obj-schema-PermissionChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionChange(od);
    });
  });

  unittest.group('obj-schema-Post', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Post.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPost(od);
    });
  });

  unittest.group('obj-schema-QueryDriveActivityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryDriveActivityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryDriveActivityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryDriveActivityRequest(od);
    });
  });

  unittest.group('obj-schema-QueryDriveActivityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryDriveActivityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryDriveActivityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryDriveActivityResponse(od);
    });
  });

  unittest.group('obj-schema-Rename', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRename();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rename.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRename(od);
    });
  });

  unittest.group('obj-schema-Restore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Restore.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRestore(od);
    });
  });

  unittest.group('obj-schema-RestrictionChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictionChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictionChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestrictionChange(od);
    });
  });

  unittest.group('obj-schema-SettingsChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettingsChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettingsChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettingsChange(od);
    });
  });

  unittest.group('obj-schema-Suggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Suggestion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSuggestion(od);
    });
  });

  unittest.group('obj-schema-SystemEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemEvent(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Target.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetReference(od);
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

  unittest.group('obj-schema-TeamDriveReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveReference(od);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-UnknownUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnknownUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnknownUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnknownUser(od);
    });
  });

  unittest.group('obj-schema-Upload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Upload.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUpload(od);
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

  unittest.group('resource-ActivityResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.DriveActivityApi(mock).activity;
      final arg_request = buildQueryDriveActivityRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryDriveActivityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryDriveActivityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2/activity:query'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildQueryDriveActivityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.query(arg_request, $fields: arg_$fields);
      checkQueryDriveActivityResponse(
          response as api.QueryDriveActivityResponse);
    });
  });
}
