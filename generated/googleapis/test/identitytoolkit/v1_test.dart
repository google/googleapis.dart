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
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/identitytoolkit/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters = 0;
api.GoogleCloudIdentitytoolkitV1Argon2Parameters
buildGoogleCloudIdentitytoolkitV1Argon2Parameters() {
  final o = api.GoogleCloudIdentitytoolkitV1Argon2Parameters();
  buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters++;
  if (buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters < 3) {
    o.associatedData = 'foo';
    o.hashLengthBytes = 42;
    o.hashType = 'foo';
    o.iterations = 42;
    o.memoryCostKib = 42;
    o.parallelism = 42;
    o.version = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1Argon2Parameters(
  api.GoogleCloudIdentitytoolkitV1Argon2Parameters o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters++;
  if (buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters < 3) {
    unittest.expect(o.associatedData!, unittest.equals('foo'));
    unittest.expect(o.hashLengthBytes!, unittest.equals(42));
    unittest.expect(o.hashType!, unittest.equals('foo'));
    unittest.expect(o.iterations!, unittest.equals(42));
    unittest.expect(o.memoryCostKib!, unittest.equals(42));
    unittest.expect(o.parallelism!, unittest.equals(42));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1Argon2Parameters--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo = 0;
api.GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
buildGoogleCloudIdentitytoolkitV1AutoRetrievalInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1AutoRetrievalInfo();
  buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo < 3) {
    o.appSignatureHash = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1AutoRetrievalInfo(
  api.GoogleCloudIdentitytoolkitV1AutoRetrievalInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo < 3) {
    unittest.expect(o.appSignatureHash!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1AutoRetrievalInfo--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest = 0;
api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest
buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest();
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest < 3) {
    o.force = true;
    o.localIds = buildUnnamed0();
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest(
  api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
    checkUnnamed0(o.localIds!);
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo>
buildUnnamed1() => [
  buildGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(),
  buildGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse =
    0;
api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse();
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse < 3) {
    o.errors = buildUnnamed1();
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(
  api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse < 3) {
    checkUnnamed1(o.errors!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo = 0;
api.GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo
buildGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo();
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo < 3) {
    o.index = 42;
    o.localId = 'foo';
    o.message = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(
  api.GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo < 3) {
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest = 0;
api.GoogleCloudIdentitytoolkitV1CreateAuthUriRequest
buildGoogleCloudIdentitytoolkitV1CreateAuthUriRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1CreateAuthUriRequest();
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest < 3) {
    o.appId = 'foo';
    o.authFlowType = 'foo';
    o.context = 'foo';
    o.continueUri = 'foo';
    o.customParameter = buildUnnamed2();
    o.hostedDomain = 'foo';
    o.identifier = 'foo';
    o.oauthConsumerKey = 'foo';
    o.oauthScope = 'foo';
    o.openidRealm = 'foo';
    o.otaApp = 'foo';
    o.providerId = 'foo';
    o.sessionId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1CreateAuthUriRequest(
  api.GoogleCloudIdentitytoolkitV1CreateAuthUriRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.authFlowType!, unittest.equals('foo'));
    unittest.expect(o.context!, unittest.equals('foo'));
    unittest.expect(o.continueUri!, unittest.equals('foo'));
    checkUnnamed2(o.customParameter!);
    unittest.expect(o.hostedDomain!, unittest.equals('foo'));
    unittest.expect(o.identifier!, unittest.equals('foo'));
    unittest.expect(o.oauthConsumerKey!, unittest.equals('foo'));
    unittest.expect(o.oauthScope!, unittest.equals('foo'));
    unittest.expect(o.openidRealm!, unittest.equals('foo'));
    unittest.expect(o.otaApp!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriRequest--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse = 0;
api.GoogleCloudIdentitytoolkitV1CreateAuthUriResponse
buildGoogleCloudIdentitytoolkitV1CreateAuthUriResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1CreateAuthUriResponse();
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse < 3) {
    o.allProviders = buildUnnamed3();
    o.authUri = 'foo';
    o.captchaRequired = true;
    o.forExistingProvider = true;
    o.kind = 'foo';
    o.providerId = 'foo';
    o.registered = true;
    o.sessionId = 'foo';
    o.signinMethods = buildUnnamed4();
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1CreateAuthUriResponse(
  api.GoogleCloudIdentitytoolkitV1CreateAuthUriResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse < 3) {
    checkUnnamed3(o.allProviders!);
    unittest.expect(o.authUri!, unittest.equals('foo'));
    unittest.expect(o.captchaRequired!, unittest.isTrue);
    unittest.expect(o.forExistingProvider!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.registered!, unittest.isTrue);
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    checkUnnamed4(o.signinMethods!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateAuthUriResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest = 0;
api.GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest
buildGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest();
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest < 3) {
    o.idToken = 'foo';
    o.tenantId = 'foo';
    o.validDuration = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest(
  api.GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.validDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse =
    0;
api.GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
buildGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse();
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse < 3) {
    o.sessionCookie = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(
  api.GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse < 3) {
    unittest.expect(o.sessionCookie!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest = 0;
api.GoogleCloudIdentitytoolkitV1DeleteAccountRequest
buildGoogleCloudIdentitytoolkitV1DeleteAccountRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1DeleteAccountRequest();
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.localId = 'foo';
    o.targetProjectId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1DeleteAccountRequest(
  api.GoogleCloudIdentitytoolkitV1DeleteAccountRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest < 3) {
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.targetProjectId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse = 0;
api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse
buildGoogleCloudIdentitytoolkitV1DeleteAccountResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse();
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1DeleteAccountResponse(
  api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1DeleteAccountResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> buildUnnamed5() => [
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
];

void checkUnnamed5(core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse = 0;
api.GoogleCloudIdentitytoolkitV1DownloadAccountResponse
buildGoogleCloudIdentitytoolkitV1DownloadAccountResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1DownloadAccountResponse();
  buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.users = buildUnnamed5();
  }
  buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1DownloadAccountResponse(
  api.GoogleCloudIdentitytoolkitV1DownloadAccountResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.users!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1DownloadAccountResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1EmailInfo = 0;
api.GoogleCloudIdentitytoolkitV1EmailInfo
buildGoogleCloudIdentitytoolkitV1EmailInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1EmailInfo();
  buildCounterGoogleCloudIdentitytoolkitV1EmailInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1EmailInfo < 3) {
    o.emailAddress = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1EmailInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1EmailInfo(
  api.GoogleCloudIdentitytoolkitV1EmailInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1EmailInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1EmailInfo < 3) {
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1EmailInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate = 0;
api.GoogleCloudIdentitytoolkitV1EmailTemplate
buildGoogleCloudIdentitytoolkitV1EmailTemplate() {
  final o = api.GoogleCloudIdentitytoolkitV1EmailTemplate();
  buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate < 3) {
    o.body = 'foo';
    o.customized = true;
    o.disabled = true;
    o.format = 'foo';
    o.from = 'foo';
    o.fromDisplayName = 'foo';
    o.fromLocalPart = 'foo';
    o.locale = 'foo';
    o.replyTo = 'foo';
    o.subject = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1EmailTemplate(
  api.GoogleCloudIdentitytoolkitV1EmailTemplate o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate++;
  if (buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.customized!, unittest.isTrue);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.from!, unittest.equals('foo'));
    unittest.expect(o.fromDisplayName!, unittest.equals('foo'));
    unittest.expect(o.fromLocalPart!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.replyTo!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1EmailTemplate--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo = 0;
api.GoogleCloudIdentitytoolkitV1ErrorInfo
buildGoogleCloudIdentitytoolkitV1ErrorInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1ErrorInfo();
  buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo < 3) {
    o.index = 42;
    o.message = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1ErrorInfo(
  api.GoogleCloudIdentitytoolkitV1ErrorInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo < 3) {
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1ErrorInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier = 0;
api.GoogleCloudIdentitytoolkitV1FederatedUserIdentifier
buildGoogleCloudIdentitytoolkitV1FederatedUserIdentifier() {
  final o = api.GoogleCloudIdentitytoolkitV1FederatedUserIdentifier();
  buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier++;
  if (buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier < 3) {
    o.providerId = 'foo';
    o.rawId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(
  api.GoogleCloudIdentitytoolkitV1FederatedUserIdentifier o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier++;
  if (buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier < 3) {
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.rawId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1FederatedUserIdentifier--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudIdentitytoolkitV1FederatedUserIdentifier>
buildUnnamed7() => [
  buildGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(),
  buildGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(),
];

void checkUnnamed7(
  core.List<api.GoogleCloudIdentitytoolkitV1FederatedUserIdentifier> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(o[0]);
  checkGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest = 0;
api.GoogleCloudIdentitytoolkitV1GetAccountInfoRequest
buildGoogleCloudIdentitytoolkitV1GetAccountInfoRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1GetAccountInfoRequest();
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.email = buildUnnamed6();
    o.federatedUserId = buildUnnamed7();
    o.idToken = 'foo';
    o.initialEmail = buildUnnamed8();
    o.localId = buildUnnamed9();
    o.phoneNumber = buildUnnamed10();
    o.targetProjectId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetAccountInfoRequest(
  api.GoogleCloudIdentitytoolkitV1GetAccountInfoRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest < 3) {
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    checkUnnamed6(o.email!);
    checkUnnamed7(o.federatedUserId!);
    unittest.expect(o.idToken!, unittest.equals('foo'));
    checkUnnamed8(o.initialEmail!);
    checkUnnamed9(o.localId!);
    checkUnnamed10(o.phoneNumber!);
    unittest.expect(o.targetProjectId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> buildUnnamed11() => [
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
];

void checkUnnamed11(core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse = 0;
api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
buildGoogleCloudIdentitytoolkitV1GetAccountInfoResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse();
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse < 3) {
    o.kind = 'foo';
    o.users = buildUnnamed11();
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(
  api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed11(o.users!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetAccountInfoResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest = 0;
api.GoogleCloudIdentitytoolkitV1GetOobCodeRequest
buildGoogleCloudIdentitytoolkitV1GetOobCodeRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1GetOobCodeRequest();
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest < 3) {
    o.androidInstallApp = true;
    o.androidMinimumVersion = 'foo';
    o.androidPackageName = 'foo';
    o.canHandleCodeInApp = true;
    o.captchaResp = 'foo';
    o.challenge = 'foo';
    o.clientType = 'foo';
    o.continueUrl = 'foo';
    o.dynamicLinkDomain = 'foo';
    o.email = 'foo';
    o.iOSAppStoreId = 'foo';
    o.iOSBundleId = 'foo';
    o.idToken = 'foo';
    o.linkDomain = 'foo';
    o.newEmail = 'foo';
    o.recaptchaVersion = 'foo';
    o.requestType = 'foo';
    o.returnOobLink = true;
    o.targetProjectId = 'foo';
    o.tenantId = 'foo';
    o.userIp = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetOobCodeRequest(
  api.GoogleCloudIdentitytoolkitV1GetOobCodeRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest < 3) {
    unittest.expect(o.androidInstallApp!, unittest.isTrue);
    unittest.expect(o.androidMinimumVersion!, unittest.equals('foo'));
    unittest.expect(o.androidPackageName!, unittest.equals('foo'));
    unittest.expect(o.canHandleCodeInApp!, unittest.isTrue);
    unittest.expect(o.captchaResp!, unittest.equals('foo'));
    unittest.expect(o.challenge!, unittest.equals('foo'));
    unittest.expect(o.clientType!, unittest.equals('foo'));
    unittest.expect(o.continueUrl!, unittest.equals('foo'));
    unittest.expect(o.dynamicLinkDomain!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.iOSAppStoreId!, unittest.equals('foo'));
    unittest.expect(o.iOSBundleId!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.linkDomain!, unittest.equals('foo'));
    unittest.expect(o.newEmail!, unittest.equals('foo'));
    unittest.expect(o.recaptchaVersion!, unittest.equals('foo'));
    unittest.expect(o.requestType!, unittest.equals('foo'));
    unittest.expect(o.returnOobLink!, unittest.isTrue);
    unittest.expect(o.targetProjectId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.userIp!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse = 0;
api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse
buildGoogleCloudIdentitytoolkitV1GetOobCodeResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse();
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.oobCode = 'foo';
    o.oobLink = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetOobCodeResponse(
  api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.oobCode!, unittest.equals('foo'));
    unittest.expect(o.oobLink!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetOobCodeResponse--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudIdentitytoolkitV1IdpConfig> buildUnnamed13() => [
  buildGoogleCloudIdentitytoolkitV1IdpConfig(),
  buildGoogleCloudIdentitytoolkitV1IdpConfig(),
];

void checkUnnamed13(core.List<api.GoogleCloudIdentitytoolkitV1IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1IdpConfig(o[0]);
  checkGoogleCloudIdentitytoolkitV1IdpConfig(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse = 0;
api.GoogleCloudIdentitytoolkitV1GetProjectConfigResponse
buildGoogleCloudIdentitytoolkitV1GetProjectConfigResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1GetProjectConfigResponse();
  buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse < 3) {
    o.allowPasswordUser = true;
    o.apiKey = 'foo';
    o.authorizedDomains = buildUnnamed12();
    o.changeEmailTemplate = buildGoogleCloudIdentitytoolkitV1EmailTemplate();
    o.dynamicLinksDomain = 'foo';
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed13();
    o.legacyResetPasswordTemplate =
        buildGoogleCloudIdentitytoolkitV1EmailTemplate();
    o.projectId = 'foo';
    o.resetPasswordTemplate = buildGoogleCloudIdentitytoolkitV1EmailTemplate();
    o.revertSecondFactorAdditionTemplate =
        buildGoogleCloudIdentitytoolkitV1EmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildGoogleCloudIdentitytoolkitV1EmailTemplate();
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetProjectConfigResponse(
  api.GoogleCloudIdentitytoolkitV1GetProjectConfigResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse < 3) {
    unittest.expect(o.allowPasswordUser!, unittest.isTrue);
    unittest.expect(o.apiKey!, unittest.equals('foo'));
    checkUnnamed12(o.authorizedDomains!);
    checkGoogleCloudIdentitytoolkitV1EmailTemplate(o.changeEmailTemplate!);
    unittest.expect(o.dynamicLinksDomain!, unittest.equals('foo'));
    unittest.expect(o.enableAnonymousUser!, unittest.isTrue);
    checkUnnamed13(o.idpConfig!);
    checkGoogleCloudIdentitytoolkitV1EmailTemplate(
      o.legacyResetPasswordTemplate!,
    );
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1EmailTemplate(o.resetPasswordTemplate!);
    checkGoogleCloudIdentitytoolkitV1EmailTemplate(
      o.revertSecondFactorAdditionTemplate!,
    );
    unittest.expect(o.useEmailSending!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitV1EmailTemplate(o.verifyEmailTemplate!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetProjectConfigResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse = 0;
api.GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse
buildGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse();
  buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse < 3) {
    o.kind = 'foo';
    o.producerProjectNumber = 'foo';
    o.recaptchaSiteKey = 'foo';
    o.recaptchaStoken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse(
  api.GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.producerProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.recaptchaSiteKey!, unittest.equals('foo'));
    unittest.expect(o.recaptchaStoken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey> buildUnnamed14() =>
    [
      buildGoogleCloudIdentitytoolkitV1OpenIdConnectKey(),
      buildGoogleCloudIdentitytoolkitV1OpenIdConnectKey(),
    ];

void checkUnnamed14(
  core.List<api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1OpenIdConnectKey(o[0]);
  checkGoogleCloudIdentitytoolkitV1OpenIdConnectKey(o[1]);
}

core.int
buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse = 0;
api.GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
buildGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse() {
  final o =
      api.GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse();
  buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse <
      3) {
    o.keys = buildUnnamed14();
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse(
  api.GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse <
      3) {
    checkUnnamed14(o.keys!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1IdpConfig = 0;
api.GoogleCloudIdentitytoolkitV1IdpConfig
buildGoogleCloudIdentitytoolkitV1IdpConfig() {
  final o = api.GoogleCloudIdentitytoolkitV1IdpConfig();
  buildCounterGoogleCloudIdentitytoolkitV1IdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IdpConfig < 3) {
    o.clientId = 'foo';
    o.enabled = true;
    o.experimentPercent = 42;
    o.provider = 'foo';
    o.secret = 'foo';
    o.whitelistedAudiences = buildUnnamed15();
  }
  buildCounterGoogleCloudIdentitytoolkitV1IdpConfig--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1IdpConfig(
  api.GoogleCloudIdentitytoolkitV1IdpConfig o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1IdpConfig++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IdpConfig < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.experimentPercent!, unittest.equals(42));
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.secret!, unittest.equals('foo'));
    checkUnnamed15(o.whitelistedAudiences!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1IdpConfig--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest = 0;
api.GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest
buildGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest();
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest < 3) {
    o.idToken = 'foo';
    o.rpId = 'foo';
    o.samlAppEntityId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest(
  api.GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest < 3) {
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.rpId!, unittest.equals('foo'));
    unittest.expect(o.samlAppEntityId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse = 0;
api.GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse
buildGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse();
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse < 3) {
    o.acsEndpoint = 'foo';
    o.email = 'foo';
    o.firstName = 'foo';
    o.isNewUser = true;
    o.lastName = 'foo';
    o.relayState = 'foo';
    o.samlResponse = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse(
  api.GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse < 3) {
    unittest.expect(o.acsEndpoint!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.firstName!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.lastName!, unittest.equals('foo'));
    unittest.expect(o.relayState!, unittest.equals('foo'));
    unittest.expect(o.samlResponse!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment = 0;
api.GoogleCloudIdentitytoolkitV1MfaEnrollment
buildGoogleCloudIdentitytoolkitV1MfaEnrollment() {
  final o = api.GoogleCloudIdentitytoolkitV1MfaEnrollment();
  buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment < 3) {
    o.displayName = 'foo';
    o.emailInfo = buildGoogleCloudIdentitytoolkitV1EmailInfo();
    o.enrolledAt = 'foo';
    o.mfaEnrollmentId = 'foo';
    o.phoneInfo = 'foo';
    o.totpInfo = buildGoogleCloudIdentitytoolkitV1TotpInfo();
    o.unobfuscatedPhoneInfo = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1MfaEnrollment(
  api.GoogleCloudIdentitytoolkitV1MfaEnrollment o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1EmailInfo(o.emailInfo!);
    unittest.expect(o.enrolledAt!, unittest.equals('foo'));
    unittest.expect(o.mfaEnrollmentId!, unittest.equals('foo'));
    unittest.expect(o.phoneInfo!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1TotpInfo(o.totpInfo!);
    unittest.expect(o.unobfuscatedPhoneInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaEnrollment--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1MfaFactor = 0;
api.GoogleCloudIdentitytoolkitV1MfaFactor
buildGoogleCloudIdentitytoolkitV1MfaFactor() {
  final o = api.GoogleCloudIdentitytoolkitV1MfaFactor();
  buildCounterGoogleCloudIdentitytoolkitV1MfaFactor++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaFactor < 3) {
    o.displayName = 'foo';
    o.phoneInfo = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaFactor--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1MfaFactor(
  api.GoogleCloudIdentitytoolkitV1MfaFactor o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1MfaFactor++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaFactor < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.phoneInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaFactor--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> buildUnnamed16() => [
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
];

void checkUnnamed16(
  core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1MfaInfo = 0;
api.GoogleCloudIdentitytoolkitV1MfaInfo
buildGoogleCloudIdentitytoolkitV1MfaInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1MfaInfo();
  buildCounterGoogleCloudIdentitytoolkitV1MfaInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaInfo < 3) {
    o.enrollments = buildUnnamed16();
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1MfaInfo(
  api.GoogleCloudIdentitytoolkitV1MfaInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1MfaInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1MfaInfo < 3) {
    checkUnnamed16(o.enrollments!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1MfaInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey = 0;
api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey
buildGoogleCloudIdentitytoolkitV1OpenIdConnectKey() {
  final o = api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey();
  buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey++;
  if (buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey < 3) {
    o.alg = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1OpenIdConnectKey(
  api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey++;
  if (buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey < 3) {
    unittest.expect(o.alg!, unittest.equals('foo'));
    unittest.expect(o.e!, unittest.equals('foo'));
    unittest.expect(o.kid!, unittest.equals('foo'));
    unittest.expect(o.kty!, unittest.equals('foo'));
    unittest.expect(o.n!, unittest.equals('foo'));
    unittest.expect(o.use!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1OpenIdConnectKey--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo = 0;
api.GoogleCloudIdentitytoolkitV1ProviderUserInfo
buildGoogleCloudIdentitytoolkitV1ProviderUserInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1ProviderUserInfo();
  buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.federatedId = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawId = 'foo';
    o.screenName = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(
  api.GoogleCloudIdentitytoolkitV1ProviderUserInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.federatedId!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.rawId!, unittest.equals('foo'));
    unittest.expect(o.screenName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1ProviderUserInfo--;
}

core.List<api.GoogleCloudIdentitytoolkitV1SqlExpression> buildUnnamed17() => [
  buildGoogleCloudIdentitytoolkitV1SqlExpression(),
  buildGoogleCloudIdentitytoolkitV1SqlExpression(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudIdentitytoolkitV1SqlExpression> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1SqlExpression(o[0]);
  checkGoogleCloudIdentitytoolkitV1SqlExpression(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest = 0;
api.GoogleCloudIdentitytoolkitV1QueryUserInfoRequest
buildGoogleCloudIdentitytoolkitV1QueryUserInfoRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1QueryUserInfoRequest();
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest < 3) {
    o.expression = buildUnnamed17();
    o.limit = 'foo';
    o.offset = 'foo';
    o.order = 'foo';
    o.returnUserInfo = true;
    o.sortBy = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1QueryUserInfoRequest(
  api.GoogleCloudIdentitytoolkitV1QueryUserInfoRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest < 3) {
    checkUnnamed17(o.expression!);
    unittest.expect(o.limit!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals('foo'));
    unittest.expect(o.order!, unittest.equals('foo'));
    unittest.expect(o.returnUserInfo!, unittest.isTrue);
    unittest.expect(o.sortBy!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> buildUnnamed18() => [
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
];

void checkUnnamed18(core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse = 0;
api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
buildGoogleCloudIdentitytoolkitV1QueryUserInfoResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse();
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse < 3) {
    o.recordsCount = 'foo';
    o.userInfo = buildUnnamed18();
  }
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(
  api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse < 3) {
    unittest.expect(o.recordsCount!, unittest.equals('foo'));
    checkUnnamed18(o.userInfo!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1QueryUserInfoResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest = 0;
api.GoogleCloudIdentitytoolkitV1ResetPasswordRequest
buildGoogleCloudIdentitytoolkitV1ResetPasswordRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1ResetPasswordRequest();
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest < 3) {
    o.email = 'foo';
    o.newPassword = 'foo';
    o.oldPassword = 'foo';
    o.oobCode = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1ResetPasswordRequest(
  api.GoogleCloudIdentitytoolkitV1ResetPasswordRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.newPassword!, unittest.equals('foo'));
    unittest.expect(o.oldPassword!, unittest.equals('foo'));
    unittest.expect(o.oobCode!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse = 0;
api.GoogleCloudIdentitytoolkitV1ResetPasswordResponse
buildGoogleCloudIdentitytoolkitV1ResetPasswordResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1ResetPasswordResponse();
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.mfaInfo = buildGoogleCloudIdentitytoolkitV1MfaEnrollment();
    o.newEmail = 'foo';
    o.requestType = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1ResetPasswordResponse(
  api.GoogleCloudIdentitytoolkitV1ResetPasswordResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o.mfaInfo!);
    unittest.expect(o.newEmail!, unittest.equals('foo'));
    unittest.expect(o.requestType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1ResetPasswordResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest =
    0;
api.GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest
buildGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest < 3) {
    o.autoRetrievalInfo = buildGoogleCloudIdentitytoolkitV1AutoRetrievalInfo();
    o.captchaResponse = 'foo';
    o.clientType = 'foo';
    o.iosReceipt = 'foo';
    o.iosSecret = 'foo';
    o.phoneNumber = 'foo';
    o.playIntegrityToken = 'foo';
    o.recaptchaToken = 'foo';
    o.recaptchaVersion = 'foo';
    o.safetyNetToken = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest(
  api.GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest < 3) {
    checkGoogleCloudIdentitytoolkitV1AutoRetrievalInfo(o.autoRetrievalInfo!);
    unittest.expect(o.captchaResponse!, unittest.equals('foo'));
    unittest.expect(o.clientType!, unittest.equals('foo'));
    unittest.expect(o.iosReceipt!, unittest.equals('foo'));
    unittest.expect(o.iosSecret!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.playIntegrityToken!, unittest.equals('foo'));
    unittest.expect(o.recaptchaToken!, unittest.equals('foo'));
    unittest.expect(o.recaptchaVersion!, unittest.equals('foo'));
    unittest.expect(o.safetyNetToken!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse =
    0;
api.GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse
buildGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse <
      3) {
    o.sessionInfo = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse(
  api.GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse <
      3) {
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest = 0;
api.GoogleCloudIdentitytoolkitV1SetAccountInfoRequest
buildGoogleCloudIdentitytoolkitV1SetAccountInfoRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SetAccountInfoRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.deleteAttribute = buildUnnamed19();
    o.deleteProvider = buildUnnamed20();
    o.disableUser = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.lastLoginAt = 'foo';
    o.linkProviderUserInfo =
        buildGoogleCloudIdentitytoolkitV1ProviderUserInfo();
    o.localId = 'foo';
    o.mfa = buildGoogleCloudIdentitytoolkitV1MfaInfo();
    o.oobCode = 'foo';
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.provider = buildUnnamed21();
    o.returnSecureToken = true;
    o.targetProjectId = 'foo';
    o.tenantId = 'foo';
    o.upgradeToFederatedLogin = true;
    o.validSince = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SetAccountInfoRequest(
  api.GoogleCloudIdentitytoolkitV1SetAccountInfoRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest < 3) {
    unittest.expect(o.captchaChallenge!, unittest.equals('foo'));
    unittest.expect(o.captchaResponse!, unittest.equals('foo'));
    unittest.expect(o.createdAt!, unittest.equals('foo'));
    unittest.expect(o.customAttributes!, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    checkUnnamed19(o.deleteAttribute!);
    checkUnnamed20(o.deleteProvider!);
    unittest.expect(o.disableUser!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.lastLoginAt!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(o.linkProviderUserInfo!);
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkGoogleCloudIdentitytoolkitV1MfaInfo(o.mfa!);
    unittest.expect(o.oobCode!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    checkUnnamed21(o.provider!);
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(o.targetProjectId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.upgradeToFederatedLogin!, unittest.isTrue);
    unittest.expect(o.validSince!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1ProviderUserInfo> buildUnnamed22() =>
    [
      buildGoogleCloudIdentitytoolkitV1ProviderUserInfo(),
      buildGoogleCloudIdentitytoolkitV1ProviderUserInfo(),
    ];

void checkUnnamed22(
  core.List<api.GoogleCloudIdentitytoolkitV1ProviderUserInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse = 0;
api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
buildGoogleCloudIdentitytoolkitV1SetAccountInfoResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.newEmail = 'foo';
    o.passwordHash = 'foo';
    o.photoUrl = 'foo';
    o.providerUserInfo = buildUnnamed22();
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(
  api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.newEmail!, unittest.equals('foo'));
    unittest.expect(o.passwordHash!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    checkUnnamed22(o.providerUserInfo!);
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SetAccountInfoResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest
buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest <
      3) {
    o.delegatedProjectNumber = 'foo';
    o.instanceId = 'foo';
    o.returnSecureToken = true;
    o.tenantId = 'foo';
    o.token = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest <
      3) {
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse
buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse <
      3) {
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse <
      3) {
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest = 0;
api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest
buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest < 3) {
    o.email = 'foo';
    o.idToken = 'foo';
    o.oobCode = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.oobCode!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> buildUnnamed23() => [
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse
buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse < 3) {
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.localId = 'foo';
    o.mfaInfo = buildUnnamed23();
    o.mfaPendingCredential = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkUnnamed23(o.mfaInfo!);
    unittest.expect(o.mfaPendingCredential!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest
buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest < 3) {
    o.displayName = 'foo';
    o.gamePlayerId = 'foo';
    o.idToken = 'foo';
    o.playerId = 'foo';
    o.publicKeyUrl = 'foo';
    o.salt = 'foo';
    o.signature = 'foo';
    o.teamPlayerId = 'foo';
    o.tenantId = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.gamePlayerId!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.playerId!, unittest.equals('foo'));
    unittest.expect(o.publicKeyUrl!, unittest.equals('foo'));
    unittest.expect(o.salt!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
    unittest.expect(o.teamPlayerId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse
buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse <
      3) {
    o.displayName = 'foo';
    o.expiresIn = 'foo';
    o.gamePlayerId = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.localId = 'foo';
    o.playerId = 'foo';
    o.refreshToken = 'foo';
    o.teamPlayerId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.gamePlayerId!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.playerId!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
    unittest.expect(o.teamPlayerId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest = 0;
api.GoogleCloudIdentitytoolkitV1SignInWithIdpRequest
buildGoogleCloudIdentitytoolkitV1SignInWithIdpRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithIdpRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest < 3) {
    o.autoCreate = true;
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.pendingIdToken = 'foo';
    o.pendingToken = 'foo';
    o.postBody = 'foo';
    o.requestUri = 'foo';
    o.returnIdpCredential = true;
    o.returnRefreshToken = true;
    o.returnSecureToken = true;
    o.sessionId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithIdpRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithIdpRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest < 3) {
    unittest.expect(o.autoCreate!, unittest.isTrue);
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken!, unittest.equals('foo'));
    unittest.expect(o.pendingToken!, unittest.equals('foo'));
    unittest.expect(o.postBody!, unittest.equals('foo'));
    unittest.expect(o.requestUri!, unittest.equals('foo'));
    unittest.expect(o.returnIdpCredential!, unittest.isTrue);
    unittest.expect(o.returnRefreshToken!, unittest.isTrue);
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> buildUnnamed24() => [
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
];

void checkUnnamed24(
  core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[1]);
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse = 0;
api.GoogleCloudIdentitytoolkitV1SignInWithIdpResponse
buildGoogleCloudIdentitytoolkitV1SignInWithIdpResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithIdpResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse < 3) {
    o.context = 'foo';
    o.dateOfBirth = 'foo';
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailRecycled = true;
    o.emailVerified = true;
    o.errorMessage = 'foo';
    o.expiresIn = 'foo';
    o.federatedId = 'foo';
    o.firstName = 'foo';
    o.fullName = 'foo';
    o.idToken = 'foo';
    o.inputEmail = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.language = 'foo';
    o.lastName = 'foo';
    o.localId = 'foo';
    o.mfaInfo = buildUnnamed24();
    o.mfaPendingCredential = 'foo';
    o.needConfirmation = true;
    o.needEmail = true;
    o.nickName = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.oauthIdToken = 'foo';
    o.oauthRefreshToken = 'foo';
    o.oauthTokenSecret = 'foo';
    o.originalEmail = 'foo';
    o.pendingToken = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawUserInfo = 'foo';
    o.refreshToken = 'foo';
    o.screenName = 'foo';
    o.tenantId = 'foo';
    o.timeZone = 'foo';
    o.verifiedProvider = buildUnnamed25();
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithIdpResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithIdpResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse < 3) {
    unittest.expect(o.context!, unittest.equals('foo'));
    unittest.expect(o.dateOfBirth!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.emailRecycled!, unittest.isTrue);
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.federatedId!, unittest.equals('foo'));
    unittest.expect(o.firstName!, unittest.equals('foo'));
    unittest.expect(o.fullName!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.inputEmail!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.language!, unittest.equals('foo'));
    unittest.expect(o.lastName!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkUnnamed24(o.mfaInfo!);
    unittest.expect(o.mfaPendingCredential!, unittest.equals('foo'));
    unittest.expect(o.needConfirmation!, unittest.isTrue);
    unittest.expect(o.needEmail!, unittest.isTrue);
    unittest.expect(o.nickName!, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken!, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode!, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn!, unittest.equals(42));
    unittest.expect(o.oauthIdToken!, unittest.equals('foo'));
    unittest.expect(o.oauthRefreshToken!, unittest.equals('foo'));
    unittest.expect(o.oauthTokenSecret!, unittest.equals('foo'));
    unittest.expect(o.originalEmail!, unittest.equals('foo'));
    unittest.expect(o.pendingToken!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    unittest.expect(o.providerId!, unittest.equals('foo'));
    unittest.expect(o.rawUserInfo!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
    unittest.expect(o.screenName!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    checkUnnamed25(o.verifiedProvider!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithIdpResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest = 0;
api.GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest
buildGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.clientType = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.email = 'foo';
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.password = 'foo';
    o.pendingIdToken = 'foo';
    o.recaptchaVersion = 'foo';
    o.returnSecureToken = true;
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest < 3) {
    unittest.expect(o.captchaChallenge!, unittest.equals('foo'));
    unittest.expect(o.captchaResponse!, unittest.equals('foo'));
    unittest.expect(o.clientType!, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken!, unittest.equals('foo'));
    unittest.expect(o.recaptchaVersion!, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> buildUnnamed26() => [
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
];

void checkUnnamed26(
  core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[1]);
}

core.List<api.GoogleCloudIdentitytoolkitV1UserNotification> buildUnnamed27() =>
    [
      buildGoogleCloudIdentitytoolkitV1UserNotification(),
      buildGoogleCloudIdentitytoolkitV1UserNotification(),
    ];

void checkUnnamed27(
  core.List<api.GoogleCloudIdentitytoolkitV1UserNotification> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1UserNotification(o[0]);
  checkGoogleCloudIdentitytoolkitV1UserNotification(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse = 0;
api.GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse
buildGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.mfaInfo = buildUnnamed26();
    o.mfaPendingCredential = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.profilePicture = 'foo';
    o.refreshToken = 'foo';
    o.registered = true;
    o.userNotifications = buildUnnamed27();
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkUnnamed26(o.mfaInfo!);
    unittest.expect(o.mfaPendingCredential!, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken!, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode!, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn!, unittest.equals(42));
    unittest.expect(o.profilePicture!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
    unittest.expect(o.registered!, unittest.isTrue);
    checkUnnamed27(o.userNotifications!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest
buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest <
      3) {
    o.code = 'foo';
    o.idToken = 'foo';
    o.operation = 'foo';
    o.phoneNumber = 'foo';
    o.sessionInfo = 'foo';
    o.temporaryProof = 'foo';
    o.tenantId = 'foo';
    o.verificationProof = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest(
  api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest <
      3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.sessionInfo!, unittest.equals('foo'));
    unittest.expect(o.temporaryProof!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.verificationProof!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse =
    0;
api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse
buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse <
      3) {
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.localId = 'foo';
    o.phoneNumber = 'foo';
    o.refreshToken = 'foo';
    o.temporaryProof = 'foo';
    o.temporaryProofExpiresIn = 'foo';
    o.verificationProof = 'foo';
    o.verificationProofExpiresIn = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse(
  api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse <
      3) {
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
    unittest.expect(o.temporaryProof!, unittest.equals('foo'));
    unittest.expect(o.temporaryProofExpiresIn!, unittest.equals('foo'));
    unittest.expect(o.verificationProof!, unittest.equals('foo'));
    unittest.expect(o.verificationProofExpiresIn!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaFactor> buildUnnamed28() => [
  buildGoogleCloudIdentitytoolkitV1MfaFactor(),
  buildGoogleCloudIdentitytoolkitV1MfaFactor(),
];

void checkUnnamed28(core.List<api.GoogleCloudIdentitytoolkitV1MfaFactor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaFactor(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaFactor(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest = 0;
api.GoogleCloudIdentitytoolkitV1SignUpRequest
buildGoogleCloudIdentitytoolkitV1SignUpRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1SignUpRequest();
  buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.clientType = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.localId = 'foo';
    o.mfaInfo = buildUnnamed28();
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.recaptchaVersion = 'foo';
    o.targetProjectId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignUpRequest(
  api.GoogleCloudIdentitytoolkitV1SignUpRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest < 3) {
    unittest.expect(o.captchaChallenge!, unittest.equals('foo'));
    unittest.expect(o.captchaResponse!, unittest.equals('foo'));
    unittest.expect(o.clientType!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkUnnamed28(o.mfaInfo!);
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    unittest.expect(o.recaptchaVersion!, unittest.equals('foo'));
    unittest.expect(o.targetProjectId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignUpRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse = 0;
api.GoogleCloudIdentitytoolkitV1SignUpResponse
buildGoogleCloudIdentitytoolkitV1SignUpResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1SignUpResponse();
  buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SignUpResponse(
  api.GoogleCloudIdentitytoolkitV1SignUpResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.idToken!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SignUpResponse--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1SqlExpression = 0;
api.GoogleCloudIdentitytoolkitV1SqlExpression
buildGoogleCloudIdentitytoolkitV1SqlExpression() {
  final o = api.GoogleCloudIdentitytoolkitV1SqlExpression();
  buildCounterGoogleCloudIdentitytoolkitV1SqlExpression++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SqlExpression < 3) {
    o.email = 'foo';
    o.phoneNumber = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1SqlExpression--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1SqlExpression(
  api.GoogleCloudIdentitytoolkitV1SqlExpression o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1SqlExpression++;
  if (buildCounterGoogleCloudIdentitytoolkitV1SqlExpression < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1SqlExpression--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1TotpInfo = 0;
api.GoogleCloudIdentitytoolkitV1TotpInfo
buildGoogleCloudIdentitytoolkitV1TotpInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1TotpInfo();
  buildCounterGoogleCloudIdentitytoolkitV1TotpInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1TotpInfo < 3) {}
  buildCounterGoogleCloudIdentitytoolkitV1TotpInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1TotpInfo(
  api.GoogleCloudIdentitytoolkitV1TotpInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1TotpInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1TotpInfo < 3) {}
  buildCounterGoogleCloudIdentitytoolkitV1TotpInfo--;
}

core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> buildUnnamed29() => [
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
  buildGoogleCloudIdentitytoolkitV1UserInfo(),
];

void checkUnnamed29(core.List<api.GoogleCloudIdentitytoolkitV1UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1UserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest = 0;
api.GoogleCloudIdentitytoolkitV1UploadAccountRequest
buildGoogleCloudIdentitytoolkitV1UploadAccountRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1UploadAccountRequest();
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest < 3) {
    o.allowOverwrite = true;
    o.argon2Parameters = buildGoogleCloudIdentitytoolkitV1Argon2Parameters();
    o.blockSize = 42;
    o.cpuMemCost = 42;
    o.delegatedProjectNumber = 'foo';
    o.dkLen = 42;
    o.hashAlgorithm = 'foo';
    o.memoryCost = 42;
    o.parallelization = 42;
    o.passwordHashOrder = 'foo';
    o.rounds = 42;
    o.saltSeparator = 'foo';
    o.sanityCheck = true;
    o.signerKey = 'foo';
    o.tenantId = 'foo';
    o.users = buildUnnamed29();
  }
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1UploadAccountRequest(
  api.GoogleCloudIdentitytoolkitV1UploadAccountRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest < 3) {
    unittest.expect(o.allowOverwrite!, unittest.isTrue);
    checkGoogleCloudIdentitytoolkitV1Argon2Parameters(o.argon2Parameters!);
    unittest.expect(o.blockSize!, unittest.equals(42));
    unittest.expect(o.cpuMemCost!, unittest.equals(42));
    unittest.expect(o.delegatedProjectNumber!, unittest.equals('foo'));
    unittest.expect(o.dkLen!, unittest.equals(42));
    unittest.expect(o.hashAlgorithm!, unittest.equals('foo'));
    unittest.expect(o.memoryCost!, unittest.equals(42));
    unittest.expect(o.parallelization!, unittest.equals(42));
    unittest.expect(o.passwordHashOrder!, unittest.equals('foo'));
    unittest.expect(o.rounds!, unittest.equals(42));
    unittest.expect(o.saltSeparator!, unittest.equals('foo'));
    unittest.expect(o.sanityCheck!, unittest.isTrue);
    unittest.expect(o.signerKey!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    checkUnnamed29(o.users!);
  }
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountRequest--;
}

core.List<api.GoogleCloudIdentitytoolkitV1ErrorInfo> buildUnnamed30() => [
  buildGoogleCloudIdentitytoolkitV1ErrorInfo(),
  buildGoogleCloudIdentitytoolkitV1ErrorInfo(),
];

void checkUnnamed30(core.List<api.GoogleCloudIdentitytoolkitV1ErrorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1ErrorInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1ErrorInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse = 0;
api.GoogleCloudIdentitytoolkitV1UploadAccountResponse
buildGoogleCloudIdentitytoolkitV1UploadAccountResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1UploadAccountResponse();
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse < 3) {
    o.error = buildUnnamed30();
    o.kind = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1UploadAccountResponse(
  api.GoogleCloudIdentitytoolkitV1UploadAccountResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse < 3) {
    checkUnnamed30(o.error!);
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1UploadAccountResponse--;
}

core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> buildUnnamed31() => [
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
  buildGoogleCloudIdentitytoolkitV1MfaEnrollment(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudIdentitytoolkitV1MfaEnrollment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[0]);
  checkGoogleCloudIdentitytoolkitV1MfaEnrollment(o[1]);
}

core.List<api.GoogleCloudIdentitytoolkitV1ProviderUserInfo> buildUnnamed32() =>
    [
      buildGoogleCloudIdentitytoolkitV1ProviderUserInfo(),
      buildGoogleCloudIdentitytoolkitV1ProviderUserInfo(),
    ];

void checkUnnamed32(
  core.List<api.GoogleCloudIdentitytoolkitV1ProviderUserInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(o[0]);
  checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(o[1]);
}

core.int buildCounterGoogleCloudIdentitytoolkitV1UserInfo = 0;
api.GoogleCloudIdentitytoolkitV1UserInfo
buildGoogleCloudIdentitytoolkitV1UserInfo() {
  final o = api.GoogleCloudIdentitytoolkitV1UserInfo();
  buildCounterGoogleCloudIdentitytoolkitV1UserInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UserInfo < 3) {
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.customAuth = true;
    o.dateOfBirth = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailLinkSignin = true;
    o.emailVerified = true;
    o.initialEmail = 'foo';
    o.language = 'foo';
    o.lastLoginAt = 'foo';
    o.lastRefreshAt = 'foo';
    o.localId = 'foo';
    o.mfaInfo = buildUnnamed31();
    o.passwordHash = 'foo';
    o.passwordUpdatedAt = 42.0;
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerUserInfo = buildUnnamed32();
    o.rawPassword = 'foo';
    o.salt = 'foo';
    o.screenName = 'foo';
    o.tenantId = 'foo';
    o.timeZone = 'foo';
    o.validSince = 'foo';
    o.version = 42;
  }
  buildCounterGoogleCloudIdentitytoolkitV1UserInfo--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1UserInfo(
  api.GoogleCloudIdentitytoolkitV1UserInfo o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1UserInfo++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UserInfo < 3) {
    unittest.expect(o.createdAt!, unittest.equals('foo'));
    unittest.expect(o.customAttributes!, unittest.equals('foo'));
    unittest.expect(o.customAuth!, unittest.isTrue);
    unittest.expect(o.dateOfBirth!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.emailLinkSignin!, unittest.isTrue);
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(o.initialEmail!, unittest.equals('foo'));
    unittest.expect(o.language!, unittest.equals('foo'));
    unittest.expect(o.lastLoginAt!, unittest.equals('foo'));
    unittest.expect(o.lastRefreshAt!, unittest.equals('foo'));
    unittest.expect(o.localId!, unittest.equals('foo'));
    checkUnnamed31(o.mfaInfo!);
    unittest.expect(o.passwordHash!, unittest.equals('foo'));
    unittest.expect(o.passwordUpdatedAt!, unittest.equals(42.0));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.photoUrl!, unittest.equals('foo'));
    checkUnnamed32(o.providerUserInfo!);
    unittest.expect(o.rawPassword!, unittest.equals('foo'));
    unittest.expect(o.salt!, unittest.equals('foo'));
    unittest.expect(o.screenName!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.validSince!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleCloudIdentitytoolkitV1UserInfo--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1UserNotification = 0;
api.GoogleCloudIdentitytoolkitV1UserNotification
buildGoogleCloudIdentitytoolkitV1UserNotification() {
  final o = api.GoogleCloudIdentitytoolkitV1UserNotification();
  buildCounterGoogleCloudIdentitytoolkitV1UserNotification++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UserNotification < 3) {
    o.notificationCode = 'foo';
    o.notificationMessage = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1UserNotification--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1UserNotification(
  api.GoogleCloudIdentitytoolkitV1UserNotification o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1UserNotification++;
  if (buildCounterGoogleCloudIdentitytoolkitV1UserNotification < 3) {
    unittest.expect(o.notificationCode!, unittest.equals('foo'));
    unittest.expect(o.notificationMessage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1UserNotification--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest = 0;
api.GoogleCloudIdentitytoolkitV1VerifyIosClientRequest
buildGoogleCloudIdentitytoolkitV1VerifyIosClientRequest() {
  final o = api.GoogleCloudIdentitytoolkitV1VerifyIosClientRequest();
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest < 3) {
    o.appToken = 'foo';
    o.isSandbox = true;
  }
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1VerifyIosClientRequest(
  api.GoogleCloudIdentitytoolkitV1VerifyIosClientRequest o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest++;
  if (buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest < 3) {
    unittest.expect(o.appToken!, unittest.equals('foo'));
    unittest.expect(o.isSandbox!, unittest.isTrue);
  }
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientRequest--;
}

core.int buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse = 0;
api.GoogleCloudIdentitytoolkitV1VerifyIosClientResponse
buildGoogleCloudIdentitytoolkitV1VerifyIosClientResponse() {
  final o = api.GoogleCloudIdentitytoolkitV1VerifyIosClientResponse();
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse < 3) {
    o.receipt = 'foo';
    o.suggestedTimeout = 'foo';
  }
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse--;
  return o;
}

void checkGoogleCloudIdentitytoolkitV1VerifyIosClientResponse(
  api.GoogleCloudIdentitytoolkitV1VerifyIosClientResponse o,
) {
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse++;
  if (buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse < 3) {
    unittest.expect(o.receipt!, unittest.equals('foo'));
    unittest.expect(o.suggestedTimeout!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudIdentitytoolkitV1VerifyIosClientResponse--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1Argon2Parameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1Argon2Parameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1Argon2Parameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1Argon2Parameters(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1AutoRetrievalInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1AutoRetrievalInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV1AutoRetrievalInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1AutoRetrievalInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1CreateAuthUriRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1CreateAuthUriRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1CreateAuthUriRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1CreateAuthUriRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1CreateAuthUriResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1CreateAuthUriResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1CreateAuthUriResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1CreateAuthUriResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1DeleteAccountRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1DeleteAccountRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1DeleteAccountRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1DeleteAccountResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1DeleteAccountResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1DeleteAccountResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1DownloadAccountResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1DownloadAccountResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1DownloadAccountResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1EmailInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1EmailInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1EmailInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1EmailInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1EmailTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1EmailTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1EmailTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1ErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1ErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1ErrorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1ErrorInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1FederatedUserIdentifier',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1FederatedUserIdentifier();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1FederatedUserIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1FederatedUserIdentifier(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetAccountInfoRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetAccountInfoRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetAccountInfoRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetAccountInfoResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetAccountInfoResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetOobCodeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetOobCodeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetOobCodeRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetOobCodeResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetOobCodeResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetOobCodeResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetProjectConfigResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetProjectConfigResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1GetProjectConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetProjectConfigResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1IdpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1IdpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1IdpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1IdpConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1MfaEnrollment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1MfaEnrollment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1MfaEnrollment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1MfaFactor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1MfaFactor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1MfaFactor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1MfaFactor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1MfaInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1MfaInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1MfaInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1MfaInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1OpenIdConnectKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1OpenIdConnectKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1OpenIdConnectKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1OpenIdConnectKey(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1ProviderUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1ProviderUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1ProviderUserInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1QueryUserInfoRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1QueryUserInfoRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1QueryUserInfoRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1QueryUserInfoResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1QueryUserInfoResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1ResetPasswordRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1ResetPasswordRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1ResetPasswordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1ResetPasswordRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1ResetPasswordResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1ResetPasswordResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1ResetPasswordResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1ResetPasswordResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SetAccountInfoRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SetAccountInfoRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SetAccountInfoRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SetAccountInfoResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SetAccountInfoResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithIdpRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SignInWithIdpRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithIdpRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithIdpRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithIdpResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SignInWithIdpResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithIdpResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithIdpResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1SignUpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1SignUpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1SignUpRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1SignUpResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1SignUpResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1SignUpResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1SqlExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1SqlExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1SqlExpression.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1SqlExpression(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1TotpInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1TotpInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1TotpInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1TotpInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1UploadAccountRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1UploadAccountRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1UploadAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1UploadAccountRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1UploadAccountResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1UploadAccountResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1UploadAccountResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIdentitytoolkitV1UserNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIdentitytoolkitV1UserNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIdentitytoolkitV1UserNotification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudIdentitytoolkitV1UserNotification(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1VerifyIosClientRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1VerifyIosClientRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1VerifyIosClientRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1VerifyIosClientRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudIdentitytoolkitV1VerifyIosClientResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudIdentitytoolkitV1VerifyIosClientResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudIdentitytoolkitV1VerifyIosClientResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudIdentitytoolkitV1VerifyIosClientResponse(od);
      });
    },
  );

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--createAuthUri', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1CreateAuthUriRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1CreateAuthUriRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1CreateAuthUriRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v1/accounts:createAuthUri'),
          );
          pathOffset += 25;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1CreateAuthUriResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createAuthUri(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1CreateAuthUriResponse(
        response as api.GoogleCloudIdentitytoolkitV1CreateAuthUriResponse,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1DeleteAccountRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1DeleteAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/accounts:delete'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1DeleteAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1DeleteAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse,
      );
    });

    unittest.test('method--issueSamlResponse', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1IssueSamlResponseRequest(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('v1/accounts:issueSamlResponse'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.issueSamlResponse(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1IssueSamlResponseResponse(
        response as api.GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse,
      );
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1GetAccountInfoRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/accounts:lookup'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse,
      );
    });

    unittest.test('method--resetPassword', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1ResetPasswordRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1ResetPasswordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1ResetPasswordRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v1/accounts:resetPassword'),
          );
          pathOffset += 25;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1ResetPasswordResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resetPassword(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1ResetPasswordResponse(
        response as api.GoogleCloudIdentitytoolkitV1ResetPasswordResponse,
      );
    });

    unittest.test('method--sendOobCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request = buildGoogleCloudIdentitytoolkitV1GetOobCodeRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetOobCodeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1/accounts:sendOobCode'),
          );
          pathOffset += 23;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetOobCodeResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sendOobCode(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1GetOobCodeResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse,
      );
    });

    unittest.test('method--sendVerificationCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SendVerificationCodeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('v1/accounts:sendVerificationCode'),
          );
          pathOffset += 32;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sendVerificationCode(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SendVerificationCodeResponse(
        response
            as api.GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse,
      );
    });

    unittest.test('method--signInWithCustomToken', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest(obj);

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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('v1/accounts:signInWithCustomToken'),
          );
          pathOffset += 33;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithCustomToken(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse(
        response
            as api.GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse,
      );
    });

    unittest.test('method--signInWithEmailLink', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('v1/accounts:signInWithEmailLink'),
          );
          pathOffset += 31;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithEmailLink(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse,
      );
    });

    unittest.test('method--signInWithGameCenter', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('v1/accounts:signInWithGameCenter'),
          );
          pathOffset += 32;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithGameCenter(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse(
        response
            as api.GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse,
      );
    });

    unittest.test('method--signInWithIdp', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithIdpRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithIdpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithIdpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v1/accounts:signInWithIdp'),
          );
          pathOffset += 25;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithIdpResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithIdp(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithIdpResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignInWithIdpResponse,
      );
    });

    unittest.test('method--signInWithPassword', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithPasswordRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('v1/accounts:signInWithPassword'),
          );
          pathOffset += 30;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithPassword(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithPasswordResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse,
      );
    });

    unittest.test('method--signInWithPhoneNumber', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest(obj);

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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('v1/accounts:signInWithPhoneNumber'),
          );
          pathOffset += 33;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signInWithPhoneNumber(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse(
        response
            as api.GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse,
      );
    });

    unittest.test('method--signUp', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request = buildGoogleCloudIdentitytoolkitV1SignUpRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignUpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/accounts:signUp'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignUpResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signUp(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1SignUpResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignUpResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SetAccountInfoRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/accounts:update'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(arg_request, $fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse,
      );
    });

    unittest.test('method--verifyIosClient', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).accounts;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1VerifyIosClientRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1VerifyIosClientRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1VerifyIosClientRequest(obj);

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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v1/accounts:verifyIosClient'),
          );
          pathOffset += 27;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1VerifyIosClientResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.verifyIosClient(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1VerifyIosClientResponse(
        response as api.GoogleCloudIdentitytoolkitV1VerifyIosClientResponse,
      );
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--accounts', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects;
      final arg_request = buildGoogleCloudIdentitytoolkitV1SignUpRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignUpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignUpResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accounts(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignUpResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignUpResponse,
      );
    });

    unittest.test('method--createSessionCookie', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createSessionCookie(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(
        response as api.GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse,
      );
    });

    unittest.test('method--queryAccounts', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1QueryUserInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1QueryUserInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryAccounts(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse,
      );
    });
  });

  unittest.group('resource-ProjectsAccountsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1UploadAccountRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1UploadAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1UploadAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1UploadAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1UploadAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1UploadAccountResponse,
      );
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(
        response as api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse,
      );
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_targetProjectId = 'foo';
      final arg_delegatedProjectNumber = 'foo';
      final arg_maxResults = 42;
      final arg_nextPageToken = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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
            queryMap['delegatedProjectNumber']!.first,
            unittest.equals(arg_delegatedProjectNumber),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['nextPageToken']!.first,
            unittest.equals(arg_nextPageToken),
          );
          unittest.expect(
            queryMap['tenantId']!.first,
            unittest.equals(arg_tenantId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1DownloadAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchGet(
        arg_targetProjectId,
        delegatedProjectNumber: arg_delegatedProjectNumber,
        maxResults: arg_maxResults,
        nextPageToken: arg_nextPageToken,
        tenantId: arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1DownloadAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1DownloadAccountResponse,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1DeleteAccountRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1DeleteAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1DeleteAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1DeleteAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse,
      );
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1GetAccountInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1QueryUserInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1QueryUserInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse,
      );
    });

    unittest.test('method--sendOobCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request = buildGoogleCloudIdentitytoolkitV1GetOobCodeRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetOobCodeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetOobCodeResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sendOobCode(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetOobCodeResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SetAccountInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_targetProjectId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse,
      );
    });
  });

  unittest.group('resource-ProjectsTenantsResource', () {
    unittest.test('method--accounts', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
      final arg_request = buildGoogleCloudIdentitytoolkitV1SignUpRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SignUpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SignUpResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accounts(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SignUpResponse(
        response as api.GoogleCloudIdentitytoolkitV1SignUpResponse,
      );
    });

    unittest.test('method--createSessionCookie', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1CreateSessionCookieRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createSessionCookie(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1CreateSessionCookieResponse(
        response as api.GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse,
      );
    });
  });

  unittest.group('resource-ProjectsTenantsAccountsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1UploadAccountRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1UploadAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1UploadAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1UploadAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1UploadAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1UploadAccountResponse,
      );
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse(
        response as api.GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse,
      );
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_delegatedProjectNumber = 'foo';
      final arg_maxResults = 42;
      final arg_nextPageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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
            queryMap['delegatedProjectNumber']!.first,
            unittest.equals(arg_delegatedProjectNumber),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['nextPageToken']!.first,
            unittest.equals(arg_nextPageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1DownloadAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchGet(
        arg_targetProjectId,
        arg_tenantId,
        delegatedProjectNumber: arg_delegatedProjectNumber,
        maxResults: arg_maxResults,
        nextPageToken: arg_nextPageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1DownloadAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1DownloadAccountResponse,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1DeleteAccountRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1DeleteAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1DeleteAccountResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1DeleteAccountResponse(
        response as api.GoogleCloudIdentitytoolkitV1DeleteAccountResponse,
      );
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1GetAccountInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetAccountInfoResponse,
      );
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1QueryUserInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1QueryUserInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.query(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1QueryUserInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1QueryUserInfoResponse,
      );
    });

    unittest.test('method--sendOobCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request = buildGoogleCloudIdentitytoolkitV1GetOobCodeRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1GetOobCodeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetOobCodeResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.sendOobCode(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetOobCodeResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetOobCodeResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).projects.tenants.accounts_1;
      final arg_request =
          buildGoogleCloudIdentitytoolkitV1SetAccountInfoRequest();
      final arg_targetProjectId = 'foo';
      final arg_tenantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudIdentitytoolkitV1SetAccountInfoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_targetProjectId,
        arg_tenantId,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1SetAccountInfoResponse(
        response as api.GoogleCloudIdentitytoolkitV1SetAccountInfoResponse,
      );
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--getProjects', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v1;
      final arg_androidPackageName = 'foo';
      final arg_clientId = 'foo';
      final arg_delegatedProjectNumber = 'foo';
      final arg_firebaseAppId = 'foo';
      final arg_iosBundleId = 'foo';
      final arg_projectNumber = 'foo';
      final arg_returnDynamicLink = true;
      final arg_sha1Cert = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('v1/projects'),
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
            queryMap['androidPackageName']!.first,
            unittest.equals(arg_androidPackageName),
          );
          unittest.expect(
            queryMap['clientId']!.first,
            unittest.equals(arg_clientId),
          );
          unittest.expect(
            queryMap['delegatedProjectNumber']!.first,
            unittest.equals(arg_delegatedProjectNumber),
          );
          unittest.expect(
            queryMap['firebaseAppId']!.first,
            unittest.equals(arg_firebaseAppId),
          );
          unittest.expect(
            queryMap['iosBundleId']!.first,
            unittest.equals(arg_iosBundleId),
          );
          unittest.expect(
            queryMap['projectNumber']!.first,
            unittest.equals(arg_projectNumber),
          );
          unittest.expect(
            queryMap['returnDynamicLink']!.first,
            unittest.equals('$arg_returnDynamicLink'),
          );
          unittest.expect(
            queryMap['sha1Cert']!.first,
            unittest.equals(arg_sha1Cert),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetProjectConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getProjects(
        androidPackageName: arg_androidPackageName,
        clientId: arg_clientId,
        delegatedProjectNumber: arg_delegatedProjectNumber,
        firebaseAppId: arg_firebaseAppId,
        iosBundleId: arg_iosBundleId,
        projectNumber: arg_projectNumber,
        returnDynamicLink: arg_returnDynamicLink,
        sha1Cert: arg_sha1Cert,
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetProjectConfigResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetProjectConfigResponse,
      );
    });

    unittest.test('method--getPublicKeys', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v1;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1/publicKeys'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = '';
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      await res.getPublicKeys($fields: arg_$fields);
    });

    unittest.test('method--getRecaptchaParams', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v1;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/recaptchaParams'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRecaptchaParams($fields: arg_$fields);
      checkGoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse(
        response as api.GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse,
      );
    });

    unittest.test('method--getSessionCookiePublicKeys', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).v1;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('v1/sessionCookiePublicKeys'),
          );
          pathOffset += 26;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSessionCookiePublicKeys(
        $fields: arg_$fields,
      );
      checkGoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse(
        response
            as api.GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse,
      );
    });
  });
}
