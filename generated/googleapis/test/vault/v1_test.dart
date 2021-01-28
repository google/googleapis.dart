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

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/vault/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
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

core.List<core.String> buildUnnamed4817() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4817(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountInfo = 0;
api.AccountInfo buildAccountInfo() {
  var o = api.AccountInfo();
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    o.emails = buildUnnamed4817();
  }
  buildCounterAccountInfo--;
  return o;
}

void checkAccountInfo(api.AccountInfo o) {
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    checkUnnamed4817(o.emails);
  }
  buildCounterAccountInfo--;
}

core.int buildCounterAddHeldAccountResult = 0;
api.AddHeldAccountResult buildAddHeldAccountResult() {
  var o = api.AddHeldAccountResult();
  buildCounterAddHeldAccountResult++;
  if (buildCounterAddHeldAccountResult < 3) {
    o.account = buildHeldAccount();
    o.status = buildStatus();
  }
  buildCounterAddHeldAccountResult--;
  return o;
}

void checkAddHeldAccountResult(api.AddHeldAccountResult o) {
  buildCounterAddHeldAccountResult++;
  if (buildCounterAddHeldAccountResult < 3) {
    checkHeldAccount(o.account as api.HeldAccount);
    checkStatus(o.status as api.Status);
  }
  buildCounterAddHeldAccountResult--;
}

core.List<core.String> buildUnnamed4818() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4819() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4819(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddHeldAccountsRequest = 0;
api.AddHeldAccountsRequest buildAddHeldAccountsRequest() {
  var o = api.AddHeldAccountsRequest();
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed4818();
    o.emails = buildUnnamed4819();
  }
  buildCounterAddHeldAccountsRequest--;
  return o;
}

void checkAddHeldAccountsRequest(api.AddHeldAccountsRequest o) {
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    checkUnnamed4818(o.accountIds);
    checkUnnamed4819(o.emails);
  }
  buildCounterAddHeldAccountsRequest--;
}

core.List<api.AddHeldAccountResult> buildUnnamed4820() {
  var o = <api.AddHeldAccountResult>[];
  o.add(buildAddHeldAccountResult());
  o.add(buildAddHeldAccountResult());
  return o;
}

void checkUnnamed4820(core.List<api.AddHeldAccountResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddHeldAccountResult(o[0] as api.AddHeldAccountResult);
  checkAddHeldAccountResult(o[1] as api.AddHeldAccountResult);
}

core.int buildCounterAddHeldAccountsResponse = 0;
api.AddHeldAccountsResponse buildAddHeldAccountsResponse() {
  var o = api.AddHeldAccountsResponse();
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    o.responses = buildUnnamed4820();
  }
  buildCounterAddHeldAccountsResponse--;
  return o;
}

void checkAddHeldAccountsResponse(api.AddHeldAccountsResponse o) {
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    checkUnnamed4820(o.responses);
  }
  buildCounterAddHeldAccountsResponse--;
}

core.int buildCounterAddMatterPermissionsRequest = 0;
api.AddMatterPermissionsRequest buildAddMatterPermissionsRequest() {
  var o = api.AddMatterPermissionsRequest();
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    o.ccMe = true;
    o.matterPermission = buildMatterPermission();
    o.sendEmails = true;
  }
  buildCounterAddMatterPermissionsRequest--;
  return o;
}

void checkAddMatterPermissionsRequest(api.AddMatterPermissionsRequest o) {
  buildCounterAddMatterPermissionsRequest++;
  if (buildCounterAddMatterPermissionsRequest < 3) {
    unittest.expect(o.ccMe, unittest.isTrue);
    checkMatterPermission(o.matterPermission as api.MatterPermission);
    unittest.expect(o.sendEmails, unittest.isTrue);
  }
  buildCounterAddMatterPermissionsRequest--;
}

core.int buildCounterCloseMatterRequest = 0;
api.CloseMatterRequest buildCloseMatterRequest() {
  var o = api.CloseMatterRequest();
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
  return o;
}

void checkCloseMatterRequest(api.CloseMatterRequest o) {
  buildCounterCloseMatterRequest++;
  if (buildCounterCloseMatterRequest < 3) {}
  buildCounterCloseMatterRequest--;
}

core.int buildCounterCloseMatterResponse = 0;
api.CloseMatterResponse buildCloseMatterResponse() {
  var o = api.CloseMatterResponse();
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterCloseMatterResponse--;
  return o;
}

void checkCloseMatterResponse(api.CloseMatterResponse o) {
  buildCounterCloseMatterResponse++;
  if (buildCounterCloseMatterResponse < 3) {
    checkMatter(o.matter as api.Matter);
  }
  buildCounterCloseMatterResponse--;
}

core.int buildCounterCloudStorageFile = 0;
api.CloudStorageFile buildCloudStorageFile() {
  var o = api.CloudStorageFile();
  buildCounterCloudStorageFile++;
  if (buildCounterCloudStorageFile < 3) {
    o.bucketName = 'foo';
    o.md5Hash = 'foo';
    o.objectName = 'foo';
    o.size = 'foo';
  }
  buildCounterCloudStorageFile--;
  return o;
}

void checkCloudStorageFile(api.CloudStorageFile o) {
  buildCounterCloudStorageFile++;
  if (buildCounterCloudStorageFile < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.objectName, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterCloudStorageFile--;
}

core.List<api.CloudStorageFile> buildUnnamed4821() {
  var o = <api.CloudStorageFile>[];
  o.add(buildCloudStorageFile());
  o.add(buildCloudStorageFile());
  return o;
}

void checkUnnamed4821(core.List<api.CloudStorageFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudStorageFile(o[0] as api.CloudStorageFile);
  checkCloudStorageFile(o[1] as api.CloudStorageFile);
}

core.int buildCounterCloudStorageSink = 0;
api.CloudStorageSink buildCloudStorageSink() {
  var o = api.CloudStorageSink();
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    o.files = buildUnnamed4821();
  }
  buildCounterCloudStorageSink--;
  return o;
}

