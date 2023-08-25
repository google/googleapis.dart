// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/gmail/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAutoForwarding = 0;
api.AutoForwarding buildAutoForwarding() {
  final o = api.AutoForwarding();
  buildCounterAutoForwarding++;
  if (buildCounterAutoForwarding < 3) {
    o.disposition = 'foo';
    o.emailAddress = 'foo';
    o.enabled = true;
  }
  buildCounterAutoForwarding--;
  return o;
}

void checkAutoForwarding(api.AutoForwarding o) {
  buildCounterAutoForwarding++;
  if (buildCounterAutoForwarding < 3) {
    unittest.expect(
      o.disposition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAutoForwarding--;
}

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

core.int buildCounterBatchDeleteMessagesRequest = 0;
api.BatchDeleteMessagesRequest buildBatchDeleteMessagesRequest() {
  final o = api.BatchDeleteMessagesRequest();
  buildCounterBatchDeleteMessagesRequest++;
  if (buildCounterBatchDeleteMessagesRequest < 3) {
    o.ids = buildUnnamed0();
  }
  buildCounterBatchDeleteMessagesRequest--;
  return o;
}

void checkBatchDeleteMessagesRequest(api.BatchDeleteMessagesRequest o) {
  buildCounterBatchDeleteMessagesRequest++;
  if (buildCounterBatchDeleteMessagesRequest < 3) {
    checkUnnamed0(o.ids!);
  }
  buildCounterBatchDeleteMessagesRequest--;
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

core.int buildCounterBatchModifyMessagesRequest = 0;
api.BatchModifyMessagesRequest buildBatchModifyMessagesRequest() {
  final o = api.BatchModifyMessagesRequest();
  buildCounterBatchModifyMessagesRequest++;
  if (buildCounterBatchModifyMessagesRequest < 3) {
    o.addLabelIds = buildUnnamed1();
    o.ids = buildUnnamed2();
    o.removeLabelIds = buildUnnamed3();
  }
  buildCounterBatchModifyMessagesRequest--;
  return o;
}

void checkBatchModifyMessagesRequest(api.BatchModifyMessagesRequest o) {
  buildCounterBatchModifyMessagesRequest++;
  if (buildCounterBatchModifyMessagesRequest < 3) {
    checkUnnamed1(o.addLabelIds!);
    checkUnnamed2(o.ids!);
    checkUnnamed3(o.removeLabelIds!);
  }
  buildCounterBatchModifyMessagesRequest--;
}

core.int buildCounterCseIdentity = 0;
api.CseIdentity buildCseIdentity() {
  final o = api.CseIdentity();
  buildCounterCseIdentity++;
  if (buildCounterCseIdentity < 3) {
    o.emailAddress = 'foo';
    o.primaryKeyPairId = 'foo';
    o.signAndEncryptKeyPairs = buildSignAndEncryptKeyPairs();
  }
  buildCounterCseIdentity--;
  return o;
}

void checkCseIdentity(api.CseIdentity o) {
  buildCounterCseIdentity++;
  if (buildCounterCseIdentity < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryKeyPairId!,
      unittest.equals('foo'),
    );
    checkSignAndEncryptKeyPairs(o.signAndEncryptKeyPairs!);
  }
  buildCounterCseIdentity--;
}

core.List<api.CsePrivateKeyMetadata> buildUnnamed4() => [
      buildCsePrivateKeyMetadata(),
      buildCsePrivateKeyMetadata(),
    ];

void checkUnnamed4(core.List<api.CsePrivateKeyMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCsePrivateKeyMetadata(o[0]);
  checkCsePrivateKeyMetadata(o[1]);
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

core.int buildCounterCseKeyPair = 0;
api.CseKeyPair buildCseKeyPair() {
  final o = api.CseKeyPair();
  buildCounterCseKeyPair++;
  if (buildCounterCseKeyPair < 3) {
    o.disableTime = 'foo';
    o.enablementState = 'foo';
    o.keyPairId = 'foo';
    o.pem = 'foo';
    o.pkcs7 = 'foo';
    o.privateKeyMetadata = buildUnnamed4();
    o.subjectEmailAddresses = buildUnnamed5();
  }
  buildCounterCseKeyPair--;
  return o;
}

void checkCseKeyPair(api.CseKeyPair o) {
  buildCounterCseKeyPair++;
  if (buildCounterCseKeyPair < 3) {
    unittest.expect(
      o.disableTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enablementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyPairId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pkcs7!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.privateKeyMetadata!);
    checkUnnamed5(o.subjectEmailAddresses!);
  }
  buildCounterCseKeyPair--;
}

core.int buildCounterCsePrivateKeyMetadata = 0;
api.CsePrivateKeyMetadata buildCsePrivateKeyMetadata() {
  final o = api.CsePrivateKeyMetadata();
  buildCounterCsePrivateKeyMetadata++;
  if (buildCounterCsePrivateKeyMetadata < 3) {
    o.hardwareKeyMetadata = buildHardwareKeyMetadata();
    o.kaclsKeyMetadata = buildKaclsKeyMetadata();
    o.privateKeyMetadataId = 'foo';
  }
  buildCounterCsePrivateKeyMetadata--;
  return o;
}

void checkCsePrivateKeyMetadata(api.CsePrivateKeyMetadata o) {
  buildCounterCsePrivateKeyMetadata++;
  if (buildCounterCsePrivateKeyMetadata < 3) {
    checkHardwareKeyMetadata(o.hardwareKeyMetadata!);
    checkKaclsKeyMetadata(o.kaclsKeyMetadata!);
    unittest.expect(
      o.privateKeyMetadataId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCsePrivateKeyMetadata--;
}

core.int buildCounterDelegate = 0;
api.Delegate buildDelegate() {
  final o = api.Delegate();
  buildCounterDelegate++;
  if (buildCounterDelegate < 3) {
    o.delegateEmail = 'foo';
    o.verificationStatus = 'foo';
  }
  buildCounterDelegate--;
  return o;
}

void checkDelegate(api.Delegate o) {
  buildCounterDelegate++;
  if (buildCounterDelegate < 3) {
    unittest.expect(
      o.delegateEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterDelegate--;
}

core.int buildCounterDisableCseKeyPairRequest = 0;
api.DisableCseKeyPairRequest buildDisableCseKeyPairRequest() {
  final o = api.DisableCseKeyPairRequest();
  buildCounterDisableCseKeyPairRequest++;
  if (buildCounterDisableCseKeyPairRequest < 3) {}
  buildCounterDisableCseKeyPairRequest--;
  return o;
}

void checkDisableCseKeyPairRequest(api.DisableCseKeyPairRequest o) {
  buildCounterDisableCseKeyPairRequest++;
  if (buildCounterDisableCseKeyPairRequest < 3) {}
  buildCounterDisableCseKeyPairRequest--;
}

core.int buildCounterDraft = 0;
api.Draft buildDraft() {
  final o = api.Draft();
  buildCounterDraft++;
  if (buildCounterDraft < 3) {
    o.id = 'foo';
    o.message = buildMessage();
  }
  buildCounterDraft--;
  return o;
}

void checkDraft(api.Draft o) {
  buildCounterDraft++;
  if (buildCounterDraft < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkMessage(o.message!);
  }
  buildCounterDraft--;
}

core.int buildCounterEnableCseKeyPairRequest = 0;
api.EnableCseKeyPairRequest buildEnableCseKeyPairRequest() {
  final o = api.EnableCseKeyPairRequest();
  buildCounterEnableCseKeyPairRequest++;
  if (buildCounterEnableCseKeyPairRequest < 3) {}
  buildCounterEnableCseKeyPairRequest--;
  return o;
}

void checkEnableCseKeyPairRequest(api.EnableCseKeyPairRequest o) {
  buildCounterEnableCseKeyPairRequest++;
  if (buildCounterEnableCseKeyPairRequest < 3) {}
  buildCounterEnableCseKeyPairRequest--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.action = buildFilterAction();
    o.criteria = buildFilterCriteria();
    o.id = 'foo';
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkFilterAction(o.action!);
    checkFilterCriteria(o.criteria!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilter--;
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterFilterAction = 0;
api.FilterAction buildFilterAction() {
  final o = api.FilterAction();
  buildCounterFilterAction++;
  if (buildCounterFilterAction < 3) {
    o.addLabelIds = buildUnnamed6();
    o.forward = 'foo';
    o.removeLabelIds = buildUnnamed7();
  }
  buildCounterFilterAction--;
  return o;
}

void checkFilterAction(api.FilterAction o) {
  buildCounterFilterAction++;
  if (buildCounterFilterAction < 3) {
    checkUnnamed6(o.addLabelIds!);
    unittest.expect(
      o.forward!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.removeLabelIds!);
  }
  buildCounterFilterAction--;
}

core.int buildCounterFilterCriteria = 0;
api.FilterCriteria buildFilterCriteria() {
  final o = api.FilterCriteria();
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    o.excludeChats = true;
    o.from = 'foo';
    o.hasAttachment = true;
    o.negatedQuery = 'foo';
    o.query = 'foo';
    o.size = 42;
    o.sizeComparison = 'foo';
    o.subject = 'foo';
    o.to = 'foo';
  }
  buildCounterFilterCriteria--;
  return o;
}

void checkFilterCriteria(api.FilterCriteria o) {
  buildCounterFilterCriteria++;
  if (buildCounterFilterCriteria < 3) {
    unittest.expect(o.excludeChats!, unittest.isTrue);
    unittest.expect(
      o.from!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasAttachment!, unittest.isTrue);
    unittest.expect(
      o.negatedQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeComparison!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.to!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterCriteria--;
}

core.int buildCounterForwardingAddress = 0;
api.ForwardingAddress buildForwardingAddress() {
  final o = api.ForwardingAddress();
  buildCounterForwardingAddress++;
  if (buildCounterForwardingAddress < 3) {
    o.forwardingEmail = 'foo';
    o.verificationStatus = 'foo';
  }
  buildCounterForwardingAddress--;
  return o;
}

void checkForwardingAddress(api.ForwardingAddress o) {
  buildCounterForwardingAddress++;
  if (buildCounterForwardingAddress < 3) {
    unittest.expect(
      o.forwardingEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterForwardingAddress--;
}

core.int buildCounterHardwareKeyMetadata = 0;
api.HardwareKeyMetadata buildHardwareKeyMetadata() {
  final o = api.HardwareKeyMetadata();
  buildCounterHardwareKeyMetadata++;
  if (buildCounterHardwareKeyMetadata < 3) {
    o.description = 'foo';
  }
  buildCounterHardwareKeyMetadata--;
  return o;
}

void checkHardwareKeyMetadata(api.HardwareKeyMetadata o) {
  buildCounterHardwareKeyMetadata++;
  if (buildCounterHardwareKeyMetadata < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterHardwareKeyMetadata--;
}

core.List<api.HistoryLabelAdded> buildUnnamed8() => [
      buildHistoryLabelAdded(),
      buildHistoryLabelAdded(),
    ];

void checkUnnamed8(core.List<api.HistoryLabelAdded> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryLabelAdded(o[0]);
  checkHistoryLabelAdded(o[1]);
}

core.List<api.HistoryLabelRemoved> buildUnnamed9() => [
      buildHistoryLabelRemoved(),
      buildHistoryLabelRemoved(),
    ];

void checkUnnamed9(core.List<api.HistoryLabelRemoved> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryLabelRemoved(o[0]);
  checkHistoryLabelRemoved(o[1]);
}

core.List<api.Message> buildUnnamed10() => [
      buildMessage(),
      buildMessage(),
    ];

void checkUnnamed10(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.HistoryMessageAdded> buildUnnamed11() => [
      buildHistoryMessageAdded(),
      buildHistoryMessageAdded(),
    ];

void checkUnnamed11(core.List<api.HistoryMessageAdded> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryMessageAdded(o[0]);
  checkHistoryMessageAdded(o[1]);
}

core.List<api.HistoryMessageDeleted> buildUnnamed12() => [
      buildHistoryMessageDeleted(),
      buildHistoryMessageDeleted(),
    ];

void checkUnnamed12(core.List<api.HistoryMessageDeleted> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryMessageDeleted(o[0]);
  checkHistoryMessageDeleted(o[1]);
}

core.int buildCounterHistory = 0;
api.History buildHistory() {
  final o = api.History();
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    o.id = 'foo';
    o.labelsAdded = buildUnnamed8();
    o.labelsRemoved = buildUnnamed9();
    o.messages = buildUnnamed10();
    o.messagesAdded = buildUnnamed11();
    o.messagesDeleted = buildUnnamed12();
  }
  buildCounterHistory--;
  return o;
}

void checkHistory(api.History o) {
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labelsAdded!);
    checkUnnamed9(o.labelsRemoved!);
    checkUnnamed10(o.messages!);
    checkUnnamed11(o.messagesAdded!);
    checkUnnamed12(o.messagesDeleted!);
  }
  buildCounterHistory--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterHistoryLabelAdded = 0;
api.HistoryLabelAdded buildHistoryLabelAdded() {
  final o = api.HistoryLabelAdded();
  buildCounterHistoryLabelAdded++;
  if (buildCounterHistoryLabelAdded < 3) {
    o.labelIds = buildUnnamed13();
    o.message = buildMessage();
  }
  buildCounterHistoryLabelAdded--;
  return o;
}

void checkHistoryLabelAdded(api.HistoryLabelAdded o) {
  buildCounterHistoryLabelAdded++;
  if (buildCounterHistoryLabelAdded < 3) {
    checkUnnamed13(o.labelIds!);
    checkMessage(o.message!);
  }
  buildCounterHistoryLabelAdded--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterHistoryLabelRemoved = 0;
api.HistoryLabelRemoved buildHistoryLabelRemoved() {
  final o = api.HistoryLabelRemoved();
  buildCounterHistoryLabelRemoved++;
  if (buildCounterHistoryLabelRemoved < 3) {
    o.labelIds = buildUnnamed14();
    o.message = buildMessage();
  }
  buildCounterHistoryLabelRemoved--;
  return o;
}

void checkHistoryLabelRemoved(api.HistoryLabelRemoved o) {
  buildCounterHistoryLabelRemoved++;
  if (buildCounterHistoryLabelRemoved < 3) {
    checkUnnamed14(o.labelIds!);
    checkMessage(o.message!);
  }
  buildCounterHistoryLabelRemoved--;
}

core.int buildCounterHistoryMessageAdded = 0;
api.HistoryMessageAdded buildHistoryMessageAdded() {
  final o = api.HistoryMessageAdded();
  buildCounterHistoryMessageAdded++;
  if (buildCounterHistoryMessageAdded < 3) {
    o.message = buildMessage();
  }
  buildCounterHistoryMessageAdded--;
  return o;
}

void checkHistoryMessageAdded(api.HistoryMessageAdded o) {
  buildCounterHistoryMessageAdded++;
  if (buildCounterHistoryMessageAdded < 3) {
    checkMessage(o.message!);
  }
  buildCounterHistoryMessageAdded--;
}

core.int buildCounterHistoryMessageDeleted = 0;
api.HistoryMessageDeleted buildHistoryMessageDeleted() {
  final o = api.HistoryMessageDeleted();
  buildCounterHistoryMessageDeleted++;
  if (buildCounterHistoryMessageDeleted < 3) {
    o.message = buildMessage();
  }
  buildCounterHistoryMessageDeleted--;
  return o;
}

void checkHistoryMessageDeleted(api.HistoryMessageDeleted o) {
  buildCounterHistoryMessageDeleted++;
  if (buildCounterHistoryMessageDeleted < 3) {
    checkMessage(o.message!);
  }
  buildCounterHistoryMessageDeleted--;
}

core.int buildCounterImapSettings = 0;
api.ImapSettings buildImapSettings() {
  final o = api.ImapSettings();
  buildCounterImapSettings++;
  if (buildCounterImapSettings < 3) {
    o.autoExpunge = true;
    o.enabled = true;
    o.expungeBehavior = 'foo';
    o.maxFolderSize = 42;
  }
  buildCounterImapSettings--;
  return o;
}

void checkImapSettings(api.ImapSettings o) {
  buildCounterImapSettings++;
  if (buildCounterImapSettings < 3) {
    unittest.expect(o.autoExpunge!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.expungeBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxFolderSize!,
      unittest.equals(42),
    );
  }
  buildCounterImapSettings--;
}

core.int buildCounterKaclsKeyMetadata = 0;
api.KaclsKeyMetadata buildKaclsKeyMetadata() {
  final o = api.KaclsKeyMetadata();
  buildCounterKaclsKeyMetadata++;
  if (buildCounterKaclsKeyMetadata < 3) {
    o.kaclsData = 'foo';
    o.kaclsUri = 'foo';
  }
  buildCounterKaclsKeyMetadata--;
  return o;
}

void checkKaclsKeyMetadata(api.KaclsKeyMetadata o) {
  buildCounterKaclsKeyMetadata++;
  if (buildCounterKaclsKeyMetadata < 3) {
    unittest.expect(
      o.kaclsData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kaclsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterKaclsKeyMetadata--;
}

core.int buildCounterLabel = 0;
api.Label buildLabel() {
  final o = api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.color = buildLabelColor();
    o.id = 'foo';
    o.labelListVisibility = 'foo';
    o.messageListVisibility = 'foo';
    o.messagesTotal = 42;
    o.messagesUnread = 42;
    o.name = 'foo';
    o.threadsTotal = 42;
    o.threadsUnread = 42;
    o.type = 'foo';
  }
  buildCounterLabel--;
  return o;
}

void checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    checkLabelColor(o.color!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelListVisibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageListVisibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messagesTotal!,
      unittest.equals(42),
    );
    unittest.expect(
      o.messagesUnread!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threadsTotal!,
      unittest.equals(42),
    );
    unittest.expect(
      o.threadsUnread!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabel--;
}

core.int buildCounterLabelColor = 0;
api.LabelColor buildLabelColor() {
  final o = api.LabelColor();
  buildCounterLabelColor++;
  if (buildCounterLabelColor < 3) {
    o.backgroundColor = 'foo';
    o.textColor = 'foo';
  }
  buildCounterLabelColor--;
  return o;
}

void checkLabelColor(api.LabelColor o) {
  buildCounterLabelColor++;
  if (buildCounterLabelColor < 3) {
    unittest.expect(
      o.backgroundColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelColor--;
}

core.int buildCounterLanguageSettings = 0;
api.LanguageSettings buildLanguageSettings() {
  final o = api.LanguageSettings();
  buildCounterLanguageSettings++;
  if (buildCounterLanguageSettings < 3) {
    o.displayLanguage = 'foo';
  }
  buildCounterLanguageSettings--;
  return o;
}

void checkLanguageSettings(api.LanguageSettings o) {
  buildCounterLanguageSettings++;
  if (buildCounterLanguageSettings < 3) {
    unittest.expect(
      o.displayLanguage!,
      unittest.equals('foo'),
    );
  }
  buildCounterLanguageSettings--;
}

core.List<api.CseIdentity> buildUnnamed15() => [
      buildCseIdentity(),
      buildCseIdentity(),
    ];

void checkUnnamed15(core.List<api.CseIdentity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCseIdentity(o[0]);
  checkCseIdentity(o[1]);
}

core.int buildCounterListCseIdentitiesResponse = 0;
api.ListCseIdentitiesResponse buildListCseIdentitiesResponse() {
  final o = api.ListCseIdentitiesResponse();
  buildCounterListCseIdentitiesResponse++;
  if (buildCounterListCseIdentitiesResponse < 3) {
    o.cseIdentities = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListCseIdentitiesResponse--;
  return o;
}

void checkListCseIdentitiesResponse(api.ListCseIdentitiesResponse o) {
  buildCounterListCseIdentitiesResponse++;
  if (buildCounterListCseIdentitiesResponse < 3) {
    checkUnnamed15(o.cseIdentities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCseIdentitiesResponse--;
}

core.List<api.CseKeyPair> buildUnnamed16() => [
      buildCseKeyPair(),
      buildCseKeyPair(),
    ];

void checkUnnamed16(core.List<api.CseKeyPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCseKeyPair(o[0]);
  checkCseKeyPair(o[1]);
}

core.int buildCounterListCseKeyPairsResponse = 0;
api.ListCseKeyPairsResponse buildListCseKeyPairsResponse() {
  final o = api.ListCseKeyPairsResponse();
  buildCounterListCseKeyPairsResponse++;
  if (buildCounterListCseKeyPairsResponse < 3) {
    o.cseKeyPairs = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListCseKeyPairsResponse--;
  return o;
}

void checkListCseKeyPairsResponse(api.ListCseKeyPairsResponse o) {
  buildCounterListCseKeyPairsResponse++;
  if (buildCounterListCseKeyPairsResponse < 3) {
    checkUnnamed16(o.cseKeyPairs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCseKeyPairsResponse--;
}

core.List<api.Delegate> buildUnnamed17() => [
      buildDelegate(),
      buildDelegate(),
    ];

void checkUnnamed17(core.List<api.Delegate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDelegate(o[0]);
  checkDelegate(o[1]);
}

core.int buildCounterListDelegatesResponse = 0;
api.ListDelegatesResponse buildListDelegatesResponse() {
  final o = api.ListDelegatesResponse();
  buildCounterListDelegatesResponse++;
  if (buildCounterListDelegatesResponse < 3) {
    o.delegates = buildUnnamed17();
  }
  buildCounterListDelegatesResponse--;
  return o;
}

void checkListDelegatesResponse(api.ListDelegatesResponse o) {
  buildCounterListDelegatesResponse++;
  if (buildCounterListDelegatesResponse < 3) {
    checkUnnamed17(o.delegates!);
  }
  buildCounterListDelegatesResponse--;
}

core.List<api.Draft> buildUnnamed18() => [
      buildDraft(),
      buildDraft(),
    ];

void checkUnnamed18(core.List<api.Draft> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDraft(o[0]);
  checkDraft(o[1]);
}

core.int buildCounterListDraftsResponse = 0;
api.ListDraftsResponse buildListDraftsResponse() {
  final o = api.ListDraftsResponse();
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    o.drafts = buildUnnamed18();
    o.nextPageToken = 'foo';
    o.resultSizeEstimate = 42;
  }
  buildCounterListDraftsResponse--;
  return o;
}

void checkListDraftsResponse(api.ListDraftsResponse o) {
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    checkUnnamed18(o.drafts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultSizeEstimate!,
      unittest.equals(42),
    );
  }
  buildCounterListDraftsResponse--;
}

core.List<api.Filter> buildUnnamed19() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed19(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterListFiltersResponse = 0;
api.ListFiltersResponse buildListFiltersResponse() {
  final o = api.ListFiltersResponse();
  buildCounterListFiltersResponse++;
  if (buildCounterListFiltersResponse < 3) {
    o.filter = buildUnnamed19();
  }
  buildCounterListFiltersResponse--;
  return o;
}

void checkListFiltersResponse(api.ListFiltersResponse o) {
  buildCounterListFiltersResponse++;
  if (buildCounterListFiltersResponse < 3) {
    checkUnnamed19(o.filter!);
  }
  buildCounterListFiltersResponse--;
}

core.List<api.ForwardingAddress> buildUnnamed20() => [
      buildForwardingAddress(),
      buildForwardingAddress(),
    ];

void checkUnnamed20(core.List<api.ForwardingAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingAddress(o[0]);
  checkForwardingAddress(o[1]);
}

core.int buildCounterListForwardingAddressesResponse = 0;
api.ListForwardingAddressesResponse buildListForwardingAddressesResponse() {
  final o = api.ListForwardingAddressesResponse();
  buildCounterListForwardingAddressesResponse++;
  if (buildCounterListForwardingAddressesResponse < 3) {
    o.forwardingAddresses = buildUnnamed20();
  }
  buildCounterListForwardingAddressesResponse--;
  return o;
}

void checkListForwardingAddressesResponse(
    api.ListForwardingAddressesResponse o) {
  buildCounterListForwardingAddressesResponse++;
  if (buildCounterListForwardingAddressesResponse < 3) {
    checkUnnamed20(o.forwardingAddresses!);
  }
  buildCounterListForwardingAddressesResponse--;
}

core.List<api.History> buildUnnamed21() => [
      buildHistory(),
      buildHistory(),
    ];

void checkUnnamed21(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoryResponse = 0;
api.ListHistoryResponse buildListHistoryResponse() {
  final o = api.ListHistoryResponse();
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    o.history = buildUnnamed21();
    o.historyId = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterListHistoryResponse--;
  return o;
}

void checkListHistoryResponse(api.ListHistoryResponse o) {
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    checkUnnamed21(o.history!);
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListHistoryResponse--;
}

core.List<api.Label> buildUnnamed22() => [
      buildLabel(),
      buildLabel(),
    ];

void checkUnnamed22(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterListLabelsResponse = 0;
api.ListLabelsResponse buildListLabelsResponse() {
  final o = api.ListLabelsResponse();
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    o.labels = buildUnnamed22();
  }
  buildCounterListLabelsResponse--;
  return o;
}

void checkListLabelsResponse(api.ListLabelsResponse o) {
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    checkUnnamed22(o.labels!);
  }
  buildCounterListLabelsResponse--;
}

core.List<api.Message> buildUnnamed23() => [
      buildMessage(),
      buildMessage(),
    ];

void checkUnnamed23(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
api.ListMessagesResponse buildListMessagesResponse() {
  final o = api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.messages = buildUnnamed23();
    o.nextPageToken = 'foo';
    o.resultSizeEstimate = 42;
  }
  buildCounterListMessagesResponse--;
  return o;
}

void checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed23(o.messages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultSizeEstimate!,
      unittest.equals(42),
    );
  }
  buildCounterListMessagesResponse--;
}

core.List<api.SendAs> buildUnnamed24() => [
      buildSendAs(),
      buildSendAs(),
    ];

void checkUnnamed24(core.List<api.SendAs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSendAs(o[0]);
  checkSendAs(o[1]);
}

core.int buildCounterListSendAsResponse = 0;
api.ListSendAsResponse buildListSendAsResponse() {
  final o = api.ListSendAsResponse();
  buildCounterListSendAsResponse++;
  if (buildCounterListSendAsResponse < 3) {
    o.sendAs = buildUnnamed24();
  }
  buildCounterListSendAsResponse--;
  return o;
}

void checkListSendAsResponse(api.ListSendAsResponse o) {
  buildCounterListSendAsResponse++;
  if (buildCounterListSendAsResponse < 3) {
    checkUnnamed24(o.sendAs!);
  }
  buildCounterListSendAsResponse--;
}

core.List<api.SmimeInfo> buildUnnamed25() => [
      buildSmimeInfo(),
      buildSmimeInfo(),
    ];

void checkUnnamed25(core.List<api.SmimeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSmimeInfo(o[0]);
  checkSmimeInfo(o[1]);
}

core.int buildCounterListSmimeInfoResponse = 0;
api.ListSmimeInfoResponse buildListSmimeInfoResponse() {
  final o = api.ListSmimeInfoResponse();
  buildCounterListSmimeInfoResponse++;
  if (buildCounterListSmimeInfoResponse < 3) {
    o.smimeInfo = buildUnnamed25();
  }
  buildCounterListSmimeInfoResponse--;
  return o;
}

void checkListSmimeInfoResponse(api.ListSmimeInfoResponse o) {
  buildCounterListSmimeInfoResponse++;
  if (buildCounterListSmimeInfoResponse < 3) {
    checkUnnamed25(o.smimeInfo!);
  }
  buildCounterListSmimeInfoResponse--;
}

core.List<api.Thread> buildUnnamed26() => [
      buildThread(),
      buildThread(),
    ];

void checkUnnamed26(core.List<api.Thread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThread(o[0]);
  checkThread(o[1]);
}

core.int buildCounterListThreadsResponse = 0;
api.ListThreadsResponse buildListThreadsResponse() {
  final o = api.ListThreadsResponse();
  buildCounterListThreadsResponse++;
  if (buildCounterListThreadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resultSizeEstimate = 42;
    o.threads = buildUnnamed26();
  }
  buildCounterListThreadsResponse--;
  return o;
}

void checkListThreadsResponse(api.ListThreadsResponse o) {
  buildCounterListThreadsResponse++;
  if (buildCounterListThreadsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultSizeEstimate!,
      unittest.equals(42),
    );
    checkUnnamed26(o.threads!);
  }
  buildCounterListThreadsResponse--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.historyId = 'foo';
    o.id = 'foo';
    o.internalDate = 'foo';
    o.labelIds = buildUnnamed27();
    o.payload = buildMessagePart();
    o.raw = 'foo';
    o.sizeEstimate = 42;
    o.snippet = 'foo';
    o.threadId = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalDate!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.labelIds!);
    checkMessagePart(o.payload!);
    unittest.expect(
      o.raw!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeEstimate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threadId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessage--;
}

core.List<api.MessagePartHeader> buildUnnamed28() => [
      buildMessagePartHeader(),
      buildMessagePartHeader(),
    ];

void checkUnnamed28(core.List<api.MessagePartHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessagePartHeader(o[0]);
  checkMessagePartHeader(o[1]);
}

core.List<api.MessagePart> buildUnnamed29() => [
      buildMessagePart(),
      buildMessagePart(),
    ];

void checkUnnamed29(core.List<api.MessagePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessagePart(o[0]);
  checkMessagePart(o[1]);
}

core.int buildCounterMessagePart = 0;
api.MessagePart buildMessagePart() {
  final o = api.MessagePart();
  buildCounterMessagePart++;
  if (buildCounterMessagePart < 3) {
    o.body = buildMessagePartBody();
    o.filename = 'foo';
    o.headers = buildUnnamed28();
    o.mimeType = 'foo';
    o.partId = 'foo';
    o.parts = buildUnnamed29();
  }
  buildCounterMessagePart--;
  return o;
}

void checkMessagePart(api.MessagePart o) {
  buildCounterMessagePart++;
  if (buildCounterMessagePart < 3) {
    checkMessagePartBody(o.body!);
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.headers!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partId!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.parts!);
  }
  buildCounterMessagePart--;
}

core.int buildCounterMessagePartBody = 0;
api.MessagePartBody buildMessagePartBody() {
  final o = api.MessagePartBody();
  buildCounterMessagePartBody++;
  if (buildCounterMessagePartBody < 3) {
    o.attachmentId = 'foo';
    o.data = 'foo';
    o.size = 42;
  }
  buildCounterMessagePartBody--;
  return o;
}

void checkMessagePartBody(api.MessagePartBody o) {
  buildCounterMessagePartBody++;
  if (buildCounterMessagePartBody < 3) {
    unittest.expect(
      o.attachmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals(42),
    );
  }
  buildCounterMessagePartBody--;
}

core.int buildCounterMessagePartHeader = 0;
api.MessagePartHeader buildMessagePartHeader() {
  final o = api.MessagePartHeader();
  buildCounterMessagePartHeader++;
  if (buildCounterMessagePartHeader < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterMessagePartHeader--;
  return o;
}

void checkMessagePartHeader(api.MessagePartHeader o) {
  buildCounterMessagePartHeader++;
  if (buildCounterMessagePartHeader < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessagePartHeader--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterModifyMessageRequest = 0;
api.ModifyMessageRequest buildModifyMessageRequest() {
  final o = api.ModifyMessageRequest();
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    o.addLabelIds = buildUnnamed30();
    o.removeLabelIds = buildUnnamed31();
  }
  buildCounterModifyMessageRequest--;
  return o;
}

void checkModifyMessageRequest(api.ModifyMessageRequest o) {
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    checkUnnamed30(o.addLabelIds!);
    checkUnnamed31(o.removeLabelIds!);
  }
  buildCounterModifyMessageRequest--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterModifyThreadRequest = 0;
api.ModifyThreadRequest buildModifyThreadRequest() {
  final o = api.ModifyThreadRequest();
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    o.addLabelIds = buildUnnamed32();
    o.removeLabelIds = buildUnnamed33();
  }
  buildCounterModifyThreadRequest--;
  return o;
}

void checkModifyThreadRequest(api.ModifyThreadRequest o) {
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    checkUnnamed32(o.addLabelIds!);
    checkUnnamed33(o.removeLabelIds!);
  }
  buildCounterModifyThreadRequest--;
}

core.int buildCounterObliterateCseKeyPairRequest = 0;
api.ObliterateCseKeyPairRequest buildObliterateCseKeyPairRequest() {
  final o = api.ObliterateCseKeyPairRequest();
  buildCounterObliterateCseKeyPairRequest++;
  if (buildCounterObliterateCseKeyPairRequest < 3) {}
  buildCounterObliterateCseKeyPairRequest--;
  return o;
}

void checkObliterateCseKeyPairRequest(api.ObliterateCseKeyPairRequest o) {
  buildCounterObliterateCseKeyPairRequest++;
  if (buildCounterObliterateCseKeyPairRequest < 3) {}
  buildCounterObliterateCseKeyPairRequest--;
}

core.int buildCounterPopSettings = 0;
api.PopSettings buildPopSettings() {
  final o = api.PopSettings();
  buildCounterPopSettings++;
  if (buildCounterPopSettings < 3) {
    o.accessWindow = 'foo';
    o.disposition = 'foo';
  }
  buildCounterPopSettings--;
  return o;
}

void checkPopSettings(api.PopSettings o) {
  buildCounterPopSettings++;
  if (buildCounterPopSettings < 3) {
    unittest.expect(
      o.accessWindow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterPopSettings--;
}

core.int buildCounterProfile = 0;
api.Profile buildProfile() {
  final o = api.Profile();
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    o.emailAddress = 'foo';
    o.historyId = 'foo';
    o.messagesTotal = 42;
    o.threadsTotal = 42;
  }
  buildCounterProfile--;
  return o;
}

void checkProfile(api.Profile o) {
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messagesTotal!,
      unittest.equals(42),
    );
    unittest.expect(
      o.threadsTotal!,
      unittest.equals(42),
    );
  }
  buildCounterProfile--;
}

core.int buildCounterSendAs = 0;
api.SendAs buildSendAs() {
  final o = api.SendAs();
  buildCounterSendAs++;
  if (buildCounterSendAs < 3) {
    o.displayName = 'foo';
    o.isDefault = true;
    o.isPrimary = true;
    o.replyToAddress = 'foo';
    o.sendAsEmail = 'foo';
    o.signature = 'foo';
    o.smtpMsa = buildSmtpMsa();
    o.treatAsAlias = true;
    o.verificationStatus = 'foo';
  }
  buildCounterSendAs--;
  return o;
}

void checkSendAs(api.SendAs o) {
  buildCounterSendAs++;
  if (buildCounterSendAs < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(o.isPrimary!, unittest.isTrue);
    unittest.expect(
      o.replyToAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sendAsEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
    checkSmtpMsa(o.smtpMsa!);
    unittest.expect(o.treatAsAlias!, unittest.isTrue);
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterSendAs--;
}

core.int buildCounterSignAndEncryptKeyPairs = 0;
api.SignAndEncryptKeyPairs buildSignAndEncryptKeyPairs() {
  final o = api.SignAndEncryptKeyPairs();
  buildCounterSignAndEncryptKeyPairs++;
  if (buildCounterSignAndEncryptKeyPairs < 3) {
    o.encryptionKeyPairId = 'foo';
    o.signingKeyPairId = 'foo';
  }
  buildCounterSignAndEncryptKeyPairs--;
  return o;
}

void checkSignAndEncryptKeyPairs(api.SignAndEncryptKeyPairs o) {
  buildCounterSignAndEncryptKeyPairs++;
  if (buildCounterSignAndEncryptKeyPairs < 3) {
    unittest.expect(
      o.encryptionKeyPairId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signingKeyPairId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignAndEncryptKeyPairs--;
}

core.int buildCounterSmimeInfo = 0;
api.SmimeInfo buildSmimeInfo() {
  final o = api.SmimeInfo();
  buildCounterSmimeInfo++;
  if (buildCounterSmimeInfo < 3) {
    o.encryptedKeyPassword = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.isDefault = true;
    o.issuerCn = 'foo';
    o.pem = 'foo';
    o.pkcs12 = 'foo';
  }
  buildCounterSmimeInfo--;
  return o;
}

void checkSmimeInfo(api.SmimeInfo o) {
  buildCounterSmimeInfo++;
  if (buildCounterSmimeInfo < 3) {
    unittest.expect(
      o.encryptedKeyPassword!,
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
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(
      o.issuerCn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pkcs12!,
      unittest.equals('foo'),
    );
  }
  buildCounterSmimeInfo--;
}

core.int buildCounterSmtpMsa = 0;
api.SmtpMsa buildSmtpMsa() {
  final o = api.SmtpMsa();
  buildCounterSmtpMsa++;
  if (buildCounterSmtpMsa < 3) {
    o.host = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.securityMode = 'foo';
    o.username = 'foo';
  }
  buildCounterSmtpMsa--;
  return o;
}

void checkSmtpMsa(api.SmtpMsa o) {
  buildCounterSmtpMsa++;
  if (buildCounterSmtpMsa < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.securityMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterSmtpMsa--;
}

core.List<api.Message> buildUnnamed34() => [
      buildMessage(),
      buildMessage(),
    ];

void checkUnnamed34(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterThread = 0;
api.Thread buildThread() {
  final o = api.Thread();
  buildCounterThread++;
  if (buildCounterThread < 3) {
    o.historyId = 'foo';
    o.id = 'foo';
    o.messages = buildUnnamed34();
    o.snippet = 'foo';
  }
  buildCounterThread--;
  return o;
}

void checkThread(api.Thread o) {
  buildCounterThread++;
  if (buildCounterThread < 3) {
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.messages!);
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterThread--;
}

core.int buildCounterVacationSettings = 0;
api.VacationSettings buildVacationSettings() {
  final o = api.VacationSettings();
  buildCounterVacationSettings++;
  if (buildCounterVacationSettings < 3) {
    o.enableAutoReply = true;
    o.endTime = 'foo';
    o.responseBodyHtml = 'foo';
    o.responseBodyPlainText = 'foo';
    o.responseSubject = 'foo';
    o.restrictToContacts = true;
    o.restrictToDomain = true;
    o.startTime = 'foo';
  }
  buildCounterVacationSettings--;
  return o;
}

void checkVacationSettings(api.VacationSettings o) {
  buildCounterVacationSettings++;
  if (buildCounterVacationSettings < 3) {
    unittest.expect(o.enableAutoReply!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseBodyHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseBodyPlainText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseSubject!,
      unittest.equals('foo'),
    );
    unittest.expect(o.restrictToContacts!, unittest.isTrue);
    unittest.expect(o.restrictToDomain!, unittest.isTrue);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVacationSettings--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterWatchRequest = 0;
api.WatchRequest buildWatchRequest() {
  final o = api.WatchRequest();
  buildCounterWatchRequest++;
  if (buildCounterWatchRequest < 3) {
    o.labelFilterAction = 'foo';
    o.labelFilterBehavior = 'foo';
    o.labelIds = buildUnnamed35();
    o.topicName = 'foo';
  }
  buildCounterWatchRequest--;
  return o;
}

void checkWatchRequest(api.WatchRequest o) {
  buildCounterWatchRequest++;
  if (buildCounterWatchRequest < 3) {
    unittest.expect(
      o.labelFilterAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelFilterBehavior!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.labelIds!);
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterWatchRequest--;
}

core.int buildCounterWatchResponse = 0;
api.WatchResponse buildWatchResponse() {
  final o = api.WatchResponse();
  buildCounterWatchResponse++;
  if (buildCounterWatchResponse < 3) {
    o.expiration = 'foo';
    o.historyId = 'foo';
  }
  buildCounterWatchResponse--;
  return o;
}

void checkWatchResponse(api.WatchResponse o) {
  buildCounterWatchResponse++;
  if (buildCounterWatchResponse < 3) {
    unittest.expect(
      o.expiration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWatchResponse--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AutoForwarding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoForwarding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoForwarding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoForwarding(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteMessagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchModifyMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchModifyMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchModifyMessagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchModifyMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-CseIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCseIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CseIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCseIdentity(od);
    });
  });

  unittest.group('obj-schema-CseKeyPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCseKeyPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CseKeyPair.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCseKeyPair(od);
    });
  });

  unittest.group('obj-schema-CsePrivateKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsePrivateKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CsePrivateKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCsePrivateKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-Delegate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDelegate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Delegate.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDelegate(od);
    });
  });

  unittest.group('obj-schema-DisableCseKeyPairRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableCseKeyPairRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableCseKeyPairRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableCseKeyPairRequest(od);
    });
  });

  unittest.group('obj-schema-Draft', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDraft();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Draft.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDraft(od);
    });
  });

  unittest.group('obj-schema-EnableCseKeyPairRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableCseKeyPairRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableCseKeyPairRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableCseKeyPairRequest(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FilterAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterAction(od);
    });
  });

  unittest.group('obj-schema-FilterCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterCriteria(od);
    });
  });

  unittest.group('obj-schema-ForwardingAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardingAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardingAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkForwardingAddress(od);
    });
  });

  unittest.group('obj-schema-HardwareKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHardwareKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HardwareKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHardwareKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-History', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.History.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHistory(od);
    });
  });

  unittest.group('obj-schema-HistoryLabelAdded', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryLabelAdded();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistoryLabelAdded.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistoryLabelAdded(od);
    });
  });

  unittest.group('obj-schema-HistoryLabelRemoved', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryLabelRemoved();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistoryLabelRemoved.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistoryLabelRemoved(od);
    });
  });

  unittest.group('obj-schema-HistoryMessageAdded', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryMessageAdded();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistoryMessageAdded.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistoryMessageAdded(od);
    });
  });

  unittest.group('obj-schema-HistoryMessageDeleted', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistoryMessageDeleted();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistoryMessageDeleted.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistoryMessageDeleted(od);
    });
  });

  unittest.group('obj-schema-ImapSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImapSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImapSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImapSettings(od);
    });
  });

  unittest.group('obj-schema-KaclsKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKaclsKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KaclsKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKaclsKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Label.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabel(od);
    });
  });

  unittest.group('obj-schema-LabelColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LabelColor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabelColor(od);
    });
  });

  unittest.group('obj-schema-LanguageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguageSettings(od);
    });
  });

  unittest.group('obj-schema-ListCseIdentitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCseIdentitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCseIdentitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCseIdentitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCseKeyPairsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCseKeyPairsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCseKeyPairsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCseKeyPairsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDelegatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDelegatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDelegatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDelegatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDraftsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDraftsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDraftsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDraftsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFiltersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFiltersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFiltersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFiltersResponse(od);
    });
  });

  unittest.group('obj-schema-ListForwardingAddressesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListForwardingAddressesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListForwardingAddressesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListForwardingAddressesResponse(od);
    });
  });

  unittest.group('obj-schema-ListHistoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHistoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-ListLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMessagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSendAsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSendAsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSendAsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSendAsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSmimeInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSmimeInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSmimeInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSmimeInfoResponse(od);
    });
  });

  unittest.group('obj-schema-ListThreadsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListThreadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListThreadsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListThreadsResponse(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-MessagePart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessagePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessagePart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMessagePart(od);
    });
  });

  unittest.group('obj-schema-MessagePartBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessagePartBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessagePartBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMessagePartBody(od);
    });
  });

  unittest.group('obj-schema-MessagePartHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessagePartHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessagePartHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMessagePartHeader(od);
    });
  });

  unittest.group('obj-schema-ModifyMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMessageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyMessageRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyThreadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyThreadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyThreadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyThreadRequest(od);
    });
  });

  unittest.group('obj-schema-ObliterateCseKeyPairRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObliterateCseKeyPairRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObliterateCseKeyPairRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObliterateCseKeyPairRequest(od);
    });
  });

  unittest.group('obj-schema-PopSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPopSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PopSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPopSettings(od);
    });
  });

  unittest.group('obj-schema-Profile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Profile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProfile(od);
    });
  });

  unittest.group('obj-schema-SendAs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendAs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SendAs.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSendAs(od);
    });
  });

  unittest.group('obj-schema-SignAndEncryptKeyPairs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignAndEncryptKeyPairs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignAndEncryptKeyPairs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignAndEncryptKeyPairs(od);
    });
  });

  unittest.group('obj-schema-SmimeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSmimeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SmimeInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSmimeInfo(od);
    });
  });

  unittest.group('obj-schema-SmtpMsa', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSmtpMsa();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SmtpMsa.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSmtpMsa(od);
    });
  });

  unittest.group('obj-schema-Thread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Thread.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThread(od);
    });
  });

  unittest.group('obj-schema-VacationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVacationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VacationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVacationSettings(od);
    });
  });

  unittest.group('obj-schema-WatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchRequest(od);
    });
  });

  unittest.group('obj-schema-WatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchResponse(od);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--getProfile', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profile', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/profile'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getProfile(arg_userId, $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/stop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/stop'),
        );
        pathOffset += 5;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.stop(arg_userId, $fields: arg_$fields);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users;
      final arg_request = buildWatchRequest();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/watch'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildWatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.watch(arg_request, arg_userId, $fields: arg_$fields);
      checkWatchResponse(response as api.WatchResponse);
    });
  });

  unittest.group('resource-UsersDraftsResource', () {
    unittest.test('method--create', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_request = buildDraft();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Draft.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDraft(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/drafts'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildDraft());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkDraft(response as api.Draft);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/drafts/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_format = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/drafts/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap['format']!.first,
          unittest.equals(arg_format),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDraft());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_id,
          format: arg_format, $fields: arg_$fields);
      checkDraft(response as api.Draft);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_userId = 'foo';
      final arg_includeSpamTrash = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/drafts'),
        );
        pathOffset += 7;

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
          queryMap['includeSpamTrash']!.first,
          unittest.equals('$arg_includeSpamTrash'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDraftsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          includeSpamTrash: arg_includeSpamTrash,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          q: arg_q,
          $fields: arg_$fields);
      checkListDraftsResponse(response as api.ListDraftsResponse);
    });

    unittest.test('method--send', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_request = buildDraft();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Draft.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDraft(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts/send', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/drafts/send'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.send(arg_request, arg_userId, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--update', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.drafts;
      final arg_request = buildDraft();
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Draft.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDraft(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/drafts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/drafts/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildDraft());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_userId, arg_id,
          $fields: arg_$fields);
      checkDraft(response as api.Draft);
    });
  });

  unittest.group('resource-UsersHistoryResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.history;
      final arg_userId = 'foo';
      final arg_historyTypes = buildUnnamed36();
      final arg_labelId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_startHistoryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/history', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/history'),
        );
        pathOffset += 8;

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
          queryMap['historyTypes']!,
          unittest.equals(arg_historyTypes),
        );
        unittest.expect(
          queryMap['labelId']!.first,
          unittest.equals(arg_labelId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['startHistoryId']!.first,
          unittest.equals(arg_startHistoryId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          historyTypes: arg_historyTypes,
          labelId: arg_labelId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          startHistoryId: arg_startHistoryId,
          $fields: arg_$fields);
      checkListHistoryResponse(response as api.ListHistoryResponse);
    });
  });

  unittest.group('resource-UsersLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_request = buildLabel();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Label.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLabel(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/labels'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkLabel(response as api.Label);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_id, $fields: arg_$fields);
      checkLabel(response as api.Label);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/labels'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildListLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, $fields: arg_$fields);
      checkListLabelsResponse(response as api.ListLabelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_request = buildLabel();
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Label.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLabel(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_userId, arg_id,
          $fields: arg_$fields);
      checkLabel(response as api.Label);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.labels;
      final arg_request = buildLabel();
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Label.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLabel(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_userId, arg_id,
          $fields: arg_$fields);
      checkLabel(response as api.Label);
    });
  });

  unittest.group('resource-UsersMessagesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildBatchDeleteMessagesRequest();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteMessagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/batchDelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/messages/batchDelete'),
        );
        pathOffset += 21;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.batchDelete(arg_request, arg_userId, $fields: arg_$fields);
    });

    unittest.test('method--batchModify', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildBatchModifyMessagesRequest();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchModifyMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchModifyMessagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/batchModify', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/messages/batchModify'),
        );
        pathOffset += 21;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.batchModify(arg_request, arg_userId, $fields: arg_$fields);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_format = 'foo';
      final arg_metadataHeaders = buildUnnamed37();
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap['format']!.first,
          unittest.equals(arg_format),
        );
        unittest.expect(
          queryMap['metadataHeaders']!,
          unittest.equals(arg_metadataHeaders),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_id,
          format: arg_format,
          metadataHeaders: arg_metadataHeaders,
          $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--import', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildMessage();
      final arg_userId = 'foo';
      final arg_deleted = true;
      final arg_internalDateSource = 'foo';
      final arg_neverMarkSpam = true;
      final arg_processForCalendar = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/import', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/messages/import'),
        );
        pathOffset += 16;

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
          queryMap['deleted']!.first,
          unittest.equals('$arg_deleted'),
        );
        unittest.expect(
          queryMap['internalDateSource']!.first,
          unittest.equals(arg_internalDateSource),
        );
        unittest.expect(
          queryMap['neverMarkSpam']!.first,
          unittest.equals('$arg_neverMarkSpam'),
        );
        unittest.expect(
          queryMap['processForCalendar']!.first,
          unittest.equals('$arg_processForCalendar'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.import(arg_request, arg_userId,
          deleted: arg_deleted,
          internalDateSource: arg_internalDateSource,
          neverMarkSpam: arg_neverMarkSpam,
          processForCalendar: arg_processForCalendar,
          $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildMessage();
      final arg_userId = 'foo';
      final arg_deleted = true;
      final arg_internalDateSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/messages'),
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
          queryMap['deleted']!.first,
          unittest.equals('$arg_deleted'),
        );
        unittest.expect(
          queryMap['internalDateSource']!.first,
          unittest.equals(arg_internalDateSource),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_userId,
          deleted: arg_deleted,
          internalDateSource: arg_internalDateSource,
          $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_userId = 'foo';
      final arg_includeSpamTrash = true;
      final arg_labelIds = buildUnnamed38();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/messages'),
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
          queryMap['includeSpamTrash']!.first,
          unittest.equals('$arg_includeSpamTrash'),
        );
        unittest.expect(
          queryMap['labelIds']!,
          unittest.equals(arg_labelIds),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          includeSpamTrash: arg_includeSpamTrash,
          labelIds: arg_labelIds,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          q: arg_q,
          $fields: arg_$fields);
      checkListMessagesResponse(response as api.ListMessagesResponse);
    });

    unittest.test('method--modify', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildModifyMessageRequest();
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyMessageRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        index = path.indexOf('/modify', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/modify'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modify(arg_request, arg_userId, arg_id,
          $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--send', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_request = buildMessage();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/send', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/messages/send'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.send(arg_request, arg_userId, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--trash', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        index = path.indexOf('/trash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/trash'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.trash(arg_userId, arg_id, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--untrash', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        index = path.indexOf('/untrash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/untrash'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.untrash(arg_userId, arg_id, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-UsersMessagesAttachmentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.messages.attachments;
      final arg_userId = 'foo';
      final arg_messageId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/messages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/messages/'),
        );
        pathOffset += 10;
        index = path.indexOf('/attachments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_messageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/attachments/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildMessagePartBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_messageId, arg_id,
          $fields: arg_$fields);
      checkMessagePartBody(response as api.MessagePartBody);
    });
  });

  unittest.group('resource-UsersSettingsResource', () {
    unittest.test('method--getAutoForwarding', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/autoForwarding', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/settings/autoForwarding'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildAutoForwarding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getAutoForwarding(arg_userId, $fields: arg_$fields);
      checkAutoForwarding(response as api.AutoForwarding);
    });

    unittest.test('method--getImap', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/imap', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/settings/imap'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildImapSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getImap(arg_userId, $fields: arg_$fields);
      checkImapSettings(response as api.ImapSettings);
    });

    unittest.test('method--getLanguage', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/language', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/language'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildLanguageSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getLanguage(arg_userId, $fields: arg_$fields);
      checkLanguageSettings(response as api.LanguageSettings);
    });

    unittest.test('method--getPop', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/pop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/settings/pop'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildPopSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPop(arg_userId, $fields: arg_$fields);
      checkPopSettings(response as api.PopSettings);
    });

    unittest.test('method--getVacation', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/vacation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/vacation'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildVacationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getVacation(arg_userId, $fields: arg_$fields);
      checkVacationSettings(response as api.VacationSettings);
    });

    unittest.test('method--updateAutoForwarding', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_request = buildAutoForwarding();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AutoForwarding.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAutoForwarding(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/autoForwarding', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/settings/autoForwarding'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildAutoForwarding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateAutoForwarding(arg_request, arg_userId,
          $fields: arg_$fields);
      checkAutoForwarding(response as api.AutoForwarding);
    });

    unittest.test('method--updateImap', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_request = buildImapSettings();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImapSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImapSettings(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/imap', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/settings/imap'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildImapSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateImap(arg_request, arg_userId, $fields: arg_$fields);
      checkImapSettings(response as api.ImapSettings);
    });

    unittest.test('method--updateLanguage', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_request = buildLanguageSettings();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LanguageSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLanguageSettings(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/language', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/language'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildLanguageSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateLanguage(arg_request, arg_userId,
          $fields: arg_$fields);
      checkLanguageSettings(response as api.LanguageSettings);
    });

    unittest.test('method--updatePop', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_request = buildPopSettings();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PopSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPopSettings(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/pop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/settings/pop'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildPopSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updatePop(arg_request, arg_userId, $fields: arg_$fields);
      checkPopSettings(response as api.PopSettings);
    });

    unittest.test('method--updateVacation', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings;
      final arg_request = buildVacationSettings();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VacationSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVacationSettings(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/vacation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/vacation'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildVacationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateVacation(arg_request, arg_userId,
          $fields: arg_$fields);
      checkVacationSettings(response as api.VacationSettings);
    });
  });

  unittest.group('resource-UsersSettingsCseIdentitiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.identities;
      final arg_request = buildCseIdentity();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CseIdentity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCseIdentity(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/identities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/settings/cse/identities'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildCseIdentity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkCseIdentity(response as api.CseIdentity);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.identities;
      final arg_userId = 'foo';
      final arg_cseEmailAddress = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/identities/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/settings/cse/identities/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_cseEmailAddress'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_cseEmailAddress, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.identities;
      final arg_userId = 'foo';
      final arg_cseEmailAddress = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/identities/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/settings/cse/identities/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_cseEmailAddress'),
        );

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
        final resp = convert.json.encode(buildCseIdentity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_cseEmailAddress, $fields: arg_$fields);
      checkCseIdentity(response as api.CseIdentity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.identities;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/identities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/settings/cse/identities'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildListCseIdentitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCseIdentitiesResponse(response as api.ListCseIdentitiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.identities;
      final arg_request = buildCseIdentity();
      final arg_userId = 'foo';
      final arg_emailAddress = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CseIdentity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCseIdentity(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/identities/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/settings/cse/identities/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_emailAddress'),
        );

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
        final resp = convert.json.encode(buildCseIdentity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_userId, arg_emailAddress,
          $fields: arg_$fields);
      checkCseIdentity(response as api.CseIdentity);
    });
  });

  unittest.group('resource-UsersSettingsCseKeypairsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_request = buildCseKeyPair();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CseKeyPair.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCseKeyPair(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/settings/cse/keypairs'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildCseKeyPair());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkCseKeyPair(response as api.CseKeyPair);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_request = buildDisableCseKeyPairRequest();
      final arg_userId = 'foo';
      final arg_keyPairId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableCseKeyPairRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableCseKeyPairRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/settings/cse/keypairs/'),
        );
        pathOffset += 23;
        index = path.indexOf(':disable', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_keyPairId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':disable'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildCseKeyPair());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.disable(arg_request, arg_userId, arg_keyPairId,
          $fields: arg_$fields);
      checkCseKeyPair(response as api.CseKeyPair);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_request = buildEnableCseKeyPairRequest();
      final arg_userId = 'foo';
      final arg_keyPairId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableCseKeyPairRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableCseKeyPairRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/settings/cse/keypairs/'),
        );
        pathOffset += 23;
        index = path.indexOf(':enable', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_keyPairId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':enable'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildCseKeyPair());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.enable(arg_request, arg_userId, arg_keyPairId,
          $fields: arg_$fields);
      checkCseKeyPair(response as api.CseKeyPair);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_userId = 'foo';
      final arg_keyPairId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/settings/cse/keypairs/'),
        );
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_keyPairId'),
        );

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
        final resp = convert.json.encode(buildCseKeyPair());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_keyPairId, $fields: arg_$fields);
      checkCseKeyPair(response as api.CseKeyPair);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/settings/cse/keypairs'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildListCseKeyPairsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCseKeyPairsResponse(response as api.ListCseKeyPairsResponse);
    });

    unittest.test('method--obliterate', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.cse.keypairs;
      final arg_request = buildObliterateCseKeyPairRequest();
      final arg_userId = 'foo';
      final arg_keyPairId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ObliterateCseKeyPairRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkObliterateCseKeyPairRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/cse/keypairs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/settings/cse/keypairs/'),
        );
        pathOffset += 23;
        index = path.indexOf(':obliterate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_keyPairId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals(':obliterate'),
        );
        pathOffset += 11;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.obliterate(arg_request, arg_userId, arg_keyPairId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-UsersSettingsDelegatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.delegates;
      final arg_request = buildDelegate();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Delegate.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDelegate(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/delegates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/settings/delegates'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildDelegate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkDelegate(response as api.Delegate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.delegates;
      final arg_userId = 'foo';
      final arg_delegateEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/delegates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/settings/delegates/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_delegateEmail'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_delegateEmail, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.delegates;
      final arg_userId = 'foo';
      final arg_delegateEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/delegates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/settings/delegates/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_delegateEmail'),
        );

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
        final resp = convert.json.encode(buildDelegate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_delegateEmail, $fields: arg_$fields);
      checkDelegate(response as api.Delegate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.delegates;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/delegates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/settings/delegates'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildListDelegatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, $fields: arg_$fields);
      checkListDelegatesResponse(response as api.ListDelegatesResponse);
    });
  });

  unittest.group('resource-UsersSettingsFiltersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.filters;
      final arg_request = buildFilter();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Filter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilter(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/filters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/filters'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.filters;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/filters/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.filters;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/settings/filters/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_id, $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.filters;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/filters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/filters'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildListFiltersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, $fields: arg_$fields);
      checkListFiltersResponse(response as api.ListFiltersResponse);
    });
  });

  unittest.group('resource-UsersSettingsForwardingAddressesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.forwardingAddresses;
      final arg_request = buildForwardingAddress();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ForwardingAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkForwardingAddress(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/forwardingAddresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('/settings/forwardingAddresses'),
        );
        pathOffset += 29;

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
        final resp = convert.json.encode(buildForwardingAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkForwardingAddress(response as api.ForwardingAddress);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.forwardingAddresses;
      final arg_userId = 'foo';
      final arg_forwardingEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/forwardingAddresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/settings/forwardingAddresses/'),
        );
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_forwardingEmail'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_forwardingEmail, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.forwardingAddresses;
      final arg_userId = 'foo';
      final arg_forwardingEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/forwardingAddresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/settings/forwardingAddresses/'),
        );
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_forwardingEmail'),
        );

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
        final resp = convert.json.encode(buildForwardingAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_forwardingEmail, $fields: arg_$fields);
      checkForwardingAddress(response as api.ForwardingAddress);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.forwardingAddresses;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/forwardingAddresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('/settings/forwardingAddresses'),
        );
        pathOffset += 29;

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
        final resp =
            convert.json.encode(buildListForwardingAddressesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, $fields: arg_$fields);
      checkListForwardingAddressesResponse(
          response as api.ListForwardingAddressesResponse);
    });
  });

  unittest.group('resource-UsersSettingsSendAsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_request = buildSendAs();
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.SendAs.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSendAs(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/settings/sendAs'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildSendAs());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_userId, $fields: arg_$fields);
      checkSendAs(response as api.SendAs);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_sendAsEmail, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );

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
        final resp = convert.json.encode(buildSendAs());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userId, arg_sendAsEmail, $fields: arg_$fields);
      checkSendAs(response as api.SendAs);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/settings/sendAs'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildListSendAsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, $fields: arg_$fields);
      checkListSendAsResponse(response as api.ListSendAsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_request = buildSendAs();
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.SendAs.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSendAs(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );

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
        final resp = convert.json.encode(buildSendAs());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_userId, arg_sendAsEmail,
          $fields: arg_$fields);
      checkSendAs(response as api.SendAs);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_request = buildSendAs();
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.SendAs.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSendAs(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );

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
        final resp = convert.json.encode(buildSendAs());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_userId, arg_sendAsEmail,
          $fields: arg_$fields);
      checkSendAs(response as api.SendAs);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/verify', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/verify'),
        );
        pathOffset += 7;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.verify(arg_userId, arg_sendAsEmail, $fields: arg_$fields);
    });
  });

  unittest.group('resource-UsersSettingsSendAsSmimeInfoResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs.smimeInfo;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/smimeInfo/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/smimeInfo/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_sendAsEmail, arg_id,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs.smimeInfo;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/smimeInfo/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/smimeInfo/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildSmimeInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_sendAsEmail, arg_id,
          $fields: arg_$fields);
      checkSmimeInfo(response as api.SmimeInfo);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs.smimeInfo;
      final arg_request = buildSmimeInfo();
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.SmimeInfo.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSmimeInfo(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/smimeInfo', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/smimeInfo'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildSmimeInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_userId, arg_sendAsEmail,
          $fields: arg_$fields);
      checkSmimeInfo(response as api.SmimeInfo);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs.smimeInfo;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/smimeInfo', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/smimeInfo'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildListSmimeInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_userId, arg_sendAsEmail, $fields: arg_$fields);
      checkListSmimeInfoResponse(response as api.ListSmimeInfoResponse);
    });

    unittest.test('method--setDefault', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.settings.sendAs.smimeInfo;
      final arg_userId = 'foo';
      final arg_sendAsEmail = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/settings/sendAs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/settings/sendAs/'),
        );
        pathOffset += 17;
        index = path.indexOf('/smimeInfo/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sendAsEmail'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/smimeInfo/'),
        );
        pathOffset += 11;
        index = path.indexOf('/setDefault', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/setDefault'),
        );
        pathOffset += 11;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.setDefault(arg_userId, arg_sendAsEmail, arg_id,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-UsersThreadsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/threads/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_userId, arg_id, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_format = 'foo';
      final arg_metadataHeaders = buildUnnamed39();
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/threads/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap['format']!.first,
          unittest.equals(arg_format),
        );
        unittest.expect(
          queryMap['metadataHeaders']!,
          unittest.equals(arg_metadataHeaders),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_id,
          format: arg_format,
          metadataHeaders: arg_metadataHeaders,
          $fields: arg_$fields);
      checkThread(response as api.Thread);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_userId = 'foo';
      final arg_includeSpamTrash = true;
      final arg_labelIds = buildUnnamed40();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_q = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/threads'),
        );
        pathOffset += 8;

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
          queryMap['includeSpamTrash']!.first,
          unittest.equals('$arg_includeSpamTrash'),
        );
        unittest.expect(
          queryMap['labelIds']!,
          unittest.equals(arg_labelIds),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListThreadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId,
          includeSpamTrash: arg_includeSpamTrash,
          labelIds: arg_labelIds,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          q: arg_q,
          $fields: arg_$fields);
      checkListThreadsResponse(response as api.ListThreadsResponse);
    });

    unittest.test('method--modify', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_request = buildModifyThreadRequest();
      final arg_userId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyThreadRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyThreadRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/threads/'),
        );
        pathOffset += 9;
        index = path.indexOf('/modify', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/modify'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modify(arg_request, arg_userId, arg_id,
          $fields: arg_$fields);
      checkThread(response as api.Thread);
    });

    unittest.test('method--trash', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/threads/'),
        );
        pathOffset += 9;
        index = path.indexOf('/trash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/trash'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.trash(arg_userId, arg_id, $fields: arg_$fields);
      checkThread(response as api.Thread);
    });

    unittest.test('method--untrash', () async {
      final mock = HttpServerMock();
      final res = api.GmailApi(mock).users.threads;
      final arg_userId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('gmail/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/threads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/threads/'),
        );
        pathOffset += 9;
        index = path.indexOf('/untrash', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/untrash'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.untrash(arg_userId, arg_id, $fields: arg_$fields);
      checkThread(response as api.Thread);
    });
  });
}
