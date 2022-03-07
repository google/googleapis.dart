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

import 'package:googleapis/vault/v1.dart' as api;
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

core.int buildCounterAccountInfo = 0;
api.AccountInfo buildAccountInfo() {
  final o = api.AccountInfo();
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    o.emails = buildUnnamed0();
  }
  buildCounterAccountInfo--;
  return o;
}

void checkAccountInfo(api.AccountInfo o) {
  buildCounterAccountInfo++;
  if (buildCounterAccountInfo < 3) {
    checkUnnamed0(o.emails!);
  }
  buildCounterAccountInfo--;
}

core.int buildCounterAddHeldAccountResult = 0;
api.AddHeldAccountResult buildAddHeldAccountResult() {
  final o = api.AddHeldAccountResult();
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
    checkHeldAccount(o.account!);
    checkStatus(o.status!);
  }
  buildCounterAddHeldAccountResult--;
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

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterAddHeldAccountsRequest = 0;
api.AddHeldAccountsRequest buildAddHeldAccountsRequest() {
  final o = api.AddHeldAccountsRequest();
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed1();
    o.emails = buildUnnamed2();
  }
  buildCounterAddHeldAccountsRequest--;
  return o;
}

void checkAddHeldAccountsRequest(api.AddHeldAccountsRequest o) {
  buildCounterAddHeldAccountsRequest++;
  if (buildCounterAddHeldAccountsRequest < 3) {
    checkUnnamed1(o.accountIds!);
    checkUnnamed2(o.emails!);
  }
  buildCounterAddHeldAccountsRequest--;
}

core.List<api.AddHeldAccountResult> buildUnnamed3() => [
      buildAddHeldAccountResult(),
      buildAddHeldAccountResult(),
    ];

void checkUnnamed3(core.List<api.AddHeldAccountResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddHeldAccountResult(o[0]);
  checkAddHeldAccountResult(o[1]);
}

core.int buildCounterAddHeldAccountsResponse = 0;
api.AddHeldAccountsResponse buildAddHeldAccountsResponse() {
  final o = api.AddHeldAccountsResponse();
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    o.responses = buildUnnamed3();
  }
  buildCounterAddHeldAccountsResponse--;
  return o;
}

void checkAddHeldAccountsResponse(api.AddHeldAccountsResponse o) {
  buildCounterAddHeldAccountsResponse++;
  if (buildCounterAddHeldAccountsResponse < 3) {
    checkUnnamed3(o.responses!);
  }
  buildCounterAddHeldAccountsResponse--;
}

core.int buildCounterAddMatterPermissionsRequest = 0;
api.AddMatterPermissionsRequest buildAddMatterPermissionsRequest() {
  final o = api.AddMatterPermissionsRequest();
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
    unittest.expect(o.ccMe!, unittest.isTrue);
    checkMatterPermission(o.matterPermission!);
    unittest.expect(o.sendEmails!, unittest.isTrue);
  }
  buildCounterAddMatterPermissionsRequest--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCloseMatterRequest = 0;
api.CloseMatterRequest buildCloseMatterRequest() {
  final o = api.CloseMatterRequest();
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
  final o = api.CloseMatterResponse();
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
    checkMatter(o.matter!);
  }
  buildCounterCloseMatterResponse--;
}

core.int buildCounterCloudStorageFile = 0;
api.CloudStorageFile buildCloudStorageFile() {
  final o = api.CloudStorageFile();
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
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudStorageFile--;
}

core.List<api.CloudStorageFile> buildUnnamed4() => [
      buildCloudStorageFile(),
      buildCloudStorageFile(),
    ];

void checkUnnamed4(core.List<api.CloudStorageFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudStorageFile(o[0]);
  checkCloudStorageFile(o[1]);
}

core.int buildCounterCloudStorageSink = 0;
api.CloudStorageSink buildCloudStorageSink() {
  final o = api.CloudStorageSink();
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    o.files = buildUnnamed4();
  }
  buildCounterCloudStorageSink--;
  return o;
}

void checkCloudStorageSink(api.CloudStorageSink o) {
  buildCounterCloudStorageSink++;
  if (buildCounterCloudStorageSink < 3) {
    checkUnnamed4(o.files!);
  }
  buildCounterCloudStorageSink--;
}

