library googleapis.vault.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/vault/v1.dart' as api;

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

buildUnnamed2923() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2923(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountInfo = 0;
buildAccountInfo() {
  var o = new api.AccountInfo();
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    o.emails = buildUnnamed2923();
  }
  buildCounterAccountInfo--;
  return o;
}

checkAccountInfo(api.AccountInfo o) {
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    checkUnnamed2923(o.emails);
  }
  buildCounterAccountInfo--;
}

core.int buildCounterAddHeldAccountResult = 0;
buildAddHeldAccountResult() {
  var o = new api.AddHeldAccountResult();
  buildCounterAddHeldAccountResult++;
  if (buildCounterAddHeldAccountResult < 3) {
    o.account = buildHeldAccount();
    o.status = buildStatus();
  }
  buildCounterAddHeldAccountResult--;
  return o;
}

checkAddHeldAccountResult(api.AddHeldAccountResult o) {
  buildCounterAddHeldAccountResult++;
  if (buildCounterAddHeldAccountResult < 3) {
    checkHeldAccount(o.account);
    checkStatus(o.status);
  }
  buildCounterAddHeldAccountResult--;
}

buildUnnamed2924() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2924(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2925() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2925(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddHeldAccountsRequest = 0;
buildAddHeldAccountsRequest() {
  var o = new api.AddHeldAccountsRequest();
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed2924();
    o.emails = buildUnnamed2925();
  }
  buildCounterAddHeldAccountsRequest--;
  return o;
}

checkAddHeldAccountsRequest(api.AddHeldAccountsRequest o) {
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    checkUnnamed2924(o.accountIds);
    checkUnnamed2925(o.emails);
  }
  buildCounterAddHeldAccountsRequest--;
}

buildUnnamed2926() {
  var o = new core.List<api.AddHeldAccountResult>();
  o.add(buildAddHeldAccountResult());
  o.add(buildAddHeldAccountResult());
  return o;
}

checkUnnamed2926(core.List<api.AddHeldAccountResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddHeldAccountResult(o[0]);
  checkAddHeldAccountResult(o[1]);
}

core.int buildCounterAddHeldAccountsResponse = 0;
buildAddHeldAccountsResponse() {
  var o = new api.AddHeldAccountsResponse();
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    o.responses = buildUnnamed2926();
  }
  buildCounterAddHeldAccountsResponse--;
  return o;
}

checkAddHeldAccountsResponse(api.AddHeldAccountsResponse o) {
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    checkUnnamed2926(o.responses);
  }
  buildCounterAddHeldAccountsResponse--;
}

core.int buildCounterAddMatterPermissionsRequest = 0;
buildAddMatterPermissionsRequest() {
  var o = new api.AddMatterPermissionsRequest();
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    o.ccMe = true;
    o.matterPermission = buildMatterPermission();
    o.sendEmails = true;
  }
  buildCounterAddMatterPermissionsRequest--;
  return o;
}

checkAddMatterPermissionsRequest(api.AddMatterPermissionsRequest o) {
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    unittest.expect(o.ccMe, unittest.isTrue);
    checkMatterPermission(o.matterPermission);
    unittest.expect(o.sendEmails, unittest.isTrue);
  }
  buildCounterAddMatterPermissionsRequest--;
}

core.int buildCounterCloseMatterRequest = 0;
buildCloseMatterRequest() {
  var o = new api.CloseMatterRequest();
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
  return o;
}

checkCloseMatterRequest(api.CloseMatterRequest o) {
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
}

core.int buildCounterCloseMatterResponse = 0;
buildCloseMatterResponse() {
  var o = new api.CloseMatterResponse();
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterCloseMatterResponse--;
  return o;
}

checkCloseMatterResponse(api.CloseMatterResponse o) {
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    checkMatter(o.matter);
  }
  buildCounterCloseMatterResponse--;
}

core.int buildCounterCloudStorageFile = 0;
buildCloudStorageFile() {
  var o = new api.CloudStorageFile();
  buildCounterCloudStorageFile++;
  if (buildCounterCloudStorageFile < 3) {
    o.bucketName = "foo";
    o.md5Hash = "foo";
    o.objectName = "foo";
    o.size = "foo";
  }
  buildCounterCloudStorageFile--;
  return o;
}

checkCloudStorageFile(api.CloudStorageFile o) {
  buildCounterCloudStorageFile++;
  if (buildCounterCloudStorageFile < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.objectName, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterCloudStorageFile--;
}

buildUnnamed2927() {
  var o = new core.List<api.CloudStorageFile>();
  o.add(buildCloudStorageFile());
  o.add(buildCloudStorageFile());
  return o;
}

checkUnnamed2927(core.List<api.CloudStorageFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudStorageFile(o[0]);
  checkCloudStorageFile(o[1]);
}

core.int buildCounterCloudStorageSink = 0;
buildCloudStorageSink() {
  var o = new api.CloudStorageSink();
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    o.files = buildUnnamed2927();
  }
  buildCounterCloudStorageSink--;
  return o;
}

checkCloudStorageSink(api.CloudStorageSink o) {
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    checkUnnamed2927(o.files);
  }
  buildCounterCloudStorageSink--;
}