void checkCloudStorageSink(api.CloudStorageSink o) {
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    checkUnnamed4821(o.files);
  }
  buildCounterCloudStorageSink--;
}

core.int buildCounterCorpusQuery = 0;
api.CorpusQuery buildCorpusQuery() {
  var o = api.CorpusQuery();
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

void checkCorpusQuery(api.CorpusQuery o) {
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    checkHeldDriveQuery(o.driveQuery as api.HeldDriveQuery);
    checkHeldGroupsQuery(o.groupsQuery as api.HeldGroupsQuery);
    checkHeldHangoutsChatQuery(
        o.hangoutsChatQuery as api.HeldHangoutsChatQuery);
    checkHeldMailQuery(o.mailQuery as api.HeldMailQuery);
  }
  buildCounterCorpusQuery--;
}

core.int buildCounterDriveExportOptions = 0;
api.DriveExportOptions buildDriveExportOptions() {
  var o = api.DriveExportOptions();
  buildCounterDriveExportOptions++;
  if (buildCounterDriveExportOptions < 3) {
    o.includeAccessInfo = true;
  }
  buildCounterDriveExportOptions--;
  return o;
}

void checkDriveExportOptions(api.DriveExportOptions o) {
  buildCounterDriveExportOptions++;
  if (buildCounterDriveExportOptions < 3) {
    unittest.expect(o.includeAccessInfo, unittest.isTrue);
  }
  buildCounterDriveExportOptions--;
}

core.int buildCounterDriveOptions = 0;
api.DriveOptions buildDriveOptions() {
  var o = api.DriveOptions();
  buildCounterDriveOptions++;
  if (buildCounterDriveOptions < 3) {
    o.includeSharedDrives = true;
    o.includeTeamDrives = true;
    o.versionDate = 'foo';
  }
  buildCounterDriveOptions--;
  return o;
}

void checkDriveOptions(api.DriveOptions o) {
  buildCounterDriveOptions++;
  if (buildCounterDriveOptions < 3) {
    unittest.expect(o.includeSharedDrives, unittest.isTrue);
    unittest.expect(o.includeTeamDrives, unittest.isTrue);
    unittest.expect(o.versionDate, unittest.equals('foo'));
  }
  buildCounterDriveOptions--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.int buildCounterExport = 0;
api.Export buildExport() {
  var o = api.Export();
  buildCounterExport++;
  if (buildCounterExport < 3) {
    o.cloudStorageSink = buildCloudStorageSink();
    o.createTime = 'foo';
    o.exportOptions = buildExportOptions();
    o.id = 'foo';
    o.matterId = 'foo';
    o.name = 'foo';
    o.query = buildQuery();
    o.requester = buildUserInfo();
    o.stats = buildExportStats();
    o.status = 'foo';
  }
  buildCounterExport--;
  return o;
}

void checkExport(api.Export o) {
  buildCounterExport++;
  if (buildCounterExport < 3) {
    checkCloudStorageSink(o.cloudStorageSink as api.CloudStorageSink);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkExportOptions(o.exportOptions as api.ExportOptions);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkQuery(o.query as api.Query);
    checkUserInfo(o.requester as api.UserInfo);
    checkExportStats(o.stats as api.ExportStats);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterExport--;
}

core.int buildCounterExportOptions = 0;
api.ExportOptions buildExportOptions() {
  var o = api.ExportOptions();
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    o.driveOptions = buildDriveExportOptions();
    o.groupsOptions = buildGroupsExportOptions();
    o.hangoutsChatOptions = buildHangoutsChatExportOptions();
    o.mailOptions = buildMailExportOptions();
    o.region = 'foo';
  }
  buildCounterExportOptions--;
  return o;
}

void checkExportOptions(api.ExportOptions o) {
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    checkDriveExportOptions(o.driveOptions as api.DriveExportOptions);
    checkGroupsExportOptions(o.groupsOptions as api.GroupsExportOptions);
    checkHangoutsChatExportOptions(
        o.hangoutsChatOptions as api.HangoutsChatExportOptions);
    checkMailExportOptions(o.mailOptions as api.MailExportOptions);
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterExportOptions--;
}

core.int buildCounterExportStats = 0;
api.ExportStats buildExportStats() {
  var o = api.ExportStats();
  buildCounterExportStats++;
  if (buildCounterExportStats < 3) {
    o.exportedArtifactCount = 'foo';
    o.sizeInBytes = 'foo';
    o.totalArtifactCount = 'foo';
  }
  buildCounterExportStats--;
  return o;
}

void checkExportStats(api.ExportStats o) {
  buildCounterExportStats++;
  if (buildCounterExportStats < 3) {
    unittest.expect(o.exportedArtifactCount, unittest.equals('foo'));
    unittest.expect(o.sizeInBytes, unittest.equals('foo'));
    unittest.expect(o.totalArtifactCount, unittest.equals('foo'));
  }
  buildCounterExportStats--;
}

core.int buildCounterGroupsExportOptions = 0;
api.GroupsExportOptions buildGroupsExportOptions() {
  var o = api.GroupsExportOptions();
  buildCounterGroupsExportOptions++;
  if (buildCounterGroupsExportOptions < 3) {
    o.exportFormat = 'foo';
  }
  buildCounterGroupsExportOptions--;
  return o;
}

void checkGroupsExportOptions(api.GroupsExportOptions o) {
  buildCounterGroupsExportOptions++;
  if (buildCounterGroupsExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
  }
  buildCounterGroupsExportOptions--;
}

core.int buildCounterHangoutsChatExportOptions = 0;
api.HangoutsChatExportOptions buildHangoutsChatExportOptions() {
  var o = api.HangoutsChatExportOptions();
  buildCounterHangoutsChatExportOptions++;
  if (buildCounterHangoutsChatExportOptions < 3) {
    o.exportFormat = 'foo';
  }
  buildCounterHangoutsChatExportOptions--;
  return o;
}

void checkHangoutsChatExportOptions(api.HangoutsChatExportOptions o) {
  buildCounterHangoutsChatExportOptions++;
  if (buildCounterHangoutsChatExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
  }
  buildCounterHangoutsChatExportOptions--;
}

core.List<core.String> buildUnnamed4822() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4822(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHangoutsChatInfo = 0;
api.HangoutsChatInfo buildHangoutsChatInfo() {
  var o = api.HangoutsChatInfo();
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    o.roomId = buildUnnamed4822();
  }
  buildCounterHangoutsChatInfo--;
  return o;
}

void checkHangoutsChatInfo(api.HangoutsChatInfo o) {
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    checkUnnamed4822(o.roomId);
  }
  buildCounterHangoutsChatInfo--;
}

