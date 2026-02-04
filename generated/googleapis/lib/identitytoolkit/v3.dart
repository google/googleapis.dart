// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Google Identity Toolkit API - v3
///
/// Help the third party sites to implement federated login.
///
/// For more information, see
/// <https://developers.google.com/identity-toolkit/v3/>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [RelyingpartyResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Help the third party sites to implement federated login.
class IdentityToolkitApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  RelyingpartyResource get relyingparty => RelyingpartyResource(_requester);

  IdentityToolkitApi(
    http.Client client, {
    core.String rootUrl = 'https://www.googleapis.com/',
    core.String servicePath = 'identitytoolkit/v3/relyingparty/',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class RelyingpartyResource {
  final commons.ApiRequester _requester;

  RelyingpartyResource(commons.ApiRequester client) : _requester = client;

  /// Creates the URI used by the IdP to authenticate the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateAuthUriResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateAuthUriResponse> createAuthUri(
    IdentitytoolkitRelyingpartyCreateAuthUriRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'createAuthUri';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateAuthUriResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete user account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteAccountResponse> deleteAccount(
    IdentitytoolkitRelyingpartyDeleteAccountRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'deleteAccount';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DeleteAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Batch download user accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DownloadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DownloadAccountResponse> downloadAccount(
    IdentitytoolkitRelyingpartyDownloadAccountRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'downloadAccount';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DownloadAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reset password for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailLinkSigninResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailLinkSigninResponse> emailLinkSignin(
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'emailLinkSignin';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EmailLinkSigninResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the account info.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetAccountInfoResponse> getAccountInfo(
    IdentitytoolkitRelyingpartyGetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'getAccountInfo';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetAccountInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a code for user action confirmation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetOobConfirmationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetOobConfirmationCodeResponse> getOobConfirmationCode(
    Relyingparty request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'getOobConfirmationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetOobConfirmationCodeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get project configuration.
  ///
  /// Request parameters:
  ///
  /// [delegatedProjectNumber] - Delegated GCP project number of the request.
  ///
  /// [projectNumber] - GCP project number of the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentitytoolkitRelyingpartyGetProjectConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartyGetProjectConfigResponse>
  getProjectConfig({
    core.String? delegatedProjectNumber,
    core.String? projectNumber,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'delegatedProjectNumber': ?delegatedProjectNumber == null
          ? null
          : [delegatedProjectNumber],
      'projectNumber': ?projectNumber == null ? null : [projectNumber],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'getProjectConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IdentitytoolkitRelyingpartyGetProjectConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get token signing public key.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentitytoolkitRelyingpartyGetPublicKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartyGetPublicKeysResponse> getPublicKeys({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'publicKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return (response_ as core.Map<core.String, core.dynamic>).map(
      (key, value) => core.MapEntry(key, value as core.String),
    );
  }

  /// Get recaptcha secure param.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetRecaptchaParamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetRecaptchaParamResponse> getRecaptchaParam({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'getRecaptchaParam';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetRecaptchaParamResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reset password for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResetPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResetPasswordResponse> resetPassword(
    IdentitytoolkitRelyingpartyResetPasswordRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'resetPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResetPasswordResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Send SMS verification code.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [IdentitytoolkitRelyingpartySendVerificationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartySendVerificationCodeResponse>
  sendVerificationCode(
    IdentitytoolkitRelyingpartySendVerificationCodeRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'sendVerificationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentitytoolkitRelyingpartySendVerificationCodeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Set account info for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SetAccountInfoResponse> setAccountInfo(
    IdentitytoolkitRelyingpartySetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'setAccountInfo';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SetAccountInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Set project configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentitytoolkitRelyingpartySetProjectConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartySetProjectConfigResponse>
  setProjectConfig(
    IdentitytoolkitRelyingpartySetProjectConfigRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'setProjectConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentitytoolkitRelyingpartySetProjectConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sign out user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentitytoolkitRelyingpartySignOutUserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartySignOutUserResponse> signOutUser(
    IdentitytoolkitRelyingpartySignOutUserRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'signOutUser';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentitytoolkitRelyingpartySignOutUserResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Signup new user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignupNewUserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignupNewUserResponse> signupNewUser(
    IdentitytoolkitRelyingpartySignupNewUserRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'signupNewUser';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SignupNewUserResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Batch upload existing user accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UploadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadAccountResponse> uploadAccount(
    IdentitytoolkitRelyingpartyUploadAccountRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'uploadAccount';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UploadAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Verifies the assertion returned by the IdP.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyAssertionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyAssertionResponse> verifyAssertion(
    IdentitytoolkitRelyingpartyVerifyAssertionRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'verifyAssertion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyAssertionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Verifies the developer asserted ID token.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyCustomTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyCustomTokenResponse> verifyCustomToken(
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'verifyCustomToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyCustomTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Verifies the user entered password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyPasswordResponse> verifyPassword(
    IdentitytoolkitRelyingpartyVerifyPasswordRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'verifyPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyPasswordResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Verifies ownership of a phone number and creates/updates the user account
  /// accordingly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse>
  verifyPhoneNumber(
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'verifyPhoneNumber';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Response of creating the IDP authentication URL.
class CreateAuthUriResponse {
  /// all providers the user has once used to do federated login
  core.List<core.String>? allProviders;

  /// The URI used by the IDP to authenticate the user.
  core.String? authUri;

  /// True if captcha is required.
  core.bool? captchaRequired;

  /// True if the authUri is for user's existing provider.
  core.bool? forExistingProvider;

  /// The fixed string identitytoolkit#CreateAuthUriResponse".
  core.String? kind;

  /// The provider ID of the auth URI.
  core.String? providerId;

  /// Whether the user is registered if the identifier is an email.
  core.bool? registered;

  /// Session ID which should be passed in the following verifyAssertion
  /// request.
  core.String? sessionId;

  /// All sign-in methods this user has used.
  core.List<core.String>? signinMethods;

  CreateAuthUriResponse({
    this.allProviders,
    this.authUri,
    this.captchaRequired,
    this.forExistingProvider,
    this.kind,
    this.providerId,
    this.registered,
    this.sessionId,
    this.signinMethods,
  });

  CreateAuthUriResponse.fromJson(core.Map json_)
    : this(
        allProviders: (json_['allProviders'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        authUri: json_['authUri'] as core.String?,
        captchaRequired: json_['captchaRequired'] as core.bool?,
        forExistingProvider: json_['forExistingProvider'] as core.bool?,
        kind: json_['kind'] as core.String?,
        providerId: json_['providerId'] as core.String?,
        registered: json_['registered'] as core.bool?,
        sessionId: json_['sessionId'] as core.String?,
        signinMethods: (json_['signinMethods'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allProviders = this.allProviders;
    final authUri = this.authUri;
    final captchaRequired = this.captchaRequired;
    final forExistingProvider = this.forExistingProvider;
    final kind = this.kind;
    final providerId = this.providerId;
    final registered = this.registered;
    final sessionId = this.sessionId;
    final signinMethods = this.signinMethods;
    return {
      'allProviders': ?allProviders,
      'authUri': ?authUri,
      'captchaRequired': ?captchaRequired,
      'forExistingProvider': ?forExistingProvider,
      'kind': ?kind,
      'providerId': ?providerId,
      'registered': ?registered,
      'sessionId': ?sessionId,
      'signinMethods': ?signinMethods,
    };
  }
}

/// Respone of deleting account.
class DeleteAccountResponse {
  /// The fixed string "identitytoolkit#DeleteAccountResponse".
  core.String? kind;

  DeleteAccountResponse({this.kind});

  DeleteAccountResponse.fromJson(core.Map json_)
    : this(kind: json_['kind'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    return {'kind': ?kind};
  }
}

/// Response of downloading accounts in batch.
class DownloadAccountResponse {
  /// The fixed string "identitytoolkit#DownloadAccountResponse".
  core.String? kind;

  /// The next page token.
  ///
  /// To be used in a subsequent request to return the next page of results.
  core.String? nextPageToken;

  /// The user accounts data.
  core.List<UserInfo>? users;

  DownloadAccountResponse({this.kind, this.nextPageToken, this.users});

  DownloadAccountResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        users: (json_['users'] as core.List?)
            ?.map(
              (value) => UserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    final users = this.users;
    return {'kind': ?kind, 'nextPageToken': ?nextPageToken, 'users': ?users};
  }
}

/// Response of email signIn.
class EmailLinkSigninResponse {
  /// The user's email.
  core.String? email;

  /// Expiration time of STS id token in seconds.
  core.String? expiresIn;

  /// The STS id token to login the newly signed in user.
  core.String? idToken;

  /// Whether the user is new.
  core.bool? isNewUser;

  /// The fixed string "identitytoolkit#EmailLinkSigninResponse".
  core.String? kind;

  /// The RP local ID of the user.
  core.String? localId;

  /// The refresh token for the signed in user.
  core.String? refreshToken;

  EmailLinkSigninResponse({
    this.email,
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.localId,
    this.refreshToken,
  });

  EmailLinkSigninResponse.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        isNewUser: json_['isNewUser'] as core.bool?,
        kind: json_['kind'] as core.String?,
        localId: json_['localId'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final isNewUser = this.isNewUser;
    final kind = this.kind;
    final localId = this.localId;
    final refreshToken = this.refreshToken;
    return {
      'email': ?email,
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'isNewUser': ?isNewUser,
      'kind': ?kind,
      'localId': ?localId,
      'refreshToken': ?refreshToken,
    };
  }
}

/// Template for an email template.
class EmailTemplate {
  /// Email body.
  core.String? body;

  /// Email body format.
  core.String? format;

  /// From address of the email.
  core.String? from;

  /// From display name.
  core.String? fromDisplayName;

  /// Reply-to address.
  core.String? replyTo;

  /// Subject of the email.
  core.String? subject;

  EmailTemplate({
    this.body,
    this.format,
    this.from,
    this.fromDisplayName,
    this.replyTo,
    this.subject,
  });

  EmailTemplate.fromJson(core.Map json_)
    : this(
        body: json_['body'] as core.String?,
        format: json_['format'] as core.String?,
        from: json_['from'] as core.String?,
        fromDisplayName: json_['fromDisplayName'] as core.String?,
        replyTo: json_['replyTo'] as core.String?,
        subject: json_['subject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    final format = this.format;
    final from = this.from;
    final fromDisplayName = this.fromDisplayName;
    final replyTo = this.replyTo;
    final subject = this.subject;
    return {
      'body': ?body,
      'format': ?format,
      'from': ?from,
      'fromDisplayName': ?fromDisplayName,
      'replyTo': ?replyTo,
      'subject': ?subject,
    };
  }
}

/// Response of getting account information.
class GetAccountInfoResponse {
  /// The fixed string "identitytoolkit#GetAccountInfoResponse".
  core.String? kind;

  /// The info of the users.
  core.List<UserInfo>? users;

  GetAccountInfoResponse({this.kind, this.users});

  GetAccountInfoResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        users: (json_['users'] as core.List?)
            ?.map(
              (value) => UserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final users = this.users;
    return {'kind': ?kind, 'users': ?users};
  }
}

/// Response of getting a code for user confirmation (reset password, change
/// email etc.).
class GetOobConfirmationCodeResponse {
  /// The email address that the email is sent to.
  core.String? email;

  /// The fixed string "identitytoolkit#GetOobConfirmationCodeResponse".
  core.String? kind;

  /// The code to be send to the user.
  core.String? oobCode;

  GetOobConfirmationCodeResponse({this.email, this.kind, this.oobCode});

  GetOobConfirmationCodeResponse.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        kind: json_['kind'] as core.String?,
        oobCode: json_['oobCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final kind = this.kind;
    final oobCode = this.oobCode;
    return {'email': ?email, 'kind': ?kind, 'oobCode': ?oobCode};
  }
}

/// Response of getting recaptcha param.
class GetRecaptchaParamResponse {
  /// The fixed string "identitytoolkit#GetRecaptchaParamResponse".
  core.String? kind;

  /// Site key registered at recaptcha.
  core.String? recaptchaSiteKey;

  /// The stoken field for the recaptcha widget, used to request captcha
  /// challenge.
  core.String? recaptchaStoken;

  GetRecaptchaParamResponse({
    this.kind,
    this.recaptchaSiteKey,
    this.recaptchaStoken,
  });

  GetRecaptchaParamResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        recaptchaSiteKey: json_['recaptchaSiteKey'] as core.String?,
        recaptchaStoken: json_['recaptchaStoken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final recaptchaSiteKey = this.recaptchaSiteKey;
    final recaptchaStoken = this.recaptchaStoken;
    return {
      'kind': ?kind,
      'recaptchaSiteKey': ?recaptchaSiteKey,
      'recaptchaStoken': ?recaptchaStoken,
    };
  }
}

/// Request to get the IDP authentication URL.
class IdentitytoolkitRelyingpartyCreateAuthUriRequest {
  /// The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android,
  /// BUNDLE_ID for iOS.
  core.String? appId;

  /// Explicitly specify the auth flow type.
  ///
  /// Currently only support "CODE_FLOW" type. The field is only used for Google
  /// provider.
  core.String? authFlowType;

  /// The relying party OAuth client ID.
  core.String? clientId;

  /// The opaque value used by the client to maintain context info between the
  /// authentication request and the IDP callback.
  core.String? context;

  /// The URI to which the IDP redirects the user after the federated login
  /// flow.
  core.String? continueUri;

  /// The query parameter that client can customize by themselves in auth url.
  ///
  /// The following parameters are reserved for server so that they cannot be
  /// customized by clients: client_id, response_type, scope, redirect_uri,
  /// state, oauth_token.
  core.Map<core.String, core.String>? customParameter;

  /// The hosted domain to restrict sign-in to accounts at that domain for
  /// Google Apps hosted accounts.
  core.String? hostedDomain;

  /// The email or federated ID of the user.
  core.String? identifier;

  /// The developer's consumer key for OpenId OAuth Extension
  core.String? oauthConsumerKey;

  /// Additional oauth scopes, beyond the basid user profile, that the user
  /// would be prompted to grant
  core.String? oauthScope;

  /// Optional realm for OpenID protocol.
  ///
  /// The sub string "scheme://domain:port" of the param "continueUri" is used
  /// if this is not set.
  core.String? openidRealm;

  /// The native app package for OTA installation.
  core.String? otaApp;

  /// The IdP ID.
  ///
  /// For white listed IdPs it's a short domain name e.g. google.com, aol.com,
  /// live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
  core.String? providerId;

  /// The session_id passed by client.
  core.String? sessionId;

  /// For multi-tenant use cases, in order to construct sign-in URL with the
  /// correct IDP parameters, Firebear needs to know which Tenant to retrieve
  /// IDP configs from.
  core.String? tenantId;

  /// Tenant project number to be used for idp discovery.
  core.String? tenantProjectNumber;

  IdentitytoolkitRelyingpartyCreateAuthUriRequest({
    this.appId,
    this.authFlowType,
    this.clientId,
    this.context,
    this.continueUri,
    this.customParameter,
    this.hostedDomain,
    this.identifier,
    this.oauthConsumerKey,
    this.oauthScope,
    this.openidRealm,
    this.otaApp,
    this.providerId,
    this.sessionId,
    this.tenantId,
    this.tenantProjectNumber,
  });

  IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        authFlowType: json_['authFlowType'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        context: json_['context'] as core.String?,
        continueUri: json_['continueUri'] as core.String?,
        customParameter:
            (json_['customParameter'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        hostedDomain: json_['hostedDomain'] as core.String?,
        identifier: json_['identifier'] as core.String?,
        oauthConsumerKey: json_['oauthConsumerKey'] as core.String?,
        oauthScope: json_['oauthScope'] as core.String?,
        openidRealm: json_['openidRealm'] as core.String?,
        otaApp: json_['otaApp'] as core.String?,
        providerId: json_['providerId'] as core.String?,
        sessionId: json_['sessionId'] as core.String?,
        tenantId: json_['tenantId'] as core.String?,
        tenantProjectNumber: json_['tenantProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final authFlowType = this.authFlowType;
    final clientId = this.clientId;
    final context = this.context;
    final continueUri = this.continueUri;
    final customParameter = this.customParameter;
    final hostedDomain = this.hostedDomain;
    final identifier = this.identifier;
    final oauthConsumerKey = this.oauthConsumerKey;
    final oauthScope = this.oauthScope;
    final openidRealm = this.openidRealm;
    final otaApp = this.otaApp;
    final providerId = this.providerId;
    final sessionId = this.sessionId;
    final tenantId = this.tenantId;
    final tenantProjectNumber = this.tenantProjectNumber;
    return {
      'appId': ?appId,
      'authFlowType': ?authFlowType,
      'clientId': ?clientId,
      'context': ?context,
      'continueUri': ?continueUri,
      'customParameter': ?customParameter,
      'hostedDomain': ?hostedDomain,
      'identifier': ?identifier,
      'oauthConsumerKey': ?oauthConsumerKey,
      'oauthScope': ?oauthScope,
      'openidRealm': ?openidRealm,
      'otaApp': ?otaApp,
      'providerId': ?providerId,
      'sessionId': ?sessionId,
      'tenantId': ?tenantId,
      'tenantProjectNumber': ?tenantProjectNumber,
    };
  }
}

/// Request to delete account.
class IdentitytoolkitRelyingpartyDeleteAccountRequest {
  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The GITKit token or STS id token of the authenticated user.
  core.String? idToken;

  /// The local ID of the user.
  core.String? localId;

  IdentitytoolkitRelyingpartyDeleteAccountRequest({
    this.delegatedProjectNumber,
    this.idToken,
    this.localId,
  });

  IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(core.Map json_)
    : this(
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        localId: json_['localId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final idToken = this.idToken;
    final localId = this.localId;
    return {
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'idToken': ?idToken,
      'localId': ?localId,
    };
  }
}

/// Request to download user account in batch.
class IdentitytoolkitRelyingpartyDownloadAccountRequest {
  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The max number of results to return in the response.
  core.int? maxResults;

  /// The token for the next page.
  ///
  /// This should be taken from the previous response.
  core.String? nextPageToken;

  /// Specify which project (field value is actually project id) to operate.
  ///
  /// Only used when provided credential.
  core.String? targetProjectId;

  IdentitytoolkitRelyingpartyDownloadAccountRequest({
    this.delegatedProjectNumber,
    this.maxResults,
    this.nextPageToken,
    this.targetProjectId,
  });

  IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(core.Map json_)
    : this(
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        maxResults: json_['maxResults'] as core.int?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        targetProjectId: json_['targetProjectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final maxResults = this.maxResults;
    final nextPageToken = this.nextPageToken;
    final targetProjectId = this.targetProjectId;
    return {
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'maxResults': ?maxResults,
      'nextPageToken': ?nextPageToken,
      'targetProjectId': ?targetProjectId,
    };
  }
}

/// Request to sign in with email.
class IdentitytoolkitRelyingpartyEmailLinkSigninRequest {
  /// The email address of the user.
  core.String? email;

  /// Token for linking flow.
  core.String? idToken;

  /// The confirmation code.
  core.String? oobCode;

  IdentitytoolkitRelyingpartyEmailLinkSigninRequest({
    this.email,
    this.idToken,
    this.oobCode,
  });

  IdentitytoolkitRelyingpartyEmailLinkSigninRequest.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        oobCode: json_['oobCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final idToken = this.idToken;
    final oobCode = this.oobCode;
    return {'email': ?email, 'idToken': ?idToken, 'oobCode': ?oobCode};
  }
}

/// Request to get the account information.
class IdentitytoolkitRelyingpartyGetAccountInfoRequest {
  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The list of emails of the users to inquiry.
  core.List<core.String>? email;

  /// The GITKit token of the authenticated user.
  core.String? idToken;

  /// The list of local ID's of the users to inquiry.
  core.List<core.String>? localId;

  /// Privileged caller can query users by specified phone number.
  core.List<core.String>? phoneNumber;

  IdentitytoolkitRelyingpartyGetAccountInfoRequest({
    this.delegatedProjectNumber,
    this.email,
    this.idToken,
    this.localId,
    this.phoneNumber,
  });

  IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(core.Map json_)
    : this(
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        email: (json_['email'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        idToken: json_['idToken'] as core.String?,
        localId: (json_['localId'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        phoneNumber: (json_['phoneNumber'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final email = this.email;
    final idToken = this.idToken;
    final localId = this.localId;
    final phoneNumber = this.phoneNumber;
    return {
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'email': ?email,
      'idToken': ?idToken,
      'localId': ?localId,
      'phoneNumber': ?phoneNumber,
    };
  }
}

/// Response of getting the project configuration.
class IdentitytoolkitRelyingpartyGetProjectConfigResponse {
  /// Whether to allow password user sign in or sign up.
  core.bool? allowPasswordUser;

  /// Browser API key, needed when making http request to Apiary.
  core.String? apiKey;

  /// Authorized domains.
  core.List<core.String>? authorizedDomains;

  /// Change email template.
  EmailTemplate? changeEmailTemplate;
  core.String? dynamicLinksDomain;

  /// Whether anonymous user is enabled.
  core.bool? enableAnonymousUser;

  /// OAuth2 provider configuration.
  core.List<IdpConfig>? idpConfig;

  /// Legacy reset password email template.
  EmailTemplate? legacyResetPasswordTemplate;

  /// Project ID of the relying party.
  core.String? projectId;

  /// Reset password email template.
  EmailTemplate? resetPasswordTemplate;

  /// Whether to use email sending provided by Firebear.
  core.bool? useEmailSending;

  /// Verify email template.
  EmailTemplate? verifyEmailTemplate;

  IdentitytoolkitRelyingpartyGetProjectConfigResponse({
    this.allowPasswordUser,
    this.apiKey,
    this.authorizedDomains,
    this.changeEmailTemplate,
    this.dynamicLinksDomain,
    this.enableAnonymousUser,
    this.idpConfig,
    this.legacyResetPasswordTemplate,
    this.projectId,
    this.resetPasswordTemplate,
    this.useEmailSending,
    this.verifyEmailTemplate,
  });

  IdentitytoolkitRelyingpartyGetProjectConfigResponse.fromJson(core.Map json_)
    : this(
        allowPasswordUser: json_['allowPasswordUser'] as core.bool?,
        apiKey: json_['apiKey'] as core.String?,
        authorizedDomains: (json_['authorizedDomains'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        changeEmailTemplate: json_.containsKey('changeEmailTemplate')
            ? EmailTemplate.fromJson(
                json_['changeEmailTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dynamicLinksDomain: json_['dynamicLinksDomain'] as core.String?,
        enableAnonymousUser: json_['enableAnonymousUser'] as core.bool?,
        idpConfig: (json_['idpConfig'] as core.List?)
            ?.map(
              (value) => IdpConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        legacyResetPasswordTemplate:
            json_.containsKey('legacyResetPasswordTemplate')
            ? EmailTemplate.fromJson(
                json_['legacyResetPasswordTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        projectId: json_['projectId'] as core.String?,
        resetPasswordTemplate: json_.containsKey('resetPasswordTemplate')
            ? EmailTemplate.fromJson(
                json_['resetPasswordTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useEmailSending: json_['useEmailSending'] as core.bool?,
        verifyEmailTemplate: json_.containsKey('verifyEmailTemplate')
            ? EmailTemplate.fromJson(
                json_['verifyEmailTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPasswordUser = this.allowPasswordUser;
    final apiKey = this.apiKey;
    final authorizedDomains = this.authorizedDomains;
    final changeEmailTemplate = this.changeEmailTemplate;
    final dynamicLinksDomain = this.dynamicLinksDomain;
    final enableAnonymousUser = this.enableAnonymousUser;
    final idpConfig = this.idpConfig;
    final legacyResetPasswordTemplate = this.legacyResetPasswordTemplate;
    final projectId = this.projectId;
    final resetPasswordTemplate = this.resetPasswordTemplate;
    final useEmailSending = this.useEmailSending;
    final verifyEmailTemplate = this.verifyEmailTemplate;
    return {
      'allowPasswordUser': ?allowPasswordUser,
      'apiKey': ?apiKey,
      'authorizedDomains': ?authorizedDomains,
      'changeEmailTemplate': ?changeEmailTemplate,
      'dynamicLinksDomain': ?dynamicLinksDomain,
      'enableAnonymousUser': ?enableAnonymousUser,
      'idpConfig': ?idpConfig,
      'legacyResetPasswordTemplate': ?legacyResetPasswordTemplate,
      'projectId': ?projectId,
      'resetPasswordTemplate': ?resetPasswordTemplate,
      'useEmailSending': ?useEmailSending,
      'verifyEmailTemplate': ?verifyEmailTemplate,
    };
  }
}

/// Respone of getting public keys.
typedef IdentitytoolkitRelyingpartyGetPublicKeysResponse =
    core.Map<core.String, core.String>;

/// Request to reset the password.
class IdentitytoolkitRelyingpartyResetPasswordRequest {
  /// The email address of the user.
  core.String? email;

  /// The new password inputted by the user.
  core.String? newPassword;

  /// The old password inputted by the user.
  core.String? oldPassword;

  /// The confirmation code.
  core.String? oobCode;

  IdentitytoolkitRelyingpartyResetPasswordRequest({
    this.email,
    this.newPassword,
    this.oldPassword,
    this.oobCode,
  });

  IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        newPassword: json_['newPassword'] as core.String?,
        oldPassword: json_['oldPassword'] as core.String?,
        oobCode: json_['oobCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final newPassword = this.newPassword;
    final oldPassword = this.oldPassword;
    final oobCode = this.oobCode;
    return {
      'email': ?email,
      'newPassword': ?newPassword,
      'oldPassword': ?oldPassword,
      'oobCode': ?oobCode,
    };
  }
}

/// Request for Identitytoolkit-SendVerificationCode
class IdentitytoolkitRelyingpartySendVerificationCodeRequest {
  /// Receipt of successful app token validation with APNS.
  core.String? iosReceipt;

  /// Secret delivered to iOS app via APNS.
  core.String? iosSecret;

  /// The phone number to send the verification code to in E.164 format.
  core.String? phoneNumber;

  /// Recaptcha solution.
  core.String? recaptchaToken;

  IdentitytoolkitRelyingpartySendVerificationCodeRequest({
    this.iosReceipt,
    this.iosSecret,
    this.phoneNumber,
    this.recaptchaToken,
  });

  IdentitytoolkitRelyingpartySendVerificationCodeRequest.fromJson(
    core.Map json_,
  ) : this(
        iosReceipt: json_['iosReceipt'] as core.String?,
        iosSecret: json_['iosSecret'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        recaptchaToken: json_['recaptchaToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iosReceipt = this.iosReceipt;
    final iosSecret = this.iosSecret;
    final phoneNumber = this.phoneNumber;
    final recaptchaToken = this.recaptchaToken;
    return {
      'iosReceipt': ?iosReceipt,
      'iosSecret': ?iosSecret,
      'phoneNumber': ?phoneNumber,
      'recaptchaToken': ?recaptchaToken,
    };
  }
}

/// Response for Identitytoolkit-SendVerificationCode
class IdentitytoolkitRelyingpartySendVerificationCodeResponse {
  /// Encrypted session information
  core.String? sessionInfo;

  IdentitytoolkitRelyingpartySendVerificationCodeResponse({this.sessionInfo});

  IdentitytoolkitRelyingpartySendVerificationCodeResponse.fromJson(
    core.Map json_,
  ) : this(sessionInfo: json_['sessionInfo'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sessionInfo = this.sessionInfo;
    return {'sessionInfo': ?sessionInfo};
  }
}

/// Request to set the account information.
class IdentitytoolkitRelyingpartySetAccountInfoRequest {
  /// The captcha challenge.
  core.String? captchaChallenge;

  /// Response to the captcha.
  core.String? captchaResponse;

  /// The timestamp when the account is created.
  core.String? createdAt;

  /// The custom attributes to be set in the user's id token.
  core.String? customAttributes;

  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The attributes users request to delete.
  core.List<core.String>? deleteAttribute;

  /// The IDPs the user request to delete.
  core.List<core.String>? deleteProvider;

  /// Whether to disable the user.
  core.bool? disableUser;

  /// The name of the user.
  core.String? displayName;

  /// The email of the user.
  core.String? email;

  /// Mark the email as verified or not.
  core.bool? emailVerified;

  /// The GITKit token of the authenticated user.
  core.String? idToken;

  /// Instance id token of the app.
  core.String? instanceId;

  /// Last login timestamp.
  core.String? lastLoginAt;

  /// The local ID of the user.
  core.String? localId;

  /// The out-of-band code of the change email request.
  core.String? oobCode;

  /// The new password of the user.
  core.String? password;

  /// Privileged caller can update user with specified phone number.
  core.String? phoneNumber;

  /// The photo url of the user.
  core.String? photoUrl;

  /// The associated IDPs of the user.
  core.List<core.String>? provider;

  /// Whether return sts id token and refresh token instead of gitkit token.
  core.bool? returnSecureToken;

  /// Mark the user to upgrade to federated login.
  core.bool? upgradeToFederatedLogin;

  /// Timestamp in seconds for valid login token.
  core.String? validSince;

  IdentitytoolkitRelyingpartySetAccountInfoRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.createdAt,
    this.customAttributes,
    this.delegatedProjectNumber,
    this.deleteAttribute,
    this.deleteProvider,
    this.disableUser,
    this.displayName,
    this.email,
    this.emailVerified,
    this.idToken,
    this.instanceId,
    this.lastLoginAt,
    this.localId,
    this.oobCode,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.provider,
    this.returnSecureToken,
    this.upgradeToFederatedLogin,
    this.validSince,
  });

  IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(core.Map json_)
    : this(
        captchaChallenge: json_['captchaChallenge'] as core.String?,
        captchaResponse: json_['captchaResponse'] as core.String?,
        createdAt: json_['createdAt'] as core.String?,
        customAttributes: json_['customAttributes'] as core.String?,
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        deleteAttribute: (json_['deleteAttribute'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deleteProvider: (json_['deleteProvider'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        disableUser: json_['disableUser'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        emailVerified: json_['emailVerified'] as core.bool?,
        idToken: json_['idToken'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        lastLoginAt: json_['lastLoginAt'] as core.String?,
        localId: json_['localId'] as core.String?,
        oobCode: json_['oobCode'] as core.String?,
        password: json_['password'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        provider: (json_['provider'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        returnSecureToken: json_['returnSecureToken'] as core.bool?,
        upgradeToFederatedLogin: json_['upgradeToFederatedLogin'] as core.bool?,
        validSince: json_['validSince'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final captchaChallenge = this.captchaChallenge;
    final captchaResponse = this.captchaResponse;
    final createdAt = this.createdAt;
    final customAttributes = this.customAttributes;
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final deleteAttribute = this.deleteAttribute;
    final deleteProvider = this.deleteProvider;
    final disableUser = this.disableUser;
    final displayName = this.displayName;
    final email = this.email;
    final emailVerified = this.emailVerified;
    final idToken = this.idToken;
    final instanceId = this.instanceId;
    final lastLoginAt = this.lastLoginAt;
    final localId = this.localId;
    final oobCode = this.oobCode;
    final password = this.password;
    final phoneNumber = this.phoneNumber;
    final photoUrl = this.photoUrl;
    final provider = this.provider;
    final returnSecureToken = this.returnSecureToken;
    final upgradeToFederatedLogin = this.upgradeToFederatedLogin;
    final validSince = this.validSince;
    return {
      'captchaChallenge': ?captchaChallenge,
      'captchaResponse': ?captchaResponse,
      'createdAt': ?createdAt,
      'customAttributes': ?customAttributes,
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'deleteAttribute': ?deleteAttribute,
      'deleteProvider': ?deleteProvider,
      'disableUser': ?disableUser,
      'displayName': ?displayName,
      'email': ?email,
      'emailVerified': ?emailVerified,
      'idToken': ?idToken,
      'instanceId': ?instanceId,
      'lastLoginAt': ?lastLoginAt,
      'localId': ?localId,
      'oobCode': ?oobCode,
      'password': ?password,
      'phoneNumber': ?phoneNumber,
      'photoUrl': ?photoUrl,
      'provider': ?provider,
      'returnSecureToken': ?returnSecureToken,
      'upgradeToFederatedLogin': ?upgradeToFederatedLogin,
      'validSince': ?validSince,
    };
  }
}

/// Request to set the project configuration.
class IdentitytoolkitRelyingpartySetProjectConfigRequest {
  /// Whether to allow password user sign in or sign up.
  core.bool? allowPasswordUser;

  /// Browser API key, needed when making http request to Apiary.
  core.String? apiKey;

  /// Authorized domains for widget redirect.
  core.List<core.String>? authorizedDomains;

  /// Change email template.
  EmailTemplate? changeEmailTemplate;

  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// Whether to enable anonymous user.
  core.bool? enableAnonymousUser;

  /// Oauth2 provider configuration.
  core.List<IdpConfig>? idpConfig;

  /// Legacy reset password email template.
  EmailTemplate? legacyResetPasswordTemplate;

  /// Reset password email template.
  EmailTemplate? resetPasswordTemplate;

  /// Whether to use email sending provided by Firebear.
  core.bool? useEmailSending;

  /// Verify email template.
  EmailTemplate? verifyEmailTemplate;

  IdentitytoolkitRelyingpartySetProjectConfigRequest({
    this.allowPasswordUser,
    this.apiKey,
    this.authorizedDomains,
    this.changeEmailTemplate,
    this.delegatedProjectNumber,
    this.enableAnonymousUser,
    this.idpConfig,
    this.legacyResetPasswordTemplate,
    this.resetPasswordTemplate,
    this.useEmailSending,
    this.verifyEmailTemplate,
  });

  IdentitytoolkitRelyingpartySetProjectConfigRequest.fromJson(core.Map json_)
    : this(
        allowPasswordUser: json_['allowPasswordUser'] as core.bool?,
        apiKey: json_['apiKey'] as core.String?,
        authorizedDomains: (json_['authorizedDomains'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        changeEmailTemplate: json_.containsKey('changeEmailTemplate')
            ? EmailTemplate.fromJson(
                json_['changeEmailTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        enableAnonymousUser: json_['enableAnonymousUser'] as core.bool?,
        idpConfig: (json_['idpConfig'] as core.List?)
            ?.map(
              (value) => IdpConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        legacyResetPasswordTemplate:
            json_.containsKey('legacyResetPasswordTemplate')
            ? EmailTemplate.fromJson(
                json_['legacyResetPasswordTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        resetPasswordTemplate: json_.containsKey('resetPasswordTemplate')
            ? EmailTemplate.fromJson(
                json_['resetPasswordTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useEmailSending: json_['useEmailSending'] as core.bool?,
        verifyEmailTemplate: json_.containsKey('verifyEmailTemplate')
            ? EmailTemplate.fromJson(
                json_['verifyEmailTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowPasswordUser = this.allowPasswordUser;
    final apiKey = this.apiKey;
    final authorizedDomains = this.authorizedDomains;
    final changeEmailTemplate = this.changeEmailTemplate;
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final enableAnonymousUser = this.enableAnonymousUser;
    final idpConfig = this.idpConfig;
    final legacyResetPasswordTemplate = this.legacyResetPasswordTemplate;
    final resetPasswordTemplate = this.resetPasswordTemplate;
    final useEmailSending = this.useEmailSending;
    final verifyEmailTemplate = this.verifyEmailTemplate;
    return {
      'allowPasswordUser': ?allowPasswordUser,
      'apiKey': ?apiKey,
      'authorizedDomains': ?authorizedDomains,
      'changeEmailTemplate': ?changeEmailTemplate,
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'enableAnonymousUser': ?enableAnonymousUser,
      'idpConfig': ?idpConfig,
      'legacyResetPasswordTemplate': ?legacyResetPasswordTemplate,
      'resetPasswordTemplate': ?resetPasswordTemplate,
      'useEmailSending': ?useEmailSending,
      'verifyEmailTemplate': ?verifyEmailTemplate,
    };
  }
}

/// Response of setting the project configuration.
class IdentitytoolkitRelyingpartySetProjectConfigResponse {
  /// Project ID of the relying party.
  core.String? projectId;

  IdentitytoolkitRelyingpartySetProjectConfigResponse({this.projectId});

  IdentitytoolkitRelyingpartySetProjectConfigResponse.fromJson(core.Map json_)
    : this(projectId: json_['projectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    return {'projectId': ?projectId};
  }
}

/// Request to sign out user.
class IdentitytoolkitRelyingpartySignOutUserRequest {
  /// Instance id token of the app.
  core.String? instanceId;

  /// The local ID of the user.
  core.String? localId;

  IdentitytoolkitRelyingpartySignOutUserRequest({
    this.instanceId,
    this.localId,
  });

  IdentitytoolkitRelyingpartySignOutUserRequest.fromJson(core.Map json_)
    : this(
        instanceId: json_['instanceId'] as core.String?,
        localId: json_['localId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instanceId = this.instanceId;
    final localId = this.localId;
    return {'instanceId': ?instanceId, 'localId': ?localId};
  }
}

/// Response of signing out user.
class IdentitytoolkitRelyingpartySignOutUserResponse {
  /// The local ID of the user.
  core.String? localId;

  IdentitytoolkitRelyingpartySignOutUserResponse({this.localId});

  IdentitytoolkitRelyingpartySignOutUserResponse.fromJson(core.Map json_)
    : this(localId: json_['localId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final localId = this.localId;
    return {'localId': ?localId};
  }
}

/// Request to signup new user, create anonymous user or anonymous user reauth.
class IdentitytoolkitRelyingpartySignupNewUserRequest {
  /// The captcha challenge.
  core.String? captchaChallenge;

  /// Response to the captcha.
  core.String? captchaResponse;

  /// Whether to disable the user.
  ///
  /// Only can be used by service account.
  core.bool? disabled;

  /// The name of the user.
  core.String? displayName;

  /// The email of the user.
  core.String? email;

  /// Mark the email as verified or not.
  ///
  /// Only can be used by service account.
  core.bool? emailVerified;

  /// The GITKit token of the authenticated user.
  core.String? idToken;

  /// Instance id token of the app.
  core.String? instanceId;

  /// Privileged caller can create user with specified user id.
  core.String? localId;

  /// The new password of the user.
  core.String? password;

  /// Privileged caller can create user with specified phone number.
  core.String? phoneNumber;

  /// The photo url of the user.
  core.String? photoUrl;

  /// For multi-tenant use cases, in order to construct sign-in URL with the
  /// correct IDP parameters, Firebear needs to know which Tenant to retrieve
  /// IDP configs from.
  core.String? tenantId;

  /// Tenant project number to be used for idp discovery.
  core.String? tenantProjectNumber;

  IdentitytoolkitRelyingpartySignupNewUserRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.disabled,
    this.displayName,
    this.email,
    this.emailVerified,
    this.idToken,
    this.instanceId,
    this.localId,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.tenantId,
    this.tenantProjectNumber,
  });

  IdentitytoolkitRelyingpartySignupNewUserRequest.fromJson(core.Map json_)
    : this(
        captchaChallenge: json_['captchaChallenge'] as core.String?,
        captchaResponse: json_['captchaResponse'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        emailVerified: json_['emailVerified'] as core.bool?,
        idToken: json_['idToken'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        localId: json_['localId'] as core.String?,
        password: json_['password'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        tenantId: json_['tenantId'] as core.String?,
        tenantProjectNumber: json_['tenantProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final captchaChallenge = this.captchaChallenge;
    final captchaResponse = this.captchaResponse;
    final disabled = this.disabled;
    final displayName = this.displayName;
    final email = this.email;
    final emailVerified = this.emailVerified;
    final idToken = this.idToken;
    final instanceId = this.instanceId;
    final localId = this.localId;
    final password = this.password;
    final phoneNumber = this.phoneNumber;
    final photoUrl = this.photoUrl;
    final tenantId = this.tenantId;
    final tenantProjectNumber = this.tenantProjectNumber;
    return {
      'captchaChallenge': ?captchaChallenge,
      'captchaResponse': ?captchaResponse,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'email': ?email,
      'emailVerified': ?emailVerified,
      'idToken': ?idToken,
      'instanceId': ?instanceId,
      'localId': ?localId,
      'password': ?password,
      'phoneNumber': ?phoneNumber,
      'photoUrl': ?photoUrl,
      'tenantId': ?tenantId,
      'tenantProjectNumber': ?tenantProjectNumber,
    };
  }
}

/// Request to upload user account in batch.
class IdentitytoolkitRelyingpartyUploadAccountRequest {
  /// Whether allow overwrite existing account when user local_id exists.
  core.bool? allowOverwrite;
  core.int? blockSize;

  /// The following 4 fields are for standard scrypt algorithm.
  core.int? cpuMemCost;

  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;
  core.int? dkLen;

  /// The password hash algorithm.
  core.String? hashAlgorithm;

  /// Memory cost for hash calculation.
  ///
  /// Used by scrypt similar algorithms.
  core.int? memoryCost;
  core.int? parallelization;

  /// Rounds for hash calculation.
  ///
  /// Used by scrypt and similar algorithms.
  core.int? rounds;

  /// The salt separator.
  core.String? saltSeparator;
  core.List<core.int> get saltSeparatorAsBytes =>
      convert.base64.decode(saltSeparator!);

  set saltSeparatorAsBytes(core.List<core.int> bytes_) {
    saltSeparator = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// If true, backend will do sanity check(including duplicate email and
  /// federated id) when uploading account.
  core.bool? sanityCheck;

  /// The key for to hash the password.
  core.String? signerKey;
  core.List<core.int> get signerKeyAsBytes => convert.base64.decode(signerKey!);

  set signerKeyAsBytes(core.List<core.int> bytes_) {
    signerKey = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specify which project (field value is actually project id) to operate.
  ///
  /// Only used when provided credential.
  core.String? targetProjectId;

  /// The account info to be stored.
  core.List<UserInfo>? users;

  IdentitytoolkitRelyingpartyUploadAccountRequest({
    this.allowOverwrite,
    this.blockSize,
    this.cpuMemCost,
    this.delegatedProjectNumber,
    this.dkLen,
    this.hashAlgorithm,
    this.memoryCost,
    this.parallelization,
    this.rounds,
    this.saltSeparator,
    this.sanityCheck,
    this.signerKey,
    this.targetProjectId,
    this.users,
  });

  IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(core.Map json_)
    : this(
        allowOverwrite: json_['allowOverwrite'] as core.bool?,
        blockSize: json_['blockSize'] as core.int?,
        cpuMemCost: json_['cpuMemCost'] as core.int?,
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        dkLen: json_['dkLen'] as core.int?,
        hashAlgorithm: json_['hashAlgorithm'] as core.String?,
        memoryCost: json_['memoryCost'] as core.int?,
        parallelization: json_['parallelization'] as core.int?,
        rounds: json_['rounds'] as core.int?,
        saltSeparator: json_['saltSeparator'] as core.String?,
        sanityCheck: json_['sanityCheck'] as core.bool?,
        signerKey: json_['signerKey'] as core.String?,
        targetProjectId: json_['targetProjectId'] as core.String?,
        users: (json_['users'] as core.List?)
            ?.map(
              (value) => UserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowOverwrite = this.allowOverwrite;
    final blockSize = this.blockSize;
    final cpuMemCost = this.cpuMemCost;
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final dkLen = this.dkLen;
    final hashAlgorithm = this.hashAlgorithm;
    final memoryCost = this.memoryCost;
    final parallelization = this.parallelization;
    final rounds = this.rounds;
    final saltSeparator = this.saltSeparator;
    final sanityCheck = this.sanityCheck;
    final signerKey = this.signerKey;
    final targetProjectId = this.targetProjectId;
    final users = this.users;
    return {
      'allowOverwrite': ?allowOverwrite,
      'blockSize': ?blockSize,
      'cpuMemCost': ?cpuMemCost,
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'dkLen': ?dkLen,
      'hashAlgorithm': ?hashAlgorithm,
      'memoryCost': ?memoryCost,
      'parallelization': ?parallelization,
      'rounds': ?rounds,
      'saltSeparator': ?saltSeparator,
      'sanityCheck': ?sanityCheck,
      'signerKey': ?signerKey,
      'targetProjectId': ?targetProjectId,
      'users': ?users,
    };
  }
}

/// Request to verify the IDP assertion.
class IdentitytoolkitRelyingpartyVerifyAssertionRequest {
  /// When it's true, automatically creates a new account if the user doesn't
  /// exist.
  ///
  /// When it's false, allows existing user to sign in normally and throws
  /// exception if the user doesn't exist.
  core.bool? autoCreate;

  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The GITKit token of the authenticated user.
  core.String? idToken;

  /// Instance id token of the app.
  core.String? instanceId;

  /// The GITKit token for the non-trusted IDP pending to be confirmed by the
  /// user.
  core.String? pendingIdToken;

  /// The post body if the request is a HTTP POST.
  core.String? postBody;

  /// The URI to which the IDP redirects the user back.
  ///
  /// It may contain federated login result params added by the IDP.
  core.String? requestUri;

  /// Whether return 200 and IDP credential rather than throw exception when
  /// federated id is already linked.
  core.bool? returnIdpCredential;

  /// Whether to return refresh tokens.
  core.bool? returnRefreshToken;

  /// Whether return sts id token and refresh token instead of gitkit token.
  core.bool? returnSecureToken;

  /// Session ID, which should match the one in previous createAuthUri request.
  core.String? sessionId;

  /// For multi-tenant use cases, in order to construct sign-in URL with the
  /// correct IDP parameters, Firebear needs to know which Tenant to retrieve
  /// IDP configs from.
  core.String? tenantId;

  /// Tenant project number to be used for idp discovery.
  core.String? tenantProjectNumber;

  IdentitytoolkitRelyingpartyVerifyAssertionRequest({
    this.autoCreate,
    this.delegatedProjectNumber,
    this.idToken,
    this.instanceId,
    this.pendingIdToken,
    this.postBody,
    this.requestUri,
    this.returnIdpCredential,
    this.returnRefreshToken,
    this.returnSecureToken,
    this.sessionId,
    this.tenantId,
    this.tenantProjectNumber,
  });

  IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(core.Map json_)
    : this(
        autoCreate: json_['autoCreate'] as core.bool?,
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        pendingIdToken: json_['pendingIdToken'] as core.String?,
        postBody: json_['postBody'] as core.String?,
        requestUri: json_['requestUri'] as core.String?,
        returnIdpCredential: json_['returnIdpCredential'] as core.bool?,
        returnRefreshToken: json_['returnRefreshToken'] as core.bool?,
        returnSecureToken: json_['returnSecureToken'] as core.bool?,
        sessionId: json_['sessionId'] as core.String?,
        tenantId: json_['tenantId'] as core.String?,
        tenantProjectNumber: json_['tenantProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoCreate = this.autoCreate;
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final idToken = this.idToken;
    final instanceId = this.instanceId;
    final pendingIdToken = this.pendingIdToken;
    final postBody = this.postBody;
    final requestUri = this.requestUri;
    final returnIdpCredential = this.returnIdpCredential;
    final returnRefreshToken = this.returnRefreshToken;
    final returnSecureToken = this.returnSecureToken;
    final sessionId = this.sessionId;
    final tenantId = this.tenantId;
    final tenantProjectNumber = this.tenantProjectNumber;
    return {
      'autoCreate': ?autoCreate,
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'idToken': ?idToken,
      'instanceId': ?instanceId,
      'pendingIdToken': ?pendingIdToken,
      'postBody': ?postBody,
      'requestUri': ?requestUri,
      'returnIdpCredential': ?returnIdpCredential,
      'returnRefreshToken': ?returnRefreshToken,
      'returnSecureToken': ?returnSecureToken,
      'sessionId': ?sessionId,
      'tenantId': ?tenantId,
      'tenantProjectNumber': ?tenantProjectNumber,
    };
  }
}

/// Request to verify a custom token
class IdentitytoolkitRelyingpartyVerifyCustomTokenRequest {
  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// Instance id token of the app.
  core.String? instanceId;

  /// Whether return sts id token and refresh token instead of gitkit token.
  core.bool? returnSecureToken;

  /// The custom token to verify
  core.String? token;

  IdentitytoolkitRelyingpartyVerifyCustomTokenRequest({
    this.delegatedProjectNumber,
    this.instanceId,
    this.returnSecureToken,
    this.token,
  });

  IdentitytoolkitRelyingpartyVerifyCustomTokenRequest.fromJson(core.Map json_)
    : this(
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        returnSecureToken: json_['returnSecureToken'] as core.bool?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final instanceId = this.instanceId;
    final returnSecureToken = this.returnSecureToken;
    final token = this.token;
    return {
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'instanceId': ?instanceId,
      'returnSecureToken': ?returnSecureToken,
      'token': ?token,
    };
  }
}

/// Request to verify the password.
class IdentitytoolkitRelyingpartyVerifyPasswordRequest {
  /// The captcha challenge.
  core.String? captchaChallenge;

  /// Response to the captcha.
  core.String? captchaResponse;

  /// GCP project number of the requesting delegated app.
  ///
  /// Currently only intended for Firebase V1 migration.
  core.String? delegatedProjectNumber;

  /// The email of the user.
  core.String? email;

  /// The GITKit token of the authenticated user.
  core.String? idToken;

  /// Instance id token of the app.
  core.String? instanceId;

  /// The password inputed by the user.
  core.String? password;

  /// The GITKit token for the non-trusted IDP, which is to be confirmed by the
  /// user.
  core.String? pendingIdToken;

  /// Whether return sts id token and refresh token instead of gitkit token.
  core.bool? returnSecureToken;

  /// For multi-tenant use cases, in order to construct sign-in URL with the
  /// correct IDP parameters, Firebear needs to know which Tenant to retrieve
  /// IDP configs from.
  core.String? tenantId;

  /// Tenant project number to be used for idp discovery.
  core.String? tenantProjectNumber;

  IdentitytoolkitRelyingpartyVerifyPasswordRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.delegatedProjectNumber,
    this.email,
    this.idToken,
    this.instanceId,
    this.password,
    this.pendingIdToken,
    this.returnSecureToken,
    this.tenantId,
    this.tenantProjectNumber,
  });

  IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(core.Map json_)
    : this(
        captchaChallenge: json_['captchaChallenge'] as core.String?,
        captchaResponse: json_['captchaResponse'] as core.String?,
        delegatedProjectNumber: json_['delegatedProjectNumber'] as core.String?,
        email: json_['email'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        password: json_['password'] as core.String?,
        pendingIdToken: json_['pendingIdToken'] as core.String?,
        returnSecureToken: json_['returnSecureToken'] as core.bool?,
        tenantId: json_['tenantId'] as core.String?,
        tenantProjectNumber: json_['tenantProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final captchaChallenge = this.captchaChallenge;
    final captchaResponse = this.captchaResponse;
    final delegatedProjectNumber = this.delegatedProjectNumber;
    final email = this.email;
    final idToken = this.idToken;
    final instanceId = this.instanceId;
    final password = this.password;
    final pendingIdToken = this.pendingIdToken;
    final returnSecureToken = this.returnSecureToken;
    final tenantId = this.tenantId;
    final tenantProjectNumber = this.tenantProjectNumber;
    return {
      'captchaChallenge': ?captchaChallenge,
      'captchaResponse': ?captchaResponse,
      'delegatedProjectNumber': ?delegatedProjectNumber,
      'email': ?email,
      'idToken': ?idToken,
      'instanceId': ?instanceId,
      'password': ?password,
      'pendingIdToken': ?pendingIdToken,
      'returnSecureToken': ?returnSecureToken,
      'tenantId': ?tenantId,
      'tenantProjectNumber': ?tenantProjectNumber,
    };
  }
}

/// Request for Identitytoolkit-VerifyPhoneNumber
class IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest {
  core.String? code;
  core.String? idToken;
  core.String? operation;
  core.String? phoneNumber;

  /// The session info previously returned by
  /// IdentityToolkit-SendVerificationCode.
  core.String? sessionInfo;
  core.String? temporaryProof;
  core.String? verificationProof;

  IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest({
    this.code,
    this.idToken,
    this.operation,
    this.phoneNumber,
    this.sessionInfo,
    this.temporaryProof,
    this.verificationProof,
  });

  IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        operation: json_['operation'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        sessionInfo: json_['sessionInfo'] as core.String?,
        temporaryProof: json_['temporaryProof'] as core.String?,
        verificationProof: json_['verificationProof'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final idToken = this.idToken;
    final operation = this.operation;
    final phoneNumber = this.phoneNumber;
    final sessionInfo = this.sessionInfo;
    final temporaryProof = this.temporaryProof;
    final verificationProof = this.verificationProof;
    return {
      'code': ?code,
      'idToken': ?idToken,
      'operation': ?operation,
      'phoneNumber': ?phoneNumber,
      'sessionInfo': ?sessionInfo,
      'temporaryProof': ?temporaryProof,
      'verificationProof': ?verificationProof,
    };
  }
}

/// Response for Identitytoolkit-VerifyPhoneNumber
class IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse {
  core.String? expiresIn;
  core.String? idToken;
  core.bool? isNewUser;
  core.String? localId;
  core.String? phoneNumber;
  core.String? refreshToken;
  core.String? temporaryProof;
  core.String? temporaryProofExpiresIn;
  core.String? verificationProof;
  core.String? verificationProofExpiresIn;

  IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse({
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.localId,
    this.phoneNumber,
    this.refreshToken,
    this.temporaryProof,
    this.temporaryProofExpiresIn,
    this.verificationProof,
    this.verificationProofExpiresIn,
  });

  IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse.fromJson(core.Map json_)
    : this(
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        isNewUser: json_['isNewUser'] as core.bool?,
        localId: json_['localId'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
        temporaryProof: json_['temporaryProof'] as core.String?,
        temporaryProofExpiresIn:
            json_['temporaryProofExpiresIn'] as core.String?,
        verificationProof: json_['verificationProof'] as core.String?,
        verificationProofExpiresIn:
            json_['verificationProofExpiresIn'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final isNewUser = this.isNewUser;
    final localId = this.localId;
    final phoneNumber = this.phoneNumber;
    final refreshToken = this.refreshToken;
    final temporaryProof = this.temporaryProof;
    final temporaryProofExpiresIn = this.temporaryProofExpiresIn;
    final verificationProof = this.verificationProof;
    final verificationProofExpiresIn = this.verificationProofExpiresIn;
    return {
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'isNewUser': ?isNewUser,
      'localId': ?localId,
      'phoneNumber': ?phoneNumber,
      'refreshToken': ?refreshToken,
      'temporaryProof': ?temporaryProof,
      'temporaryProofExpiresIn': ?temporaryProofExpiresIn,
      'verificationProof': ?verificationProof,
      'verificationProofExpiresIn': ?verificationProofExpiresIn,
    };
  }
}

/// Template for a single idp configuration.
class IdpConfig {
  /// OAuth2 client ID.
  core.String? clientId;

  /// Whether this IDP is enabled.
  core.bool? enabled;

  /// Percent of users who will be prompted/redirected federated login for this
  /// IDP.
  core.int? experimentPercent;

  /// OAuth2 provider.
  core.String? provider;

  /// OAuth2 client secret.
  core.String? secret;

  /// Whitelisted client IDs for audience check.
  core.List<core.String>? whitelistedAudiences;

  IdpConfig({
    this.clientId,
    this.enabled,
    this.experimentPercent,
    this.provider,
    this.secret,
    this.whitelistedAudiences,
  });

  IdpConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        experimentPercent: json_['experimentPercent'] as core.int?,
        provider: json_['provider'] as core.String?,
        secret: json_['secret'] as core.String?,
        whitelistedAudiences: (json_['whitelistedAudiences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final enabled = this.enabled;
    final experimentPercent = this.experimentPercent;
    final provider = this.provider;
    final secret = this.secret;
    final whitelistedAudiences = this.whitelistedAudiences;
    return {
      'clientId': ?clientId,
      'enabled': ?enabled,
      'experimentPercent': ?experimentPercent,
      'provider': ?provider,
      'secret': ?secret,
      'whitelistedAudiences': ?whitelistedAudiences,
    };
  }
}

/// Request of getting a code for user confirmation (reset password, change
/// email etc.)
class Relyingparty {
  /// whether or not to install the android app on the device where the link is
  /// opened
  core.bool? androidInstallApp;

  /// minimum version of the app.
  ///
  /// if the version on the device is lower than this version then the user is
  /// taken to the play store to upgrade the app
  core.String? androidMinimumVersion;

  /// android package name of the android app to handle the action code
  core.String? androidPackageName;

  /// whether or not the app can handle the oob code without first going to web
  core.bool? canHandleCodeInApp;

  /// The recaptcha response from the user.
  core.String? captchaResp;

  /// The recaptcha challenge presented to the user.
  core.String? challenge;

  /// The url to continue to the Gitkit app
  core.String? continueUrl;

  /// The email of the user.
  core.String? email;

  /// iOS app store id to download the app if it's not already installed
  core.String? iOSAppStoreId;

  /// the iOS bundle id of iOS app to handle the action code
  core.String? iOSBundleId;

  /// The user's Gitkit login token for email change.
  core.String? idToken;

  /// The fixed string "identitytoolkit#relyingparty".
  core.String? kind;

  /// The new email if the code is for email change.
  core.String? newEmail;

  /// The request type.
  core.String? requestType;

  /// The IP address of the user.
  core.String? userIp;

  Relyingparty({
    this.androidInstallApp,
    this.androidMinimumVersion,
    this.androidPackageName,
    this.canHandleCodeInApp,
    this.captchaResp,
    this.challenge,
    this.continueUrl,
    this.email,
    this.iOSAppStoreId,
    this.iOSBundleId,
    this.idToken,
    this.kind,
    this.newEmail,
    this.requestType,
    this.userIp,
  });

  Relyingparty.fromJson(core.Map json_)
    : this(
        androidInstallApp: json_['androidInstallApp'] as core.bool?,
        androidMinimumVersion: json_['androidMinimumVersion'] as core.String?,
        androidPackageName: json_['androidPackageName'] as core.String?,
        canHandleCodeInApp: json_['canHandleCodeInApp'] as core.bool?,
        captchaResp: json_['captchaResp'] as core.String?,
        challenge: json_['challenge'] as core.String?,
        continueUrl: json_['continueUrl'] as core.String?,
        email: json_['email'] as core.String?,
        iOSAppStoreId: json_['iOSAppStoreId'] as core.String?,
        iOSBundleId: json_['iOSBundleId'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        kind: json_['kind'] as core.String?,
        newEmail: json_['newEmail'] as core.String?,
        requestType: json_['requestType'] as core.String?,
        userIp: json_['userIp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final androidInstallApp = this.androidInstallApp;
    final androidMinimumVersion = this.androidMinimumVersion;
    final androidPackageName = this.androidPackageName;
    final canHandleCodeInApp = this.canHandleCodeInApp;
    final captchaResp = this.captchaResp;
    final challenge = this.challenge;
    final continueUrl = this.continueUrl;
    final email = this.email;
    final iOSAppStoreId = this.iOSAppStoreId;
    final iOSBundleId = this.iOSBundleId;
    final idToken = this.idToken;
    final kind = this.kind;
    final newEmail = this.newEmail;
    final requestType = this.requestType;
    final userIp = this.userIp;
    return {
      'androidInstallApp': ?androidInstallApp,
      'androidMinimumVersion': ?androidMinimumVersion,
      'androidPackageName': ?androidPackageName,
      'canHandleCodeInApp': ?canHandleCodeInApp,
      'captchaResp': ?captchaResp,
      'challenge': ?challenge,
      'continueUrl': ?continueUrl,
      'email': ?email,
      'iOSAppStoreId': ?iOSAppStoreId,
      'iOSBundleId': ?iOSBundleId,
      'idToken': ?idToken,
      'kind': ?kind,
      'newEmail': ?newEmail,
      'requestType': ?requestType,
      'userIp': ?userIp,
    };
  }
}

/// Response of resetting the password.
class ResetPasswordResponse {
  /// The user's email.
  ///
  /// If the out-of-band code is for email recovery, the user's original email.
  core.String? email;

  /// The fixed string "identitytoolkit#ResetPasswordResponse".
  core.String? kind;

  /// If the out-of-band code is for email recovery, the user's new email.
  core.String? newEmail;

  /// The request type.
  core.String? requestType;

  ResetPasswordResponse({
    this.email,
    this.kind,
    this.newEmail,
    this.requestType,
  });

  ResetPasswordResponse.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        kind: json_['kind'] as core.String?,
        newEmail: json_['newEmail'] as core.String?,
        requestType: json_['requestType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final kind = this.kind;
    final newEmail = this.newEmail;
    final requestType = this.requestType;
    return {
      'email': ?email,
      'kind': ?kind,
      'newEmail': ?newEmail,
      'requestType': ?requestType,
    };
  }
}

class SetAccountInfoResponseProviderUserInfo {
  /// The user's display name at the IDP.
  core.String? displayName;

  /// User's identifier at IDP.
  core.String? federatedId;

  /// The user's photo url at the IDP.
  core.String? photoUrl;

  /// The IdP ID.
  ///
  /// For whitelisted IdPs it's a short domain name, e.g., google.com, aol.com,
  /// live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
  core.String? providerId;

  SetAccountInfoResponseProviderUserInfo({
    this.displayName,
    this.federatedId,
    this.photoUrl,
    this.providerId,
  });

  SetAccountInfoResponseProviderUserInfo.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        federatedId: json_['federatedId'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        providerId: json_['providerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final federatedId = this.federatedId;
    final photoUrl = this.photoUrl;
    final providerId = this.providerId;
    return {
      'displayName': ?displayName,
      'federatedId': ?federatedId,
      'photoUrl': ?photoUrl,
      'providerId': ?providerId,
    };
  }
}

/// Respone of setting the account information.
class SetAccountInfoResponse {
  /// The name of the user.
  core.String? displayName;

  /// The email of the user.
  core.String? email;

  /// If email has been verified.
  core.bool? emailVerified;

  /// If idToken is STS id token, then this field will be expiration time of STS
  /// id token in seconds.
  core.String? expiresIn;

  /// The Gitkit id token to login the newly sign up user.
  core.String? idToken;

  /// The fixed string "identitytoolkit#SetAccountInfoResponse".
  core.String? kind;

  /// The local ID of the user.
  core.String? localId;

  /// The new email the user attempts to change to.
  core.String? newEmail;

  /// The user's hashed password.
  core.String? passwordHash;
  core.List<core.int> get passwordHashAsBytes =>
      convert.base64.decode(passwordHash!);

  set passwordHashAsBytes(core.List<core.int> bytes_) {
    passwordHash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The photo url of the user.
  core.String? photoUrl;

  /// The user's profiles at the associated IdPs.
  core.List<SetAccountInfoResponseProviderUserInfo>? providerUserInfo;

  /// If idToken is STS id token, then this field will be refresh token.
  core.String? refreshToken;

  SetAccountInfoResponse({
    this.displayName,
    this.email,
    this.emailVerified,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.newEmail,
    this.passwordHash,
    this.photoUrl,
    this.providerUserInfo,
    this.refreshToken,
  });

  SetAccountInfoResponse.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        emailVerified: json_['emailVerified'] as core.bool?,
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        kind: json_['kind'] as core.String?,
        localId: json_['localId'] as core.String?,
        newEmail: json_['newEmail'] as core.String?,
        passwordHash: json_['passwordHash'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        providerUserInfo: (json_['providerUserInfo'] as core.List?)
            ?.map(
              (value) => SetAccountInfoResponseProviderUserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final email = this.email;
    final emailVerified = this.emailVerified;
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final kind = this.kind;
    final localId = this.localId;
    final newEmail = this.newEmail;
    final passwordHash = this.passwordHash;
    final photoUrl = this.photoUrl;
    final providerUserInfo = this.providerUserInfo;
    final refreshToken = this.refreshToken;
    return {
      'displayName': ?displayName,
      'email': ?email,
      'emailVerified': ?emailVerified,
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'kind': ?kind,
      'localId': ?localId,
      'newEmail': ?newEmail,
      'passwordHash': ?passwordHash,
      'photoUrl': ?photoUrl,
      'providerUserInfo': ?providerUserInfo,
      'refreshToken': ?refreshToken,
    };
  }
}

/// Response of signing up new user, creating anonymous user or anonymous user
/// reauth.
class SignupNewUserResponse {
  /// The name of the user.
  core.String? displayName;

  /// The email of the user.
  core.String? email;

  /// If idToken is STS id token, then this field will be expiration time of STS
  /// id token in seconds.
  core.String? expiresIn;

  /// The Gitkit id token to login the newly sign up user.
  core.String? idToken;

  /// The fixed string "identitytoolkit#SignupNewUserResponse".
  core.String? kind;

  /// The RP local ID of the user.
  core.String? localId;

  /// If idToken is STS id token, then this field will be refresh token.
  core.String? refreshToken;

  SignupNewUserResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.refreshToken,
  });

  SignupNewUserResponse.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        kind: json_['kind'] as core.String?,
        localId: json_['localId'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final email = this.email;
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final kind = this.kind;
    final localId = this.localId;
    final refreshToken = this.refreshToken;
    return {
      'displayName': ?displayName,
      'email': ?email,
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'kind': ?kind,
      'localId': ?localId,
      'refreshToken': ?refreshToken,
    };
  }
}

class UploadAccountResponseError {
  /// The index of the malformed account, starting from 0.
  core.int? index;

  /// Detailed error message for the account info.
  core.String? message;

  UploadAccountResponseError({this.index, this.message});

  UploadAccountResponseError.fromJson(core.Map json_)
    : this(
        index: json_['index'] as core.int?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final index = this.index;
    final message = this.message;
    return {'index': ?index, 'message': ?message};
  }
}

/// Respone of uploading accounts in batch.
class UploadAccountResponse {
  /// The error encountered while processing the account info.
  core.List<UploadAccountResponseError>? error;

  /// The fixed string "identitytoolkit#UploadAccountResponse".
  core.String? kind;

  UploadAccountResponse({this.error, this.kind});

  UploadAccountResponse.fromJson(core.Map json_)
    : this(
        error: (json_['error'] as core.List?)
            ?.map(
              (value) => UploadAccountResponseError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final kind = this.kind;
    return {'error': ?error, 'kind': ?kind};
  }
}

class UserInfoProviderUserInfo {
  /// The user's display name at the IDP.
  core.String? displayName;

  /// User's email at IDP.
  core.String? email;

  /// User's identifier at IDP.
  core.String? federatedId;

  /// User's phone number.
  core.String? phoneNumber;

  /// The user's photo url at the IDP.
  core.String? photoUrl;

  /// The IdP ID.
  ///
  /// For white listed IdPs it's a short domain name, e.g., google.com, aol.com,
  /// live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
  core.String? providerId;

  /// User's raw identifier directly returned from IDP.
  core.String? rawId;

  /// User's screen name at Twitter or login name at Github.
  core.String? screenName;

  UserInfoProviderUserInfo({
    this.displayName,
    this.email,
    this.federatedId,
    this.phoneNumber,
    this.photoUrl,
    this.providerId,
    this.rawId,
    this.screenName,
  });

  UserInfoProviderUserInfo.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        federatedId: json_['federatedId'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        providerId: json_['providerId'] as core.String?,
        rawId: json_['rawId'] as core.String?,
        screenName: json_['screenName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final email = this.email;
    final federatedId = this.federatedId;
    final phoneNumber = this.phoneNumber;
    final photoUrl = this.photoUrl;
    final providerId = this.providerId;
    final rawId = this.rawId;
    final screenName = this.screenName;
    return {
      'displayName': ?displayName,
      'email': ?email,
      'federatedId': ?federatedId,
      'phoneNumber': ?phoneNumber,
      'photoUrl': ?photoUrl,
      'providerId': ?providerId,
      'rawId': ?rawId,
      'screenName': ?screenName,
    };
  }
}

/// Template for an individual account info.
class UserInfo {
  /// User creation timestamp.
  core.String? createdAt;

  /// The custom attributes to be set in the user's id token.
  core.String? customAttributes;

  /// Whether the user is authenticated by the developer.
  core.bool? customAuth;

  /// Whether the user is disabled.
  core.bool? disabled;

  /// The name of the user.
  core.String? displayName;

  /// The email of the user.
  core.String? email;

  /// Whether the email has been verified.
  core.bool? emailVerified;

  /// last login timestamp.
  core.String? lastLoginAt;

  /// The local ID of the user.
  core.String? localId;

  /// The user's hashed password.
  core.String? passwordHash;
  core.List<core.int> get passwordHashAsBytes =>
      convert.base64.decode(passwordHash!);

  set passwordHashAsBytes(core.List<core.int> bytes_) {
    passwordHash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The timestamp when the password was last updated.
  core.double? passwordUpdatedAt;

  /// User's phone number.
  core.String? phoneNumber;

  /// The URL of the user profile photo.
  core.String? photoUrl;

  /// The IDP of the user.
  core.List<UserInfoProviderUserInfo>? providerUserInfo;

  /// The user's plain text password.
  core.String? rawPassword;

  /// The user's password salt.
  core.String? salt;
  core.List<core.int> get saltAsBytes => convert.base64.decode(salt!);

  set saltAsBytes(core.List<core.int> bytes_) {
    salt = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// User's screen name at Twitter or login name at Github.
  core.String? screenName;

  /// Timestamp in seconds for valid login token.
  core.String? validSince;

  /// Version of the user's password.
  core.int? version;

  UserInfo({
    this.createdAt,
    this.customAttributes,
    this.customAuth,
    this.disabled,
    this.displayName,
    this.email,
    this.emailVerified,
    this.lastLoginAt,
    this.localId,
    this.passwordHash,
    this.passwordUpdatedAt,
    this.phoneNumber,
    this.photoUrl,
    this.providerUserInfo,
    this.rawPassword,
    this.salt,
    this.screenName,
    this.validSince,
    this.version,
  });

  UserInfo.fromJson(core.Map json_)
    : this(
        createdAt: json_['createdAt'] as core.String?,
        customAttributes: json_['customAttributes'] as core.String?,
        customAuth: json_['customAuth'] as core.bool?,
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        emailVerified: json_['emailVerified'] as core.bool?,
        lastLoginAt: json_['lastLoginAt'] as core.String?,
        localId: json_['localId'] as core.String?,
        passwordHash: json_['passwordHash'] as core.String?,
        passwordUpdatedAt: (json_['passwordUpdatedAt'] as core.num?)
            ?.toDouble(),
        phoneNumber: json_['phoneNumber'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        providerUserInfo: (json_['providerUserInfo'] as core.List?)
            ?.map(
              (value) => UserInfoProviderUserInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rawPassword: json_['rawPassword'] as core.String?,
        salt: json_['salt'] as core.String?,
        screenName: json_['screenName'] as core.String?,
        validSince: json_['validSince'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createdAt = this.createdAt;
    final customAttributes = this.customAttributes;
    final customAuth = this.customAuth;
    final disabled = this.disabled;
    final displayName = this.displayName;
    final email = this.email;
    final emailVerified = this.emailVerified;
    final lastLoginAt = this.lastLoginAt;
    final localId = this.localId;
    final passwordHash = this.passwordHash;
    final passwordUpdatedAt = this.passwordUpdatedAt;
    final phoneNumber = this.phoneNumber;
    final photoUrl = this.photoUrl;
    final providerUserInfo = this.providerUserInfo;
    final rawPassword = this.rawPassword;
    final salt = this.salt;
    final screenName = this.screenName;
    final validSince = this.validSince;
    final version = this.version;
    return {
      'createdAt': ?createdAt,
      'customAttributes': ?customAttributes,
      'customAuth': ?customAuth,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'email': ?email,
      'emailVerified': ?emailVerified,
      'lastLoginAt': ?lastLoginAt,
      'localId': ?localId,
      'passwordHash': ?passwordHash,
      'passwordUpdatedAt': ?passwordUpdatedAt,
      'phoneNumber': ?phoneNumber,
      'photoUrl': ?photoUrl,
      'providerUserInfo': ?providerUserInfo,
      'rawPassword': ?rawPassword,
      'salt': ?salt,
      'screenName': ?screenName,
      'validSince': ?validSince,
      'version': ?version,
    };
  }
}

/// Response of verifying the IDP assertion.
class VerifyAssertionResponse {
  /// The action code.
  core.String? action;

  /// URL for OTA app installation.
  core.String? appInstallationUrl;

  /// The custom scheme used by mobile app.
  core.String? appScheme;

  /// The opaque value used by the client to maintain context info between the
  /// authentication request and the IDP callback.
  core.String? context;

  /// The birth date of the IdP account.
  core.String? dateOfBirth;

  /// The display name of the user.
  core.String? displayName;

  /// The email returned by the IdP.
  ///
  /// NOTE: The federated login user may not own the email.
  core.String? email;

  /// It's true if the email is recycled.
  core.bool? emailRecycled;

  /// The value is true if the IDP is also the email provider.
  ///
  /// It means the user owns the email.
  core.bool? emailVerified;

  /// Client error code.
  core.String? errorMessage;

  /// If idToken is STS id token, then this field will be expiration time of STS
  /// id token in seconds.
  core.String? expiresIn;

  /// The unique ID identifies the IdP account.
  core.String? federatedId;

  /// The first name of the user.
  core.String? firstName;

  /// The full name of the user.
  core.String? fullName;

  /// The ID token.
  core.String? idToken;

  /// It's the identifier param in the createAuthUri request if the identifier
  /// is an email.
  ///
  /// It can be used to check whether the user input email is different from the
  /// asserted email.
  core.String? inputEmail;

  /// True if it's a new user sign-in, false if it's a returning user.
  core.bool? isNewUser;

  /// The fixed string "identitytoolkit#VerifyAssertionResponse".
  core.String? kind;

  /// The language preference of the user.
  core.String? language;

  /// The last name of the user.
  core.String? lastName;

  /// The RP local ID if it's already been mapped to the IdP account identified
  /// by the federated ID.
  core.String? localId;

  /// Whether the assertion is from a non-trusted IDP and need account linking
  /// confirmation.
  core.bool? needConfirmation;

  /// Whether need client to supply email to complete the federated login flow.
  core.bool? needEmail;

  /// The nick name of the user.
  core.String? nickName;

  /// The OAuth2 access token.
  core.String? oauthAccessToken;

  /// The OAuth2 authorization code.
  core.String? oauthAuthorizationCode;

  /// The lifetime in seconds of the OAuth2 access token.
  core.int? oauthExpireIn;

  /// The OIDC id token.
  core.String? oauthIdToken;

  /// The user approved request token for the OpenID OAuth extension.
  core.String? oauthRequestToken;

  /// The scope for the OpenID OAuth extension.
  core.String? oauthScope;

  /// The OAuth1 access token secret.
  core.String? oauthTokenSecret;

  /// The original email stored in the mapping storage.
  ///
  /// It's returned when the federated ID is associated to a different email.
  core.String? originalEmail;

  /// The URI of the public accessible profiel picture.
  core.String? photoUrl;

  /// The IdP ID.
  ///
  /// For white listed IdPs it's a short domain name e.g. google.com, aol.com,
  /// live.net and yahoo.com. If the "providerId" param is set to OpenID OP
  /// identifer other than the whilte listed IdPs the OP identifier is returned.
  /// If the "identifier" param is federated ID in the createAuthUri request.
  /// The domain part of the federated ID is returned.
  core.String? providerId;

  /// Raw IDP-returned user info.
  core.String? rawUserInfo;

  /// If idToken is STS id token, then this field will be refresh token.
  core.String? refreshToken;

  /// The screen_name of a Twitter user or the login name at Github.
  core.String? screenName;

  /// The timezone of the user.
  core.String? timeZone;

  /// When action is 'map', contains the idps which can be used for
  /// confirmation.
  core.List<core.String>? verifiedProvider;

  VerifyAssertionResponse({
    this.action,
    this.appInstallationUrl,
    this.appScheme,
    this.context,
    this.dateOfBirth,
    this.displayName,
    this.email,
    this.emailRecycled,
    this.emailVerified,
    this.errorMessage,
    this.expiresIn,
    this.federatedId,
    this.firstName,
    this.fullName,
    this.idToken,
    this.inputEmail,
    this.isNewUser,
    this.kind,
    this.language,
    this.lastName,
    this.localId,
    this.needConfirmation,
    this.needEmail,
    this.nickName,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.oauthIdToken,
    this.oauthRequestToken,
    this.oauthScope,
    this.oauthTokenSecret,
    this.originalEmail,
    this.photoUrl,
    this.providerId,
    this.rawUserInfo,
    this.refreshToken,
    this.screenName,
    this.timeZone,
    this.verifiedProvider,
  });

  VerifyAssertionResponse.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        appInstallationUrl: json_['appInstallationUrl'] as core.String?,
        appScheme: json_['appScheme'] as core.String?,
        context: json_['context'] as core.String?,
        dateOfBirth: json_['dateOfBirth'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        emailRecycled: json_['emailRecycled'] as core.bool?,
        emailVerified: json_['emailVerified'] as core.bool?,
        errorMessage: json_['errorMessage'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        federatedId: json_['federatedId'] as core.String?,
        firstName: json_['firstName'] as core.String?,
        fullName: json_['fullName'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        inputEmail: json_['inputEmail'] as core.String?,
        isNewUser: json_['isNewUser'] as core.bool?,
        kind: json_['kind'] as core.String?,
        language: json_['language'] as core.String?,
        lastName: json_['lastName'] as core.String?,
        localId: json_['localId'] as core.String?,
        needConfirmation: json_['needConfirmation'] as core.bool?,
        needEmail: json_['needEmail'] as core.bool?,
        nickName: json_['nickName'] as core.String?,
        oauthAccessToken: json_['oauthAccessToken'] as core.String?,
        oauthAuthorizationCode: json_['oauthAuthorizationCode'] as core.String?,
        oauthExpireIn: json_['oauthExpireIn'] as core.int?,
        oauthIdToken: json_['oauthIdToken'] as core.String?,
        oauthRequestToken: json_['oauthRequestToken'] as core.String?,
        oauthScope: json_['oauthScope'] as core.String?,
        oauthTokenSecret: json_['oauthTokenSecret'] as core.String?,
        originalEmail: json_['originalEmail'] as core.String?,
        photoUrl: json_['photoUrl'] as core.String?,
        providerId: json_['providerId'] as core.String?,
        rawUserInfo: json_['rawUserInfo'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
        screenName: json_['screenName'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        verifiedProvider: (json_['verifiedProvider'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final appInstallationUrl = this.appInstallationUrl;
    final appScheme = this.appScheme;
    final context = this.context;
    final dateOfBirth = this.dateOfBirth;
    final displayName = this.displayName;
    final email = this.email;
    final emailRecycled = this.emailRecycled;
    final emailVerified = this.emailVerified;
    final errorMessage = this.errorMessage;
    final expiresIn = this.expiresIn;
    final federatedId = this.federatedId;
    final firstName = this.firstName;
    final fullName = this.fullName;
    final idToken = this.idToken;
    final inputEmail = this.inputEmail;
    final isNewUser = this.isNewUser;
    final kind = this.kind;
    final language = this.language;
    final lastName = this.lastName;
    final localId = this.localId;
    final needConfirmation = this.needConfirmation;
    final needEmail = this.needEmail;
    final nickName = this.nickName;
    final oauthAccessToken = this.oauthAccessToken;
    final oauthAuthorizationCode = this.oauthAuthorizationCode;
    final oauthExpireIn = this.oauthExpireIn;
    final oauthIdToken = this.oauthIdToken;
    final oauthRequestToken = this.oauthRequestToken;
    final oauthScope = this.oauthScope;
    final oauthTokenSecret = this.oauthTokenSecret;
    final originalEmail = this.originalEmail;
    final photoUrl = this.photoUrl;
    final providerId = this.providerId;
    final rawUserInfo = this.rawUserInfo;
    final refreshToken = this.refreshToken;
    final screenName = this.screenName;
    final timeZone = this.timeZone;
    final verifiedProvider = this.verifiedProvider;
    return {
      'action': ?action,
      'appInstallationUrl': ?appInstallationUrl,
      'appScheme': ?appScheme,
      'context': ?context,
      'dateOfBirth': ?dateOfBirth,
      'displayName': ?displayName,
      'email': ?email,
      'emailRecycled': ?emailRecycled,
      'emailVerified': ?emailVerified,
      'errorMessage': ?errorMessage,
      'expiresIn': ?expiresIn,
      'federatedId': ?federatedId,
      'firstName': ?firstName,
      'fullName': ?fullName,
      'idToken': ?idToken,
      'inputEmail': ?inputEmail,
      'isNewUser': ?isNewUser,
      'kind': ?kind,
      'language': ?language,
      'lastName': ?lastName,
      'localId': ?localId,
      'needConfirmation': ?needConfirmation,
      'needEmail': ?needEmail,
      'nickName': ?nickName,
      'oauthAccessToken': ?oauthAccessToken,
      'oauthAuthorizationCode': ?oauthAuthorizationCode,
      'oauthExpireIn': ?oauthExpireIn,
      'oauthIdToken': ?oauthIdToken,
      'oauthRequestToken': ?oauthRequestToken,
      'oauthScope': ?oauthScope,
      'oauthTokenSecret': ?oauthTokenSecret,
      'originalEmail': ?originalEmail,
      'photoUrl': ?photoUrl,
      'providerId': ?providerId,
      'rawUserInfo': ?rawUserInfo,
      'refreshToken': ?refreshToken,
      'screenName': ?screenName,
      'timeZone': ?timeZone,
      'verifiedProvider': ?verifiedProvider,
    };
  }
}

/// Response from verifying a custom token
class VerifyCustomTokenResponse {
  /// If idToken is STS id token, then this field will be expiration time of STS
  /// id token in seconds.
  core.String? expiresIn;

  /// The GITKit token for authenticated user.
  core.String? idToken;

  /// True if it's a new user sign-in, false if it's a returning user.
  core.bool? isNewUser;

  /// The fixed string "identitytoolkit#VerifyCustomTokenResponse".
  core.String? kind;

  /// If idToken is STS id token, then this field will be refresh token.
  core.String? refreshToken;

  VerifyCustomTokenResponse({
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.refreshToken,
  });

  VerifyCustomTokenResponse.fromJson(core.Map json_)
    : this(
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        isNewUser: json_['isNewUser'] as core.bool?,
        kind: json_['kind'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final isNewUser = this.isNewUser;
    final kind = this.kind;
    final refreshToken = this.refreshToken;
    return {
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'isNewUser': ?isNewUser,
      'kind': ?kind,
      'refreshToken': ?refreshToken,
    };
  }
}

/// Request of verifying the password.
class VerifyPasswordResponse {
  /// The name of the user.
  core.String? displayName;

  /// The email returned by the IdP.
  ///
  /// NOTE: The federated login user may not own the email.
  core.String? email;

  /// If idToken is STS id token, then this field will be expiration time of STS
  /// id token in seconds.
  core.String? expiresIn;

  /// The GITKit token for authenticated user.
  core.String? idToken;

  /// The fixed string "identitytoolkit#VerifyPasswordResponse".
  core.String? kind;

  /// The RP local ID if it's already been mapped to the IdP account identified
  /// by the federated ID.
  core.String? localId;

  /// The OAuth2 access token.
  core.String? oauthAccessToken;

  /// The OAuth2 authorization code.
  core.String? oauthAuthorizationCode;

  /// The lifetime in seconds of the OAuth2 access token.
  core.int? oauthExpireIn;

  /// The URI of the user's photo at IdP
  core.String? photoUrl;

  /// If idToken is STS id token, then this field will be refresh token.
  core.String? refreshToken;

  /// Whether the email is registered.
  core.bool? registered;

  VerifyPasswordResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.photoUrl,
    this.refreshToken,
    this.registered,
  });

  VerifyPasswordResponse.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        idToken: json_['idToken'] as core.String?,
        kind: json_['kind'] as core.String?,
        localId: json_['localId'] as core.String?,
        oauthAccessToken: json_['oauthAccessToken'] as core.String?,
        oauthAuthorizationCode: json_['oauthAuthorizationCode'] as core.String?,
        oauthExpireIn: json_['oauthExpireIn'] as core.int?,
        photoUrl: json_['photoUrl'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
        registered: json_['registered'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final email = this.email;
    final expiresIn = this.expiresIn;
    final idToken = this.idToken;
    final kind = this.kind;
    final localId = this.localId;
    final oauthAccessToken = this.oauthAccessToken;
    final oauthAuthorizationCode = this.oauthAuthorizationCode;
    final oauthExpireIn = this.oauthExpireIn;
    final photoUrl = this.photoUrl;
    final refreshToken = this.refreshToken;
    final registered = this.registered;
    return {
      'displayName': ?displayName,
      'email': ?email,
      'expiresIn': ?expiresIn,
      'idToken': ?idToken,
      'kind': ?kind,
      'localId': ?localId,
      'oauthAccessToken': ?oauthAccessToken,
      'oauthAuthorizationCode': ?oauthAuthorizationCode,
      'oauthExpireIn': ?oauthExpireIn,
      'photoUrl': ?photoUrl,
      'refreshToken': ?refreshToken,
      'registered': ?registered,
    };
  }
}