core.int buildCounterCorpusQuery = 0;
buildCorpusQuery() {
  var o = new api.CorpusQuery();
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    o.driveQuery = buildHeldDriveQuery();
    o.groupsQuery = buildHeldGroupsQuery();
    o.hangoutsChatQuery = buildHeldHangoutsChatQuery();
    o.mailQuery = buildHeldMailQuery();
  }
  buildCounterCorpusQuery--;
  return o;
}

checkCorpusQuery(api.CorpusQuery o) {
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    checkHeldDriveQuery(o.driveQuery);
    checkHeldGroupsQuery(o.groupsQuery);
    checkHeldHangoutsChatQuery(o.hangoutsChatQuery);
    checkHeldMailQuery(o.mailQuery);
  }
  buildCounterCorpusQuery--;
}

core.int buildCounterDriveExportOptions = 0;
buildDriveExportOptions() {
  var o = new api.DriveExportOptions();
  buildCounterDriveExportOptions++;
  if (buildCounterDriveExportOptions < 3) {
    o.includeAccessInfo = true;
  }
  buildCounterDriveExportOptions--;
  return o;
}

checkDriveExportOptions(api.DriveExportOptions o) {
  buildCounterDriveExportOptions++;
  if (buildCounterDriveExportOptions < 3) {
    unittest.expect(o.includeAccessInfo, unittest.isTrue);
  }
  buildCounterDriveExportOptions--;
}

core.int buildCounterDriveOptions = 0;
buildDriveOptions() {
  var o = new api.DriveOptions();
  buildCounterDriveOptions++;
  if (buildCounterDriveOptions < 3) {
    o.includeSharedDrives = true;
    o.includeTeamDrives = true;
    o.versionDate = "foo";
  }
  buildCounterDriveOptions--;
  return o;
}

checkDriveOptions(api.DriveOptions o) {
  buildCounterDriveOptions++;
  if (buildCounterDriveOptions < 3) {
    unittest.expect(o.includeSharedDrives, unittest.isTrue);
    unittest.expect(o.includeTeamDrives, unittest.isTrue);
    unittest.expect(o.versionDate, unittest.equals('foo'));
  }
  buildCounterDriveOptions--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExport = 0;
buildExport() {
  var o = new api.Export();
  buildCounterExport++;
  if (buildCounterExport < 3) {
    o.cloudStorageSink = buildCloudStorageSink();
    o.createTime = "foo";
    o.exportOptions = buildExportOptions();
    o.id = "foo";
    o.matterId = "foo";
    o.name = "foo";
    o.query = buildQuery();
    o.requester = buildUserInfo();
    o.stats = buildExportStats();
    o.status = "foo";
  }
  buildCounterExport--;
  return o;
}

checkExport(api.Export o) {
  buildCounterExport++;
  if (buildCounterExport < 3) {
    checkCloudStorageSink(o.cloudStorageSink);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkExportOptions(o.exportOptions);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkQuery(o.query);
    checkUserInfo(o.requester);
    checkExportStats(o.stats);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterExport--;
}

core.int buildCounterExportOptions = 0;
buildExportOptions() {
  var o = new api.ExportOptions();
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    o.driveOptions = buildDriveExportOptions();
    o.groupsOptions = buildGroupsExportOptions();
    o.hangoutsChatOptions = buildHangoutsChatExportOptions();
    o.mailOptions = buildMailExportOptions();
    o.region = "foo";
  }
  buildCounterExportOptions--;
  return o;
}

checkExportOptions(api.ExportOptions o) {
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    checkDriveExportOptions(o.driveOptions);
    checkGroupsExportOptions(o.groupsOptions);
    checkHangoutsChatExportOptions(o.hangoutsChatOptions);
    checkMailExportOptions(o.mailOptions);
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterExportOptions--;
}

core.int buildCounterExportStats = 0;
buildExportStats() {
  var o = new api.ExportStats();
  buildCounterExportStats++;
  if (buildCounterExportStats < 3) {
    o.exportedArtifactCount = "foo";
    o.sizeInBytes = "foo";
    o.totalArtifactCount = "foo";
  }
  buildCounterExportStats--;
  return o;
}

checkExportStats(api.ExportStats o) {
  buildCounterExportStats++;
  if (buildCounterExportStats < 3) {
    unittest.expect(o.exportedArtifactCount, unittest.equals('foo'));
    unittest.expect(o.sizeInBytes, unittest.equals('foo'));
    unittest.expect(o.totalArtifactCount, unittest.equals('foo'));
  }
  buildCounterExportStats--;
}

core.int buildCounterGroupsExportOptions = 0;
buildGroupsExportOptions() {
  var o = new api.GroupsExportOptions();
  buildCounterGroupsExportOptions++;
  if (buildCounterGroupsExportOptions < 3) {
    o.exportFormat = "foo";
  }
  buildCounterGroupsExportOptions--;
  return o;
}

checkGroupsExportOptions(api.GroupsExportOptions o) {
  buildCounterGroupsExportOptions++;
  if (buildCounterGroupsExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
  }
  buildCounterGroupsExportOptions--;
}

core.int buildCounterHangoutsChatExportOptions = 0;
buildHangoutsChatExportOptions() {
  var o = new api.HangoutsChatExportOptions();
  buildCounterHangoutsChatExportOptions++;
  if (buildCounterHangoutsChatExportOptions < 3) {
    o.exportFormat = "foo";
  }
  buildCounterHangoutsChatExportOptions--;
  return o;
}

checkHangoutsChatExportOptions(api.HangoutsChatExportOptions o) {
  buildCounterHangoutsChatExportOptions++;
  if (buildCounterHangoutsChatExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
  }
  buildCounterHangoutsChatExportOptions--;
}

buildUnnamed2928() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2928(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHangoutsChatInfo = 0;
buildHangoutsChatInfo() {
  var o = new api.HangoutsChatInfo();
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    o.roomId = buildUnnamed2928();
  }
  buildCounterHangoutsChatInfo--;
  return o;
}

checkHangoutsChatInfo(api.HangoutsChatInfo o) {
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    checkUnnamed2928(o.roomId);
  }
  buildCounterHangoutsChatInfo--;
}