core.int buildCounterHangoutsChatOptions = 0;
api.HangoutsChatOptions buildHangoutsChatOptions() {
  var o = api.HangoutsChatOptions();
  buildCounterHangoutsChatOptions++;
  if (buildCounterHangoutsChatOptions < 3) {
    o.includeRooms = true;
  }
  buildCounterHangoutsChatOptions--;
  return o;
}

void checkHangoutsChatOptions(api.HangoutsChatOptions o) {
  buildCounterHangoutsChatOptions++;
  if (buildCounterHangoutsChatOptions < 3) {
    unittest.expect(o.includeRooms, unittest.isTrue);
  }
  buildCounterHangoutsChatOptions--;
}

core.int buildCounterHeldAccount = 0;
api.HeldAccount buildHeldAccount() {
  var o = api.HeldAccount();
  buildCounterHeldAccount++;
  if (buildCounterHeldAccount < 3) {
    o.accountId = 'foo';
    o.email = 'foo';
    o.firstName = 'foo';
    o.holdTime = 'foo';
    o.lastName = 'foo';
  }
  buildCounterHeldAccount--;
  return o;
}

void checkHeldAccount(api.HeldAccount o) {
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
api.HeldDriveQuery buildHeldDriveQuery() {
  var o = api.HeldDriveQuery();
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    o.includeSharedDriveFiles = true;
    o.includeTeamDriveFiles = true;
  }
  buildCounterHeldDriveQuery--;
  return o;
}

void checkHeldDriveQuery(api.HeldDriveQuery o) {
  buildCounterHeldDriveQuery++;
  if (buildCounterHeldDriveQuery < 3) {
    unittest.expect(o.includeSharedDriveFiles, unittest.isTrue);
    unittest.expect(o.includeTeamDriveFiles, unittest.isTrue);
  }
  buildCounterHeldDriveQuery--;
}

core.int buildCounterHeldGroupsQuery = 0;
api.HeldGroupsQuery buildHeldGroupsQuery() {
  var o = api.HeldGroupsQuery();
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.terms = 'foo';
  }
  buildCounterHeldGroupsQuery--;
  return o;
}

void checkHeldGroupsQuery(api.HeldGroupsQuery o) {
  buildCounterHeldGroupsQuery++;
  if (buildCounterHeldGroupsQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldGroupsQuery--;
}

core.int buildCounterHeldHangoutsChatQuery = 0;
api.HeldHangoutsChatQuery buildHeldHangoutsChatQuery() {
  var o = api.HeldHangoutsChatQuery();
  buildCounterHeldHangoutsChatQuery++;
  if (buildCounterHeldHangoutsChatQuery < 3) {
    o.includeRooms = true;
  }
  buildCounterHeldHangoutsChatQuery--;
  return o;
}

void checkHeldHangoutsChatQuery(api.HeldHangoutsChatQuery o) {
  buildCounterHeldHangoutsChatQuery++;
  if (buildCounterHeldHangoutsChatQuery < 3) {
    unittest.expect(o.includeRooms, unittest.isTrue);
  }
  buildCounterHeldHangoutsChatQuery--;
}

core.int buildCounterHeldMailQuery = 0;
api.HeldMailQuery buildHeldMailQuery() {
  var o = api.HeldMailQuery();
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.terms = 'foo';
  }
  buildCounterHeldMailQuery--;
  return o;
}

void checkHeldMailQuery(api.HeldMailQuery o) {
  buildCounterHeldMailQuery++;
  if (buildCounterHeldMailQuery < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterHeldMailQuery--;
}

core.int buildCounterHeldOrgUnit = 0;
api.HeldOrgUnit buildHeldOrgUnit() {
  var o = api.HeldOrgUnit();
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    o.holdTime = 'foo';
    o.orgUnitId = 'foo';
  }
  buildCounterHeldOrgUnit--;
  return o;
}

void checkHeldOrgUnit(api.HeldOrgUnit o) {
  buildCounterHeldOrgUnit++;
  if (buildCounterHeldOrgUnit < 3) {
    unittest.expect(o.holdTime, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
  }
  buildCounterHeldOrgUnit--;
}

core.List<api.HeldAccount> buildUnnamed4823() {
  var o = <api.HeldAccount>[];
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

void checkUnnamed4823(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0] as api.HeldAccount);
  checkHeldAccount(o[1] as api.HeldAccount);
}

core.int buildCounterHold = 0;
api.Hold buildHold() {
  var o = api.Hold();
  buildCounterHold++;
  if (buildCounterHold < 3) {
    o.accounts = buildUnnamed4823();
    o.corpus = 'foo';
    o.holdId = 'foo';
    o.name = 'foo';
    o.orgUnit = buildHeldOrgUnit();
    o.query = buildCorpusQuery();
    o.updateTime = 'foo';
  }
  buildCounterHold--;
  return o;
}

