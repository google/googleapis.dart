library googleapis.identitytoolkit.v3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterCreateAuthUriResponse = 0;
buildCreateAuthUriResponse() {
  var o = new api.CreateAuthUriResponse();
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    o.authUri = "foo";
    o.captchaRequired = true;
    o.forExistingProvider = true;
    o.kind = "foo";
    o.providerId = "foo";
    o.registered = true;
  }
  buildCounterCreateAuthUriResponse--;
  return o;
}

checkCreateAuthUriResponse(api.CreateAuthUriResponse o) {
  buildCounterCreateAuthUriResponse++;
  if (buildCounterCreateAuthUriResponse < 3) {
    unittest.expect(o.authUri, unittest.equals('foo'));
    unittest.expect(o.captchaRequired, unittest.isTrue);
    unittest.expect(o.forExistingProvider, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.registered, unittest.isTrue);
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

buildUnnamed1146() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed1146(core.List<api.UserInfo> o) {
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
    o.users = buildUnnamed1146();
  }
  buildCounterDownloadAccountResponse--;
  return o;
}

checkDownloadAccountResponse(api.DownloadAccountResponse o) {
  buildCounterDownloadAccountResponse++;
  if (buildCounterDownloadAccountResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1146(o.users);
  }
  buildCounterDownloadAccountResponse--;
}

buildUnnamed1147() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed1147(core.List<api.UserInfo> o) {
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
    o.users = buildUnnamed1147();
  }
  buildCounterGetAccountInfoResponse--;
  return o;
}

checkGetAccountInfoResponse(api.GetAccountInfoResponse o) {
  buildCounterGetAccountInfoResponse++;
  if (buildCounterGetAccountInfoResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1147(o.users);
  }
  buildCounterGetAccountInfoResponse--;
}

core.int buildCounterGetOobConfirmationCodeResponse = 0;
buildGetOobConfirmationCodeResponse() {
  var o = new api.GetOobConfirmationCodeResponse();
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
    o.kind = "foo";
    o.oobCode = "foo";
  }
  buildCounterGetOobConfirmationCodeResponse--;
  return o;
}