core.int buildCounterHangoutsChatOptions = 0;
buildHangoutsChatOptions() {
  var o = new api.HangoutsChatOptions();
  buildCounterHangoutsChatOptions++;
  if (buildCounterHangoutsChatOptions < 3) {
    o.includeRooms = true;
  }
  buildCounterHangoutsChatOptions--;
  return o;
}

checkHangoutsChatOptions(api.HangoutsChatOptions o) {
  buildCounterHangoutsChatOptions++;
  if (buildCounterHangoutsChatOptions < 3) {
    unittest.expect(o.includeRooms, unittest.isTrue);
  }
  buildCounterHangoutsChatOptions--;
}

core.int buildCounterHeldAccount = 0;
buildHeldAccount() {
  var o = new api.HeldAccount();
  buildCounterHeldAccount++;
  if (buildCounterHeldAccount < 3) {
    o.accountId = "foo";
    o.email = "foo";
    o.firstName = "foo";
    o.holdTime = "foo";
    o.lastName = "foo";
  }
  buildCounterHeldAccount--;
  return o;
}

checkHeldAccount(api.HeldAccount o) {
  buildCounterHeldAccount++;
  if (buildCounterHeldAccount < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.holdTime, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
  }
  buildCounterHeldAccount--;
}

core.int buildCounterHeldDriveQuery = 0;
buildHeldDriveQuery() {
  var o = new api.HeldDriveQuery();
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    o.includeSharedDriveFiles = true;
    o.includeTeamDriveFiles = true;
  }
  buildCounterHeldDriveQuery--;
  return o;
}

checkHeldDriveQuery(api.HeldDriveQuery o) {
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    unittest.expect(o.includeSharedDriveFiles, unittest.isTrue);
    unittest.expect(o.includeTeamDriveFiles, unittest.isTrue);
  }
  buildCounterHeldDriveQuery--;
}

core.int buildCounterHeldGroupsQuery = 0;
buildHeldGroupsQuery() {
  var o = new api.HeldGroupsQuery();
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.terms = "foo";
  }
  buildCounterHeldGroupsQuery--;
  return o;
}

checkHeldGroupsQuery(api.HeldGroupsQuery o) {
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldGroupsQuery--;
}

core.int buildCounterHeldHangoutsChatQuery = 0;
buildHeldHangoutsChatQuery() {
  var o = new api.HeldHangoutsChatQuery();
  buildCounterHeldHangoutsChatQuery++;
  if (buildCounterHeldHangoutsChatQuery < 3) {
    o.includeRooms = true;
  }
  buildCounterHeldHangoutsChatQuery--;
  return o;
}

checkHeldHangoutsChatQuery(api.HeldHangoutsChatQuery o) {
  buildCounterHeldHangoutsChatQuery++;
  if (buildCounterHeldHangoutsChatQuery < 3) {
    unittest.expect(o.includeRooms, unittest.isTrue);
  }
  buildCounterHeldHangoutsChatQuery--;
}

core.int buildCounterHeldMailQuery = 0;
buildHeldMailQuery() {
  var o = new api.HeldMailQuery();
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.terms = "foo";
  }
  buildCounterHeldMailQuery--;
  return o;
}

checkHeldMailQuery(api.HeldMailQuery o) {
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldMailQuery--;
}

core.int buildCounterHeldOrgUnit = 0;
buildHeldOrgUnit() {
  var o = new api.HeldOrgUnit();
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    o.holdTime = "foo";
    o.orgUnitId = "foo";
  }
  buildCounterHeldOrgUnit--;
  return o;
}

checkHeldOrgUnit(api.HeldOrgUnit o) {
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    unittest.expect(o.holdTime, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
  }
  buildCounterHeldOrgUnit--;
}

