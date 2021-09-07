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

import 'package:googleapis/identitytoolkit/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed578() => [
      'foo',
      'foo',
    ];

void checkUnnamed578(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed579() => [
      'foo',
      'foo',
    ];

void checkUnnamed579(core.List<core.String> o) {
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

core.int buildCounterCreateAuthUriResponse = 0;
api.CreateAuthUriResponse buildCreateAuthUriResponse() {
  final o = api.CreateAuthUriResponse();
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    o.allProviders = buildUnnamed578();
    o.authUri = 'foo';
    o.captchaRequired = true;
    o.forExistingProvider = true;
    o.kind = 'foo';
    o.providerId = 'foo';
    o.registered = true;
    o.sessionId = 'foo';
    o.signinMethods = buildUnnamed579();
  }
  buildCounterCreateAuthUriResponse--;
  return o;
}

void checkCreateAuthUriResponse(api.CreateAuthUriResponse o) {
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    checkUnnamed578(o.allProviders!);
    unittest.expect(
      o.authUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.captchaRequired!, unittest.isTrue);
    unittest.expect(o.forExistingProvider!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.registered!, unittest.isTrue);
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
    checkUnnamed579(o.signinMethods!);
  }
  buildCounterCreateAuthUriResponse--;
}

core.int buildCounterDeleteAccountResponse = 0;
api.DeleteAccountResponse buildDeleteAccountResponse() {
  final o = api.DeleteAccountResponse();
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterDeleteAccountResponse--;
  return o;
}

void checkDeleteAccountResponse(api.DeleteAccountResponse o) {
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteAccountResponse--;
}

core.List<api.UserInfo> buildUnnamed580() => [
      buildUserInfo(),
      buildUserInfo(),
    ];

void checkUnnamed580(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterDownloadAccountResponse = 0;
api.DownloadAccountResponse buildDownloadAccountResponse() {
  final o = api.DownloadAccountResponse();
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.users = buildUnnamed580();
  }
  buildCounterDownloadAccountResponse--;
  return o;
}

void checkDownloadAccountResponse(api.DownloadAccountResponse o) {
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed580(o.users!);
  }
  buildCounterDownloadAccountResponse--;
}

core.int buildCounterEmailLinkSigninResponse = 0;
api.EmailLinkSigninResponse buildEmailLinkSigninResponse() {
  final o = api.EmailLinkSigninResponse();
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.localId = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterEmailLinkSigninResponse--;
  return o;
}

void checkEmailLinkSigninResponse(api.EmailLinkSigninResponse o) {
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailLinkSigninResponse--;
}

core.int buildCounterEmailTemplate = 0;
api.EmailTemplate buildEmailTemplate() {
  final o = api.EmailTemplate();
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    o.body = 'foo';
    o.format = 'foo';
    o.from = 'foo';
    o.fromDisplayName = 'foo';
    o.replyTo = 'foo';
    o.subject = 'foo';
  }
  buildCounterEmailTemplate--;
  return o;
}

void checkEmailTemplate(api.EmailTemplate o) {
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.from!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fromDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replyTo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailTemplate--;
}

core.List<api.UserInfo> buildUnnamed581() => [
      buildUserInfo(),
      buildUserInfo(),
    ];

void checkUnnamed581(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterGetAccountInfoResponse = 0;
api.GetAccountInfoResponse buildGetAccountInfoResponse() {
  final o = api.GetAccountInfoResponse();
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    o.kind = 'foo';
    o.users = buildUnnamed581();
  }
  buildCounterGetAccountInfoResponse--;
  return o;
}

void checkGetAccountInfoResponse(api.GetAccountInfoResponse o) {
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed581(o.users!);
  }
  buildCounterGetAccountInfoResponse--;
}

core.int buildCounterGetOobConfirmationCodeResponse = 0;
api.GetOobConfirmationCodeResponse buildGetOobConfirmationCodeResponse() {
  final o = api.GetOobConfirmationCodeResponse();
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterGetOobConfirmationCodeResponse--;
  return o;
}

void checkGetOobConfirmationCodeResponse(api.GetOobConfirmationCodeResponse o) {
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oobCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetOobConfirmationCodeResponse--;
}

core.int buildCounterGetRecaptchaParamResponse = 0;
api.GetRecaptchaParamResponse buildGetRecaptchaParamResponse() {
  final o = api.GetRecaptchaParamResponse();
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    o.kind = 'foo';
    o.recaptchaSiteKey = 'foo';
    o.recaptchaStoken = 'foo';
  }
  buildCounterGetRecaptchaParamResponse--;
  return o;
}

void checkGetRecaptchaParamResponse(api.GetRecaptchaParamResponse o) {
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recaptchaSiteKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recaptchaStoken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetRecaptchaParamResponse--;
}

