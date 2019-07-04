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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAction = 0;
buildAction() {
  var o = new api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.actor = buildActor();
    o.detail = buildActionDetail();
    o.target = buildTarget();
    o.timeRange = buildTimeRange();
    o.timestamp = "foo";
  }
  buildCounterAction--;
  return o;
}

checkAction(api.Action o) {
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
buildActionDetail() {
  var o = new api.ActionDetail();
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

checkActionDetail(api.ActionDetail o) {
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
buildActor() {
  var o = new api.Actor();
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

checkActor(api.Actor o) {
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
buildAdministrator() {
  var o = new api.Administrator();
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {}
  buildCounterAdministrator--;
  return o;
}

checkAdministrator(api.Administrator o) {
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {}
  buildCounterAdministrator--;
}

core.int buildCounterAnonymousUser = 0;
buildAnonymousUser() {
  var o = new api.AnonymousUser();
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {}
  buildCounterAnonymousUser--;
  return o;
}

checkAnonymousUser(api.AnonymousUser o) {
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {}
  buildCounterAnonymousUser--;
}

core.int buildCounterAnyone = 0;
buildAnyone() {
  var o = new api.Anyone();
  buildCounterAnyone++;
  if (buildCounterAnyone < 3) {}
  buildCounterAnyone--;
  return o;
}

checkAnyone(api.Anyone o) {
  buildCounterAnyone++;
  if (buildCounterAnyone < 3) {}
  buildCounterAnyone--;
}

core.int buildCounterApplicationReference = 0;
buildApplicationReference() {
  var o = new api.ApplicationReference();
  buildCounterApplicationReference++;
  if (buildCounterApplicationReference < 3) {
    o.type = "foo";
  }
  buildCounterApplicationReference--;
  return o;
}

checkApplicationReference(api.ApplicationReference o) {
  buildCounterApplicationReference++;
  if (buildCounterApplicationReference < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterApplicationReference--;
}

core.int buildCounterAssignment = 0;
buildAssignment() {
  var o = new api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.subtype = "foo";
  }
  buildCounterAssignment--;
  return o;
}

checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterAssignment--;
}

buildUnnamed3638() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed3638(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.assignment = buildAssignment();
    o.mentionedUsers = buildUnnamed3638();
    o.post = buildPost();
    o.suggestion = buildSuggestion();
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkAssignment(o.assignment);
    checkUnnamed3638(o.mentionedUsers);
    checkPost(o.post);
    checkSuggestion(o.suggestion);
  }
  buildCounterComment--;
}

core.int buildCounterConsolidationStrategy = 0;
buildConsolidationStrategy() {
  var o = new api.ConsolidationStrategy();
  buildCounterConsolidationStrategy++;
  if (buildCounterConsolidationStrategy < 3) {
    o.legacy = buildLegacy();
    o.none = buildNoConsolidation();
  }
  buildCounterConsolidationStrategy--;
  return o;
}

checkConsolidationStrategy(api.ConsolidationStrategy o) {
  buildCounterConsolidationStrategy++;
  if (buildCounterConsolidationStrategy < 3) {
    checkLegacy(o.legacy);
    checkNoConsolidation(o.none);
  }
  buildCounterConsolidationStrategy--;
}

core.int buildCounterCopy = 0;
buildCopy() {
  var o = new api.Copy();
  buildCounterCopy++;
  if (buildCounterCopy < 3) {
    o.originalObject = buildTargetReference();
  }
  buildCounterCopy--;
  return o;
}

checkCopy(api.Copy o) {
  buildCounterCopy++;
  if (buildCounterCopy < 3) {
    checkTargetReference(o.originalObject);
  }
  buildCounterCopy--;
}

core.int buildCounterCreate = 0;
buildCreate() {
  var o = new api.Create();
  buildCounterCreate++;
  if (buildCounterCreate < 3) {
    o.copy = buildCopy();
    o.new_ = buildNew();
    o.upload = buildUpload();
  }
  buildCounterCreate--;
  return o;
}

checkCreate(api.Create o) {
  buildCounterCreate++;
  if (buildCounterCreate < 3) {
    checkCopy(o.copy);
    checkNew(o.new_);
    checkUpload(o.upload);
  }
  buildCounterCreate--;
}

core.int buildCounterDataLeakPreventionChange = 0;
buildDataLeakPreventionChange() {
  var o = new api.DataLeakPreventionChange();
  buildCounterDataLeakPreventionChange++;
  if (buildCounterDataLeakPreventionChange < 3) {
    o.type = "foo";
  }
  buildCounterDataLeakPreventionChange--;
  return o;
}

checkDataLeakPreventionChange(api.DataLeakPreventionChange o) {
  buildCounterDataLeakPreventionChange++;
  if (buildCounterDataLeakPreventionChange < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDataLeakPreventionChange--;
}

core.int buildCounterDelete = 0;
buildDelete() {
  var o = new api.Delete();
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    o.type = "foo";
  }
  buildCounterDelete--;
  return o;
}

checkDelete(api.Delete o) {
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDelete--;
}

core.int buildCounterDeletedUser = 0;
buildDeletedUser() {
  var o = new api.DeletedUser();
  buildCounterDeletedUser++;
  if (buildCounterDeletedUser < 3) {}
  buildCounterDeletedUser--;
  return o;
}

checkDeletedUser(api.DeletedUser o) {
  buildCounterDeletedUser++;
  if (buildCounterDeletedUser < 3) {}
  buildCounterDeletedUser--;
}

core.int buildCounterDomain = 0;
buildDomain() {
  var o = new api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.legacyId = "foo";
    o.name = "foo";
  }
  buildCounterDomain--;
  return o;
}

checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.legacyId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDomain--;
}

core.int buildCounterDrive = 0;
buildDrive() {
  var o = new api.Drive();
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    o.name = "foo";
    o.root = buildDriveItem();
    o.title = "foo";
  }
  buildCounterDrive--;
  return o;
}