buildUnnamed2929() {
  var o = new core.List<api.HeldAccount>();
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

checkUnnamed2929(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterHold = 0;
buildHold() {
  var o = new api.Hold();
  buildCounterHold++;
  if (buildCounterHold < 3) {
    o.accounts = buildUnnamed2929();
    o.corpus = "foo";
    o.holdId = "foo";
    o.name = "foo";
    o.orgUnit = buildHeldOrgUnit();
    o.query = buildCorpusQuery();
    o.updateTime = "foo";
  }
  buildCounterHold--;
  return o;
}

checkHold(api.Hold o) {
  buildCounterHold++;
  if (buildCounterHold < 3) {
    checkUnnamed2929(o.accounts);
    unittest.expect(o.corpus, unittest.equals('foo'));
    unittest.expect(o.holdId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeldOrgUnit(o.orgUnit);
    checkCorpusQuery(o.query);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterHold--;
}

buildUnnamed2930() {
  var o = new core.List<api.Export>();
  o.add(buildExport());
  o.add(buildExport());
  return o;
}

checkUnnamed2930(core.List<api.Export> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExport(o[0]);
  checkExport(o[1]);
}

core.int buildCounterListExportsResponse = 0;
buildListExportsResponse() {
  var o = new api.ListExportsResponse();
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    o.exports = buildUnnamed2930();
    o.nextPageToken = "foo";
  }
  buildCounterListExportsResponse--;
  return o;
}

checkListExportsResponse(api.ListExportsResponse o) {
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    checkUnnamed2930(o.exports);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListExportsResponse--;
}

buildUnnamed2931() {
  var o = new core.List<api.HeldAccount>();
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

checkUnnamed2931(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterListHeldAccountsResponse = 0;
buildListHeldAccountsResponse() {
  var o = new api.ListHeldAccountsResponse();
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    o.accounts = buildUnnamed2931();
  }
  buildCounterListHeldAccountsResponse--;
  return o;
}

checkListHeldAccountsResponse(api.ListHeldAccountsResponse o) {
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    checkUnnamed2931(o.accounts);
  }
  buildCounterListHeldAccountsResponse--;
}

buildUnnamed2932() {
  var o = new core.List<api.Hold>();
  o.add(buildHold());
  o.add(buildHold());
  return o;
}

checkUnnamed2932(core.List<api.Hold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHold(o[0]);
  checkHold(o[1]);
}

core.int buildCounterListHoldsResponse = 0;
buildListHoldsResponse() {
  var o = new api.ListHoldsResponse();
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    o.holds = buildUnnamed2932();
    o.nextPageToken = "foo";
  }
  buildCounterListHoldsResponse--;
  return o;
}

checkListHoldsResponse(api.ListHoldsResponse o) {
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    checkUnnamed2932(o.holds);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHoldsResponse--;
}

buildUnnamed2933() {
  var o = new core.List<api.Matter>();
  o.add(buildMatter());
  o.add(buildMatter());
  return o;
}

checkUnnamed2933(core.List<api.Matter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatter(o[0]);
  checkMatter(o[1]);
}

core.int buildCounterListMattersResponse = 0;
buildListMattersResponse() {
  var o = new api.ListMattersResponse();
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    o.matters = buildUnnamed2933();
    o.nextPageToken = "foo";
  }
  buildCounterListMattersResponse--;
  return o;
}

checkListMattersResponse(api.ListMattersResponse o) {
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    checkUnnamed2933(o.matters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMattersResponse--;
}

buildUnnamed2934() {
  var o = new core.List<api.SavedQuery>();
  o.add(buildSavedQuery());
  o.add(buildSavedQuery());
  return o;
}

checkUnnamed2934(core.List<api.SavedQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedQuery(o[0]);
  checkSavedQuery(o[1]);
}

core.int buildCounterListSavedQueriesResponse = 0;
buildListSavedQueriesResponse() {
  var o = new api.ListSavedQueriesResponse();
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    o.nextPageToken = "foo";
    o.savedQueries = buildUnnamed2934();
  }
  buildCounterListSavedQueriesResponse--;
  return o;
}

checkListSavedQueriesResponse(api.ListSavedQueriesResponse o) {
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2934(o.savedQueries);
  }
  buildCounterListSavedQueriesResponse--;
}

core.int buildCounterMailExportOptions = 0;
buildMailExportOptions() {
  var o = new api.MailExportOptions();
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    o.exportFormat = "foo";
    o.showConfidentialModeContent = true;
  }
  buildCounterMailExportOptions--;
  return o;
}

checkMailExportOptions(api.MailExportOptions o) {
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
    unittest.expect(o.showConfidentialModeContent, unittest.isTrue);
  }
  buildCounterMailExportOptions--;
}

core.int buildCounterMailOptions = 0;
buildMailOptions() {
  var o = new api.MailOptions();
  buildCounterMailOptions++;
  if (buildCounterMailOptions < 3) {
    o.excludeDrafts = true;
  }
  buildCounterMailOptions--;
  return o;
}

checkMailOptions(api.MailOptions o) {
  buildCounterMailOptions++;
  if (buildCounterMailOptions < 3) {
    unittest.expect(o.excludeDrafts, unittest.isTrue);
  }
  buildCounterMailOptions--;
}

buildUnnamed2935() {
  var o = new core.List<api.MatterPermission>();
  o.add(buildMatterPermission());
  o.add(buildMatterPermission());
  return o;
}

checkUnnamed2935(core.List<api.MatterPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatterPermission(o[0]);
  checkMatterPermission(o[1]);
}

core.int buildCounterMatter = 0;
buildMatter() {
  var o = new api.Matter();
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    o.description = "foo";
    o.matterId = "foo";
    o.matterPermissions = buildUnnamed2935();
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterMatter--;
  return o;
}

