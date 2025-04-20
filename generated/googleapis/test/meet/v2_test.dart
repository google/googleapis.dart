// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/meet/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActiveConference = 0;
api.ActiveConference buildActiveConference() {
  final o = api.ActiveConference();
  buildCounterActiveConference++;
  if (buildCounterActiveConference < 3) {
    o.conferenceRecord = 'foo';
  }
  buildCounterActiveConference--;
  return o;
}

void checkActiveConference(api.ActiveConference o) {
  buildCounterActiveConference++;
  if (buildCounterActiveConference < 3) {
    unittest.expect(
      o.conferenceRecord!,
      unittest.equals('foo'),
    );
  }
  buildCounterActiveConference--;
}

core.int buildCounterAnonymousUser = 0;
api.AnonymousUser buildAnonymousUser() {
  final o = api.AnonymousUser();
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {
    o.displayName = 'foo';
  }
  buildCounterAnonymousUser--;
  return o;
}

void checkAnonymousUser(api.AnonymousUser o) {
  buildCounterAnonymousUser++;
  if (buildCounterAnonymousUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnonymousUser--;
}

core.int buildCounterConferenceRecord = 0;
api.ConferenceRecord buildConferenceRecord() {
  final o = api.ConferenceRecord();
  buildCounterConferenceRecord++;
  if (buildCounterConferenceRecord < 3) {
    o.endTime = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.space = 'foo';
    o.startTime = 'foo';
  }
  buildCounterConferenceRecord--;
  return o;
}

void checkConferenceRecord(api.ConferenceRecord o) {
  buildCounterConferenceRecord++;
  if (buildCounterConferenceRecord < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.space!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConferenceRecord--;
}

core.int buildCounterDocsDestination = 0;
api.DocsDestination buildDocsDestination() {
  final o = api.DocsDestination();
  buildCounterDocsDestination++;
  if (buildCounterDocsDestination < 3) {
    o.document = 'foo';
    o.exportUri = 'foo';
  }
  buildCounterDocsDestination--;
  return o;
}

void checkDocsDestination(api.DocsDestination o) {
  buildCounterDocsDestination++;
  if (buildCounterDocsDestination < 3) {
    unittest.expect(
      o.document!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exportUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocsDestination--;
}

core.int buildCounterDriveDestination = 0;
api.DriveDestination buildDriveDestination() {
  final o = api.DriveDestination();
  buildCounterDriveDestination++;
  if (buildCounterDriveDestination < 3) {
    o.exportUri = 'foo';
    o.file = 'foo';
  }
  buildCounterDriveDestination--;
  return o;
}

void checkDriveDestination(api.DriveDestination o) {
  buildCounterDriveDestination++;
  if (buildCounterDriveDestination < 3) {
    unittest.expect(
      o.exportUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.file!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveDestination--;
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

core.int buildCounterEndActiveConferenceRequest = 0;
api.EndActiveConferenceRequest buildEndActiveConferenceRequest() {
  final o = api.EndActiveConferenceRequest();
  buildCounterEndActiveConferenceRequest++;
  if (buildCounterEndActiveConferenceRequest < 3) {}
  buildCounterEndActiveConferenceRequest--;
  return o;
}

void checkEndActiveConferenceRequest(api.EndActiveConferenceRequest o) {
  buildCounterEndActiveConferenceRequest++;
  if (buildCounterEndActiveConferenceRequest < 3) {}
  buildCounterEndActiveConferenceRequest--;
}

core.List<api.ConferenceRecord> buildUnnamed0() => [
      buildConferenceRecord(),
      buildConferenceRecord(),
    ];

void checkUnnamed0(core.List<api.ConferenceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConferenceRecord(o[0]);
  checkConferenceRecord(o[1]);
}

core.int buildCounterListConferenceRecordsResponse = 0;
api.ListConferenceRecordsResponse buildListConferenceRecordsResponse() {
  final o = api.ListConferenceRecordsResponse();
  buildCounterListConferenceRecordsResponse++;
  if (buildCounterListConferenceRecordsResponse < 3) {
    o.conferenceRecords = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListConferenceRecordsResponse--;
  return o;
}

void checkListConferenceRecordsResponse(api.ListConferenceRecordsResponse o) {
  buildCounterListConferenceRecordsResponse++;
  if (buildCounterListConferenceRecordsResponse < 3) {
    checkUnnamed0(o.conferenceRecords!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConferenceRecordsResponse--;
}

core.List<api.ParticipantSession> buildUnnamed1() => [
      buildParticipantSession(),
      buildParticipantSession(),
    ];

void checkUnnamed1(core.List<api.ParticipantSession> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParticipantSession(o[0]);
  checkParticipantSession(o[1]);
}

core.int buildCounterListParticipantSessionsResponse = 0;
api.ListParticipantSessionsResponse buildListParticipantSessionsResponse() {
  final o = api.ListParticipantSessionsResponse();
  buildCounterListParticipantSessionsResponse++;
  if (buildCounterListParticipantSessionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.participantSessions = buildUnnamed1();
  }
  buildCounterListParticipantSessionsResponse--;
  return o;
}

void checkListParticipantSessionsResponse(
    api.ListParticipantSessionsResponse o) {
  buildCounterListParticipantSessionsResponse++;
  if (buildCounterListParticipantSessionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.participantSessions!);
  }
  buildCounterListParticipantSessionsResponse--;
}

core.List<api.Participant> buildUnnamed2() => [
      buildParticipant(),
      buildParticipant(),
    ];

void checkUnnamed2(core.List<api.Participant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParticipant(o[0]);
  checkParticipant(o[1]);
}

core.int buildCounterListParticipantsResponse = 0;
api.ListParticipantsResponse buildListParticipantsResponse() {
  final o = api.ListParticipantsResponse();
  buildCounterListParticipantsResponse++;
  if (buildCounterListParticipantsResponse < 3) {
    o.nextPageToken = 'foo';
    o.participants = buildUnnamed2();
    o.totalSize = 42;
  }
  buildCounterListParticipantsResponse--;
  return o;
}

void checkListParticipantsResponse(api.ListParticipantsResponse o) {
  buildCounterListParticipantsResponse++;
  if (buildCounterListParticipantsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.participants!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListParticipantsResponse--;
}

core.List<api.Recording> buildUnnamed3() => [
      buildRecording(),
      buildRecording(),
    ];

void checkUnnamed3(core.List<api.Recording> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecording(o[0]);
  checkRecording(o[1]);
}

core.int buildCounterListRecordingsResponse = 0;
api.ListRecordingsResponse buildListRecordingsResponse() {
  final o = api.ListRecordingsResponse();
  buildCounterListRecordingsResponse++;
  if (buildCounterListRecordingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.recordings = buildUnnamed3();
  }
  buildCounterListRecordingsResponse--;
  return o;
}

void checkListRecordingsResponse(api.ListRecordingsResponse o) {
  buildCounterListRecordingsResponse++;
  if (buildCounterListRecordingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.recordings!);
  }
  buildCounterListRecordingsResponse--;
}

core.List<api.TranscriptEntry> buildUnnamed4() => [
      buildTranscriptEntry(),
      buildTranscriptEntry(),
    ];

void checkUnnamed4(core.List<api.TranscriptEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscriptEntry(o[0]);
  checkTranscriptEntry(o[1]);
}

core.int buildCounterListTranscriptEntriesResponse = 0;
api.ListTranscriptEntriesResponse buildListTranscriptEntriesResponse() {
  final o = api.ListTranscriptEntriesResponse();
  buildCounterListTranscriptEntriesResponse++;
  if (buildCounterListTranscriptEntriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.transcriptEntries = buildUnnamed4();
  }
  buildCounterListTranscriptEntriesResponse--;
  return o;
}

void checkListTranscriptEntriesResponse(api.ListTranscriptEntriesResponse o) {
  buildCounterListTranscriptEntriesResponse++;
  if (buildCounterListTranscriptEntriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.transcriptEntries!);
  }
  buildCounterListTranscriptEntriesResponse--;
}

core.List<api.Transcript> buildUnnamed5() => [
      buildTranscript(),
      buildTranscript(),
    ];

void checkUnnamed5(core.List<api.Transcript> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscript(o[0]);
  checkTranscript(o[1]);
}

core.int buildCounterListTranscriptsResponse = 0;
api.ListTranscriptsResponse buildListTranscriptsResponse() {
  final o = api.ListTranscriptsResponse();
  buildCounterListTranscriptsResponse++;
  if (buildCounterListTranscriptsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transcripts = buildUnnamed5();
  }
  buildCounterListTranscriptsResponse--;
  return o;
}

void checkListTranscriptsResponse(api.ListTranscriptsResponse o) {
  buildCounterListTranscriptsResponse++;
  if (buildCounterListTranscriptsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.transcripts!);
  }
  buildCounterListTranscriptsResponse--;
}

core.int buildCounterParticipant = 0;
api.Participant buildParticipant() {
  final o = api.Participant();
  buildCounterParticipant++;
  if (buildCounterParticipant < 3) {
    o.anonymousUser = buildAnonymousUser();
    o.earliestStartTime = 'foo';
    o.latestEndTime = 'foo';
    o.name = 'foo';
    o.phoneUser = buildPhoneUser();
    o.signedinUser = buildSignedinUser();
  }
  buildCounterParticipant--;
  return o;
}

void checkParticipant(api.Participant o) {
  buildCounterParticipant++;
  if (buildCounterParticipant < 3) {
    checkAnonymousUser(o.anonymousUser!);
    unittest.expect(
      o.earliestStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPhoneUser(o.phoneUser!);
    checkSignedinUser(o.signedinUser!);
  }
  buildCounterParticipant--;
}

core.int buildCounterParticipantSession = 0;
api.ParticipantSession buildParticipantSession() {
  final o = api.ParticipantSession();
  buildCounterParticipantSession++;
  if (buildCounterParticipantSession < 3) {
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
  }
  buildCounterParticipantSession--;
  return o;
}

void checkParticipantSession(api.ParticipantSession o) {
  buildCounterParticipantSession++;
  if (buildCounterParticipantSession < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterParticipantSession--;
}

core.int buildCounterPhoneUser = 0;
api.PhoneUser buildPhoneUser() {
  final o = api.PhoneUser();
  buildCounterPhoneUser++;
  if (buildCounterPhoneUser < 3) {
    o.displayName = 'foo';
  }
  buildCounterPhoneUser--;
  return o;
}

void checkPhoneUser(api.PhoneUser o) {
  buildCounterPhoneUser++;
  if (buildCounterPhoneUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoneUser--;
}

core.int buildCounterRecording = 0;
api.Recording buildRecording() {
  final o = api.Recording();
  buildCounterRecording++;
  if (buildCounterRecording < 3) {
    o.driveDestination = buildDriveDestination();
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterRecording--;
  return o;
}

void checkRecording(api.Recording o) {
  buildCounterRecording++;
  if (buildCounterRecording < 3) {
    checkDriveDestination(o.driveDestination!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecording--;
}

core.int buildCounterSignedinUser = 0;
api.SignedinUser buildSignedinUser() {
  final o = api.SignedinUser();
  buildCounterSignedinUser++;
  if (buildCounterSignedinUser < 3) {
    o.displayName = 'foo';
    o.user = 'foo';
  }
  buildCounterSignedinUser--;
  return o;
}

void checkSignedinUser(api.SignedinUser o) {
  buildCounterSignedinUser++;
  if (buildCounterSignedinUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignedinUser--;
}

core.int buildCounterSpace = 0;
api.Space buildSpace() {
  final o = api.Space();
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    o.activeConference = buildActiveConference();
    o.config = buildSpaceConfig();
    o.meetingCode = 'foo';
    o.meetingUri = 'foo';
    o.name = 'foo';
  }
  buildCounterSpace--;
  return o;
}

void checkSpace(api.Space o) {
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    checkActiveConference(o.activeConference!);
    checkSpaceConfig(o.config!);
    unittest.expect(
      o.meetingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meetingUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpace--;
}

core.int buildCounterSpaceConfig = 0;
api.SpaceConfig buildSpaceConfig() {
  final o = api.SpaceConfig();
  buildCounterSpaceConfig++;
  if (buildCounterSpaceConfig < 3) {
    o.accessType = 'foo';
    o.entryPointAccess = 'foo';
  }
  buildCounterSpaceConfig--;
  return o;
}

void checkSpaceConfig(api.SpaceConfig o) {
  buildCounterSpaceConfig++;
  if (buildCounterSpaceConfig < 3) {
    unittest.expect(
      o.accessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPointAccess!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpaceConfig--;
}

core.int buildCounterTranscript = 0;
api.Transcript buildTranscript() {
  final o = api.Transcript();
  buildCounterTranscript++;
  if (buildCounterTranscript < 3) {
    o.docsDestination = buildDocsDestination();
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterTranscript--;
  return o;
}

void checkTranscript(api.Transcript o) {
  buildCounterTranscript++;
  if (buildCounterTranscript < 3) {
    checkDocsDestination(o.docsDestination!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranscript--;
}

core.int buildCounterTranscriptEntry = 0;
api.TranscriptEntry buildTranscriptEntry() {
  final o = api.TranscriptEntry();
  buildCounterTranscriptEntry++;
  if (buildCounterTranscriptEntry < 3) {
    o.endTime = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.participant = 'foo';
    o.startTime = 'foo';
    o.text = 'foo';
  }
  buildCounterTranscriptEntry--;
  return o;
}

void checkTranscriptEntry(api.TranscriptEntry o) {
  buildCounterTranscriptEntry++;
  if (buildCounterTranscriptEntry < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.participant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranscriptEntry--;
}

void main() {
  unittest.group('obj-schema-ActiveConference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveConference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveConference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActiveConference(od);
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

  unittest.group('obj-schema-ConferenceRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConferenceRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConferenceRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConferenceRecord(od);
    });
  });

  unittest.group('obj-schema-DocsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocsDestination(od);
    });
  });

  unittest.group('obj-schema-DriveDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveDestination(od);
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

  unittest.group('obj-schema-EndActiveConferenceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndActiveConferenceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndActiveConferenceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndActiveConferenceRequest(od);
    });
  });

  unittest.group('obj-schema-ListConferenceRecordsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConferenceRecordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConferenceRecordsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConferenceRecordsResponse(od);
    });
  });

  unittest.group('obj-schema-ListParticipantSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListParticipantSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListParticipantSessionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListParticipantSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListParticipantsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListParticipantsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListParticipantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListParticipantsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRecordingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRecordingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRecordingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRecordingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTranscriptEntriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTranscriptEntriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTranscriptEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTranscriptEntriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTranscriptsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTranscriptsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTranscriptsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTranscriptsResponse(od);
    });
  });

  unittest.group('obj-schema-Participant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParticipant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Participant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParticipant(od);
    });
  });

  unittest.group('obj-schema-ParticipantSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParticipantSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParticipantSession.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParticipantSession(od);
    });
  });

  unittest.group('obj-schema-PhoneUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoneUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PhoneUser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhoneUser(od);
    });
  });

  unittest.group('obj-schema-Recording', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecording();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recording.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecording(od);
    });
  });

  unittest.group('obj-schema-SignedinUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignedinUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignedinUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignedinUser(od);
    });
  });

  unittest.group('obj-schema-Space', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Space.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpace(od);
    });
  });

  unittest.group('obj-schema-SpaceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpaceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpaceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpaceConfig(od);
    });
  });

  unittest.group('obj-schema-Transcript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Transcript.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTranscript(od);
    });
  });

  unittest.group('obj-schema-TranscriptEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscriptEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranscriptEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranscriptEntry(od);
    });
  });

  unittest.group('resource-ConferenceRecordsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildConferenceRecord());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConferenceRecord(response as api.ConferenceRecord);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('v2/conferenceRecords'),
        );
        pathOffset += 20;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListConferenceRecordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConferenceRecordsResponse(
          response as api.ListConferenceRecordsResponse);
    });
  });

  unittest.group('resource-ConferenceRecordsParticipantsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.participants;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildParticipant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkParticipant(response as api.Participant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.participants;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListParticipantsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListParticipantsResponse(response as api.ListParticipantsResponse);
    });
  });

  unittest.group(
      'resource-ConferenceRecordsParticipantsParticipantSessionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MeetApi(mock).conferenceRecords.participants.participantSessions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildParticipantSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkParticipantSession(response as api.ParticipantSession);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MeetApi(mock).conferenceRecords.participants.participantSessions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp =
            convert.json.encode(buildListParticipantSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListParticipantSessionsResponse(
          response as api.ListParticipantSessionsResponse);
    });
  });

  unittest.group('resource-ConferenceRecordsRecordingsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.recordings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildRecording());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRecording(response as api.Recording);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.recordings;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListRecordingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRecordingsResponse(response as api.ListRecordingsResponse);
    });
  });

  unittest.group('resource-ConferenceRecordsTranscriptsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.transcripts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildTranscript());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTranscript(response as api.Transcript);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.transcripts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListTranscriptsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTranscriptsResponse(response as api.ListTranscriptsResponse);
    });
  });

  unittest.group('resource-ConferenceRecordsTranscriptsEntriesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.transcripts.entries;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildTranscriptEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTranscriptEntry(response as api.TranscriptEntry);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).conferenceRecords.transcripts.entries;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListTranscriptEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTranscriptEntriesResponse(
          response as api.ListTranscriptEntriesResponse);
    });
  });

  unittest.group('resource-SpacesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).spaces;
      final arg_request = buildSpace();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Space.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpace(obj);

        final path = req.url.path;
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
          unittest.equals('v2/spaces'),
        );
        pathOffset += 9;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkSpace(response as api.Space);
    });

    unittest.test('method--endActiveConference', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).spaces;
      final arg_request = buildEndActiveConferenceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EndActiveConferenceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEndActiveConferenceRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
      final response = await res.endActiveConference(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).spaces;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSpace(response as api.Space);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MeetApi(mock).spaces;
      final arg_request = buildSpace();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Space.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpace(obj);

        final path = req.url.path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSpace(response as api.Space);
    });
  });
}
