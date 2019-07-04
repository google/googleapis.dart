library googleapis.drive.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/drive/v2.dart' as api;

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

buildUnnamed1094() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1094(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAboutAdditionalRoleInfoRoleSets = 0;
buildAboutAdditionalRoleInfoRoleSets() {
  var o = new api.AboutAdditionalRoleInfoRoleSets();
  buildCounterAboutAdditionalRoleInfoRoleSets++;
  if (buildCounterAboutAdditionalRoleInfoRoleSets < 3) {
    o.additionalRoles = buildUnnamed1094();
    o.primaryRole = "foo";
  }
  buildCounterAboutAdditionalRoleInfoRoleSets--;
  return o;
}

checkAboutAdditionalRoleInfoRoleSets(api.AboutAdditionalRoleInfoRoleSets o) {
  buildCounterAboutAdditionalRoleInfoRoleSets++;
  if (buildCounterAboutAdditionalRoleInfoRoleSets < 3) {
    checkUnnamed1094(o.additionalRoles);
    unittest.expect(o.primaryRole, unittest.equals('foo'));
  }
  buildCounterAboutAdditionalRoleInfoRoleSets--;
}

buildUnnamed1095() {
  var o = new core.List<api.AboutAdditionalRoleInfoRoleSets>();
  o.add(buildAboutAdditionalRoleInfoRoleSets());
  o.add(buildAboutAdditionalRoleInfoRoleSets());
  return o;
}

checkUnnamed1095(core.List<api.AboutAdditionalRoleInfoRoleSets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutAdditionalRoleInfoRoleSets(o[0]);
  checkAboutAdditionalRoleInfoRoleSets(o[1]);
}

core.int buildCounterAboutAdditionalRoleInfo = 0;
buildAboutAdditionalRoleInfo() {
  var o = new api.AboutAdditionalRoleInfo();
  buildCounterAboutAdditionalRoleInfo++;
  if (buildCounterAboutAdditionalRoleInfo < 3) {
    o.roleSets = buildUnnamed1095();
    o.type = "foo";
  }
  buildCounterAboutAdditionalRoleInfo--;
  return o;
}

checkAboutAdditionalRoleInfo(api.AboutAdditionalRoleInfo o) {
  buildCounterAboutAdditionalRoleInfo++;
  if (buildCounterAboutAdditionalRoleInfo < 3) {
    checkUnnamed1095(o.roleSets);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAboutAdditionalRoleInfo--;
}

buildUnnamed1096() {
  var o = new core.List<api.AboutAdditionalRoleInfo>();
  o.add(buildAboutAdditionalRoleInfo());
  o.add(buildAboutAdditionalRoleInfo());
  return o;
}

checkUnnamed1096(core.List<api.AboutAdditionalRoleInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutAdditionalRoleInfo(o[0]);
  checkAboutAdditionalRoleInfo(o[1]);
}

core.int buildCounterAboutDriveThemes = 0;
buildAboutDriveThemes() {
  var o = new api.AboutDriveThemes();
  buildCounterAboutDriveThemes++;
  if (buildCounterAboutDriveThemes < 3) {
    o.backgroundImageLink = "foo";
    o.colorRgb = "foo";
    o.id = "foo";
  }
  buildCounterAboutDriveThemes--;
  return o;
}

checkAboutDriveThemes(api.AboutDriveThemes o) {
  buildCounterAboutDriveThemes++;
  if (buildCounterAboutDriveThemes < 3) {
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAboutDriveThemes--;
}

buildUnnamed1097() {
  var o = new core.List<api.AboutDriveThemes>();
  o.add(buildAboutDriveThemes());
  o.add(buildAboutDriveThemes());
  return o;
}

checkUnnamed1097(core.List<api.AboutDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutDriveThemes(o[0]);
  checkAboutDriveThemes(o[1]);
}

buildUnnamed1098() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1098(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAboutExportFormats = 0;
buildAboutExportFormats() {
  var o = new api.AboutExportFormats();
  buildCounterAboutExportFormats++;
  if (buildCounterAboutExportFormats < 3) {
    o.source = "foo";
    o.targets = buildUnnamed1098();
  }
  buildCounterAboutExportFormats--;
  return o;
}

checkAboutExportFormats(api.AboutExportFormats o) {
  buildCounterAboutExportFormats++;
  if (buildCounterAboutExportFormats < 3) {
    unittest.expect(o.source, unittest.equals('foo'));
    checkUnnamed1098(o.targets);
  }
  buildCounterAboutExportFormats--;
}

buildUnnamed1099() {
  var o = new core.List<api.AboutExportFormats>();
  o.add(buildAboutExportFormats());
  o.add(buildAboutExportFormats());
  return o;
}

checkUnnamed1099(core.List<api.AboutExportFormats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutExportFormats(o[0]);
  checkAboutExportFormats(o[1]);
}

core.int buildCounterAboutFeatures = 0;
buildAboutFeatures() {
  var o = new api.AboutFeatures();
  buildCounterAboutFeatures++;
  if (buildCounterAboutFeatures < 3) {
    o.featureName = "foo";
    o.featureRate = 42.0;
  }
  buildCounterAboutFeatures--;
  return o;
}

checkAboutFeatures(api.AboutFeatures o) {
  buildCounterAboutFeatures++;
  if (buildCounterAboutFeatures < 3) {
    unittest.expect(o.featureName, unittest.equals('foo'));
    unittest.expect(o.featureRate, unittest.equals(42.0));
  }
  buildCounterAboutFeatures--;
}

buildUnnamed1100() {
  var o = new core.List<api.AboutFeatures>();
  o.add(buildAboutFeatures());
  o.add(buildAboutFeatures());
  return o;
}

checkUnnamed1100(core.List<api.AboutFeatures> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutFeatures(o[0]);
  checkAboutFeatures(o[1]);
}

buildUnnamed1101() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1102() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAboutImportFormats = 0;
buildAboutImportFormats() {
  var o = new api.AboutImportFormats();
  buildCounterAboutImportFormats++;
  if (buildCounterAboutImportFormats < 3) {
    o.source = "foo";
    o.targets = buildUnnamed1102();
  }
  buildCounterAboutImportFormats--;
  return o;
}

checkAboutImportFormats(api.AboutImportFormats o) {
  buildCounterAboutImportFormats++;
  if (buildCounterAboutImportFormats < 3) {
    unittest.expect(o.source, unittest.equals('foo'));
    checkUnnamed1102(o.targets);
  }
  buildCounterAboutImportFormats--;
}

buildUnnamed1103() {
  var o = new core.List<api.AboutImportFormats>();
  o.add(buildAboutImportFormats());
  o.add(buildAboutImportFormats());
  return o;
}

checkUnnamed1103(core.List<api.AboutImportFormats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutImportFormats(o[0]);
  checkAboutImportFormats(o[1]);
}

core.int buildCounterAboutMaxUploadSizes = 0;
buildAboutMaxUploadSizes() {
  var o = new api.AboutMaxUploadSizes();
  buildCounterAboutMaxUploadSizes++;
  if (buildCounterAboutMaxUploadSizes < 3) {
    o.size = "foo";
    o.type = "foo";
  }
  buildCounterAboutMaxUploadSizes--;
  return o;
}

checkAboutMaxUploadSizes(api.AboutMaxUploadSizes o) {
  buildCounterAboutMaxUploadSizes++;
  if (buildCounterAboutMaxUploadSizes < 3) {
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAboutMaxUploadSizes--;
}

buildUnnamed1104() {
  var o = new core.List<api.AboutMaxUploadSizes>();
  o.add(buildAboutMaxUploadSizes());
  o.add(buildAboutMaxUploadSizes());
  return o;
}

checkUnnamed1104(core.List<api.AboutMaxUploadSizes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutMaxUploadSizes(o[0]);
  checkAboutMaxUploadSizes(o[1]);
}

core.int buildCounterAboutQuotaBytesByService = 0;
buildAboutQuotaBytesByService() {
  var o = new api.AboutQuotaBytesByService();
  buildCounterAboutQuotaBytesByService++;
  if (buildCounterAboutQuotaBytesByService < 3) {
    o.bytesUsed = "foo";
    o.serviceName = "foo";
  }
  buildCounterAboutQuotaBytesByService--;
  return o;
}

checkAboutQuotaBytesByService(api.AboutQuotaBytesByService o) {
  buildCounterAboutQuotaBytesByService++;
  if (buildCounterAboutQuotaBytesByService < 3) {
    unittest.expect(o.bytesUsed, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterAboutQuotaBytesByService--;
}

buildUnnamed1105() {
  var o = new core.List<api.AboutQuotaBytesByService>();
  o.add(buildAboutQuotaBytesByService());
  o.add(buildAboutQuotaBytesByService());
  return o;
}

checkUnnamed1105(core.List<api.AboutQuotaBytesByService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutQuotaBytesByService(o[0]);
  checkAboutQuotaBytesByService(o[1]);
}

core.int buildCounterAboutTeamDriveThemes = 0;
buildAboutTeamDriveThemes() {
  var o = new api.AboutTeamDriveThemes();
  buildCounterAboutTeamDriveThemes++;
  if (buildCounterAboutTeamDriveThemes < 3) {
    o.backgroundImageLink = "foo";
    o.colorRgb = "foo";
    o.id = "foo";
  }
  buildCounterAboutTeamDriveThemes--;
  return o;
}

checkAboutTeamDriveThemes(api.AboutTeamDriveThemes o) {
  buildCounterAboutTeamDriveThemes++;
  if (buildCounterAboutTeamDriveThemes < 3) {
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAboutTeamDriveThemes--;
}

buildUnnamed1106() {
  var o = new core.List<api.AboutTeamDriveThemes>();
  o.add(buildAboutTeamDriveThemes());
  o.add(buildAboutTeamDriveThemes());
  return o;
}

checkUnnamed1106(core.List<api.AboutTeamDriveThemes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAboutTeamDriveThemes(o[0]);
  checkAboutTeamDriveThemes(o[1]);
}

core.int buildCounterAbout = 0;
buildAbout() {
  var o = new api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.additionalRoleInfo = buildUnnamed1096();
    o.canCreateDrives = true;
    o.canCreateTeamDrives = true;
    o.domainSharingPolicy = "foo";
    o.driveThemes = buildUnnamed1097();
    o.etag = "foo";
    o.exportFormats = buildUnnamed1099();
    o.features = buildUnnamed1100();
    o.folderColorPalette = buildUnnamed1101();
    o.importFormats = buildUnnamed1103();
    o.isCurrentAppInstalled = true;
    o.kind = "foo";
    o.languageCode = "foo";
    o.largestChangeId = "foo";
    o.maxUploadSizes = buildUnnamed1104();
    o.name = "foo";
    o.permissionId = "foo";
    o.quotaBytesByService = buildUnnamed1105();
    o.quotaBytesTotal = "foo";
    o.quotaBytesUsed = "foo";
    o.quotaBytesUsedAggregate = "foo";
    o.quotaBytesUsedInTrash = "foo";
    o.quotaType = "foo";
    o.remainingChangeIds = "foo";
    o.rootFolderId = "foo";
    o.selfLink = "foo";
    o.teamDriveThemes = buildUnnamed1106();
    o.user = buildUser();
  }
  buildCounterAbout--;
  return o;
}

checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    checkUnnamed1096(o.additionalRoleInfo);
    unittest.expect(o.canCreateDrives, unittest.isTrue);
    unittest.expect(o.canCreateTeamDrives, unittest.isTrue);
    unittest.expect(o.domainSharingPolicy, unittest.equals('foo'));
    checkUnnamed1097(o.driveThemes);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1099(o.exportFormats);
    checkUnnamed1100(o.features);
    checkUnnamed1101(o.folderColorPalette);
    checkUnnamed1103(o.importFormats);
    unittest.expect(o.isCurrentAppInstalled, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.largestChangeId, unittest.equals('foo'));
    checkUnnamed1104(o.maxUploadSizes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
    checkUnnamed1105(o.quotaBytesByService);
    unittest.expect(o.quotaBytesTotal, unittest.equals('foo'));
    unittest.expect(o.quotaBytesUsed, unittest.equals('foo'));
    unittest.expect(o.quotaBytesUsedAggregate, unittest.equals('foo'));
    unittest.expect(o.quotaBytesUsedInTrash, unittest.equals('foo'));
    unittest.expect(o.quotaType, unittest.equals('foo'));
    unittest.expect(o.remainingChangeIds, unittest.equals('foo'));
    unittest.expect(o.rootFolderId, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed1106(o.teamDriveThemes);
    checkUser(o.user);
  }
  buildCounterAbout--;
}

core.int buildCounterAppIcons = 0;
buildAppIcons() {
  var o = new api.AppIcons();
  buildCounterAppIcons++;
  if (buildCounterAppIcons < 3) {
    o.category = "foo";
    o.iconUrl = "foo";
    o.size = 42;
  }
  buildCounterAppIcons--;
  return o;
}

checkAppIcons(api.AppIcons o) {
  buildCounterAppIcons++;
  if (buildCounterAppIcons < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals(42));
  }
  buildCounterAppIcons--;
}

buildUnnamed1107() {
  var o = new core.List<api.AppIcons>();
  o.add(buildAppIcons());
  o.add(buildAppIcons());
  return o;
}

checkUnnamed1107(core.List<api.AppIcons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppIcons(o[0]);
  checkAppIcons(o[1]);
}

buildUnnamed1108() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1109() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1110() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1111() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApp = 0;
buildApp() {
  var o = new api.App();
  buildCounterApp++;
  if (buildCounterApp < 3) {
    o.authorized = true;
    o.createInFolderTemplate = "foo";
    o.createUrl = "foo";
    o.hasDriveWideScope = true;
    o.icons = buildUnnamed1107();
    o.id = "foo";
    o.installed = true;
    o.kind = "foo";
    o.longDescription = "foo";
    o.name = "foo";
    o.objectType = "foo";
    o.openUrlTemplate = "foo";
    o.primaryFileExtensions = buildUnnamed1108();
    o.primaryMimeTypes = buildUnnamed1109();
    o.productId = "foo";
    o.productUrl = "foo";
    o.secondaryFileExtensions = buildUnnamed1110();
    o.secondaryMimeTypes = buildUnnamed1111();
    o.shortDescription = "foo";
    o.supportsCreate = true;
    o.supportsImport = true;
    o.supportsMultiOpen = true;
    o.supportsOfflineCreate = true;
    o.useByDefault = true;
  }
  buildCounterApp--;
  return o;
}

checkApp(api.App o) {
  buildCounterApp++;
  if (buildCounterApp < 3) {
    unittest.expect(o.authorized, unittest.isTrue);
    unittest.expect(o.createInFolderTemplate, unittest.equals('foo'));
    unittest.expect(o.createUrl, unittest.equals('foo'));
    unittest.expect(o.hasDriveWideScope, unittest.isTrue);
    checkUnnamed1107(o.icons);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.installed, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.longDescription, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
    unittest.expect(o.openUrlTemplate, unittest.equals('foo'));
    checkUnnamed1108(o.primaryFileExtensions);
    checkUnnamed1109(o.primaryMimeTypes);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productUrl, unittest.equals('foo'));
    checkUnnamed1110(o.secondaryFileExtensions);
    checkUnnamed1111(o.secondaryMimeTypes);
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.supportsCreate, unittest.isTrue);
    unittest.expect(o.supportsImport, unittest.isTrue);
    unittest.expect(o.supportsMultiOpen, unittest.isTrue);
    unittest.expect(o.supportsOfflineCreate, unittest.isTrue);
    unittest.expect(o.useByDefault, unittest.isTrue);
  }
  buildCounterApp--;
}

buildUnnamed1112() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1113() {
  var o = new core.List<api.App>();
  o.add(buildApp());
  o.add(buildApp());
  return o;
}

checkUnnamed1113(core.List<api.App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApp(o[0]);
  checkApp(o[1]);
}

core.int buildCounterAppList = 0;
buildAppList() {
  var o = new api.AppList();
  buildCounterAppList++;
  if (buildCounterAppList < 3) {
    o.defaultAppIds = buildUnnamed1112();
    o.etag = "foo";
    o.items = buildUnnamed1113();
    o.kind = "foo";
    o.selfLink = "foo";
  }
  buildCounterAppList--;
  return o;
}

checkAppList(api.AppList o) {
  buildCounterAppList++;
  if (buildCounterAppList < 3) {
    checkUnnamed1112(o.defaultAppIds);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1113(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAppList--;
}

core.int buildCounterChange = 0;
buildChange() {
  var o = new api.Change();
  buildCounterChange++;
  if (buildCounterChange < 3) {
    o.changeType = "foo";
    o.deleted = true;
    o.drive = buildDrive();
    o.driveId = "foo";
    o.file = buildFile();
    o.fileId = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.modificationDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.selfLink = "foo";
    o.teamDrive = buildTeamDrive();
    o.teamDriveId = "foo";
    o.type = "foo";
  }
  buildCounterChange--;
  return o;
}

checkChange(api.Change o) {
  buildCounterChange++;
  if (buildCounterChange < 3) {
    unittest.expect(o.changeType, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    checkDrive(o.drive);
    unittest.expect(o.driveId, unittest.equals('foo'));
    checkFile(o.file);
    unittest.expect(o.fileId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modificationDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkTeamDrive(o.teamDrive);
    unittest.expect(o.teamDriveId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChange--;
}

buildUnnamed1114() {
  var o = new core.List<api.Change>();
  o.add(buildChange());
  o.add(buildChange());
  return o;
}

checkUnnamed1114(core.List<api.Change> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChange(o[0]);
  checkChange(o[1]);
}

core.int buildCounterChangeList = 0;
buildChangeList() {
  var o = new api.ChangeList();
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1114();
    o.kind = "foo";
    o.largestChangeId = "foo";
    o.newStartPageToken = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterChangeList--;
  return o;
}

checkChangeList(api.ChangeList o) {
  buildCounterChangeList++;
  if (buildCounterChangeList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1114(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.largestChangeId, unittest.equals('foo'));
    unittest.expect(o.newStartPageToken, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterChangeList--;
}

buildUnnamed1115() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1115(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed1115();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1115(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

buildUnnamed1116() {
  var o = new core.List<api.ChildReference>();
  o.add(buildChildReference());
  o.add(buildChildReference());
  return o;
}

checkUnnamed1116(core.List<api.ChildReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildReference(o[0]);
  checkChildReference(o[1]);
}

core.int buildCounterChildList = 0;
buildChildList() {
  var o = new api.ChildList();
  buildCounterChildList++;
  if (buildCounterChildList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1116();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterChildList--;
  return o;
}

checkChildList(api.ChildList o) {
  buildCounterChildList++;
  if (buildCounterChildList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1116(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterChildList--;
}

core.int buildCounterChildReference = 0;
buildChildReference() {
  var o = new api.ChildReference();
  buildCounterChildReference++;
  if (buildCounterChildReference < 3) {
    o.childLink = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.selfLink = "foo";
  }
  buildCounterChildReference--;
  return o;
}

checkChildReference(api.ChildReference o) {
  buildCounterChildReference++;
  if (buildCounterChildReference < 3) {
    unittest.expect(o.childLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterChildReference--;
}

core.int buildCounterCommentContext = 0;
buildCommentContext() {
  var o = new api.CommentContext();
  buildCounterCommentContext++;
  if (buildCounterCommentContext < 3) {
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterCommentContext--;
  return o;
}

checkCommentContext(api.CommentContext o) {
  buildCounterCommentContext++;
  if (buildCounterCommentContext < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCommentContext--;
}

buildUnnamed1117() {
  var o = new core.List<api.CommentReply>();
  o.add(buildCommentReply());
  o.add(buildCommentReply());
  return o;
}

checkUnnamed1117(core.List<api.CommentReply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentReply(o[0]);
  checkCommentReply(o[1]);
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.anchor = "foo";
    o.author = buildUser();
    o.commentId = "foo";
    o.content = "foo";
    o.context = buildCommentContext();
    o.createdDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.fileId = "foo";
    o.fileTitle = "foo";
    o.htmlContent = "foo";
    o.kind = "foo";
    o.modifiedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.replies = buildUnnamed1117();
    o.selfLink = "foo";
    o.status = "foo";
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(o.anchor, unittest.equals('foo'));
    checkUser(o.author);
    unittest.expect(o.commentId, unittest.equals('foo'));
    unittest.expect(o.content, unittest.equals('foo'));
    checkCommentContext(o.context);
    unittest.expect(o.createdDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.fileId, unittest.equals('foo'));
    unittest.expect(o.fileTitle, unittest.equals('foo'));
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1117(o.replies);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterComment--;
}

buildUnnamed1118() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed1118(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
buildCommentList() {
  var o = new api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.items = buildUnnamed1118();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterCommentList--;
  return o;
}

checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed1118(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterCommentList--;
}

core.int buildCounterCommentReply = 0;
buildCommentReply() {
  var o = new api.CommentReply();
  buildCounterCommentReply++;
  if (buildCounterCommentReply < 3) {
    o.author = buildUser();
    o.content = "foo";
    o.createdDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.htmlContent = "foo";
    o.kind = "foo";
    o.modifiedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.replyId = "foo";
    o.verb = "foo";
  }
  buildCounterCommentReply--;
  return o;
}

checkCommentReply(api.CommentReply o) {
  buildCounterCommentReply++;
  if (buildCounterCommentReply < 3) {
    checkUser(o.author);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createdDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.htmlContent, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.modifiedDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.replyId, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterCommentReply--;
}

buildUnnamed1119() {
  var o = new core.List<api.CommentReply>();
  o.add(buildCommentReply());
  o.add(buildCommentReply());
  return o;
}

checkUnnamed1119(core.List<api.CommentReply> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentReply(o[0]);
  checkCommentReply(o[1]);
}

core.int buildCounterCommentReplyList = 0;
buildCommentReplyList() {
  var o = new api.CommentReplyList();
  buildCounterCommentReplyList++;
  if (buildCounterCommentReplyList < 3) {
    o.items = buildUnnamed1119();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterCommentReplyList--;
  return o;
}

checkCommentReplyList(api.CommentReplyList o) {
  buildCounterCommentReplyList++;
  if (buildCounterCommentReplyList < 3) {
    checkUnnamed1119(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterCommentReplyList--;
}

core.int buildCounterDriveBackgroundImageFile = 0;
buildDriveBackgroundImageFile() {
  var o = new api.DriveBackgroundImageFile();
  buildCounterDriveBackgroundImageFile++;
  if (buildCounterDriveBackgroundImageFile < 3) {
    o.id = "foo";
    o.width = 42.0;
    o.xCoordinate = 42.0;
    o.yCoordinate = 42.0;
  }
  buildCounterDriveBackgroundImageFile--;
  return o;
}

checkDriveBackgroundImageFile(api.DriveBackgroundImageFile o) {
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
buildDriveCapabilities() {
  var o = new api.DriveCapabilities();
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

checkDriveCapabilities(api.DriveCapabilities o) {
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
buildDriveRestrictions() {
  var o = new api.DriveRestrictions();
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

checkDriveRestrictions(api.DriveRestrictions o) {
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
buildDrive() {
  var o = new api.Drive();
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    o.backgroundImageFile = buildDriveBackgroundImageFile();
    o.backgroundImageLink = "foo";
    o.capabilities = buildDriveCapabilities();
    o.colorRgb = "foo";
    o.createdDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.hidden = true;
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.restrictions = buildDriveRestrictions();
    o.themeId = "foo";
  }
  buildCounterDrive--;
  return o;
}

checkDrive(api.Drive o) {
  buildCounterDrive++;
  if (buildCounterDrive < 3) {
    checkDriveBackgroundImageFile(o.backgroundImageFile);
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    checkDriveCapabilities(o.capabilities);
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.createdDate,
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

buildUnnamed1120() {
  var o = new core.List<api.Drive>();
  o.add(buildDrive());
  o.add(buildDrive());
  return o;
}

checkUnnamed1120(core.List<api.Drive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDrive(o[0]);
  checkDrive(o[1]);
}

core.int buildCounterDriveList = 0;
buildDriveList() {
  var o = new api.DriveList();
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    o.items = buildUnnamed1120();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterDriveList--;
  return o;
}

checkDriveList(api.DriveList o) {
  buildCounterDriveList++;
  if (buildCounterDriveList < 3) {
    checkUnnamed1120(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDriveList--;
}

core.int buildCounterFileCapabilities = 0;
buildFileCapabilities() {
  var o = new api.FileCapabilities();
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    o.canAddChildren = true;
    o.canChangeCopyRequiresWriterPermission = true;
    o.canChangeRestrictedDownload = true;
    o.canComment = true;
    o.canCopy = true;
    o.canDelete = true;
    o.canDeleteChildren = true;
    o.canDownload = true;
    o.canEdit = true;
    o.canListChildren = true;
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
    o.canRename = true;
    o.canShare = true;
    o.canTrash = true;
    o.canTrashChildren = true;
    o.canUntrash = true;
  }
  buildCounterFileCapabilities--;
  return o;
}

checkFileCapabilities(api.FileCapabilities o) {
  buildCounterFileCapabilities++;
  if (buildCounterFileCapabilities < 3) {
    unittest.expect(o.canAddChildren, unittest.isTrue);
    unittest.expect(o.canChangeCopyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.canChangeRestrictedDownload, unittest.isTrue);
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canCopy, unittest.isTrue);
    unittest.expect(o.canDelete, unittest.isTrue);
    unittest.expect(o.canDeleteChildren, unittest.isTrue);
    unittest.expect(o.canDownload, unittest.isTrue);
    unittest.expect(o.canEdit, unittest.isTrue);
    unittest.expect(o.canListChildren, unittest.isTrue);
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
    unittest.expect(o.canRename, unittest.isTrue);
    unittest.expect(o.canShare, unittest.isTrue);
    unittest.expect(o.canTrash, unittest.isTrue);
    unittest.expect(o.canTrashChildren, unittest.isTrue);
    unittest.expect(o.canUntrash, unittest.isTrue);
  }
  buildCounterFileCapabilities--;
}

buildUnnamed1121() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1121(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterFileImageMediaMetadataLocation = 0;
buildFileImageMediaMetadataLocation() {
  var o = new api.FileImageMediaMetadataLocation();
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterFileImageMediaMetadataLocation--;
  return o;
}

checkFileImageMediaMetadataLocation(api.FileImageMediaMetadataLocation o) {
  buildCounterFileImageMediaMetadataLocation++;
  if (buildCounterFileImageMediaMetadataLocation < 3) {
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterFileImageMediaMetadataLocation--;
}

core.int buildCounterFileImageMediaMetadata = 0;
buildFileImageMediaMetadata() {
  var o = new api.FileImageMediaMetadata();
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    o.aperture = 42.0;
    o.cameraMake = "foo";
    o.cameraModel = "foo";
    o.colorSpace = "foo";
    o.date = "foo";
    o.exposureBias = 42.0;
    o.exposureMode = "foo";
    o.exposureTime = 42.0;
    o.flashUsed = true;
    o.focalLength = 42.0;
    o.height = 42;
    o.isoSpeed = 42;
    o.lens = "foo";
    o.location = buildFileImageMediaMetadataLocation();
    o.maxApertureValue = 42.0;
    o.meteringMode = "foo";
    o.rotation = 42;
    o.sensor = "foo";
    o.subjectDistance = 42;
    o.whiteBalance = "foo";
    o.width = 42;
  }
  buildCounterFileImageMediaMetadata--;
  return o;
}

checkFileImageMediaMetadata(api.FileImageMediaMetadata o) {
  buildCounterFileImageMediaMetadata++;
  if (buildCounterFileImageMediaMetadata < 3) {
    unittest.expect(o.aperture, unittest.equals(42.0));
    unittest.expect(o.cameraMake, unittest.equals('foo'));
    unittest.expect(o.cameraModel, unittest.equals('foo'));
    unittest.expect(o.colorSpace, unittest.equals('foo'));
    unittest.expect(o.date, unittest.equals('foo'));
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
    unittest.expect(o.whiteBalance, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileImageMediaMetadata--;
}

core.int buildCounterFileIndexableText = 0;
buildFileIndexableText() {
  var o = new api.FileIndexableText();
  buildCounterFileIndexableText++;
  if (buildCounterFileIndexableText < 3) {
    o.text = "foo";
  }
  buildCounterFileIndexableText--;
  return o;
}

checkFileIndexableText(api.FileIndexableText o) {
  buildCounterFileIndexableText++;
  if (buildCounterFileIndexableText < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterFileIndexableText--;
}

core.int buildCounterFileLabels = 0;
buildFileLabels() {
  var o = new api.FileLabels();
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

checkFileLabels(api.FileLabels o) {
  buildCounterFileLabels++;
  if (buildCounterFileLabels < 3) {
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.modified, unittest.isTrue);
    unittest.expect(o.restricted, unittest.isTrue);
    unittest.expect(o.starred, unittest.isTrue);
    unittest.expect(o.trashed, unittest.isTrue);
    unittest.expect(o.viewed, unittest.isTrue);
  }
  buildCounterFileLabels--;
}

buildUnnamed1122() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1122(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1123() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1123(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1124() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed1124(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

buildUnnamed1125() {
  var o = new core.List<api.ParentReference>();
  o.add(buildParentReference());
  o.add(buildParentReference());
  return o;
}

checkUnnamed1125(core.List<api.ParentReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParentReference(o[0]);
  checkParentReference(o[1]);
}

buildUnnamed1126() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1127() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed1127(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

buildUnnamed1128() {
  var o = new core.List<api.Property>();
  o.add(buildProperty());
  o.add(buildProperty());
  return o;
}

checkUnnamed1128(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

buildUnnamed1129() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFileThumbnail = 0;
buildFileThumbnail() {
  var o = new api.FileThumbnail();
  buildCounterFileThumbnail++;
  if (buildCounterFileThumbnail < 3) {
    o.image = "foo";
    o.mimeType = "foo";
  }
  buildCounterFileThumbnail--;
  return o;
}

checkFileThumbnail(api.FileThumbnail o) {
  buildCounterFileThumbnail++;
  if (buildCounterFileThumbnail < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterFileThumbnail--;
}

core.int buildCounterFileVideoMediaMetadata = 0;
buildFileVideoMediaMetadata() {
  var o = new api.FileVideoMediaMetadata();
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    o.durationMillis = "foo";
    o.height = 42;
    o.width = 42;
  }
  buildCounterFileVideoMediaMetadata--;
  return o;
}

checkFileVideoMediaMetadata(api.FileVideoMediaMetadata o) {
  buildCounterFileVideoMediaMetadata++;
  if (buildCounterFileVideoMediaMetadata < 3) {
    unittest.expect(o.durationMillis, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterFileVideoMediaMetadata--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.alternateLink = "foo";
    o.appDataContents = true;
    o.canComment = true;
    o.canReadRevisions = true;
    o.capabilities = buildFileCapabilities();
    o.copyRequiresWriterPermission = true;
    o.copyable = true;
    o.createdDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.defaultOpenWithLink = "foo";
    o.description = "foo";
    o.downloadUrl = "foo";
    o.driveId = "foo";
    o.editable = true;
    o.embedLink = "foo";
    o.etag = "foo";
    o.explicitlyTrashed = true;
    o.exportLinks = buildUnnamed1121();
    o.fileExtension = "foo";
    o.fileSize = "foo";
    o.folderColorRgb = "foo";
    o.fullFileExtension = "foo";
    o.hasAugmentedPermissions = true;
    o.hasThumbnail = true;
    o.headRevisionId = "foo";
    o.iconLink = "foo";
    o.id = "foo";
    o.imageMediaMetadata = buildFileImageMediaMetadata();
    o.indexableText = buildFileIndexableText();
    o.isAppAuthorized = true;
    o.kind = "foo";
    o.labels = buildFileLabels();
    o.lastModifyingUser = buildUser();
    o.lastModifyingUserName = "foo";
    o.lastViewedByMeDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.markedViewedByMeDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.md5Checksum = "foo";
    o.mimeType = "foo";
    o.modifiedByMeDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.modifiedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.openWithLinks = buildUnnamed1122();
    o.originalFilename = "foo";
    o.ownedByMe = true;
    o.ownerNames = buildUnnamed1123();
    o.owners = buildUnnamed1124();
    o.parents = buildUnnamed1125();
    o.permissionIds = buildUnnamed1126();
    o.permissions = buildUnnamed1127();
    o.properties = buildUnnamed1128();
    o.quotaBytesUsed = "foo";
    o.selfLink = "foo";
    o.shareable = true;
    o.shared = true;
    o.sharedWithMeDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.sharingUser = buildUser();
    o.spaces = buildUnnamed1129();
    o.teamDriveId = "foo";
    o.thumbnail = buildFileThumbnail();
    o.thumbnailLink = "foo";
    o.thumbnailVersion = "foo";
    o.title = "foo";
    o.trashedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.trashingUser = buildUser();
    o.userPermission = buildPermission();
    o.version = "foo";
    o.videoMediaMetadata = buildFileVideoMediaMetadata();
    o.webContentLink = "foo";
    o.webViewLink = "foo";
    o.writersCanShare = true;
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.appDataContents, unittest.isTrue);
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canReadRevisions, unittest.isTrue);
    checkFileCapabilities(o.capabilities);
    unittest.expect(o.copyRequiresWriterPermission, unittest.isTrue);
    unittest.expect(o.copyable, unittest.isTrue);
    unittest.expect(o.createdDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.defaultOpenWithLink, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.driveId, unittest.equals('foo'));
    unittest.expect(o.editable, unittest.isTrue);
    unittest.expect(o.embedLink, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.explicitlyTrashed, unittest.isTrue);
    checkUnnamed1121(o.exportLinks);
    unittest.expect(o.fileExtension, unittest.equals('foo'));
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.folderColorRgb, unittest.equals('foo'));
    unittest.expect(o.fullFileExtension, unittest.equals('foo'));
    unittest.expect(o.hasAugmentedPermissions, unittest.isTrue);
    unittest.expect(o.hasThumbnail, unittest.isTrue);
    unittest.expect(o.headRevisionId, unittest.equals('foo'));
    unittest.expect(o.iconLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkFileImageMediaMetadata(o.imageMediaMetadata);
    checkFileIndexableText(o.indexableText);
    unittest.expect(o.isAppAuthorized, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkFileLabels(o.labels);
    checkUser(o.lastModifyingUser);
    unittest.expect(o.lastModifyingUserName, unittest.equals('foo'));
    unittest.expect(o.lastViewedByMeDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.markedViewedByMeDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedByMeDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.modifiedDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1122(o.openWithLinks);
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.ownedByMe, unittest.isTrue);
    checkUnnamed1123(o.ownerNames);
    checkUnnamed1124(o.owners);
    checkUnnamed1125(o.parents);
    checkUnnamed1126(o.permissionIds);
    checkUnnamed1127(o.permissions);
    checkUnnamed1128(o.properties);
    unittest.expect(o.quotaBytesUsed, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.shareable, unittest.isTrue);
    unittest.expect(o.shared, unittest.isTrue);
    unittest.expect(o.sharedWithMeDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUser(o.sharingUser);
    checkUnnamed1129(o.spaces);
    unittest.expect(o.teamDriveId, unittest.equals('foo'));
    checkFileThumbnail(o.thumbnail);
    unittest.expect(o.thumbnailLink, unittest.equals('foo'));
    unittest.expect(o.thumbnailVersion, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.trashedDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUser(o.trashingUser);
    checkPermission(o.userPermission);
    unittest.expect(o.version, unittest.equals('foo'));
    checkFileVideoMediaMetadata(o.videoMediaMetadata);
    unittest.expect(o.webContentLink, unittest.equals('foo'));
    unittest.expect(o.webViewLink, unittest.equals('foo'));
    unittest.expect(o.writersCanShare, unittest.isTrue);
  }
  buildCounterFile--;
}

buildUnnamed1130() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed1130(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
buildFileList() {
  var o = new api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.etag = "foo";
    o.incompleteSearch = true;
    o.items = buildUnnamed1130();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterFileList--;
  return o;
}

checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.incompleteSearch, unittest.isTrue);
    checkUnnamed1130(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterFileList--;
}

buildUnnamed1131() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeneratedIds = 0;
buildGeneratedIds() {
  var o = new api.GeneratedIds();
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    o.ids = buildUnnamed1131();
    o.kind = "foo";
    o.space = "foo";
  }
  buildCounterGeneratedIds--;
  return o;
}

checkGeneratedIds(api.GeneratedIds o) {
  buildCounterGeneratedIds++;
  if (buildCounterGeneratedIds < 3) {
    checkUnnamed1131(o.ids);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.space, unittest.equals('foo'));
  }
  buildCounterGeneratedIds--;
}

buildUnnamed1132() {
  var o = new core.List<api.ParentReference>();
  o.add(buildParentReference());
  o.add(buildParentReference());
  return o;
}

checkUnnamed1132(core.List<api.ParentReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParentReference(o[0]);
  checkParentReference(o[1]);
}

core.int buildCounterParentList = 0;
buildParentList() {
  var o = new api.ParentList();
  buildCounterParentList++;
  if (buildCounterParentList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1132();
    o.kind = "foo";
    o.selfLink = "foo";
  }
  buildCounterParentList--;
  return o;
}

checkParentList(api.ParentList o) {
  buildCounterParentList++;
  if (buildCounterParentList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1132(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterParentList--;
}

core.int buildCounterParentReference = 0;
buildParentReference() {
  var o = new api.ParentReference();
  buildCounterParentReference++;
  if (buildCounterParentReference < 3) {
    o.id = "foo";
    o.isRoot = true;
    o.kind = "foo";
    o.parentLink = "foo";
    o.selfLink = "foo";
  }
  buildCounterParentReference--;
  return o;
}

checkParentReference(api.ParentReference o) {
  buildCounterParentReference++;
  if (buildCounterParentReference < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isRoot, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.parentLink, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterParentReference--;
}

buildUnnamed1133() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1133(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1134() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPermissionPermissionDetails = 0;
buildPermissionPermissionDetails() {
  var o = new api.PermissionPermissionDetails();
  buildCounterPermissionPermissionDetails++;
  if (buildCounterPermissionPermissionDetails < 3) {
    o.additionalRoles = buildUnnamed1134();
    o.inherited = true;
    o.inheritedFrom = "foo";
    o.permissionType = "foo";
    o.role = "foo";
  }
  buildCounterPermissionPermissionDetails--;
  return o;
}

checkPermissionPermissionDetails(api.PermissionPermissionDetails o) {
  buildCounterPermissionPermissionDetails++;
  if (buildCounterPermissionPermissionDetails < 3) {
    checkUnnamed1134(o.additionalRoles);
    unittest.expect(o.inherited, unittest.isTrue);
    unittest.expect(o.inheritedFrom, unittest.equals('foo'));
    unittest.expect(o.permissionType, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPermissionPermissionDetails--;
}

buildUnnamed1135() {
  var o = new core.List<api.PermissionPermissionDetails>();
  o.add(buildPermissionPermissionDetails());
  o.add(buildPermissionPermissionDetails());
  return o;
}

checkUnnamed1135(core.List<api.PermissionPermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionPermissionDetails(o[0]);
  checkPermissionPermissionDetails(o[1]);
}

buildUnnamed1136() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPermissionTeamDrivePermissionDetails = 0;
buildPermissionTeamDrivePermissionDetails() {
  var o = new api.PermissionTeamDrivePermissionDetails();
  buildCounterPermissionTeamDrivePermissionDetails++;
  if (buildCounterPermissionTeamDrivePermissionDetails < 3) {
    o.additionalRoles = buildUnnamed1136();
    o.inherited = true;
    o.inheritedFrom = "foo";
    o.role = "foo";
    o.teamDrivePermissionType = "foo";
  }
  buildCounterPermissionTeamDrivePermissionDetails--;
  return o;
}

checkPermissionTeamDrivePermissionDetails(
    api.PermissionTeamDrivePermissionDetails o) {
  buildCounterPermissionTeamDrivePermissionDetails++;
  if (buildCounterPermissionTeamDrivePermissionDetails < 3) {
    checkUnnamed1136(o.additionalRoles);
    unittest.expect(o.inherited, unittest.isTrue);
    unittest.expect(o.inheritedFrom, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.teamDrivePermissionType, unittest.equals('foo'));
  }
  buildCounterPermissionTeamDrivePermissionDetails--;
}

buildUnnamed1137() {
  var o = new core.List<api.PermissionTeamDrivePermissionDetails>();
  o.add(buildPermissionTeamDrivePermissionDetails());
  o.add(buildPermissionTeamDrivePermissionDetails());
  return o;
}

checkUnnamed1137(core.List<api.PermissionTeamDrivePermissionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionTeamDrivePermissionDetails(o[0]);
  checkPermissionTeamDrivePermissionDetails(o[1]);
}

core.int buildCounterPermission = 0;
buildPermission() {
  var o = new api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.additionalRoles = buildUnnamed1133();
    o.authKey = "foo";
    o.deleted = true;
    o.domain = "foo";
    o.emailAddress = "foo";
    o.etag = "foo";
    o.expirationDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.permissionDetails = buildUnnamed1135();
    o.photoLink = "foo";
    o.role = "foo";
    o.selfLink = "foo";
    o.teamDrivePermissionDetails = buildUnnamed1137();
    o.type = "foo";
    o.value = "foo";
    o.withLink = true;
  }
  buildCounterPermission--;
  return o;
}

checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    checkUnnamed1133(o.additionalRoles);
    unittest.expect(o.authKey, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.expirationDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1135(o.permissionDetails);
    unittest.expect(o.photoLink, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed1137(o.teamDrivePermissionDetails);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.withLink, unittest.isTrue);
  }
  buildCounterPermission--;
}

core.int buildCounterPermissionId = 0;
buildPermissionId() {
  var o = new api.PermissionId();
  buildCounterPermissionId++;
  if (buildCounterPermissionId < 3) {
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterPermissionId--;
  return o;
}

checkPermissionId(api.PermissionId o) {
  buildCounterPermissionId++;
  if (buildCounterPermissionId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPermissionId--;
}

buildUnnamed1138() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed1138(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissionList = 0;
buildPermissionList() {
  var o = new api.PermissionList();
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1138();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterPermissionList--;
  return o;
}

checkPermissionList(api.PermissionList o) {
  buildCounterPermissionList++;
  if (buildCounterPermissionList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1138(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterPermissionList--;
}

core.int buildCounterProperty = 0;
buildProperty() {
  var o = new api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.etag = "foo";
    o.key = "foo";
    o.kind = "foo";
    o.selfLink = "foo";
    o.value = "foo";
    o.visibility = "foo";
  }
  buildCounterProperty--;
  return o;
}

checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterProperty--;
}

buildUnnamed1139() {
  var o = new core.List<api.Property>();
  o.add(buildProperty());
  o.add(buildProperty());
  return o;
}

checkUnnamed1139(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterPropertyList = 0;
buildPropertyList() {
  var o = new api.PropertyList();
  buildCounterPropertyList++;
  if (buildCounterPropertyList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1139();
    o.kind = "foo";
    o.selfLink = "foo";
  }
  buildCounterPropertyList--;
  return o;
}

checkPropertyList(api.PropertyList o) {
  buildCounterPropertyList++;
  if (buildCounterPropertyList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1139(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterPropertyList--;
}

buildUnnamed1140() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1140(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterRevision = 0;
buildRevision() {
  var o = new api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.downloadUrl = "foo";
    o.etag = "foo";
    o.exportLinks = buildUnnamed1140();
    o.fileSize = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lastModifyingUser = buildUser();
    o.lastModifyingUserName = "foo";
    o.md5Checksum = "foo";
    o.mimeType = "foo";
    o.modifiedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.originalFilename = "foo";
    o.pinned = true;
    o.publishAuto = true;
    o.published = true;
    o.publishedLink = "foo";
    o.publishedOutsideDomain = true;
    o.selfLink = "foo";
  }
  buildCounterRevision--;
  return o;
}

checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1140(o.exportLinks);
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUser(o.lastModifyingUser);
    unittest.expect(o.lastModifyingUserName, unittest.equals('foo'));
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.modifiedDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.originalFilename, unittest.equals('foo'));
    unittest.expect(o.pinned, unittest.isTrue);
    unittest.expect(o.publishAuto, unittest.isTrue);
    unittest.expect(o.published, unittest.isTrue);
    unittest.expect(o.publishedLink, unittest.equals('foo'));
    unittest.expect(o.publishedOutsideDomain, unittest.isTrue);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRevision--;
}

buildUnnamed1141() {
  var o = new core.List<api.Revision>();
  o.add(buildRevision());
  o.add(buildRevision());
  return o;
}

checkUnnamed1141(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.int buildCounterRevisionList = 0;
buildRevisionList() {
  var o = new api.RevisionList();
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    o.etag = "foo";
    o.items = buildUnnamed1141();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRevisionList--;
  return o;
}

checkRevisionList(api.RevisionList o) {
  buildCounterRevisionList++;
  if (buildCounterRevisionList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1141(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRevisionList--;
}

core.int buildCounterStartPageToken = 0;
buildStartPageToken() {
  var o = new api.StartPageToken();
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    o.kind = "foo";
    o.startPageToken = "foo";
  }
  buildCounterStartPageToken--;
  return o;
}

checkStartPageToken(api.StartPageToken o) {
  buildCounterStartPageToken++;
  if (buildCounterStartPageToken < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startPageToken, unittest.equals('foo'));
  }
  buildCounterStartPageToken--;
}

core.int buildCounterTeamDriveBackgroundImageFile = 0;
buildTeamDriveBackgroundImageFile() {
  var o = new api.TeamDriveBackgroundImageFile();
  buildCounterTeamDriveBackgroundImageFile++;
  if (buildCounterTeamDriveBackgroundImageFile < 3) {
    o.id = "foo";
    o.width = 42.0;
    o.xCoordinate = 42.0;
    o.yCoordinate = 42.0;
  }
  buildCounterTeamDriveBackgroundImageFile--;
  return o;
}

checkTeamDriveBackgroundImageFile(api.TeamDriveBackgroundImageFile o) {
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
buildTeamDriveCapabilities() {
  var o = new api.TeamDriveCapabilities();
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

checkTeamDriveCapabilities(api.TeamDriveCapabilities o) {
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
buildTeamDriveRestrictions() {
  var o = new api.TeamDriveRestrictions();
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

checkTeamDriveRestrictions(api.TeamDriveRestrictions o) {
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
buildTeamDrive() {
  var o = new api.TeamDrive();
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    o.backgroundImageFile = buildTeamDriveBackgroundImageFile();
    o.backgroundImageLink = "foo";
    o.capabilities = buildTeamDriveCapabilities();
    o.colorRgb = "foo";
    o.createdDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.restrictions = buildTeamDriveRestrictions();
    o.themeId = "foo";
  }
  buildCounterTeamDrive--;
  return o;
}

checkTeamDrive(api.TeamDrive o) {
  buildCounterTeamDrive++;
  if (buildCounterTeamDrive < 3) {
    checkTeamDriveBackgroundImageFile(o.backgroundImageFile);
    unittest.expect(o.backgroundImageLink, unittest.equals('foo'));
    checkTeamDriveCapabilities(o.capabilities);
    unittest.expect(o.colorRgb, unittest.equals('foo'));
    unittest.expect(o.createdDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTeamDriveRestrictions(o.restrictions);
    unittest.expect(o.themeId, unittest.equals('foo'));
  }
  buildCounterTeamDrive--;
}

buildUnnamed1142() {
  var o = new core.List<api.TeamDrive>();
  o.add(buildTeamDrive());
  o.add(buildTeamDrive());
  return o;
}

checkUnnamed1142(core.List<api.TeamDrive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeamDrive(o[0]);
  checkTeamDrive(o[1]);
}

core.int buildCounterTeamDriveList = 0;
buildTeamDriveList() {
  var o = new api.TeamDriveList();
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    o.items = buildUnnamed1142();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterTeamDriveList--;
  return o;
}

checkTeamDriveList(api.TeamDriveList o) {
  buildCounterTeamDriveList++;
  if (buildCounterTeamDriveList < 3) {
    checkUnnamed1142(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterTeamDriveList--;
}

core.int buildCounterUserPicture = 0;
buildUserPicture() {
  var o = new api.UserPicture();
  buildCounterUserPicture++;
  if (buildCounterUserPicture < 3) {
    o.url = "foo";
  }
  buildCounterUserPicture--;
  return o;
}

checkUserPicture(api.UserPicture o) {
  buildCounterUserPicture++;
  if (buildCounterUserPicture < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUserPicture--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = "foo";
    o.emailAddress = "foo";
    o.isAuthenticatedUser = true;
    o.kind = "foo";
    o.permissionId = "foo";
    o.picture = buildUserPicture();
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.isAuthenticatedUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
    checkUserPicture(o.picture);
  }
  buildCounterUser--;
}

main() {
  unittest.group("obj-schema-AboutAdditionalRoleInfoRoleSets", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutAdditionalRoleInfoRoleSets();
      var od = new api.AboutAdditionalRoleInfoRoleSets.fromJson(o.toJson());
      checkAboutAdditionalRoleInfoRoleSets(od);
    });
  });

  unittest.group("obj-schema-AboutAdditionalRoleInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutAdditionalRoleInfo();
      var od = new api.AboutAdditionalRoleInfo.fromJson(o.toJson());
      checkAboutAdditionalRoleInfo(od);
    });
  });

  unittest.group("obj-schema-AboutDriveThemes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutDriveThemes();
      var od = new api.AboutDriveThemes.fromJson(o.toJson());
      checkAboutDriveThemes(od);
    });
  });

  unittest.group("obj-schema-AboutExportFormats", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutExportFormats();
      var od = new api.AboutExportFormats.fromJson(o.toJson());
      checkAboutExportFormats(od);
    });
  });

  unittest.group("obj-schema-AboutFeatures", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutFeatures();
      var od = new api.AboutFeatures.fromJson(o.toJson());
      checkAboutFeatures(od);
    });
  });

  unittest.group("obj-schema-AboutImportFormats", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutImportFormats();
      var od = new api.AboutImportFormats.fromJson(o.toJson());
      checkAboutImportFormats(od);
    });
  });

  unittest.group("obj-schema-AboutMaxUploadSizes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutMaxUploadSizes();
      var od = new api.AboutMaxUploadSizes.fromJson(o.toJson());
      checkAboutMaxUploadSizes(od);
    });
  });

  unittest.group("obj-schema-AboutQuotaBytesByService", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutQuotaBytesByService();
      var od = new api.AboutQuotaBytesByService.fromJson(o.toJson());
      checkAboutQuotaBytesByService(od);
    });
  });

  unittest.group("obj-schema-AboutTeamDriveThemes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAboutTeamDriveThemes();
      var od = new api.AboutTeamDriveThemes.fromJson(o.toJson());
      checkAboutTeamDriveThemes(od);
    });
  });

  unittest.group("obj-schema-About", () {
    unittest.test("to-json--from-json", () {
      var o = buildAbout();
      var od = new api.About.fromJson(o.toJson());
      checkAbout(od);
    });
  });

  unittest.group("obj-schema-AppIcons", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppIcons();
      var od = new api.AppIcons.fromJson(o.toJson());
      checkAppIcons(od);
    });
  });

  unittest.group("obj-schema-App", () {
    unittest.test("to-json--from-json", () {
      var o = buildApp();
      var od = new api.App.fromJson(o.toJson());
      checkApp(od);
    });
  });

  unittest.group("obj-schema-AppList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppList();
      var od = new api.AppList.fromJson(o.toJson());
      checkAppList(od);
    });
  });

  unittest.group("obj-schema-Change", () {
    unittest.test("to-json--from-json", () {
      var o = buildChange();
      var od = new api.Change.fromJson(o.toJson());
      checkChange(od);
    });
  });

  unittest.group("obj-schema-ChangeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeList();
      var od = new api.ChangeList.fromJson(o.toJson());
      checkChangeList(od);
    });
  });

  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group("obj-schema-ChildList", () {
    unittest.test("to-json--from-json", () {
      var o = buildChildList();
      var od = new api.ChildList.fromJson(o.toJson());
      checkChildList(od);
    });
  });

  unittest.group("obj-schema-ChildReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildChildReference();
      var od = new api.ChildReference.fromJson(o.toJson());
      checkChildReference(od);
    });
  });

  unittest.group("obj-schema-CommentContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentContext();
      var od = new api.CommentContext.fromJson(o.toJson());
      checkCommentContext(od);
    });
  });

  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group("obj-schema-CommentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentList();
      var od = new api.CommentList.fromJson(o.toJson());
      checkCommentList(od);
    });
  });

  unittest.group("obj-schema-CommentReply", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentReply();
      var od = new api.CommentReply.fromJson(o.toJson());
      checkCommentReply(od);
    });
  });

  unittest.group("obj-schema-CommentReplyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentReplyList();
      var od = new api.CommentReplyList.fromJson(o.toJson());
      checkCommentReplyList(od);
    });
  });

  unittest.group("obj-schema-DriveBackgroundImageFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveBackgroundImageFile();
      var od = new api.DriveBackgroundImageFile.fromJson(o.toJson());
      checkDriveBackgroundImageFile(od);
    });
  });

  unittest.group("obj-schema-DriveCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveCapabilities();
      var od = new api.DriveCapabilities.fromJson(o.toJson());
      checkDriveCapabilities(od);
    });
  });

  unittest.group("obj-schema-DriveRestrictions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveRestrictions();
      var od = new api.DriveRestrictions.fromJson(o.toJson());
      checkDriveRestrictions(od);
    });
  });

  unittest.group("obj-schema-Drive", () {
    unittest.test("to-json--from-json", () {
      var o = buildDrive();
      var od = new api.Drive.fromJson(o.toJson());
      checkDrive(od);
    });
  });

  unittest.group("obj-schema-DriveList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveList();
      var od = new api.DriveList.fromJson(o.toJson());
      checkDriveList(od);
    });
  });

  unittest.group("obj-schema-FileCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileCapabilities();
      var od = new api.FileCapabilities.fromJson(o.toJson());
      checkFileCapabilities(od);
    });
  });

  unittest.group("obj-schema-FileImageMediaMetadataLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileImageMediaMetadataLocation();
      var od = new api.FileImageMediaMetadataLocation.fromJson(o.toJson());
      checkFileImageMediaMetadataLocation(od);
    });
  });

  unittest.group("obj-schema-FileImageMediaMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileImageMediaMetadata();
      var od = new api.FileImageMediaMetadata.fromJson(o.toJson());
      checkFileImageMediaMetadata(od);
    });
  });

  unittest.group("obj-schema-FileIndexableText", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileIndexableText();
      var od = new api.FileIndexableText.fromJson(o.toJson());
      checkFileIndexableText(od);
    });
  });

  unittest.group("obj-schema-FileLabels", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileLabels();
      var od = new api.FileLabels.fromJson(o.toJson());
      checkFileLabels(od);
    });
  });

  unittest.group("obj-schema-FileThumbnail", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileThumbnail();
      var od = new api.FileThumbnail.fromJson(o.toJson());
      checkFileThumbnail(od);
    });
  });

  unittest.group("obj-schema-FileVideoMediaMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileVideoMediaMetadata();
      var od = new api.FileVideoMediaMetadata.fromJson(o.toJson());
      checkFileVideoMediaMetadata(od);
    });
  });

  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group("obj-schema-FileList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileList();
      var od = new api.FileList.fromJson(o.toJson());
      checkFileList(od);
    });
  });

  unittest.group("obj-schema-GeneratedIds", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeneratedIds();
      var od = new api.GeneratedIds.fromJson(o.toJson());
      checkGeneratedIds(od);
    });
  });

  unittest.group("obj-schema-ParentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildParentList();
      var od = new api.ParentList.fromJson(o.toJson());
      checkParentList(od);
    });
  });

  unittest.group("obj-schema-ParentReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildParentReference();
      var od = new api.ParentReference.fromJson(o.toJson());
      checkParentReference(od);
    });
  });

  unittest.group("obj-schema-PermissionPermissionDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionPermissionDetails();
      var od = new api.PermissionPermissionDetails.fromJson(o.toJson());
      checkPermissionPermissionDetails(od);
    });
  });

  unittest.group("obj-schema-PermissionTeamDrivePermissionDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionTeamDrivePermissionDetails();
      var od =
          new api.PermissionTeamDrivePermissionDetails.fromJson(o.toJson());
      checkPermissionTeamDrivePermissionDetails(od);
    });
  });

  unittest.group("obj-schema-Permission", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermission();
      var od = new api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group("obj-schema-PermissionId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionId();
      var od = new api.PermissionId.fromJson(o.toJson());
      checkPermissionId(od);
    });
  });

  unittest.group("obj-schema-PermissionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionList();
      var od = new api.PermissionList.fromJson(o.toJson());
      checkPermissionList(od);
    });
  });

  unittest.group("obj-schema-Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildProperty();
      var od = new api.Property.fromJson(o.toJson());
      checkProperty(od);
    });
  });

  unittest.group("obj-schema-PropertyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPropertyList();
      var od = new api.PropertyList.fromJson(o.toJson());
      checkPropertyList(od);
    });
  });

  unittest.group("obj-schema-Revision", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevision();
      var od = new api.Revision.fromJson(o.toJson());
      checkRevision(od);
    });
  });

  unittest.group("obj-schema-RevisionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionList();
      var od = new api.RevisionList.fromJson(o.toJson());
      checkRevisionList(od);
    });
  });

  unittest.group("obj-schema-StartPageToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartPageToken();
      var od = new api.StartPageToken.fromJson(o.toJson());
      checkStartPageToken(od);
    });
  });

  unittest.group("obj-schema-TeamDriveBackgroundImageFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveBackgroundImageFile();
      var od = new api.TeamDriveBackgroundImageFile.fromJson(o.toJson());
      checkTeamDriveBackgroundImageFile(od);
    });
  });

  unittest.group("obj-schema-TeamDriveCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveCapabilities();
      var od = new api.TeamDriveCapabilities.fromJson(o.toJson());
      checkTeamDriveCapabilities(od);
    });
  });

  unittest.group("obj-schema-TeamDriveRestrictions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveRestrictions();
      var od = new api.TeamDriveRestrictions.fromJson(o.toJson());
      checkTeamDriveRestrictions(od);
    });
  });

  unittest.group("obj-schema-TeamDrive", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDrive();
      var od = new api.TeamDrive.fromJson(o.toJson());
      checkTeamDrive(od);
    });
  });

  unittest.group("obj-schema-TeamDriveList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveList();
      var od = new api.TeamDriveList.fromJson(o.toJson());
      checkTeamDriveList(od);
    });
  });

  unittest.group("obj-schema-UserPicture", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPicture();
      var od = new api.UserPicture.fromJson(o.toJson());
      checkUserPicture(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("resource-AboutResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AboutResourceApi res = new api.DriveApi(mock).about;
      var arg_includeSubscribed = true;
      var arg_maxChangeIdCount = "foo";
      var arg_startChangeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("about"));
        pathOffset += 5;

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
        unittest.expect(queryMap["includeSubscribed"].first,
            unittest.equals("$arg_includeSubscribed"));
        unittest.expect(queryMap["maxChangeIdCount"].first,
            unittest.equals(arg_maxChangeIdCount));
        unittest.expect(queryMap["startChangeId"].first,
            unittest.equals(arg_startChangeId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAbout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(
              includeSubscribed: arg_includeSubscribed,
              maxChangeIdCount: arg_maxChangeIdCount,
              startChangeId: arg_startChangeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAbout(response);
      })));
    });
  });

  unittest.group("resource-AppsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.DriveApi(mock).apps;
      var arg_appId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("apps/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_appId"));

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
        var resp = convert.json.encode(buildApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.DriveApi(mock).apps;
      var arg_appFilterExtensions = "foo";
      var arg_appFilterMimeTypes = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("apps"));
        pathOffset += 4;

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
        unittest.expect(queryMap["appFilterExtensions"].first,
            unittest.equals(arg_appFilterExtensions));
        unittest.expect(queryMap["appFilterMimeTypes"].first,
            unittest.equals(arg_appFilterMimeTypes));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAppList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              appFilterExtensions: arg_appFilterExtensions,
              appFilterMimeTypes: arg_appFilterMimeTypes,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppList(response);
      })));
    });
  });

  unittest.group("resource-ChangesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_changeId = "foo";
      var arg_driveId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("changes/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_changeId"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChange());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_changeId,
              driveId: arg_driveId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              teamDriveId: arg_teamDriveId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChange(response);
      })));
    });

    unittest.test("method--getStartPageToken", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_driveId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("changes/startPageToken"));
        pathOffset += 22;

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildStartPageToken());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_driveId = "foo";
      var arg_includeCorpusRemovals = true;
      var arg_includeDeleted = true;
      var arg_includeItemsFromAllDrives = true;
      var arg_includeSubscribed = true;
      var arg_includeTeamDriveItems = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_spaces = "foo";
      var arg_startChangeId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("changes"));
        pathOffset += 7;

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
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeCorpusRemovals"].first,
            unittest.equals("$arg_includeCorpusRemovals"));
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includeSubscribed"].first,
            unittest.equals("$arg_includeSubscribed"));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));
        unittest.expect(queryMap["startChangeId"].first,
            unittest.equals(arg_startChangeId));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChangeList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              driveId: arg_driveId,
              includeCorpusRemovals: arg_includeCorpusRemovals,
              includeDeleted: arg_includeDeleted,
              includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
              includeSubscribed: arg_includeSubscribed,
              includeTeamDriveItems: arg_includeTeamDriveItems,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              spaces: arg_spaces,
              startChangeId: arg_startChangeId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              teamDriveId: arg_teamDriveId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangeList(response);
      })));
    });

    unittest.test("method--watch", () {
      var mock = new HttpServerMock();
      api.ChangesResourceApi res = new api.DriveApi(mock).changes;
      var arg_request = buildChannel();
      var arg_driveId = "foo";
      var arg_includeCorpusRemovals = true;
      var arg_includeDeleted = true;
      var arg_includeItemsFromAllDrives = true;
      var arg_includeSubscribed = true;
      var arg_includeTeamDriveItems = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_spaces = "foo";
      var arg_startChangeId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("changes/watch"));
        pathOffset += 13;

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
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeCorpusRemovals"].first,
            unittest.equals("$arg_includeCorpusRemovals"));
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includeSubscribed"].first,
            unittest.equals("$arg_includeSubscribed"));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["spaces"].first, unittest.equals(arg_spaces));
        unittest.expect(queryMap["startChangeId"].first,
            unittest.equals(arg_startChangeId));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(
            queryMap["teamDriveId"].first, unittest.equals(arg_teamDriveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request,
              driveId: arg_driveId,
              includeCorpusRemovals: arg_includeCorpusRemovals,
              includeDeleted: arg_includeDeleted,
              includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
              includeSubscribed: arg_includeSubscribed,
              includeTeamDriveItems: arg_includeTeamDriveItems,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              spaces: arg_spaces,
              startChangeId: arg_startChangeId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              teamDriveId: arg_teamDriveId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.ChannelsResourceApi res = new api.DriveApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("channels/stop"));
        pathOffset += 13;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ChildrenResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ChildrenResourceApi res = new api.DriveApi(mock).children;
      var arg_folderId = "foo";
      var arg_childId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/children/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_folderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/children/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_childId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_folderId, arg_childId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ChildrenResourceApi res = new api.DriveApi(mock).children;
      var arg_folderId = "foo";
      var arg_childId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/children/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_folderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/children/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_childId"));

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
        var resp = convert.json.encode(buildChildReference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_folderId, arg_childId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChildReference(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ChildrenResourceApi res = new api.DriveApi(mock).children;
      var arg_request = buildChildReference();
      var arg_folderId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ChildReference.fromJson(json);
        checkChildReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/children", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_folderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/children"));
        pathOffset += 9;

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChildReference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_folderId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChildReference(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ChildrenResourceApi res = new api.DriveApi(mock).children;
      var arg_folderId = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_q = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/children", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_folderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/children"));
        pathOffset += 9;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChildList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_folderId,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              q: arg_q,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChildList(response);
      })));
    });
  });

  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_includeDeleted = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_commentId,
              includeDeleted: arg_includeDeleted, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_fileId = "foo";
      var arg_includeDeleted = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_updatedMin = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["updatedMin"].first, unittest.equals(arg_updatedMin));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommentList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              includeDeleted: arg_includeDeleted,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              updatedMin: arg_updatedMin,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = convert.json.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.DriveApi(mock).comments;
      var arg_request = buildComment();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = convert.json.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });
  });

  unittest.group("resource-DrivesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_driveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_driveId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_driveId = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_driveId"));

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
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_driveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test("method--hide", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_driveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        index = path.indexOf("/hide", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_driveId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/hide"));
        pathOffset += 5;

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
        var resp = convert.json.encode(buildDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hide(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_request = buildDrive();
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Drive.fromJson(json);
        checkDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("drives"));
        pathOffset += 6;

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
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_q = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("drives"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDriveList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              q: arg_q,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDriveList(response);
      })));
    });

    unittest.test("method--unhide", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_driveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        index = path.indexOf("/unhide", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_driveId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/unhide"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unhide(arg_driveId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDrive(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DrivesResourceApi res = new api.DriveApi(mock).drives;
      var arg_request = buildDrive();
      var arg_driveId = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Drive.fromJson(json);
        checkDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("drives/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_driveId"));

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
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDrive());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-FilesResourceApi", () {
    unittest.test("method--copy", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = "foo";
      var arg_convert = true;
      var arg_ocr = true;
      var arg_ocrLanguage = "foo";
      var arg_pinned = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_timedTextLanguage = "foo";
      var arg_timedTextTrackName = "foo";
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/copy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/copy"));
        pathOffset += 5;

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
        unittest.expect(
            queryMap["convert"].first, unittest.equals("$arg_convert"));
        unittest.expect(queryMap["ocr"].first, unittest.equals("$arg_ocr"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(
            queryMap["pinned"].first, unittest.equals("$arg_pinned"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["timedTextLanguage"].first,
            unittest.equals(arg_timedTextLanguage));
        unittest.expect(queryMap["timedTextTrackName"].first,
            unittest.equals(arg_timedTextTrackName));
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copy(arg_request, arg_fileId,
              convert: arg_convert,
              ocr: arg_ocr,
              ocrLanguage: arg_ocrLanguage,
              pinned: arg_pinned,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              timedTextLanguage: arg_timedTextLanguage,
              timedTextTrackName: arg_timedTextTrackName,
              visibility: arg_visibility,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--emptyTrash", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("files/trash"));
        pathOffset += 11;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.emptyTrash($fields: arg_$fields).then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--export", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_mimeType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/export", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/export"));
        pathOffset += 7;

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
        unittest.expect(
            queryMap["mimeType"].first, unittest.equals(arg_mimeType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_fileId, arg_mimeType, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--generateIds", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_maxResults = 42;
      var arg_space = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("files/generateIds"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["space"].first, unittest.equals(arg_space));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGeneratedIds());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIds(
              maxResults: arg_maxResults,
              space: arg_space,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGeneratedIds(response);
      })));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_acknowledgeAbuse = true;
      var arg_projection = "foo";
      var arg_revisionId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_updateViewedDate = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(queryMap["acknowledgeAbuse"].first,
            unittest.equals("$arg_acknowledgeAbuse"));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["revisionId"].first, unittest.equals(arg_revisionId));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["updateViewedDate"].first,
            unittest.equals("$arg_updateViewedDate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId,
              acknowledgeAbuse: arg_acknowledgeAbuse,
              projection: arg_projection,
              revisionId: arg_revisionId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              updateViewedDate: arg_updateViewedDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_convert = true;
      var arg_ocr = true;
      var arg_ocrLanguage = "foo";
      var arg_pinned = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_timedTextLanguage = "foo";
      var arg_timedTextTrackName = "foo";
      var arg_useContentAsIndexableText = true;
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("files"));
        pathOffset += 5;

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
        unittest.expect(
            queryMap["convert"].first, unittest.equals("$arg_convert"));
        unittest.expect(queryMap["ocr"].first, unittest.equals("$arg_ocr"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(
            queryMap["pinned"].first, unittest.equals("$arg_pinned"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["timedTextLanguage"].first,
            unittest.equals(arg_timedTextLanguage));
        unittest.expect(queryMap["timedTextTrackName"].first,
            unittest.equals(arg_timedTextTrackName));
        unittest.expect(queryMap["useContentAsIndexableText"].first,
            unittest.equals("$arg_useContentAsIndexableText"));
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              convert: arg_convert,
              ocr: arg_ocr,
              ocrLanguage: arg_ocrLanguage,
              pinned: arg_pinned,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              timedTextLanguage: arg_timedTextLanguage,
              timedTextTrackName: arg_timedTextTrackName,
              useContentAsIndexableText: arg_useContentAsIndexableText,
              visibility: arg_visibility,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_corpora = "foo";
      var arg_corpus = "foo";
      var arg_driveId = "foo";
      var arg_includeItemsFromAllDrives = true;
      var arg_includeTeamDriveItems = true;
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_q = "foo";
      var arg_spaces = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("files"));
        pathOffset += 5;

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
        unittest.expect(
            queryMap["corpora"].first, unittest.equals(arg_corpora));
        unittest.expect(queryMap["corpus"].first, unittest.equals(arg_corpus));
        unittest.expect(
            queryMap["driveId"].first, unittest.equals(arg_driveId));
        unittest.expect(queryMap["includeItemsFromAllDrives"].first,
            unittest.equals("$arg_includeItemsFromAllDrives"));
        unittest.expect(queryMap["includeTeamDriveItems"].first,
            unittest.equals("$arg_includeTeamDriveItems"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFileList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              corpora: arg_corpora,
              corpus: arg_corpus,
              driveId: arg_driveId,
              includeItemsFromAllDrives: arg_includeItemsFromAllDrives,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFileList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = "foo";
      var arg_addParents = "foo";
      var arg_convert = true;
      var arg_modifiedDateBehavior = "foo";
      var arg_newRevision = true;
      var arg_ocr = true;
      var arg_ocrLanguage = "foo";
      var arg_pinned = true;
      var arg_removeParents = "foo";
      var arg_setModifiedDate = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_timedTextLanguage = "foo";
      var arg_timedTextTrackName = "foo";
      var arg_updateViewedDate = true;
      var arg_useContentAsIndexableText = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(
            queryMap["addParents"].first, unittest.equals(arg_addParents));
        unittest.expect(
            queryMap["convert"].first, unittest.equals("$arg_convert"));
        unittest.expect(queryMap["modifiedDateBehavior"].first,
            unittest.equals(arg_modifiedDateBehavior));
        unittest.expect(
            queryMap["newRevision"].first, unittest.equals("$arg_newRevision"));
        unittest.expect(queryMap["ocr"].first, unittest.equals("$arg_ocr"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(
            queryMap["pinned"].first, unittest.equals("$arg_pinned"));
        unittest.expect(queryMap["removeParents"].first,
            unittest.equals(arg_removeParents));
        unittest.expect(queryMap["setModifiedDate"].first,
            unittest.equals("$arg_setModifiedDate"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["timedTextLanguage"].first,
            unittest.equals(arg_timedTextLanguage));
        unittest.expect(queryMap["timedTextTrackName"].first,
            unittest.equals(arg_timedTextTrackName));
        unittest.expect(queryMap["updateViewedDate"].first,
            unittest.equals("$arg_updateViewedDate"));
        unittest.expect(queryMap["useContentAsIndexableText"].first,
            unittest.equals("$arg_useContentAsIndexableText"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId,
              addParents: arg_addParents,
              convert: arg_convert,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--touch", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/touch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/touch"));
        pathOffset += 6;

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .touch(arg_fileId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--trash", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/trash", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/trash"));
        pathOffset += 6;

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .trash(arg_fileId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--untrash", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_fileId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/untrash", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/untrash"));
        pathOffset += 8;

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .untrash(arg_fileId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildFile();
      var arg_fileId = "foo";
      var arg_addParents = "foo";
      var arg_convert = true;
      var arg_modifiedDateBehavior = "foo";
      var arg_newRevision = true;
      var arg_ocr = true;
      var arg_ocrLanguage = "foo";
      var arg_pinned = true;
      var arg_removeParents = "foo";
      var arg_setModifiedDate = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_timedTextLanguage = "foo";
      var arg_timedTextTrackName = "foo";
      var arg_updateViewedDate = true;
      var arg_useContentAsIndexableText = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.File.fromJson(json);
        checkFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));

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
        unittest.expect(
            queryMap["addParents"].first, unittest.equals(arg_addParents));
        unittest.expect(
            queryMap["convert"].first, unittest.equals("$arg_convert"));
        unittest.expect(queryMap["modifiedDateBehavior"].first,
            unittest.equals(arg_modifiedDateBehavior));
        unittest.expect(
            queryMap["newRevision"].first, unittest.equals("$arg_newRevision"));
        unittest.expect(queryMap["ocr"].first, unittest.equals("$arg_ocr"));
        unittest.expect(
            queryMap["ocrLanguage"].first, unittest.equals(arg_ocrLanguage));
        unittest.expect(
            queryMap["pinned"].first, unittest.equals("$arg_pinned"));
        unittest.expect(queryMap["removeParents"].first,
            unittest.equals(arg_removeParents));
        unittest.expect(queryMap["setModifiedDate"].first,
            unittest.equals("$arg_setModifiedDate"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["timedTextLanguage"].first,
            unittest.equals(arg_timedTextLanguage));
        unittest.expect(queryMap["timedTextTrackName"].first,
            unittest.equals(arg_timedTextTrackName));
        unittest.expect(queryMap["updateViewedDate"].first,
            unittest.equals("$arg_updateViewedDate"));
        unittest.expect(queryMap["useContentAsIndexableText"].first,
            unittest.equals("$arg_useContentAsIndexableText"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId,
              addParents: arg_addParents,
              convert: arg_convert,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test("method--watch", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.DriveApi(mock).files;
      var arg_request = buildChannel();
      var arg_fileId = "foo";
      var arg_acknowledgeAbuse = true;
      var arg_projection = "foo";
      var arg_revisionId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_updateViewedDate = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/watch"));
        pathOffset += 6;

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
        unittest.expect(queryMap["acknowledgeAbuse"].first,
            unittest.equals("$arg_acknowledgeAbuse"));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["revisionId"].first, unittest.equals(arg_revisionId));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["updateViewedDate"].first,
            unittest.equals("$arg_updateViewedDate"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_fileId,
              acknowledgeAbuse: arg_acknowledgeAbuse,
              projection: arg_projection,
              revisionId: arg_revisionId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              updateViewedDate: arg_updateViewedDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group("resource-ParentsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ParentsResourceApi res = new api.DriveApi(mock).parents;
      var arg_fileId = "foo";
      var arg_parentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/parents/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/parents/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_parentId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_parentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ParentsResourceApi res = new api.DriveApi(mock).parents;
      var arg_fileId = "foo";
      var arg_parentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/parents/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/parents/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_parentId"));

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
        var resp = convert.json.encode(buildParentReference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_parentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkParentReference(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ParentsResourceApi res = new api.DriveApi(mock).parents;
      var arg_request = buildParentReference();
      var arg_fileId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ParentReference.fromJson(json);
        checkParentReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/parents"));
        pathOffset += 8;

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildParentReference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_fileId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkParentReference(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ParentsResourceApi res = new api.DriveApi(mock).parents;
      var arg_fileId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/parents"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildParentList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkParentList(response);
      })));
    });
  });

  unittest.group("resource-PermissionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_permissionId,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--getIdForEmail", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_email = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("permissionIds/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_email"));

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
        var resp = convert.json.encode(buildPermissionId());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIdForEmail(arg_email, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermissionId(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = "foo";
      var arg_emailMessage = "foo";
      var arg_sendNotificationEmails = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

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
        unittest.expect(
            queryMap["emailMessage"].first, unittest.equals(arg_emailMessage));
        unittest.expect(queryMap["sendNotificationEmails"].first,
            unittest.equals("$arg_sendNotificationEmails"));
        unittest.expect(queryMap["supportsAllDrives"].first,
            unittest.equals("$arg_supportsAllDrives"));
        unittest.expect(queryMap["supportsTeamDrives"].first,
            unittest.equals("$arg_supportsTeamDrives"));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_fileId,
              emailMessage: arg_emailMessage,
              sendNotificationEmails: arg_sendNotificationEmails,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_fileId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermissionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              supportsAllDrives: arg_supportsAllDrives,
              supportsTeamDrives: arg_supportsTeamDrives,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermissionList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      var arg_removeExpiration = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_transferOwnership = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId, arg_permissionId,
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.DriveApi(mock).permissions;
      var arg_request = buildPermission();
      var arg_fileId = "foo";
      var arg_permissionId = "foo";
      var arg_removeExpiration = true;
      var arg_supportsAllDrives = true;
      var arg_supportsTeamDrives = true;
      var arg_transferOwnership = true;
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Permission.fromJson(json);
        checkPermission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/permissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/permissions/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-PropertiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_fileId = "foo";
      var arg_propertyKey = "foo";
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/properties/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_propertyKey"));

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
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_propertyKey,
              visibility: arg_visibility, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_fileId = "foo";
      var arg_propertyKey = "foo";
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/properties/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_propertyKey"));

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
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProperty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_propertyKey,
              visibility: arg_visibility, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProperty(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_request = buildProperty();
      var arg_fileId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Property.fromJson(json);
        checkProperty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/properties"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildProperty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProperty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_fileId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/properties"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildPropertyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPropertyList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_request = buildProperty();
      var arg_fileId = "foo";
      var arg_propertyKey = "foo";
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Property.fromJson(json);
        checkProperty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/properties/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_propertyKey"));

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
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProperty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId, arg_propertyKey,
              visibility: arg_visibility, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProperty(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PropertiesResourceApi res = new api.DriveApi(mock).properties;
      var arg_request = buildProperty();
      var arg_fileId = "foo";
      var arg_propertyKey = "foo";
      var arg_visibility = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Property.fromJson(json);
        checkProperty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/properties/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/properties/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_propertyKey"));

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
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProperty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_propertyKey,
              visibility: arg_visibility, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProperty(response);
      })));
    });
  });

  unittest.group("resource-RealtimeResourceApi", () {
    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.RealtimeResourceApi res = new api.DriveApi(mock).realtime;
      var arg_fileId = "foo";
      var arg_revision = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/realtime", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/realtime"));
        pathOffset += 9;

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
        unittest.expect(core.int.parse(queryMap["revision"].first),
            unittest.equals(arg_revision));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, revision: arg_revision, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.RealtimeResourceApi res = new api.DriveApi(mock).realtime;
      var arg_fileId = "foo";
      var arg_baseRevision = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/realtime", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/realtime"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["baseRevision"].first, unittest.equals(arg_baseRevision));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_fileId,
              baseRevision: arg_baseRevision, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-RepliesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_commentId, arg_replyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      var arg_includeDeleted = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommentReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_commentId, arg_replyId,
              includeDeleted: arg_includeDeleted, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentReply(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_request = buildCommentReply();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommentReply.fromJson(json);
        checkCommentReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/replies"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildCommentReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_fileId, arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentReply(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_includeDeleted = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/replies"));
        pathOffset += 8;

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
        unittest.expect(queryMap["includeDeleted"].first,
            unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommentReplyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId, arg_commentId,
              includeDeleted: arg_includeDeleted,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentReplyList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_request = buildCommentReply();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommentReply.fromJson(json);
        checkCommentReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        var resp = convert.json.encode(buildCommentReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId, arg_commentId, arg_replyId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentReply(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RepliesResourceApi res = new api.DriveApi(mock).replies;
      var arg_request = buildCommentReply();
      var arg_fileId = "foo";
      var arg_commentId = "foo";
      var arg_replyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommentReply.fromJson(json);
        checkCommentReply(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/comments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/comments/"));
        pathOffset += 10;
        index = path.indexOf("/replies/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/replies/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_replyId"));

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
        var resp = convert.json.encode(buildCommentReply());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_commentId, arg_replyId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentReply(response);
      })));
    });
  });

  unittest.group("resource-RevisionsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = convert.json.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_fileId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/revisions"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRevisionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_fileId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevisionList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_request = buildRevision();
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Revision.fromJson(json);
        checkRevision(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = convert.json.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.DriveApi(mock).revisions;
      var arg_request = buildRevision();
      var arg_fileId = "foo";
      var arg_revisionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Revision.fromJson(json);
        checkRevision(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("files/"));
        pathOffset += 6;
        index = path.indexOf("/revisions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_fileId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/revisions/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_revisionId"));

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
        var resp = convert.json.encode(buildRevision());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_fileId, arg_revisionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevision(response);
      })));
    });
  });

  unittest.group("resource-TeamdrivesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TeamdrivesResourceApi res = new api.DriveApi(mock).teamdrives;
      var arg_teamDriveId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_teamDriveId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_teamDriveId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TeamdrivesResourceApi res = new api.DriveApi(mock).teamdrives;
      var arg_teamDriveId = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_teamDriveId"));

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
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTeamDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_teamDriveId,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDrive(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TeamdrivesResourceApi res = new api.DriveApi(mock).teamdrives;
      var arg_request = buildTeamDrive();
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TeamDrive.fromJson(json);
        checkTeamDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("teamdrives"));
        pathOffset += 10;

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
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTeamDrive());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDrive(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TeamdrivesResourceApi res = new api.DriveApi(mock).teamdrives;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_q = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("teamdrives"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTeamDriveList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              q: arg_q,
              useDomainAdminAccess: arg_useDomainAdminAccess,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTeamDriveList(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.TeamdrivesResourceApi res = new api.DriveApi(mock).teamdrives;
      var arg_request = buildTeamDrive();
      var arg_teamDriveId = "foo";
      var arg_useDomainAdminAccess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TeamDrive.fromJson(json);
        checkTeamDrive(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("drive/v2/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("teamdrives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_teamDriveId"));

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
        unittest.expect(queryMap["useDomainAdminAccess"].first,
            unittest.equals("$arg_useDomainAdminAccess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTeamDrive());
        return new async.Future.value(stringResponse(200, h, resp));
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