core.int buildCounterCorpusQuery = 0;
api.CorpusQuery buildCorpusQuery() {
  final o = api.CorpusQuery();
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    o.driveQuery = buildHeldDriveQuery();
    o.groupsQuery = buildHeldGroupsQuery();
    o.hangoutsChatQuery = buildHeldHangoutsChatQuery();
    o.mailQuery = buildHeldMailQuery();
    o.voiceQuery = buildHeldVoiceQuery();
  }
  buildCounterCorpusQuery--;
  return o;
}

void checkCorpusQuery(api.CorpusQuery o) {
  buildCounterCorpusQuery++;
  if (buildCounterCorpusQuery < 3) {
    checkHeldDriveQuery(o.driveQuery!);
    checkHeldGroupsQuery(o.groupsQuery!);
    checkHeldHangoutsChatQuery(o.hangoutsChatQuery!);
    checkHeldMailQuery(o.mailQuery!);
    checkHeldVoiceQuery(o.voiceQuery!);
  }
  buildCounterCorpusQuery--;
}

core.int buildCounterCountArtifactsRequest = 0;
api.CountArtifactsRequest buildCountArtifactsRequest() {
  final o = api.CountArtifactsRequest();
  buildCounterCountArtifactsRequest++;
  if (buildCounterCountArtifactsRequest < 3) {
    o.query = buildQuery();
    o.view = 'foo';
  }
  buildCounterCountArtifactsRequest--;
  return o;
}

void checkCountArtifactsRequest(api.CountArtifactsRequest o) {
  buildCounterCountArtifactsRequest++;
  if (buildCounterCountArtifactsRequest < 3) {
    checkQuery(o.query!);
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterCountArtifactsRequest--;
}

core.int buildCounterDriveExportOptions = 0;
api.DriveExportOptions buildDriveExportOptions() {
  final o = api.DriveExportOptions();
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
    unittest.expect(o.includeAccessInfo!, unittest.isTrue);
  }
  buildCounterDriveExportOptions--;
}