void checkHold(api.Hold o) {
  buildCounterHold++;
  if (buildCounterHold < 3) {
    checkUnnamed4823(o.accounts);
    unittest.expect(o.corpus, unittest.equals('foo'));
    unittest.expect(o.holdId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeldOrgUnit(o.orgUnit as api.HeldOrgUnit);
    checkCorpusQuery(o.query as api.CorpusQuery);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterHold--;
}

core.List<api.Export> buildUnnamed4824() {
  var o = <api.Export>[];
  o.add(buildExport());
  o.add(buildExport());
  return o;
}

void checkUnnamed4824(core.List<api.Export> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExport(o[0] as api.Export);
  checkExport(o[1] as api.Export);
}

core.int buildCounterListExportsResponse = 0;
api.ListExportsResponse buildListExportsResponse() {
  var o = api.ListExportsResponse();
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    o.exports = buildUnnamed4824();
    o.nextPageToken = 'foo';
  }
  buildCounterListExportsResponse--;
  return o;
}

void checkListExportsResponse(api.ListExportsResponse o) {
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    checkUnnamed4824(o.exports);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListExportsResponse--;
}

core.List<api.HeldAccount> buildUnnamed4825() {
  var o = <api.HeldAccount>[];
  o.add(buildHeldAccount());
  o.add(buildHeldAccount());
  return o;
}

void checkUnnamed4825(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0] as api.HeldAccount);
  checkHeldAccount(o[1] as api.HeldAccount);
}

core.int buildCounterListHeldAccountsResponse = 0;
api.ListHeldAccountsResponse buildListHeldAccountsResponse() {
  var o = api.ListHeldAccountsResponse();
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    o.accounts = buildUnnamed4825();
  }
  buildCounterListHeldAccountsResponse--;
  return o;
}

void checkListHeldAccountsResponse(api.ListHeldAccountsResponse o) {
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    checkUnnamed4825(o.accounts);
  }
  buildCounterListHeldAccountsResponse--;
}

core.List<api.Hold> buildUnnamed4826() {
  var o = <api.Hold>[];
  o.add(buildHold());
  o.add(buildHold());
  return o;
}

void checkUnnamed4826(core.List<api.Hold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHold(o[0] as api.Hold);
  checkHold(o[1] as api.Hold);
}

core.int buildCounterListHoldsResponse = 0;
api.ListHoldsResponse buildListHoldsResponse() {
  var o = api.ListHoldsResponse();
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    o.holds = buildUnnamed4826();
    o.nextPageToken = 'foo';
  }
  buildCounterListHoldsResponse--;
  return o;
}

void checkListHoldsResponse(api.ListHoldsResponse o) {
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    checkUnnamed4826(o.holds);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHoldsResponse--;
}

core.List<api.Matter> buildUnnamed4827() {
  var o = <api.Matter>[];
  o.add(buildMatter());
  o.add(buildMatter());
  return o;
}

void checkUnnamed4827(core.List<api.Matter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatter(o[0] as api.Matter);
  checkMatter(o[1] as api.Matter);
}

core.int buildCounterListMattersResponse = 0;
api.ListMattersResponse buildListMattersResponse() {
  var o = api.ListMattersResponse();
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    o.matters = buildUnnamed4827();
    o.nextPageToken = 'foo';
  }
  buildCounterListMattersResponse--;
  return o;
}

void checkListMattersResponse(api.ListMattersResponse o) {
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    checkUnnamed4827(o.matters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMattersResponse--;
}

core.List<api.SavedQuery> buildUnnamed4828() {
  var o = <api.SavedQuery>[];
  o.add(buildSavedQuery());
  o.add(buildSavedQuery());
  return o;
}

void checkUnnamed4828(core.List<api.SavedQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedQuery(o[0] as api.SavedQuery);
  checkSavedQuery(o[1] as api.SavedQuery);
}

core.int buildCounterListSavedQueriesResponse = 0;
api.ListSavedQueriesResponse buildListSavedQueriesResponse() {
  var o = api.ListSavedQueriesResponse();
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.savedQueries = buildUnnamed4828();
  }
  buildCounterListSavedQueriesResponse--;
  return o;
}

void checkListSavedQueriesResponse(api.ListSavedQueriesResponse o) {
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4828(o.savedQueries);
  }
  buildCounterListSavedQueriesResponse--;
}

core.int buildCounterMailExportOptions = 0;
api.MailExportOptions buildMailExportOptions() {
  var o = api.MailExportOptions();
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    o.exportFormat = 'foo';
    o.showConfidentialModeContent = true;
  }
  buildCounterMailExportOptions--;
  return o;
}

void checkMailExportOptions(api.MailExportOptions o) {
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    unittest.expect(o.exportFormat, unittest.equals('foo'));
    unittest.expect(o.showConfidentialModeContent, unittest.isTrue);
  }
  buildCounterMailExportOptions--;
}

core.int buildCounterMailOptions = 0;
api.MailOptions buildMailOptions() {
  var o = api.MailOptions();
  buildCounterMailOptions++;
  if (buildCounterMailOptions < 3) {
    o.excludeDrafts = true;
  }
  buildCounterMailOptions--;
  return o;
}

void checkMailOptions(api.MailOptions o) {
  buildCounterMailOptions++;
  if (buildCounterMailOptions < 3) {
    unittest.expect(o.excludeDrafts, unittest.isTrue);
  }
  buildCounterMailOptions--;
}

core.List<api.MatterPermission> buildUnnamed4829() {
  var o = <api.MatterPermission>[];
  o.add(buildMatterPermission());
  o.add(buildMatterPermission());
  return o;
}

void checkUnnamed4829(core.List<api.MatterPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatterPermission(o[0] as api.MatterPermission);
  checkMatterPermission(o[1] as api.MatterPermission);
}

core.int buildCounterMatter = 0;
api.Matter buildMatter() {
  var o = api.Matter();
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    o.description = 'foo';
    o.matterId = 'foo';
    o.matterPermissions = buildUnnamed4829();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterMatter--;
  return o;
}