checkMatter(api.Matter o) {
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    checkUnnamed2935(o.matterPermissions);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMatter--;
}

core.int buildCounterMatterPermission = 0;
buildMatterPermission() {
  var o = new api.MatterPermission();
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    o.accountId = "foo";
    o.role = "foo";
  }
  buildCounterMatterPermission--;
  return o;
}

checkMatterPermission(api.MatterPermission o) {
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterMatterPermission--;
}

core.int buildCounterOrgUnitInfo = 0;
buildOrgUnitInfo() {
  var o = new api.OrgUnitInfo();
  buildCounterOrgUnitInfo++;
  if (buildCounterOrgUnitInfo < 3) {
    o.orgUnitId = "foo";
  }
  buildCounterOrgUnitInfo--;
  return o;
}

checkOrgUnitInfo(api.OrgUnitInfo o) {
  buildCounterOrgUnitInfo++;
  if (buildCounterOrgUnitInfo < 3) {
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
  }
  buildCounterOrgUnitInfo--;
}

core.int buildCounterQuery = 0;
buildQuery() {
  var o = new api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.accountInfo = buildAccountInfo();
    o.corpus = "foo";
    o.dataScope = "foo";
    o.driveOptions = buildDriveOptions();
    o.endTime = "foo";
    o.hangoutsChatInfo = buildHangoutsChatInfo();
    o.hangoutsChatOptions = buildHangoutsChatOptions();
    o.mailOptions = buildMailOptions();
    o.method = "foo";
    o.orgUnitInfo = buildOrgUnitInfo();
    o.searchMethod = "foo";
    o.sharedDriveInfo = buildSharedDriveInfo();
    o.startTime = "foo";
    o.teamDriveInfo = buildTeamDriveInfo();
    o.terms = "foo";
    o.timeZone = "foo";
  }
  buildCounterQuery--;
  return o;
}

checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkAccountInfo(o.accountInfo);
    unittest.expect(o.corpus, unittest.equals('foo'));
    unittest.expect(o.dataScope, unittest.equals('foo'));
    checkDriveOptions(o.driveOptions);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkHangoutsChatInfo(o.hangoutsChatInfo);
    checkHangoutsChatOptions(o.hangoutsChatOptions);
    checkMailOptions(o.mailOptions);
    unittest.expect(o.method, unittest.equals('foo'));
    checkOrgUnitInfo(o.orgUnitInfo);
    unittest.expect(o.searchMethod, unittest.equals('foo'));
    checkSharedDriveInfo(o.sharedDriveInfo);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkTeamDriveInfo(o.teamDriveInfo);
    unittest.expect(o.terms, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

buildUnnamed2936() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2936(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemoveHeldAccountsRequest = 0;
buildRemoveHeldAccountsRequest() {
  var o = new api.RemoveHeldAccountsRequest();
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed2936();
  }
  buildCounterRemoveHeldAccountsRequest--;
  return o;
}

checkRemoveHeldAccountsRequest(api.RemoveHeldAccountsRequest o) {
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    checkUnnamed2936(o.accountIds);
  }
  buildCounterRemoveHeldAccountsRequest--;
}

buildUnnamed2937() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed2937(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterRemoveHeldAccountsResponse = 0;
buildRemoveHeldAccountsResponse() {
  var o = new api.RemoveHeldAccountsResponse();
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    o.statuses = buildUnnamed2937();
  }
  buildCounterRemoveHeldAccountsResponse--;
  return o;
}

checkRemoveHeldAccountsResponse(api.RemoveHeldAccountsResponse o) {
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    checkUnnamed2937(o.statuses);
  }
  buildCounterRemoveHeldAccountsResponse--;
}

core.int buildCounterRemoveMatterPermissionsRequest = 0;
buildRemoveMatterPermissionsRequest() {
  var o = new api.RemoveMatterPermissionsRequest();
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    o.accountId = "foo";
  }
  buildCounterRemoveMatterPermissionsRequest--;
  return o;
}

checkRemoveMatterPermissionsRequest(api.RemoveMatterPermissionsRequest o) {
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterRemoveMatterPermissionsRequest--;
}

core.int buildCounterReopenMatterRequest = 0;
buildReopenMatterRequest() {
  var o = new api.ReopenMatterRequest();
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
  return o;
}

checkReopenMatterRequest(api.ReopenMatterRequest o) {
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
}

core.int buildCounterReopenMatterResponse = 0;
buildReopenMatterResponse() {
  var o = new api.ReopenMatterResponse();
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterReopenMatterResponse--;
  return o;
}

checkReopenMatterResponse(api.ReopenMatterResponse o) {
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    checkMatter(o.matter);
  }
  buildCounterReopenMatterResponse--;
}

core.int buildCounterSavedQuery = 0;
buildSavedQuery() {
  var o = new api.SavedQuery();
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    o.createTime = "foo";
    o.displayName = "foo";
    o.matterId = "foo";
    o.query = buildQuery();
    o.savedQueryId = "foo";
  }
  buildCounterSavedQuery--;
  return o;
}

checkSavedQuery(api.SavedQuery o) {
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    checkQuery(o.query);
    unittest.expect(o.savedQueryId, unittest.equals('foo'));
  }
  buildCounterSavedQuery--;
}