checkDrive(api.Drive o) {
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkDriveItem(o.root);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDrive--;
}

buildUnnamed3639() {
  var o = new core.List<api.Action>();
  o.add(buildAction());
  o.add(buildAction());
  return o;
}

checkUnnamed3639(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

buildUnnamed3640() {
  var o = new core.List<api.Actor>();
  o.add(buildActor());
  o.add(buildActor());
  return o;
}

checkUnnamed3640(core.List<api.Actor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActor(o[0]);
  checkActor(o[1]);
}

buildUnnamed3641() {
  var o = new core.List<api.Target>();
  o.add(buildTarget());
  o.add(buildTarget());
  return o;
}

checkUnnamed3641(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.int buildCounterDriveActivity = 0;
buildDriveActivity() {
  var o = new api.DriveActivity();
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    o.actions = buildUnnamed3639();
    o.actors = buildUnnamed3640();
    o.primaryActionDetail = buildActionDetail();
    o.targets = buildUnnamed3641();
    o.timeRange = buildTimeRange();
    o.timestamp = "foo";
  }
  buildCounterDriveActivity--;
  return o;
}

checkDriveActivity(api.DriveActivity o) {
  buildCounterDriveActivity++;
  if (buildCounterDriveActivity < 3) {
    checkUnnamed3639(o.actions);
    checkUnnamed3640(o.actors);
    checkActionDetail(o.primaryActionDetail);
    checkUnnamed3641(o.targets);
    checkTimeRange(o.timeRange);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterDriveActivity--;
}

core.int buildCounterDriveFile = 0;
buildDriveFile() {
  var o = new api.DriveFile();
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {}
  buildCounterDriveFile--;
  return o;
}

checkDriveFile(api.DriveFile o) {
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {}
  buildCounterDriveFile--;
}

core.int buildCounterDriveFolder = 0;
buildDriveFolder() {
  var o = new api.DriveFolder();
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    o.type = "foo";
  }
  buildCounterDriveFolder--;
  return o;
}

checkDriveFolder(api.DriveFolder o) {
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDriveFolder--;
}

core.int buildCounterDriveItem = 0;
buildDriveItem() {
  var o = new api.DriveItem();
  buildCounterDriveItem++;
  if (buildCounterDriveItem < 3) {
    o.driveFile = buildDriveFile();
    o.driveFolder = buildDriveFolder();
    o.file = buildFile();
    o.folder = buildFolder();
    o.mimeType = "foo";
    o.name = "foo";
    o.owner = buildOwner();
    o.title = "foo";
  }
  buildCounterDriveItem--;
  return o;
}

checkDriveItem(api.DriveItem o) {
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
buildDriveItemReference() {
  var o = new api.DriveItemReference();
  buildCounterDriveItemReference++;
  if (buildCounterDriveItemReference < 3) {
    o.driveFile = buildDriveFile();
    o.driveFolder = buildDriveFolder();
    o.file = buildFile();
    o.folder = buildFolder();
    o.name = "foo";
    o.title = "foo";
  }
  buildCounterDriveItemReference--;
  return o;
}

checkDriveItemReference(api.DriveItemReference o) {
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
buildDriveReference() {
  var o = new api.DriveReference();
  buildCounterDriveReference++;
  if (buildCounterDriveReference < 3) {
    o.name = "foo";
    o.title = "foo";
  }
  buildCounterDriveReference--;
  return o;
}

checkDriveReference(api.DriveReference o) {
  buildCounterDriveReference++;
  if (buildCounterDriveReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveReference--;
}

core.int buildCounterEdit = 0;
buildEdit() {
  var o = new api.Edit();
  buildCounterEdit++;
  if (buildCounterEdit < 3) {}
  buildCounterEdit--;
  return o;
}

checkEdit(api.Edit o) {
  buildCounterEdit++;
  if (buildCounterEdit < 3) {}
  buildCounterEdit--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {}
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {}
  buildCounterFile--;
}

core.int buildCounterFileComment = 0;
buildFileComment() {
  var o = new api.FileComment();
  buildCounterFileComment++;
  if (buildCounterFileComment < 3) {
    o.legacyCommentId = "foo";
    o.legacyDiscussionId = "foo";
    o.linkToDiscussion = "foo";
    o.parent = buildDriveItem();
  }
  buildCounterFileComment--;
  return o;
}

checkFileComment(api.FileComment o) {
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
buildFolder() {
  var o = new api.Folder();
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    o.type = "foo";
  }
  buildCounterFolder--;
  return o;
}

checkFolder(api.Folder o) {
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFolder--;
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.email = "foo";
    o.title = "foo";
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.int buildCounterImpersonation = 0;
buildImpersonation() {
  var o = new api.Impersonation();
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    o.impersonatedUser = buildUser();
  }
  buildCounterImpersonation--;
  return o;
}

checkImpersonation(api.Impersonation o) {
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    checkUser(o.impersonatedUser);
  }
  buildCounterImpersonation--;
}

core.int buildCounterKnownUser = 0;
buildKnownUser() {
  var o = new api.KnownUser();
  buildCounterKnownUser++;
  if (buildCounterKnownUser < 3) {
    o.isCurrentUser = true;
    o.personName = "foo";
  }
  buildCounterKnownUser--;
  return o;
}

checkKnownUser(api.KnownUser o) {
  buildCounterKnownUser++;
  if (buildCounterKnownUser < 3) {
    unittest.expect(o.isCurrentUser, unittest.isTrue);
    unittest.expect(o.personName, unittest.equals('foo'));
  }
  buildCounterKnownUser--;
}

core.int buildCounterLegacy = 0;
buildLegacy() {
  var o = new api.Legacy();
  buildCounterLegacy++;
  if (buildCounterLegacy < 3) {}
  buildCounterLegacy--;
  return o;
}

checkLegacy(api.Legacy o) {
  buildCounterLegacy++;
  if (buildCounterLegacy < 3) {}
  buildCounterLegacy--;
}

buildUnnamed3642() {
  var o = new core.List<api.TargetReference>();
  o.add(buildTargetReference());
  o.add(buildTargetReference());
  return o;
}

checkUnnamed3642(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

buildUnnamed3643() {
  var o = new core.List<api.TargetReference>();
  o.add(buildTargetReference());
  o.add(buildTargetReference());
  return o;
}

checkUnnamed3643(core.List<api.TargetReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetReference(o[0]);
  checkTargetReference(o[1]);
}

core.int buildCounterMove = 0;
buildMove() {
  var o = new api.Move();
  buildCounterMove++;
  if (buildCounterMove < 3) {
    o.addedParents = buildUnnamed3642();
    o.removedParents = buildUnnamed3643();
  }
  buildCounterMove--;
  return o;
}

checkMove(api.Move o) {
  buildCounterMove++;
  if (buildCounterMove < 3) {
    checkUnnamed3642(o.addedParents);
    checkUnnamed3643(o.removedParents);
  }
  buildCounterMove--;
}

core.int buildCounterNew = 0;
buildNew() {
  var o = new api.New();
  buildCounterNew++;
  if (buildCounterNew < 3) {}
  buildCounterNew--;
  return o;
}

checkNew(api.New o) {
  buildCounterNew++;
  if (buildCounterNew < 3) {}
  buildCounterNew--;
}

core.int buildCounterNoConsolidation = 0;
buildNoConsolidation() {
  var o = new api.NoConsolidation();
  buildCounterNoConsolidation++;
  if (buildCounterNoConsolidation < 3) {}
  buildCounterNoConsolidation--;
  return o;
}

checkNoConsolidation(api.NoConsolidation o) {
  buildCounterNoConsolidation++;
  if (buildCounterNoConsolidation < 3) {}
  buildCounterNoConsolidation--;
}

core.int buildCounterOwner = 0;
buildOwner() {
  var o = new api.Owner();
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

checkOwner(api.Owner o) {
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
buildPermission() {
  var o = new api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.allowDiscovery = true;
    o.anyone = buildAnyone();
    o.domain = buildDomain();
    o.group = buildGroup();
    o.role = "foo";
    o.user = buildUser();
  }
  buildCounterPermission--;
  return o;
}

checkPermission(api.Permission o) {
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

buildUnnamed3644() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed3644(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

buildUnnamed3645() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed3645(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionChange = 0;
buildPermissionChange() {
  var o = new api.PermissionChange();
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    o.addedPermissions = buildUnnamed3644();
    o.removedPermissions = buildUnnamed3645();
  }
  buildCounterPermissionChange--;
  return o;
}

checkPermissionChange(api.PermissionChange o) {
  buildCounterPermissionChange++;
  if (buildCounterPermissionChange < 3) {
    checkUnnamed3644(o.addedPermissions);
    checkUnnamed3645(o.removedPermissions);
  }
  buildCounterPermissionChange--;
}

core.int buildCounterPost = 0;
buildPost() {
  var o = new api.Post();
  buildCounterPost++;
  if (buildCounterPost < 3) {
    o.subtype = "foo";
  }
  buildCounterPost--;
  return o;
}

checkPost(api.Post o) {
  buildCounterPost++;
  if (buildCounterPost < 3) {
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterPost--;
}

core.int buildCounterQueryDriveActivityRequest = 0;
buildQueryDriveActivityRequest() {
  var o = new api.QueryDriveActivityRequest();
  buildCounterQueryDriveActivityRequest++;
  if (buildCounterQueryDriveActivityRequest < 3) {
    o.ancestorName = "foo";
    o.consolidationStrategy = buildConsolidationStrategy();
    o.filter = "foo";
    o.itemName = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterQueryDriveActivityRequest--;
  return o;
}

checkQueryDriveActivityRequest(api.QueryDriveActivityRequest o) {
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

buildUnnamed3646() {
  var o = new core.List<api.DriveActivity>();
  o.add(buildDriveActivity());
  o.add(buildDriveActivity());
  return o;
}

checkUnnamed3646(core.List<api.DriveActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDriveActivity(o[0]);
  checkDriveActivity(o[1]);
}

core.int buildCounterQueryDriveActivityResponse = 0;
buildQueryDriveActivityResponse() {
  var o = new api.QueryDriveActivityResponse();
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    o.activities = buildUnnamed3646();
    o.nextPageToken = "foo";
  }
  buildCounterQueryDriveActivityResponse--;
  return o;
}

checkQueryDriveActivityResponse(api.QueryDriveActivityResponse o) {
  buildCounterQueryDriveActivityResponse++;
  if (buildCounterQueryDriveActivityResponse < 3) {
    checkUnnamed3646(o.activities);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterQueryDriveActivityResponse--;
}

core.int buildCounterRename = 0;
buildRename() {
  var o = new api.Rename();
  buildCounterRename++;
  if (buildCounterRename < 3) {
    o.newTitle = "foo";
    o.oldTitle = "foo";
  }
  buildCounterRename--;
  return o;
}

checkRename(api.Rename o) {
  buildCounterRename++;
  if (buildCounterRename < 3) {
    unittest.expect(o.newTitle, unittest.equals('foo'));
    unittest.expect(o.oldTitle, unittest.equals('foo'));
  }
  buildCounterRename--;
}

core.int buildCounterRestore = 0;
buildRestore() {
  var o = new api.Restore();
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    o.type = "foo";
  }
  buildCounterRestore--;
  return o;
}

checkRestore(api.Restore o) {
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRestore--;
}

core.int buildCounterRestrictionChange = 0;
buildRestrictionChange() {
  var o = new api.RestrictionChange();
  buildCounterRestrictionChange++;
  if (buildCounterRestrictionChange < 3) {
    o.feature = "foo";
    o.newRestriction = "foo";
  }
  buildCounterRestrictionChange--;
  return o;
}

checkRestrictionChange(api.RestrictionChange o) {
  buildCounterRestrictionChange++;
  if (buildCounterRestrictionChange < 3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.newRestriction, unittest.equals('foo'));
  }
  buildCounterRestrictionChange--;
}

buildUnnamed3647() {
  var o = new core.List<api.RestrictionChange>();
  o.add(buildRestrictionChange());
  o.add(buildRestrictionChange());
  return o;
}

checkUnnamed3647(core.List<api.RestrictionChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestrictionChange(o[0]);
  checkRestrictionChange(o[1]);
}

core.int buildCounterSettingsChange = 0;
buildSettingsChange() {
  var o = new api.SettingsChange();
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    o.restrictionChanges = buildUnnamed3647();
  }
  buildCounterSettingsChange--;
  return o;
}

checkSettingsChange(api.SettingsChange o) {
  buildCounterSettingsChange++;
  if (buildCounterSettingsChange < 3) {
    checkUnnamed3647(o.restrictionChanges);
  }
  buildCounterSettingsChange--;
}

core.int buildCounterSuggestion = 0;
buildSuggestion() {
  var o = new api.Suggestion();
  buildCounterSuggestion++;
  if (buildCounterSuggestion < 3) {
    o.subtype = "foo";
  }
  buildCounterSuggestion--;
  return o;
}

checkSuggestion(api.Suggestion o) {
  buildCounterSuggestion++;
  if (buildCounterSuggestion < 3) {
    unittest.expect(o.subtype, unittest.equals('foo'));
  }
  buildCounterSuggestion--;
}

core.int buildCounterSystemEvent = 0;
buildSystemEvent() {
  var o = new api.SystemEvent();
  buildCounterSystemEvent++;
  if (buildCounterSystemEvent < 3) {
    o.type = "foo";
  }
  buildCounterSystemEvent--;
  return o;
}

checkSystemEvent(api.SystemEvent o) {
  buildCounterSystemEvent++;
  if (buildCounterSystemEvent < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSystemEvent--;
}

core.int buildCounterTarget = 0;
buildTarget() {
  var o = new api.Target();
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

checkTarget(api.Target o) {
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
buildTargetReference() {
  var o = new api.TargetReference();
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    o.drive = buildDriveReference();
    o.driveItem = buildDriveItemReference();
    o.teamDrive = buildTeamDriveReference();
  }
  buildCounterTargetReference--;
  return o;
}

checkTargetReference(api.TargetReference o) {
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    checkDriveReference(o.drive);
    checkDriveItemReference(o.driveItem);
    checkTeamDriveReference(o.teamDrive);
  }
  buildCounterTargetReference--;
}

core.int buildCounterTeamDrive = 0;
buildTeamDrive() {
  var o = new api.TeamDrive();
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    o.name = "foo";
    o.root = buildDriveItem();
    o.title = "foo";
  }
  buildCounterTeamDrive--;
  return o;
}

checkTeamDrive(api.TeamDrive o) {
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkDriveItem(o.root);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterTeamDrive--;
}

core.int buildCounterTeamDriveReference = 0;
buildTeamDriveReference() {
  var o = new api.TeamDriveReference();
  buildCounterTeamDriveReference++;
  if (buildCounterTeamDriveReference < 3) {
    o.name = "foo";
    o.title = "foo";
  }
  buildCounterTeamDriveReference--;
  return o;
}

checkTeamDriveReference(api.TeamDriveReference o) {
  buildCounterTeamDriveReference++;
  if (buildCounterTeamDriveReference < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterTeamDriveReference--;
}

core.int buildCounterTimeRange = 0;
buildTimeRange() {
  var o = new api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeRange--;
  return o;
}

checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.int buildCounterUnknownUser = 0;
buildUnknownUser() {
  var o = new api.UnknownUser();
  buildCounterUnknownUser++;
  if (buildCounterUnknownUser < 3) {}
  buildCounterUnknownUser--;
  return o;
}

checkUnknownUser(api.UnknownUser o) {
  buildCounterUnknownUser++;
  if (buildCounterUnknownUser < 3) {}
  buildCounterUnknownUser--;
}

core.int buildCounterUpload = 0;
buildUpload() {
  var o = new api.Upload();
  buildCounterUpload++;
  if (buildCounterUpload < 3) {}
  buildCounterUpload--;
  return o;
}

checkUpload(api.Upload o) {
  buildCounterUpload++;
  if (buildCounterUpload < 3) {}
  buildCounterUpload--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.deletedUser = buildDeletedUser();
    o.knownUser = buildKnownUser();
    o.unknownUser = buildUnknownUser();
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkDeletedUser(o.deletedUser);
    checkKnownUser(o.knownUser);
    checkUnknownUser(o.unknownUser);
  }
  buildCounterUser--;
}

main() {
  unittest.group("obj-schema-Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildAction();
      var od = new api.Action.fromJson(o.toJson());
      checkAction(od);
    });
  });

  unittest.group("obj-schema-ActionDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildActionDetail();
      var od = new api.ActionDetail.fromJson(o.toJson());
      checkActionDetail(od);
    });
  });

  unittest.group("obj-schema-Actor", () {
    unittest.test("to-json--from-json", () {
      var o = buildActor();
      var od = new api.Actor.fromJson(o.toJson());
      checkActor(od);
    });
  });

  unittest.group("obj-schema-Administrator", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrator();
      var od = new api.Administrator.fromJson(o.toJson());
      checkAdministrator(od);
    });
  });

  unittest.group("obj-schema-AnonymousUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnonymousUser();
      var od = new api.AnonymousUser.fromJson(o.toJson());
      checkAnonymousUser(od);
    });
  });

  unittest.group("obj-schema-Anyone", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnyone();
      var od = new api.Anyone.fromJson(o.toJson());
      checkAnyone(od);
    });
  });

  unittest.group("obj-schema-ApplicationReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationReference();
      var od = new api.ApplicationReference.fromJson(o.toJson());
      checkApplicationReference(od);
    });
  });

  unittest.group("obj-schema-Assignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssignment();
      var od = new api.Assignment.fromJson(o.toJson());
      checkAssignment(od);
    });
  });

  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group("obj-schema-ConsolidationStrategy", () {
    unittest.test("to-json--from-json", () {
      var o = buildConsolidationStrategy();
      var od = new api.ConsolidationStrategy.fromJson(o.toJson());
      checkConsolidationStrategy(od);
    });
  });

  unittest.group("obj-schema-Copy", () {
    unittest.test("to-json--from-json", () {
      var o = buildCopy();
      var od = new api.Copy.fromJson(o.toJson());
      checkCopy(od);
    });
  });

  unittest.group("obj-schema-Create", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreate();
      var od = new api.Create.fromJson(o.toJson());
      checkCreate(od);
    });
  });

  unittest.group("obj-schema-DataLeakPreventionChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataLeakPreventionChange();
      var od = new api.DataLeakPreventionChange.fromJson(o.toJson());
      checkDataLeakPreventionChange(od);
    });
  });

  unittest.group("obj-schema-Delete", () {
    unittest.test("to-json--from-json", () {
      var o = buildDelete();
      var od = new api.Delete.fromJson(o.toJson());
      checkDelete(od);
    });
  });

  unittest.group("obj-schema-DeletedUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeletedUser();
      var od = new api.DeletedUser.fromJson(o.toJson());
      checkDeletedUser(od);
    });
  });

  unittest.group("obj-schema-Domain", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomain();
      var od = new api.Domain.fromJson(o.toJson());
      checkDomain(od);
    });
  });

  unittest.group("obj-schema-Drive", () {
    unittest.test("to-json--from-json", () {
      var o = buildDrive();
      var od = new api.Drive.fromJson(o.toJson());
      checkDrive(od);
    });
  });

  unittest.group("obj-schema-DriveActivity", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveActivity();
      var od = new api.DriveActivity.fromJson(o.toJson());
      checkDriveActivity(od);
    });
  });

  unittest.group("obj-schema-DriveFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveFile();
      var od = new api.DriveFile.fromJson(o.toJson());
      checkDriveFile(od);
    });
  });

  unittest.group("obj-schema-DriveFolder", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveFolder();
      var od = new api.DriveFolder.fromJson(o.toJson());
      checkDriveFolder(od);
    });
  });

  unittest.group("obj-schema-DriveItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveItem();
      var od = new api.DriveItem.fromJson(o.toJson());
      checkDriveItem(od);
    });
  });

  unittest.group("obj-schema-DriveItemReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveItemReference();
      var od = new api.DriveItemReference.fromJson(o.toJson());
      checkDriveItemReference(od);
    });
  });

  unittest.group("obj-schema-DriveReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveReference();
      var od = new api.DriveReference.fromJson(o.toJson());
      checkDriveReference(od);
    });
  });

  unittest.group("obj-schema-Edit", () {
    unittest.test("to-json--from-json", () {
      var o = buildEdit();
      var od = new api.Edit.fromJson(o.toJson());
      checkEdit(od);
    });
  });

  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group("obj-schema-FileComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileComment();
      var od = new api.FileComment.fromJson(o.toJson());
      checkFileComment(od);
    });
  });

  unittest.group("obj-schema-Folder", () {
    unittest.test("to-json--from-json", () {
      var o = buildFolder();
      var od = new api.Folder.fromJson(o.toJson());
      checkFolder(od);
    });
  });

  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group("obj-schema-Impersonation", () {
    unittest.test("to-json--from-json", () {
      var o = buildImpersonation();
      var od = new api.Impersonation.fromJson(o.toJson());
      checkImpersonation(od);
    });
  });

  unittest.group("obj-schema-KnownUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildKnownUser();
      var od = new api.KnownUser.fromJson(o.toJson());
      checkKnownUser(od);
    });
  });

  unittest.group("obj-schema-Legacy", () {
    unittest.test("to-json--from-json", () {
      var o = buildLegacy();
      var od = new api.Legacy.fromJson(o.toJson());
      checkLegacy(od);
    });
  });

  unittest.group("obj-schema-Move", () {
    unittest.test("to-json--from-json", () {
      var o = buildMove();
      var od = new api.Move.fromJson(o.toJson());
      checkMove(od);
    });
  });

  unittest.group("obj-schema-New", () {
    unittest.test("to-json--from-json", () {
      var o = buildNew();
      var od = new api.New.fromJson(o.toJson());
      checkNew(od);
    });
  });

  unittest.group("obj-schema-NoConsolidation", () {
    unittest.test("to-json--from-json", () {
      var o = buildNoConsolidation();
      var od = new api.NoConsolidation.fromJson(o.toJson());
      checkNoConsolidation(od);
    });
  });

  unittest.group("obj-schema-Owner", () {
    unittest.test("to-json--from-json", () {
      var o = buildOwner();
      var od = new api.Owner.fromJson(o.toJson());
      checkOwner(od);
    });
  });

  unittest.group("obj-schema-Permission", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermission();
      var od = new api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group("obj-schema-PermissionChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionChange();
      var od = new api.PermissionChange.fromJson(o.toJson());
      checkPermissionChange(od);
    });
  });

  unittest.group("obj-schema-Post", () {
    unittest.test("to-json--from-json", () {
      var o = buildPost();
      var od = new api.Post.fromJson(o.toJson());
      checkPost(od);
    });
  });

  unittest.group("obj-schema-QueryDriveActivityRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryDriveActivityRequest();
      var od = new api.QueryDriveActivityRequest.fromJson(o.toJson());
      checkQueryDriveActivityRequest(od);
    });
  });

  unittest.group("obj-schema-QueryDriveActivityResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryDriveActivityResponse();
      var od = new api.QueryDriveActivityResponse.fromJson(o.toJson());
      checkQueryDriveActivityResponse(od);
    });
  });

  unittest.group("obj-schema-Rename", () {
    unittest.test("to-json--from-json", () {
      var o = buildRename();
      var od = new api.Rename.fromJson(o.toJson());
      checkRename(od);
    });
  });

  unittest.group("obj-schema-Restore", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestore();
      var od = new api.Restore.fromJson(o.toJson());
      checkRestore(od);
    });
  });

  unittest.group("obj-schema-RestrictionChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestrictionChange();
      var od = new api.RestrictionChange.fromJson(o.toJson());
      checkRestrictionChange(od);
    });
  });

  unittest.group("obj-schema-SettingsChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildSettingsChange();
      var od = new api.SettingsChange.fromJson(o.toJson());
      checkSettingsChange(od);
    });
  });

  unittest.group("obj-schema-Suggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestion();
      var od = new api.Suggestion.fromJson(o.toJson());
      checkSuggestion(od);
    });
  });

  unittest.group("obj-schema-SystemEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemEvent();
      var od = new api.SystemEvent.fromJson(o.toJson());
      checkSystemEvent(od);
    });
  });

  unittest.group("obj-schema-Target", () {
    unittest.test("to-json--from-json", () {
      var o = buildTarget();
      var od = new api.Target.fromJson(o.toJson());
      checkTarget(od);
    });
  });

  unittest.group("obj-schema-TargetReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetReference();
      var od = new api.TargetReference.fromJson(o.toJson());
      checkTargetReference(od);
    });
  });

  unittest.group("obj-schema-TeamDrive", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDrive();
      var od = new api.TeamDrive.fromJson(o.toJson());
      checkTeamDrive(od);
    });
  });

  unittest.group("obj-schema-TeamDriveReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveReference();
      var od = new api.TeamDriveReference.fromJson(o.toJson());
      checkTeamDriveReference(od);
    });
  });

  unittest.group("obj-schema-TimeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeRange();
      var od = new api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od);
    });
  });

  unittest.group("obj-schema-UnknownUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnknownUser();
      var od = new api.UnknownUser.fromJson(o.toJson());
      checkUnknownUser(od);
    });
  });

  unittest.group("obj-schema-Upload", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpload();
      var od = new api.Upload.fromJson(o.toJson());
      checkUpload(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("resource-ActivityResourceApi", () {
    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.ActivityResourceApi res = new api.DriveactivityApi(mock).activity;
      var arg_request = buildQueryDriveActivityRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryDriveActivityRequest.fromJson(json);
        checkQueryDriveActivityRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2/activity:query"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildQueryDriveActivityResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryDriveActivityResponse(response);
      })));
    });
  });
}
