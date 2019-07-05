library googleapis.identitytoolkit.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/identitytoolkit/v3.dart' as api;

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

buildUnnamed777() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed777(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed778() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed778(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreateAuthUriResponse = 0;
buildCreateAuthUriResponse() {
  var o = new api.CreateAuthUriResponse();
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    o.allProviders = buildUnnamed777();
    o.authUri = "foo";
    o.captchaRequired = true;
    o.forExistingProvider = true;
    o.kind = "foo";
    o.providerId = "foo";
    o.registered = true;
    o.sessionId = "foo";
    o.signinMethods = buildUnnamed778();
  }
  buildCounterCreateAuthUriResponse--;
  return o;
}

checkCreateAuthUriResponse(api.CreateAuthUriResponse o) {
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    checkUnnamed777(o.allProviders);
    unittest.expect(o.authUri, unittest.equals('foo'));
    unittest.expect(o.captchaRequired, unittest.isTrue);
    unittest.expect(o.forExistingProvider, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.registered, unittest.isTrue);
    unittest.expect(o.sessionId, unittest.equals('foo'));
    checkUnnamed778(o.signinMethods);
  }
  buildCounterCreateAuthUriResponse--;
}

core.int buildCounterDeleteAccountResponse = 0;
buildDeleteAccountResponse() {
  var o = new api.DeleteAccountResponse();
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    o.kind = "foo";
  }
  buildCounterDeleteAccountResponse--;
  return o;
}

checkDeleteAccountResponse(api.DeleteAccountResponse o) {
  buildCounterDeleteAccountResponse++;
  if (buildCounterDeleteAccountResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDeleteAccountResponse--;
}

buildUnnamed779() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed779(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterDownloadAccountResponse = 0;
buildDownloadAccountResponse() {
  var o = new api.DownloadAccountResponse();
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.users = buildUnnamed779();
  }
  buildCounterDownloadAccountResponse--;
  return o;
}

checkDownloadAccountResponse(api.DownloadAccountResponse o) {
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed779(o.users);
  }
  buildCounterDownloadAccountResponse--;
}

core.int buildCounterEmailLinkSigninResponse = 0;
buildEmailLinkSigninResponse() {
  var o = new api.EmailLinkSigninResponse();
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    o.email = "foo";
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.isNewUser = true;
    o.kind = "foo";
    o.localId = "foo";
    o.refreshToken = "foo";
  }
  buildCounterEmailLinkSigninResponse--;
  return o;
}

checkEmailLinkSigninResponse(api.EmailLinkSigninResponse o) {
  buildCounterEmailLinkSigninResponse++;
  if (buildCounterEmailLinkSigninResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterEmailLinkSigninResponse--;
}

core.int buildCounterEmailTemplate = 0;
buildEmailTemplate() {
  var o = new api.EmailTemplate();
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    o.body = "foo";
    o.format = "foo";
    o.from = "foo";
    o.fromDisplayName = "foo";
    o.replyTo = "foo";
    o.subject = "foo";
  }
  buildCounterEmailTemplate--;
  return o;
}

checkEmailTemplate(api.EmailTemplate o) {
  buildCounterEmailTemplate++;
  if (buildCounterEmailTemplate < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.from, unittest.equals('foo'));
    unittest.expect(o.fromDisplayName, unittest.equals('foo'));
    unittest.expect(o.replyTo, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterEmailTemplate--;
}

buildUnnamed780() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed780(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterGetAccountInfoResponse = 0;
buildGetAccountInfoResponse() {
  var o = new api.GetAccountInfoResponse();
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    o.kind = "foo";
    o.users = buildUnnamed780();
  }
  buildCounterGetAccountInfoResponse--;
  return o;
}

checkGetAccountInfoResponse(api.GetAccountInfoResponse o) {
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed780(o.users);
  }
  buildCounterGetAccountInfoResponse--;
}

core.int buildCounterGetOobConfirmationCodeResponse = 0;
buildGetOobConfirmationCodeResponse() {
  var o = new api.GetOobConfirmationCodeResponse();
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    o.email = "foo";
    o.kind = "foo";
    o.oobCode = "foo";
  }
  buildCounterGetOobConfirmationCodeResponse--;
  return o;
}

checkGetOobConfirmationCodeResponse(api.GetOobConfirmationCodeResponse o) {
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterGetOobConfirmationCodeResponse--;
}

core.int buildCounterGetRecaptchaParamResponse = 0;
buildGetRecaptchaParamResponse() {
  var o = new api.GetRecaptchaParamResponse();
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    o.kind = "foo";
    o.recaptchaSiteKey = "foo";
    o.recaptchaStoken = "foo";
  }
  buildCounterGetRecaptchaParamResponse--;
  return o;
}

checkGetRecaptchaParamResponse(api.GetRecaptchaParamResponse o) {
  buildCounterGetRecaptchaParamResponse++;
  if (buildCounterGetRecaptchaParamResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.recaptchaSiteKey, unittest.equals('foo'));
    unittest.expect(o.recaptchaStoken, unittest.equals('foo'));
  }
  buildCounterGetRecaptchaParamResponse--;
}