core.int buildCounterDriveOptions = 0;
api.DriveOptions buildDriveOptions() {
  final o = api.DriveOptions();
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
    unittest.expect(o.includeSharedDrives!, unittest.isTrue);
    unittest.expect(o.includeTeamDrives!, unittest.isTrue);
    unittest.expect(
      o.versionDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveOptions--;
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

core.int buildCounterExport = 0;
api.Export buildExport() {
  final o = api.Export();
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
    checkCloudStorageSink(o.cloudStorageSink!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkExportOptions(o.exportOptions!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQuery(o.query!);
    checkUserInfo(o.requester!);
    checkExportStats(o.stats!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterExport--;
}

core.int buildCounterExportOptions = 0;
api.ExportOptions buildExportOptions() {
  final o = api.ExportOptions();
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    o.driveOptions = buildDriveExportOptions();
    o.groupsOptions = buildGroupsExportOptions();
    o.hangoutsChatOptions = buildHangoutsChatExportOptions();
    o.mailOptions = buildMailExportOptions();
    o.region = 'foo';
    o.voiceOptions = buildVoiceExportOptions();
  }
  buildCounterExportOptions--;
  return o;
}

void checkExportOptions(api.ExportOptions o) {
  buildCounterExportOptions++;
  if (buildCounterExportOptions < 3) {
    checkDriveExportOptions(o.driveOptions!);
    checkGroupsExportOptions(o.groupsOptions!);
    checkHangoutsChatExportOptions(o.hangoutsChatOptions!);
    checkMailExportOptions(o.mailOptions!);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkVoiceExportOptions(o.voiceOptions!);
  }
  buildCounterExportOptions--;
}

core.int buildCounterExportStats = 0;
api.ExportStats buildExportStats() {
  final o = api.ExportStats();
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
    unittest.expect(
      o.exportedArtifactCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeInBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalArtifactCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportStats--;
}

core.int buildCounterGroupsExportOptions = 0;
api.GroupsExportOptions buildGroupsExportOptions() {
  final o = api.GroupsExportOptions();
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
    unittest.expect(
      o.exportFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupsExportOptions--;
}

core.int buildCounterHangoutsChatExportOptions = 0;
api.HangoutsChatExportOptions buildHangoutsChatExportOptions() {
  final o = api.HangoutsChatExportOptions();
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
    unittest.expect(
      o.exportFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterHangoutsChatExportOptions--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterHangoutsChatInfo = 0;
api.HangoutsChatInfo buildHangoutsChatInfo() {
  final o = api.HangoutsChatInfo();
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    o.roomId = buildUnnamed5();
  }
  buildCounterHangoutsChatInfo--;
  return o;
}

void checkHangoutsChatInfo(api.HangoutsChatInfo o) {
  buildCounterHangoutsChatInfo++;
  if (buildCounterHangoutsChatInfo < 3) {
    checkUnnamed5(o.roomId!);
  }
  buildCounterHangoutsChatInfo--;
}

core.int buildCounterHangoutsChatOptions = 0;
api.HangoutsChatOptions buildHangoutsChatOptions() {
  final o = api.HangoutsChatOptions();
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
    unittest.expect(o.includeRooms!, unittest.isTrue);
  }
  buildCounterHangoutsChatOptions--;
}

core.int buildCounterHeldAccount = 0;
api.HeldAccount buildHeldAccount() {
  final o = api.HeldAccount();
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
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.holdTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeldAccount--;
}

core.int buildCounterHeldDriveQuery = 0;
api.HeldDriveQuery buildHeldDriveQuery() {
  final o = api.HeldDriveQuery();
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
    unittest.expect(o.includeSharedDriveFiles!, unittest.isTrue);
    unittest.expect(o.includeTeamDriveFiles!, unittest.isTrue);
  }
  buildCounterHeldDriveQuery--;
}

core.int buildCounterHeldGroupsQuery = 0;
api.HeldGroupsQuery buildHeldGroupsQuery() {
  final o = api.HeldGroupsQuery();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.terms!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeldGroupsQuery--;
}

core.int buildCounterHeldHangoutsChatQuery = 0;
api.HeldHangoutsChatQuery buildHeldHangoutsChatQuery() {
  final o = api.HeldHangoutsChatQuery();
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
    unittest.expect(o.includeRooms!, unittest.isTrue);
  }
  buildCounterHeldHangoutsChatQuery--;
}

core.int buildCounterHeldMailQuery = 0;
api.HeldMailQuery buildHeldMailQuery() {
  final o = api.HeldMailQuery();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.terms!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeldMailQuery--;
}

core.int buildCounterHeldOrgUnit = 0;
api.HeldOrgUnit buildHeldOrgUnit() {
  final o = api.HeldOrgUnit();
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
    unittest.expect(
      o.holdTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeldOrgUnit--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterHeldVoiceQuery = 0;
api.HeldVoiceQuery buildHeldVoiceQuery() {
  final o = api.HeldVoiceQuery();
  buildCounterHeldVoiceQuery++;
  if (buildCounterHeldVoiceQuery < 3) {
    o.coveredData = buildUnnamed6();
  }
  buildCounterHeldVoiceQuery--;
  return o;
}

void checkHeldVoiceQuery(api.HeldVoiceQuery o) {
  buildCounterHeldVoiceQuery++;
  if (buildCounterHeldVoiceQuery < 3) {
    checkUnnamed6(o.coveredData!);
  }
  buildCounterHeldVoiceQuery--;
}

core.List<api.HeldAccount> buildUnnamed7() => [
      buildHeldAccount(),
      buildHeldAccount(),
    ];

void checkUnnamed7(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterHold = 0;
api.Hold buildHold() {
  final o = api.Hold();
  buildCounterHold++;
  if (buildCounterHold < 3) {
    o.accounts = buildUnnamed7();
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
    checkUnnamed7(o.accounts!);
    unittest.expect(
      o.corpus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.holdId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkHeldOrgUnit(o.orgUnit!);
    checkCorpusQuery(o.query!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterHold--;
}

core.List<api.Export> buildUnnamed8() => [
      buildExport(),
      buildExport(),
    ];

void checkUnnamed8(core.List<api.Export> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExport(o[0]);
  checkExport(o[1]);
}

core.int buildCounterListExportsResponse = 0;
api.ListExportsResponse buildListExportsResponse() {
  final o = api.ListExportsResponse();
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    o.exports = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListExportsResponse--;
  return o;
}

void checkListExportsResponse(api.ListExportsResponse o) {
  buildCounterListExportsResponse++;
  if (buildCounterListExportsResponse < 3) {
    checkUnnamed8(o.exports!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExportsResponse--;
}

core.List<api.HeldAccount> buildUnnamed9() => [
      buildHeldAccount(),
      buildHeldAccount(),
    ];

void checkUnnamed9(core.List<api.HeldAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeldAccount(o[0]);
  checkHeldAccount(o[1]);
}

core.int buildCounterListHeldAccountsResponse = 0;
api.ListHeldAccountsResponse buildListHeldAccountsResponse() {
  final o = api.ListHeldAccountsResponse();
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    o.accounts = buildUnnamed9();
  }
  buildCounterListHeldAccountsResponse--;
  return o;
}

void checkListHeldAccountsResponse(api.ListHeldAccountsResponse o) {
  buildCounterListHeldAccountsResponse++;
  if (buildCounterListHeldAccountsResponse < 3) {
    checkUnnamed9(o.accounts!);
  }
  buildCounterListHeldAccountsResponse--;
}

core.List<api.Hold> buildUnnamed10() => [
      buildHold(),
      buildHold(),
    ];

void checkUnnamed10(core.List<api.Hold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHold(o[0]);
  checkHold(o[1]);
}

core.int buildCounterListHoldsResponse = 0;
api.ListHoldsResponse buildListHoldsResponse() {
  final o = api.ListHoldsResponse();
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    o.holds = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListHoldsResponse--;
  return o;
}

void checkListHoldsResponse(api.ListHoldsResponse o) {
  buildCounterListHoldsResponse++;
  if (buildCounterListHoldsResponse < 3) {
    checkUnnamed10(o.holds!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHoldsResponse--;
}

core.List<api.Matter> buildUnnamed11() => [
      buildMatter(),
      buildMatter(),
    ];

void checkUnnamed11(core.List<api.Matter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatter(o[0]);
  checkMatter(o[1]);
}

core.int buildCounterListMattersResponse = 0;
api.ListMattersResponse buildListMattersResponse() {
  final o = api.ListMattersResponse();
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    o.matters = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListMattersResponse--;
  return o;
}

void checkListMattersResponse(api.ListMattersResponse o) {
  buildCounterListMattersResponse++;
  if (buildCounterListMattersResponse < 3) {
    checkUnnamed11(o.matters!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMattersResponse--;
}

core.List<api.Operation> buildUnnamed12() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed12(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed12();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SavedQuery> buildUnnamed13() => [
      buildSavedQuery(),
      buildSavedQuery(),
    ];

void checkUnnamed13(core.List<api.SavedQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedQuery(o[0]);
  checkSavedQuery(o[1]);
}

core.int buildCounterListSavedQueriesResponse = 0;
api.ListSavedQueriesResponse buildListSavedQueriesResponse() {
  final o = api.ListSavedQueriesResponse();
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.savedQueries = buildUnnamed13();
  }
  buildCounterListSavedQueriesResponse--;
  return o;
}

void checkListSavedQueriesResponse(api.ListSavedQueriesResponse o) {
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.savedQueries!);
  }
  buildCounterListSavedQueriesResponse--;
}

core.int buildCounterMailExportOptions = 0;
api.MailExportOptions buildMailExportOptions() {
  final o = api.MailExportOptions();
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    o.exportFormat = 'foo';
    o.showConfidentialModeContent = true;
    o.useNewExport = true;
  }
  buildCounterMailExportOptions--;
  return o;
}

void checkMailExportOptions(api.MailExportOptions o) {
  buildCounterMailExportOptions++;
  if (buildCounterMailExportOptions < 3) {
    unittest.expect(
      o.exportFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(o.showConfidentialModeContent!, unittest.isTrue);
    unittest.expect(o.useNewExport!, unittest.isTrue);
  }
  buildCounterMailExportOptions--;
}

core.int buildCounterMailOptions = 0;
api.MailOptions buildMailOptions() {
  final o = api.MailOptions();
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
    unittest.expect(o.excludeDrafts!, unittest.isTrue);
  }
  buildCounterMailOptions--;
}

core.List<api.MatterPermission> buildUnnamed14() => [
      buildMatterPermission(),
      buildMatterPermission(),
    ];

void checkUnnamed14(core.List<api.MatterPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatterPermission(o[0]);
  checkMatterPermission(o[1]);
}

core.int buildCounterMatter = 0;
api.Matter buildMatter() {
  final o = api.Matter();
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    o.description = 'foo';
    o.matterId = 'foo';
    o.matterPermissions = buildUnnamed14();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterMatter--;
  return o;
}

void checkMatter(api.Matter o) {
  buildCounterMatter++;
  if (buildCounterMatter < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matterId!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.matterPermissions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterMatter--;
}

core.int buildCounterMatterPermission = 0;
api.MatterPermission buildMatterPermission() {
  final o = api.MatterPermission();
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
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterMatterPermission--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.response = buildUnnamed16();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed15(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOrgUnitInfo = 0;
api.OrgUnitInfo buildOrgUnitInfo() {
  final o = api.OrgUnitInfo();
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
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrgUnitInfo--;
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  final o = api.Query();
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
    o.voiceOptions = buildVoiceOptions();
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    checkAccountInfo(o.accountInfo!);
    unittest.expect(
      o.corpus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataScope!,
      unittest.equals('foo'),
    );
    checkDriveOptions(o.driveOptions!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkHangoutsChatInfo(o.hangoutsChatInfo!);
    checkHangoutsChatOptions(o.hangoutsChatOptions!);
    checkMailOptions(o.mailOptions!);
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkOrgUnitInfo(o.orgUnitInfo!);
    unittest.expect(
      o.searchMethod!,
      unittest.equals('foo'),
    );
    checkSharedDriveInfo(o.sharedDriveInfo!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkTeamDriveInfo(o.teamDriveInfo!);
    unittest.expect(
      o.terms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkVoiceOptions(o.voiceOptions!);
  }
  buildCounterQuery--;
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

core.int buildCounterRemoveHeldAccountsRequest = 0;
api.RemoveHeldAccountsRequest buildRemoveHeldAccountsRequest() {
  final o = api.RemoveHeldAccountsRequest();
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    o.accountIds = buildUnnamed17();
  }
  buildCounterRemoveHeldAccountsRequest--;
  return o;
}

void checkRemoveHeldAccountsRequest(api.RemoveHeldAccountsRequest o) {
  buildCounterRemoveHeldAccountsRequest++;
  if (buildCounterRemoveHeldAccountsRequest < 3) {
    checkUnnamed17(o.accountIds!);
  }
  buildCounterRemoveHeldAccountsRequest--;
}

core.List<api.Status> buildUnnamed18() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed18(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterRemoveHeldAccountsResponse = 0;
api.RemoveHeldAccountsResponse buildRemoveHeldAccountsResponse() {
  final o = api.RemoveHeldAccountsResponse();
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    o.statuses = buildUnnamed18();
  }
  buildCounterRemoveHeldAccountsResponse--;
  return o;
}

void checkRemoveHeldAccountsResponse(api.RemoveHeldAccountsResponse o) {
  buildCounterRemoveHeldAccountsResponse++;
  if (buildCounterRemoveHeldAccountsResponse < 3) {
    checkUnnamed18(o.statuses!);
  }
  buildCounterRemoveHeldAccountsResponse--;
}

core.int buildCounterRemoveMatterPermissionsRequest = 0;
api.RemoveMatterPermissionsRequest buildRemoveMatterPermissionsRequest() {
  final o = api.RemoveMatterPermissionsRequest();
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
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveMatterPermissionsRequest--;
}

core.int buildCounterReopenMatterRequest = 0;
api.ReopenMatterRequest buildReopenMatterRequest() {
  final o = api.ReopenMatterRequest();
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
  final o = api.ReopenMatterResponse();
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
    checkMatter(o.matter!);
  }
  buildCounterReopenMatterResponse--;
}

core.int buildCounterSavedQuery = 0;
api.SavedQuery buildSavedQuery() {
  final o = api.SavedQuery();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matterId!,
      unittest.equals('foo'),
    );
    checkQuery(o.query!);
    unittest.expect(
      o.savedQueryId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedQuery--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterSharedDriveInfo = 0;
api.SharedDriveInfo buildSharedDriveInfo() {
  final o = api.SharedDriveInfo();
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    o.sharedDriveIds = buildUnnamed19();
  }
  buildCounterSharedDriveInfo--;
  return o;
}

void checkSharedDriveInfo(api.SharedDriveInfo o) {
  buildCounterSharedDriveInfo++;
  if (buildCounterSharedDriveInfo < 3) {
    checkUnnamed19(o.sharedDriveIds!);
  }
  buildCounterSharedDriveInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
      buildUnnamed20(),
      buildUnnamed20(),
    ];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed21();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed21(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterTeamDriveInfo = 0;
api.TeamDriveInfo buildTeamDriveInfo() {
  final o = api.TeamDriveInfo();
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    o.teamDriveIds = buildUnnamed22();
  }
  buildCounterTeamDriveInfo--;
  return o;
}

void checkTeamDriveInfo(api.TeamDriveInfo o) {
  buildCounterTeamDriveInfo++;
  if (buildCounterTeamDriveInfo < 3) {
    checkUnnamed22(o.teamDriveIds!);
  }
  buildCounterTeamDriveInfo--;
}

core.int buildCounterUndeleteMatterRequest = 0;
api.UndeleteMatterRequest buildUndeleteMatterRequest() {
  final o = api.UndeleteMatterRequest();
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
  final o = api.UserInfo();
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInfo--;
}

core.int buildCounterVoiceExportOptions = 0;
api.VoiceExportOptions buildVoiceExportOptions() {
  final o = api.VoiceExportOptions();
  buildCounterVoiceExportOptions++;
  if (buildCounterVoiceExportOptions < 3) {
    o.exportFormat = 'foo';
  }
  buildCounterVoiceExportOptions--;
  return o;
}

void checkVoiceExportOptions(api.VoiceExportOptions o) {
  buildCounterVoiceExportOptions++;
  if (buildCounterVoiceExportOptions < 3) {
    unittest.expect(
      o.exportFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterVoiceExportOptions--;
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

core.int buildCounterVoiceOptions = 0;
api.VoiceOptions buildVoiceOptions() {
  final o = api.VoiceOptions();
  buildCounterVoiceOptions++;
  if (buildCounterVoiceOptions < 3) {
    o.coveredData = buildUnnamed23();
  }
  buildCounterVoiceOptions--;
  return o;
}

void checkVoiceOptions(api.VoiceOptions o) {
  buildCounterVoiceOptions++;
  if (buildCounterVoiceOptions < 3) {
    checkUnnamed23(o.coveredData!);
  }
  buildCounterVoiceOptions--;
}

void main() {
  unittest.group('obj-schema-AccountInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountInfo(od);
    });
  });

  unittest.group('obj-schema-AddHeldAccountResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddHeldAccountResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddHeldAccountResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddHeldAccountResult(od);
    });
  });

  unittest.group('obj-schema-AddHeldAccountsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddHeldAccountsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddHeldAccountsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddHeldAccountsRequest(od);
    });
  });

  unittest.group('obj-schema-AddHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddHeldAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddHeldAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddHeldAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-AddMatterPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddMatterPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddMatterPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddMatterPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CloseMatterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloseMatterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloseMatterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloseMatterRequest(od);
    });
  });

  unittest.group('obj-schema-CloseMatterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloseMatterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloseMatterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloseMatterResponse(od);
    });
  });

  unittest.group('obj-schema-CloudStorageFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudStorageFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudStorageFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudStorageFile(od);
    });
  });

  unittest.group('obj-schema-CloudStorageSink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudStorageSink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudStorageSink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudStorageSink(od);
    });
  });

  unittest.group('obj-schema-CorpusQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCorpusQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CorpusQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCorpusQuery(od);
    });
  });

  unittest.group('obj-schema-CountArtifactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountArtifactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CountArtifactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCountArtifactsRequest(od);
    });
  });

  unittest.group('obj-schema-DriveExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveExportOptions(od);
    });
  });

  unittest.group('obj-schema-DriveOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveOptions(od);
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

  unittest.group('obj-schema-Export', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Export.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExport(od);
    });
  });

  unittest.group('obj-schema-ExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportOptions(od);
    });
  });

  unittest.group('obj-schema-ExportStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportStats(od);
    });
  });

  unittest.group('obj-schema-GroupsExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupsExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupsExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupsExportOptions(od);
    });
  });

  unittest.group('obj-schema-HangoutsChatExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHangoutsChatExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HangoutsChatExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHangoutsChatExportOptions(od);
    });
  });

  unittest.group('obj-schema-HangoutsChatInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHangoutsChatInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HangoutsChatInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHangoutsChatInfo(od);
    });
  });

  unittest.group('obj-schema-HangoutsChatOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHangoutsChatOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HangoutsChatOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHangoutsChatOptions(od);
    });
  });

  unittest.group('obj-schema-HeldAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldAccount(od);
    });
  });

  unittest.group('obj-schema-HeldDriveQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldDriveQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldDriveQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldDriveQuery(od);
    });
  });

  unittest.group('obj-schema-HeldGroupsQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldGroupsQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldGroupsQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldGroupsQuery(od);
    });
  });

  unittest.group('obj-schema-HeldHangoutsChatQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldHangoutsChatQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldHangoutsChatQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldHangoutsChatQuery(od);
    });
  });

  unittest.group('obj-schema-HeldMailQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldMailQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldMailQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldMailQuery(od);
    });
  });

  unittest.group('obj-schema-HeldOrgUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldOrgUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldOrgUnit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldOrgUnit(od);
    });
  });

  unittest.group('obj-schema-HeldVoiceQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeldVoiceQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeldVoiceQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeldVoiceQuery(od);
    });
  });

  unittest.group('obj-schema-Hold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hold.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHold(od);
    });
  });

  unittest.group('obj-schema-ListExportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHeldAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHeldAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHeldAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListHoldsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHoldsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHoldsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHoldsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMattersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMattersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMattersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMattersResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSavedQueriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSavedQueriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSavedQueriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSavedQueriesResponse(od);
    });
  });

  unittest.group('obj-schema-MailExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMailExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MailExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMailExportOptions(od);
    });
  });

  unittest.group('obj-schema-MailOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMailOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MailOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMailOptions(od);
    });
  });

  unittest.group('obj-schema-Matter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Matter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMatter(od);
    });
  });

  unittest.group('obj-schema-MatterPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatterPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatterPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatterPermission(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OrgUnitInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgUnitInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgUnitInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrgUnitInfo(od);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Query.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuery(od);
    });
  });

  unittest.group('obj-schema-RemoveHeldAccountsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveHeldAccountsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveHeldAccountsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveHeldAccountsRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveHeldAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveHeldAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveHeldAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveHeldAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveMatterPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveMatterPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveMatterPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveMatterPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-ReopenMatterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReopenMatterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReopenMatterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReopenMatterRequest(od);
    });
  });

  unittest.group('obj-schema-ReopenMatterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReopenMatterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReopenMatterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReopenMatterResponse(od);
    });
  });

  unittest.group('obj-schema-SavedQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SavedQuery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSavedQuery(od);
    });
  });

  unittest.group('obj-schema-SharedDriveInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSharedDriveInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SharedDriveInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSharedDriveInfo(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TeamDriveInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeamDriveInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeamDriveInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeamDriveInfo(od);
    });
  });

  unittest.group('obj-schema-UndeleteMatterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteMatterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteMatterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteMatterRequest(od);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserInfo(od);
    });
  });

  unittest.group('obj-schema-VoiceExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoiceExportOptions(od);
    });
  });

  unittest.group('obj-schema-VoiceOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoiceOptions(od);
    });
  });

  unittest.group('resource-MattersResource', () {
    unittest.test('method--addPermissions', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildAddMatterPermissionsRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddMatterPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddMatterPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':addPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals(':addPermissions'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildMatterPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addPermissions(arg_request, arg_matterId,
          $fields: arg_$fields);
      checkMatterPermission(response as api.MatterPermission);
    });

    unittest.test('method--close', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildCloseMatterRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CloseMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCloseMatterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':close', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':close'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCloseMatterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.close(arg_request, arg_matterId, $fields: arg_$fields);
      checkCloseMatterResponse(response as api.CloseMatterResponse);
    });

    unittest.test('method--count', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildCountArtifactsRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CountArtifactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCountArtifactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':count', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':count'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.count(arg_request, arg_matterId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildMatter();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Matter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMatter(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/matters'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkMatter(response as api.Matter);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_matterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
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
        final resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_matterId, $fields: arg_$fields);
      checkMatter(response as api.Matter);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_matterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
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
        final resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_matterId, view: arg_view, $fields: arg_$fields);
      checkMatter(response as api.Matter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_state = 'foo';
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/matters'),
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
          queryMap['state']!.first,
          unittest.equals(arg_state),
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
        final resp = convert.json.encode(buildListMattersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          state: arg_state,
          view: arg_view,
          $fields: arg_$fields);
      checkListMattersResponse(response as api.ListMattersResponse);
    });

    unittest.test('method--removePermissions', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildRemoveMatterPermissionsRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveMatterPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveMatterPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':removePermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals(':removePermissions'),
        );
        pathOffset += 18;

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
      final response = await res.removePermissions(arg_request, arg_matterId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--reopen', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildReopenMatterRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReopenMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReopenMatterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':reopen', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':reopen'),
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
        final resp = convert.json.encode(buildReopenMatterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reopen(arg_request, arg_matterId, $fields: arg_$fields);
      checkReopenMatterResponse(response as api.ReopenMatterResponse);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildUndeleteMatterRequest();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteMatterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteMatterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf(':undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':undelete'),
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
        final resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_matterId, $fields: arg_$fields);
      checkMatter(response as api.Matter);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters;
      final arg_request = buildMatter();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Matter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMatter(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
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
        final resp = convert.json.encode(buildMatter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_matterId, $fields: arg_$fields);
      checkMatter(response as api.Matter);
    });
  });

  unittest.group('resource-MattersExportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.exports;
      final arg_request = buildExport();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Export.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExport(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/exports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/exports'),
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
        final resp = convert.json.encode(buildExport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_matterId, $fields: arg_$fields);
      checkExport(response as api.Export);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.exports;
      final arg_matterId = 'foo';
      final arg_exportId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/exports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/exports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_exportId'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_matterId, arg_exportId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.exports;
      final arg_matterId = 'foo';
      final arg_exportId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/exports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/exports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_exportId'),
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
        final resp = convert.json.encode(buildExport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_matterId, arg_exportId, $fields: arg_$fields);
      checkExport(response as api.Export);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.exports;
      final arg_matterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/exports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/exports'),
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
        final resp = convert.json.encode(buildListExportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_matterId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExportsResponse(response as api.ListExportsResponse);
    });
  });

  unittest.group('resource-MattersHoldsResource', () {
    unittest.test('method--addHeldAccounts', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_request = buildAddHeldAccountsRequest();
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddHeldAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddHeldAccountsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        index = path.indexOf(':addHeldAccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':addHeldAccounts'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildAddHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addHeldAccounts(
          arg_request, arg_matterId, arg_holdId,
          $fields: arg_$fields);
      checkAddHeldAccountsResponse(response as api.AddHeldAccountsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_request = buildHold();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Hold.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHold(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/holds'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_matterId, $fields: arg_$fields);
      checkHold(response as api.Hold);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_matterId, arg_holdId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
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
        final resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_matterId, arg_holdId,
          view: arg_view, $fields: arg_$fields);
      checkHold(response as api.Hold);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_matterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/holds'),
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
        final resp = convert.json.encode(buildListHoldsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_matterId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListHoldsResponse(response as api.ListHoldsResponse);
    });

    unittest.test('method--removeHeldAccounts', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_request = buildRemoveHeldAccountsRequest();
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveHeldAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveHeldAccountsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        index = path.indexOf(':removeHeldAccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals(':removeHeldAccounts'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildRemoveHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeHeldAccounts(
          arg_request, arg_matterId, arg_holdId,
          $fields: arg_$fields);
      checkRemoveHeldAccountsResponse(
          response as api.RemoveHeldAccountsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds;
      final arg_request = buildHold();
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Hold.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHold(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
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
        final resp = convert.json.encode(buildHold());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_matterId, arg_holdId,
          $fields: arg_$fields);
      checkHold(response as api.Hold);
    });
  });

  unittest.group('resource-MattersHoldsAccountsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds.accounts;
      final arg_request = buildHeldAccount();
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.HeldAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHeldAccount(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/accounts'),
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
        final resp = convert.json.encode(buildHeldAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_matterId, arg_holdId,
          $fields: arg_$fields);
      checkHeldAccount(response as api.HeldAccount);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds.accounts;
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/accounts/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_matterId, arg_holdId, arg_accountId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.holds.accounts;
      final arg_matterId = 'foo';
      final arg_holdId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/holds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/holds/'),
        );
        pathOffset += 7;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_holdId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/accounts'),
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
        final resp = convert.json.encode(buildListHeldAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_matterId, arg_holdId, $fields: arg_$fields);
      checkListHeldAccountsResponse(response as api.ListHeldAccountsResponse);
    });
  });

  unittest.group('resource-MattersSavedQueriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.savedQueries;
      final arg_request = buildSavedQuery();
      final arg_matterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SavedQuery.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSavedQuery(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/savedQueries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/savedQueries'),
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
        final resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_matterId, $fields: arg_$fields);
      checkSavedQuery(response as api.SavedQuery);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.savedQueries;
      final arg_matterId = 'foo';
      final arg_savedQueryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/savedQueries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/savedQueries/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_savedQueryId'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_matterId, arg_savedQueryId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.savedQueries;
      final arg_matterId = 'foo';
      final arg_savedQueryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/savedQueries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/savedQueries/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_savedQueryId'),
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
        final resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_matterId, arg_savedQueryId, $fields: arg_$fields);
      checkSavedQuery(response as api.SavedQuery);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).matters.savedQueries;
      final arg_matterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/matters/'),
        );
        pathOffset += 11;
        index = path.indexOf('/savedQueries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_matterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/savedQueries'),
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
        final resp = convert.json.encode(buildListSavedQueriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_matterId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSavedQueriesResponse(response as api.ListSavedQueriesResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).operations;
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
      final res = api.VaultApi(mock).operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VaultApi(mock).operations;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