void checkMatter(api.Matter o) {
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    checkUnnamed4829(o.matterPermissions);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMatter--;
}

core.int buildCounterMatterPermission = 0;
api.MatterPermission buildMatterPermission() {
  var o = api.MatterPermission();
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    o.accountId = 'foo';
    o.role = 'foo';
  }
  buildCounterMatterPermission--;
  return o;
}

void checkMatterPermission(api.MatterPermission o) {
  buildCounterMatterPermission++;
  if (buildCounterMatterPermission < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterMatterPermission--;
}

core.int buildCounterOrgUnitInfo = 0;
api.OrgUnitInfo buildOrgUnitInfo() {
  var o = api.OrgUnitInfo();
  buildCounterOrgUnitInfo++;
  if (buildCounterOrgUnitInfo < 3) {
    o.orgUnitId = 'foo';
  }
  buildCounterOrgUnitInfo--;
  return o;
}

void checkOrgUnitInfo(api.OrgUnitInfo o) {
  buildCounterOrgUnitInfo++;
  if (buildCounterOrgUnitInfo < 3) {
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
  }
  buildCounterOrgUnitInfo--;
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  var o = api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.accountInfo = buildAccountInfo();
    o.corpus = 'foo';
    o.dataScope = 'foo';
    o.driveOptions = buildDriveOptions();
    o.endTime = 'foo';
    o.hangoutsChatInfo = buildHangoutsChatInfo();
    o.hangoutsChatOptions = buildHangoutsChatOptions();
    o.mailOptions = buildMailOptions();
    o.method = 'foo';
    o.orgUnitInfo = buildOrgUnitInfo();
    o.searchMethod = 'foo';
    o.sharedDriveInfo = buildSharedDriveInfo();
    o.startTime = 'foo';
    o.teamDriveInfo = buildTeamDriveInfo();
    o.terms = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkAccountInfo(o.accountInfo as api.AccountInfo);
    unittest.expect(o.corpus, unittest.equals('foo'));
    unittest.expect(o.dataScope, unittest.equals('foo'));
    checkDriveOptions(o.driveOptions as api.DriveOptions);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkHangoutsChatInfo(o.hangoutsChatInfo as api.HangoutsChatInfo);
    checkHangoutsChatOptions(o.hangoutsChatOptions as api.HangoutsChatOptions);
    checkMailOptions(o.mailOptions as api.MailOptions);
    unittest.expect(o.method, unittest.equals('foo'));
    checkOrgUnitInfo(o.orgUnitInfo as api.OrgUnitInfo);
    unittest.expect(o.searchMethod, unittest.equals('foo'));
    checkSharedDriveInfo(o.sharedDriveInfo as api.SharedDriveInfo);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkTeamDriveInfo(o.teamDriveInfo as api.TeamDriveInfo);
    unittest.expect(o.terms, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

core.List<core.String> buildUnnamed4830() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4830(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemoveHeldAccountsRequest = 0;
api.RemoveHeldAccountsRequest buildRemoveHeldAccountsRequest() {
  var o = api.RemoveHeldAccountsRequest();
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed4830();
  }
  buildCounterRemoveHeldAccountsRequest--;
  return o;
}

void checkRemoveHeldAccountsRequest(api.RemoveHeldAccountsRequest o) {
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    checkUnnamed4830(o.accountIds);
  }
  buildCounterRemoveHeldAccountsRequest--;
}

core.List<api.Status> buildUnnamed4831() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed4831(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0] as api.Status);
  checkStatus(o[1] as api.Status);
}

core.int buildCounterRemoveHeldAccountsResponse = 0;
api.RemoveHeldAccountsResponse buildRemoveHeldAccountsResponse() {
  var o = api.RemoveHeldAccountsResponse();
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    o.statuses = buildUnnamed4831();
  }
  buildCounterRemoveHeldAccountsResponse--;
  return o;
}

void checkRemoveHeldAccountsResponse(api.RemoveHeldAccountsResponse o) {
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    checkUnnamed4831(o.statuses);
  }
  buildCounterRemoveHeldAccountsResponse--;
}

core.int buildCounterRemoveMatterPermissionsRequest = 0;
api.RemoveMatterPermissionsRequest buildRemoveMatterPermissionsRequest() {
  var o = api.RemoveMatterPermissionsRequest();
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    o.accountId = 'foo';
  }
  buildCounterRemoveMatterPermissionsRequest--;
  return o;
}

void checkRemoveMatterPermissionsRequest(api.RemoveMatterPermissionsRequest o) {
  buildCounterRemoveMatterPermissionsRequest++;
  if (buildCounterRemoveMatterPermissionsRequest < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterRemoveMatterPermissionsRequest--;
}

core.int buildCounterReopenMatterRequest = 0;
api.ReopenMatterRequest buildReopenMatterRequest() {
  var o = api.ReopenMatterRequest();
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
  return o;
}

void checkReopenMatterRequest(api.ReopenMatterRequest o) {
  buildCounterReopenMatterRequest++;
  if (buildCounterReopenMatterRequest < 3) {}
  buildCounterReopenMatterRequest--;
}

core.int buildCounterReopenMatterResponse = 0;
api.ReopenMatterResponse buildReopenMatterResponse() {
  var o = api.ReopenMatterResponse();
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    o.matter = buildMatter();
  }
  buildCounterReopenMatterResponse--;
  return o;
}

void checkReopenMatterResponse(api.ReopenMatterResponse o) {
  buildCounterReopenMatterResponse++;
  if (buildCounterReopenMatterResponse < 3) {
    checkMatter(o.matter as api.Matter);
  }
  buildCounterReopenMatterResponse--;
}

core.int buildCounterSavedQuery = 0;
api.SavedQuery buildSavedQuery() {
  var o = api.SavedQuery();
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.matterId = 'foo';
    o.query = buildQuery();
    o.savedQueryId = 'foo';
  }
  buildCounterSavedQuery--;
  return o;
}