buildUnnamed781() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed781(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest = 0;
buildIdentitytoolkitRelyingpartyCreateAuthUriRequest() {
  var o = new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest();
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    o.appId = "foo";
    o.authFlowType = "foo";
    o.clientId = "foo";
    o.context = "foo";
    o.continueUri = "foo";
    o.customParameter = buildUnnamed781();
    o.hostedDomain = "foo";
    o.identifier = "foo";
    o.oauthConsumerKey = "foo";
    o.oauthScope = "foo";
    o.openidRealm = "foo";
    o.otaApp = "foo";
    o.providerId = "foo";
    o.sessionId = "foo";
    o.tenantId = "foo";
    o.tenantProjectNumber = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(
    api.IdentitytoolkitRelyingpartyCreateAuthUriRequest o) {
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.authFlowType, unittest.equals('foo'));
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.continueUri, unittest.equals('foo'));
    checkUnnamed781(o.customParameter);
    unittest.expect(o.hostedDomain, unittest.equals('foo'));
    unittest.expect(o.identifier, unittest.equals('foo'));
    unittest.expect(o.oauthConsumerKey, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.openidRealm, unittest.equals('foo'));
    unittest.expect(o.otaApp, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest = 0;
buildIdentitytoolkitRelyingpartyDeleteAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyDeleteAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    o.delegatedProjectNumber = "foo";
    o.idToken = "foo";
    o.localId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyDeleteAccountRequest(
    api.IdentitytoolkitRelyingpartyDeleteAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest = 0;
buildIdentitytoolkitRelyingpartyDownloadAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyDownloadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    o.delegatedProjectNumber = "foo";
    o.maxResults = 42;
    o.nextPageToken = "foo";
    o.targetProjectId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyDownloadAccountRequest(
    api.IdentitytoolkitRelyingpartyDownloadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.targetProjectId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest = 0;
buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest() {
  var o = new api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest();
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    o.email = "foo";
    o.idToken = "foo";
    o.oobCode = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(
    api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest o) {
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyEmailLinkSigninRequest--;
}

buildUnnamed782() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed782(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed783() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed783(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed784() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed784(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest = 0;
buildIdentitytoolkitRelyingpartyGetAccountInfoRequest() {
  var o = new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    o.delegatedProjectNumber = "foo";
    o.email = buildUnnamed782();
    o.idToken = "foo";
    o.localId = buildUnnamed783();
    o.phoneNumber = buildUnnamed784();
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartyGetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    checkUnnamed782(o.email);
    unittest.expect(o.idToken, unittest.equals('foo'));
    checkUnnamed783(o.localId);
    checkUnnamed784(o.phoneNumber);
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
}

buildUnnamed785() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed785(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed786() {
  var o = new core.List<api.IdpConfig>();
  o.add(buildIdpConfig());
  o.add(buildIdpConfig());
  return o;
}

checkUnnamed786(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0]);
  checkIdpConfig(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse = 0;
buildIdentitytoolkitRelyingpartyGetProjectConfigResponse() {
  var o = new api.IdentitytoolkitRelyingpartyGetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    o.allowPasswordUser = true;
    o.apiKey = "foo";
    o.authorizedDomains = buildUnnamed785();
    o.changeEmailTemplate = buildEmailTemplate();
    o.dynamicLinksDomain = "foo";
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed786();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.projectId = "foo";
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
  return o;
}

checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartyGetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse < 3) {
    unittest.expect(o.allowPasswordUser, unittest.isTrue);
    unittest.expect(o.apiKey, unittest.equals('foo'));
    checkUnnamed785(o.authorizedDomains);
    checkEmailTemplate(o.changeEmailTemplate);
    unittest.expect(o.dynamicLinksDomain, unittest.equals('foo'));
    unittest.expect(o.enableAnonymousUser, unittest.isTrue);
    checkUnnamed786(o.idpConfig);
    checkEmailTemplate(o.legacyResetPasswordTemplate);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkEmailTemplate(o.resetPasswordTemplate);
    unittest.expect(o.useEmailSending, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate);
  }
  buildCounterIdentitytoolkitRelyingpartyGetProjectConfigResponse--;
}

buildIdentitytoolkitRelyingpartyGetPublicKeysResponse() {
  var o = new api.IdentitytoolkitRelyingpartyGetPublicKeysResponse();
  o["a"] = "foo";
  o["b"] = "foo";
  return o;
}

checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(
    api.IdentitytoolkitRelyingpartyGetPublicKeysResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["a"], unittest.equals('foo'));
  unittest.expect(o["b"], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest = 0;
buildIdentitytoolkitRelyingpartyResetPasswordRequest() {
  var o = new api.IdentitytoolkitRelyingpartyResetPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    o.email = "foo";
    o.newPassword = "foo";
    o.oldPassword = "foo";
    o.oobCode = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyResetPasswordRequest(
    api.IdentitytoolkitRelyingpartyResetPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.newPassword, unittest.equals('foo'));
    unittest.expect(o.oldPassword, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest = 0;
buildIdentitytoolkitRelyingpartySendVerificationCodeRequest() {
  var o = new api.IdentitytoolkitRelyingpartySendVerificationCodeRequest();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    o.iosReceipt = "foo";
    o.iosSecret = "foo";
    o.phoneNumber = "foo";
    o.recaptchaToken = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(
    api.IdentitytoolkitRelyingpartySendVerificationCodeRequest o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest < 3) {
    unittest.expect(o.iosReceipt, unittest.equals('foo'));
    unittest.expect(o.iosSecret, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.recaptchaToken, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse =
    0;
buildIdentitytoolkitRelyingpartySendVerificationCodeResponse() {
  var o = new api.IdentitytoolkitRelyingpartySendVerificationCodeResponse();
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    o.sessionInfo = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
  return o;
}

checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(
    api.IdentitytoolkitRelyingpartySendVerificationCodeResponse o) {
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse < 3) {
    unittest.expect(o.sessionInfo, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySendVerificationCodeResponse--;
}

buildUnnamed787() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed787(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed788() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed788(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed789() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed789(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest = 0;
buildIdentitytoolkitRelyingpartySetAccountInfoRequest() {
  var o = new api.IdentitytoolkitRelyingpartySetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    o.captchaChallenge = "foo";
    o.captchaResponse = "foo";
    o.createdAt = "foo";
    o.customAttributes = "foo";
    o.delegatedProjectNumber = "foo";
    o.deleteAttribute = buildUnnamed787();
    o.deleteProvider = buildUnnamed788();
    o.disableUser = true;
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.idToken = "foo";
    o.instanceId = "foo";
    o.lastLoginAt = "foo";
    o.localId = "foo";
    o.oobCode = "foo";
    o.password = "foo";
    o.phoneNumber = "foo";
    o.photoUrl = "foo";
    o.provider = buildUnnamed789();
    o.returnSecureToken = true;
    o.upgradeToFederatedLogin = true;
    o.validSince = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySetAccountInfoRequest(
    api.IdentitytoolkitRelyingpartySetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customAttributes, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    checkUnnamed787(o.deleteAttribute);
    checkUnnamed788(o.deleteProvider);
    unittest.expect(o.disableUser, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.lastLoginAt, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed789(o.provider);
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.upgradeToFederatedLogin, unittest.isTrue);
    unittest.expect(o.validSince, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
}

buildUnnamed790() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed790(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed791() {
  var o = new core.List<api.IdpConfig>();
  o.add(buildIdpConfig());
  o.add(buildIdpConfig());
  return o;
}

checkUnnamed791(core.List<api.IdpConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpConfig(o[0]);
  checkIdpConfig(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest = 0;
buildIdentitytoolkitRelyingpartySetProjectConfigRequest() {
  var o = new api.IdentitytoolkitRelyingpartySetProjectConfigRequest();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    o.allowPasswordUser = true;
    o.apiKey = "foo";
    o.authorizedDomains = buildUnnamed790();
    o.changeEmailTemplate = buildEmailTemplate();
    o.delegatedProjectNumber = "foo";
    o.enableAnonymousUser = true;
    o.idpConfig = buildUnnamed791();
    o.legacyResetPasswordTemplate = buildEmailTemplate();
    o.resetPasswordTemplate = buildEmailTemplate();
    o.useEmailSending = true;
    o.verifyEmailTemplate = buildEmailTemplate();
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySetProjectConfigRequest(
    api.IdentitytoolkitRelyingpartySetProjectConfigRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest < 3) {
    unittest.expect(o.allowPasswordUser, unittest.isTrue);
    unittest.expect(o.apiKey, unittest.equals('foo'));
    checkUnnamed790(o.authorizedDomains);
    checkEmailTemplate(o.changeEmailTemplate);
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.enableAnonymousUser, unittest.isTrue);
    checkUnnamed791(o.idpConfig);
    checkEmailTemplate(o.legacyResetPasswordTemplate);
    checkEmailTemplate(o.resetPasswordTemplate);
    unittest.expect(o.useEmailSending, unittest.isTrue);
    checkEmailTemplate(o.verifyEmailTemplate);
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse = 0;
buildIdentitytoolkitRelyingpartySetProjectConfigResponse() {
  var o = new api.IdentitytoolkitRelyingpartySetProjectConfigResponse();
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    o.projectId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
  return o;
}

checkIdentitytoolkitRelyingpartySetProjectConfigResponse(
    api.IdentitytoolkitRelyingpartySetProjectConfigResponse o) {
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySetProjectConfigResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserRequest = 0;
buildIdentitytoolkitRelyingpartySignOutUserRequest() {
  var o = new api.IdentitytoolkitRelyingpartySignOutUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    o.instanceId = "foo";
    o.localId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySignOutUserRequest(
    api.IdentitytoolkitRelyingpartySignOutUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserRequest < 3) {
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignOutUserResponse = 0;
buildIdentitytoolkitRelyingpartySignOutUserResponse() {
  var o = new api.IdentitytoolkitRelyingpartySignOutUserResponse();
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    o.localId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
  return o;
}

checkIdentitytoolkitRelyingpartySignOutUserResponse(
    api.IdentitytoolkitRelyingpartySignOutUserResponse o) {
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse++;
  if (buildCounterIdentitytoolkitRelyingpartySignOutUserResponse < 3) {
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignOutUserResponse--;
}

core.int buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest = 0;
buildIdentitytoolkitRelyingpartySignupNewUserRequest() {
  var o = new api.IdentitytoolkitRelyingpartySignupNewUserRequest();
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    o.captchaChallenge = "foo";
    o.captchaResponse = "foo";
    o.disabled = true;
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.idToken = "foo";
    o.instanceId = "foo";
    o.localId = "foo";
    o.password = "foo";
    o.phoneNumber = "foo";
    o.photoUrl = "foo";
    o.tenantId = "foo";
    o.tenantProjectNumber = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySignupNewUserRequest(
    api.IdentitytoolkitRelyingpartySignupNewUserRequest o) {
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySignupNewUserRequest--;
}

buildUnnamed792() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed792(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest = 0;
buildIdentitytoolkitRelyingpartyUploadAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyUploadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    o.allowOverwrite = true;
    o.blockSize = 42;
    o.cpuMemCost = 42;
    o.delegatedProjectNumber = "foo";
    o.dkLen = 42;
    o.hashAlgorithm = "foo";
    o.memoryCost = 42;
    o.parallelization = 42;
    o.rounds = 42;
    o.saltSeparator = "foo";
    o.sanityCheck = true;
    o.signerKey = "foo";
    o.targetProjectId = "foo";
    o.users = buildUnnamed792();
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyUploadAccountRequest(
    api.IdentitytoolkitRelyingpartyUploadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    unittest.expect(o.allowOverwrite, unittest.isTrue);
    unittest.expect(o.blockSize, unittest.equals(42));
    unittest.expect(o.cpuMemCost, unittest.equals(42));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.dkLen, unittest.equals(42));
    unittest.expect(o.hashAlgorithm, unittest.equals('foo'));
    unittest.expect(o.memoryCost, unittest.equals(42));
    unittest.expect(o.parallelization, unittest.equals(42));
    unittest.expect(o.rounds, unittest.equals(42));
    unittest.expect(o.saltSeparator, unittest.equals('foo'));
    unittest.expect(o.sanityCheck, unittest.isTrue);
    unittest.expect(o.signerKey, unittest.equals('foo'));
    unittest.expect(o.targetProjectId, unittest.equals('foo'));
    checkUnnamed792(o.users);
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyAssertionRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    o.autoCreate = true;
    o.delegatedProjectNumber = "foo";
    o.idToken = "foo";
    o.instanceId = "foo";
    o.pendingIdToken = "foo";
    o.postBody = "foo";
    o.requestUri = "foo";
    o.returnIdpCredential = true;
    o.returnRefreshToken = true;
    o.returnSecureToken = true;
    o.sessionId = "foo";
    o.tenantId = "foo";
    o.tenantProjectNumber = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(
    api.IdentitytoolkitRelyingpartyVerifyAssertionRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    unittest.expect(o.autoCreate, unittest.isTrue);
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
    unittest.expect(o.postBody, unittest.equals('foo'));
    unittest.expect(o.requestUri, unittest.equals('foo'));
    unittest.expect(o.returnIdpCredential, unittest.isTrue);
    unittest.expect(o.returnRefreshToken, unittest.isTrue);
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    o.delegatedProjectNumber = "foo";
    o.instanceId = "foo";
    o.returnSecureToken = true;
    o.token = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(
    api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest < 3) {
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyCustomTokenRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyPasswordRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    o.captchaChallenge = "foo";
    o.captchaResponse = "foo";
    o.delegatedProjectNumber = "foo";
    o.email = "foo";
    o.idToken = "foo";
    o.instanceId = "foo";
    o.password = "foo";
    o.pendingIdToken = "foo";
    o.returnSecureToken = true;
    o.tenantId = "foo";
    o.tenantProjectNumber = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(
    api.IdentitytoolkitRelyingpartyVerifyPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.delegatedProjectNumber, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
    unittest.expect(o.returnSecureToken, unittest.isTrue);
    unittest.expect(o.tenantId, unittest.equals('foo'));
    unittest.expect(o.tenantProjectNumber, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    o.code = "foo";
    o.idToken = "foo";
    o.operation = "foo";
    o.phoneNumber = "foo";
    o.sessionInfo = "foo";
    o.temporaryProof = "foo";
    o.verificationProof = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.sessionInfo, unittest.equals('foo'));
    unittest.expect(o.temporaryProof, unittest.equals('foo'));
    unittest.expect(o.verificationProof, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse = 0;
buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.isNewUser = true;
    o.localId = "foo";
    o.phoneNumber = "foo";
    o.refreshToken = "foo";
    o.temporaryProof = "foo";
    o.temporaryProofExpiresIn = "foo";
    o.verificationProof = "foo";
    o.verificationProofExpiresIn = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(
    api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse < 3) {
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.temporaryProof, unittest.equals('foo'));
    unittest.expect(o.temporaryProofExpiresIn, unittest.equals('foo'));
    unittest.expect(o.verificationProof, unittest.equals('foo'));
    unittest.expect(o.verificationProofExpiresIn, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse--;
}

buildUnnamed793() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed793(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdpConfig = 0;
buildIdpConfig() {
  var o = new api.IdpConfig();
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    o.clientId = "foo";
    o.enabled = true;
    o.experimentPercent = 42;
    o.provider = "foo";
    o.secret = "foo";
    o.whitelistedAudiences = buildUnnamed793();
  }
  buildCounterIdpConfig--;
  return o;
}

checkIdpConfig(api.IdpConfig o) {
  buildCounterIdpConfig++;
  if (buildCounterIdpConfig < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.experimentPercent, unittest.equals(42));
    unittest.expect(o.provider, unittest.equals('foo'));
    unittest.expect(o.secret, unittest.equals('foo'));
    checkUnnamed793(o.whitelistedAudiences);
  }
  buildCounterIdpConfig--;
}

core.int buildCounterRelyingparty = 0;
buildRelyingparty() {
  var o = new api.Relyingparty();
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    o.androidInstallApp = true;
    o.androidMinimumVersion = "foo";
    o.androidPackageName = "foo";
    o.canHandleCodeInApp = true;
    o.captchaResp = "foo";
    o.challenge = "foo";
    o.continueUrl = "foo";
    o.email = "foo";
    o.iOSAppStoreId = "foo";
    o.iOSBundleId = "foo";
    o.idToken = "foo";
    o.kind = "foo";
    o.newEmail = "foo";
    o.requestType = "foo";
    o.userIp = "foo";
  }
  buildCounterRelyingparty--;
  return o;
}

checkRelyingparty(api.Relyingparty o) {
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    unittest.expect(o.androidInstallApp, unittest.isTrue);
    unittest.expect(o.androidMinimumVersion, unittest.equals('foo'));
    unittest.expect(o.androidPackageName, unittest.equals('foo'));
    unittest.expect(o.canHandleCodeInApp, unittest.isTrue);
    unittest.expect(o.captchaResp, unittest.equals('foo'));
    unittest.expect(o.challenge, unittest.equals('foo'));
    unittest.expect(o.continueUrl, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.iOSAppStoreId, unittest.equals('foo'));
    unittest.expect(o.iOSBundleId, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.requestType, unittest.equals('foo'));
    unittest.expect(o.userIp, unittest.equals('foo'));
  }
  buildCounterRelyingparty--;
}

core.int buildCounterResetPasswordResponse = 0;
buildResetPasswordResponse() {
  var o = new api.ResetPasswordResponse();
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    o.email = "foo";
    o.kind = "foo";
    o.newEmail = "foo";
    o.requestType = "foo";
  }
  buildCounterResetPasswordResponse--;
  return o;
}

checkResetPasswordResponse(api.ResetPasswordResponse o) {
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.requestType, unittest.equals('foo'));
  }
  buildCounterResetPasswordResponse--;
}

core.int buildCounterSetAccountInfoResponseProviderUserInfo = 0;
buildSetAccountInfoResponseProviderUserInfo() {
  var o = new api.SetAccountInfoResponseProviderUserInfo();
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    o.displayName = "foo";
    o.federatedId = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
  return o;
}

checkSetAccountInfoResponseProviderUserInfo(
    api.SetAccountInfoResponseProviderUserInfo o) {
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
}

buildUnnamed794() {
  var o = new core.List<api.SetAccountInfoResponseProviderUserInfo>();
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  return o;
}

checkUnnamed794(core.List<api.SetAccountInfoResponseProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetAccountInfoResponseProviderUserInfo(o[0]);
  checkSetAccountInfoResponseProviderUserInfo(o[1]);
}

core.int buildCounterSetAccountInfoResponse = 0;
buildSetAccountInfoResponse() {
  var o = new api.SetAccountInfoResponse();
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.kind = "foo";
    o.localId = "foo";
    o.newEmail = "foo";
    o.passwordHash = "foo";
    o.photoUrl = "foo";
    o.providerUserInfo = buildUnnamed794();
    o.refreshToken = "foo";
  }
  buildCounterSetAccountInfoResponse--;
  return o;
}

checkSetAccountInfoResponse(api.SetAccountInfoResponse o) {
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.newEmail, unittest.equals('foo'));
    unittest.expect(o.passwordHash, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed794(o.providerUserInfo);
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterSetAccountInfoResponse--;
}

core.int buildCounterSignupNewUserResponse = 0;
buildSignupNewUserResponse() {
  var o = new api.SignupNewUserResponse();
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    o.displayName = "foo";
    o.email = "foo";
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.kind = "foo";
    o.localId = "foo";
    o.refreshToken = "foo";
  }
  buildCounterSignupNewUserResponse--;
  return o;
}

checkSignupNewUserResponse(api.SignupNewUserResponse o) {
  buildCounterSignupNewUserResponse++;
  if (buildCounterSignupNewUserResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterSignupNewUserResponse--;
}

core.int buildCounterUploadAccountResponseError = 0;
buildUploadAccountResponseError() {
  var o = new api.UploadAccountResponseError();
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    o.index = 42;
    o.message = "foo";
  }
  buildCounterUploadAccountResponseError--;
  return o;
}

checkUploadAccountResponseError(api.UploadAccountResponseError o) {
  buildCounterUploadAccountResponseError++;
  if (buildCounterUploadAccountResponseError < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterUploadAccountResponseError--;
}

buildUnnamed795() {
  var o = new core.List<api.UploadAccountResponseError>();
  o.add(buildUploadAccountResponseError());
  o.add(buildUploadAccountResponseError());
  return o;
}

checkUnnamed795(core.List<api.UploadAccountResponseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadAccountResponseError(o[0]);
  checkUploadAccountResponseError(o[1]);
}

core.int buildCounterUploadAccountResponse = 0;
buildUploadAccountResponse() {
  var o = new api.UploadAccountResponse();
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    o.error = buildUnnamed795();
    o.kind = "foo";
  }
  buildCounterUploadAccountResponse--;
  return o;
}

checkUploadAccountResponse(api.UploadAccountResponse o) {
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    checkUnnamed795(o.error);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterUploadAccountResponse--;
}

core.int buildCounterUserInfoProviderUserInfo = 0;
buildUserInfoProviderUserInfo() {
  var o = new api.UserInfoProviderUserInfo();
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    o.displayName = "foo";
    o.email = "foo";
    o.federatedId = "foo";
    o.phoneNumber = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
    o.rawId = "foo";
    o.screenName = "foo";
  }
  buildCounterUserInfoProviderUserInfo--;
  return o;
}

checkUserInfoProviderUserInfo(api.UserInfoProviderUserInfo o) {
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.rawId, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
  }
  buildCounterUserInfoProviderUserInfo--;
}

buildUnnamed796() {
  var o = new core.List<api.UserInfoProviderUserInfo>();
  o.add(buildUserInfoProviderUserInfo());
  o.add(buildUserInfoProviderUserInfo());
  return o;
}

checkUnnamed796(core.List<api.UserInfoProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfoProviderUserInfo(o[0]);
  checkUserInfoProviderUserInfo(o[1]);
}

core.int buildCounterUserInfo = 0;
buildUserInfo() {
  var o = new api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.createdAt = "foo";
    o.customAttributes = "foo";
    o.customAuth = true;
    o.disabled = true;
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.lastLoginAt = "foo";
    o.localId = "foo";
    o.passwordHash = "foo";
    o.passwordUpdatedAt = 42.0;
    o.phoneNumber = "foo";
    o.photoUrl = "foo";
    o.providerUserInfo = buildUnnamed796();
    o.rawPassword = "foo";
    o.salt = "foo";
    o.screenName = "foo";
    o.validSince = "foo";
    o.version = 42;
  }
  buildCounterUserInfo--;
  return o;
}

checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.customAttributes, unittest.equals('foo'));
    unittest.expect(o.customAuth, unittest.isTrue);
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.lastLoginAt, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.passwordHash, unittest.equals('foo'));
    unittest.expect(o.passwordUpdatedAt, unittest.equals(42.0));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed796(o.providerUserInfo);
    unittest.expect(o.rawPassword, unittest.equals('foo'));
    unittest.expect(o.salt, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
    unittest.expect(o.validSince, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterUserInfo--;
}

buildUnnamed797() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed797(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVerifyAssertionResponse = 0;
buildVerifyAssertionResponse() {
  var o = new api.VerifyAssertionResponse();
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    o.action = "foo";
    o.appInstallationUrl = "foo";
    o.appScheme = "foo";
    o.context = "foo";
    o.dateOfBirth = "foo";
    o.displayName = "foo";
    o.email = "foo";
    o.emailRecycled = true;
    o.emailVerified = true;
    o.errorMessage = "foo";
    o.expiresIn = "foo";
    o.federatedId = "foo";
    o.firstName = "foo";
    o.fullName = "foo";
    o.idToken = "foo";
    o.inputEmail = "foo";
    o.isNewUser = true;
    o.kind = "foo";
    o.language = "foo";
    o.lastName = "foo";
    o.localId = "foo";
    o.needConfirmation = true;
    o.needEmail = true;
    o.nickName = "foo";
    o.oauthAccessToken = "foo";
    o.oauthAuthorizationCode = "foo";
    o.oauthExpireIn = 42;
    o.oauthIdToken = "foo";
    o.oauthRequestToken = "foo";
    o.oauthScope = "foo";
    o.oauthTokenSecret = "foo";
    o.originalEmail = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
    o.rawUserInfo = "foo";
    o.refreshToken = "foo";
    o.screenName = "foo";
    o.timeZone = "foo";
    o.verifiedProvider = buildUnnamed797();
  }
  buildCounterVerifyAssertionResponse--;
  return o;
}

checkVerifyAssertionResponse(api.VerifyAssertionResponse o) {
  buildCounterVerifyAssertionResponse++;
  if (buildCounterVerifyAssertionResponse < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.appInstallationUrl, unittest.equals('foo'));
    unittest.expect(o.appScheme, unittest.equals('foo'));
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.dateOfBirth, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailRecycled, unittest.isTrue);
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.inputEmail, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.needConfirmation, unittest.isTrue);
    unittest.expect(o.needEmail, unittest.isTrue);
    unittest.expect(o.nickName, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn, unittest.equals(42));
    unittest.expect(o.oauthIdToken, unittest.equals('foo'));
    unittest.expect(o.oauthRequestToken, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.oauthTokenSecret, unittest.equals('foo'));
    unittest.expect(o.originalEmail, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.rawUserInfo, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.screenName, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    checkUnnamed797(o.verifiedProvider);
  }
  buildCounterVerifyAssertionResponse--;
}

core.int buildCounterVerifyCustomTokenResponse = 0;
buildVerifyCustomTokenResponse() {
  var o = new api.VerifyCustomTokenResponse();
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.isNewUser = true;
    o.kind = "foo";
    o.refreshToken = "foo";
  }
  buildCounterVerifyCustomTokenResponse--;
  return o;
}

checkVerifyCustomTokenResponse(api.VerifyCustomTokenResponse o) {
  buildCounterVerifyCustomTokenResponse++;
  if (buildCounterVerifyCustomTokenResponse < 3) {
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.isNewUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
  }
  buildCounterVerifyCustomTokenResponse--;
}

core.int buildCounterVerifyPasswordResponse = 0;
buildVerifyPasswordResponse() {
  var o = new api.VerifyPasswordResponse();
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    o.displayName = "foo";
    o.email = "foo";
    o.expiresIn = "foo";
    o.idToken = "foo";
    o.kind = "foo";
    o.localId = "foo";
    o.oauthAccessToken = "foo";
    o.oauthAuthorizationCode = "foo";
    o.oauthExpireIn = 42;
    o.photoUrl = "foo";
    o.refreshToken = "foo";
    o.registered = true;
  }
  buildCounterVerifyPasswordResponse--;
  return o;
}

checkVerifyPasswordResponse(api.VerifyPasswordResponse o) {
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn, unittest.equals(42));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.refreshToken, unittest.equals('foo'));
    unittest.expect(o.registered, unittest.isTrue);
  }
  buildCounterVerifyPasswordResponse--;
}

main() {
  unittest.group("obj-schema-CreateAuthUriResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateAuthUriResponse();
      var od = new api.CreateAuthUriResponse.fromJson(o.toJson());
      checkCreateAuthUriResponse(od);
    });
  });

  unittest.group("obj-schema-DeleteAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteAccountResponse();
      var od = new api.DeleteAccountResponse.fromJson(o.toJson());
      checkDeleteAccountResponse(od);
    });
  });

  unittest.group("obj-schema-DownloadAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDownloadAccountResponse();
      var od = new api.DownloadAccountResponse.fromJson(o.toJson());
      checkDownloadAccountResponse(od);
    });
  });

  unittest.group("obj-schema-EmailLinkSigninResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailLinkSigninResponse();
      var od = new api.EmailLinkSigninResponse.fromJson(o.toJson());
      checkEmailLinkSigninResponse(od);
    });
  });

  unittest.group("obj-schema-EmailTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailTemplate();
      var od = new api.EmailTemplate.fromJson(o.toJson());
      checkEmailTemplate(od);
    });
  });

  unittest.group("obj-schema-GetAccountInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetAccountInfoResponse();
      var od = new api.GetAccountInfoResponse.fromJson(o.toJson());
      checkGetAccountInfoResponse(od);
    });
  });

  unittest.group("obj-schema-GetOobConfirmationCodeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOobConfirmationCodeResponse();
      var od = new api.GetOobConfirmationCodeResponse.fromJson(o.toJson());
      checkGetOobConfirmationCodeResponse(od);
    });
  });

  unittest.group("obj-schema-GetRecaptchaParamResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetRecaptchaParamResponse();
      var od = new api.GetRecaptchaParamResponse.fromJson(o.toJson());
      checkGetRecaptchaParamResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyCreateAuthUriRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      var od = new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyDeleteAccountRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      var od = new api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyDeleteAccountRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyDownloadAccountRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyDownloadAccountRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyEmailLinkSigninRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyGetAccountInfoRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartyGetProjectConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyGetProjectConfigResponse();
      var od =
          new api.IdentitytoolkitRelyingpartyGetProjectConfigResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyGetPublicKeysResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyGetPublicKeysResponse();
      var od =
          new api.IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyResetPasswordRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      var od = new api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyResetPasswordRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      var od = new api
              .IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartySendVerificationCodeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySendVerificationCodeResponse();
      var od = new api
              .IdentitytoolkitRelyingpartySendVerificationCodeResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartySetAccountInfoRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      var od =
          new api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartySetAccountInfoRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartySetProjectConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      var od =
          new api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartySetProjectConfigRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartySetProjectConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySetProjectConfigResponse();
      var od =
          new api.IdentitytoolkitRelyingpartySetProjectConfigResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartySetProjectConfigResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartySignOutUserRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      var od = new api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignOutUserRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartySignOutUserResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySignOutUserResponse();
      var od = new api.IdentitytoolkitRelyingpartySignOutUserResponse.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignOutUserResponse(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartySignupNewUserRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      var od = new api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartySignupNewUserRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyUploadAccountRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      var od = new api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
          o.toJson());
      checkIdentitytoolkitRelyingpartyUploadAccountRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyVerifyAssertionRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartyVerifyCustomTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(od);
    });
  });

  unittest.group("obj-schema-IdentitytoolkitRelyingpartyVerifyPasswordRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      var od =
          new api.IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(od);
    });
  });

  unittest.group(
      "obj-schema-IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse();
      var od =
          new api.IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse.fromJson(
              o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(od);
    });
  });

  unittest.group("obj-schema-IdpConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdpConfig();
      var od = new api.IdpConfig.fromJson(o.toJson());
      checkIdpConfig(od);
    });
  });

  unittest.group("obj-schema-Relyingparty", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelyingparty();
      var od = new api.Relyingparty.fromJson(o.toJson());
      checkRelyingparty(od);
    });
  });

  unittest.group("obj-schema-ResetPasswordResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildResetPasswordResponse();
      var od = new api.ResetPasswordResponse.fromJson(o.toJson());
      checkResetPasswordResponse(od);
    });
  });

  unittest.group("obj-schema-SetAccountInfoResponseProviderUserInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetAccountInfoResponseProviderUserInfo();
      var od =
          new api.SetAccountInfoResponseProviderUserInfo.fromJson(o.toJson());
      checkSetAccountInfoResponseProviderUserInfo(od);
    });
  });

  unittest.group("obj-schema-SetAccountInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetAccountInfoResponse();
      var od = new api.SetAccountInfoResponse.fromJson(o.toJson());
      checkSetAccountInfoResponse(od);
    });
  });

  unittest.group("obj-schema-SignupNewUserResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignupNewUserResponse();
      var od = new api.SignupNewUserResponse.fromJson(o.toJson());
      checkSignupNewUserResponse(od);
    });
  });

  unittest.group("obj-schema-UploadAccountResponseError", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadAccountResponseError();
      var od = new api.UploadAccountResponseError.fromJson(o.toJson());
      checkUploadAccountResponseError(od);
    });
  });

  unittest.group("obj-schema-UploadAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadAccountResponse();
      var od = new api.UploadAccountResponse.fromJson(o.toJson());
      checkUploadAccountResponse(od);
    });
  });

  unittest.group("obj-schema-UserInfoProviderUserInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserInfoProviderUserInfo();
      var od = new api.UserInfoProviderUserInfo.fromJson(o.toJson());
      checkUserInfoProviderUserInfo(od);
    });
  });

  unittest.group("obj-schema-UserInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserInfo();
      var od = new api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od);
    });
  });

  unittest.group("obj-schema-VerifyAssertionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyAssertionResponse();
      var od = new api.VerifyAssertionResponse.fromJson(o.toJson());
      checkVerifyAssertionResponse(od);
    });
  });

  unittest.group("obj-schema-VerifyCustomTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyCustomTokenResponse();
      var od = new api.VerifyCustomTokenResponse.fromJson(o.toJson());
      checkVerifyCustomTokenResponse(od);
    });
  });

  unittest.group("obj-schema-VerifyPasswordResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyPasswordResponse();
      var od = new api.VerifyPasswordResponse.fromJson(o.toJson());
      checkVerifyPasswordResponse(od);
    });
  });

  unittest.group("resource-RelyingpartyResourceApi", () {
    unittest.test("method--createAuthUri", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("createAuthUri"));
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
        var resp = convert.json.encode(buildCreateAuthUriResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createAuthUri(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateAuthUriResponse(response);
      })));
    });

    unittest.test("method--deleteAccount", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyDeleteAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("deleteAccount"));
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
        var resp = convert.json.encode(buildDeleteAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteAccountResponse(response);
      })));
    });

    unittest.test("method--downloadAccount", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyDownloadAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("downloadAccount"));
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
        var resp = convert.json.encode(buildDownloadAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .downloadAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDownloadAccountResponse(response);
      })));
    });

    unittest.test("method--emailLinkSignin", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyEmailLinkSigninRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyEmailLinkSigninRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("emailLinkSignin"));
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
        var resp = convert.json.encode(buildEmailLinkSigninResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .emailLinkSignin(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmailLinkSigninResponse(response);
      })));
    });

    unittest.test("method--getAccountInfo", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("getAccountInfo"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildGetAccountInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccountInfo(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetAccountInfoResponse(response);
      })));
    });

    unittest.test("method--getOobConfirmationCode", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildRelyingparty();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Relyingparty.fromJson(json);
        checkRelyingparty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("getOobConfirmationCode"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOobConfirmationCodeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOobConfirmationCode(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOobConfirmationCodeResponse(response);
      })));
    });

    unittest.test("method--getProjectConfig", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_delegatedProjectNumber = "foo";
      var arg_projectNumber = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("getProjectConfig"));
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
        unittest.expect(queryMap["delegatedProjectNumber"].first,
            unittest.equals(arg_delegatedProjectNumber));
        unittest.expect(queryMap["projectNumber"].first,
            unittest.equals(arg_projectNumber));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetProjectConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getProjectConfig(
              delegatedProjectNumber: arg_delegatedProjectNumber,
              projectNumber: arg_projectNumber,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyGetProjectConfigResponse(response);
      })));
    });

    unittest.test("method--getPublicKeys", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("publicKeys"));
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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartyGetPublicKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPublicKeys($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(response);
      })));
    });

    unittest.test("method--getRecaptchaParam", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("getRecaptchaParam"));
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
        var resp = convert.json.encode(buildGetRecaptchaParamResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRecaptchaParam($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetRecaptchaParamResponse(response);
      })));
    });

    unittest.test("method--resetPassword", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyResetPasswordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("resetPassword"));
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
        var resp = convert.json.encode(buildResetPasswordResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetPassword(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResetPasswordResponse(response);
      })));
    });

    unittest.test("method--sendVerificationCode", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartySendVerificationCodeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
            json);
        checkIdentitytoolkitRelyingpartySendVerificationCodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("sendVerificationCode"));
        pathOffset += 20;

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
        var resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartySendVerificationCodeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendVerificationCode(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySendVerificationCodeResponse(response);
      })));
    });

    unittest.test("method--setAccountInfo", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartySetAccountInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("setAccountInfo"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildSetAccountInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAccountInfo(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSetAccountInfoResponse(response);
      })));
    });

    unittest.test("method--setProjectConfig", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartySetProjectConfigRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartySetProjectConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("setProjectConfig"));
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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySetProjectConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setProjectConfig(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySetProjectConfigResponse(response);
      })));
    });

    unittest.test("method--signOutUser", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySignOutUserRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartySignOutUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("signOutUser"));
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
        var resp = convert.json
            .encode(buildIdentitytoolkitRelyingpartySignOutUserResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signOutUser(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartySignOutUserResponse(response);
      })));
    });

    unittest.test("method--signupNewUser", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySignupNewUserRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartySignupNewUserRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("signupNewUser"));
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
        var resp = convert.json.encode(buildSignupNewUserResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signupNewUser(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupNewUserResponse(response);
      })));
    });

    unittest.test("method--uploadAccount", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyUploadAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("uploadAccount"));
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
        var resp = convert.json.encode(buildUploadAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadAccount(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUploadAccountResponse(response);
      })));
    });

    unittest.test("method--verifyAssertion", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("verifyAssertion"));
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
        var resp = convert.json.encode(buildVerifyAssertionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyAssertion(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyAssertionResponse(response);
      })));
    });

    unittest.test("method--verifyCustomToken", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyCustomTokenRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyVerifyCustomTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("verifyCustomToken"));
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
        var resp = convert.json.encode(buildVerifyCustomTokenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyCustomToken(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyCustomTokenResponse(response);
      })));
    });

    unittest.test("method--verifyPassword", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(
                json);
        checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("verifyPassword"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildVerifyPasswordResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyPassword(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerifyPasswordResponse(response);
      })));
    });

    unittest.test("method--verifyPhoneNumber", () {
      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res =
          new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request =
          buildIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
            .IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("verifyPhoneNumber"));
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
        var resp = convert.json.encode(
            buildIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyPhoneNumber(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse(response);
      })));
    });
  });
}