checkGetOobConfirmationCodeResponse(api.GetOobConfirmationCodeResponse o) {
  buildCounterGetOobConfirmationCodeResponse++;
  if (buildCounterGetOobConfirmationCodeResponse < 3) {
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

core.int buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest = 0;
buildIdentitytoolkitRelyingpartyCreateAuthUriRequest() {
  var o = new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest();
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    o.appId = "foo";
    o.clientId = "foo";
    o.context = "foo";
    o.continueUri = "foo";
    o.identifier = "foo";
    o.oauthConsumerKey = "foo";
    o.oauthScope = "foo";
    o.openidRealm = "foo";
    o.otaApp = "foo";
    o.providerId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(api.IdentitytoolkitRelyingpartyCreateAuthUriRequest o) {
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.continueUri, unittest.equals('foo'));
    unittest.expect(o.identifier, unittest.equals('foo'));
    unittest.expect(o.oauthConsumerKey, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.openidRealm, unittest.equals('foo'));
    unittest.expect(o.otaApp, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyCreateAuthUriRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest = 0;
buildIdentitytoolkitRelyingpartyDeleteAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyDeleteAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    o.localId = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyDeleteAccountRequest(api.IdentitytoolkitRelyingpartyDeleteAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest < 3) {
    unittest.expect(o.localId, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDeleteAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest = 0;
buildIdentitytoolkitRelyingpartyDownloadAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyDownloadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    o.maxResults = 42;
    o.nextPageToken = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyDownloadAccountRequest(api.IdentitytoolkitRelyingpartyDownloadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest < 3) {
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyDownloadAccountRequest--;
}

buildUnnamed1148() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1148(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1149() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest = 0;
buildIdentitytoolkitRelyingpartyGetAccountInfoRequest() {
  var o = new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest();
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    o.email = buildUnnamed1148();
    o.idToken = "foo";
    o.localId = buildUnnamed1149();
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(api.IdentitytoolkitRelyingpartyGetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest < 3) {
    checkUnnamed1148(o.email);
    unittest.expect(o.idToken, unittest.equals('foo'));
    checkUnnamed1149(o.localId);
  }
  buildCounterIdentitytoolkitRelyingpartyGetAccountInfoRequest--;
}

buildIdentitytoolkitRelyingpartyGetPublicKeysResponse() {
  var o = new api.IdentitytoolkitRelyingpartyGetPublicKeysResponse();
  o["a"] = "foo";
  o["b"] = "foo";
  return o;
}

checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(api.IdentitytoolkitRelyingpartyGetPublicKeysResponse o) {
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

checkIdentitytoolkitRelyingpartyResetPasswordRequest(api.IdentitytoolkitRelyingpartyResetPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.newPassword, unittest.equals('foo'));
    unittest.expect(o.oldPassword, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyResetPasswordRequest--;
}

buildUnnamed1150() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1150(core.List<core.String> o) {
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
    o.disableUser = true;
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.idToken = "foo";
    o.localId = "foo";
    o.oobCode = "foo";
    o.password = "foo";
    o.provider = buildUnnamed1150();
    o.upgradeToFederatedLogin = true;
    o.validSince = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartySetAccountInfoRequest(api.IdentitytoolkitRelyingpartySetAccountInfoRequest o) {
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest++;
  if (buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.disableUser, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.oobCode, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    checkUnnamed1150(o.provider);
    unittest.expect(o.upgradeToFederatedLogin, unittest.isTrue);
    unittest.expect(o.validSince, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartySetAccountInfoRequest--;
}

buildUnnamed1151() {
  var o = new core.List<api.UserInfo>();
  o.add(buildUserInfo());
  o.add(buildUserInfo());
  return o;
}

checkUnnamed1151(core.List<api.UserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfo(o[0]);
  checkUserInfo(o[1]);
}

core.int buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest = 0;
buildIdentitytoolkitRelyingpartyUploadAccountRequest() {
  var o = new api.IdentitytoolkitRelyingpartyUploadAccountRequest();
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    o.hashAlgorithm = "foo";
    o.memoryCost = 42;
    o.rounds = 42;
    o.saltSeparator = "foo";
    o.signerKey = "foo";
    o.users = buildUnnamed1151();
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyUploadAccountRequest(api.IdentitytoolkitRelyingpartyUploadAccountRequest o) {
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest < 3) {
    unittest.expect(o.hashAlgorithm, unittest.equals('foo'));
    unittest.expect(o.memoryCost, unittest.equals(42));
    unittest.expect(o.rounds, unittest.equals(42));
    unittest.expect(o.saltSeparator, unittest.equals('foo'));
    unittest.expect(o.signerKey, unittest.equals('foo'));
    checkUnnamed1151(o.users);
  }
  buildCounterIdentitytoolkitRelyingpartyUploadAccountRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyAssertionRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    o.pendingIdToken = "foo";
    o.postBody = "foo";
    o.requestUri = "foo";
    o.returnRefreshToken = true;
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(api.IdentitytoolkitRelyingpartyVerifyAssertionRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest < 3) {
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
    unittest.expect(o.postBody, unittest.equals('foo'));
    unittest.expect(o.requestUri, unittest.equals('foo'));
    unittest.expect(o.returnRefreshToken, unittest.isTrue);
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyAssertionRequest--;
}

core.int buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest = 0;
buildIdentitytoolkitRelyingpartyVerifyPasswordRequest() {
  var o = new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest();
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    o.captchaChallenge = "foo";
    o.captchaResponse = "foo";
    o.email = "foo";
    o.password = "foo";
    o.pendingIdToken = "foo";
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
  return o;
}

checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(api.IdentitytoolkitRelyingpartyVerifyPasswordRequest o) {
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest++;
  if (buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest < 3) {
    unittest.expect(o.captchaChallenge, unittest.equals('foo'));
    unittest.expect(o.captchaResponse, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.pendingIdToken, unittest.equals('foo'));
  }
  buildCounterIdentitytoolkitRelyingpartyVerifyPasswordRequest--;
}

core.int buildCounterRelyingparty = 0;
buildRelyingparty() {
  var o = new api.Relyingparty();
  buildCounterRelyingparty++;
  if (buildCounterRelyingparty < 3) {
    o.captchaResp = "foo";
    o.challenge = "foo";
    o.email = "foo";
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
    unittest.expect(o.captchaResp, unittest.equals('foo'));
    unittest.expect(o.challenge, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
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
  }
  buildCounterResetPasswordResponse--;
  return o;
}

checkResetPasswordResponse(api.ResetPasswordResponse o) {
  buildCounterResetPasswordResponse++;
  if (buildCounterResetPasswordResponse < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterResetPasswordResponse--;
}

core.int buildCounterSetAccountInfoResponseProviderUserInfo = 0;
buildSetAccountInfoResponseProviderUserInfo() {
  var o = new api.SetAccountInfoResponseProviderUserInfo();
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    o.displayName = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
  return o;
}

checkSetAccountInfoResponseProviderUserInfo(api.SetAccountInfoResponseProviderUserInfo o) {
  buildCounterSetAccountInfoResponseProviderUserInfo++;
  if (buildCounterSetAccountInfoResponseProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterSetAccountInfoResponseProviderUserInfo--;
}

buildUnnamed1152() {
  var o = new core.List<api.SetAccountInfoResponseProviderUserInfo>();
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  o.add(buildSetAccountInfoResponseProviderUserInfo());
  return o;
}

checkUnnamed1152(core.List<api.SetAccountInfoResponseProviderUserInfo> o) {
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
    o.idToken = "foo";
    o.kind = "foo";
    o.providerUserInfo = buildUnnamed1152();
  }
  buildCounterSetAccountInfoResponse--;
  return o;
}

checkSetAccountInfoResponse(api.SetAccountInfoResponse o) {
  buildCounterSetAccountInfoResponse++;
  if (buildCounterSetAccountInfoResponse < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1152(o.providerUserInfo);
  }
  buildCounterSetAccountInfoResponse--;
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

buildUnnamed1153() {
  var o = new core.List<api.UploadAccountResponseError>();
  o.add(buildUploadAccountResponseError());
  o.add(buildUploadAccountResponseError());
  return o;
}

checkUnnamed1153(core.List<api.UploadAccountResponseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUploadAccountResponseError(o[0]);
  checkUploadAccountResponseError(o[1]);
}

core.int buildCounterUploadAccountResponse = 0;
buildUploadAccountResponse() {
  var o = new api.UploadAccountResponse();
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    o.error = buildUnnamed1153();
    o.kind = "foo";
  }
  buildCounterUploadAccountResponse--;
  return o;
}

checkUploadAccountResponse(api.UploadAccountResponse o) {
  buildCounterUploadAccountResponse++;
  if (buildCounterUploadAccountResponse < 3) {
    checkUnnamed1153(o.error);
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
    o.federatedId = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
  }
  buildCounterUserInfoProviderUserInfo--;
  return o;
}

checkUserInfoProviderUserInfo(api.UserInfoProviderUserInfo o) {
  buildCounterUserInfoProviderUserInfo++;
  if (buildCounterUserInfoProviderUserInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterUserInfoProviderUserInfo--;
}

buildUnnamed1154() {
  var o = new core.List<api.UserInfoProviderUserInfo>();
  o.add(buildUserInfoProviderUserInfo());
  o.add(buildUserInfoProviderUserInfo());
  return o;
}

checkUnnamed1154(core.List<api.UserInfoProviderUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInfoProviderUserInfo(o[0]);
  checkUserInfoProviderUserInfo(o[1]);
}

core.int buildCounterUserInfo = 0;
buildUserInfo() {
  var o = new api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.disabled = true;
    o.displayName = "foo";
    o.email = "foo";
    o.emailVerified = true;
    o.localId = "foo";
    o.passwordHash = "foo";
    o.passwordUpdatedAt = 42.0;
    o.photoUrl = "foo";
    o.providerUserInfo = buildUnnamed1154();
    o.salt = "foo";
    o.validSince = "foo";
    o.version = 42;
  }
  buildCounterUserInfo--;
  return o;
}

checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.emailVerified, unittest.isTrue);
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.passwordHash, unittest.equals('foo'));
    unittest.expect(o.passwordUpdatedAt, unittest.equals(42.0));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed1154(o.providerUserInfo);
    unittest.expect(o.salt, unittest.equals('foo'));
    unittest.expect(o.validSince, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterUserInfo--;
}

buildUnnamed1155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1155(core.List<core.String> o) {
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
    o.federatedId = "foo";
    o.firstName = "foo";
    o.fullName = "foo";
    o.idToken = "foo";
    o.inputEmail = "foo";
    o.kind = "foo";
    o.language = "foo";
    o.lastName = "foo";
    o.localId = "foo";
    o.needConfirmation = true;
    o.nickName = "foo";
    o.oauthAccessToken = "foo";
    o.oauthAuthorizationCode = "foo";
    o.oauthExpireIn = 42;
    o.oauthRequestToken = "foo";
    o.oauthScope = "foo";
    o.originalEmail = "foo";
    o.photoUrl = "foo";
    o.providerId = "foo";
    o.timeZone = "foo";
    o.verifiedProvider = buildUnnamed1155();
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
    unittest.expect(o.federatedId, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.inputEmail, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.needConfirmation, unittest.isTrue);
    unittest.expect(o.nickName, unittest.equals('foo'));
    unittest.expect(o.oauthAccessToken, unittest.equals('foo'));
    unittest.expect(o.oauthAuthorizationCode, unittest.equals('foo'));
    unittest.expect(o.oauthExpireIn, unittest.equals(42));
    unittest.expect(o.oauthRequestToken, unittest.equals('foo'));
    unittest.expect(o.oauthScope, unittest.equals('foo'));
    unittest.expect(o.originalEmail, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    checkUnnamed1155(o.verifiedProvider);
  }
  buildCounterVerifyAssertionResponse--;
}

core.int buildCounterVerifyPasswordResponse = 0;
buildVerifyPasswordResponse() {
  var o = new api.VerifyPasswordResponse();
  buildCounterVerifyPasswordResponse++;
  if (buildCounterVerifyPasswordResponse < 3) {
    o.displayName = "foo";
    o.email = "foo";
    o.idToken = "foo";
    o.kind = "foo";
    o.localId = "foo";
    o.photoUrl = "foo";
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
    unittest.expect(o.idToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.localId, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
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


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyCreateAuthUriRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      var od = new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyDeleteAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      var od = new api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyDeleteAccountRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyDownloadAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      var od = new api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyDownloadAccountRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyGetAccountInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      var od = new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyGetPublicKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyGetPublicKeysResponse();
      var od = new api.IdentitytoolkitRelyingpartyGetPublicKeysResponse.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyResetPasswordRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      var od = new api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyResetPasswordRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartySetAccountInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      var od = new api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartySetAccountInfoRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyUploadAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      var od = new api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyUploadAccountRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyVerifyAssertionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      var od = new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(od);
    });
  });


  unittest.group("obj-schema-IdentitytoolkitRelyingpartyVerifyPasswordRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      var od = new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(o.toJson());
      checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(od);
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
      var od = new api.SetAccountInfoResponseProviderUserInfo.fromJson(o.toJson());
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
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyCreateAuthUriRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyCreateAuthUriRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("createAuthUri"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreateAuthUriResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.createAuthUri(arg_request).then(unittest.expectAsync(((api.CreateAuthUriResponse response) {
        checkCreateAuthUriResponse(response);
      })));
    });

    unittest.test("method--deleteAccount", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyDeleteAccountRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyDeleteAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("deleteAccount"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeleteAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.deleteAccount(arg_request).then(unittest.expectAsync(((api.DeleteAccountResponse response) {
        checkDeleteAccountResponse(response);
      })));
    });

    unittest.test("method--downloadAccount", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyDownloadAccountRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyDownloadAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("downloadAccount"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDownloadAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.downloadAccount(arg_request).then(unittest.expectAsync(((api.DownloadAccountResponse response) {
        checkDownloadAccountResponse(response);
      })));
    });

    unittest.test("method--getAccountInfo", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyGetAccountInfoRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyGetAccountInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("getAccountInfo"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetAccountInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getAccountInfo(arg_request).then(unittest.expectAsync(((api.GetAccountInfoResponse response) {
        checkGetAccountInfoResponse(response);
      })));
    });

    unittest.test("method--getOobConfirmationCode", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildRelyingparty();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Relyingparty.fromJson(json);
        checkRelyingparty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("getOobConfirmationCode"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetOobConfirmationCodeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getOobConfirmationCode(arg_request).then(unittest.expectAsync(((api.GetOobConfirmationCodeResponse response) {
        checkGetOobConfirmationCodeResponse(response);
      })));
    });

    unittest.test("method--getPublicKeys", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("publicKeys"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildIdentitytoolkitRelyingpartyGetPublicKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getPublicKeys().then(unittest.expectAsync(((api.IdentitytoolkitRelyingpartyGetPublicKeysResponse response) {
        checkIdentitytoolkitRelyingpartyGetPublicKeysResponse(response);
      })));
    });

    unittest.test("method--getRecaptchaParam", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("getRecaptchaParam"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetRecaptchaParamResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getRecaptchaParam().then(unittest.expectAsync(((api.GetRecaptchaParamResponse response) {
        checkGetRecaptchaParamResponse(response);
      })));
    });

    unittest.test("method--resetPassword", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyResetPasswordRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyResetPasswordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("resetPassword"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResetPasswordResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.resetPassword(arg_request).then(unittest.expectAsync(((api.ResetPasswordResponse response) {
        checkResetPasswordResponse(response);
      })));
    });

    unittest.test("method--setAccountInfo", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartySetAccountInfoRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartySetAccountInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("setAccountInfo"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSetAccountInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setAccountInfo(arg_request).then(unittest.expectAsync(((api.SetAccountInfoResponse response) {
        checkSetAccountInfoResponse(response);
      })));
    });

    unittest.test("method--uploadAccount", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyUploadAccountRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyUploadAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("uploadAccount"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUploadAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.uploadAccount(arg_request).then(unittest.expectAsync(((api.UploadAccountResponse response) {
        checkUploadAccountResponse(response);
      })));
    });

    unittest.test("method--verifyAssertion", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyVerifyAssertionRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyVerifyAssertionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("verifyAssertion"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVerifyAssertionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.verifyAssertion(arg_request).then(unittest.expectAsync(((api.VerifyAssertionResponse response) {
        checkVerifyAssertionResponse(response);
      })));
    });

    unittest.test("method--verifyPassword", () {

      var mock = new HttpServerMock();
      api.RelyingpartyResourceApi res = new api.IdentitytoolkitApi(mock).relyingparty;
      var arg_request = buildIdentitytoolkitRelyingpartyVerifyPasswordRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(json);
        checkIdentitytoolkitRelyingpartyVerifyPasswordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("identitytoolkit/v3/relyingparty/"));
        pathOffset += 32;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("verifyPassword"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVerifyPasswordResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.verifyPassword(arg_request).then(unittest.expectAsync(((api.VerifyPasswordResponse response) {
        checkVerifyPasswordResponse(response);
      })));
    });

  });


}