void checkSavedQuery(api.SavedQuery o) {
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.matterId, unittest.equals('foo'));
    checkQuery(o.query as api.Query);
    unittest.expect(o.savedQueryId, unittest.equals('foo'));
  }
  buildCounterSavedQuery--;
}

core.List<core.String> buildUnnamed4832() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4832(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSharedDriveInfo = 0;
api.SharedDriveInfo buildSharedDriveInfo() {
  var o = api.SharedDriveInfo();
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    o.sharedDriveIds = buildUnnamed4832();
  }
  buildCounterSharedDriveInfo--;
  return o;
}

void checkSharedDriveInfo(api.SharedDriveInfo o) {
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    checkUnnamed4832(o.sharedDriveIds);
  }
  buildCounterSharedDriveInfo--;
}

core.Map<core.String, core.Object> buildUnnamed4833() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed4833(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed4834() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4833());
  o.add(buildUnnamed4833());
  return o;
}

void checkUnnamed4834(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4833(o[0]);
  checkUnnamed4833(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4834();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4834(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed4835() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4835(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTeamDriveInfo = 0;
api.TeamDriveInfo buildTeamDriveInfo() {
  var o = api.TeamDriveInfo();
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    o.teamDriveIds = buildUnnamed4835();
  }
  buildCounterTeamDriveInfo--;
  return o;
}

void checkTeamDriveInfo(api.TeamDriveInfo o) {
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    checkUnnamed4835(o.teamDriveIds);
  }
  buildCounterTeamDriveInfo--;
}

core.int buildCounterUndeleteMatterRequest = 0;
api.UndeleteMatterRequest buildUndeleteMatterRequest() {
  var o = api.UndeleteMatterRequest();
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
  return o;
}

void checkUndeleteMatterRequest(api.UndeleteMatterRequest o) {
  buildCounterUndeleteMatterRequest++;
  if (buildCounterUndeleteMatterRequest < 3) {}
  buildCounterUndeleteMatterRequest--;
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  var o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterUserInfo--;
}

void main() {
  unittest.group('obj-schema-AccountInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountInfo();
      var od = api.AccountInfo.fromJson(o.toJson());
      checkAccountInfo(od as api.AccountInfo);
    });
  });

  unittest.group('obj-schema-AddHeldAccountResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddHeldAccountResult();
      var od = api.AddHeldAccountResult.fromJson(o.toJson());
      checkAddHeldAccountResult(od as api.AddHeldAccountResult);
    });
  });

  unittest.group('obj-schema-AddHeldAccountsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddHeldAccountsRequest();
      var od = api.AddHeldAccountsRequest.fromJson(o.toJson());
      checkAddHeldAccountsRequest(od as api.AddHeldAccountsRequest);
    });
  });

  unittest.group('obj-schema-AddHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddHeldAccountsResponse();
      var od = api.AddHeldAccountsResponse.fromJson(o.toJson());
      checkAddHeldAccountsResponse(od as api.AddHeldAccountsResponse);
    });
  });

  unittest.group('obj-schema-AddMatterPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddMatterPermissionsRequest();
      var od = api.AddMatterPermissionsRequest.fromJson(o.toJson());
      checkAddMatterPermissionsRequest(od as api.AddMatterPermissionsRequest);
    });
  });

  unittest.group('obj-schema-CloseMatterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloseMatterRequest();
      var od = api.CloseMatterRequest.fromJson(o.toJson());
      checkCloseMatterRequest(od as api.CloseMatterRequest);
    });
  });

  unittest.group('obj-schema-CloseMatterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloseMatterResponse();
      var od = api.CloseMatterResponse.fromJson(o.toJson());
      checkCloseMatterResponse(od as api.CloseMatterResponse);
    });
  });

  unittest.group('obj-schema-CloudStorageFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudStorageFile();
      var od = api.CloudStorageFile.fromJson(o.toJson());
      checkCloudStorageFile(od as api.CloudStorageFile);
    });
  });

  unittest.group('obj-schema-CloudStorageSink', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudStorageSink();
      var od = api.CloudStorageSink.fromJson(o.toJson());
      checkCloudStorageSink(od as api.CloudStorageSink);
    });
  });

  unittest.group('obj-schema-CorpusQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildCorpusQuery();
      var od = api.CorpusQuery.fromJson(o.toJson());
      checkCorpusQuery(od as api.CorpusQuery);
    });
  });

  unittest.group('obj-schema-DriveExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveExportOptions();
      var od = api.DriveExportOptions.fromJson(o.toJson());
      checkDriveExportOptions(od as api.DriveExportOptions);
    });
  });

  unittest.group('obj-schema-DriveOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveOptions();
      var od = api.DriveOptions.fromJson(o.toJson());
      checkDriveOptions(od as api.DriveOptions);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Export', () {
    unittest.test('to-json--from-json', () {
      var o = buildExport();
      var od = api.Export.fromJson(o.toJson());
      checkExport(od as api.Export);
    });
  });

  unittest.group('obj-schema-ExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildExportOptions();
      var od = api.ExportOptions.fromJson(o.toJson());
      checkExportOptions(od as api.ExportOptions);
    });
  });

  unittest.group('obj-schema-ExportStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildExportStats();
      var od = api.ExportStats.fromJson(o.toJson());
      checkExportStats(od as api.ExportStats);
    });
  });

  unittest.group('obj-schema-GroupsExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupsExportOptions();
      var od = api.GroupsExportOptions.fromJson(o.toJson());
      checkGroupsExportOptions(od as api.GroupsExportOptions);
    });
  });

  unittest.group('obj-schema-HangoutsChatExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildHangoutsChatExportOptions();
      var od = api.HangoutsChatExportOptions.fromJson(o.toJson());
      checkHangoutsChatExportOptions(od as api.HangoutsChatExportOptions);
    });
  });

  unittest.group('obj-schema-HangoutsChatInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildHangoutsChatInfo();
      var od = api.HangoutsChatInfo.fromJson(o.toJson());
      checkHangoutsChatInfo(od as api.HangoutsChatInfo);
    });
  });

  unittest.group('obj-schema-HangoutsChatOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildHangoutsChatOptions();
      var od = api.HangoutsChatOptions.fromJson(o.toJson());
      checkHangoutsChatOptions(od as api.HangoutsChatOptions);
    });
  });

  unittest.group('obj-schema-HeldAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldAccount();
      var od = api.HeldAccount.fromJson(o.toJson());
      checkHeldAccount(od as api.HeldAccount);
    });
  });

  unittest.group('obj-schema-HeldDriveQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldDriveQuery();
      var od = api.HeldDriveQuery.fromJson(o.toJson());
      checkHeldDriveQuery(od as api.HeldDriveQuery);
    });
  });

  unittest.group('obj-schema-HeldGroupsQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldGroupsQuery();
      var od = api.HeldGroupsQuery.fromJson(o.toJson());
      checkHeldGroupsQuery(od as api.HeldGroupsQuery);
    });
  });

  unittest.group('obj-schema-HeldHangoutsChatQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldHangoutsChatQuery();
      var od = api.HeldHangoutsChatQuery.fromJson(o.toJson());
      checkHeldHangoutsChatQuery(od as api.HeldHangoutsChatQuery);
    });
  });

  unittest.group('obj-schema-HeldMailQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldMailQuery();
      var od = api.HeldMailQuery.fromJson(o.toJson());
      checkHeldMailQuery(od as api.HeldMailQuery);
    });
  });

  unittest.group('obj-schema-HeldOrgUnit', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeldOrgUnit();
      var od = api.HeldOrgUnit.fromJson(o.toJson());
      checkHeldOrgUnit(od as api.HeldOrgUnit);
    });
  });

  unittest.group('obj-schema-Hold', () {
    unittest.test('to-json--from-json', () {
      var o = buildHold();
      var od = api.Hold.fromJson(o.toJson());
      checkHold(od as api.Hold);
    });
  });

  unittest.group('obj-schema-ListExportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListExportsResponse();
      var od = api.ListExportsResponse.fromJson(o.toJson());
      checkListExportsResponse(od as api.ListExportsResponse);
    });
  });

  unittest.group('obj-schema-ListHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListHeldAccountsResponse();
      var od = api.ListHeldAccountsResponse.fromJson(o.toJson());
      checkListHeldAccountsResponse(od as api.ListHeldAccountsResponse);
    });
  });

  unittest.group('obj-schema-ListHoldsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListHoldsResponse();
      var od = api.ListHoldsResponse.fromJson(o.toJson());
      checkListHoldsResponse(od as api.ListHoldsResponse);
    });
  });

  unittest.group('obj-schema-ListMattersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMattersResponse();
      var od = api.ListMattersResponse.fromJson(o.toJson());
      checkListMattersResponse(od as api.ListMattersResponse);
    });
  });

  unittest.group('obj-schema-ListSavedQueriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSavedQueriesResponse();
      var od = api.ListSavedQueriesResponse.fromJson(o.toJson());
      checkListSavedQueriesResponse(od as api.ListSavedQueriesResponse);
    });
  });

  unittest.group('obj-schema-MailExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildMailExportOptions();
      var od = api.MailExportOptions.fromJson(o.toJson());
      checkMailExportOptions(od as api.MailExportOptions);
    });
  });

  unittest.group('obj-schema-MailOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildMailOptions();
      var od = api.MailOptions.fromJson(o.toJson());
      checkMailOptions(od as api.MailOptions);
    });
  });

  unittest.group('obj-schema-Matter', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatter();
      var od = api.Matter.fromJson(o.toJson());
      checkMatter(od as api.Matter);
    });
  });

  unittest.group('obj-schema-MatterPermission', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatterPermission();
      var od = api.MatterPermission.fromJson(o.toJson());
      checkMatterPermission(od as api.MatterPermission);
    });
  });

  unittest.group('obj-schema-OrgUnitInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrgUnitInfo();
      var od = api.OrgUnitInfo.fromJson(o.toJson());
      checkOrgUnitInfo(od as api.OrgUnitInfo);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuery();
      var od = api.Query.fromJson(o.toJson());
      checkQuery(od as api.Query);
    });
  });

  unittest.group('obj-schema-RemoveHeldAccountsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveHeldAccountsRequest();
      var od = api.RemoveHeldAccountsRequest.fromJson(o.toJson());
      checkRemoveHeldAccountsRequest(od as api.RemoveHeldAccountsRequest);
    });
  });

  unittest.group('obj-schema-RemoveHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveHeldAccountsResponse();
      var od = api.RemoveHeldAccountsResponse.fromJson(o.toJson());
      checkRemoveHeldAccountsResponse(od as api.RemoveHeldAccountsResponse);
    });
  });

  unittest.group('obj-schema-RemoveMatterPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveMatterPermissionsRequest();
      var od = api.RemoveMatterPermissionsRequest.fromJson(o.toJson());
      checkRemoveMatterPermissionsRequest(
          od as api.RemoveMatterPermissionsRequest);
    });
  });

  unittest.group('obj-schema-ReopenMatterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReopenMatterRequest();
      var od = api.ReopenMatterRequest.fromJson(o.toJson());
      checkReopenMatterRequest(od as api.ReopenMatterRequest);
    });
  });

  unittest.group('obj-schema-ReopenMatterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReopenMatterResponse();
      var od = api.ReopenMatterResponse.fromJson(o.toJson());
      checkReopenMatterResponse(od as api.ReopenMatterResponse);
    });
  });

  unittest.group('obj-schema-SavedQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildSavedQuery();
      var od = api.SavedQuery.fromJson(o.toJson());
      checkSavedQuery(od as api.SavedQuery);
    });
  });

  unittest.group('obj-schema-SharedDriveInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSharedDriveInfo();
      var od = api.SharedDriveInfo.fromJson(o.toJson());
      checkSharedDriveInfo(od as api.SharedDriveInfo);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TeamDriveInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildTeamDriveInfo();
      var od = api.TeamDriveInfo.fromJson(o.toJson());
      checkTeamDriveInfo(od as api.TeamDriveInfo);
    });
  });

  unittest.group('obj-schema-UndeleteMatterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUndeleteMatterRequest();
      var od = api.UndeleteMatterRequest.fromJson(o.toJson());
      checkUndeleteMatterRequest(od as api.UndeleteMatterRequest);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInfo();
      var od = api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od as api.UserInfo);
    });
  });

  unittest.group('resource-MattersResourceApi', () {
    unittest.test('method--addPermissions', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildAddMatterPermissionsRequest();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddMatterPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddMatterPermissionsRequest(
            obj as api.AddMatterPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(':addPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals(":addPermissions"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMatterPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPermissions(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatterPermission(response as api.MatterPermission);
      })));
    });

    unittest.test('method--close', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildCloseMatterRequest();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CloseMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCloseMatterRequest(obj as api.CloseMatterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(':close', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":close"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCloseMatterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .close(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCloseMatterResponse(response as api.CloseMatterResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Matter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMatter(obj as api.Matter);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response as api.Matter);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response as api.Matter);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_matterId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response as api.Matter);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_state = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/matters"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["state"].first, unittest.equals(arg_state));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMattersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              state: arg_state,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMattersResponse(response as api.ListMattersResponse);
      })));
    });

    unittest.test('method--removePermissions', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildRemoveMatterPermissionsRequest();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveMatterPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveMatterPermissionsRequest(
            obj as api.RemoveMatterPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(':removePermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":removePermissions"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePermissions(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--reopen', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildReopenMatterRequest();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReopenMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReopenMatterRequest(obj as api.ReopenMatterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(':reopen', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":reopen"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildReopenMatterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reopen(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReopenMatterResponse(response as api.ReopenMatterResponse);
      })));
    });

    unittest.test('method--undelete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildUndeleteMatterRequest();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UndeleteMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteMatterRequest(obj as api.UndeleteMatterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf(':undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response as api.Matter);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters;
      var arg_request = buildMatter();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Matter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMatter(obj as api.Matter);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMatter(response as api.Matter);
      })));
    });
  });

  unittest.group('resource-MattersExportsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.exports;
      var arg_request = buildExport();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Export.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExport(obj as api.Export);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/exports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/exports"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildExport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExport(response as api.Export);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.exports;
      var arg_matterId = 'foo';
      var arg_exportId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/exports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/exports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_exportId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_exportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.exports;
      var arg_matterId = 'foo';
      var arg_exportId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/exports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/exports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_exportId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildExport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_exportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExport(response as api.Export);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.exports;
      var arg_matterId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/exports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/exports"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListExportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListExportsResponse(response as api.ListExportsResponse);
      })));
    });
  });

  unittest.group('resource-MattersHoldsResourceApi', () {
    unittest.test('method--addHeldAccounts', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_request = buildAddHeldAccountsRequest();
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddHeldAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddHeldAccountsRequest(obj as api.AddHeldAccountsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf(':addHeldAccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":addHeldAccounts"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAddHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addHeldAccounts(arg_request, arg_matterId, arg_holdId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddHeldAccountsResponse(response as api.AddHeldAccountsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Hold.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHold(obj as api.Hold);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response as api.Hold);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_holdId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response as api.Hold);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_matterId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/holds"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListHoldsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHoldsResponse(response as api.ListHoldsResponse);
      })));
    });

    unittest.test('method--removeHeldAccounts', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_request = buildRemoveHeldAccountsRequest();
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveHeldAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveHeldAccountsRequest(obj as api.RemoveHeldAccountsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf(':removeHeldAccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":removeHeldAccounts"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildRemoveHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeHeldAccounts(arg_request, arg_matterId, arg_holdId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemoveHeldAccountsResponse(
            response as api.RemoveHeldAccountsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds;
      var arg_request = buildHold();
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Hold.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHold(obj as api.Hold);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHold(response as api.Hold);
      })));
    });
  });

  unittest.group('resource-MattersHoldsAccountsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds.accounts;
      var arg_request = buildHeldAccount();
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.HeldAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHeldAccount(obj as api.HeldAccount);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildHeldAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHeldAccount(response as api.HeldAccount);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_holdId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.holds.accounts;
      var arg_matterId = 'foo';
      var arg_holdId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/holds/"));
        pathOffset += 7;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_holdId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId, arg_holdId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHeldAccountsResponse(response as api.ListHeldAccountsResponse);
      })));
    });
  });

  unittest.group('resource-MattersSavedQueriesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.savedQueries;
      var arg_request = buildSavedQuery();
      var arg_matterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SavedQuery.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSavedQuery(obj as api.SavedQuery);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/savedQueries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/savedQueries"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_matterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSavedQuery(response as api.SavedQuery);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = 'foo';
      var arg_savedQueryId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/savedQueries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/savedQueries/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_savedQueryId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_matterId, arg_savedQueryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = 'foo';
      var arg_savedQueryId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/savedQueries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/savedQueries/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_savedQueryId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_matterId, arg_savedQueryId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSavedQuery(response as api.SavedQuery);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).matters.savedQueries;
      var arg_matterId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/matters/"));
        pathOffset += 11;
        index = path.indexOf('/savedQueries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_matterId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/savedQueries"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListSavedQueriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_matterId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSavedQueriesResponse(response as api.ListSavedQueriesResponse);
      })));
    });
  });

  unittest.group('resource-OperationsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.VaultApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });
}
