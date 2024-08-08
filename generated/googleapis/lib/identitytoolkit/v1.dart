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

/// Identity Toolkit API - v1
///
/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
///
/// For more information, see <https://cloud.google.com/identity-platform>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [AccountsResource]
/// - [ProjectsResource]
///   - [ProjectsAccountsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsAccountsResource]
/// - [V1Resource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
class IdentityToolkitApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  IdentityToolkitApi(http.Client client,
      {core.String rootUrl = 'https://identitytoolkit.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// If an email identifier is specified, checks and returns if any user
  /// account is registered with the email.
  ///
  /// If there is a registered account, fetches all providers associated with
  /// the account's email. If the provider ID of an Identity Provider (IdP) is
  /// specified, creates an authorization URI for the IdP. The user can be
  /// directed to this URI to sign in with the IdP. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1CreateAuthUriResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateAuthUriResponse> createAuthUri(
    GoogleCloudIdentitytoolkitV1CreateAuthUriRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:createAuthUri';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1CreateAuthUriResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Experimental
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse>
      issueSamlResponse(
    GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:issueSamlResponse';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets the password of an account either using an out-of-band code
  /// generated by sendOobCode or by specifying the email and password of the
  /// account to be modified.
  ///
  /// Can also check the purpose of an out-of-band code without consuming it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1ResetPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1ResetPasswordResponse> resetPassword(
    GoogleCloudIdentitytoolkitV1ResetPasswordRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:resetPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1ResetPasswordResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:sendOobCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends a SMS verification code for phone number sign-in.
  ///
  /// To localize the text of the SMS sent to the user, set the HTTP header
  /// `X-Firebase-Locale` to the language code that corresponds with the user's
  /// locale. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse>
      sendVerificationCode(
    GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:sendVerificationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user by exchanging a custom Auth token.
  ///
  /// Upon a successful sign-in or sign-up, a new Identity Platform ID token and
  /// refresh token are issued for the user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse>
      signInWithCustomToken(
    GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithCustomToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user with a out-of-band code from an email link.
  ///
  /// If a user does not exist with the given email address, a user record will
  /// be created. If the sign-in succeeds, an Identity Platform ID and refresh
  /// token are issued for the authenticated user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse>
      signInWithEmailLink(
    GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithEmailLink';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user with iOS Game Center credentials.
  ///
  /// If the sign-in succeeds, a new Identity Platform ID token and refresh
  /// token are issued for the authenticated user. The bundle ID is required in
  /// the request header as `x-ios-bundle-identifier`. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  /// Apple has \[deprecated the `playerID`
  /// field\](https://developer.apple.com/documentation/gamekit/gkplayer/1521127-playerid/).
  /// The Apple platform Firebase SDK will use `gamePlayerID` and `teamPlayerID`
  /// from version 10.5.0 and onwards. Upgrading to SDK version 10.5.0 or later
  /// updates existing integrations that use `playerID` to instead use
  /// `gamePlayerID` and `teamPlayerID`. When making calls to
  /// `signInWithGameCenter`, you must include `playerID` along with the new
  /// fields `gamePlayerID` and `teamPlayerID` to successfully identify all
  /// existing users. Upgrading existing Game Center sign in integrations to SDK
  /// version 10.5.0 or later is irreversible.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse>
      signInWithGameCenter(
    GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithGameCenter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs in or signs up a user using credentials from an Identity Provider
  /// (IdP).
  ///
  /// This is done by manually providing an IdP credential, or by providing the
  /// authorization response obtained via the authorization request from
  /// CreateAuthUri. If the sign-in succeeds, a new Identity Platform ID token
  /// and refresh token are issued for the authenticated user. A new Identity
  /// Platform user account will be created if the user has not previously
  /// signed in to the IdP with the same account. In addition, when the "One
  /// account per email address" setting is enabled, there should not be an
  /// existing Identity Platform user account with the same email address for a
  /// new user account to be created. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignInWithIdpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithIdpResponse> signInWithIdp(
    GoogleCloudIdentitytoolkitV1SignInWithIdpRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithIdp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithIdpResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs in a user with email and password.
  ///
  /// If the sign-in succeeds, a new Identity Platform ID token and refresh
  /// token are issued for the authenticated user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse>
      signInWithPassword(
    GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Completes a phone number authentication attempt.
  ///
  /// If a user already exists with the given phone number, an ID token is
  /// minted for that user. Otherwise, a new user is created and associated with
  /// the phone number. This method may also be used to link a phone number to
  /// an existing user. To localize the text of the SMS sent to the user, set
  /// the HTTP header `X-Firebase-Locale` to the language code that corresponds
  /// with the user's locale. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse>
      signInWithPhoneNumber(
    GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signInWithPhoneNumber';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> signUp(
    GoogleCloudIdentitytoolkitV1SignUpRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:signUp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:update';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies an iOS client is a real iOS device.
  ///
  /// If the request is valid, a receipt will be sent in the response and a
  /// secret will be sent via Apple Push Notification Service. The client should
  /// send both of them back to certain Identity Platform APIs in a later call
  /// (for example, /accounts:sendVerificationCode), in order to verify the
  /// client. The bundle ID is required in the request header as
  /// `x-ios-bundle-identifier`. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1VerifyIosClientResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1VerifyIosClientResponse>
      verifyIosClient(
    GoogleCloudIdentitytoolkitV1VerifyIosClientRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accounts:verifyIosClient';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1VerifyIosClientResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAccountsResource get accounts_1 =>
      ProjectsAccountsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID of the project which the user should
  /// belong to. Specifying this field requires a Google OAuth 2.0 credential
  /// with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> accounts(
    GoogleCloudIdentitytoolkitV1SignUpRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + core.Uri.encodeFull('$targetProjectId') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a session cookie for the given Identity Platform ID token.
  ///
  /// The session cookie is used by the client to preserve the user's login
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project that the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse>
      createSessionCookie(
    GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        ':createSessionCookie';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> queryAccounts(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        ':queryAccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsAccountsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads multiple accounts into the Google Cloud project.
  ///
  /// If there is a problem uploading one or more of the accounts, the rest will
  /// be uploaded, and a list of the errors will be returned. To use this method
  /// requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1UploadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1UploadAccountResponse> batchCreate(
    GoogleCloudIdentitytoolkitV1UploadAccountRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Batch deletes multiple accounts.
  ///
  /// For accounts that fail to be deleted, error info is contained in the
  /// response. The method ignores accounts that do not exist or are duplicated
  /// in the request. This method requires a Google OAuth 2.0 credential with
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse>
      batchDelete(
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Download account information for all accounts on the project in a
  /// paginated manner.
  ///
  /// To use this method requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)..
  /// Furthermore, additional permissions are needed to get password hash,
  /// password salt, and password version from accounts; otherwise these fields
  /// are redacted.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that the accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [delegatedProjectNumber] - null
  ///
  /// [maxResults] - The maximum number of results to return. Must be at least 1
  /// and no greater than 1000. By default, it is 20.
  ///
  /// [nextPageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the accounts belongs
  /// to. If not specified, accounts on the Identity Platform project are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DownloadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DownloadAccountResponse> batchGet(
    core.String targetProjectId, {
    core.String? delegatedProjectNumber,
    core.int? maxResults,
    core.String? nextPageToken,
    core.String? tenantId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (nextPageToken != null) 'nextPageToken': [nextPageToken],
      if (tenantId != null) 'tenantId': [tenantId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project which the account belongs to.
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the Google Cloud project that the account or
  /// the Identity Platform tenant specified by `tenant_id` belongs to. Should
  /// only be specified by authenticated requests bearing a Google OAuth 2.0
  /// credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> query(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to. To specify this field, it requires a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:sendOobCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID for the project that the account
  /// belongs to. Specifying this field requires Google OAuth 2.0 credential
  /// with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Requests from end users should pass an Identity Platform ID token instead.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request,
    core.String targetProjectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/accounts:update';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsAccountsResource get accounts_1 =>
      ProjectsTenantsAccountsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Signs up a new email and password user or anonymous user, or upgrades an
  /// anonymous user to email and password.
  ///
  /// For an admin request with a Google OAuth 2.0 credential with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control),
  /// creates a new anonymous, email and password, or phone number user. An
  /// [API key](https://cloud.google.com/docs/authentication/api-keys) is
  /// required in the request in order to identify the Google Cloud project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID of the project which the user should
  /// belong to. Specifying this field requires a Google OAuth 2.0 credential
  /// with the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant to create a user
  /// under. If not set, the user will be created under the default Identity
  /// Platform project.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SignUpResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SignUpResponse> accounts(
    GoogleCloudIdentitytoolkitV1SignUpRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a session cookie for the given Identity Platform ID token.
  ///
  /// The session cookie is used by the client to preserve the user's login
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project that the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant the account
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse>
      createSessionCookie(
    GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        ':createSessionCookie';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Uploads multiple accounts into the Google Cloud project.
  ///
  /// If there is a problem uploading one or more of the accounts, the rest will
  /// be uploaded, and a list of the errors will be returned. To use this method
  /// requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the account belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1UploadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1UploadAccountResponse> batchCreate(
    GoogleCloudIdentitytoolkitV1UploadAccountRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Batch deletes multiple accounts.
  ///
  /// For accounts that fail to be deleted, error info is contained in the
  /// response. The method ignores accounts that do not exist or are duplicated
  /// in the request. This method requires a Google OAuth 2.0 credential with
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - If the accounts belong to an Identity Platform tenant, the ID
  /// of the tenant. If the accounts belong to a default Identity Platform
  /// project, the field is not needed.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse>
      batchDelete(
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Download account information for all accounts on the project in a
  /// paginated manner.
  ///
  /// To use this method requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)..
  /// Furthermore, additional permissions are needed to get password hash,
  /// password salt, and password version from accounts; otherwise these fields
  /// are redacted.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - If `tenant_id` is specified, the ID of the Google
  /// Cloud project that the Identity Platform tenant belongs to. Otherwise, the
  /// ID of the Google Cloud project that the accounts belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the Identity Platform tenant the accounts belongs
  /// to. If not specified, accounts on the Identity Platform project are
  /// returned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [delegatedProjectNumber] - null
  ///
  /// [maxResults] - The maximum number of results to return. Must be at least 1
  /// and no greater than 1000. By default, it is 20.
  ///
  /// [nextPageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DownloadAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DownloadAccountResponse> batchGet(
    core.String targetProjectId,
    core.String tenantId, {
    core.String? delegatedProjectNumber,
    core.int? maxResults,
    core.String? nextPageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (nextPageToken != null) 'nextPageToken': [nextPageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user's account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project which the account belongs to.
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant that the account belongs to, if
  /// applicable. Only require to be specified for authenticated requests
  /// bearing a Google OAuth 2.0 credential that specify local_id of an account
  /// that belongs to an Identity Platform tenant.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1DeleteAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1DeleteAccountResponse> delete(
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets account information for all matched accounts.
  ///
  /// For an end user request, retrieves the account of the end user. For an
  /// admin request with Google OAuth 2.0 credential, retrieves one or multiple
  /// account(s) with matching criteria.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the Google Cloud project that the account or
  /// the Identity Platform tenant specified by `tenant_id` belongs to. Should
  /// only be specified by authenticated requests bearing a Google OAuth 2.0
  /// credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant that the account belongs to. Should only
  /// be specified by authenticated requests from a developer.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetAccountInfoResponse> lookup(
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up user accounts within a project or a tenant based on conditions in
  /// the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The ID of the project to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The ID of the tenant to which the result is scoped.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1QueryUserInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1QueryUserInfoResponse> query(
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends an out-of-band confirmation code for an account.
  ///
  /// Requests from a authenticated request can optionally return a link
  /// including the OOB code instead of sending it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The Project ID of the Identity Platform project which
  /// the account belongs to. To specify this field, it requires a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant the account
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetOobCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetOobCodeResponse> sendOobCode(
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:sendOobCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates account-related information for the specified user by setting
  /// specific fields or applying action codes.
  ///
  /// Requests from administrators and end users are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetProjectId] - The project ID for the project that the account
  /// belongs to. Specifying this field requires Google OAuth 2.0 credential
  /// with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Requests from end users should pass an Identity Platform ID token instead.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [tenantId] - The tenant ID of the Identity Platform tenant that the
  /// account belongs to. Requests from end users should pass an Identity
  /// Platform ID token rather than setting this field.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1SetAccountInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1SetAccountInfoResponse> update(
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest request,
    core.String targetProjectId,
    core.String tenantId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        core.Uri.encodeFull('$targetProjectId') +
        '/tenants/' +
        core.Uri.encodeFull('$tenantId') +
        '/accounts:update';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Gets a project's public Identity Toolkit configuration.
  ///
  /// (Legacy) This method also supports authenticated calls from a developer to
  /// retrieve non-public configuration.
  ///
  /// Request parameters:
  ///
  /// [androidPackageName] - Android package name to check against the real
  /// android package name. If this field is provided, and sha1_cert_hash is not
  /// provided, the action will throw an error if this does not match the real
  /// android package name.
  ///
  /// [clientId] - The RP OAuth client ID. If set, a check will be performed to
  /// ensure that the OAuth client is valid for the retrieved project and the
  /// request rejected with a client error if not valid.
  ///
  /// [delegatedProjectNumber] - Project Number of the delegated project
  /// request. This field should only be used as part of the Firebase V1
  /// migration.
  ///
  /// [firebaseAppId] - The Firebase app ID, for applications that use Firebase.
  /// This can be found in the Firebase console for your project. If set, a
  /// check will be performed to ensure that the app ID is valid for the
  /// retrieved project. If not valid, the request will be rejected with a
  /// client error.
  ///
  /// [iosBundleId] - iOS bundle id to check against the real ios bundle id. If
  /// this field is provided, the action will throw an error if this does not
  /// match the real iOS bundle id.
  ///
  /// [projectNumber] - Project number of the configuration to retrieve. This
  /// field is deprecated and should not be used by new integrations.
  ///
  /// [returnDynamicLink] - Whether dynamic link should be returned.
  ///
  /// [sha1Cert] - SHA-1 Android application cert hash. If set, a check will be
  /// performed to ensure that the cert hash is valid for the retrieved project
  /// and android_package_name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetProjectConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetProjectConfigResponse>
      getProjects({
    core.String? androidPackageName,
    core.String? clientId,
    core.String? delegatedProjectNumber,
    core.String? firebaseAppId,
    core.String? iosBundleId,
    core.String? projectNumber,
    core.bool? returnDynamicLink,
    core.String? sha1Cert,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (androidPackageName != null)
        'androidPackageName': [androidPackageName],
      if (clientId != null) 'clientId': [clientId],
      if (delegatedProjectNumber != null)
        'delegatedProjectNumber': [delegatedProjectNumber],
      if (firebaseAppId != null) 'firebaseAppId': [firebaseAppId],
      if (iosBundleId != null) 'iosBundleId': [iosBundleId],
      if (projectNumber != null) 'projectNumber': [projectNumber],
      if (returnDynamicLink != null)
        'returnDynamicLink': ['${returnDynamicLink}'],
      if (sha1Cert != null) 'sha1Cert': [sha1Cert],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetProjectConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves public keys of the legacy Identity Toolkit token signer to
  /// enable third parties to verify the legacy ID token.
  ///
  /// For now the X509 pem cert is the only format supported.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> getPublicKeys({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/publicKeys';

    await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets parameters needed for generating a reCAPTCHA challenge.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse>
      getRecaptchaParams({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/recaptchaParams';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the set of public keys of the session cookie JSON Web Token
  /// (JWT) signer that can be used to validate the session cookie created
  /// through createSessionCookie.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse>
      getSessionCookiePublicKeys({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/sessionCookiePublicKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The parameters for Argon2 hashing algorithm.
class GoogleCloudIdentitytoolkitV1Argon2Parameters {
  /// The additional associated data, if provided, is appended to the hash value
  /// to provide an additional layer of security.
  ///
  /// A base64-encoded string if specified via JSON.
  core.String? associatedData;
  core.List<core.int> get associatedDataAsBytes =>
      convert.base64.decode(associatedData!);

  set associatedDataAsBytes(core.List<core.int> bytes_) {
    associatedData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The desired hash length in bytes.
  ///
  /// Minimum is 4 and maximum is 1024.
  ///
  /// Required.
  core.int? hashLengthBytes;

  /// Must not be HASH_TYPE_UNSPECIFIED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : The hash type is not specified.
  /// - "ARGON2_D" : An Argon2 variant, Argon2d.
  /// - "ARGON2_ID" : An Argon2 variant, Argonid. Recommended.
  /// - "ARGON2_I" : An Argon2 variant, Argon2i.
  core.String? hashType;

  /// The number of iterations to perform.
  ///
  /// Minimum is 1, maximum is 16.
  ///
  /// Required.
  core.int? iterations;

  /// The memory cost in kibibytes.
  ///
  /// Maximum is 32768.
  ///
  /// Required.
  core.int? memoryCostKib;

  /// The degree of parallelism, also called threads or lanes.
  ///
  /// Minimum is 1, maximum is 16.
  ///
  /// Required.
  core.int? parallelism;

  /// The version of the Argon2 algorithm.
  ///
  /// This defaults to VERSION_13 if not specified.
  /// Possible string values are:
  /// - "VERSION_UNSPECIFIED" : The version is not specified.
  /// - "VERSION_10" : The previous version, 0x10.
  /// - "VERSION_13" : The current version, 0x13. The default value for version.
  core.String? version;

  GoogleCloudIdentitytoolkitV1Argon2Parameters({
    this.associatedData,
    this.hashLengthBytes,
    this.hashType,
    this.iterations,
    this.memoryCostKib,
    this.parallelism,
    this.version,
  });

  GoogleCloudIdentitytoolkitV1Argon2Parameters.fromJson(core.Map json_)
      : this(
          associatedData: json_['associatedData'] as core.String?,
          hashLengthBytes: json_['hashLengthBytes'] as core.int?,
          hashType: json_['hashType'] as core.String?,
          iterations: json_['iterations'] as core.int?,
          memoryCostKib: json_['memoryCostKib'] as core.int?,
          parallelism: json_['parallelism'] as core.int?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (associatedData != null) 'associatedData': associatedData!,
        if (hashLengthBytes != null) 'hashLengthBytes': hashLengthBytes!,
        if (hashType != null) 'hashType': hashType!,
        if (iterations != null) 'iterations': iterations!,
        if (memoryCostKib != null) 'memoryCostKib': memoryCostKib!,
        if (parallelism != null) 'parallelism': parallelism!,
        if (version != null) 'version': version!,
      };
}

/// The information required to auto-retrieve an SMS.
typedef GoogleCloudIdentitytoolkitV1AutoRetrievalInfo = $AutoRetrievalInfo;

/// Request message for BatchDeleteAccounts.
class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest {
  /// Whether to force deleting accounts that are not in disabled state.
  ///
  /// If false, only disabled accounts will be deleted, and accounts that are
  /// not disabled will be added to the `errors`.
  core.bool? force;

  /// List of user IDs to be deleted.
  ///
  /// Required.
  core.List<core.String>? localIds;

  /// If the accounts belong to an Identity Platform tenant, the ID of the
  /// tenant.
  ///
  /// If the accounts belong to a default Identity Platform project, the field
  /// is not needed.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest({
    this.force,
    this.localIds,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest.fromJson(
      core.Map json_)
      : this(
          force: json_['force'] as core.bool?,
          localIds: (json_['localIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (force != null) 'force': force!,
        if (localIds != null) 'localIds': localIds!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message to BatchDeleteAccounts.
class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse {
  /// Detailed error info for accounts that cannot be deleted.
  core.List<GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo>? errors;

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse({
    this.errors,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse.fromJson(
      core.Map json_)
      : this(
          errors: (json_['errors'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

/// Error info for account failed to be deleted.
class GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo {
  /// The index of the errored item in the original local_ids field.
  core.int? index;

  /// The corresponding user ID.
  core.String? localId;

  /// Detailed error message.
  core.String? message;

  GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo({
    this.index,
    this.localId,
    this.message,
  });

  GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo.fromJson(core.Map json_)
      : this(
          index: json_['index'] as core.int?,
          localId: json_['localId'] as core.String?,
          message: json_['message'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (localId != null) 'localId': localId!,
        if (message != null) 'message': message!,
      };
}

/// Request message for CreateAuthUri.
class GoogleCloudIdentitytoolkitV1CreateAuthUriRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? appId;

  /// Used for the Google provider.
  ///
  /// The type of the authentication flow to be used. If present, this should be
  /// `CODE_FLOW` to specify the authorization code flow. Otherwise, the default
  /// ID Token flow will be used.
  core.String? authFlowType;

  /// An opaque string used to maintain contextual information between the
  /// authentication request and the callback from the IdP.
  core.String? context;

  /// A valid URL for the IdP to redirect the user back to.
  ///
  /// The URL cannot contain fragments or the reserved `state` query parameter.
  core.String? continueUri;

  /// Additional customized query parameters to be added to the authorization
  /// URI.
  ///
  /// The following parameters are reserved and cannot be added: `client_id`,
  /// `response_type`, `scope`, `redirect_uri`, `state`. For the Microsoft
  /// provider, the Azure AD tenant to sign-in to can be specified in the
  /// `tenant` custom parameter.
  core.Map<core.String, core.String>? customParameter;

  /// Used for the Google provider.
  ///
  /// The G Suite hosted domain of the user in order to restrict sign-in to
  /// users at that domain.
  core.String? hostedDomain;

  /// The email identifier of the user account to fetch associated providers
  /// for.
  ///
  /// At least one of the fields `identifier` and `provider_id` must be set. The
  /// length of the email address should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email address should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  core.String? identifier;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? oauthConsumerKey;

  /// Additional space-delimited OAuth 2.0 scopes specifying the scope of the
  /// authentication request with the IdP.
  ///
  /// Used for OAuth 2.0 IdPs. For the Google provider, the authorization code
  /// flow will be used if this field is set.
  core.String? oauthScope;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? openidRealm;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? otaApp;

  /// The provider ID of the IdP for the user to sign in with.
  ///
  /// This should be a provider ID enabled for sign-in, which is either from the
  /// list of
  /// [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list),
  /// or of the format `oidc.*` or `saml.*`. Some examples are `google.com`,
  /// `facebook.com`, `oidc.testapp`, and `saml.testapp`. At least one of the
  /// fields `identifier` and `provider_id` must be set.
  core.String? providerId;

  /// A session ID that can be verified against in SignInWithIdp to prevent
  /// session fixation attacks.
  ///
  /// If absent, a random string will be generated and returned as the session
  /// ID.
  core.String? sessionId;

  /// The ID of the Identity Platform tenant to create an authorization URI or
  /// lookup an email identifier for.
  ///
  /// If not set, the operation will be performed in the default Identity
  /// Platform instance in the project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1CreateAuthUriRequest({
    this.appId,
    this.authFlowType,
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
  });

  GoogleCloudIdentitytoolkitV1CreateAuthUriRequest.fromJson(core.Map json_)
      : this(
          appId: json_['appId'] as core.String?,
          authFlowType: json_['authFlowType'] as core.String?,
          context: json_['context'] as core.String?,
          continueUri: json_['continueUri'] as core.String?,
          customParameter:
              (json_['customParameter'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          hostedDomain: json_['hostedDomain'] as core.String?,
          identifier: json_['identifier'] as core.String?,
          oauthConsumerKey: json_['oauthConsumerKey'] as core.String?,
          oauthScope: json_['oauthScope'] as core.String?,
          openidRealm: json_['openidRealm'] as core.String?,
          otaApp: json_['otaApp'] as core.String?,
          providerId: json_['providerId'] as core.String?,
          sessionId: json_['sessionId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (authFlowType != null) 'authFlowType': authFlowType!,
        if (context != null) 'context': context!,
        if (continueUri != null) 'continueUri': continueUri!,
        if (customParameter != null) 'customParameter': customParameter!,
        if (hostedDomain != null) 'hostedDomain': hostedDomain!,
        if (identifier != null) 'identifier': identifier!,
        if (oauthConsumerKey != null) 'oauthConsumerKey': oauthConsumerKey!,
        if (oauthScope != null) 'oauthScope': oauthScope!,
        if (openidRealm != null) 'openidRealm': openidRealm!,
        if (otaApp != null) 'otaApp': otaApp!,
        if (providerId != null) 'providerId': providerId!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for CreateAuthUri.
class GoogleCloudIdentitytoolkitV1CreateAuthUriResponse {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? allProviders;

  /// The authorization URI for the requested provider.
  ///
  /// Present only when a provider ID is set in the request.
  core.String? authUri;

  /// Whether a CAPTCHA is needed because there have been too many failed login
  /// attempts by the user.
  ///
  /// Present only when a registered email identifier is set in the request.
  core.bool? captchaRequired;

  /// Whether the user has previously signed in with the provider ID in the
  /// request.
  ///
  /// Present only when a registered email identifier is set in the request.
  core.bool? forExistingProvider;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The provider ID from the request, if provided.
  core.String? providerId;

  /// Whether the email identifier represents an existing account.
  ///
  /// Present only when an email identifier is set in the request.
  core.bool? registered;

  /// The session ID from the request, or a random string generated by
  /// CreateAuthUri if absent.
  ///
  /// It is used to prevent session fixation attacks.
  core.String? sessionId;

  /// The list of sign-in methods that the user has previously used.
  ///
  /// Each element is one of `password`, `emailLink`, or the provider ID of an
  /// IdP. Present only when a registered email identifier is set in the
  /// request. If
  /// [email enumeration protection](https://cloud.google.com/identity-platform/docs/admin/email-enumeration-protection)
  /// is enabled, this method returns an empty list.
  core.List<core.String>? signinMethods;

  GoogleCloudIdentitytoolkitV1CreateAuthUriResponse({
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

  GoogleCloudIdentitytoolkitV1CreateAuthUriResponse.fromJson(core.Map json_)
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (allProviders != null) 'allProviders': allProviders!,
        if (authUri != null) 'authUri': authUri!,
        if (captchaRequired != null) 'captchaRequired': captchaRequired!,
        if (forExistingProvider != null)
          'forExistingProvider': forExistingProvider!,
        if (kind != null) 'kind': kind!,
        if (providerId != null) 'providerId': providerId!,
        if (registered != null) 'registered': registered!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (signinMethods != null) 'signinMethods': signinMethods!,
      };
}

/// Request message for CreateSessionCookie.
class GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest {
  /// A valid Identity Platform ID token.
  ///
  /// Required.
  core.String? idToken;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// The number of seconds until the session cookie expires.
  ///
  /// Specify a duration in seconds, between five minutes and fourteen days,
  /// inclusively.
  core.String? validDuration;

  GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest({
    this.idToken,
    this.tenantId,
    this.validDuration,
  });

  GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest.fromJson(
      core.Map json_)
      : this(
          idToken: json_['idToken'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          validDuration: json_['validDuration'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (validDuration != null) 'validDuration': validDuration!,
      };
}

/// Response message for CreateSessionCookie.
class GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse {
  /// The session cookie that has been created from the Identity Platform ID
  /// token specified in the request.
  ///
  /// It is in the form of a JSON Web Token (JWT). Always present.
  core.String? sessionCookie;

  GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse({
    this.sessionCookie,
  });

  GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse.fromJson(
      core.Map json_)
      : this(
          sessionCookie: json_['sessionCookie'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionCookie != null) 'sessionCookie': sessionCookie!,
      };
}

/// Request message for DeleteAccount.
class GoogleCloudIdentitytoolkitV1DeleteAccountRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// The Identity Platform ID token of the account to delete.
  ///
  /// Require to be specified for requests from end users that lack Google OAuth
  /// 2.0 credential. Authenticated requests bearing a Google OAuth2 credential
  /// with proper permissions may pass local_id to specify the account to delete
  /// alternatively.
  core.String? idToken;

  /// The ID of user account to delete.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Requests from users lacking the credential should pass an ID token
  /// instead.
  core.String? localId;

  /// The ID of the project which the account belongs to.
  ///
  /// Should only be specified in authenticated requests that specify local_id
  /// of an account.
  core.String? targetProjectId;

  /// The ID of the tenant that the account belongs to, if applicable.
  ///
  /// Only require to be specified for authenticated requests bearing a Google
  /// OAuth 2.0 credential that specify local_id of an account that belongs to
  /// an Identity Platform tenant.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1DeleteAccountRequest({
    this.delegatedProjectNumber,
    this.idToken,
    this.localId,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1DeleteAccountRequest.fromJson(core.Map json_)
      : this(
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          localId: json_['localId'] as core.String?,
          targetProjectId: json_['targetProjectId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (idToken != null) 'idToken': idToken!,
        if (localId != null) 'localId': localId!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for DeleteAccount.
class GoogleCloudIdentitytoolkitV1DeleteAccountResponse {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  GoogleCloudIdentitytoolkitV1DeleteAccountResponse({
    this.kind,
  });

  GoogleCloudIdentitytoolkitV1DeleteAccountResponse.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

/// Response message for DownloadAccount.
class GoogleCloudIdentitytoolkitV1DownloadAccountResponse {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// If there are more accounts to be downloaded, a token that can be passed
  /// back to DownloadAccount to get more accounts.
  ///
  /// Otherwise, this is blank.
  core.String? nextPageToken;

  /// All accounts belonging to the project/tenant limited by max_results in the
  /// request.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1DownloadAccountResponse({
    this.kind,
    this.nextPageToken,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1DownloadAccountResponse.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          nextPageToken: json_['nextPageToken'] as core.String?,
          users: (json_['users'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (users != null) 'users': users!,
      };
}

/// Information about email MFA.
class GoogleCloudIdentitytoolkitV1EmailInfo {
  /// Email address that a MFA verification should be sent to.
  core.String? emailAddress;

  GoogleCloudIdentitytoolkitV1EmailInfo({
    this.emailAddress,
  });

  GoogleCloudIdentitytoolkitV1EmailInfo.fromJson(core.Map json_)
      : this(
          emailAddress: json_['emailAddress'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
      };
}

/// Email template
class GoogleCloudIdentitytoolkitV1EmailTemplate {
  /// Email body
  core.String? body;

  /// Whether the body or subject of the email is customized.
  core.bool? customized;

  /// Whether the template is disabled.
  ///
  /// If true, a default template will be used.
  core.bool? disabled;

  /// Email body format
  /// Possible string values are:
  /// - "EMAIL_BODY_FORMAT_UNSPECIFIED" : Default value. Do not use.
  /// - "PLAINTEXT" : Email body is in plain text format.
  /// - "HTML" : Email body is in HTML format.
  core.String? format;

  /// From address of the email
  core.String? from;

  /// From display name
  core.String? fromDisplayName;

  /// Local part of From address
  core.String? fromLocalPart;

  /// Value is in III language code format (e.g. "zh-CN", "es").
  ///
  /// Both '-' and '_' separators are accepted.
  core.String? locale;

  /// Reply-to address
  core.String? replyTo;

  /// Subject of the email
  core.String? subject;

  GoogleCloudIdentitytoolkitV1EmailTemplate({
    this.body,
    this.customized,
    this.disabled,
    this.format,
    this.from,
    this.fromDisplayName,
    this.fromLocalPart,
    this.locale,
    this.replyTo,
    this.subject,
  });

  GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          customized: json_['customized'] as core.bool?,
          disabled: json_['disabled'] as core.bool?,
          format: json_['format'] as core.String?,
          from: json_['from'] as core.String?,
          fromDisplayName: json_['fromDisplayName'] as core.String?,
          fromLocalPart: json_['fromLocalPart'] as core.String?,
          locale: json_['locale'] as core.String?,
          replyTo: json_['replyTo'] as core.String?,
          subject: json_['subject'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (customized != null) 'customized': customized!,
        if (disabled != null) 'disabled': disabled!,
        if (format != null) 'format': format!,
        if (from != null) 'from': from!,
        if (fromDisplayName != null) 'fromDisplayName': fromDisplayName!,
        if (fromLocalPart != null) 'fromLocalPart': fromLocalPart!,
        if (locale != null) 'locale': locale!,
        if (replyTo != null) 'replyTo': replyTo!,
        if (subject != null) 'subject': subject!,
      };
}

/// Error information explaining why an account cannot be uploaded.
///
/// batch upload.
class GoogleCloudIdentitytoolkitV1ErrorInfo {
  /// The index of the item, range is \[0, request.size - 1\]
  core.int? index;

  /// Detailed error message
  core.String? message;

  GoogleCloudIdentitytoolkitV1ErrorInfo({
    this.index,
    this.message,
  });

  GoogleCloudIdentitytoolkitV1ErrorInfo.fromJson(core.Map json_)
      : this(
          index: json_['index'] as core.int?,
          message: json_['message'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (message != null) 'message': message!,
      };
}

/// Federated user identifier at an Identity Provider.
class GoogleCloudIdentitytoolkitV1FederatedUserIdentifier {
  /// The ID of supported identity providers.
  ///
  /// This should be a provider ID enabled for sign-in, which is either from the
  /// list of
  /// [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list),
  /// or of the format `oidc.*` or `saml.*`. Some examples are `google.com`,
  /// `facebook.com`, `oidc.testapp`, and `saml.testapp`.
  core.String? providerId;

  /// The user ID of the account at the third-party Identity Provider specified
  /// by `provider_id`.
  core.String? rawId;

  GoogleCloudIdentitytoolkitV1FederatedUserIdentifier({
    this.providerId,
    this.rawId,
  });

  GoogleCloudIdentitytoolkitV1FederatedUserIdentifier.fromJson(core.Map json_)
      : this(
          providerId: json_['providerId'] as core.String?,
          rawId: json_['rawId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (providerId != null) 'providerId': providerId!,
        if (rawId != null) 'rawId': rawId!,
      };
}

/// Request message for GetAccountInfo.
class GoogleCloudIdentitytoolkitV1GetAccountInfoRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// The email address of one or more accounts to fetch.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should
  /// only be specified by authenticated requests from a developer.
  core.List<core.String>? email;

  /// The federated user identifier of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.List<GoogleCloudIdentitytoolkitV1FederatedUserIdentifier>?
      federatedUserId;

  /// The Identity Platform ID token of the account to fetch.
  ///
  /// Require to be specified for requests from end users.
  core.String? idToken;

  /// The initial email of one or more accounts to fetch.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should
  /// only be specified by authenticated requests from a developer.
  core.List<core.String>? initialEmail;

  /// The ID of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.List<core.String>? localId;

  /// The phone number of one or more accounts to fetch.
  ///
  /// Should only be specified by authenticated requests from a developer and
  /// should be in E.164 format, for example, +15555555555.
  core.List<core.String>? phoneNumber;

  /// The ID of the Google Cloud project that the account or the Identity
  /// Platform tenant specified by `tenant_id` belongs to.
  ///
  /// Should only be specified by authenticated requests bearing a Google OAuth
  /// 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? targetProjectId;

  /// The ID of the tenant that the account belongs to.
  ///
  /// Should only be specified by authenticated requests from a developer.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1GetAccountInfoRequest({
    this.delegatedProjectNumber,
    this.email,
    this.federatedUserId,
    this.idToken,
    this.initialEmail,
    this.localId,
    this.phoneNumber,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1GetAccountInfoRequest.fromJson(core.Map json_)
      : this(
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          email: (json_['email'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          federatedUserId: (json_['federatedUserId'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1FederatedUserIdentifier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          idToken: json_['idToken'] as core.String?,
          initialEmail: (json_['initialEmail'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          localId: (json_['localId'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          phoneNumber: (json_['phoneNumber'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          targetProjectId: json_['targetProjectId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (email != null) 'email': email!,
        if (federatedUserId != null) 'federatedUserId': federatedUserId!,
        if (idToken != null) 'idToken': idToken!,
        if (initialEmail != null) 'initialEmail': initialEmail!,
        if (localId != null) 'localId': localId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for GetAccountInfo.
class GoogleCloudIdentitytoolkitV1GetAccountInfoResponse {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The information of specific user account(s) matching the parameters in the
  /// request.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1GetAccountInfoResponse({
    this.kind,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1GetAccountInfoResponse.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          users: (json_['users'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (users != null) 'users': users!,
      };
}

/// Request message for GetOobCode.
class GoogleCloudIdentitytoolkitV1GetOobCodeRequest {
  /// If an associated android app can handle the OOB code, whether or not to
  /// install the android app on the device where the link is opened if the app
  /// is not already installed.
  core.bool? androidInstallApp;

  /// If an associated android app can handle the OOB code, the minimum version
  /// of the app.
  ///
  /// If the version on the device is lower than this version then the user is
  /// taken to Google Play Store to upgrade the app.
  core.String? androidMinimumVersion;

  /// If an associated android app can handle the OOB code, the Android package
  /// name of the android app that will handle the callback when this OOB code
  /// is used.
  ///
  /// This will allow the correct app to open if it is already installed, or
  /// allow Google Play Store to open to the correct app if it is not yet
  /// installed.
  core.String? androidPackageName;

  /// When set to true, the OOB code link will be be sent as a Universal Link or
  /// an Android App Link and will be opened by the corresponding app if
  /// installed.
  ///
  /// If not set, or set to false, the OOB code will be sent to the web widget
  /// first and then on continue will redirect to the app if installed.
  core.bool? canHandleCodeInApp;

  /// For a PASSWORD_RESET request, a reCaptcha response is required when the
  /// system detects possible abuse activity.
  ///
  /// In those cases, this is the response from the reCaptcha challenge used to
  /// verify the caller.
  core.String? captchaResp;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? challenge;

  /// The client type: web, Android or iOS.
  ///
  /// Required when reCAPTCHA Enterprise protection is enabled.
  /// Possible string values are:
  /// - "CLIENT_TYPE_UNSPECIFIED" : Client type is not specified.
  /// - "CLIENT_TYPE_WEB" : Client type is web.
  /// - "CLIENT_TYPE_ANDROID" : Client type is android.
  /// - "CLIENT_TYPE_IOS" : Client type is ios.
  core.String? clientType;

  /// The Url to continue after user clicks the link sent in email.
  ///
  /// This is the url that will allow the web widget to handle the OOB code.
  core.String? continueUrl;

  /// In order to ensure that the url used can be easily opened up in iOS or
  /// android, we create a
  /// [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links).
  ///
  /// Most Identity Platform projects will only have one Dynamic Link domain
  /// enabled, and can leave this field blank. This field contains a specified
  /// Dynamic Link domain for projects that have multiple enabled.
  core.String? dynamicLinkDomain;

  /// The account's email address to send the OOB code to, and generally the
  /// email address of the account that needs to be updated.
  ///
  /// Required for PASSWORD_RESET, EMAIL_SIGNIN, and VERIFY_EMAIL. Only required
  /// for VERIFY_AND_CHANGE_EMAIL requests when return_oob_link is set to true.
  /// In this case, it is the original email of the user.
  core.String? email;

  /// If an associated iOS app can handle the OOB code, the App Store id of this
  /// app.
  ///
  /// This will allow App Store to open to the correct app if the app is not yet
  /// installed.
  core.String? iOSAppStoreId;

  /// If an associated iOS app can handle the OOB code, the iOS bundle id of
  /// this app.
  ///
  /// This will allow the correct app to open if it is already installed.
  core.String? iOSBundleId;

  /// An ID token for the account.
  ///
  /// It is required for VERIFY_AND_CHANGE_EMAIL and VERIFY_EMAIL requests
  /// unless return_oob_link is set to true.
  core.String? idToken;

  /// The email address the account is being updated to.
  ///
  /// Required only for VERIFY_AND_CHANGE_EMAIL requests.
  core.String? newEmail;

  /// The reCAPTCHA version of the reCAPTCHA token in the captcha_response.
  /// Possible string values are:
  /// - "RECAPTCHA_VERSION_UNSPECIFIED" : The reCAPTCHA version is not
  /// specified.
  /// - "RECAPTCHA_ENTERPRISE" : The reCAPTCHA enterprise.
  core.String? recaptchaVersion;

  /// The type of out-of-band (OOB) code to send.
  ///
  /// Depending on this value, other fields in this request will be required
  /// and/or have different meanings. There are 4 different OOB codes that can
  /// be sent: * PASSWORD_RESET * EMAIL_SIGNIN * VERIFY_EMAIL *
  /// VERIFY_AND_CHANGE_EMAIL
  ///
  /// Required.
  /// Possible string values are:
  /// - "OOB_REQ_TYPE_UNSPECIFIED" : Oob code type is not specified.
  /// - "PASSWORD_RESET" : reset password
  /// - "OLD_EMAIL_AGREE"
  /// - "NEW_EMAIL_ACCEPT"
  /// - "VERIFY_EMAIL" : verify the account's email address by sending an email
  /// - "RECOVER_EMAIL"
  /// - "EMAIL_SIGNIN" : sign in with email only
  /// - "VERIFY_AND_CHANGE_EMAIL" : This flow sends an email to the specified
  /// new email, and when applied by clicking the link in the email changes the
  /// account's email to the new email. Used when the account must have verified
  /// email at all times, such as MFA accounts.
  /// - "REVERT_SECOND_FACTOR_ADDITION"
  core.String? requestType;

  /// Whether the confirmation link containing the OOB code should be returned
  /// in the response (no email is sent).
  ///
  /// Used when a developer wants to construct the email template and send it on
  /// their own. By default this is false; to specify this field, and to set it
  /// to true, it requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control)
  core.bool? returnOobLink;

  /// The Project ID of the Identity Platform project which the account belongs
  /// to.
  ///
  /// To specify this field, it requires a Google OAuth 2.0 credential with
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? targetProjectId;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// The IP address of the caller.
  ///
  /// Required only for PASSWORD_RESET requests.
  core.String? userIp;

  GoogleCloudIdentitytoolkitV1GetOobCodeRequest({
    this.androidInstallApp,
    this.androidMinimumVersion,
    this.androidPackageName,
    this.canHandleCodeInApp,
    this.captchaResp,
    this.challenge,
    this.clientType,
    this.continueUrl,
    this.dynamicLinkDomain,
    this.email,
    this.iOSAppStoreId,
    this.iOSBundleId,
    this.idToken,
    this.newEmail,
    this.recaptchaVersion,
    this.requestType,
    this.returnOobLink,
    this.targetProjectId,
    this.tenantId,
    this.userIp,
  });

  GoogleCloudIdentitytoolkitV1GetOobCodeRequest.fromJson(core.Map json_)
      : this(
          androidInstallApp: json_['androidInstallApp'] as core.bool?,
          androidMinimumVersion: json_['androidMinimumVersion'] as core.String?,
          androidPackageName: json_['androidPackageName'] as core.String?,
          canHandleCodeInApp: json_['canHandleCodeInApp'] as core.bool?,
          captchaResp: json_['captchaResp'] as core.String?,
          challenge: json_['challenge'] as core.String?,
          clientType: json_['clientType'] as core.String?,
          continueUrl: json_['continueUrl'] as core.String?,
          dynamicLinkDomain: json_['dynamicLinkDomain'] as core.String?,
          email: json_['email'] as core.String?,
          iOSAppStoreId: json_['iOSAppStoreId'] as core.String?,
          iOSBundleId: json_['iOSBundleId'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          newEmail: json_['newEmail'] as core.String?,
          recaptchaVersion: json_['recaptchaVersion'] as core.String?,
          requestType: json_['requestType'] as core.String?,
          returnOobLink: json_['returnOobLink'] as core.bool?,
          targetProjectId: json_['targetProjectId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          userIp: json_['userIp'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidInstallApp != null) 'androidInstallApp': androidInstallApp!,
        if (androidMinimumVersion != null)
          'androidMinimumVersion': androidMinimumVersion!,
        if (androidPackageName != null)
          'androidPackageName': androidPackageName!,
        if (canHandleCodeInApp != null)
          'canHandleCodeInApp': canHandleCodeInApp!,
        if (captchaResp != null) 'captchaResp': captchaResp!,
        if (challenge != null) 'challenge': challenge!,
        if (clientType != null) 'clientType': clientType!,
        if (continueUrl != null) 'continueUrl': continueUrl!,
        if (dynamicLinkDomain != null) 'dynamicLinkDomain': dynamicLinkDomain!,
        if (email != null) 'email': email!,
        if (iOSAppStoreId != null) 'iOSAppStoreId': iOSAppStoreId!,
        if (iOSBundleId != null) 'iOSBundleId': iOSBundleId!,
        if (idToken != null) 'idToken': idToken!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (recaptchaVersion != null) 'recaptchaVersion': recaptchaVersion!,
        if (requestType != null) 'requestType': requestType!,
        if (returnOobLink != null) 'returnOobLink': returnOobLink!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (userIp != null) 'userIp': userIp!,
      };
}

/// Response message for GetOobCode.
class GoogleCloudIdentitytoolkitV1GetOobCodeResponse {
  /// If return_oob_link is false in the request, the email address the
  /// verification was sent to.
  core.String? email;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// If return_oob_link is true in the request, the OOB code to send.
  core.String? oobCode;

  /// If return_oob_link is true in the request, the OOB link to be sent to the
  /// user.
  ///
  /// This returns the constructed link including
  /// [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links)
  /// related parameters.
  core.String? oobLink;

  GoogleCloudIdentitytoolkitV1GetOobCodeResponse({
    this.email,
    this.kind,
    this.oobCode,
    this.oobLink,
  });

  GoogleCloudIdentitytoolkitV1GetOobCodeResponse.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          kind: json_['kind'] as core.String?,
          oobCode: json_['oobCode'] as core.String?,
          oobLink: json_['oobLink'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (oobLink != null) 'oobLink': oobLink!,
      };
}

/// Response message for GetProjectConfig.
class GoogleCloudIdentitytoolkitV1GetProjectConfigResponse {
  /// Whether to allow password account sign up.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? allowPasswordUser;

  /// Google Cloud API key.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.String? apiKey;

  /// Authorized domains for widget redirect.
  core.List<core.String>? authorizedDomains;

  /// Email template for change email.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? changeEmailTemplate;

  /// The Firebase Dynamic Links domain used to construct links for redirects to
  /// native apps.
  core.String? dynamicLinksDomain;

  /// Whether anonymous user is enabled.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? enableAnonymousUser;

  /// OAuth2 provider config.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.List<GoogleCloudIdentitytoolkitV1IdpConfig>? idpConfig;

  /// Reset password email template for legacy Firebase V1 app.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? legacyResetPasswordTemplate;

  /// The project id of the retrieved configuration.
  core.String? projectId;

  /// Email template for reset password.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? resetPasswordTemplate;

  /// Email template for reverting second factor additions.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? revertSecondFactorAdditionTemplate;

  /// Whether to use email sending.
  ///
  /// This field is only returned for authenticated calls from a developer.
  core.bool? useEmailSending;

  /// Email template for verify email.
  ///
  /// This field is only returned for authenticated calls from a developer.
  GoogleCloudIdentitytoolkitV1EmailTemplate? verifyEmailTemplate;

  GoogleCloudIdentitytoolkitV1GetProjectConfigResponse({
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
    this.revertSecondFactorAdditionTemplate,
    this.useEmailSending,
    this.verifyEmailTemplate,
  });

  GoogleCloudIdentitytoolkitV1GetProjectConfigResponse.fromJson(core.Map json_)
      : this(
          allowPasswordUser: json_['allowPasswordUser'] as core.bool?,
          apiKey: json_['apiKey'] as core.String?,
          authorizedDomains: (json_['authorizedDomains'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          changeEmailTemplate: json_.containsKey('changeEmailTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  json_['changeEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dynamicLinksDomain: json_['dynamicLinksDomain'] as core.String?,
          enableAnonymousUser: json_['enableAnonymousUser'] as core.bool?,
          idpConfig: (json_['idpConfig'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1IdpConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          legacyResetPasswordTemplate:
              json_.containsKey('legacyResetPasswordTemplate')
                  ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                      json_['legacyResetPasswordTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          projectId: json_['projectId'] as core.String?,
          resetPasswordTemplate: json_.containsKey('resetPasswordTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  json_['resetPasswordTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revertSecondFactorAdditionTemplate:
              json_.containsKey('revertSecondFactorAdditionTemplate')
                  ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                      json_['revertSecondFactorAdditionTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          useEmailSending: json_['useEmailSending'] as core.bool?,
          verifyEmailTemplate: json_.containsKey('verifyEmailTemplate')
              ? GoogleCloudIdentitytoolkitV1EmailTemplate.fromJson(
                  json_['verifyEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPasswordUser != null) 'allowPasswordUser': allowPasswordUser!,
        if (apiKey != null) 'apiKey': apiKey!,
        if (authorizedDomains != null) 'authorizedDomains': authorizedDomains!,
        if (changeEmailTemplate != null)
          'changeEmailTemplate': changeEmailTemplate!,
        if (dynamicLinksDomain != null)
          'dynamicLinksDomain': dynamicLinksDomain!,
        if (enableAnonymousUser != null)
          'enableAnonymousUser': enableAnonymousUser!,
        if (idpConfig != null) 'idpConfig': idpConfig!,
        if (legacyResetPasswordTemplate != null)
          'legacyResetPasswordTemplate': legacyResetPasswordTemplate!,
        if (projectId != null) 'projectId': projectId!,
        if (resetPasswordTemplate != null)
          'resetPasswordTemplate': resetPasswordTemplate!,
        if (revertSecondFactorAdditionTemplate != null)
          'revertSecondFactorAdditionTemplate':
              revertSecondFactorAdditionTemplate!,
        if (useEmailSending != null) 'useEmailSending': useEmailSending!,
        if (verifyEmailTemplate != null)
          'verifyEmailTemplate': verifyEmailTemplate!,
      };
}

/// Response message for GetRecaptchaParam.
class GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The producer project number used to generate PIA tokens
  core.String? producerProjectNumber;

  /// The reCAPTCHA v2 site key used to invoke the reCAPTCHA service.
  ///
  /// Always present.
  core.String? recaptchaSiteKey;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? recaptchaStoken;

  GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse({
    this.kind,
    this.producerProjectNumber,
    this.recaptchaSiteKey,
    this.recaptchaStoken,
  });

  GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          producerProjectNumber: json_['producerProjectNumber'] as core.String?,
          recaptchaSiteKey: json_['recaptchaSiteKey'] as core.String?,
          recaptchaStoken: json_['recaptchaStoken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (producerProjectNumber != null)
          'producerProjectNumber': producerProjectNumber!,
        if (recaptchaSiteKey != null) 'recaptchaSiteKey': recaptchaSiteKey!,
        if (recaptchaStoken != null) 'recaptchaStoken': recaptchaStoken!,
      };
}

/// Response message for GetSessionCookiePublicKeys.
class GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse {
  /// Public keys of the session cookie signer, formatted as \[JSON Web Keys
  /// (JWK)\](https://tools.ietf.org/html/rfc7517).
  core.List<GoogleCloudIdentitytoolkitV1OpenIdConnectKey>? keys;

  GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse({
    this.keys,
  });

  GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse.fromJson(
      core.Map json_)
      : this(
          keys: (json_['keys'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1OpenIdConnectKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// Config of an identity provider.
class GoogleCloudIdentitytoolkitV1IdpConfig {
  /// OAuth2 client ID.
  core.String? clientId;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// Percent of users who will be prompted/redirected federated login for this
  /// IdP
  core.int? experimentPercent;

  /// Name of the identity provider.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED"
  /// - "MSLIVE" : Microsoft Live as identity provider.
  /// - "GOOGLE" : Google as identity provider.
  /// - "FACEBOOK" : Facebook as identity provider.
  /// - "PAYPAL" : PayPal as identity provider.
  /// - "TWITTER" : Twitter as identity provider.
  /// - "YAHOO" : Yahoo as identity provider.
  /// - "AOL" : AOL as identity provider.
  /// - "GITHUB" : GitHub as identity provider.
  /// - "GOOGLE_PLAY_GAMES" : Google Play Games as identity provider.
  /// - "LINKEDIN" : LinkedIn as identity provider.
  /// - "IOS_GAME_CENTER" : iOS Game Center as identity provider.
  core.String? provider;

  /// OAuth2 client secret.
  core.String? secret;

  /// Whitelisted client IDs for audience check.
  core.List<core.String>? whitelistedAudiences;

  GoogleCloudIdentitytoolkitV1IdpConfig({
    this.clientId,
    this.enabled,
    this.experimentPercent,
    this.provider,
    this.secret,
    this.whitelistedAudiences,
  });

  GoogleCloudIdentitytoolkitV1IdpConfig.fromJson(core.Map json_)
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (enabled != null) 'enabled': enabled!,
        if (experimentPercent != null) 'experimentPercent': experimentPercent!,
        if (provider != null) 'provider': provider!,
        if (secret != null) 'secret': secret!,
        if (whitelistedAudiences != null)
          'whitelistedAudiences': whitelistedAudiences!,
      };
}

/// Request message for IssueSamlResponse.
class GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest {
  /// The Identity Platform ID token.
  ///
  /// It will be verified and then converted to a new SAMLResponse.
  core.String? idToken;

  /// Relying Party identifier, which is the audience of issued SAMLResponse.
  core.String? rpId;

  /// SAML app entity id specified in Google Admin Console for each app.
  ///
  /// If developers want to redirect to a third-party app rather than a G Suite
  /// app, they'll probably they need this. When it's used, we'll return a
  /// RelayState. This includes a SAMLRequest, which can be used to trigger a
  /// SP-initiated SAML flow to redirect to the real app.
  core.String? samlAppEntityId;

  GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest({
    this.idToken,
    this.rpId,
    this.samlAppEntityId,
  });

  GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest.fromJson(core.Map json_)
      : this(
          idToken: json_['idToken'] as core.String?,
          rpId: json_['rpId'] as core.String?,
          samlAppEntityId: json_['samlAppEntityId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (rpId != null) 'rpId': rpId!,
        if (samlAppEntityId != null) 'samlAppEntityId': samlAppEntityId!,
      };
}

/// Response for IssueSamlResponse request.
class GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse {
  /// The ACS endpoint which consumes the returned SAMLResponse.
  core.String? acsEndpoint;

  /// Email of the user.
  core.String? email;

  /// First name of the user.
  core.String? firstName;

  /// Whether the logged in user was created by this request.
  core.bool? isNewUser;

  /// Last name of the user.
  core.String? lastName;

  /// Generated RelayState.
  core.String? relayState;

  /// Signed SAMLResponse created for the Relying Party.
  core.String? samlResponse;

  GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse({
    this.acsEndpoint,
    this.email,
    this.firstName,
    this.isNewUser,
    this.lastName,
    this.relayState,
    this.samlResponse,
  });

  GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse.fromJson(core.Map json_)
      : this(
          acsEndpoint: json_['acsEndpoint'] as core.String?,
          email: json_['email'] as core.String?,
          firstName: json_['firstName'] as core.String?,
          isNewUser: json_['isNewUser'] as core.bool?,
          lastName: json_['lastName'] as core.String?,
          relayState: json_['relayState'] as core.String?,
          samlResponse: json_['samlResponse'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acsEndpoint != null) 'acsEndpoint': acsEndpoint!,
        if (email != null) 'email': email!,
        if (firstName != null) 'firstName': firstName!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (lastName != null) 'lastName': lastName!,
        if (relayState != null) 'relayState': relayState!,
        if (samlResponse != null) 'samlResponse': samlResponse!,
      };
}

/// Information on which multi-factor authentication (MFA) providers are enabled
/// for an account.
class GoogleCloudIdentitytoolkitV1MfaEnrollment {
  /// Display name for this mfa option e.g. "corp cell phone".
  core.String? displayName;

  /// Contains information specific to email MFA.
  GoogleCloudIdentitytoolkitV1EmailInfo? emailInfo;

  /// Timestamp when the account enrolled this second factor.
  core.String? enrolledAt;

  /// ID of this MFA option.
  core.String? mfaEnrollmentId;

  /// Normally this will show the phone number associated with this enrollment.
  ///
  /// In some situations, such as after a first factor sign in, it will only
  /// show the obfuscated version of the associated phone number.
  core.String? phoneInfo;

  /// Contains information specific to TOTP MFA.
  GoogleCloudIdentitytoolkitV1TotpInfo? totpInfo;

  /// Unobfuscated phone_info.
  ///
  /// Output only.
  core.String? unobfuscatedPhoneInfo;

  GoogleCloudIdentitytoolkitV1MfaEnrollment({
    this.displayName,
    this.emailInfo,
    this.enrolledAt,
    this.mfaEnrollmentId,
    this.phoneInfo,
    this.totpInfo,
    this.unobfuscatedPhoneInfo,
  });

  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          emailInfo: json_.containsKey('emailInfo')
              ? GoogleCloudIdentitytoolkitV1EmailInfo.fromJson(
                  json_['emailInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          enrolledAt: json_['enrolledAt'] as core.String?,
          mfaEnrollmentId: json_['mfaEnrollmentId'] as core.String?,
          phoneInfo: json_['phoneInfo'] as core.String?,
          totpInfo: json_.containsKey('totpInfo')
              ? GoogleCloudIdentitytoolkitV1TotpInfo.fromJson(
                  json_['totpInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          unobfuscatedPhoneInfo: json_['unobfuscatedPhoneInfo'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (emailInfo != null) 'emailInfo': emailInfo!,
        if (enrolledAt != null) 'enrolledAt': enrolledAt!,
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (phoneInfo != null) 'phoneInfo': phoneInfo!,
        if (totpInfo != null) 'totpInfo': totpInfo!,
        if (unobfuscatedPhoneInfo != null)
          'unobfuscatedPhoneInfo': unobfuscatedPhoneInfo!,
      };
}

class GoogleCloudIdentitytoolkitV1MfaFactor {
  /// Display name for this mfa option e.g. "corp cell phone".
  core.String? displayName;

  /// Phone number to receive OTP for MFA.
  core.String? phoneInfo;

  GoogleCloudIdentitytoolkitV1MfaFactor({
    this.displayName,
    this.phoneInfo,
  });

  GoogleCloudIdentitytoolkitV1MfaFactor.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          phoneInfo: json_['phoneInfo'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (phoneInfo != null) 'phoneInfo': phoneInfo!,
      };
}

/// Multi-factor authentication related information.
class GoogleCloudIdentitytoolkitV1MfaInfo {
  /// The second factors the user has enrolled.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? enrollments;

  GoogleCloudIdentitytoolkitV1MfaInfo({
    this.enrollments,
  });

  GoogleCloudIdentitytoolkitV1MfaInfo.fromJson(core.Map json_)
      : this(
          enrollments: (json_['enrollments'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enrollments != null) 'enrollments': enrollments!,
      };
}

/// Represents a public key of the session cookie signer, formatted as a \[JSON
/// Web Key (JWK)\](https://tools.ietf.org/html/rfc7517).
class GoogleCloudIdentitytoolkitV1OpenIdConnectKey {
  /// Signature algorithm.
  core.String? alg;

  /// Exponent for the RSA public key, it is represented as the base64url
  /// encoding of the value's big endian representation.
  core.String? e;

  /// Unique string to identify this key.
  core.String? kid;

  /// Key type.
  core.String? kty;

  /// Modulus for the RSA public key, it is represented as the base64url
  /// encoding of the value's big endian representation.
  core.String? n;

  /// Key use.
  core.String? use;

  GoogleCloudIdentitytoolkitV1OpenIdConnectKey({
    this.alg,
    this.e,
    this.kid,
    this.kty,
    this.n,
    this.use,
  });

  GoogleCloudIdentitytoolkitV1OpenIdConnectKey.fromJson(core.Map json_)
      : this(
          alg: json_['alg'] as core.String?,
          e: json_['e'] as core.String?,
          kid: json_['kid'] as core.String?,
          kty: json_['kty'] as core.String?,
          n: json_['n'] as core.String?,
          use: json_['use'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alg != null) 'alg': alg!,
        if (e != null) 'e': e!,
        if (kid != null) 'kid': kid!,
        if (kty != null) 'kty': kty!,
        if (n != null) 'n': n!,
        if (use != null) 'use': use!,
      };
}

/// Information about the user as provided by various Identity Providers.
class GoogleCloudIdentitytoolkitV1ProviderUserInfo {
  /// The user's display name at the Identity Provider.
  core.String? displayName;

  /// The user's email address at the Identity Provider.
  core.String? email;

  /// The user's identifier at the Identity Provider.
  core.String? federatedId;

  /// The user's phone number at the Identity Provider.
  core.String? phoneNumber;

  /// The user's profile photo URL at the Identity Provider.
  core.String? photoUrl;

  /// The ID of the Identity Provider.
  core.String? providerId;

  /// The user's raw identifier directly returned from Identity Provider.
  core.String? rawId;

  /// The user's screen_name at Twitter or login name at GitHub.
  core.String? screenName;

  GoogleCloudIdentitytoolkitV1ProviderUserInfo({
    this.displayName,
    this.email,
    this.federatedId,
    this.phoneNumber,
    this.photoUrl,
    this.providerId,
    this.rawId,
    this.screenName,
  });

  GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(core.Map json_)
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (federatedId != null) 'federatedId': federatedId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerId != null) 'providerId': providerId!,
        if (rawId != null) 'rawId': rawId!,
        if (screenName != null) 'screenName': screenName!,
      };
}

/// Request message for QueryUserInfo.
class GoogleCloudIdentitytoolkitV1QueryUserInfoRequest {
  /// Query conditions used to filter results.
  ///
  /// If more than one is passed, only the first SqlExpression is evaluated.
  core.List<GoogleCloudIdentitytoolkitV1SqlExpression>? expression;

  /// The maximum number of accounts to return with an upper limit of __500__.
  ///
  /// Defaults to _500_. Only valid when `return_user_info` is set to `true`.
  core.String? limit;

  /// The number of accounts to skip from the beginning of matching records.
  ///
  /// Only valid when `return_user_info` is set to `true`.
  core.String? offset;

  /// The order for sorting query result.
  ///
  /// Defaults to __ascending__ order. Only valid when `return_user_info` is set
  /// to `true`.
  /// Possible string values are:
  /// - "ORDER_UNSPECIFIED" : Order is not specified.
  /// - "ASC" : Sort on ascending order.
  /// - "DESC" : Sort on descending order.
  core.String? order;

  /// If `true`, this request will return the accounts matching the query.
  ///
  /// If `false`, only the __count__ of accounts matching the query will be
  /// returned. Defaults to `true`.
  core.bool? returnUserInfo;

  /// The field to use for sorting user accounts.
  ///
  /// Defaults to `USER_ID`. Note: when `phone_number` is specified in
  /// `expression`, the result ignores the sorting. Only valid when
  /// `return_user_info` is set to `true`.
  /// Possible string values are:
  /// - "SORT_BY_FIELD_UNSPECIFIED" : Sort field is not specified.
  /// - "USER_ID" : Sort result by userId.
  /// - "NAME" : Sort result by name.
  /// - "CREATED_AT" : Sort result by createdAt.
  /// - "LAST_LOGIN_AT" : Sort result by lastLoginAt.
  /// - "USER_EMAIL" : Sort result by userEmail.
  core.String? sortBy;

  /// The ID of the tenant to which the result is scoped.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1QueryUserInfoRequest({
    this.expression,
    this.limit,
    this.offset,
    this.order,
    this.returnUserInfo,
    this.sortBy,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1QueryUserInfoRequest.fromJson(core.Map json_)
      : this(
          expression: (json_['expression'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1SqlExpression.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          limit: json_['limit'] as core.String?,
          offset: json_['offset'] as core.String?,
          order: json_['order'] as core.String?,
          returnUserInfo: json_['returnUserInfo'] as core.bool?,
          sortBy: json_['sortBy'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
        if (limit != null) 'limit': limit!,
        if (offset != null) 'offset': offset!,
        if (order != null) 'order': order!,
        if (returnUserInfo != null) 'returnUserInfo': returnUserInfo!,
        if (sortBy != null) 'sortBy': sortBy!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for QueryUserInfo.
class GoogleCloudIdentitytoolkitV1QueryUserInfoResponse {
  /// If `return_user_info` in the request is true, this is the number of
  /// returned accounts in this message.
  ///
  /// Otherwise, this is the total number of accounts matching the query.
  core.String? recordsCount;

  /// If `return_user_info` in the request is true, this is the accounts
  /// matching the query.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? userInfo;

  GoogleCloudIdentitytoolkitV1QueryUserInfoResponse({
    this.recordsCount,
    this.userInfo,
  });

  GoogleCloudIdentitytoolkitV1QueryUserInfoResponse.fromJson(core.Map json_)
      : this(
          recordsCount: json_['recordsCount'] as core.String?,
          userInfo: (json_['userInfo'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recordsCount != null) 'recordsCount': recordsCount!,
        if (userInfo != null) 'userInfo': userInfo!,
      };
}

/// Request message for ResetPassword.
class GoogleCloudIdentitytoolkitV1ResetPasswordRequest {
  /// The email of the account to be modified.
  ///
  /// Specify this and the old password in order to change an account's password
  /// without using an out-of-band code.
  core.String? email;

  /// The new password to be set for this account.
  ///
  /// Specifying this field will result in a change to the account and consume
  /// the out-of-band code if one was specified and it was of type
  /// PASSWORD_RESET.
  core.String? newPassword;

  /// The current password of the account to be modified.
  ///
  /// Specify this and email to change an account's password without using an
  /// out-of-band code.
  core.String? oldPassword;

  /// An out-of-band (OOB) code generated by GetOobCode request.
  ///
  /// Specify only this parameter (or only this parameter and a tenant ID) to
  /// get the out-of-band code's type in the response without mutating the
  /// account's state. Only a PASSWORD_RESET out-of-band code can be consumed
  /// via this method.
  core.String? oobCode;

  /// The tenant ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1ResetPasswordRequest({
    this.email,
    this.newPassword,
    this.oldPassword,
    this.oobCode,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1ResetPasswordRequest.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          newPassword: json_['newPassword'] as core.String?,
          oldPassword: json_['oldPassword'] as core.String?,
          oobCode: json_['oobCode'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (newPassword != null) 'newPassword': newPassword!,
        if (oldPassword != null) 'oldPassword': oldPassword!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for ResetPassword.
class GoogleCloudIdentitytoolkitV1ResetPasswordResponse {
  /// The email associated with the out-of-band code that was used.
  core.String? email;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;
  GoogleCloudIdentitytoolkitV1MfaEnrollment? mfaInfo;
  core.String? newEmail;

  ///
  /// Possible string values are:
  /// - "OOB_REQ_TYPE_UNSPECIFIED" : Oob code type is not specified.
  /// - "PASSWORD_RESET" : reset password
  /// - "OLD_EMAIL_AGREE"
  /// - "NEW_EMAIL_ACCEPT"
  /// - "VERIFY_EMAIL" : verify the account's email address by sending an email
  /// - "RECOVER_EMAIL"
  /// - "EMAIL_SIGNIN" : sign in with email only
  /// - "VERIFY_AND_CHANGE_EMAIL" : This flow sends an email to the specified
  /// new email, and when applied by clicking the link in the email changes the
  /// account's email to the new email. Used when the account must have verified
  /// email at all times, such as MFA accounts.
  /// - "REVERT_SECOND_FACTOR_ADDITION"
  core.String? requestType;

  GoogleCloudIdentitytoolkitV1ResetPasswordResponse({
    this.email,
    this.kind,
    this.mfaInfo,
    this.newEmail,
    this.requestType,
  });

  GoogleCloudIdentitytoolkitV1ResetPasswordResponse.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          kind: json_['kind'] as core.String?,
          mfaInfo: json_.containsKey('mfaInfo')
              ? GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                  json_['mfaInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          newEmail: json_['newEmail'] as core.String?,
          requestType: json_['requestType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (requestType != null) 'requestType': requestType!,
      };
}

/// Request message for SendVerificationCode.
///
/// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
/// `safety_net_token` must be specified to verify the verification code is
/// being sent on behalf of a real app and not an emulator.
class GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest {
  /// Android only.
  ///
  /// Used by Google Play Services to identify the app for auto-retrieval.
  GoogleCloudIdentitytoolkitV1AutoRetrievalInfo? autoRetrievalInfo;

  /// Receipt of successful iOS app token validation.
  ///
  /// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. This should come
  /// from the response of verifyIosClient. If present, the caller should also
  /// provide the `ios_secret`, as well as a bundle ID in the
  /// `x-ios-bundle-identifier` header, which must match the bundle ID from the
  /// verifyIosClient request.
  core.String? iosReceipt;

  /// Secret delivered to iOS app as a push notification.
  ///
  /// Should be passed with an `ios_receipt` as well as the
  /// `x-ios-bundle-identifier` header.
  core.String? iosSecret;

  /// The phone number to send the verification code to in E.164 format.
  core.String? phoneNumber;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token (and
  /// safety_net_token). At least one of (`ios_receipt` and `ios_secret`),
  /// `recaptcha_token`, , or `play_integrity_token` must be specified to verify
  /// the verification code is being sent on behalf of a real app and not an
  /// emulator. A Play Integrity Token can be generated via the
  /// [PlayIntegrity API](https://developer.android.com/google/play/integrity)
  /// with applying SHA256 to the `phone_number` field as the nonce.
  core.String? playIntegrityToken;

  /// Recaptcha token for app verification.
  ///
  /// At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. The recaptcha
  /// should be generated by calling getRecaptchaParams and the recaptcha token
  /// will be generated on user completion of the recaptcha challenge.
  core.String? recaptchaToken;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token. At
  /// least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
  /// `safety_net_token` must be specified to verify the verification code is
  /// being sent on behalf of a real app and not an emulator. A SafetyNet Token
  /// can be generated via the
  /// [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html),
  /// with the Base64 encoding of the `phone_number` field as the nonce.
  core.String? safetyNetToken;

  /// Tenant ID of the Identity Platform tenant the user is signing in to.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest({
    this.autoRetrievalInfo,
    this.iosReceipt,
    this.iosSecret,
    this.phoneNumber,
    this.playIntegrityToken,
    this.recaptchaToken,
    this.safetyNetToken,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest.fromJson(
      core.Map json_)
      : this(
          autoRetrievalInfo: json_.containsKey('autoRetrievalInfo')
              ? GoogleCloudIdentitytoolkitV1AutoRetrievalInfo.fromJson(
                  json_['autoRetrievalInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iosReceipt: json_['iosReceipt'] as core.String?,
          iosSecret: json_['iosSecret'] as core.String?,
          phoneNumber: json_['phoneNumber'] as core.String?,
          playIntegrityToken: json_['playIntegrityToken'] as core.String?,
          recaptchaToken: json_['recaptchaToken'] as core.String?,
          safetyNetToken: json_['safetyNetToken'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRetrievalInfo != null) 'autoRetrievalInfo': autoRetrievalInfo!,
        if (iosReceipt != null) 'iosReceipt': iosReceipt!,
        if (iosSecret != null) 'iosSecret': iosSecret!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (playIntegrityToken != null)
          'playIntegrityToken': playIntegrityToken!,
        if (recaptchaToken != null) 'recaptchaToken': recaptchaToken!,
        if (safetyNetToken != null) 'safetyNetToken': safetyNetToken!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SendVerificationCode.
class GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse {
  /// Encrypted session information.
  ///
  /// This can be used in signInWithPhoneNumber to authenticate the phone
  /// number.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse({
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse.fromJson(
      core.Map json_)
      : this(
          sessionInfo: json_['sessionInfo'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Request message for SetAccountInfo.
class GoogleCloudIdentitytoolkitV1SetAccountInfoRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? captchaChallenge;

  /// The response from reCaptcha challenge.
  ///
  /// This is required when the system detects possible abuse activities.
  core.String? captchaResponse;

  /// The timestamp in milliseconds when the account was created.
  core.String? createdAt;

  /// JSON formatted custom attributes to be stored in the Identity Platform ID
  /// token.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? customAttributes;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// The account's attributes to be deleted.
  core.List<core.String>? deleteAttribute;

  /// The Identity Providers to unlink from the user's account.
  core.List<core.String>? deleteProvider;

  /// If true, marks the account as disabled, meaning the user will no longer be
  /// able to sign-in.
  core.bool? disableUser;

  /// The user's new display name to be updated in the account's attributes.
  ///
  /// The length of the display name must be less than or equal to 256
  /// characters.
  core.String? displayName;

  /// The user's new email to be updated in the account's attributes.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. If
  /// [email enumeration protection](https://cloud.google.com/identity-platform/docs/admin/email-enumeration-protection)
  /// is enabled, the email cannot be changed by the user without verifying the
  /// email first, but it can be changed by an administrator.
  core.String? email;

  /// Whether the user's email has been verified.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? emailVerified;

  /// A valid Identity Platform ID token.
  ///
  /// Required when attempting to change user-related information.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceId;

  /// The timestamp in milliseconds when the account last logged in.
  core.String? lastLoginAt;

  /// The provider to be linked to the user's account.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  GoogleCloudIdentitytoolkitV1ProviderUserInfo? linkProviderUserInfo;

  /// The ID of the user.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// For requests from end-users, an ID token should be passed instead.
  core.String? localId;

  /// The multi-factor authentication related information to be set on the
  /// user's account.
  ///
  /// This will overwrite any previous multi-factor related information on the
  /// account. Specifying this field requires a Google OAuth 2.0 credential with
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  GoogleCloudIdentitytoolkitV1MfaInfo? mfa;

  /// The out-of-band code to be applied on the user's account.
  ///
  /// The following out-of-band code types are supported: * VERIFY_EMAIL *
  /// RECOVER_EMAIL * REVERT_SECOND_FACTOR_ADDITION * VERIFY_AND_CHANGE_EMAIL
  core.String? oobCode;

  /// The user's new password to be updated in the account's attributes.
  ///
  /// The password must be at least 6 characters long.
  core.String? password;

  /// The phone number to be updated in the account's attributes.
  core.String? phoneNumber;

  /// The user's new photo URL for the account's profile photo to be updated in
  /// the account's attributes.
  ///
  /// The length of the URL must be less than or equal to 2048 characters.
  core.String? photoUrl;

  /// The Identity Providers that the account should be associated with.
  core.List<core.String>? provider;

  /// Whether or not to return an ID and refresh token.
  ///
  /// Should always be true.
  core.bool? returnSecureToken;

  /// The project ID for the project that the account belongs to.
  ///
  /// Specifying this field requires Google OAuth 2.0 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// Requests from end users should pass an Identity Platform ID token instead.
  core.String? targetProjectId;

  /// The tenant ID of the Identity Platform tenant that the account belongs to.
  ///
  /// Requests from end users should pass an Identity Platform ID token rather
  /// than setting this field.
  core.String? tenantId;

  /// Whether the account should be restricted to only using federated login.
  core.bool? upgradeToFederatedLogin;

  /// Specifies the minimum timestamp in seconds for an Identity Platform ID
  /// token to be considered valid.
  core.String? validSince;

  GoogleCloudIdentitytoolkitV1SetAccountInfoRequest({
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
    this.linkProviderUserInfo,
    this.localId,
    this.mfa,
    this.oobCode,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.provider,
    this.returnSecureToken,
    this.targetProjectId,
    this.tenantId,
    this.upgradeToFederatedLogin,
    this.validSince,
  });

  GoogleCloudIdentitytoolkitV1SetAccountInfoRequest.fromJson(core.Map json_)
      : this(
          captchaChallenge: json_['captchaChallenge'] as core.String?,
          captchaResponse: json_['captchaResponse'] as core.String?,
          createdAt: json_['createdAt'] as core.String?,
          customAttributes: json_['customAttributes'] as core.String?,
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
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
          linkProviderUserInfo: json_.containsKey('linkProviderUserInfo')
              ? GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                  json_['linkProviderUserInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          localId: json_['localId'] as core.String?,
          mfa: json_.containsKey('mfa')
              ? GoogleCloudIdentitytoolkitV1MfaInfo.fromJson(
                  json_['mfa'] as core.Map<core.String, core.dynamic>)
              : null,
          oobCode: json_['oobCode'] as core.String?,
          password: json_['password'] as core.String?,
          phoneNumber: json_['phoneNumber'] as core.String?,
          photoUrl: json_['photoUrl'] as core.String?,
          provider: (json_['provider'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          returnSecureToken: json_['returnSecureToken'] as core.bool?,
          targetProjectId: json_['targetProjectId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          upgradeToFederatedLogin:
              json_['upgradeToFederatedLogin'] as core.bool?,
          validSince: json_['validSince'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (createdAt != null) 'createdAt': createdAt!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (deleteAttribute != null) 'deleteAttribute': deleteAttribute!,
        if (deleteProvider != null) 'deleteProvider': deleteProvider!,
        if (disableUser != null) 'disableUser': disableUser!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (lastLoginAt != null) 'lastLoginAt': lastLoginAt!,
        if (linkProviderUserInfo != null)
          'linkProviderUserInfo': linkProviderUserInfo!,
        if (localId != null) 'localId': localId!,
        if (mfa != null) 'mfa': mfa!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (password != null) 'password': password!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (provider != null) 'provider': provider!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (upgradeToFederatedLogin != null)
          'upgradeToFederatedLogin': upgradeToFederatedLogin!,
        if (validSince != null) 'validSince': validSince!,
      };
}

/// Response message for SetAccountInfo
class GoogleCloudIdentitytoolkitV1SetAccountInfoResponse {
  /// The account's display name.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? displayName;

  /// The account's email address.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? email;

  /// Whether the account's email has been verified.
  core.bool? emailVerified;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the account.
  ///
  /// This is used for legacy user sign up.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The ID of the authenticated user.
  core.String? localId;

  /// The new email that has been set on the user's account attributes.
  core.String? newEmail;

  /// No actual password hash is currently returned.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? passwordHash;

  /// The user's photo URL for the account's profile photo.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? photoUrl;

  /// The linked Identity Providers on the account.
  core.List<GoogleCloudIdentitytoolkitV1ProviderUserInfo>? providerUserInfo;

  /// A refresh token for the account.
  ///
  /// This is used for legacy user sign up.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SetAccountInfoResponse({
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

  GoogleCloudIdentitytoolkitV1SetAccountInfoResponse.fromJson(core.Map json_)
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
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          refreshToken: json_['refreshToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (newEmail != null) 'newEmail': newEmail!,
        if (passwordHash != null) 'passwordHash': passwordHash!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerUserInfo != null) 'providerUserInfo': providerUserInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithCustomToken.
class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceId;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If present, the ID should match the tenant_id in the token.
  core.String? tenantId;

  /// The custom Auth token asserted by the developer.
  ///
  /// The token should be a \[JSON Web Token
  /// (JWT)\](https://tools.ietf.org/html/rfc7519) that includes the claims
  /// listed in the
  /// [API reference](https://cloud.google.com/identity-platform/docs/reference/rest/client/)
  /// under the "Custom Token Claims" section.
  ///
  /// Required.
  core.String? token;

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest({
    this.delegatedProjectNumber,
    this.instanceId,
    this.returnSecureToken,
    this.tenantId,
    this.token,
  });

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest.fromJson(
      core.Map json_)
      : this(
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          instanceId: json_['instanceId'] as core.String?,
          returnSecureToken: json_['returnSecureToken'] as core.bool?,
          tenantId: json_['tenantId'] as core.String?,
          token: json_['token'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (token != null) 'token': token!,
      };
}

/// Response message for SignInWithCustomToken.
class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse {
  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse({
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse.fromJson(
      core.Map json_)
      : this(
          expiresIn: json_['expiresIn'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          isNewUser: json_['isNewUser'] as core.bool?,
          kind: json_['kind'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithEmailLink
class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest {
  /// The email address the sign-in link was sent to.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  ///
  /// Required.
  core.String? email;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If passed, this request will link the email address to the user
  /// represented by this ID token and enable sign-in with email link on the
  /// account for the future.
  core.String? idToken;

  /// The out-of-band code from the email link.
  ///
  /// Required.
  core.String? oobCode;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest({
    this.email,
    this.idToken,
    this.oobCode,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest.fromJson(
      core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          oobCode: json_['oobCode'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (idToken != null) 'idToken': idToken!,
        if (oobCode != null) 'oobCode': oobCode!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithEmailLink.
class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse {
  /// The email the user signed in with.
  ///
  /// Always present in the response.
  core.String? email;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor check.
  core.String? mfaPendingCredential;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse({
    this.email,
    this.expiresIn,
    this.idToken,
    this.isNewUser,
    this.kind,
    this.localId,
    this.mfaInfo,
    this.mfaPendingCredential,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse.fromJson(
      core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          expiresIn: json_['expiresIn'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          isNewUser: json_['isNewUser'] as core.bool?,
          kind: json_['kind'] as core.String?,
          localId: json_['localId'] as core.String?,
          mfaInfo: (json_['mfaInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          mfaPendingCredential: json_['mfaPendingCredential'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Request message for SignInWithGameCenter
class GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest {
  /// The user's Game Center display name.
  core.String? displayName;

  /// The user's Game Center game player ID.
  ///
  /// A unique identifier for a player of the game.
  /// https://developer.apple.com/documentation/gamekit/gkplayer/3113960-gameplayerid
  core.String? gamePlayerId;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If present, this request will link the Game Center player ID to the
  /// account represented by this ID token.
  core.String? idToken;

  /// The user's Game Center player ID.
  ///
  /// Deprecated by Apple. Pass `playerID` along with `gamePlayerID` and
  /// `teamPlayerID` to initiate the migration of a user's Game Center player ID
  /// to `gamePlayerID`.
  ///
  /// Required.
  core.String? playerId;

  /// The URL to fetch the Apple public key in order to verify the given
  /// signature is signed by Apple.
  ///
  /// Required.
  core.String? publicKeyUrl;

  /// A random string used to generate the given signature.
  ///
  /// Required.
  core.String? salt;

  /// The verification signature data generated by Apple.
  ///
  /// Required.
  core.String? signature;

  /// The user's Game Center team player ID.
  ///
  /// A unique identifier for a player of all the games that you distribute
  /// using your developer account.
  /// https://developer.apple.com/documentation/gamekit/gkplayer/3174857-teamplayerid
  core.String? teamPlayerId;

  /// The ID of the Identity Platform tenant the user is signing in to.
  core.String? tenantId;

  /// The time when the signature was created by Apple, in milliseconds since
  /// the epoch.
  ///
  /// Required.
  core.String? timestamp;

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest({
    this.displayName,
    this.gamePlayerId,
    this.idToken,
    this.playerId,
    this.publicKeyUrl,
    this.salt,
    this.signature,
    this.teamPlayerId,
    this.tenantId,
    this.timestamp,
  });

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest.fromJson(
      core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          gamePlayerId: json_['gamePlayerId'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          playerId: json_['playerId'] as core.String?,
          publicKeyUrl: json_['publicKeyUrl'] as core.String?,
          salt: json_['salt'] as core.String?,
          signature: json_['signature'] as core.String?,
          teamPlayerId: json_['teamPlayerId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          timestamp: json_['timestamp'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (gamePlayerId != null) 'gamePlayerId': gamePlayerId!,
        if (idToken != null) 'idToken': idToken!,
        if (playerId != null) 'playerId': playerId!,
        if (publicKeyUrl != null) 'publicKeyUrl': publicKeyUrl!,
        if (salt != null) 'salt': salt!,
        if (signature != null) 'signature': signature!,
        if (teamPlayerId != null) 'teamPlayerId': teamPlayerId!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// Response message for SignInWithGameCenter
class GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse {
  /// Display name of the authenticated user.
  core.String? displayName;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// The user's Game Center game player ID.
  ///
  /// A unique identifier for a player of the game.
  /// https://developer.apple.com/documentation/gamekit/gkplayer/3113960-gameplayerid
  core.String? gamePlayerId;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the logged in user was created by this request.
  core.bool? isNewUser;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// The user's Game Center player ID.
  ///
  /// Pass `playerID` along with `gamePlayerID` and `teamPlayerID` to initiate
  /// the migration of a user's Game Center player ID to `gamePlayerID`.
  core.String? playerId;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  /// The user's Game Center team player ID.
  ///
  /// A unique identifier for a player of all the games that you distribute
  /// using your developer account.
  /// https://developer.apple.com/documentation/gamekit/gkplayer/3174857-teamplayerid
  core.String? teamPlayerId;

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse({
    this.displayName,
    this.expiresIn,
    this.gamePlayerId,
    this.idToken,
    this.isNewUser,
    this.localId,
    this.playerId,
    this.refreshToken,
    this.teamPlayerId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse.fromJson(
      core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          expiresIn: json_['expiresIn'] as core.String?,
          gamePlayerId: json_['gamePlayerId'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          isNewUser: json_['isNewUser'] as core.bool?,
          localId: json_['localId'] as core.String?,
          playerId: json_['playerId'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
          teamPlayerId: json_['teamPlayerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (gamePlayerId != null) 'gamePlayerId': gamePlayerId!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (localId != null) 'localId': localId!,
        if (playerId != null) 'playerId': playerId!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (teamPlayerId != null) 'teamPlayerId': teamPlayerId!,
      };
}

/// Request message for SignInWithIdp.
class GoogleCloudIdentitytoolkitV1SignInWithIdpRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? autoCreate;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// A valid Identity Platform ID token.
  ///
  /// If passed, the user's account at the IdP will be linked to the account
  /// represented by this ID token.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? pendingIdToken;

  /// An opaque string from a previous SignInWithIdp response.
  ///
  /// If set, it can be used to repeat the sign-in operation from the previous
  /// SignInWithIdp operation. This may be present if the user needs to confirm
  /// their account information as part of a previous federated login attempt,
  /// or perform account linking.
  core.String? pendingToken;

  /// If the user is signing in with an authorization response obtained via a
  /// previous CreateAuthUri authorization request, this is the body of the HTTP
  /// POST callback from the IdP, if present.
  ///
  /// Otherwise, if the user is signing in with a manually provided IdP
  /// credential, this should be a URL-encoded form that contains the credential
  /// (e.g. an ID token or access token for OAuth 2.0 IdPs) and the provider ID
  /// of the IdP that issued the credential. For example, if the user is signing
  /// in to the Google provider using a Google ID token, this should be set to
  /// id_token`=[GOOGLE_ID_TOKEN]&providerId=google.com`, where
  /// `[GOOGLE_ID_TOKEN]` should be replaced with the Google ID token. If the
  /// user is signing in to the Facebook provider using a Facebook
  /// authentication token, this should be set to
  /// id_token`=[FACEBOOK_AUTHENTICATION_TOKEN]&providerId=facebook. com&nonce=
  /// [NONCE]`, where `[FACEBOOK_AUTHENTICATION_TOKEN]` should be replaced with
  /// the Facebook authentication token. Nonce is required for validating the
  /// token. The request will fail if no nonce is provided. If the user is
  /// signing in to the Facebook provider using a Facebook access token, this
  /// should be set to
  /// access_token`=[FACEBOOK_ACCESS_TOKEN]&providerId=facebook. com`, where
  /// `[FACEBOOK_ACCESS_TOKEN]` should be replaced with the Facebook access
  /// token. If the user is signing in to the Twitter provider using a Twitter
  /// OAuth 1.0 credential, this should be set to
  /// access_token`=[TWITTER_ACCESS_TOKEN]&oauth_token_secret=
  /// [TWITTER_TOKEN_SECRET]&providerId=twitter.com`, where
  /// `[TWITTER_ACCESS_TOKEN]` and `[TWITTER_TOKEN_SECRET]` should be replaced
  /// with the Twitter OAuth access token and Twitter OAuth token secret
  /// respectively.
  core.String? postBody;

  /// The URL to which the IdP redirects the user back.
  ///
  /// This can be set to `http://localhost` if the user is signing in with a
  /// manually provided IdP credential.
  ///
  /// Required.
  core.String? requestUri;

  /// Whether or not to return OAuth credentials from the IdP on the following
  /// errors: `FEDERATED_USER_ID_ALREADY_LINKED` and `EMAIL_EXISTS`.
  core.bool? returnIdpCredential;

  /// Whether or not to return the OAuth refresh token from the IdP, if
  /// available.
  core.bool? returnRefreshToken;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The session ID returned from a previous CreateAuthUri call.
  ///
  /// This field is verified against that session ID to prevent session fixation
  /// attacks. Required if the user is signing in with an authorization response
  /// from a previous CreateAuthUri authorization request.
  core.String? sessionId;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithIdpRequest({
    this.autoCreate,
    this.delegatedProjectNumber,
    this.idToken,
    this.pendingIdToken,
    this.pendingToken,
    this.postBody,
    this.requestUri,
    this.returnIdpCredential,
    this.returnRefreshToken,
    this.returnSecureToken,
    this.sessionId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithIdpRequest.fromJson(core.Map json_)
      : this(
          autoCreate: json_['autoCreate'] as core.bool?,
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          pendingIdToken: json_['pendingIdToken'] as core.String?,
          pendingToken: json_['pendingToken'] as core.String?,
          postBody: json_['postBody'] as core.String?,
          requestUri: json_['requestUri'] as core.String?,
          returnIdpCredential: json_['returnIdpCredential'] as core.bool?,
          returnRefreshToken: json_['returnRefreshToken'] as core.bool?,
          returnSecureToken: json_['returnSecureToken'] as core.bool?,
          sessionId: json_['sessionId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCreate != null) 'autoCreate': autoCreate!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (idToken != null) 'idToken': idToken!,
        if (pendingIdToken != null) 'pendingIdToken': pendingIdToken!,
        if (pendingToken != null) 'pendingToken': pendingToken!,
        if (postBody != null) 'postBody': postBody!,
        if (requestUri != null) 'requestUri': requestUri!,
        if (returnIdpCredential != null)
          'returnIdpCredential': returnIdpCredential!,
        if (returnRefreshToken != null)
          'returnRefreshToken': returnRefreshToken!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithIdp.
class GoogleCloudIdentitytoolkitV1SignInWithIdpResponse {
  /// The opaque string set in CreateAuthUri that is used to maintain contextual
  /// information between the authentication request and the callback from the
  /// IdP.
  core.String? context;

  /// The date of birth for the user's account at the IdP.
  core.String? dateOfBirth;

  /// The display name for the user's account at the IdP.
  core.String? displayName;

  /// The email address of the user's account at the IdP.
  core.String? email;

  /// Whether or not there is an existing Identity Platform user account with
  /// the same email address but linked to a different account at the same IdP.
  ///
  /// Only present if the "One account per email address" setting is enabled and
  /// the email address at the IdP is verified.
  core.bool? emailRecycled;

  /// Whether the user account's email address is verified.
  core.bool? emailVerified;

  /// The error message returned if `return_idp_credential` is set to `true` and
  /// either the `FEDERATED_USER_ID_ALREADY_LINKED` or `EMAIL_EXISTS` error is
  /// encountered.
  ///
  /// This field's value is either `FEDERATED_USER_ID_ALREADY_LINKED` or
  /// `EMAIL_EXISTS`.
  core.String? errorMessage;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// The user's account ID at the IdP.
  ///
  /// Always present in the response.
  core.String? federatedId;

  /// The first name for the user's account at the IdP.
  core.String? firstName;

  /// The full name for the user's account at the IdP.
  core.String? fullName;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? inputEmail;

  /// Whether or not a new Identity Platform account was created for the
  /// authenticated user.
  core.bool? isNewUser;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The language preference for the user's account at the IdP.
  core.String? language;

  /// The last name for the user's account at the IdP.
  core.String? lastName;

  /// The ID of the authenticated Identity Platform user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled for the
  /// account.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor authentication.
  core.String? mfaPendingCredential;

  /// Whether or not there is an existing Identity Platform user account with
  /// the same email address as the current account signed in at the IdP, and
  /// the account's email address is not verified at the IdP.
  ///
  /// The user will need to sign in to the existing Identity Platform account
  /// and then link the current credential from the IdP to it. Only present if
  /// the "One account per email address" setting is enabled.
  core.bool? needConfirmation;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? needEmail;

  /// The nickname for the user's account at the IdP.
  core.String? nickName;

  /// The OAuth access token from the IdP, if available.
  core.String? oauthAccessToken;

  /// The OAuth 2.0 authorization code, if available.
  ///
  /// Only present for the Google provider.
  core.String? oauthAuthorizationCode;

  /// The number of seconds until the OAuth access token from the IdP expires.
  core.int? oauthExpireIn;

  /// The OpenID Connect ID token from the IdP, if available.
  core.String? oauthIdToken;

  /// The OAuth 2.0 refresh token from the IdP, if available and
  /// `return_refresh_token` is set to `true`.
  core.String? oauthRefreshToken;

  /// The OAuth 1.0 token secret from the IdP, if available.
  ///
  /// Only present for the Twitter provider.
  core.String? oauthTokenSecret;

  /// The main (top-level) email address of the user's Identity Platform
  /// account, if different from the email address at the IdP.
  ///
  /// Only present if the "One account per email address" setting is enabled.
  core.String? originalEmail;

  /// An opaque string that can be used as a credential from the IdP the user is
  /// signing into.
  ///
  /// The pending token obtained here can be set in a future SignInWithIdp
  /// request to sign the same user in with the IdP again.
  core.String? pendingToken;

  /// The URL of the user's profile picture at the IdP.
  core.String? photoUrl;

  /// The provider ID of the IdP that the user is signing in to.
  ///
  /// Always present in the response.
  core.String? providerId;

  /// The stringified JSON response containing all the data corresponding to the
  /// user's account at the IdP.
  core.String? rawUserInfo;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  /// The screen name for the user's account at the Twitter IdP or the login
  /// name for the user's account at the GitHub IdP.
  core.String? screenName;

  /// The value of the `tenant_id` field in the request.
  core.String? tenantId;

  /// The time zone for the user's account at the IdP.
  core.String? timeZone;

  /// A list of provider IDs that the user can sign in to in order to resolve a
  /// `need_confirmation` error.
  ///
  /// Only present if `need_confirmation` is set to `true`.
  core.List<core.String>? verifiedProvider;

  GoogleCloudIdentitytoolkitV1SignInWithIdpResponse({
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
    this.mfaInfo,
    this.mfaPendingCredential,
    this.needConfirmation,
    this.needEmail,
    this.nickName,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.oauthIdToken,
    this.oauthRefreshToken,
    this.oauthTokenSecret,
    this.originalEmail,
    this.pendingToken,
    this.photoUrl,
    this.providerId,
    this.rawUserInfo,
    this.refreshToken,
    this.screenName,
    this.tenantId,
    this.timeZone,
    this.verifiedProvider,
  });

  GoogleCloudIdentitytoolkitV1SignInWithIdpResponse.fromJson(core.Map json_)
      : this(
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
          mfaInfo: (json_['mfaInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          mfaPendingCredential: json_['mfaPendingCredential'] as core.String?,
          needConfirmation: json_['needConfirmation'] as core.bool?,
          needEmail: json_['needEmail'] as core.bool?,
          nickName: json_['nickName'] as core.String?,
          oauthAccessToken: json_['oauthAccessToken'] as core.String?,
          oauthAuthorizationCode:
              json_['oauthAuthorizationCode'] as core.String?,
          oauthExpireIn: json_['oauthExpireIn'] as core.int?,
          oauthIdToken: json_['oauthIdToken'] as core.String?,
          oauthRefreshToken: json_['oauthRefreshToken'] as core.String?,
          oauthTokenSecret: json_['oauthTokenSecret'] as core.String?,
          originalEmail: json_['originalEmail'] as core.String?,
          pendingToken: json_['pendingToken'] as core.String?,
          photoUrl: json_['photoUrl'] as core.String?,
          providerId: json_['providerId'] as core.String?,
          rawUserInfo: json_['rawUserInfo'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
          screenName: json_['screenName'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
          verifiedProvider: (json_['verifiedProvider'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (dateOfBirth != null) 'dateOfBirth': dateOfBirth!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailRecycled != null) 'emailRecycled': emailRecycled!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (federatedId != null) 'federatedId': federatedId!,
        if (firstName != null) 'firstName': firstName!,
        if (fullName != null) 'fullName': fullName!,
        if (idToken != null) 'idToken': idToken!,
        if (inputEmail != null) 'inputEmail': inputEmail!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (kind != null) 'kind': kind!,
        if (language != null) 'language': language!,
        if (lastName != null) 'lastName': lastName!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (needConfirmation != null) 'needConfirmation': needConfirmation!,
        if (needEmail != null) 'needEmail': needEmail!,
        if (nickName != null) 'nickName': nickName!,
        if (oauthAccessToken != null) 'oauthAccessToken': oauthAccessToken!,
        if (oauthAuthorizationCode != null)
          'oauthAuthorizationCode': oauthAuthorizationCode!,
        if (oauthExpireIn != null) 'oauthExpireIn': oauthExpireIn!,
        if (oauthIdToken != null) 'oauthIdToken': oauthIdToken!,
        if (oauthRefreshToken != null) 'oauthRefreshToken': oauthRefreshToken!,
        if (oauthTokenSecret != null) 'oauthTokenSecret': oauthTokenSecret!,
        if (originalEmail != null) 'originalEmail': originalEmail!,
        if (pendingToken != null) 'pendingToken': pendingToken!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerId != null) 'providerId': providerId!,
        if (rawUserInfo != null) 'rawUserInfo': rawUserInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (screenName != null) 'screenName': screenName!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (verifiedProvider != null) 'verifiedProvider': verifiedProvider!,
      };
}

/// Request message for SignInWithPassword.
class GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? captchaChallenge;

  /// The reCAPTCHA token provided by the reCAPTCHA client-side integration.
  ///
  /// reCAPTCHA Enterprise uses it for risk assessment. Required when reCAPTCHA
  /// Enterprise is enabled.
  core.String? captchaResponse;

  /// The client type, web, android or ios.
  ///
  /// Required when reCAPTCHA Enterprise is enabled.
  /// Possible string values are:
  /// - "CLIENT_TYPE_UNSPECIFIED" : Client type is not specified.
  /// - "CLIENT_TYPE_WEB" : Client type is web.
  /// - "CLIENT_TYPE_ANDROID" : Client type is android.
  /// - "CLIENT_TYPE_IOS" : Client type is ios.
  core.String? clientType;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// The email the user is signing in with.
  ///
  /// The length of email should be less than 256 characters and in the format
  /// of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.
  ///
  /// Required.
  core.String? email;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceId;

  /// The password the user provides to sign in to the account.
  ///
  /// Required.
  core.String? password;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? pendingIdToken;

  /// The reCAPTCHA version of the reCAPTCHA token in the captcha_response.
  /// Possible string values are:
  /// - "RECAPTCHA_VERSION_UNSPECIFIED" : The reCAPTCHA version is not
  /// specified.
  /// - "RECAPTCHA_ENTERPRISE" : The reCAPTCHA enterprise.
  core.String? recaptchaVersion;

  /// Should always be true.
  core.bool? returnSecureToken;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// instance in the project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.clientType,
    this.delegatedProjectNumber,
    this.email,
    this.idToken,
    this.instanceId,
    this.password,
    this.pendingIdToken,
    this.recaptchaVersion,
    this.returnSecureToken,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest.fromJson(core.Map json_)
      : this(
          captchaChallenge: json_['captchaChallenge'] as core.String?,
          captchaResponse: json_['captchaResponse'] as core.String?,
          clientType: json_['clientType'] as core.String?,
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          email: json_['email'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          instanceId: json_['instanceId'] as core.String?,
          password: json_['password'] as core.String?,
          pendingIdToken: json_['pendingIdToken'] as core.String?,
          recaptchaVersion: json_['recaptchaVersion'] as core.String?,
          returnSecureToken: json_['returnSecureToken'] as core.bool?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (clientType != null) 'clientType': clientType!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (email != null) 'email': email!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (password != null) 'password': password!,
        if (pendingIdToken != null) 'pendingIdToken': pendingIdToken!,
        if (recaptchaVersion != null) 'recaptchaVersion': recaptchaVersion!,
        if (returnSecureToken != null) 'returnSecureToken': returnSecureToken!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignInWithPassword.
class GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse {
  /// The user's display name stored in the account's attributes.
  core.String? displayName;

  /// The email of the authenticated user.
  ///
  /// Always present in the response.
  core.String? email;

  /// The number of seconds until the Identity Platform ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the authenticated user.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The ID of the authenticated user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// Info on which multi-factor authentication providers are enabled for the
  /// account.
  ///
  /// Present if the user needs to complete the sign-in using multi-factor
  /// authentication.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// An opaque string that functions as proof that the user has successfully
  /// passed the first factor authentication.
  core.String? mfaPendingCredential;

  /// The OAuth2 access token.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? oauthAccessToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? oauthAuthorizationCode;

  /// The access token expiration time in seconds.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? oauthExpireIn;

  /// The user's profile picture stored in the account's attributes.
  core.String? profilePicture;

  /// An Identity Platform refresh token for the authenticated user.
  core.String? refreshToken;

  /// Whether the email is for an existing account.
  ///
  /// Always true.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? registered;

  /// Warning notifications for the user.
  core.List<GoogleCloudIdentitytoolkitV1UserNotification>? userNotifications;

  GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.mfaInfo,
    this.mfaPendingCredential,
    this.oauthAccessToken,
    this.oauthAuthorizationCode,
    this.oauthExpireIn,
    this.profilePicture,
    this.refreshToken,
    this.registered,
    this.userNotifications,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse.fromJson(
      core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          email: json_['email'] as core.String?,
          expiresIn: json_['expiresIn'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          kind: json_['kind'] as core.String?,
          localId: json_['localId'] as core.String?,
          mfaInfo: (json_['mfaInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          mfaPendingCredential: json_['mfaPendingCredential'] as core.String?,
          oauthAccessToken: json_['oauthAccessToken'] as core.String?,
          oauthAuthorizationCode:
              json_['oauthAuthorizationCode'] as core.String?,
          oauthExpireIn: json_['oauthExpireIn'] as core.int?,
          profilePicture: json_['profilePicture'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
          registered: json_['registered'] as core.bool?,
          userNotifications: (json_['userNotifications'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1UserNotification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (oauthAccessToken != null) 'oauthAccessToken': oauthAccessToken!,
        if (oauthAuthorizationCode != null)
          'oauthAuthorizationCode': oauthAuthorizationCode!,
        if (oauthExpireIn != null) 'oauthExpireIn': oauthExpireIn!,
        if (profilePicture != null) 'profilePicture': profilePicture!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (registered != null) 'registered': registered!,
        if (userNotifications != null) 'userNotifications': userNotifications!,
      };
}

/// Request message for SignInWithPhoneNumber.
class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest {
  /// User-entered verification code from an SMS sent to the user's phone.
  core.String? code;

  /// A valid ID token for an Identity Platform account.
  ///
  /// If passed, this request will link the phone number to the user represented
  /// by this ID token if the phone number is not in use, or will reauthenticate
  /// the user if the phone number is already linked to the user.
  core.String? idToken;

  ///
  /// Possible string values are:
  /// - "VERIFY_OP_UNSPECIFIED" : Operation is not specified.
  /// - "SIGN_UP_OR_IN" : Verify operation is to sign up/sign in.
  /// - "REAUTH" : Verify operation is to reauth.
  /// - "UPDATE" : Verify operation is to update.
  /// - "LINK" : Verify operation is to link.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? operation;

  /// The user's phone number to sign in with.
  ///
  /// This is necessary in the case of uing a temporary proof, in which case it
  /// must match the phone number that was authenticated in the request that
  /// generated the temporary proof. This field is ignored if a session info is
  /// passed.
  core.String? phoneNumber;

  /// Encrypted session information from the response of sendVerificationCode.
  ///
  /// In the case of authenticating with an SMS code this must be specified, but
  /// in the case of using a temporary proof it can be unspecified.
  core.String? sessionInfo;

  /// A proof of the phone number verification, provided from a previous
  /// signInWithPhoneNumber request.
  ///
  /// If this is passed, the caller must also pass in the phone_number field the
  /// phone number that was verified in the previous request.
  core.String? temporaryProof;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  /// Do not use.
  core.String? verificationProof;

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest({
    this.code,
    this.idToken,
    this.operation,
    this.phoneNumber,
    this.sessionInfo,
    this.temporaryProof,
    this.tenantId,
    this.verificationProof,
  });

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest.fromJson(
      core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          operation: json_['operation'] as core.String?,
          phoneNumber: json_['phoneNumber'] as core.String?,
          sessionInfo: json_['sessionInfo'] as core.String?,
          temporaryProof: json_['temporaryProof'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          verificationProof: json_['verificationProof'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (idToken != null) 'idToken': idToken!,
        if (operation != null) 'operation': operation!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (temporaryProof != null) 'temporaryProof': temporaryProof!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (verificationProof != null) 'verificationProof': verificationProof!,
      };
}

/// Response message for SignInWithPhoneNumber.
class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse {
  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// Identity Platform ID token for the authenticated user.
  core.String? idToken;

  /// Whether the authenticated user was created by this request.
  core.bool? isNewUser;

  /// The id of the authenticated user.
  ///
  /// Present in the case of a successful authentication. In the case when the
  /// phone could be verified but the account operation could not be performed,
  /// a temporary proof will be returned instead.
  core.String? localId;

  /// Phone number of the authenticated user.
  ///
  /// Always present in the response.
  core.String? phoneNumber;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  /// A proof of the phone number verification, provided if a phone
  /// authentication is successful but the user operation fails.
  ///
  /// This happens when the request tries to link a phone number to a user with
  /// an ID token or reauthenticate with an ID token but the phone number is
  /// linked to a different user.
  core.String? temporaryProof;

  /// The number of seconds until the temporary proof expires.
  core.String? temporaryProofExpiresIn;

  /// Do not use.
  core.String? verificationProof;

  /// Do not use.
  core.String? verificationProofExpiresIn;

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse({
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

  GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse.fromJson(
      core.Map json_)
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (isNewUser != null) 'isNewUser': isNewUser!,
        if (localId != null) 'localId': localId!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (temporaryProof != null) 'temporaryProof': temporaryProof!,
        if (temporaryProofExpiresIn != null)
          'temporaryProofExpiresIn': temporaryProofExpiresIn!,
        if (verificationProof != null) 'verificationProof': verificationProof!,
        if (verificationProofExpiresIn != null)
          'verificationProofExpiresIn': verificationProofExpiresIn!,
      };
}

/// Request message for SignUp.
class GoogleCloudIdentitytoolkitV1SignUpRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? captchaChallenge;

  /// The reCAPTCHA token provided by the reCAPTCHA client-side integration.
  ///
  /// reCAPTCHA Enterprise uses it for assessment. Required when reCAPTCHA
  /// enterprise is enabled.
  core.String? captchaResponse;

  /// The client type: web, Android or iOS.
  ///
  /// Required when enabling reCAPTCHA enterprise protection.
  /// Possible string values are:
  /// - "CLIENT_TYPE_UNSPECIFIED" : Client type is not specified.
  /// - "CLIENT_TYPE_WEB" : Client type is web.
  /// - "CLIENT_TYPE_ANDROID" : Client type is android.
  /// - "CLIENT_TYPE_IOS" : Client type is ios.
  core.String? clientType;

  /// Whether the user will be disabled upon creation.
  ///
  /// Disabled accounts are inaccessible except for requests bearing a Google
  /// OAuth2 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? disabled;

  /// The display name of the user to be created.
  core.String? displayName;

  /// The email to assign to the created user.
  ///
  /// The length of the email should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. An
  /// anonymous user will be created if not provided.
  core.String? email;

  /// Whether the user's email is verified.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.bool? emailVerified;

  /// A valid ID token for an Identity Platform user.
  ///
  /// If set, this request will link the authentication credential to the user
  /// represented by this ID token. For a non-admin request, both the `email`
  /// and `password` fields must be set. For an admin request, `local_id` must
  /// not be set.
  core.String? idToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceId;

  /// The ID of the user to create.
  ///
  /// The ID must be unique within the project that the user is being created
  /// under. Specifying this field requires a Google OAuth 2.0 credential with
  /// the proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? localId;

  /// The multi-factor authentication providers for the user to create.
  core.List<GoogleCloudIdentitytoolkitV1MfaFactor>? mfaInfo;

  /// The password to assign to the created user.
  ///
  /// The password must be be at least 6 characters long. If set, the `email`
  /// field must also be set.
  core.String? password;

  /// The phone number of the user to create.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? phoneNumber;

  /// The profile photo url of the user to create.
  core.String? photoUrl;

  /// The reCAPTCHA version of the reCAPTCHA token in the captcha_response.
  /// Possible string values are:
  /// - "RECAPTCHA_VERSION_UNSPECIFIED" : The reCAPTCHA version is not
  /// specified.
  /// - "RECAPTCHA_ENTERPRISE" : The reCAPTCHA enterprise.
  core.String? recaptchaVersion;

  /// The project ID of the project which the user should belong to.
  ///
  /// Specifying this field requires a Google OAuth 2.0 credential with the
  /// proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  /// If this is not set, the target project is inferred from the scope
  /// associated to the Bearer access token.
  core.String? targetProjectId;

  /// The ID of the Identity Platform tenant to create a user under.
  ///
  /// If not set, the user will be created under the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV1SignUpRequest({
    this.captchaChallenge,
    this.captchaResponse,
    this.clientType,
    this.disabled,
    this.displayName,
    this.email,
    this.emailVerified,
    this.idToken,
    this.instanceId,
    this.localId,
    this.mfaInfo,
    this.password,
    this.phoneNumber,
    this.photoUrl,
    this.recaptchaVersion,
    this.targetProjectId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV1SignUpRequest.fromJson(core.Map json_)
      : this(
          captchaChallenge: json_['captchaChallenge'] as core.String?,
          captchaResponse: json_['captchaResponse'] as core.String?,
          clientType: json_['clientType'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          email: json_['email'] as core.String?,
          emailVerified: json_['emailVerified'] as core.bool?,
          idToken: json_['idToken'] as core.String?,
          instanceId: json_['instanceId'] as core.String?,
          localId: json_['localId'] as core.String?,
          mfaInfo: (json_['mfaInfo'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1MfaFactor.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          password: json_['password'] as core.String?,
          phoneNumber: json_['phoneNumber'] as core.String?,
          photoUrl: json_['photoUrl'] as core.String?,
          recaptchaVersion: json_['recaptchaVersion'] as core.String?,
          targetProjectId: json_['targetProjectId'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (captchaChallenge != null) 'captchaChallenge': captchaChallenge!,
        if (captchaResponse != null) 'captchaResponse': captchaResponse!,
        if (clientType != null) 'clientType': clientType!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (idToken != null) 'idToken': idToken!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (password != null) 'password': password!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (recaptchaVersion != null) 'recaptchaVersion': recaptchaVersion!,
        if (targetProjectId != null) 'targetProjectId': targetProjectId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Response message for SignUp.
class GoogleCloudIdentitytoolkitV1SignUpResponse {
  /// The created user's display name.
  core.String? displayName;

  /// The created user's email.
  core.String? email;

  /// The number of seconds until the ID token expires.
  core.String? expiresIn;

  /// An Identity Platform ID token for the created user.
  ///
  /// This field is only set for non-admin requests.
  core.String? idToken;
  core.String? kind;

  /// The ID of the created user.
  ///
  /// Always present in the response.
  core.String? localId;

  /// An Identity Platform refresh token for the created user.
  ///
  /// This field is only set for non-admin requests.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV1SignUpResponse({
    this.displayName,
    this.email,
    this.expiresIn,
    this.idToken,
    this.kind,
    this.localId,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV1SignUpResponse.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          email: json_['email'] as core.String?,
          expiresIn: json_['expiresIn'] as core.String?,
          idToken: json_['idToken'] as core.String?,
          kind: json_['kind'] as core.String?,
          localId: json_['localId'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (idToken != null) 'idToken': idToken!,
        if (kind != null) 'kind': kind!,
        if (localId != null) 'localId': localId!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Query conditions used to filter results.
class GoogleCloudIdentitytoolkitV1SqlExpression {
  /// A case insensitive string that the account's email should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression. If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? email;

  /// A string that the account's phone number should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression. If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? phoneNumber;

  /// A string that the account's local ID should match.
  ///
  /// Only one of `email`, `phone_number`, or `user_id` should be specified in a
  /// SqlExpression If more than one is specified, only the first (in that
  /// order) will be applied.
  core.String? userId;

  GoogleCloudIdentitytoolkitV1SqlExpression({
    this.email,
    this.phoneNumber,
    this.userId,
  });

  GoogleCloudIdentitytoolkitV1SqlExpression.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          phoneNumber: json_['phoneNumber'] as core.String?,
          userId: json_['userId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (userId != null) 'userId': userId!,
      };
}

/// Information about TOTP MFA.
typedef GoogleCloudIdentitytoolkitV1TotpInfo = $Empty;

/// Request message for UploadAccount.
class GoogleCloudIdentitytoolkitV1UploadAccountRequest {
  /// Whether to overwrite an existing account in Identity Platform with a
  /// matching `local_id` in the request.
  ///
  /// If true, the existing account will be overwritten. If false, an error will
  /// be returned.
  core.bool? allowOverwrite;

  /// The parameters for Argon2 hashing algorithm.
  GoogleCloudIdentitytoolkitV1Argon2Parameters? argon2Parameters;

  /// The block size parameter used by the STANDARD_SCRYPT hashing function.
  ///
  /// This parameter, along with parallelization and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? blockSize;

  /// The CPU memory cost parameter to be used by the STANDARD_SCRYPT hashing
  /// function.
  ///
  /// This parameter, along with block_size and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? cpuMemCost;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? delegatedProjectNumber;

  /// The desired key length for the STANDARD_SCRYPT hashing function.
  ///
  /// Must be at least 1.
  core.int? dkLen;

  /// The hashing function used to hash the account passwords.
  ///
  /// Must be one of the following: * HMAC_SHA256 * HMAC_SHA1 * HMAC_MD5 *
  /// SCRYPT * PBKDF_SHA1 * MD5 * HMAC_SHA512 * SHA1 * BCRYPT * PBKDF2_SHA256 *
  /// SHA256 * SHA512 * STANDARD_SCRYPT * ARGON2
  ///
  /// Required.
  core.String? hashAlgorithm;

  /// Memory cost for hash calculation.
  ///
  /// Only required when the hashing function is SCRYPT.
  core.int? memoryCost;

  /// The parallelization cost parameter to be used by the STANDARD_SCRYPT
  /// hashing function.
  ///
  /// This parameter, along with block_size and cpu_mem_cost help tune the
  /// resources needed to hash a password, and should be tuned as processor
  /// speeds and memory technologies advance.
  core.int? parallelization;

  /// Password and salt order when verify password.
  /// Possible string values are:
  /// - "UNSPECIFIED_ORDER" : The order is not specified.
  /// - "SALT_AND_PASSWORD" : The order is salt first, and then password.
  /// - "PASSWORD_AND_SALT" : The order is password first, and then salt.
  core.String? passwordHashOrder;

  /// The number of rounds used for hash calculation.
  ///
  /// Only required for the following hashing functions: * MD5 * SHA1 * SHA256 *
  /// SHA512 * PBKDF_SHA1 * PBKDF2_SHA256 * SCRYPT
  core.int? rounds;

  /// One or more bytes to be inserted between the salt and plain text password.
  ///
  /// For stronger security, this should be a single non-printable character.
  core.String? saltSeparator;
  core.List<core.int> get saltSeparatorAsBytes =>
      convert.base64.decode(saltSeparator!);

  set saltSeparatorAsBytes(core.List<core.int> bytes_) {
    saltSeparator =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// If true, the service will do the following list of checks before an
  /// account is uploaded: * Duplicate emails * Duplicate federated IDs *
  /// Federated ID provider validation If the duplication exists within the list
  /// of accounts to be uploaded, it will prevent the entire list from being
  /// uploaded.
  ///
  /// If the email or federated ID is a duplicate of a user already within the
  /// project/tenant, the account will not be uploaded, but the rest of the
  /// accounts will be unaffected. If false, these checks will be skipped.
  core.bool? sanityCheck;

  /// The signer key used to hash the password.
  ///
  /// Required for the following hashing functions: * SCRYPT, * HMAC_MD5, *
  /// HMAC_SHA1, * HMAC_SHA256, * HMAC_SHA512
  core.String? signerKey;
  core.List<core.int> get signerKeyAsBytes => convert.base64.decode(signerKey!);

  set signerKeyAsBytes(core.List<core.int> bytes_) {
    signerKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The ID of the Identity Platform tenant the account belongs to.
  core.String? tenantId;

  /// A list of accounts to upload.
  ///
  /// `local_id` is required for each user; everything else is optional.
  core.List<GoogleCloudIdentitytoolkitV1UserInfo>? users;

  GoogleCloudIdentitytoolkitV1UploadAccountRequest({
    this.allowOverwrite,
    this.argon2Parameters,
    this.blockSize,
    this.cpuMemCost,
    this.delegatedProjectNumber,
    this.dkLen,
    this.hashAlgorithm,
    this.memoryCost,
    this.parallelization,
    this.passwordHashOrder,
    this.rounds,
    this.saltSeparator,
    this.sanityCheck,
    this.signerKey,
    this.tenantId,
    this.users,
  });

  GoogleCloudIdentitytoolkitV1UploadAccountRequest.fromJson(core.Map json_)
      : this(
          allowOverwrite: json_['allowOverwrite'] as core.bool?,
          argon2Parameters: json_.containsKey('argon2Parameters')
              ? GoogleCloudIdentitytoolkitV1Argon2Parameters.fromJson(
                  json_['argon2Parameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          blockSize: json_['blockSize'] as core.int?,
          cpuMemCost: json_['cpuMemCost'] as core.int?,
          delegatedProjectNumber:
              json_['delegatedProjectNumber'] as core.String?,
          dkLen: json_['dkLen'] as core.int?,
          hashAlgorithm: json_['hashAlgorithm'] as core.String?,
          memoryCost: json_['memoryCost'] as core.int?,
          parallelization: json_['parallelization'] as core.int?,
          passwordHashOrder: json_['passwordHashOrder'] as core.String?,
          rounds: json_['rounds'] as core.int?,
          saltSeparator: json_['saltSeparator'] as core.String?,
          sanityCheck: json_['sanityCheck'] as core.bool?,
          signerKey: json_['signerKey'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          users: (json_['users'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1UserInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOverwrite != null) 'allowOverwrite': allowOverwrite!,
        if (argon2Parameters != null) 'argon2Parameters': argon2Parameters!,
        if (blockSize != null) 'blockSize': blockSize!,
        if (cpuMemCost != null) 'cpuMemCost': cpuMemCost!,
        if (delegatedProjectNumber != null)
          'delegatedProjectNumber': delegatedProjectNumber!,
        if (dkLen != null) 'dkLen': dkLen!,
        if (hashAlgorithm != null) 'hashAlgorithm': hashAlgorithm!,
        if (memoryCost != null) 'memoryCost': memoryCost!,
        if (parallelization != null) 'parallelization': parallelization!,
        if (passwordHashOrder != null) 'passwordHashOrder': passwordHashOrder!,
        if (rounds != null) 'rounds': rounds!,
        if (saltSeparator != null) 'saltSeparator': saltSeparator!,
        if (sanityCheck != null) 'sanityCheck': sanityCheck!,
        if (signerKey != null) 'signerKey': signerKey!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (users != null) 'users': users!,
      };
}

/// Response message for UploadAccount.
class GoogleCloudIdentitytoolkitV1UploadAccountResponse {
  /// Detailed error info for accounts that cannot be uploaded.
  core.List<GoogleCloudIdentitytoolkitV1ErrorInfo>? error;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  GoogleCloudIdentitytoolkitV1UploadAccountResponse({
    this.error,
    this.kind,
  });

  GoogleCloudIdentitytoolkitV1UploadAccountResponse.fromJson(core.Map json_)
      : this(
          error: (json_['error'] as core.List?)
              ?.map((value) => GoogleCloudIdentitytoolkitV1ErrorInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          kind: json_['kind'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (kind != null) 'kind': kind!,
      };
}

/// An Identity Platform account's information.
class GoogleCloudIdentitytoolkitV1UserInfo {
  /// The time, in milliseconds from epoch, when the account was created.
  core.String? createdAt;

  /// Custom claims to be added to any ID tokens minted for the account.
  ///
  /// Should be at most 1,000 characters in length and in valid JSON format.
  core.String? customAttributes;

  /// Whether this account has been authenticated using SignInWithCustomToken.
  ///
  /// Output only.
  core.bool? customAuth;

  /// The date of birth set for the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? dateOfBirth;

  /// Whether the account is disabled.
  ///
  /// Disabled accounts are inaccessible except for requests bearing a Google
  /// OAuth2 credential with proper permissions.
  core.bool? disabled;

  /// The display name of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  core.String? displayName;

  /// The account's email address.
  ///
  /// The length of the email should be less than 256 characters and in the
  /// format of `name@domain.tld`. The email should also match the
  /// [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec.
  core.String? email;

  /// Whether the account can authenticate with email link.
  ///
  /// Output only.
  core.bool? emailLinkSignin;

  /// Whether the account's email address has been verified.
  core.bool? emailVerified;

  /// The first email address associated with this account.
  ///
  /// The account's initial email cannot be changed once set and is used to
  /// recover access to this account if lost via the RECOVER_EMAIL flow in
  /// GetOobCode. Should match the [RFC 822](https://tools.ietf.org/html/rfc822)
  /// addr-spec.
  core.String? initialEmail;

  /// The language preference of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? language;

  /// The last time, in milliseconds from epoch, this account was logged into.
  core.String? lastLoginAt;

  /// Timestamp when an ID token was last minted for this account.
  core.String? lastRefreshAt;

  /// The unique ID of the account.
  ///
  /// Immutable.
  core.String? localId;

  /// Information on which multi-factor authentication providers are enabled for
  /// this account.
  core.List<GoogleCloudIdentitytoolkitV1MfaEnrollment>? mfaInfo;

  /// The account's hashed password.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// [permissions](https://cloud.google.com/identity-platform/docs/access-control).
  core.String? passwordHash;
  core.List<core.int> get passwordHashAsBytes =>
      convert.base64.decode(passwordHash!);

  set passwordHashAsBytes(core.List<core.int> bytes_) {
    passwordHash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The timestamp, in milliseconds from the epoch of 1970-01-01T00:00:00Z,
  /// when the account's password was last updated.
  core.double? passwordUpdatedAt;

  /// The account's phone number.
  core.String? phoneNumber;

  /// The URL of the account's profile photo.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  core.String? photoUrl;

  /// Information about the user as provided by various Identity Providers.
  core.List<GoogleCloudIdentitytoolkitV1ProviderUserInfo>? providerUserInfo;

  /// Input only.
  ///
  /// Plain text password used to update a account's password. This field is
  /// only ever used as input in a request. Identity Platform uses
  /// cryptographically secure hashing when managing passwords and will never
  /// store or transmit a user's password in plain text.
  core.String? rawPassword;

  /// The account's password salt.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// permissions.
  core.String? salt;
  core.List<core.int> get saltAsBytes => convert.base64.decode(salt!);

  set saltAsBytes(core.List<core.int> bytes_) {
    salt =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// This account's screen name at Twitter or login name at GitHub.
  ///
  /// Output only.
  core.String? screenName;

  /// ID of the tenant this account belongs to.
  ///
  /// Only set if this account belongs to a tenant.
  core.String? tenantId;

  /// The time zone preference of the account.
  ///
  /// This account attribute is not used by Identity Platform. It is available
  /// for informational purposes only.
  ///
  /// Output only.
  core.String? timeZone;

  /// Oldest timestamp, in seconds since epoch, that an ID token should be
  /// considered valid.
  ///
  /// All ID tokens issued before this time are considered invalid.
  core.String? validSince;

  /// The version of the account's password.
  ///
  /// Only accessible by requests bearing a Google OAuth2 credential with proper
  /// permissions.
  core.int? version;

  GoogleCloudIdentitytoolkitV1UserInfo({
    this.createdAt,
    this.customAttributes,
    this.customAuth,
    this.dateOfBirth,
    this.disabled,
    this.displayName,
    this.email,
    this.emailLinkSignin,
    this.emailVerified,
    this.initialEmail,
    this.language,
    this.lastLoginAt,
    this.lastRefreshAt,
    this.localId,
    this.mfaInfo,
    this.passwordHash,
    this.passwordUpdatedAt,
    this.phoneNumber,
    this.photoUrl,
    this.providerUserInfo,
    this.rawPassword,
    this.salt,
    this.screenName,
    this.tenantId,
    this.timeZone,
    this.validSince,
    this.version,
  });

  GoogleCloudIdentitytoolkitV1UserInfo.fromJson(core.Map json_)
      : this(
          createdAt: json_['createdAt'] as core.String?,
          customAttributes: json_['customAttributes'] as core.String?,
          customAuth: json_['customAuth'] as core.bool?,
          dateOfBirth: json_['dateOfBirth'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          email: json_['email'] as core.String?,
          emailLinkSignin: json_['emailLinkSignin'] as core.bool?,
          emailVerified: json_['emailVerified'] as core.bool?,
          initialEmail: json_['initialEmail'] as core.String?,
          language: json_['language'] as core.String?,
          lastLoginAt: json_['lastLoginAt'] as core.String?,
          lastRefreshAt: json_['lastRefreshAt'] as core.String?,
          localId: json_['localId'] as core.String?,
          mfaInfo: (json_['mfaInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1MfaEnrollment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          passwordHash: json_['passwordHash'] as core.String?,
          passwordUpdatedAt:
              (json_['passwordUpdatedAt'] as core.num?)?.toDouble(),
          phoneNumber: json_['phoneNumber'] as core.String?,
          photoUrl: json_['photoUrl'] as core.String?,
          providerUserInfo: (json_['providerUserInfo'] as core.List?)
              ?.map((value) =>
                  GoogleCloudIdentitytoolkitV1ProviderUserInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          rawPassword: json_['rawPassword'] as core.String?,
          salt: json_['salt'] as core.String?,
          screenName: json_['screenName'] as core.String?,
          tenantId: json_['tenantId'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
          validSince: json_['validSince'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAt != null) 'createdAt': createdAt!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (customAuth != null) 'customAuth': customAuth!,
        if (dateOfBirth != null) 'dateOfBirth': dateOfBirth!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (emailLinkSignin != null) 'emailLinkSignin': emailLinkSignin!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (initialEmail != null) 'initialEmail': initialEmail!,
        if (language != null) 'language': language!,
        if (lastLoginAt != null) 'lastLoginAt': lastLoginAt!,
        if (lastRefreshAt != null) 'lastRefreshAt': lastRefreshAt!,
        if (localId != null) 'localId': localId!,
        if (mfaInfo != null) 'mfaInfo': mfaInfo!,
        if (passwordHash != null) 'passwordHash': passwordHash!,
        if (passwordUpdatedAt != null) 'passwordUpdatedAt': passwordUpdatedAt!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (providerUserInfo != null) 'providerUserInfo': providerUserInfo!,
        if (rawPassword != null) 'rawPassword': rawPassword!,
        if (salt != null) 'salt': salt!,
        if (screenName != null) 'screenName': screenName!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (validSince != null) 'validSince': validSince!,
        if (version != null) 'version': version!,
      };
}

/// Warning notifications for the user.
class GoogleCloudIdentitytoolkitV1UserNotification {
  /// Warning notification enum.
  ///
  /// Can be used for localization.
  /// Possible string values are:
  /// - "NOTIFICATION_CODE_UNSPECIFIED" : No notification specified.
  /// - "MISSING_LOWERCASE_CHARACTER" : Password missing lowercase character.
  /// - "MISSING_UPPERCASE_CHARACTER" : Password missing uppercase character.
  /// - "MISSING_NUMERIC_CHARACTER" : Password missing numeric character.
  /// - "MISSING_NON_ALPHANUMERIC_CHARACTER" : Password missing non alphanumeric
  /// character.
  /// - "MINIMUM_PASSWORD_LENGTH" : Password less than minimum required length.
  /// - "MAXIMUM_PASSWORD_LENGTH" : Password greater than maximum required
  /// length.
  core.String? notificationCode;

  /// Warning notification string.
  ///
  /// Can be used as fallback.
  core.String? notificationMessage;

  GoogleCloudIdentitytoolkitV1UserNotification({
    this.notificationCode,
    this.notificationMessage,
  });

  GoogleCloudIdentitytoolkitV1UserNotification.fromJson(core.Map json_)
      : this(
          notificationCode: json_['notificationCode'] as core.String?,
          notificationMessage: json_['notificationMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notificationCode != null) 'notificationCode': notificationCode!,
        if (notificationMessage != null)
          'notificationMessage': notificationMessage!,
      };
}

/// Request message for VerifyIosClient
class GoogleCloudIdentitytoolkitV1VerifyIosClientRequest {
  /// A device token that the iOS client gets after registering to APNs (Apple
  /// Push Notification service).
  core.String? appToken;

  /// Whether the app token is in the iOS sandbox.
  ///
  /// If false, the app token is in the production environment.
  core.bool? isSandbox;

  GoogleCloudIdentitytoolkitV1VerifyIosClientRequest({
    this.appToken,
    this.isSandbox,
  });

  GoogleCloudIdentitytoolkitV1VerifyIosClientRequest.fromJson(core.Map json_)
      : this(
          appToken: json_['appToken'] as core.String?,
          isSandbox: json_['isSandbox'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appToken != null) 'appToken': appToken!,
        if (isSandbox != null) 'isSandbox': isSandbox!,
      };
}

/// Response message for VerifyIosClient.
class GoogleCloudIdentitytoolkitV1VerifyIosClientResponse {
  /// Receipt of successful app token validation.
  core.String? receipt;

  /// Suggested time that the client should wait in seconds for delivery of the
  /// push notification.
  core.String? suggestedTimeout;

  GoogleCloudIdentitytoolkitV1VerifyIosClientResponse({
    this.receipt,
    this.suggestedTimeout,
  });

  GoogleCloudIdentitytoolkitV1VerifyIosClientResponse.fromJson(core.Map json_)
      : this(
          receipt: json_['receipt'] as core.String?,
          suggestedTimeout: json_['suggestedTimeout'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (receipt != null) 'receipt': receipt!,
        if (suggestedTimeout != null) 'suggestedTimeout': suggestedTimeout!,
      };
}