buildUnnamed2938() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2938(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSharedDriveInfo = 0;
buildSharedDriveInfo() {
  var o = new api.SharedDriveInfo();
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    o.sharedDriveIds = buildUnnamed2938();
  }
  buildCounterSharedDriveInfo--;
  return o;
}

checkSharedDriveInfo(api.SharedDriveInfo o) {
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    checkUnnamed2938(o.sharedDriveIds);
  }
  buildCounterSharedDriveInfo--;
}

buildUnnamed2939() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2939(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed2940() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2939());
  o.add(buildUnnamed2939());
  return o;
}

checkUnnamed2940(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2939(o[0]);
  checkUnnamed2939(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2940();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2940(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2941() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2941(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTeamDriveInfo = 0;
buildTeamDriveInfo() {
  var o = new api.TeamDriveInfo();
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    o.teamDriveIds = buildUnnamed2941();
  }
  buildCounterTeamDriveInfo--;
  return o;
}

checkTeamDriveInfo(api.TeamDriveInfo o) {
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    checkUnnamed2941(o.teamDriveIds);
  }
  buildCounterTeamDriveInfo--;
}

core.int buildCounterUndeleteMatterRequest = 0;
buildUndeleteMatterRequest() {
  var o = new api.UndeleteMatterRequest();
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
  return o;
}

checkUndeleteMatterRequest(api.UndeleteMatterRequest o) {
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
}

core.int buildCounterUserInfo = 0;
buildUserInfo() {
  var o = new api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.displayName = "foo";
    o.email = "foo";
  }
  buildCounterUserInfo--;
  return o;
}

checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterUserInfo--;
}