core.Map<core.String, core.String> buildUnnamed582() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed582(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest = 0;
api.IdentitytoolkitRelyingpartyCreateAuthUriRequest
    buildIdentitytoolkitRelyingpartyCreateAuthUriRequest() {
  final o = api.IdentitytoolkitRelyingpartyCreateAuthUriRequest();
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    o.appId = 'foo';
    o.authFlowType = 'foo';
    o.clientId = 'foo';
    o.context = 'foo';
    o.continueUri = 'foo';
    o.customParameter = buildUnnamed582();
    o.hostedDomain = 'foo';
    o.identifier = 'foo';
    o.oauthConsumerKey = 'foo';
    o.oauthScope = 'foo';
    o.openidRealm = 'foo';
    o.otaApp = 'foo';
    o.providerId = 'foo';
    o.sessionId = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(
    api.IdentitytoolkitRelyingpartyCreateAuthUriRequest o) {
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authFlowType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.context!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.continueUri!,
      unittest.equals('foo'),
    );
    checkUnnamed582(o.customParameter!);
    unittest.expect(
      o.hostedDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.identifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthConsumerKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.openidRealm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.otaApp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantProjectNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest = 0;
api.IdentitytoolkitRelyingpartyDeleteAccountRequest
    buildIdentitytoolkitRelyingpartyDeleteAccountRequest() {
  final o = api.IdentitytoolkitRelyingpartyDeleteAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyDeleteAccountRequest(
    api.IdentitytoolkitRelyingpartyDeleteAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest = 0;
api.IdentitytoolkitRelyingpartyDownloadAccountRequest
    buildIdentitytoolkitRelyingpartyDownloadAccountRequest() {
  final o = api.IdentitytoolkitRelyingpartyDownloadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.maxResults = 42;
    o.nextPageToken = 'foo';
    o.targetProjectId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyDownloadAccountRequest(
    api.IdentitytoolkitRelyingpartyDownloadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetProjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest = 0;
api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest() {
  final o = api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest();
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    o.email = 'foo';
    o.idToken = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(
    api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest o) {
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oobCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
}

core.List<core.String> buildUnnamed583() => [
      'foo',
      'foo',
    ];

void checkUnnamed583(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed584() => [
      'foo',
      'foo',
    ];

void checkUnnamed584(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed585() => [
      'foo',
      'foo',
    ];

void checkUnnamed585(core.List<core.String> o) {
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

core.int buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest = 0;
api.IdentitytoolkitRelyingpartyGetAccountInfoRequest
    buildIdentitytoolkitRelyingpartyGetAccountInfoRequest() {
  final o = api.IdentitytoolkitRelyingpartyGetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.email = buildUnnamed583();
    o.idToken = 'foo';
    o.localId = buildUnnamed584();
    o.phoneNumber = buildUnnamed585();
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartyGetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed583(o.email!);
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    checkUnnamed584(o.localId!);
    checkUnnamed585(o.phoneNumber!);
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
}

core.List<core.String> buildUnnamed586() => [
      'foo',
      'foo',
    ];

void checkUnnamed586(core.List<core.String> o) {
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

core.List<api.IdpConfig> buildUnnamed587() => [
      buildIdpConfig(),
      buildIdpConfig(),
    ];

void checkUnnamed587(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0]);
  checkIdpConfig(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse = 0;
api.IdentitytoolkitRelyingpartyGetProjectConfigResponse
    buildIdentitytoolkitRelyingpartyGetProjectConfigResponse() {
  final o = api.IdentitytoolkitRelyingpartyGetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    o.allowPasswordUser = true;
    o.apiKey = 'foo';
    o.authorizedDomains = buildUnnamed586();
    o.changeEmailTemplate = buildEmailTemplate();
    o.dynamicLinksDomain = 'foo';
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed587();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.projectId = 'foo';
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartyGetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    unittest.expect(o.allowPasswordUser!, unittest.isTrue);
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    checkUnnamed586(o.authorizedDomains!);
    checkEmailTemplate(o.changeEmailTemplate!);
    unittest.expect(
      o.dynamicLinksDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAnonymousUser!, unittest.isTrue);
    checkUnnamed587(o.idpConfig!);
    checkEmailTemplate(o.legacyResetPasswordTemplate!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkEmailTemplate(o.resetPasswordTemplate!);
    unittest.expect(o.useEmailSending!, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate!);
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
}

api.IdentitytoolkitRelyingpartyGetPublicKeysResponse
    buildIdentitytoolkitRelyingpartyGetPublicKeysResponse() {
  final o = api.IdentitytoolkitRelyingpartyGetPublicKeysResponse();
  o['a'] = 'foo';
  o['b'] = 'foo';
  return o;
}

void checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
    api.IdentitytoolkitRelyingpartyGetPublicKeysResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['a']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['b']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest = 0;
api.IdentitytoolkitRelyingpartyResetPasswordRequest
    buildIdentitytoolkitRelyingpartyResetPasswordRequest() {
  final o = api.IdentitytoolkitRelyingpartyResetPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    o.email = 'foo';
    o.newPassword = 'foo';
    o.oldPassword = 'foo';
    o.oobCode = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyResetPasswordRequest(
    api.IdentitytoolkitRelyingpartyResetPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oobCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest = 0;
api.IdentitytoolkitRelyingpartySendVerificationCodeRequest
    buildIdentitytoolkitRelyingpartySendVerificationCodeRequest() {
  final o = api.IdentitytoolkitRelyingpartySendVerificationCodeRequest();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    o.iosReceipt = 'foo';
    o.iosSecret = 'foo';
    o.phoneNumber = 'foo';
    o.recaptchaToken = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(
    api.IdentitytoolkitRelyingpartySendVerificationCodeRequest o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    unittest.expect(
      o.iosReceipt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iosSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recaptchaToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse =
    0;
api.IdentitytoolkitRelyingpartySendVerificationCodeResponse
    buildIdentitytoolkitRelyingpartySendVerificationCodeResponse() {
  final o = api.IdentitytoolkitRelyingpartySendVerificationCodeResponse();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    o.sessionInfo = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(
    api.IdentitytoolkitRelyingpartySendVerificationCodeResponse o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    unittest.expect(
      o.sessionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
}

core.List<core.String> buildUnnamed588() => [
      'foo',
      'foo',
    ];

void checkUnnamed588(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed589() => [
      'foo',
      'foo',
    ];

void checkUnnamed589(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed590() => [
      'foo',
      'foo',
    ];

void checkUnnamed590(core.List<core.String> o) {
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

core.int buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest = 0;
api.IdentitytoolkitRelyingpartySetAccountInfoRequest
    buildIdentitytoolkitRelyingpartySetAccountInfoRequest() {
  final o = api.IdentitytoolkitRelyingpartySetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.deleteAttribute = buildUnnamed588();
    o.deleteProvider = buildUnnamed589();
    o.disableUser = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.lastLoginAt = 'foo';
    o.localId = 'foo';
    o.oobCode = 'foo';
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.provider = buildUnnamed590();
    o.returnSecureToken = true;
    o.upgradeToFederatedLogin = true;
    o.validSince = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartySetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    unittest.expect(
      o.captchaChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.captchaResponse!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customAttributes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed588(o.deleteAttribute!);
    checkUnnamed589(o.deleteProvider!);
    unittest.expect(o.disableUser!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastLoginAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oobCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed590(o.provider!);
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(o.upgradeToFederatedLogin!, unittest.isTrue);
    unittest.expect(
      o.validSince!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
}

core.List<core.String> buildUnnamed591() => [
      'foo',
      'foo',
    ];

void checkUnnamed591(core.List<core.String> o) {
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

core.List<api.IdpConfig> buildUnnamed592() => [
      buildIdpConfig(),
      buildIdpConfig(),
    ];

void checkUnnamed592(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0]);
  checkIdpConfig(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest = 0;
api.IdentitytoolkitRelyingpartySetProjectConfigRequest
    buildIdentitytoolkitRelyingpartySetProjectConfigRequest() {
  final o = api.IdentitytoolkitRelyingpartySetProjectConfigRequest();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    o.allowPasswordUser = true;
    o.apiKey = 'foo';
    o.authorizedDomains = buildUnnamed591();
    o.changeEmailTemplate = buildEmailTemplate();
    o.delegatedProjectNumber = 'foo';
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed592();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetProjectConfigRequest(
    api.IdentitytoolkitRelyingpartySetProjectConfigRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    unittest.expect(o.allowPasswordUser!, unittest.isTrue);
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    checkUnnamed591(o.authorizedDomains!);
    checkEmailTemplate(o.changeEmailTemplate!);
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAnonymousUser!, unittest.isTrue);
    checkUnnamed592(o.idpConfig!);
    checkEmailTemplate(o.legacyResetPasswordTemplate!);
    checkEmailTemplate(o.resetPasswordTemplate!);
    unittest.expect(o.useEmailSending!, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate!);
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse = 0;
api.IdentitytoolkitRelyingpartySetProjectConfigResponse
    buildIdentitytoolkitRelyingpartySetProjectConfigResponse() {
  final o = api.IdentitytoolkitRelyingpartySetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    o.projectId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartySetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserRequest = 0;
api.IdentitytoolkitRelyingpartySignOutUserRequest
    buildIdentitytoolkitRelyingpartySignOutUserRequest() {
  final o = api.IdentitytoolkitRelyingpartySignOutUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    o.instanceId = 'foo';
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignOutUserRequest(
    api.IdentitytoolkitRelyingpartySignOutUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserResponse = 0;
api.IdentitytoolkitRelyingpartySignOutUserResponse
    buildIdentitytoolkitRelyingpartySignOutUserResponse() {
  final o = api.IdentitytoolkitRelyingpartySignOutUserResponse();
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    o.localId = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignOutUserResponse(
    api.IdentitytoolkitRelyingpartySignOutUserResponse o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest = 0;
api.IdentitytoolkitRelyingpartySignupNewUserRequest
    buildIdentitytoolkitRelyingpartySignupNewUserRequest() {
  final o = api.IdentitytoolkitRelyingpartySignupNewUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.localId = 'foo';
    o.password = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartySignupNewUserRequest(
    api.IdentitytoolkitRelyingpartySignupNewUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    unittest.expect(
      o.captchaChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.captchaResponse!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantProjectNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
}

core.List<api.UserInfo> buildUnnamed593() => [
      buildUserInfo(),
      buildUserInfo(),
    ];

void checkUnnamed593(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest = 0;
api.IdentitytoolkitRelyingpartyUploadAccountRequest
    buildIdentitytoolkitRelyingpartyUploadAccountRequest() {
  final o = api.IdentitytoolkitRelyingpartyUploadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    o.allowOverwrite = true;
    o.blockSize = 42;
    o.cpuMemCost = 42;
    o.delegatedProjectNumber = 'foo';
    o.dkLen = 42;
    o.hashAlgorithm = 'foo';
    o.memoryCost = 42;
    o.parallelization = 42;
    o.rounds = 42;
    o.saltSeparator = 'foo';
    o.sanityCheck = true;
    o.signerKey = 'foo';
    o.targetProjectId = 'foo';
    o.users = buildUnnamed593();
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyUploadAccountRequest(
    api.IdentitytoolkitRelyingpartyUploadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    unittest.expect(o.allowOverwrite!, unittest.isTrue);
    unittest.expect(
      o.blockSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpuMemCost!,
      unittest.equals(42),
    );
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dkLen!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hashAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryCost!,
      unittest.equals(42),
    );
    unittest.expect(
      o.parallelization!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rounds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.saltSeparator!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sanityCheck!, unittest.isTrue);
    unittest.expect(
      o.signerKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetProjectId!,
      unittest.equals('foo'),
    );
    checkUnnamed593(o.users!);
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyAssertionRequest
    buildIdentitytoolkitRelyingpartyVerifyAssertionRequest() {
  final o = api.IdentitytoolkitRelyingpartyVerifyAssertionRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    o.autoCreate = true;
    o.delegatedProjectNumber = 'foo';
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.pendingIdToken = 'foo';
    o.postBody = 'foo';
    o.requestUri = 'foo';
    o.returnIdpCredential = true;
    o.returnRefreshToken = true;
    o.returnSecureToken = true;
    o.sessionId = 'foo';
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(
    api.IdentitytoolkitRelyingpartyVerifyAssertionRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    unittest.expect(o.autoCreate!, unittest.isTrue);
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingIdToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnIdpCredential!, unittest.isTrue);
    unittest.expect(o.returnRefreshToken!, unittest.isTrue);
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantProjectNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest() {
  final o = api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    o.delegatedProjectNumber = 'foo';
    o.instanceId = 'foo';
    o.returnSecureToken = true;
    o.token = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(
    api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyPasswordRequest
    buildIdentitytoolkitRelyingpartyVerifyPasswordRequest() {
  final o = api.IdentitytoolkitRelyingpartyVerifyPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    o.captchaChallenge = 'foo';
    o.captchaResponse = 'foo';
    o.delegatedProjectNumber = 'foo';
    o.email = 'foo';
    o.idToken = 'foo';
    o.instanceId = 'foo';
    o.password = 'foo';
    o.pendingIdToken = 'foo';
    o.returnSecureToken = true;
    o.tenantId = 'foo';
    o.tenantProjectNumber = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(
    api.IdentitytoolkitRelyingpartyVerifyPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    unittest.expect(
      o.captchaChallenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.captchaResponse!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.delegatedProjectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingIdToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.returnSecureToken!, unittest.isTrue);
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantProjectNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest = 0;
api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest() {
  final o = api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    o.code = 'foo';
    o.idToken = 'foo';
    o.operation = 'foo';
    o.phoneNumber = 'foo';
    o.sessionInfo = 'foo';
    o.temporaryProof = 'foo';
    o.verificationProof = 'foo';
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temporaryProof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationProof!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse = 0;
api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse() {
  final o = api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
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
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
  return o;
}

void checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temporaryProof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temporaryProofExpiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationProof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationProofExpiresIn!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
}

core.List<core.String> buildUnnamed594() => [
      'foo',
      'foo',
    ];

void checkUnnamed594(core.List<core.String> o) {
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

core.int buildCounterIdpConfig = 0;
api.IdpConfig buildIdpConfig() {
  final o = api.IdpConfig();
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    o.clientId = 'foo';
    o.enabled = true;
    o.experimentPercent = 42;
    o.provider = 'foo';
    o.secret = 'foo';
    o.whitelistedAudiences = buildUnnamed594();
  }
  buildCounterIdpConfig--;
  return o;
}

void checkIdpConfig(api.IdpConfig o) {
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.experimentPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    checkUnnamed594(o.whitelistedAudiences!);
  }
  buildCounterIdpConfig--;
}

core.int buildCounterRelyingparty = 0;
api.Relyingparty buildRelyingparty() {
  final o = api.Relyingparty();
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    o.androidInstallApp = true;
    o.androidMinimumVersion = 'foo';
    o.androidPackageName = 'foo';
    o.canHandleCodeInApp = true;
    o.captchaResp = 'foo';
    o.challenge = 'foo';
    o.continueUrl = 'foo';
    o.email = 'foo';
    o.iOSAppStoreId = 'foo';
    o.iOSBundleId = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.newEmail = 'foo';
    o.requestType = 'foo';
    o.userIp = 'foo';
  }
  buildCounterRelyingparty--;
  return o;
}

void checkRelyingparty(api.Relyingparty o) {
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    unittest.expect(o.androidInstallApp!, unittest.isTrue);
    unittest.expect(
      o.androidMinimumVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidPackageName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.canHandleCodeInApp!, unittest.isTrue);
    unittest.expect(
      o.captchaResp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.challenge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.continueUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iOSAppStoreId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iOSBundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelyingparty--;
}

core.int buildCounterResetPasswordResponse = 0;
api.ResetPasswordResponse buildResetPasswordResponse() {
  final o = api.ResetPasswordResponse();
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    o.email = 'foo';
    o.kind = 'foo';
    o.newEmail = 'foo';
    o.requestType = 'foo';
  }
  buildCounterResetPasswordResponse--;
  return o;
}

void checkResetPasswordResponse(api.ResetPasswordResponse o) {
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
  }
  buildCounterResetPasswordResponse--;
}

core.int buildCounterSetAccountInfoResponseProviderUserInfo = 0;
api.SetAccountInfoResponseProviderUserInfo
    buildSetAccountInfoResponseProviderUserInfo() {
  final o = api.SetAccountInfoResponseProviderUserInfo();
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    o.displayName = 'foo';
    o.federatedId = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
  return o;
}

void checkSetAccountInfoResponseProviderUserInfo(
    api.SetAccountInfoResponseProviderUserInfo o) {
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.federatedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
}

core.List<api.SetAccountInfoResponseProviderUserInfo> buildUnnamed595() => [
      buildSetAccountInfoResponseProviderUserInfo(),
      buildSetAccountInfoResponseProviderUserInfo(),
    ];

void checkUnnamed595(core.List<api.SetAccountInfoResponseProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetAccountInfoResponseProviderUserInfo(o[0]);
  checkSetAccountInfoResponseProviderUserInfo(o[1]);
}

core.int buildCounterSetAccountInfoResponse = 0;
api.SetAccountInfoResponse buildSetAccountInfoResponse() {
  final o = api.SetAccountInfoResponse();
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
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
    o.providerUserInfo = buildUnnamed595();
    o.refreshToken = 'foo';
  }
  buildCounterSetAccountInfoResponse--;
  return o;
}

void checkSetAccountInfoResponse(api.SetAccountInfoResponse o) {
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed595(o.providerUserInfo!);
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetAccountInfoResponse--;
}

core.int buildCounterSignupNewUserResponse = 0;
api.SignupNewUserResponse buildSignupNewUserResponse() {
  final o = api.SignupNewUserResponse();
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterSignupNewUserResponse--;
  return o;
}

void checkSignupNewUserResponse(api.SignupNewUserResponse o) {
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignupNewUserResponse--;
}

core.int buildCounterUploadAccountResponseError = 0;
api.UploadAccountResponseError buildUploadAccountResponseError() {
  final o = api.UploadAccountResponseError();
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    o.index = 42;
    o.message = 'foo';
  }
  buildCounterUploadAccountResponseError--;
  return o;
}

void checkUploadAccountResponseError(api.UploadAccountResponseError o) {
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadAccountResponseError--;
}

core.List<api.UploadAccountResponseError> buildUnnamed596() => [
      buildUploadAccountResponseError(),
      buildUploadAccountResponseError(),
    ];

void checkUnnamed596(core.List<api.UploadAccountResponseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadAccountResponseError(o[0]);
  checkUploadAccountResponseError(o[1]);
}

core.int buildCounterUploadAccountResponse = 0;
api.UploadAccountResponse buildUploadAccountResponse() {
  final o = api.UploadAccountResponse();
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    o.error = buildUnnamed596();
    o.kind = 'foo';
  }
  buildCounterUploadAccountResponse--;
  return o;
}

void checkUploadAccountResponse(api.UploadAccountResponse o) {
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    checkUnnamed596(o.error!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadAccountResponse--;
}

core.int buildCounterUserInfoProviderUserInfo = 0;
api.UserInfoProviderUserInfo buildUserInfoProviderUserInfo() {
  final o = api.UserInfoProviderUserInfo();
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.federatedId = 'foo';
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawId = 'foo';
    o.screenName = 'foo';
  }
  buildCounterUserInfoProviderUserInfo--;
  return o;
}

void checkUserInfoProviderUserInfo(api.UserInfoProviderUserInfo o) {
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.federatedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInfoProviderUserInfo--;
}

core.List<api.UserInfoProviderUserInfo> buildUnnamed597() => [
      buildUserInfoProviderUserInfo(),
      buildUserInfoProviderUserInfo(),
    ];

void checkUnnamed597(core.List<api.UserInfoProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfoProviderUserInfo(o[0]);
  checkUserInfoProviderUserInfo(o[1]);
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  final o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.createdAt = 'foo';
    o.customAttributes = 'foo';
    o.customAuth = true;
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.emailVerified = true;
    o.lastLoginAt = 'foo';
    o.localId = 'foo';
    o.passwordHash = 'foo';
    o.passwordUpdatedAt = 42.0;
    o.phoneNumber = 'foo';
    o.photoUrl = 'foo';
    o.providerUserInfo = buildUnnamed597();
    o.rawPassword = 'foo';
    o.salt = 'foo';
    o.screenName = 'foo';
    o.validSince = 'foo';
    o.version = 42;
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(
      o.createdAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customAttributes!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customAuth!, unittest.isTrue);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.lastLoginAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordUpdatedAt!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed597(o.providerUserInfo!);
    unittest.expect(
      o.rawPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.salt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validSince!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterUserInfo--;
}

core.List<core.String> buildUnnamed598() => [
      'foo',
      'foo',
    ];

void checkUnnamed598(core.List<core.String> o) {
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

core.int buildCounterVerifyAssertionResponse = 0;
api.VerifyAssertionResponse buildVerifyAssertionResponse() {
  final o = api.VerifyAssertionResponse();
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    o.action = 'foo';
    o.appInstallationUrl = 'foo';
    o.appScheme = 'foo';
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
    o.needConfirmation = true;
    o.needEmail = true;
    o.nickName = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.oauthIdToken = 'foo';
    o.oauthRequestToken = 'foo';
    o.oauthScope = 'foo';
    o.oauthTokenSecret = 'foo';
    o.originalEmail = 'foo';
    o.photoUrl = 'foo';
    o.providerId = 'foo';
    o.rawUserInfo = 'foo';
    o.refreshToken = 'foo';
    o.screenName = 'foo';
    o.timeZone = 'foo';
    o.verifiedProvider = buildUnnamed598();
  }
  buildCounterVerifyAssertionResponse--;
  return o;
}

void checkVerifyAssertionResponse(api.VerifyAssertionResponse o) {
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstallationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appScheme!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.context!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dateOfBirth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.emailRecycled!, unittest.isTrue);
    unittest.expect(o.emailVerified!, unittest.isTrue);
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.federatedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.needConfirmation!, unittest.isTrue);
    unittest.expect(o.needEmail!, unittest.isTrue);
    unittest.expect(
      o.nickName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthAccessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthAuthorizationCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthExpireIn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oauthIdToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthRequestToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthTokenSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawUserInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkUnnamed598(o.verifiedProvider!);
  }
  buildCounterVerifyAssertionResponse--;
}

core.int buildCounterVerifyCustomTokenResponse = 0;
api.VerifyCustomTokenResponse buildVerifyCustomTokenResponse() {
  final o = api.VerifyCustomTokenResponse();
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.isNewUser = true;
    o.kind = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterVerifyCustomTokenResponse--;
  return o;
}

void checkVerifyCustomTokenResponse(api.VerifyCustomTokenResponse o) {
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isNewUser!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyCustomTokenResponse--;
}

core.int buildCounterVerifyPasswordResponse = 0;
api.VerifyPasswordResponse buildVerifyPasswordResponse() {
  final o = api.VerifyPasswordResponse();
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.expiresIn = 'foo';
    o.idToken = 'foo';
    o.kind = 'foo';
    o.localId = 'foo';
    o.oauthAccessToken = 'foo';
    o.oauthAuthorizationCode = 'foo';
    o.oauthExpireIn = 42;
    o.photoUrl = 'foo';
    o.refreshToken = 'foo';
    o.registered = true;
  }
  buildCounterVerifyPasswordResponse--;
  return o;
}

void checkVerifyPasswordResponse(api.VerifyPasswordResponse o) {
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthAccessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthAuthorizationCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthExpireIn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.registered!, unittest.isTrue);
  }
  buildCounterVerifyPasswordResponse--;
}

void main() {
  unittest.group('obj-schema-CreateAuthUriResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAuthUriResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAuthUriResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateAuthUriResponse(od);
    });
  });

  unittest.group('obj-schema-DeleteAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteAccountResponse(od);
    });
  });

  unittest.group('obj-schema-DownloadAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDownloadAccountResponse(od);
    });
  });

  unittest.group('obj-schema-EmailLinkSigninResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailLinkSigninResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailLinkSigninResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailLinkSigninResponse(od);
    });
  });

  unittest.group('obj-schema-EmailTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailTemplate(od);
    });
  });

  unittest.group('obj-schema-GetAccountInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetAccountInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetAccountInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetAccountInfoResponse(od);
    });
  });

  unittest.group('obj-schema-GetOobConfirmationCodeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOobConfirmationCodeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOobConfirmationCodeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOobConfirmationCodeResponse(od);
    });
  });

  unittest.group('obj-schema-GetRecaptchaParamResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetRecaptchaParamResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetRecaptchaParamResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetRecaptchaParamResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyCreateAuthUriRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyDeleteAccountRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyDeleteAccountRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyDownloadAccountRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyDownloadAccountRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyEmailLinkSigninRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyGetAccountInfoRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyGetProjectConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyGetProjectConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartyGetProjectConfigResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyGetPublicKeysResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyGetPublicKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyResetPasswordRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyResetPasswordRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySendVerificationCodeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartySendVerificationCodeResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySetAccountInfoRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySetAccountInfoRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySetProjectConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySetProjectConfigRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartySetProjectConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySetProjectConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartySetProjectConfigResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySetProjectConfigResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignOutUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySignOutUserRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignOutUserResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySignOutUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartySignOutUserResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySignOutUserResponse(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartySignupNewUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartySignupNewUserRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyUploadAccountRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyUploadAccountRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyVerifyAssertionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyCustomTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(od);
    });
  });

  unittest.group('obj-schema-IdentitytoolkitRelyingpartyVerifyPasswordRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(od);
    });
  });

  unittest.group(
      'obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(od);
    });
  });

  unittest.group('obj-schema-IdpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IdpConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIdpConfig(od);
    });
  });

  unittest.group('obj-schema-Relyingparty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelyingparty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Relyingparty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelyingparty(od);
    });
  });

  unittest.group('obj-schema-ResetPasswordResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetPasswordResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetPasswordResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetPasswordResponse(od);
    });
  });

  unittest.group('obj-schema-SetAccountInfoResponseProviderUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAccountInfoResponseProviderUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAccountInfoResponseProviderUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetAccountInfoResponseProviderUserInfo(od);
    });
  });

  unittest.group('obj-schema-SetAccountInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAccountInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAccountInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetAccountInfoResponse(od);
    });
  });

  unittest.group('obj-schema-SignupNewUserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignupNewUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignupNewUserResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignupNewUserResponse(od);
    });
  });

  unittest.group('obj-schema-UploadAccountResponseError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadAccountResponseError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadAccountResponseError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAccountResponseError(od);
    });
  });

  unittest.group('obj-schema-UploadAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAccountResponse(od);
    });
  });

  unittest.group('obj-schema-UserInfoProviderUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInfoProviderUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserInfoProviderUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserInfoProviderUserInfo(od);
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

  unittest.group('obj-schema-VerifyAssertionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyAssertionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyAssertionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyAssertionResponse(od);
    });
  });

  unittest.group('obj-schema-VerifyCustomTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyCustomTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyCustomTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyCustomTokenResponse(od);
    });
  });

  unittest.group('obj-schema-VerifyPasswordResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyPasswordResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyPasswordResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyPasswordResponse(od);
    });
  });

  unittest.group('resource-RelyingpartyResource', () {
    unittest.test('method--createAuthUri', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('createAuthUri'),
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
        final resp = convert.json.encode(buildCreateAuthUriResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createAuthUri(arg_request, $fields: arg_$fields);
      checkCreateAuthUriResponse(response as api.CreateAuthUriResponse);
    });

    unittest.test('method--deleteAccount', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyDeleteAccountRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('deleteAccount'),
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
        final resp = convert.json.encode(buildDeleteAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteAccount(arg_request, $fields: arg_$fields);
      checkDeleteAccountResponse(response as api.DeleteAccountResponse);
    });

    unittest.test('method--downloadAccount', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyDownloadAccountRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('downloadAccount'),
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
        final resp = convert.json.encode(buildDownloadAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.downloadAccount(arg_request, $fields: arg_$fields);
      checkDownloadAccountResponse(response as api.DownloadAccountResponse);
    });

    unittest.test('method--emailLinkSignin', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('emailLinkSignin'),
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
        final resp = convert.json.encode(buildEmailLinkSigninResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.emailLinkSignin(arg_request, $fields: arg_$fields);
      checkEmailLinkSigninResponse(response as api.EmailLinkSigninResponse);
    });

    unittest.test('method--getAccountInfo', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('getAccountInfo'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildGetAccountInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getAccountInfo(arg_request, $fields: arg_$fields);
      checkGetAccountInfoResponse(response as api.GetAccountInfoResponse);
    });

    unittest.test('method--getOobConfirmationCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request = buildRelyingparty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Relyingparty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRelyingparty(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('getOobConfirmationCode'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildGetOobConfirmationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getOobConfirmationCode(arg_request, $fields: arg_$fields);
      checkGetOobConfirmationCodeResponse(
          response as api.GetOobConfirmationCodeResponse);
    });

    unittest.test('method--getProjectConfig', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_delegatedProjectNumber = 'foo';
      final arg_projectNumber = 'foo';
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('getProjectConfig'),
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
          queryMap['delegatedProjectNumber']!.first,
          unittest.equals(arg_delegatedProjectNumber),
        );
        unittest.expect(
          queryMap['projectNumber']!.first,
          unittest.equals(arg_projectNumber),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetProjectConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getProjectConfig(
          delegatedProjectNumber: arg_delegatedProjectNumber,
          projectNumber: arg_projectNumber,
          $fields: arg_$fields);
      checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(
          response as api.IdentitytoolkitRelyingpartyGetProjectConfigResponse);
    });

    unittest.test('method--getPublicKeys', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('publicKeys'),
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
        final resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetPublicKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPublicKeys($fields: arg_$fields);
      checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
          response as api.IdentitytoolkitRelyingpartyGetPublicKeysResponse);
    });

    unittest.test('method--getRecaptchaParam', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('getRecaptchaParam'),
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
        final resp = convert.json.encode(buildGetRecaptchaParamResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getRecaptchaParam($fields: arg_$fields);
      checkGetRecaptchaParamResponse(response as api.GetRecaptchaParamResponse);
    });

    unittest.test('method--resetPassword', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyResetPasswordRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('resetPassword'),
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
        final resp = convert.json.encode(buildResetPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resetPassword(arg_request, $fields: arg_$fields);
      checkResetPasswordResponse(response as api.ResetPasswordResponse);
    });

    unittest.test('method--sendVerificationCode', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('sendVerificationCode'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartySendVerificationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.sendVerificationCode(arg_request, $fields: arg_$fields);
      checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(response
          as api.IdentitytoolkitRelyingpartySendVerificationCodeResponse);
    });

    unittest.test('method--setAccountInfo', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySetAccountInfoRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('setAccountInfo'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildSetAccountInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.setAccountInfo(arg_request, $fields: arg_$fields);
      checkSetAccountInfoResponse(response as api.SetAccountInfoResponse);
    });

    unittest.test('method--setProjectConfig', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySetProjectConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('setProjectConfig'),
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
        final resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySetProjectConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.setProjectConfig(arg_request, $fields: arg_$fields);
      checkIdentitytoolkitRelyingpartySetProjectConfigResponse(
          response as api.IdentitytoolkitRelyingpartySetProjectConfigResponse);
    });

    unittest.test('method--signOutUser', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySignOutUserRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('signOutUser'),
        );
        pathOffset += 11;

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
        final resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySignOutUserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.signOutUser(arg_request, $fields: arg_$fields);
      checkIdentitytoolkitRelyingpartySignOutUserResponse(
          response as api.IdentitytoolkitRelyingpartySignOutUserResponse);
    });

    unittest.test('method--signupNewUser', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartySignupNewUserRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('signupNewUser'),
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
        final resp = convert.json.encode(buildSignupNewUserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signupNewUser(arg_request, $fields: arg_$fields);
      checkSignupNewUserResponse(response as api.SignupNewUserResponse);
    });

    unittest.test('method--uploadAccount', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyUploadAccountRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('uploadAccount'),
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
        final resp = convert.json.encode(buildUploadAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.uploadAccount(arg_request, $fields: arg_$fields);
      checkUploadAccountResponse(response as api.UploadAccountResponse);
    });

    unittest.test('method--verifyAssertion', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('verifyAssertion'),
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
        final resp = convert.json.encode(buildVerifyAssertionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verifyAssertion(arg_request, $fields: arg_$fields);
      checkVerifyAssertionResponse(response as api.VerifyAssertionResponse);
    });

    unittest.test('method--verifyCustomToken', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('verifyCustomToken'),
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
        final resp = convert.json.encode(buildVerifyCustomTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verifyCustomToken(arg_request, $fields: arg_$fields);
      checkVerifyCustomTokenResponse(response as api.VerifyCustomTokenResponse);
    });

    unittest.test('method--verifyPassword', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('verifyPassword'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildVerifyPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verifyPassword(arg_request, $fields: arg_$fields);
      checkVerifyPasswordResponse(response as api.VerifyPasswordResponse);
    });

    unittest.test('method--verifyPhoneNumber', () async {
      final mock = HttpServerMock();
      final res = api.IdentityToolkitApi(mock).relyingparty;
      final arg_request =
          buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('identitytoolkit/v3/relyingparty/'),
        );
        pathOffset += 32;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('verifyPhoneNumber'),
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
        final resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verifyPhoneNumber(arg_request, $fields: arg_$fields);
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(
          response as api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse);
    });
  });
}