main() {
  unittest.group("obj-schema-AccountInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountInfo();
      var od = new api.AccountInfo.fromJson(o.toJson());
      checkAccountInfo(od);
    });
  });

  unittest.group("obj-schema-AddHeldAccountResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddHeldAccountResult();
      var od = new api.AddHeldAccountResult.fromJson(o.toJson());
      checkAddHeldAccountResult(od);
    });
  });

  unittest.group("obj-schema-AddHeldAccountsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddHeldAccountsRequest();
      var od = new api.AddHeldAccountsRequest.fromJson(o.toJson());
      checkAddHeldAccountsRequest(od);
    });
  });

  unittest.group("obj-schema-AddHeldAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddHeldAccountsResponse();
      var od = new api.AddHeldAccountsResponse.fromJson(o.toJson());
      checkAddHeldAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-AddMatterPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddMatterPermissionsRequest();
      var od = new api.AddMatterPermissionsRequest.fromJson(o.toJson());
      checkAddMatterPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-CloseMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloseMatterRequest();
      var od = new api.CloseMatterRequest.fromJson(o.toJson());
      checkCloseMatterRequest(od);
    });
  });

  unittest.group("obj-schema-CloseMatterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloseMatterResponse();
      var od = new api.CloseMatterResponse.fromJson(o.toJson());
      checkCloseMatterResponse(od);
    });
  });

  unittest.group("obj-schema-CloudStorageFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudStorageFile();
      var od = new api.CloudStorageFile.fromJson(o.toJson());
      checkCloudStorageFile(od);
    });
  });

  unittest.group("obj-schema-CloudStorageSink", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudStorageSink();
      var od = new api.CloudStorageSink.fromJson(o.toJson());
      checkCloudStorageSink(od);
    });
  });

  unittest.group("obj-schema-CorpusQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildCorpusQuery();
      var od = new api.CorpusQuery.fromJson(o.toJson());
      checkCorpusQuery(od);
    });
  });

  unittest.group("obj-schema-DriveExportOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveExportOptions();
      var od = new api.DriveExportOptions.fromJson(o.toJson());
      checkDriveExportOptions(od);
    });
  });

  unittest.group("obj-schema-DriveOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveOptions();
      var od = new api.DriveOptions.fromJson(o.toJson());
      checkDriveOptions(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Export", () {
    unittest.test("to-json--from-json", () {
      var o = buildExport();
      var od = new api.Export.fromJson(o.toJson());
      checkExport(od);
    });
  });

  unittest.group("obj-schema-ExportOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportOptions();
      var od = new api.ExportOptions.fromJson(o.toJson());
      checkExportOptions(od);
    });
  });

  unittest.group("obj-schema-ExportStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportStats();
      var od = new api.ExportStats.fromJson(o.toJson());
      checkExportStats(od);
    });
  });

  unittest.group("obj-schema-GroupsExportOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupsExportOptions();
      var od = new api.GroupsExportOptions.fromJson(o.toJson());
      checkGroupsExportOptions(od);
    });
  });

  unittest.group("obj-schema-HangoutsChatExportOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildHangoutsChatExportOptions();
      var od = new api.HangoutsChatExportOptions.fromJson(o.toJson());
      checkHangoutsChatExportOptions(od);
    });
  });

  unittest.group("obj-schema-HangoutsChatInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildHangoutsChatInfo();
      var od = new api.HangoutsChatInfo.fromJson(o.toJson());
      checkHangoutsChatInfo(od);
    });
  });

  unittest.group("obj-schema-HangoutsChatOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildHangoutsChatOptions();
      var od = new api.HangoutsChatOptions.fromJson(o.toJson());
      checkHangoutsChatOptions(od);
    });
  });

  unittest.group("obj-schema-HeldAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldAccount();
      var od = new api.HeldAccount.fromJson(o.toJson());
      checkHeldAccount(od);
    });
  });

  unittest.group("obj-schema-HeldDriveQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldDriveQuery();
      var od = new api.HeldDriveQuery.fromJson(o.toJson());
      checkHeldDriveQuery(od);
    });
  });

  unittest.group("obj-schema-HeldGroupsQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldGroupsQuery();
      var od = new api.HeldGroupsQuery.fromJson(o.toJson());
      checkHeldGroupsQuery(od);
    });
  });

  unittest.group("obj-schema-HeldHangoutsChatQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldHangoutsChatQuery();
      var od = new api.HeldHangoutsChatQuery.fromJson(o.toJson());
      checkHeldHangoutsChatQuery(od);
    });
  });

  unittest.group("obj-schema-HeldMailQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldMailQuery();
      var od = new api.HeldMailQuery.fromJson(o.toJson());
      checkHeldMailQuery(od);
    });
  });

  unittest.group("obj-schema-HeldOrgUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeldOrgUnit();
      var od = new api.HeldOrgUnit.fromJson(o.toJson());
      checkHeldOrgUnit(od);
    });
  });

  unittest.group("obj-schema-Hold", () {
    unittest.test("to-json--from-json", () {
      var o = buildHold();
      var od = new api.Hold.fromJson(o.toJson());
      checkHold(od);
    });
  });

  unittest.group("obj-schema-ListExportsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListExportsResponse();
      var od = new api.ListExportsResponse.fromJson(o.toJson());
      checkListExportsResponse(od);
    });
  });

  unittest.group("obj-schema-ListHeldAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHeldAccountsResponse();
      var od = new api.ListHeldAccountsResponse.fromJson(o.toJson());
      checkListHeldAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-ListHoldsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHoldsResponse();
      var od = new api.ListHoldsResponse.fromJson(o.toJson());
      checkListHoldsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMattersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMattersResponse();
      var od = new api.ListMattersResponse.fromJson(o.toJson());
      checkListMattersResponse(od);
    });
  });

  unittest.group("obj-schema-ListSavedQueriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSavedQueriesResponse();
      var od = new api.ListSavedQueriesResponse.fromJson(o.toJson());
      checkListSavedQueriesResponse(od);
    });
  });

  unittest.group("obj-schema-MailExportOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildMailExportOptions();
      var od = new api.MailExportOptions.fromJson(o.toJson());
      checkMailExportOptions(od);
    });
  });

  unittest.group("obj-schema-MailOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildMailOptions();
      var od = new api.MailOptions.fromJson(o.toJson());
      checkMailOptions(od);
    });
  });

  unittest.group("obj-schema-Matter", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatter();
      var od = new api.Matter.fromJson(o.toJson());
      checkMatter(od);
    });
  });

  unittest.group("obj-schema-MatterPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatterPermission();
      var od = new api.MatterPermission.fromJson(o.toJson());
      checkMatterPermission(od);
    });
  });

  unittest.group("obj-schema-OrgUnitInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgUnitInfo();
      var od = new api.OrgUnitInfo.fromJson(o.toJson());
      checkOrgUnitInfo(od);
    });
  });

  unittest.group("obj-schema-Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuery();
      var od = new api.Query.fromJson(o.toJson());
      checkQuery(od);
    });
  });

  unittest.group("obj-schema-RemoveHeldAccountsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveHeldAccountsRequest();
      var od = new api.RemoveHeldAccountsRequest.fromJson(o.toJson());
      checkRemoveHeldAccountsRequest(od);
    });
  });

  unittest.group("obj-schema-RemoveHeldAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveHeldAccountsResponse();
      var od = new api.RemoveHeldAccountsResponse.fromJson(o.toJson());
      checkRemoveHeldAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-RemoveMatterPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveMatterPermissionsRequest();
      var od = new api.RemoveMatterPermissionsRequest.fromJson(o.toJson());
      checkRemoveMatterPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-ReopenMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReopenMatterRequest();
      var od = new api.ReopenMatterRequest.fromJson(o.toJson());
      checkReopenMatterRequest(od);
    });
  });

  unittest.group("obj-schema-ReopenMatterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReopenMatterResponse();
      var od = new api.ReopenMatterResponse.fromJson(o.toJson());
      checkReopenMatterResponse(od);
    });
  });

  unittest.group("obj-schema-SavedQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildSavedQuery();
      var od = new api.SavedQuery.fromJson(o.toJson());
      checkSavedQuery(od);
    });
  });

  unittest.group("obj-schema-SharedDriveInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSharedDriveInfo();
      var od = new api.SharedDriveInfo.fromJson(o.toJson());
      checkSharedDriveInfo(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TeamDriveInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeamDriveInfo();
      var od = new api.TeamDriveInfo.fromJson(o.toJson());
      checkTeamDriveInfo(od);
    });
  });

  unittest.group("obj-schema-UndeleteMatterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteMatterRequest();
      var od = new api.UndeleteMatterRequest.fromJson(o.toJson());
      checkUndeleteMatterRequest(od);
    });
  });

  unittest.group("obj-schema-UserInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserInfo();
      var od = new api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od);
    });
  });

  unittest.group("resource-MattersResourceApi", () {
    unittest.test("method--addPermissions", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildAddMatterPermissionsRequest();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddMatterPermissionsRequest.fromJson(json);
        checkAddMatterPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":addPermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals(":addPermissions"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildMatterPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPermissions(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatterPermission(response);
      })));
    });

    unittest.test("method--close", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildCloseMatterRequest();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CloseMatterRequest.fromJson(json);
        checkCloseMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":close", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":close"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCloseMatterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .close(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCloseMatterResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Matter.fromJson(json);
        checkMatter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

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
        var resp = convert.json.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_matterId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_state = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
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
        unittest.expect(queryMap["state"].first, unittest.equals(arg_state));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListMattersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              state: arg_state,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMattersResponse(response);
      })));
    });

    unittest.test("method--removePermissions", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildRemoveMatterPermissionsRequest();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveMatterPermissionsRequest.fromJson(json);
        checkRemoveMatterPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":removePermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":removePermissions"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePermissions(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--reopen", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildReopenMatterRequest();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReopenMatterRequest.fromJson(json);
        checkReopenMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":reopen", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":reopen"));
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
        var resp = convert.json.encode(buildReopenMatterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reopen(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReopenMatterResponse(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildUndeleteMatterRequest();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteMatterRequest.fromJson(json);
        checkUndeleteMatterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(":undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
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
        var resp = convert.json.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MattersResourceApi res = new api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Matter.fromJson(json);
        checkMatter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));

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
        var resp = convert.json.encode(buildMatter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response);
      })));
    });
  });

  unittest.group("resource-MattersExportsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersExportsResourceApi res =
          new api.VaultApi(mock).matters.exports;
      var arg_request = buildExport();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Export.fromJson(json);
        checkExport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/exports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/exports"));
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
        var resp = convert.json.encode(buildExport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExport(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersExportsResourceApi res =
          new api.VaultApi(mock).matters.exports;
      var arg_matterId = "foo";
      var arg_exportId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/exports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/exports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_exportId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_exportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersExportsResourceApi res =
          new api.VaultApi(mock).matters.exports;
      var arg_matterId = "foo";
      var arg_exportId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/exports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/exports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_exportId"));

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
        var resp = convert.json.encode(buildExport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_exportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExport(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersExportsResourceApi res =
          new api.VaultApi(mock).matters.exports;
      var arg_matterId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/exports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/exports"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListExportsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListExportsResponse(response);
      })));
    });
  });

  unittest.group("resource-MattersHoldsResourceApi", () {
    unittest.test("method--addHeldAccounts", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildAddHeldAccountsRequest();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddHeldAccountsRequest.fromJson(json);
        checkAddHeldAccountsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf(":addHeldAccounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":addHeldAccounts"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildAddHeldAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addHeldAccounts(arg_request, arg_matterId, arg_holdId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddHeldAccountsResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hold.fromJson(json);
        checkHold(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_holdId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_matterId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListHoldsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHoldsResponse(response);
      })));
    });

    unittest.test("method--removeHeldAccounts", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildRemoveHeldAccountsRequest();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveHeldAccountsRequest.fromJson(json);
        checkRemoveHeldAccountsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf(":removeHeldAccounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":removeHeldAccounts"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildRemoveHeldAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeHeldAccounts(arg_request, arg_matterId, arg_holdId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemoveHeldAccountsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MattersHoldsResourceApi res = new api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hold.fromJson(json);
        checkHold(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));

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
        var resp = convert.json.encode(buildHold());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response);
      })));
    });
  });

  unittest.group("resource-MattersHoldsAccountsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_request = buildHeldAccount();
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HeldAccount.fromJson(json);
        checkHeldAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
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
        var resp = convert.json.encode(buildHeldAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHeldAccount(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersHoldsAccountsResourceApi res =
          new api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = "foo";
      var arg_holdId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/holds/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf("/accounts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_holdId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
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
        var resp = convert.json.encode(buildListHeldAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHeldAccountsResponse(response);
      })));
    });
  });

  unittest.group("resource-MattersSavedQueriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.MattersSavedQueriesResourceApi res =
          new api.VaultApi(mock).matters.savedQueries;
      var arg_request = buildSavedQuery();
      var arg_matterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SavedQuery.fromJson(json);
        checkSavedQuery(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/savedQueries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/savedQueries"));
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
        var resp = convert.json.encode(buildSavedQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSavedQuery(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MattersSavedQueriesResourceApi res =
          new api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = "foo";
      var arg_savedQueryId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/savedQueries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/savedQueries/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_savedQueryId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_savedQueryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MattersSavedQueriesResourceApi res =
          new api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = "foo";
      var arg_savedQueryId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/savedQueries/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/savedQueries/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_savedQueryId"));

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
        var resp = convert.json.encode(buildSavedQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_savedQueryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSavedQuery(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MattersSavedQueriesResourceApi res =
          new api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf("/savedQueries", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_matterId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/savedQueries"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSavedQueriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSavedQueriesResponse(response);
      })));
    });
  });
}
