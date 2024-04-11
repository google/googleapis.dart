// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Identity Toolkit API - v2
///
/// The Google Identity Toolkit API lets you use open standards to verify a
/// user's identity.
///
/// For more information, see <https://cloud.google.com/identity-platform>
///
/// Create an instance of [IdentityToolkitApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsMfaEnrollmentResource]
///   - [AccountsMfaSignInResource]
/// - [DefaultSupportedIdpsResource]
/// - [ProjectsResource]
///   - [ProjectsDefaultSupportedIdpConfigsResource]
///   - [ProjectsIdentityPlatformResource]
///   - [ProjectsInboundSamlConfigsResource]
///   - [ProjectsOauthIdpConfigsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsDefaultSupportedIdpConfigsResource]
///     - [ProjectsTenantsInboundSamlConfigsResource]
///     - [ProjectsTenantsOauthIdpConfigsResource]
/// - [V2Resource]
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
  DefaultSupportedIdpsResource get defaultSupportedIdps =>
      DefaultSupportedIdpsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  V2Resource get v2 => V2Resource(_requester);

  IdentityToolkitApi(http.Client client,
      {core.String rootUrl = 'https://identitytoolkit.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource get mfaEnrollment =>
      AccountsMfaEnrollmentResource(_requester);
  AccountsMfaSignInResource get mfaSignIn =>
      AccountsMfaSignInResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Revokes a user's token from an Identity Provider (IdP).
  ///
  /// This is done by manually providing an IdP credential, and the token types
  /// for revocation. An
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
  /// Completes with a [GoogleCloudIdentitytoolkitV2RevokeTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2RevokeTokenResponse> revokeToken(
    GoogleCloudIdentitytoolkitV2RevokeTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts:revokeToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2RevokeTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsMfaEnrollmentResource {
  final commons.ApiRequester _requester;

  AccountsMfaEnrollmentResource(commons.ApiRequester client)
      : _requester = client;

  /// Finishes enrolling a second factor for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse>
      finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts/mfaEnrollment:finalize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Step one of the MFA enrollment process.
  ///
  /// In SMS case, this sends an SMS verification code to the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts/mfaEnrollment:start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revokes one second factor from the enrolled second factors for an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2WithdrawMfaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2WithdrawMfaResponse> withdraw(
    GoogleCloudIdentitytoolkitV2WithdrawMfaRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts/mfaEnrollment:withdraw';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsMfaSignInResource {
  final commons.ApiRequester _requester;

  AccountsMfaSignInResource(commons.ApiRequester client) : _requester = client;

  /// Verifies the MFA challenge and performs sign-in
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse> finalize(
    GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts/mfaSignIn:finalize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends the MFA challenge
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2StartMfaSignInResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2StartMfaSignInResponse> start(
    GoogleCloudIdentitytoolkitV2StartMfaSignInRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts/mfaSignIn:start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DefaultSupportedIdpsResource {
  final commons.ApiRequester _requester;

  DefaultSupportedIdpsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all default supported Idps.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async
      .Future<GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse>
      list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/defaultSupportedIdps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource get defaultSupportedIdpConfigs =>
      ProjectsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsIdentityPlatformResource get identityPlatform =>
      ProjectsIdentityPlatformResource(_requester);
  ProjectsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsInboundSamlConfigsResource(_requester);
  ProjectsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsOauthIdpConfigsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve an Identity Toolkit project configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/config"
  /// Value must have pattern `^projects/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Config> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an Identity Toolkit project configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the Config resource. Example:
  /// "projects/my-awesome-project/config"
  /// Value must have pattern `^projects/\[^/\]+/config$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Fields set in the
  /// config but not included in this update mask will be ignored. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Config> updateConfig(
    GoogleCloudIdentitytoolkitAdminV2Config request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2Config.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsIdentityPlatformResource {
  final commons.ApiRequester _requester;

  ProjectsIdentityPlatformResource(commons.ApiRequester client)
      : _requester = client;

  /// Initialize Identity Platform for a Cloud project.
  ///
  /// Identity Platform is an end-to-end authentication system for third-party
  /// users to access your apps and services. These could include mobile/web
  /// apps, games, APIs and beyond. This is the publicly available variant of
  /// EnableIdentityPlatform that is only available to billing-enabled projects.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The resource name of the target project the developer wants to
  /// enable Identity Platform for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse>
      initializeAuth(
    GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
        core.Uri.encodeFull('$project') +
        '/identityPlatform:initializeAuth';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern `^projects/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource
      get defaultSupportedIdpConfigs =>
          ProjectsTenantsDefaultSupportedIdpConfigsResource(_requester);
  ProjectsTenantsInboundSamlConfigsResource get inboundSamlConfigs =>
      ProjectsTenantsInboundSamlConfigsResource(_requester);
  ProjectsTenantsOauthIdpConfigsResource get oauthIdpConfigs =>
      ProjectsTenantsOauthIdpConfigsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Create a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the tenant will be created. For
  /// example, "projects/project1".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> create(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a tenant.
  ///
  /// Requires write permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to delete.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a tenant.
  ///
  /// Requires read permission on the Tenant resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the tenant to retrieve.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// An error is returned if the resource does not exist. An empty policy is
  /// returned if the resource exists but does not have a policy set on it.
  /// Caller must have the right Google IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    GoogleIamV1GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List tenants under the given agent project.
  ///
  /// Requires read permission on the Agent project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name to list tenants for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return, capped at 1000. If
  /// not specified, the default value is 20.
  ///
  /// [pageToken] - The pagination token from the response of a previous
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a tenant.
  ///
  /// Requires write permission on the Tenant resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of a tenant. For example:
  /// "projects/{project-id}/tenants/{tenant-id}"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [updateMask] - If provided, only update fields set in the update mask.
  /// Otherwise, all settable fields will be updated. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2Tenant> patch(
    GoogleCloudIdentitytoolkitAdminV2Tenant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a resource.
  ///
  /// If the policy exists, it is replaced. Caller must have the right Google
  /// IAM permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a resource.
  ///
  /// An error is returned if the resource does not exist. A caller is not
  /// required to have Google IAM permission to make this request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsDefaultSupportedIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsDefaultSupportedIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [idpId] - The id of the Idp to create a config for. Call
  /// ListDefaultSupportedIdps for list of all default supported Idps.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      create(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String parent, {
    core.String? idpId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (idpId != null) 'idpId': [idpId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all default supported Idp configurations for an Identity Toolkit
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/defaultSupportedIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a default supported Idp configuration for an Identity Toolkit
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/defaultSupportedIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>
      patch(
    GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsInboundSamlConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsInboundSamlConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [inboundSamlConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> create(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String parent, {
    core.String? inboundSamlConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (inboundSamlConfigId != null)
        'inboundSamlConfigId': [inboundSamlConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all inbound SAML configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inboundSamlConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an inbound SAML configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/inboundSamlConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsOauthIdpConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsOauthIdpConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name where the config to be created, for
  /// example: "projects/my-awesome-project"
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [oauthIdpConfigId] - The id to use for this config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> create(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String parent, {
    core.String? oauthIdpConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (oauthIdpConfigId != null) 'oauthIdpConfigId': [oauthIdpConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to be deleted, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Oidc Idp configurations for an Identity Toolkit project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name, for example,
  /// "projects/my-awesome-project".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/oauthIdpConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update an Oidc Idp configuration for an Identity Toolkit project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored
  /// during create requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/oauthIdpConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. Empty update mask
  /// will result in updating nothing. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig> patch(
    GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V2Resource {
  final commons.ApiRequester _requester;

  V2Resource(commons.ApiRequester client) : _requester = client;

  /// Gets password policy config set on the project or tenant.
  ///
  /// Request parameters:
  ///
  /// [tenantId] - The id of a tenant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2PasswordPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2PasswordPolicy> getPasswordPolicy({
    core.String? tenantId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tenantId != null) 'tenantId': [tenantId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/passwordPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2PasswordPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets parameters needed for reCAPTCHA analysis.
  ///
  /// Request parameters:
  ///
  /// [clientType] - reCAPTCHA Enterprise uses separate site keys for different
  /// client types. Specify the client type to get the corresponding key.
  /// Possible string values are:
  /// - "CLIENT_TYPE_UNSPECIFIED" : Client type is not specified.
  /// - "CLIENT_TYPE_WEB" : Client type is web.
  /// - "CLIENT_TYPE_ANDROID" : Client type is android.
  /// - "CLIENT_TYPE_IOS" : Client type is ios.
  ///
  /// [tenantId] - The id of a tenant.
  ///
  /// [version] - The reCAPTCHA version.
  /// Possible string values are:
  /// - "RECAPTCHA_VERSION_UNSPECIFIED" : The reCAPTCHA version is not
  /// specified.
  /// - "RECAPTCHA_ENTERPRISE" : Use reCAPTCHA Enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIdentitytoolkitV2RecaptchaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIdentitytoolkitV2RecaptchaConfig> getRecaptchaConfig({
    core.String? clientType,
    core.String? tenantId,
    core.String? version,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientType != null) 'clientType': [clientType],
      if (tenantId != null) 'tenantId': [tenantId],
      if (version != null) 'version': [version],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/recaptchaConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIdentitytoolkitV2RecaptchaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Defines a policy of allowing every region by default and adding disallowed
/// regions to a disallow list.
class GoogleCloudIdentitytoolkitAdminV2AllowByDefault {
  /// Two letter unicode region codes to disallow as defined by
  /// https://cldr.unicode.org/ The full list of these region codes is here:
  /// https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  core.List<core.String>? disallowedRegions;

  GoogleCloudIdentitytoolkitAdminV2AllowByDefault({
    this.disallowedRegions,
  });

  GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromJson(core.Map json_)
      : this(
          disallowedRegions: json_.containsKey('disallowedRegions')
              ? (json_['disallowedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disallowedRegions != null) 'disallowedRegions': disallowedRegions!,
      };
}

/// Defines a policy of only allowing regions by explicitly adding them to an
/// allowlist.
class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly {
  /// Two letter unicode region codes to allow as defined by
  /// https://cldr.unicode.org/ The full list of these region codes is here:
  /// https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  core.List<core.String>? allowedRegions;

  GoogleCloudIdentitytoolkitAdminV2AllowlistOnly({
    this.allowedRegions,
  });

  GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromJson(core.Map json_)
      : this(
          allowedRegions: json_.containsKey('allowedRegions')
              ? (json_['allowedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedRegions != null) 'allowedRegions': allowedRegions!,
      };
}

/// Configuration options related to authenticating an anonymous user.
class GoogleCloudIdentitytoolkitAdminV2Anonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  core.bool? enabled;

  GoogleCloudIdentitytoolkitAdminV2Anonymous({
    this.enabled,
  });

  GoogleCloudIdentitytoolkitAdminV2Anonymous.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig {
  /// A list of Bundle ID's usable by this project
  core.List<core.String>? bundleIds;
  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig? codeFlowConfig;

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig({
    this.bundleIds,
    this.codeFlowConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(core.Map json_)
      : this(
          bundleIds: json_.containsKey('bundleIds')
              ? (json_['bundleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          codeFlowConfig: json_.containsKey('codeFlowConfig')
              ? GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(
                  json_['codeFlowConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleIds != null) 'bundleIds': bundleIds!,
        if (codeFlowConfig != null) 'codeFlowConfig': codeFlowConfig!,
      };
}

/// Configuration related to Blocking Functions.
class GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig {
  /// The user credentials to include in the JWT payload that is sent to the
  /// registered Blocking Functions.
  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials?
      forwardInboundCredentials;

  /// Map of Trigger to event type.
  ///
  /// Key should be one of the supported event types: "beforeCreate",
  /// "beforeSignIn"
  core.Map<core.String, GoogleCloudIdentitytoolkitAdminV2Trigger>? triggers;

  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig({
    this.forwardInboundCredentials,
    this.triggers,
  });

  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig.fromJson(
      core.Map json_)
      : this(
          forwardInboundCredentials:
              json_.containsKey('forwardInboundCredentials')
                  ? GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
                      .fromJson(json_['forwardInboundCredentials']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          triggers: json_.containsKey('triggers')
              ? (json_['triggers'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudIdentitytoolkitAdminV2Trigger.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardInboundCredentials != null)
          'forwardInboundCredentials': forwardInboundCredentials!,
        if (triggers != null) 'triggers': triggers!,
      };
}

/// Options related to how clients making requests on behalf of a project should
/// be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientConfig {
  /// API key that can be used when making requests for this project.
  ///
  /// Output only.
  core.String? apiKey;

  /// Firebase subdomain.
  ///
  /// Output only.
  core.String? firebaseSubdomain;

  /// Configuration related to restricting a user's ability to affect their
  /// account.
  GoogleCloudIdentitytoolkitAdminV2Permissions? permissions;

  GoogleCloudIdentitytoolkitAdminV2ClientConfig({
    this.apiKey,
    this.firebaseSubdomain,
    this.permissions,
  });

  GoogleCloudIdentitytoolkitAdminV2ClientConfig.fromJson(core.Map json_)
      : this(
          apiKey: json_.containsKey('apiKey')
              ? json_['apiKey'] as core.String
              : null,
          firebaseSubdomain: json_.containsKey('firebaseSubdomain')
              ? json_['firebaseSubdomain'] as core.String
              : null,
          permissions: json_.containsKey('permissions')
              ? GoogleCloudIdentitytoolkitAdminV2Permissions.fromJson(
                  json_['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (firebaseSubdomain != null) 'firebaseSubdomain': firebaseSubdomain!,
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Options related to how clients making requests on behalf of a tenant should
/// be configured.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig {
  /// Configuration related to restricting a user's ability to affect their
  /// account.
  GoogleCloudIdentitytoolkitAdminV2ClientPermissions? permissions;

  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig({
    this.permissions,
  });

  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig.fromJson(
      core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? GoogleCloudIdentitytoolkitAdminV2ClientPermissions.fromJson(
                  json_['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Configuration related to restricting a user's ability to affect their
/// account.
typedef GoogleCloudIdentitytoolkitAdminV2ClientPermissions = $Permissions;

/// Additional config for Apple for code flow.
class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig {
  /// Key ID for the private key.
  core.String? keyId;

  /// Private key used for signing the client secret JWT.
  core.String? privateKey;

  /// Apple Developer Team ID.
  core.String? teamId;

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig({
    this.keyId,
    this.privateKey,
    this.teamId,
  });

  GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          privateKey: json_.containsKey('privateKey')
              ? json_['privateKey'] as core.String
              : null,
          teamId: json_.containsKey('teamId')
              ? json_['teamId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (teamId != null) 'teamId': teamId!,
      };
}

/// Represents an Identity Toolkit project.
class GoogleCloudIdentitytoolkitAdminV2Config {
  /// List of domains authorized for OAuth redirects
  core.List<core.String>? authorizedDomains;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  core.bool? autodeleteAnonymousUsers;

  /// Configuration related to blocking functions.
  GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig? blockingFunctions;

  /// Options related to how clients making requests on behalf of a project
  /// should be configured.
  GoogleCloudIdentitytoolkitAdminV2ClientConfig? client;

  /// Configuration for settings related to email privacy and public visibility.
  GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig? emailPrivacyConfig;

  /// Configuration for this project's multi-factor authentication, including
  /// whether it is active and what factors can be used for the second factor
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfa;

  /// Configuration related to monitoring project activity.
  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig? monitoring;

  /// Configuration related to multi-tenant functionality.
  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig? multiTenant;

  /// The name of the Config resource.
  ///
  /// Example: "projects/my-awesome-project/config"
  ///
  /// Output only.
  core.String? name;

  /// Configuration related to sending notifications to users.
  GoogleCloudIdentitytoolkitAdminV2NotificationConfig? notification;

  /// The project level password policy configuration.
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig? passwordPolicyConfig;

  /// Configuration related to quotas.
  GoogleCloudIdentitytoolkitAdminV2QuotaConfig? quota;

  /// The project-level reCAPTCHA config.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig? recaptchaConfig;

  /// Configuration related to local sign in methods.
  GoogleCloudIdentitytoolkitAdminV2SignInConfig? signIn;

  /// Configures which regions are enabled for SMS verification code sending.
  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig? smsRegionConfig;

  /// The subtype of this config.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBTYPE_UNSPECIFIED" : Default value. Do not use.
  /// - "IDENTITY_PLATFORM" : An Identity Platform project.
  /// - "FIREBASE_AUTH" : A Firebase Authentication project.
  core.String? subtype;

  GoogleCloudIdentitytoolkitAdminV2Config({
    this.authorizedDomains,
    this.autodeleteAnonymousUsers,
    this.blockingFunctions,
    this.client,
    this.emailPrivacyConfig,
    this.mfa,
    this.monitoring,
    this.multiTenant,
    this.name,
    this.notification,
    this.passwordPolicyConfig,
    this.quota,
    this.recaptchaConfig,
    this.signIn,
    this.smsRegionConfig,
    this.subtype,
  });

  GoogleCloudIdentitytoolkitAdminV2Config.fromJson(core.Map json_)
      : this(
          authorizedDomains: json_.containsKey('authorizedDomains')
              ? (json_['authorizedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          autodeleteAnonymousUsers:
              json_.containsKey('autodeleteAnonymousUsers')
                  ? json_['autodeleteAnonymousUsers'] as core.bool
                  : null,
          blockingFunctions: json_.containsKey('blockingFunctions')
              ? GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
                  .fromJson(json_['blockingFunctions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          client: json_.containsKey('client')
              ? GoogleCloudIdentitytoolkitAdminV2ClientConfig.fromJson(
                  json_['client'] as core.Map<core.String, core.dynamic>)
              : null,
          emailPrivacyConfig: json_.containsKey('emailPrivacyConfig')
              ? GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromJson(
                  json_['emailPrivacyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          mfa: json_.containsKey('mfa')
              ? GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
                  json_['mfa'] as core.Map<core.String, core.dynamic>)
              : null,
          monitoring: json_.containsKey('monitoring')
              ? GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          multiTenant: json_.containsKey('multiTenant')
              ? GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig.fromJson(
                  json_['multiTenant'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notification: json_.containsKey('notification')
              ? GoogleCloudIdentitytoolkitAdminV2NotificationConfig.fromJson(
                  json_['notification'] as core.Map<core.String, core.dynamic>)
              : null,
          passwordPolicyConfig: json_.containsKey('passwordPolicyConfig')
              ? GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromJson(
                  json_['passwordPolicyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          quota: json_.containsKey('quota')
              ? GoogleCloudIdentitytoolkitAdminV2QuotaConfig.fromJson(
                  json_['quota'] as core.Map<core.String, core.dynamic>)
              : null,
          recaptchaConfig: json_.containsKey('recaptchaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromJson(
                  json_['recaptchaConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          signIn: json_.containsKey('signIn')
              ? GoogleCloudIdentitytoolkitAdminV2SignInConfig.fromJson(
                  json_['signIn'] as core.Map<core.String, core.dynamic>)
              : null,
          smsRegionConfig: json_.containsKey('smsRegionConfig')
              ? GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromJson(
                  json_['smsRegionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          subtype: json_.containsKey('subtype')
              ? json_['subtype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedDomains != null) 'authorizedDomains': authorizedDomains!,
        if (autodeleteAnonymousUsers != null)
          'autodeleteAnonymousUsers': autodeleteAnonymousUsers!,
        if (blockingFunctions != null) 'blockingFunctions': blockingFunctions!,
        if (client != null) 'client': client!,
        if (emailPrivacyConfig != null)
          'emailPrivacyConfig': emailPrivacyConfig!,
        if (mfa != null) 'mfa': mfa!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (multiTenant != null) 'multiTenant': multiTenant!,
        if (name != null) 'name': name!,
        if (notification != null) 'notification': notification!,
        if (passwordPolicyConfig != null)
          'passwordPolicyConfig': passwordPolicyConfig!,
        if (quota != null) 'quota': quota!,
        if (recaptchaConfig != null) 'recaptchaConfig': recaptchaConfig!,
        if (signIn != null) 'signIn': signIn!,
        if (smsRegionConfig != null) 'smsRegionConfig': smsRegionConfig!,
        if (subtype != null) 'subtype': subtype!,
      };
}

/// Custom strength options to enforce on user passwords.
typedef GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions
    = $V2CustomStrengthOptions;

/// Standard Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp {
  /// Description of the Idp
  core.String? description;

  /// Id the of Idp
  core.String? idpId;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp({
    this.description,
    this.idpId,
  });

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          idpId:
              json_.containsKey('idpId') ? json_['idpId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (idpId != null) 'idpId': idpId!,
      };
}

/// Configurations options for authenticating with a the standard set of
/// Identity Toolkit-trusted IDPs.
class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig {
  /// Additional config for Apple-based projects.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig? appleSignInConfig;

  /// OAuth client ID.
  core.String? clientId;

  /// OAuth client secret.
  core.String? clientSecret;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The name of the DefaultSupportedIdpConfig resource, for example:
  /// "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  core.String? name;

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig({
    this.appleSignInConfig,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.name,
  });

  GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig.fromJson(
      core.Map json_)
      : this(
          appleSignInConfig: json_.containsKey('appleSignInConfig')
              ? GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromJson(
                  json_['appleSignInConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appleSignInConfig != null) 'appleSignInConfig': appleSignInConfig!,
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (enabled != null) 'enabled': enabled!,
        if (name != null) 'name': name!,
      };
}

/// Information of custom domain DNS verification.
///
/// By default, default_domain will be used. A custom domain can be configured
/// using VerifyCustomDomain.
class GoogleCloudIdentitytoolkitAdminV2DnsInfo {
  /// The applied verified custom domain.
  ///
  /// Output only.
  core.String? customDomain;

  /// The current verification state of the custom domain.
  ///
  /// The custom domain will only be used once the domain verification is
  /// successful.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERIFICATION_STATE_UNSPECIFIED" : Default value. Do not use.
  /// - "NOT_STARTED" : The verification has not started.
  /// - "IN_PROGRESS" : The verification is in progress.
  /// - "FAILED" : The verification failed.
  /// - "SUCCEEDED" : The verification succeeded and is ready to be applied.
  core.String? customDomainState;

  /// The timestamp of initial request for the current domain verification.
  ///
  /// Output only.
  core.String? domainVerificationRequestTime;

  /// The custom domain that's to be verified.
  ///
  /// Output only.
  core.String? pendingCustomDomain;

  /// Whether to use custom domain.
  core.bool? useCustomDomain;

  GoogleCloudIdentitytoolkitAdminV2DnsInfo({
    this.customDomain,
    this.customDomainState,
    this.domainVerificationRequestTime,
    this.pendingCustomDomain,
    this.useCustomDomain,
  });

  GoogleCloudIdentitytoolkitAdminV2DnsInfo.fromJson(core.Map json_)
      : this(
          customDomain: json_.containsKey('customDomain')
              ? json_['customDomain'] as core.String
              : null,
          customDomainState: json_.containsKey('customDomainState')
              ? json_['customDomainState'] as core.String
              : null,
          domainVerificationRequestTime:
              json_.containsKey('domainVerificationRequestTime')
                  ? json_['domainVerificationRequestTime'] as core.String
                  : null,
          pendingCustomDomain: json_.containsKey('pendingCustomDomain')
              ? json_['pendingCustomDomain'] as core.String
              : null,
          useCustomDomain: json_.containsKey('useCustomDomain')
              ? json_['useCustomDomain'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDomain != null) 'customDomain': customDomain!,
        if (customDomainState != null) 'customDomainState': customDomainState!,
        if (domainVerificationRequestTime != null)
          'domainVerificationRequestTime': domainVerificationRequestTime!,
        if (pendingCustomDomain != null)
          'pendingCustomDomain': pendingCustomDomain!,
        if (useCustomDomain != null) 'useCustomDomain': useCustomDomain!,
      };
}

/// Configuration options related to authenticating a user by their email
/// address.
class GoogleCloudIdentitytoolkitAdminV2Email {
  /// Whether email auth is enabled for the project or not.
  core.bool? enabled;

  /// Whether a password is required for email auth or not.
  ///
  /// If true, both an email and password must be provided to sign in. If false,
  /// a user may sign in via either email/password or email link.
  core.bool? passwordRequired;

  GoogleCloudIdentitytoolkitAdminV2Email({
    this.enabled,
    this.passwordRequired,
  });

  GoogleCloudIdentitytoolkitAdminV2Email.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          passwordRequired: json_.containsKey('passwordRequired')
              ? json_['passwordRequired'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (passwordRequired != null) 'passwordRequired': passwordRequired!,
      };
}

/// Configuration for settings related to email privacy and public visibility.
///
/// Settings in this config protect against email enumeration, but may make some
/// trade-offs in user-friendliness.
class GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig {
  /// Migrates the project to a state of improved email privacy.
  ///
  /// For example certain error codes are more generic to avoid giving away
  /// information on whether the account exists. In addition, this disables
  /// certain features that as a side-effect allow user enumeration. Enabling
  /// this toggle disables the fetchSignInMethodsForEmail functionality and
  /// changing the user's email to an unverified email. It is recommended to
  /// remove dependence on this functionality and enable this toggle to improve
  /// user privacy.
  core.bool? enableImprovedEmailPrivacy;

  GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig({
    this.enableImprovedEmailPrivacy,
  });

  GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromJson(core.Map json_)
      : this(
          enableImprovedEmailPrivacy:
              json_.containsKey('enableImprovedEmailPrivacy')
                  ? json_['enableImprovedEmailPrivacy'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableImprovedEmailPrivacy != null)
          'enableImprovedEmailPrivacy': enableImprovedEmailPrivacy!,
      };
}

/// Email template.
///
/// The subject and body fields can contain the following placeholders which
/// will be replaced with the appropriate values: %LINK% - The link to use to
/// redeem the send OOB code. %EMAIL% - The email where the email is being sent.
/// %NEW_EMAIL% - The new email being set for the account (when applicable).
/// %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The user's
/// display name.
class GoogleCloudIdentitytoolkitAdminV2EmailTemplate {
  /// Email body
  core.String? body;

  /// Email body format
  /// Possible string values are:
  /// - "BODY_FORMAT_UNSPECIFIED" : Default value. Do not use.
  /// - "PLAIN_TEXT" : Plain text
  /// - "HTML" : HTML
  core.String? bodyFormat;

  /// Whether the body or subject of the email is customized.
  ///
  /// Output only.
  core.bool? customized;

  /// Reply-to address
  core.String? replyTo;

  /// Sender display name
  core.String? senderDisplayName;

  /// Local part of From address
  core.String? senderLocalPart;

  /// Subject of the email
  core.String? subject;

  GoogleCloudIdentitytoolkitAdminV2EmailTemplate({
    this.body,
    this.bodyFormat,
    this.customized,
    this.replyTo,
    this.senderDisplayName,
    this.senderLocalPart,
    this.subject,
  });

  GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          bodyFormat: json_.containsKey('bodyFormat')
              ? json_['bodyFormat'] as core.String
              : null,
          customized: json_.containsKey('customized')
              ? json_['customized'] as core.bool
              : null,
          replyTo: json_.containsKey('replyTo')
              ? json_['replyTo'] as core.String
              : null,
          senderDisplayName: json_.containsKey('senderDisplayName')
              ? json_['senderDisplayName'] as core.String
              : null,
          senderLocalPart: json_.containsKey('senderLocalPart')
              ? json_['senderLocalPart'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? json_['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (bodyFormat != null) 'bodyFormat': bodyFormat!,
        if (customized != null) 'customized': customized!,
        if (replyTo != null) 'replyTo': replyTo!,
        if (senderDisplayName != null) 'senderDisplayName': senderDisplayName!,
        if (senderLocalPart != null) 'senderLocalPart': senderLocalPart!,
        if (subject != null) 'subject': subject!,
      };
}

/// Indicates which credentials to pass to the registered Blocking Functions.
class GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials {
  /// Whether to pass the user's OAuth identity provider's access token.
  core.bool? accessToken;

  /// Whether to pass the user's OIDC identity provider's ID token.
  core.bool? idToken;

  /// Whether to pass the user's OAuth identity provider's refresh token.
  core.bool? refreshToken;

  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials.fromJson(
      core.Map json_)
      : this(
          accessToken: json_.containsKey('accessToken')
              ? json_['accessToken'] as core.bool
              : null,
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.bool
              : null,
          refreshToken: json_.containsKey('refreshToken')
              ? json_['refreshToken'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (idToken != null) 'idToken': idToken!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// History information of the hash algorithm and key.
///
/// Different accounts' passwords may be generated by different version.
class GoogleCloudIdentitytoolkitAdminV2HashConfig {
  /// Different password hash algorithms used in Identity Toolkit.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HASH_ALGORITHM_UNSPECIFIED" : Default value. Do not use.
  /// - "HMAC_SHA256" : HMAC_SHA256
  /// - "HMAC_SHA1" : HMAC_SHA1
  /// - "HMAC_MD5" : HMAC_MD5
  /// - "SCRYPT" : SCRYPT
  /// - "PBKDF_SHA1" : PBKDF_SHA1
  /// - "MD5" : MD5
  /// - "HMAC_SHA512" : HMAC_SHA512
  /// - "SHA1" : SHA1
  /// - "BCRYPT" : BCRYPT
  /// - "PBKDF2_SHA256" : PBKDF2_SHA256
  /// - "SHA256" : SHA256
  /// - "SHA512" : SHA512
  /// - "STANDARD_SCRYPT" : STANDARD_SCRYPT
  core.String? algorithm;

  /// Memory cost for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms. See
  /// https://tools.ietf.org/html/rfc7914 for explanation of field.
  ///
  /// Output only.
  core.int? memoryCost;

  /// How many rounds for hash calculation.
  ///
  /// Used by scrypt and other similar password derivation algorithms.
  ///
  /// Output only.
  core.int? rounds;

  /// Non-printable character to be inserted between the salt and plain text
  /// password in base64.
  ///
  /// Output only.
  core.String? saltSeparator;

  /// Signer key in base64.
  ///
  /// Output only.
  core.String? signerKey;

  GoogleCloudIdentitytoolkitAdminV2HashConfig({
    this.algorithm,
    this.memoryCost,
    this.rounds,
    this.saltSeparator,
    this.signerKey,
  });

  GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          memoryCost: json_.containsKey('memoryCost')
              ? json_['memoryCost'] as core.int
              : null,
          rounds:
              json_.containsKey('rounds') ? json_['rounds'] as core.int : null,
          saltSeparator: json_.containsKey('saltSeparator')
              ? json_['saltSeparator'] as core.String
              : null,
          signerKey: json_.containsKey('signerKey')
              ? json_['signerKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (memoryCost != null) 'memoryCost': memoryCost!,
        if (rounds != null) 'rounds': rounds!,
        if (saltSeparator != null) 'saltSeparator': saltSeparator!,
        if (signerKey != null) 'signerKey': signerKey!,
      };
}

/// The IDP's certificate data to verify the signature in the SAMLResponse
/// issued by the IDP.
class GoogleCloudIdentitytoolkitAdminV2IdpCertificate {
  /// The x509 certificate
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate({
    this.x509Certificate,
  });

  GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(core.Map json_)
      : this(
          x509Certificate: json_.containsKey('x509Certificate')
              ? json_['x509Certificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML IdP (Identity Provider) configuration when the project acts as the
/// relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfig {
  /// IDP's public keys for verifying signature in the assertions.
  core.List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>? idpCertificates;

  /// Unique identifier for all SAML entities.
  core.String? idpEntityId;

  /// Indicates if outbounding SAMLRequest should be signed.
  core.bool? signRequest;

  /// URL to send Authentication request to.
  core.String? ssoUrl;

  GoogleCloudIdentitytoolkitAdminV2IdpConfig({
    this.idpCertificates,
    this.idpEntityId,
    this.signRequest,
    this.ssoUrl,
  });

  GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(core.Map json_)
      : this(
          idpCertificates: json_.containsKey('idpCertificates')
              ? (json_['idpCertificates'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          idpEntityId: json_.containsKey('idpEntityId')
              ? json_['idpEntityId'] as core.String
              : null,
          signRequest: json_.containsKey('signRequest')
              ? json_['signRequest'] as core.bool
              : null,
          ssoUrl: json_.containsKey('ssoUrl')
              ? json_['ssoUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpCertificates != null) 'idpCertificates': idpCertificates!,
        if (idpEntityId != null) 'idpEntityId': idpEntityId!,
        if (signRequest != null) 'signRequest': signRequest!,
        if (ssoUrl != null) 'ssoUrl': ssoUrl!,
      };
}

/// A pair of SAML RP-IDP configurations when the project acts as the relying
/// party.
class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig {
  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as
  /// the relying party.
  GoogleCloudIdentitytoolkitAdminV2IdpConfig? idpConfig;

  /// The name of the InboundSamlConfig resource, for example:
  /// 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The SAML SP (Service Provider) configuration when the project acts as the
  /// relying party to receive and accept an authentication assertion issued by
  /// a SAML identity provider.
  GoogleCloudIdentitytoolkitAdminV2SpConfig? spConfig;

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig({
    this.displayName,
    this.enabled,
    this.idpConfig,
    this.name,
    this.spConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          idpConfig: json_.containsKey('idpConfig')
              ? GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromJson(
                  json_['idpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          spConfig: json_.containsKey('spConfig')
              ? GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(
                  json_['spConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (idpConfig != null) 'idpConfig': idpConfig!,
        if (name != null) 'name': name!,
        if (spConfig != null) 'spConfig': spConfig!,
      };
}

/// Settings that the tenants will inherit from project level.
class GoogleCloudIdentitytoolkitAdminV2Inheritance {
  /// Whether to allow the tenant to inherit custom domains, email templates,
  /// and custom SMTP settings.
  ///
  /// If true, email sent from tenant will follow the project level email
  /// sending configurations. If false (by default), emails will go with the
  /// default settings with no customizations.
  core.bool? emailSendingConfig;

  GoogleCloudIdentitytoolkitAdminV2Inheritance({
    this.emailSendingConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(core.Map json_)
      : this(
          emailSendingConfig: json_.containsKey('emailSendingConfig')
              ? json_['emailSendingConfig'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailSendingConfig != null)
          'emailSendingConfig': emailSendingConfig!,
      };
}

/// Request for InitializeIdentityPlatform.
typedef GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
    = $Empty;

/// Response for InitializeIdentityPlatform.
///
/// Empty for now.
typedef GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
    = $Empty;

/// Response for DefaultSupportedIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>?
      defaultSupportedIdpConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse({
    this.defaultSupportedIdpConfigs,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse.fromJson(
      core.Map json_)
      : this(
          defaultSupportedIdpConfigs: json_
                  .containsKey('defaultSupportedIdpConfigs')
              ? (json_['defaultSupportedIdpConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdpConfigs != null)
          'defaultSupportedIdpConfigs': defaultSupportedIdpConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListDefaultSupportedIdps
class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>?
      defaultSupportedIdps;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse({
    this.defaultSupportedIdps,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse.fromJson(
      core.Map json_)
      : this(
          defaultSupportedIdps: json_.containsKey('defaultSupportedIdps')
              ? (json_['defaultSupportedIdps'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSupportedIdps != null)
          'defaultSupportedIdps': defaultSupportedIdps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListInboundSamlConfigs
class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse {
  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>?
      inboundSamlConfigs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse({
    this.inboundSamlConfigs,
    this.nextPageToken,
  });

  GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse.fromJson(
      core.Map json_)
      : this(
          inboundSamlConfigs: json_.containsKey('inboundSamlConfigs')
              ? (json_['inboundSamlConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inboundSamlConfigs != null)
          'inboundSamlConfigs': inboundSamlConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListOAuthIdpConfigs
class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The set of configs.
  core.List<GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>? oauthIdpConfigs;

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse({
    this.nextPageToken,
    this.oauthIdpConfigs,
  });

  GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          oauthIdpConfigs: json_.containsKey('oauthIdpConfigs')
              ? (json_['oauthIdpConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (oauthIdpConfigs != null) 'oauthIdpConfigs': oauthIdpConfigs!,
      };
}

/// Response message for ListTenants.
class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse {
  /// The token to get the next page of results.
  core.String? nextPageToken;

  /// A list of tenants under the given agent project.
  core.List<GoogleCloudIdentitytoolkitAdminV2Tenant>? tenants;

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse({
    this.nextPageToken,
    this.tenants,
  });

  GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tenants: json_.containsKey('tenants')
              ? (json_['tenants'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenants != null) 'tenants': tenants!,
      };
}

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig {
  /// Configuration for logging requests made to this project to Stackdriver
  /// Logging
  GoogleCloudIdentitytoolkitAdminV2RequestLogging? requestLogging;

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig({
    this.requestLogging,
  });

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(core.Map json_)
      : this(
          requestLogging: json_.containsKey('requestLogging')
              ? GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromJson(
                  json_['requestLogging']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestLogging != null) 'requestLogging': requestLogging!,
      };
}

/// Options related to MultiFactor Authentication for the project.
class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig {
  /// A list of usable second factors for this project.
  core.List<core.String>? enabledProviders;

  /// A list of usable second factors for this project along with their
  /// configurations.
  ///
  /// This field does not support phone based MFA, for that use the
  /// 'enabled_providers' field.
  core.List<GoogleCloudIdentitytoolkitAdminV2ProviderConfig>? providerConfigs;

  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Illegal State, should not be used.
  /// - "DISABLED" : Multi-factor authentication cannot be used for this project
  /// - "ENABLED" : Multi-factor authentication can be used for this project
  /// - "MANDATORY" : Multi-factor authentication is required for this project.
  /// Users from this project must authenticate with the second factor.
  core.String? state;

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig({
    this.enabledProviders,
    this.providerConfigs,
    this.state,
  });

  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
      core.Map json_)
      : this(
          enabledProviders: json_.containsKey('enabledProviders')
              ? (json_['enabledProviders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          providerConfigs: json_.containsKey('providerConfigs')
              ? (json_['providerConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledProviders != null) 'enabledProviders': enabledProviders!,
        if (providerConfigs != null) 'providerConfigs': providerConfigs!,
        if (state != null) 'state': state!,
      };
}

/// Configuration related to multi-tenant functionality.
class GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig {
  /// Whether this project can have tenants or not.
  core.bool? allowTenants;

  /// The default cloud parent org or folder that the tenant project should be
  /// created under.
  ///
  /// The parent resource name should be in the format of "/", such as
  /// "folders/123" or "organizations/456". If the value is not set, the tenant
  /// will be created under the same organization or folder as the agent
  /// project.
  core.String? defaultTenantLocation;

  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig({
    this.allowTenants,
    this.defaultTenantLocation,
  });

  GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig.fromJson(core.Map json_)
      : this(
          allowTenants: json_.containsKey('allowTenants')
              ? json_['allowTenants'] as core.bool
              : null,
          defaultTenantLocation: json_.containsKey('defaultTenantLocation')
              ? json_['defaultTenantLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowTenants != null) 'allowTenants': allowTenants!,
        if (defaultTenantLocation != null)
          'defaultTenantLocation': defaultTenantLocation!,
      };
}

/// Configuration related to sending notifications to users.
class GoogleCloudIdentitytoolkitAdminV2NotificationConfig {
  /// Default locale used for email and SMS in IETF BCP 47 format.
  core.String? defaultLocale;

  /// Options for email sending.
  GoogleCloudIdentitytoolkitAdminV2SendEmail? sendEmail;

  /// Options for SMS sending.
  GoogleCloudIdentitytoolkitAdminV2SendSms? sendSms;

  GoogleCloudIdentitytoolkitAdminV2NotificationConfig({
    this.defaultLocale,
    this.sendEmail,
    this.sendSms,
  });

  GoogleCloudIdentitytoolkitAdminV2NotificationConfig.fromJson(core.Map json_)
      : this(
          defaultLocale: json_.containsKey('defaultLocale')
              ? json_['defaultLocale'] as core.String
              : null,
          sendEmail: json_.containsKey('sendEmail')
              ? GoogleCloudIdentitytoolkitAdminV2SendEmail.fromJson(
                  json_['sendEmail'] as core.Map<core.String, core.dynamic>)
              : null,
          sendSms: json_.containsKey('sendSms')
              ? GoogleCloudIdentitytoolkitAdminV2SendSms.fromJson(
                  json_['sendSms'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLocale != null) 'defaultLocale': defaultLocale!,
        if (sendEmail != null) 'sendEmail': sendEmail!,
        if (sendSms != null) 'sendSms': sendSms!,
      };
}

/// Configuration options for authenticating with an OAuth IDP.
class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig {
  /// The client id of an OAuth client.
  core.String? clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  core.String? clientSecret;

  /// The config's display name set by developers.
  core.String? displayName;

  /// True if allows the user to sign in with the provider.
  core.bool? enabled;

  /// For OIDC Idps, the issuer identifier.
  core.String? issuer;

  /// The name of the OAuthIdpConfig resource, for example:
  /// 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'.
  ///
  /// Ignored during create requests.
  core.String? name;

  /// The response type to request for in the OAuth authorization flow.
  ///
  /// You can set either `id_token` or `code` to true, but not both. Setting
  /// both types to be simultaneously true (`{code: true, id_token: true}`) is
  /// not yet supported.
  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType? responseType;

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.responseType,
  });

  GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig.fromJson(core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          issuer: json_.containsKey('issuer')
              ? json_['issuer'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          responseType: json_.containsKey('responseType')
              ? GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(
                  json_['responseType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (issuer != null) 'issuer': issuer!,
        if (name != null) 'name': name!,
        if (responseType != null) 'responseType': responseType!,
      };
}

/// The response type to request for in the OAuth authorization flow.
///
/// You can set either `id_token` or `code` to true, but not both. Setting both
/// types to be simultaneously true (`{code: true, id_token: true}`) is not yet
/// supported. See
/// https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a
/// mapping of response type to OAuth 2.0 flow.
class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  core.bool? code;

  /// If true, ID token is returned from IdP's authorization endpoint.
  core.bool? idToken;

  /// Do not use.
  ///
  /// The `token` response type is not supported at the moment.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? token;

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType({
    this.code,
    this.idToken,
    this.token,
  });

  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.bool : null,
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.bool
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (idToken != null) 'idToken': idToken!,
        if (token != null) 'token': token!,
      };
}

/// The configuration for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig {
  /// Users must have a password compliant with the password policy to sign-in.
  core.bool? forceUpgradeOnSignin;

  /// The last time the password policy on the project was updated.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// Which enforcement mode to use for the password policy.
  /// Possible string values are:
  /// - "PASSWORD_POLICY_ENFORCEMENT_STATE_UNSPECIFIED" : Illegal State, should
  /// not be used.
  /// - "OFF" : Password Policy will not be used on the project.
  /// - "ENFORCE" : Passwords non-compliant with the password policy will be
  /// rejected with an error thrown.
  core.String? passwordPolicyEnforcementState;

  /// Must be of length 1.
  ///
  /// Contains the strength attributes for the password policy.
  core.List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>?
      passwordPolicyVersions;

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig({
    this.forceUpgradeOnSignin,
    this.lastUpdateTime,
    this.passwordPolicyEnforcementState,
    this.passwordPolicyVersions,
  });

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromJson(core.Map json_)
      : this(
          forceUpgradeOnSignin: json_.containsKey('forceUpgradeOnSignin')
              ? json_['forceUpgradeOnSignin'] as core.bool
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          passwordPolicyEnforcementState:
              json_.containsKey('passwordPolicyEnforcementState')
                  ? json_['passwordPolicyEnforcementState'] as core.String
                  : null,
          passwordPolicyVersions: json_.containsKey('passwordPolicyVersions')
              ? (json_['passwordPolicyVersions'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forceUpgradeOnSignin != null)
          'forceUpgradeOnSignin': forceUpgradeOnSignin!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (passwordPolicyEnforcementState != null)
          'passwordPolicyEnforcementState': passwordPolicyEnforcementState!,
        if (passwordPolicyVersions != null)
          'passwordPolicyVersions': passwordPolicyVersions!,
      };
}

/// The strength attributes for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion {
  /// The custom strength options enforced by the password policy.
  GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions? customStrengthOptions;

  /// schema version number for the password policy
  ///
  /// Output only.
  core.int? schemaVersion;

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion({
    this.customStrengthOptions,
    this.schemaVersion,
  });

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion.fromJson(
      core.Map json_)
      : this(
          customStrengthOptions: json_.containsKey('customStrengthOptions')
              ? GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions.fromJson(
                  json_['customStrengthOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          schemaVersion: json_.containsKey('schemaVersion')
              ? json_['schemaVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customStrengthOptions != null)
          'customStrengthOptions': customStrengthOptions!,
        if (schemaVersion != null) 'schemaVersion': schemaVersion!,
      };
}

/// Configuration related to restricting a user's ability to affect their
/// account.
typedef GoogleCloudIdentitytoolkitAdminV2Permissions = $Permissions;

/// Configuration options related to authenticated a user by their phone number.
class GoogleCloudIdentitytoolkitAdminV2PhoneNumber {
  /// Whether phone number auth is enabled for the project or not.
  core.bool? enabled;

  /// A map of that can be used for phone auth testing.
  core.Map<core.String, core.String>? testPhoneNumbers;

  GoogleCloudIdentitytoolkitAdminV2PhoneNumber({
    this.enabled,
    this.testPhoneNumbers,
  });

  GoogleCloudIdentitytoolkitAdminV2PhoneNumber.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          testPhoneNumbers: json_.containsKey('testPhoneNumbers')
              ? (json_['testPhoneNumbers']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (testPhoneNumbers != null) 'testPhoneNumbers': testPhoneNumbers!,
      };
}

/// ProviderConfig describes the supported MFA providers along with their
/// configurations.
class GoogleCloudIdentitytoolkitAdminV2ProviderConfig {
  /// Describes the state of the MultiFactor Authentication type.
  /// Possible string values are:
  /// - "MFA_STATE_UNSPECIFIED" : Illegal State, should not be used.
  /// - "DISABLED" : Multi-factor authentication cannot be used for this
  /// project.
  /// - "ENABLED" : Multi-factor authentication can be used for this project.
  /// - "MANDATORY" : Multi-factor authentication is required for this project.
  /// Users from this project must authenticate with the second factor.
  core.String? state;

  /// TOTP MFA provider config for this project.
  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig? totpProviderConfig;

  GoogleCloudIdentitytoolkitAdminV2ProviderConfig({
    this.state,
    this.totpProviderConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2ProviderConfig.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          totpProviderConfig: json_.containsKey('totpProviderConfig')
              ? GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromJson(
                  json_['totpProviderConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (totpProviderConfig != null)
          'totpProviderConfig': totpProviderConfig!,
      };
}

/// Configuration related to quotas.
class GoogleCloudIdentitytoolkitAdminV2QuotaConfig {
  /// Quota for the Signup endpoint, if overwritten.
  ///
  /// Signup quota is measured in sign ups per project per hour per IP.
  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota? signUpQuotaConfig;

  GoogleCloudIdentitytoolkitAdminV2QuotaConfig({
    this.signUpQuotaConfig,
  });

  GoogleCloudIdentitytoolkitAdminV2QuotaConfig.fromJson(core.Map json_)
      : this(
          signUpQuotaConfig: json_.containsKey('signUpQuotaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2TemporaryQuota.fromJson(
                  json_['signUpQuotaConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signUpQuotaConfig != null) 'signUpQuotaConfig': signUpQuotaConfig!,
      };
}

/// The reCAPTCHA Enterprise integration config.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig {
  /// The reCAPTCHA config for email/password provider, containing the
  /// enforcement status.
  ///
  /// The email/password provider contains all related user flows protected by
  /// reCAPTCHA.
  /// Possible string values are:
  /// - "RECAPTCHA_PROVIDER_ENFORCEMENT_STATE_UNSPECIFIED" : Enforcement state
  /// has not been set.
  /// - "OFF" : Unenforced.
  /// - "AUDIT" : reCAPTCHA assessment is created, result is not used to
  /// enforce.
  /// - "ENFORCE" : reCAPTCHA assessment is created, result is used to enforce.
  core.String? emailPasswordEnforcementState;

  /// The managed rules for authentication action based on reCAPTCHA scores.
  ///
  /// The rules are shared across providers for a given tenant project.
  core.List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>?
      managedRules;

  /// The reCAPTCHA keys.
  core.List<GoogleCloudIdentitytoolkitAdminV2RecaptchaKey>? recaptchaKeys;

  /// Whether to use the account defender for reCAPTCHA assessment.
  ///
  /// Defaults to `false`.
  core.bool? useAccountDefender;

  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig({
    this.emailPasswordEnforcementState,
    this.managedRules,
    this.recaptchaKeys,
    this.useAccountDefender,
  });

  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromJson(core.Map json_)
      : this(
          emailPasswordEnforcementState:
              json_.containsKey('emailPasswordEnforcementState')
                  ? json_['emailPasswordEnforcementState'] as core.String
                  : null,
          managedRules: json_.containsKey('managedRules')
              ? (json_['managedRules'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          recaptchaKeys: json_.containsKey('recaptchaKeys')
              ? (json_['recaptchaKeys'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2RecaptchaKey.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useAccountDefender: json_.containsKey('useAccountDefender')
              ? json_['useAccountDefender'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailPasswordEnforcementState != null)
          'emailPasswordEnforcementState': emailPasswordEnforcementState!,
        if (managedRules != null) 'managedRules': managedRules!,
        if (recaptchaKeys != null) 'recaptchaKeys': recaptchaKeys!,
        if (useAccountDefender != null)
          'useAccountDefender': useAccountDefender!,
      };
}

/// The reCAPTCHA key config.
///
/// reCAPTCHA Enterprise offers different keys for different client platforms.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaKey {
  /// The reCAPTCHA Enterprise key resource name, e.g.
  /// "projects/{project}/keys/{key}"
  core.String? key;

  /// The client's platform type.
  /// Possible string values are:
  /// - "CLIENT_TYPE_UNSPECIFIED" : Client type is not specified.
  /// - "WEB" : Client type is web.
  /// - "IOS" : Client type is iOS.
  /// - "ANDROID" : Client type is Android.
  core.String? type;

  GoogleCloudIdentitytoolkitAdminV2RecaptchaKey({
    this.key,
    this.type,
  });

  GoogleCloudIdentitytoolkitAdminV2RecaptchaKey.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (type != null) 'type': type!,
      };
}

/// The config for a reCAPTCHA managed rule.
///
/// Models a single interval \[start_score, end_score\]. The start_score is
/// implicit. It is either the closest smaller end_score (if one is available)
/// or 0. Intervals in aggregate span \[0, 1\] without overlapping.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule {
  /// The action taken if the reCAPTCHA score of a request is within the
  /// interval \[start_score, end_score\].
  /// Possible string values are:
  /// - "RECAPTCHA_ACTION_UNSPECIFIED" : The reCAPTCHA action is not specified.
  /// - "BLOCK" : The reCAPTCHA-protected request will be blocked.
  core.String? action;

  /// The end score (inclusive) of the score range for an action.
  ///
  /// Must be a value between 0.0 and 1.0, at 11 discrete values; e.g. 0, 0.1,
  /// 0.2, 0.3, ... 0.9, 1.0. A score of 0.0 indicates the riskiest request
  /// (likely a bot), whereas 1.0 indicates the safest request (likely a human).
  /// See
  /// https://cloud.google.com/recaptcha-enterprise/docs/interpret-assessment.
  core.double? endScore;

  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule({
    this.action,
    this.endScore,
  });

  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          endScore: json_.containsKey('endScore')
              ? (json_['endScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (endScore != null) 'endScore': endScore!,
      };
}

/// Configuration for logging requests made to this project to Stackdriver
/// Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLogging {
  /// Whether logging is enabled for this project or not.
  core.bool? enabled;

  GoogleCloudIdentitytoolkitAdminV2RequestLogging({
    this.enabled,
  });

  GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Options for email sending.
class GoogleCloudIdentitytoolkitAdminV2SendEmail {
  /// action url in email template.
  core.String? callbackUri;

  /// Email template for change email
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? changeEmailTemplate;

  /// Information of custom domain DNS verification.
  GoogleCloudIdentitytoolkitAdminV2DnsInfo? dnsInfo;

  /// Reset password email template for legacy Firebase V1 app.
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? legacyResetPasswordTemplate;

  /// The method used for sending an email.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Email method unspecified.
  /// - "DEFAULT" : Sending email on behalf of developer.
  /// - "CUSTOM_SMTP" : Sending email using SMTP configuration provided by
  /// developers.
  core.String? method;

  /// Email template for reset password
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? resetPasswordTemplate;

  /// Email template for reverting second factor addition emails
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate?
      revertSecondFactorAdditionTemplate;

  /// Use a custom SMTP relay
  GoogleCloudIdentitytoolkitAdminV2Smtp? smtp;

  /// Email template for verify email
  GoogleCloudIdentitytoolkitAdminV2EmailTemplate? verifyEmailTemplate;

  GoogleCloudIdentitytoolkitAdminV2SendEmail({
    this.callbackUri,
    this.changeEmailTemplate,
    this.dnsInfo,
    this.legacyResetPasswordTemplate,
    this.method,
    this.resetPasswordTemplate,
    this.revertSecondFactorAdditionTemplate,
    this.smtp,
    this.verifyEmailTemplate,
  });

  GoogleCloudIdentitytoolkitAdminV2SendEmail.fromJson(core.Map json_)
      : this(
          callbackUri: json_.containsKey('callbackUri')
              ? json_['callbackUri'] as core.String
              : null,
          changeEmailTemplate: json_.containsKey('changeEmailTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  json_['changeEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dnsInfo: json_.containsKey('dnsInfo')
              ? GoogleCloudIdentitytoolkitAdminV2DnsInfo.fromJson(
                  json_['dnsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          legacyResetPasswordTemplate:
              json_.containsKey('legacyResetPasswordTemplate')
                  ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                      json_['legacyResetPasswordTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          resetPasswordTemplate: json_.containsKey('resetPasswordTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  json_['resetPasswordTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revertSecondFactorAdditionTemplate:
              json_.containsKey('revertSecondFactorAdditionTemplate')
                  ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                      json_['revertSecondFactorAdditionTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          smtp: json_.containsKey('smtp')
              ? GoogleCloudIdentitytoolkitAdminV2Smtp.fromJson(
                  json_['smtp'] as core.Map<core.String, core.dynamic>)
              : null,
          verifyEmailTemplate: json_.containsKey('verifyEmailTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2EmailTemplate.fromJson(
                  json_['verifyEmailTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackUri != null) 'callbackUri': callbackUri!,
        if (changeEmailTemplate != null)
          'changeEmailTemplate': changeEmailTemplate!,
        if (dnsInfo != null) 'dnsInfo': dnsInfo!,
        if (legacyResetPasswordTemplate != null)
          'legacyResetPasswordTemplate': legacyResetPasswordTemplate!,
        if (method != null) 'method': method!,
        if (resetPasswordTemplate != null)
          'resetPasswordTemplate': resetPasswordTemplate!,
        if (revertSecondFactorAdditionTemplate != null)
          'revertSecondFactorAdditionTemplate':
              revertSecondFactorAdditionTemplate!,
        if (smtp != null) 'smtp': smtp!,
        if (verifyEmailTemplate != null)
          'verifyEmailTemplate': verifyEmailTemplate!,
      };
}

/// Options for SMS sending.
class GoogleCloudIdentitytoolkitAdminV2SendSms {
  /// The template to use when sending an SMS.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2SmsTemplate? smsTemplate;

  /// Whether to use the accept_language header for SMS.
  core.bool? useDeviceLocale;

  GoogleCloudIdentitytoolkitAdminV2SendSms({
    this.smsTemplate,
    this.useDeviceLocale,
  });

  GoogleCloudIdentitytoolkitAdminV2SendSms.fromJson(core.Map json_)
      : this(
          smsTemplate: json_.containsKey('smsTemplate')
              ? GoogleCloudIdentitytoolkitAdminV2SmsTemplate.fromJson(
                  json_['smsTemplate'] as core.Map<core.String, core.dynamic>)
              : null,
          useDeviceLocale: json_.containsKey('useDeviceLocale')
              ? json_['useDeviceLocale'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (smsTemplate != null) 'smsTemplate': smsTemplate!,
        if (useDeviceLocale != null) 'useDeviceLocale': useDeviceLocale!,
      };
}

/// Configuration related to local sign in methods.
class GoogleCloudIdentitytoolkitAdminV2SignInConfig {
  /// Whether to allow more than one account to have the same email.
  core.bool? allowDuplicateEmails;

  /// Configuration options related to authenticating an anonymous user.
  GoogleCloudIdentitytoolkitAdminV2Anonymous? anonymous;

  /// Configuration options related to authenticating a user by their email
  /// address.
  GoogleCloudIdentitytoolkitAdminV2Email? email;

  /// Hash config information.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2HashConfig? hashConfig;

  /// Configuration options related to authenticated a user by their phone
  /// number.
  GoogleCloudIdentitytoolkitAdminV2PhoneNumber? phoneNumber;

  GoogleCloudIdentitytoolkitAdminV2SignInConfig({
    this.allowDuplicateEmails,
    this.anonymous,
    this.email,
    this.hashConfig,
    this.phoneNumber,
  });

  GoogleCloudIdentitytoolkitAdminV2SignInConfig.fromJson(core.Map json_)
      : this(
          allowDuplicateEmails: json_.containsKey('allowDuplicateEmails')
              ? json_['allowDuplicateEmails'] as core.bool
              : null,
          anonymous: json_.containsKey('anonymous')
              ? GoogleCloudIdentitytoolkitAdminV2Anonymous.fromJson(
                  json_['anonymous'] as core.Map<core.String, core.dynamic>)
              : null,
          email: json_.containsKey('email')
              ? GoogleCloudIdentitytoolkitAdminV2Email.fromJson(
                  json_['email'] as core.Map<core.String, core.dynamic>)
              : null,
          hashConfig: json_.containsKey('hashConfig')
              ? GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
                  json_['hashConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? GoogleCloudIdentitytoolkitAdminV2PhoneNumber.fromJson(
                  json_['phoneNumber'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowDuplicateEmails != null)
          'allowDuplicateEmails': allowDuplicateEmails!,
        if (anonymous != null) 'anonymous': anonymous!,
        if (email != null) 'email': email!,
        if (hashConfig != null) 'hashConfig': hashConfig!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Configures the regions where users are allowed to send verification SMS for
/// the project or tenant.
///
/// This is based on the calling code of the destination phone number.
class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig {
  /// A policy of allowing SMS to every region by default and adding disallowed
  /// regions to a disallow list.
  GoogleCloudIdentitytoolkitAdminV2AllowByDefault? allowByDefault;

  /// A policy of only allowing regions by explicitly adding them to an
  /// allowlist.
  GoogleCloudIdentitytoolkitAdminV2AllowlistOnly? allowlistOnly;

  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig({
    this.allowByDefault,
    this.allowlistOnly,
  });

  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromJson(core.Map json_)
      : this(
          allowByDefault: json_.containsKey('allowByDefault')
              ? GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromJson(
                  json_['allowByDefault']
                      as core.Map<core.String, core.dynamic>)
              : null,
          allowlistOnly: json_.containsKey('allowlistOnly')
              ? GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromJson(
                  json_['allowlistOnly'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowByDefault != null) 'allowByDefault': allowByDefault!,
        if (allowlistOnly != null) 'allowlistOnly': allowlistOnly!,
      };
}

/// The template to use when sending an SMS.
class GoogleCloudIdentitytoolkitAdminV2SmsTemplate {
  /// The SMS's content.
  ///
  /// Can contain the following placeholders which will be replaced with the
  /// appropriate values: %APP_NAME% - For Android or iOS apps, the app's
  /// display name. For web apps, the domain hosting the application.
  /// %LOGIN_CODE% - The OOB code being sent in the SMS.
  ///
  /// Output only.
  core.String? content;

  GoogleCloudIdentitytoolkitAdminV2SmsTemplate({
    this.content,
  });

  GoogleCloudIdentitytoolkitAdminV2SmsTemplate.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
      };
}

/// Configuration for SMTP relay
class GoogleCloudIdentitytoolkitAdminV2Smtp {
  /// SMTP relay host
  core.String? host;

  /// SMTP relay password
  core.String? password;

  /// SMTP relay port
  core.int? port;

  /// SMTP security mode.
  /// Possible string values are:
  /// - "SECURITY_MODE_UNSPECIFIED" : Default value. Do not use.
  /// - "SSL" : SSL mode
  /// - "START_TLS" : START_TLS mode
  core.String? securityMode;

  /// Sender email for the SMTP relay
  core.String? senderEmail;

  /// SMTP relay username
  core.String? username;

  GoogleCloudIdentitytoolkitAdminV2Smtp({
    this.host,
    this.password,
    this.port,
    this.securityMode,
    this.senderEmail,
    this.username,
  });

  GoogleCloudIdentitytoolkitAdminV2Smtp.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          securityMode: json_.containsKey('securityMode')
              ? json_['securityMode'] as core.String
              : null,
          senderEmail: json_.containsKey('senderEmail')
              ? json_['senderEmail'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (securityMode != null) 'securityMode': securityMode!,
        if (senderEmail != null) 'senderEmail': senderEmail!,
        if (username != null) 'username': username!,
      };
}

/// The SP's certificate data for IDP to verify the SAMLRequest generated by the
/// SP.
class GoogleCloudIdentitytoolkitAdminV2SpCertificate {
  /// Timestamp of the cert expiration instance.
  core.String? expiresAt;

  /// Self-signed public certificate.
  core.String? x509Certificate;

  GoogleCloudIdentitytoolkitAdminV2SpCertificate({
    this.expiresAt,
    this.x509Certificate,
  });

  GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(core.Map json_)
      : this(
          expiresAt: json_.containsKey('expiresAt')
              ? json_['expiresAt'] as core.String
              : null,
          x509Certificate: json_.containsKey('x509Certificate')
              ? json_['x509Certificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiresAt != null) 'expiresAt': expiresAt!,
        if (x509Certificate != null) 'x509Certificate': x509Certificate!,
      };
}

/// The SAML SP (Service Provider) configuration when the project acts as the
/// relying party to receive and accept an authentication assertion issued by a
/// SAML identity provider.
class GoogleCloudIdentitytoolkitAdminV2SpConfig {
  /// Callback URI where responses from IDP are handled.
  core.String? callbackUri;

  /// Public certificates generated by the server to verify the signature in
  /// SAMLRequest in the SP-initiated flow.
  ///
  /// Output only.
  core.List<GoogleCloudIdentitytoolkitAdminV2SpCertificate>? spCertificates;

  /// Unique identifier for all SAML entities.
  core.String? spEntityId;

  GoogleCloudIdentitytoolkitAdminV2SpConfig({
    this.callbackUri,
    this.spCertificates,
    this.spEntityId,
  });

  GoogleCloudIdentitytoolkitAdminV2SpConfig.fromJson(core.Map json_)
      : this(
          callbackUri: json_.containsKey('callbackUri')
              ? json_['callbackUri'] as core.String
              : null,
          spCertificates: json_.containsKey('spCertificates')
              ? (json_['spCertificates'] as core.List)
                  .map((value) =>
                      GoogleCloudIdentitytoolkitAdminV2SpCertificate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spEntityId: json_.containsKey('spEntityId')
              ? json_['spEntityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackUri != null) 'callbackUri': callbackUri!,
        if (spCertificates != null) 'spCertificates': spCertificates!,
        if (spEntityId != null) 'spEntityId': spEntityId!,
      };
}

/// Temporary quota increase / decrease
class GoogleCloudIdentitytoolkitAdminV2TemporaryQuota {
  /// Corresponds to the 'refill_token_count' field in QuotaServer config
  core.String? quota;

  /// How long this quota will be active for
  core.String? quotaDuration;

  /// When this quota will take effect
  core.String? startTime;

  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  GoogleCloudIdentitytoolkitAdminV2TemporaryQuota.fromJson(core.Map json_)
      : this(
          quota:
              json_.containsKey('quota') ? json_['quota'] as core.String : null,
          quotaDuration: json_.containsKey('quotaDuration')
              ? json_['quotaDuration'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quota != null) 'quota': quota!,
        if (quotaDuration != null) 'quotaDuration': quotaDuration!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A Tenant contains configuration for the tenant in a multi-tenant project.
class GoogleCloudIdentitytoolkitAdminV2Tenant {
  /// Whether to allow email/password user authentication.
  core.bool? allowPasswordSignup;

  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  core.bool? autodeleteAnonymousUsers;

  /// Options related to how clients making requests on behalf of a project
  /// should be configured.
  GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig? client;

  /// Whether authentication is disabled for the tenant.
  ///
  /// If true, the users under the disabled tenant are not allowed to sign-in.
  /// Admins of the disabled tenant are not able to manage its users.
  core.bool? disableAuth;

  /// Display name of the tenant.
  core.String? displayName;

  /// Configuration for settings related to email privacy and public visibility.
  GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig? emailPrivacyConfig;

  /// Whether to enable anonymous user authentication.
  core.bool? enableAnonymousUser;

  /// Whether to enable email link user authentication.
  core.bool? enableEmailLinkSignin;

  /// Hash config information of a tenant for display on Pantheon.
  ///
  /// This can only be displayed on Pantheon to avoid the sensitive information
  /// to get accidentally leaked. Only returned in GetTenant response to
  /// restrict reading of this information. Requires
  /// firebaseauth.configs.getHashConfig permission on the agent project for
  /// returning this field.
  ///
  /// Output only.
  GoogleCloudIdentitytoolkitAdminV2HashConfig? hashConfig;

  /// Specify the settings that the tenant could inherit.
  GoogleCloudIdentitytoolkitAdminV2Inheritance? inheritance;

  /// The tenant-level configuration of MFA options.
  GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig? mfaConfig;

  /// Configuration related to monitoring project activity.
  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig? monitoring;

  /// Resource name of a tenant.
  ///
  /// For example: "projects/{project-id}/tenants/{tenant-id}"
  ///
  /// Output only.
  core.String? name;

  /// The tenant-level password policy config
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig? passwordPolicyConfig;

  /// The tenant-level reCAPTCHA config.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig? recaptchaConfig;

  /// Configures which regions are enabled for SMS verification code sending.
  GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig? smsRegionConfig;

  /// A map of pairs that can be used for MFA.
  ///
  /// The phone number should be in E.164 format
  /// (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be
  /// added (error will be thrown once exceeded).
  core.Map<core.String, core.String>? testPhoneNumbers;

  GoogleCloudIdentitytoolkitAdminV2Tenant({
    this.allowPasswordSignup,
    this.autodeleteAnonymousUsers,
    this.client,
    this.disableAuth,
    this.displayName,
    this.emailPrivacyConfig,
    this.enableAnonymousUser,
    this.enableEmailLinkSignin,
    this.hashConfig,
    this.inheritance,
    this.mfaConfig,
    this.monitoring,
    this.name,
    this.passwordPolicyConfig,
    this.recaptchaConfig,
    this.smsRegionConfig,
    this.testPhoneNumbers,
  });

  GoogleCloudIdentitytoolkitAdminV2Tenant.fromJson(core.Map json_)
      : this(
          allowPasswordSignup: json_.containsKey('allowPasswordSignup')
              ? json_['allowPasswordSignup'] as core.bool
              : null,
          autodeleteAnonymousUsers:
              json_.containsKey('autodeleteAnonymousUsers')
                  ? json_['autodeleteAnonymousUsers'] as core.bool
                  : null,
          client: json_.containsKey('client')
              ? GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
                  .fromJson(
                      json_['client'] as core.Map<core.String, core.dynamic>)
              : null,
          disableAuth: json_.containsKey('disableAuth')
              ? json_['disableAuth'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          emailPrivacyConfig: json_.containsKey('emailPrivacyConfig')
              ? GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig.fromJson(
                  json_['emailPrivacyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableAnonymousUser: json_.containsKey('enableAnonymousUser')
              ? json_['enableAnonymousUser'] as core.bool
              : null,
          enableEmailLinkSignin: json_.containsKey('enableEmailLinkSignin')
              ? json_['enableEmailLinkSignin'] as core.bool
              : null,
          hashConfig: json_.containsKey('hashConfig')
              ? GoogleCloudIdentitytoolkitAdminV2HashConfig.fromJson(
                  json_['hashConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inheritance: json_.containsKey('inheritance')
              ? GoogleCloudIdentitytoolkitAdminV2Inheritance.fromJson(
                  json_['inheritance'] as core.Map<core.String, core.dynamic>)
              : null,
          mfaConfig: json_.containsKey('mfaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig.fromJson(
                  json_['mfaConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          monitoring: json_.containsKey('monitoring')
              ? GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          passwordPolicyConfig: json_.containsKey('passwordPolicyConfig')
              ? GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromJson(
                  json_['passwordPolicyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recaptchaConfig: json_.containsKey('recaptchaConfig')
              ? GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromJson(
                  json_['recaptchaConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          smsRegionConfig: json_.containsKey('smsRegionConfig')
              ? GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig.fromJson(
                  json_['smsRegionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          testPhoneNumbers: json_.containsKey('testPhoneNumbers')
              ? (json_['testPhoneNumbers']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPasswordSignup != null)
          'allowPasswordSignup': allowPasswordSignup!,
        if (autodeleteAnonymousUsers != null)
          'autodeleteAnonymousUsers': autodeleteAnonymousUsers!,
        if (client != null) 'client': client!,
        if (disableAuth != null) 'disableAuth': disableAuth!,
        if (displayName != null) 'displayName': displayName!,
        if (emailPrivacyConfig != null)
          'emailPrivacyConfig': emailPrivacyConfig!,
        if (enableAnonymousUser != null)
          'enableAnonymousUser': enableAnonymousUser!,
        if (enableEmailLinkSignin != null)
          'enableEmailLinkSignin': enableEmailLinkSignin!,
        if (hashConfig != null) 'hashConfig': hashConfig!,
        if (inheritance != null) 'inheritance': inheritance!,
        if (mfaConfig != null) 'mfaConfig': mfaConfig!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (name != null) 'name': name!,
        if (passwordPolicyConfig != null)
          'passwordPolicyConfig': passwordPolicyConfig!,
        if (recaptchaConfig != null) 'recaptchaConfig': recaptchaConfig!,
        if (smsRegionConfig != null) 'smsRegionConfig': smsRegionConfig!,
        if (testPhoneNumbers != null) 'testPhoneNumbers': testPhoneNumbers!,
      };
}

/// TotpMFAProviderConfig represents the TOTP based MFA provider.
class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig {
  /// The allowed number of adjacent intervals that will be used for
  /// verification to avoid clock skew.
  core.int? adjacentIntervals;

  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig({
    this.adjacentIntervals,
  });

  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromJson(
      core.Map json_)
      : this(
          adjacentIntervals: json_.containsKey('adjacentIntervals')
              ? json_['adjacentIntervals'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adjacentIntervals != null) 'adjacentIntervals': adjacentIntervals!,
      };
}

/// Synchronous Cloud Function with HTTP Trigger
class GoogleCloudIdentitytoolkitAdminV2Trigger {
  /// HTTP URI trigger for the Cloud Function.
  core.String? functionUri;

  /// When the trigger was changed.
  core.String? updateTime;

  GoogleCloudIdentitytoolkitAdminV2Trigger({
    this.functionUri,
    this.updateTime,
  });

  GoogleCloudIdentitytoolkitAdminV2Trigger.fromJson(core.Map json_)
      : this(
          functionUri: json_.containsKey('functionUri')
              ? json_['functionUri'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (functionUri != null) 'functionUri': functionUri!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The information required to auto-retrieve an SMS.
typedef GoogleCloudIdentitytoolkitV2AutoRetrievalInfo = $AutoRetrievalInfo;

/// Custom strength options to enforce on user passwords.
typedef GoogleCloudIdentitytoolkitV2CustomStrengthOptions
    = $V2CustomStrengthOptions;

/// Finishes enrolling a second factor for the user.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest {
  /// Display name which is entered by users to distinguish between different
  /// second factors with same type or different type.
  core.String? displayName;

  /// ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  /// Verification information for TOTP.
  GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo?
      totpVerificationInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest({
    this.displayName,
    this.idToken,
    this.phoneVerificationInfo,
    this.tenantId,
    this.totpVerificationInfo,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest.fromJson(
      core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          phoneVerificationInfo: json_.containsKey('phoneVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
                  .fromJson(json_['phoneVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
          totpVerificationInfo: json_.containsKey('totpVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo
                  .fromJson(json_['totpVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (idToken != null) 'idToken': idToken!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (totpVerificationInfo != null)
          'totpVerificationInfo': totpVerificationInfo!,
      };
}

/// FinalizeMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse {
  /// ID token updated to reflect MFA enrollment.
  core.String? idToken;

  /// Auxiliary auth info specific to phone auth.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token updated to reflect MFA enrollment.
  core.String? refreshToken;

  /// Auxiliary auth info specific to TOTP auth.
  GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo?
      totpAuthInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse({
    this.idToken,
    this.phoneAuthInfo,
    this.refreshToken,
    this.totpAuthInfo,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse.fromJson(
      core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          phoneAuthInfo: json_.containsKey('phoneAuthInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
                  .fromJson(json_['phoneAuthInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          refreshToken: json_.containsKey('refreshToken')
              ? json_['refreshToken'] as core.String
              : null,
          totpAuthInfo: json_.containsKey('totpAuthInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
                  .fromJson(json_['totpAuthInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
        if (totpAuthInfo != null) 'totpAuthInfo': totpAuthInfo!,
      };
}

/// Phone Verification info for a FinalizeMfa request.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Uses for "instant" phone number verification though GmsCore.
  core.String? androidVerificationProof;

  /// User-entered verification code.
  core.String? code;

  /// Required if Android verification proof is presented.
  core.String? phoneNumber;

  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo({
    this.androidVerificationProof,
    this.code,
    this.phoneNumber,
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo.fromJson(
      core.Map json_)
      : this(
          androidVerificationProof:
              json_.containsKey('androidVerificationProof')
                  ? json_['androidVerificationProof'] as core.String
                  : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          sessionInfo: json_.containsKey('sessionInfo')
              ? json_['sessionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (code != null) 'code': code!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Phone Verification info for a FinalizeMfa response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo {
  /// Android only.
  ///
  /// Long-lived replacement for valid code tied to android device.
  core.String? androidVerificationProof;

  /// Android only.
  ///
  /// Expiration time of verification proof in seconds.
  core.String? androidVerificationProofExpireTime;

  /// For Android verification proof.
  core.String? phoneNumber;

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo({
    this.androidVerificationProof,
    this.androidVerificationProofExpireTime,
    this.phoneNumber,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo.fromJson(
      core.Map json_)
      : this(
          androidVerificationProof:
              json_.containsKey('androidVerificationProof')
                  ? json_['androidVerificationProof'] as core.String
                  : null,
          androidVerificationProofExpireTime:
              json_.containsKey('androidVerificationProofExpireTime')
                  ? json_['androidVerificationProofExpireTime'] as core.String
                  : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidVerificationProof != null)
          'androidVerificationProof': androidVerificationProof!,
        if (androidVerificationProofExpireTime != null)
          'androidVerificationProofExpireTime':
              androidVerificationProofExpireTime!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Finalizes sign-in by verifying MFA challenge.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest {
  /// The MFA enrollment ID from the user's list of current MFA enrollments.
  core.String? mfaEnrollmentId;

  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Proof of completion of the SMS based MFA challenge.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo?
      phoneVerificationInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  /// Proof of completion of the TOTP based MFA challenge.
  GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo? totpVerificationInfo;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest({
    this.mfaEnrollmentId,
    this.mfaPendingCredential,
    this.phoneVerificationInfo,
    this.tenantId,
    this.totpVerificationInfo,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest.fromJson(core.Map json_)
      : this(
          mfaEnrollmentId: json_.containsKey('mfaEnrollmentId')
              ? json_['mfaEnrollmentId'] as core.String
              : null,
          mfaPendingCredential: json_.containsKey('mfaPendingCredential')
              ? json_['mfaPendingCredential'] as core.String
              : null,
          phoneVerificationInfo: json_.containsKey('phoneVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
                  .fromJson(json_['phoneVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
          totpVerificationInfo: json_.containsKey('totpVerificationInfo')
              ? GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo.fromJson(
                  json_['totpVerificationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneVerificationInfo != null)
          'phoneVerificationInfo': phoneVerificationInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (totpVerificationInfo != null)
          'totpVerificationInfo': totpVerificationInfo!,
      };
}

/// FinalizeMfaSignIn response.
class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse {
  /// ID token for the authenticated user.
  core.String? idToken;

  /// Extra phone auth info, including android verification proof.
  GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo? phoneAuthInfo;

  /// Refresh token for the authenticated user.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse({
    this.idToken,
    this.phoneAuthInfo,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse.fromJson(core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          phoneAuthInfo: json_.containsKey('phoneAuthInfo')
              ? GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
                  .fromJson(json_['phoneAuthInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          refreshToken: json_.containsKey('refreshToken')
              ? json_['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneAuthInfo != null) 'phoneAuthInfo': phoneAuthInfo!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Mfa request info specific to TOTP auth for FinalizeMfa.
class GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo {
  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  /// User-entered verification code.
  core.String? verificationCode;

  GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo({
    this.sessionInfo,
    this.verificationCode,
  });

  GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo.fromJson(
      core.Map json_)
      : this(
          sessionInfo: json_.containsKey('sessionInfo')
              ? json_['sessionInfo'] as core.String
              : null,
          verificationCode: json_.containsKey('verificationCode')
              ? json_['verificationCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (verificationCode != null) 'verificationCode': verificationCode!,
      };
}

/// Mfa response info specific to TOTP auth for FinalizeMfa.
typedef GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
    = $Empty;

/// TOTP verification info for FinalizeMfaSignInRequest.
class GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo {
  /// User-entered verification code.
  core.String? verificationCode;

  GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo({
    this.verificationCode,
  });

  GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo.fromJson(core.Map json_)
      : this(
          verificationCode: json_.containsKey('verificationCode')
              ? json_['verificationCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verificationCode != null) 'verificationCode': verificationCode!,
      };
}

/// Configuration for password policy.
class GoogleCloudIdentitytoolkitV2PasswordPolicy {
  /// Allowed characters which satisfy the non_alphanumeric requirement.
  ///
  /// Output only.
  core.List<core.String>? allowedNonAlphanumericCharacters;

  /// The custom strength options enforced by the password policy.
  GoogleCloudIdentitytoolkitV2CustomStrengthOptions? customStrengthOptions;

  /// Which enforcement mode to use for the password policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENFORCEMENT_STATE_UNSPECIFIED" : Enforcement state has not been set.
  /// - "OFF" : Password Policy will not be used on the project.
  /// - "ENFORCE" : Passwords non-compliant with the password policy will be
  /// rejected with an error thrown.
  core.String? enforcementState;

  /// Users must have a password compliant with the password policy to sign-in.
  core.bool? forceUpgradeOnSignin;

  /// schema version number for the password policy
  ///
  /// Output only.
  core.int? schemaVersion;

  GoogleCloudIdentitytoolkitV2PasswordPolicy({
    this.allowedNonAlphanumericCharacters,
    this.customStrengthOptions,
    this.enforcementState,
    this.forceUpgradeOnSignin,
    this.schemaVersion,
  });

  GoogleCloudIdentitytoolkitV2PasswordPolicy.fromJson(core.Map json_)
      : this(
          allowedNonAlphanumericCharacters:
              json_.containsKey('allowedNonAlphanumericCharacters')
                  ? (json_['allowedNonAlphanumericCharacters'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          customStrengthOptions: json_.containsKey('customStrengthOptions')
              ? GoogleCloudIdentitytoolkitV2CustomStrengthOptions.fromJson(
                  json_['customStrengthOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enforcementState: json_.containsKey('enforcementState')
              ? json_['enforcementState'] as core.String
              : null,
          forceUpgradeOnSignin: json_.containsKey('forceUpgradeOnSignin')
              ? json_['forceUpgradeOnSignin'] as core.bool
              : null,
          schemaVersion: json_.containsKey('schemaVersion')
              ? json_['schemaVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedNonAlphanumericCharacters != null)
          'allowedNonAlphanumericCharacters': allowedNonAlphanumericCharacters!,
        if (customStrengthOptions != null)
          'customStrengthOptions': customStrengthOptions!,
        if (enforcementState != null) 'enforcementState': enforcementState!,
        if (forceUpgradeOnSignin != null)
          'forceUpgradeOnSignin': forceUpgradeOnSignin!,
        if (schemaVersion != null) 'schemaVersion': schemaVersion!,
      };
}

/// Configuration for reCAPTCHA
class GoogleCloudIdentitytoolkitV2RecaptchaConfig {
  /// The reCAPTCHA enforcement state for the providers that GCIP supports
  /// reCAPTCHA protection.
  core.List<GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState>?
      recaptchaEnforcementState;

  /// The reCAPTCHA Enterprise key resource name, e.g.
  /// "projects/{project}/keys/{key}".
  ///
  /// This will only be returned when the reCAPTCHA enforcement state is AUDIT
  /// or ENFORCE on at least one of the reCAPTCHA providers.
  core.String? recaptchaKey;

  GoogleCloudIdentitytoolkitV2RecaptchaConfig({
    this.recaptchaEnforcementState,
    this.recaptchaKey,
  });

  GoogleCloudIdentitytoolkitV2RecaptchaConfig.fromJson(core.Map json_)
      : this(
          recaptchaEnforcementState:
              json_.containsKey('recaptchaEnforcementState')
                  ? (json_['recaptchaEnforcementState'] as core.List)
                      .map((value) =>
                          GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          recaptchaKey: json_.containsKey('recaptchaKey')
              ? json_['recaptchaKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recaptchaEnforcementState != null)
          'recaptchaEnforcementState': recaptchaEnforcementState!,
        if (recaptchaKey != null) 'recaptchaKey': recaptchaKey!,
      };
}

/// Enforcement states for reCAPTCHA protection.
class GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState {
  /// The reCAPTCHA enforcement state for the provider.
  /// Possible string values are:
  /// - "ENFORCEMENT_STATE_UNSPECIFIED" : Enforcement state has not been set.
  /// - "OFF" : Unenforced.
  /// - "AUDIT" : reCAPTCHA assessment is created, result is not used to
  /// enforce.
  /// - "ENFORCE" : reCAPTCHA assessment is created, result is used to enforce.
  core.String? enforcementState;

  /// The provider that has reCAPTCHA protection.
  /// Possible string values are:
  /// - "RECAPTCHA_PROVIDER_UNSPECIFIED" : reCAPTCHA provider not specified
  /// - "EMAIL_PASSWORD_PROVIDER" : Email password provider
  core.String? provider;

  GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState({
    this.enforcementState,
    this.provider,
  });

  GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState.fromJson(core.Map json_)
      : this(
          enforcementState: json_.containsKey('enforcementState')
              ? json_['enforcementState'] as core.String
              : null,
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforcementState != null) 'enforcementState': enforcementState!,
        if (provider != null) 'provider': provider!,
      };
}

/// Request message for RevokeToken.
class GoogleCloudIdentitytoolkitV2RevokeTokenRequest {
  /// A valid Identity Platform ID token to link the account.
  ///
  /// If there was a successful token revocation request on the account and no
  /// tokens are generated after the revocation, the duplicate requests will be
  /// ignored and returned immediately.
  ///
  /// Required.
  core.String? idToken;

  /// The idp provider for the token.
  ///
  /// Currently only supports Apple Idp. The format should be "apple.com".
  ///
  /// Required.
  core.String? providerId;

  /// The redirect URI provided in the initial authorization request made by the
  /// client to the IDP.
  ///
  /// The URI must use the HTTPS protocol, include a domain name, and can't
  /// contain an IP address or localhost. Required if token_type is CODE.
  core.String? redirectUri;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  /// The token to be revoked.
  ///
  /// If an authorization_code is passed in, the API will first exchange the
  /// code for access token and then revoke the token exchanged.
  ///
  /// Required.
  core.String? token;

  /// The type of the token to be revoked.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TOKEN_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "REFRESH_TOKEN" : Token type is refresh_token.
  /// - "ACCESS_TOKEN" : Token type is access_token.
  /// - "CODE" : Token type is authorization_code.
  core.String? tokenType;

  GoogleCloudIdentitytoolkitV2RevokeTokenRequest({
    this.idToken,
    this.providerId,
    this.redirectUri,
    this.tenantId,
    this.token,
    this.tokenType,
  });

  GoogleCloudIdentitytoolkitV2RevokeTokenRequest.fromJson(core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          providerId: json_.containsKey('providerId')
              ? json_['providerId'] as core.String
              : null,
          redirectUri: json_.containsKey('redirectUri')
              ? json_['redirectUri'] as core.String
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          tokenType: json_.containsKey('tokenType')
              ? json_['tokenType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (providerId != null) 'providerId': providerId!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (token != null) 'token': token!,
        if (tokenType != null) 'tokenType': tokenType!,
      };
}

/// Response message for RevokeToken.
///
/// Empty for now.
typedef GoogleCloudIdentitytoolkitV2RevokeTokenResponse = $Empty;

/// Sends MFA enrollment verification SMS for a user.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneEnrollmentInfo;

  /// The ID of the Identity Platform tenant that the user enrolling MFA belongs
  /// to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  /// Sign-in info specific to TOTP auth.
  GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo?
      totpEnrollmentInfo;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest({
    this.idToken,
    this.phoneEnrollmentInfo,
    this.tenantId,
    this.totpEnrollmentInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest.fromJson(core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          phoneEnrollmentInfo: json_.containsKey('phoneEnrollmentInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
                  json_['phoneEnrollmentInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
          totpEnrollmentInfo: json_.containsKey('totpEnrollmentInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
                  .fromJson(json_['totpEnrollmentInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (phoneEnrollmentInfo != null)
          'phoneEnrollmentInfo': phoneEnrollmentInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
        if (totpEnrollmentInfo != null)
          'totpEnrollmentInfo': totpEnrollmentInfo!,
      };
}

/// StartMfaEnrollment response.
class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse {
  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneSessionInfo;

  /// Enrollment response info specific to TOTP auth.
  GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo?
      totpSessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse({
    this.phoneSessionInfo,
    this.totpSessionInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse.fromJson(
      core.Map json_)
      : this(
          phoneSessionInfo: json_.containsKey('phoneSessionInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
                  json_['phoneSessionInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          totpSessionInfo: json_.containsKey('totpSessionInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo
                  .fromJson(json_['totpSessionInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneSessionInfo != null) 'phoneSessionInfo': phoneSessionInfo!,
        if (totpSessionInfo != null) 'totpSessionInfo': totpSessionInfo!,
      };
}

/// App Verification info for a StartMfa request.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo {
  /// Android only.
  ///
  /// Used by Google Play Services to identify the app for auto-retrieval.
  GoogleCloudIdentitytoolkitV2AutoRetrievalInfo? autoRetrievalInfo;

  /// iOS only.
  ///
  /// Receipt of successful app token validation with APNS.
  core.String? iosReceipt;

  /// iOS only.
  ///
  /// Secret delivered to iOS app via APNS.
  core.String? iosSecret;

  /// Required for enrollment.
  ///
  /// Phone number to be enrolled as MFA.
  core.String? phoneNumber;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token (or
  /// safety net token). A Play Integrity Token can be generated via the
  /// [PlayIntegrity API](https://developer.android.com/google/play/integrity)
  /// with applying SHA256 to the `phone_number` field as the nonce.
  core.String? playIntegrityToken;

  /// Web only.
  ///
  /// Recaptcha solution.
  core.String? recaptchaToken;

  /// Android only.
  ///
  /// Used to assert application identity in place of a recaptcha token. A
  /// SafetyNet Token can be generated via the
  /// [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html),
  /// with the Base64 encoding of the `phone_number` field as the nonce.
  core.String? safetyNetToken;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo({
    this.autoRetrievalInfo,
    this.iosReceipt,
    this.iosSecret,
    this.phoneNumber,
    this.playIntegrityToken,
    this.recaptchaToken,
    this.safetyNetToken,
  });

  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(core.Map json_)
      : this(
          autoRetrievalInfo: json_.containsKey('autoRetrievalInfo')
              ? GoogleCloudIdentitytoolkitV2AutoRetrievalInfo.fromJson(
                  json_['autoRetrievalInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iosReceipt: json_.containsKey('iosReceipt')
              ? json_['iosReceipt'] as core.String
              : null,
          iosSecret: json_.containsKey('iosSecret')
              ? json_['iosSecret'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          playIntegrityToken: json_.containsKey('playIntegrityToken')
              ? json_['playIntegrityToken'] as core.String
              : null,
          recaptchaToken: json_.containsKey('recaptchaToken')
              ? json_['recaptchaToken'] as core.String
              : null,
          safetyNetToken: json_.containsKey('safetyNetToken')
              ? json_['safetyNetToken'] as core.String
              : null,
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
      };
}

/// Phone Verification info for a StartMfa response.
class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo {
  /// An opaque string that represents the enrollment session.
  core.String? sessionInfo;

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo({
    this.sessionInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(core.Map json_)
      : this(
          sessionInfo: json_.containsKey('sessionInfo')
              ? json_['sessionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
      };
}

/// Starts multi-factor sign-in by sending the multi-factor auth challenge.
class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest {
  /// MFA enrollment id from the user's list of current MFA enrollments.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// Pending credential from first factor sign-in.
  ///
  /// Required.
  core.String? mfaPendingCredential;

  /// Verification info to authorize sending an SMS for phone verification.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo? phoneSignInInfo;

  /// The ID of the Identity Platform tenant the user is signing in to.
  ///
  /// If not set, the user will sign in to the default Identity Platform
  /// project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest({
    this.mfaEnrollmentId,
    this.mfaPendingCredential,
    this.phoneSignInInfo,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2StartMfaSignInRequest.fromJson(core.Map json_)
      : this(
          mfaEnrollmentId: json_.containsKey('mfaEnrollmentId')
              ? json_['mfaEnrollmentId'] as core.String
              : null,
          mfaPendingCredential: json_.containsKey('mfaPendingCredential')
              ? json_['mfaPendingCredential'] as core.String
              : null,
          phoneSignInInfo: json_.containsKey('phoneSignInInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo.fromJson(
                  json_['phoneSignInInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (mfaPendingCredential != null)
          'mfaPendingCredential': mfaPendingCredential!,
        if (phoneSignInInfo != null) 'phoneSignInInfo': phoneSignInInfo!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// StartMfaSignIn response.
class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse {
  /// MultiFactor sign-in session information specific to SMS-type second
  /// factors.
  ///
  /// Along with the one-time code retrieved from the sent SMS, the contents of
  /// this session information should be passed to FinalizeMfaSignIn to complete
  /// the sign in.
  GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo? phoneResponseInfo;

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse({
    this.phoneResponseInfo,
  });

  GoogleCloudIdentitytoolkitV2StartMfaSignInResponse.fromJson(core.Map json_)
      : this(
          phoneResponseInfo: json_.containsKey('phoneResponseInfo')
              ? GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo.fromJson(
                  json_['phoneResponseInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneResponseInfo != null) 'phoneResponseInfo': phoneResponseInfo!,
      };
}

/// Mfa request info specific to TOTP auth for StartMfa.
typedef GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo = $Empty;

/// Mfa response info specific to TOTP auth for StartMfa.
class GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo {
  /// The time by which the enrollment must finish.
  core.String? finalizeEnrollmentTime;

  /// The hashing algorithm used to generate the verification code.
  core.String? hashingAlgorithm;

  /// Duration in seconds at which the verification code will change.
  core.int? periodSec;

  /// An encoded string that represents the enrollment session.
  core.String? sessionInfo;

  /// A base 32 encoded string that represents the shared TOTP secret.
  ///
  /// The base 32 encoding is the one specified by
  /// \[RFC4648#section-6\](https://datatracker.ietf.org/doc/html/rfc4648#section-6).
  /// (This is the same as the base 32 encoding from
  /// \[RFC3548#section-5\](https://datatracker.ietf.org/doc/html/rfc3548#section-5).)
  core.String? sharedSecretKey;

  /// The length of the verification code that needs to be generated.
  core.int? verificationCodeLength;

  GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo({
    this.finalizeEnrollmentTime,
    this.hashingAlgorithm,
    this.periodSec,
    this.sessionInfo,
    this.sharedSecretKey,
    this.verificationCodeLength,
  });

  GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo.fromJson(
      core.Map json_)
      : this(
          finalizeEnrollmentTime: json_.containsKey('finalizeEnrollmentTime')
              ? json_['finalizeEnrollmentTime'] as core.String
              : null,
          hashingAlgorithm: json_.containsKey('hashingAlgorithm')
              ? json_['hashingAlgorithm'] as core.String
              : null,
          periodSec: json_.containsKey('periodSec')
              ? json_['periodSec'] as core.int
              : null,
          sessionInfo: json_.containsKey('sessionInfo')
              ? json_['sessionInfo'] as core.String
              : null,
          sharedSecretKey: json_.containsKey('sharedSecretKey')
              ? json_['sharedSecretKey'] as core.String
              : null,
          verificationCodeLength: json_.containsKey('verificationCodeLength')
              ? json_['verificationCodeLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finalizeEnrollmentTime != null)
          'finalizeEnrollmentTime': finalizeEnrollmentTime!,
        if (hashingAlgorithm != null) 'hashingAlgorithm': hashingAlgorithm!,
        if (periodSec != null) 'periodSec': periodSec!,
        if (sessionInfo != null) 'sessionInfo': sessionInfo!,
        if (sharedSecretKey != null) 'sharedSecretKey': sharedSecretKey!,
        if (verificationCodeLength != null)
          'verificationCodeLength': verificationCodeLength!,
      };
}

/// Withdraws MFA.
class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest {
  /// User's ID token.
  ///
  /// Required.
  core.String? idToken;

  /// MFA enrollment id from a current MFA enrollment.
  ///
  /// Required.
  core.String? mfaEnrollmentId;

  /// The ID of the Identity Platform tenant that the user unenrolling MFA
  /// belongs to.
  ///
  /// If not set, the user belongs to the default Identity Platform project.
  core.String? tenantId;

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest({
    this.idToken,
    this.mfaEnrollmentId,
    this.tenantId,
  });

  GoogleCloudIdentitytoolkitV2WithdrawMfaRequest.fromJson(core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          mfaEnrollmentId: json_.containsKey('mfaEnrollmentId')
              ? json_['mfaEnrollmentId'] as core.String
              : null,
          tenantId: json_.containsKey('tenantId')
              ? json_['tenantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (mfaEnrollmentId != null) 'mfaEnrollmentId': mfaEnrollmentId!,
        if (tenantId != null) 'tenantId': tenantId!,
      };
}

/// Withdraws MultiFactorAuth response.
class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse {
  /// ID token updated to reflect removal of the second factor.
  core.String? idToken;

  /// Refresh token updated to reflect removal of the second factor.
  core.String? refreshToken;

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse({
    this.idToken,
    this.refreshToken,
  });

  GoogleCloudIdentitytoolkitV2WithdrawMfaResponse.fromJson(core.Map json_)
      : this(
          idToken: json_.containsKey('idToken')
              ? json_['idToken'] as core.String
              : null,
          refreshToken: json_.containsKey('refreshToken')
              ? json_['refreshToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idToken != null) 'idToken': idToken!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message for `GetIamPolicy` method.
class GoogleIamV1GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GoogleIamV1GetPolicyOptions? options;

  GoogleIamV1GetIamPolicyRequest({
    this.options,
  });

  GoogleIamV1GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GoogleIamV1GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GoogleIamV1GetPolicyOptions = $GetPolicyOptions;

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<GoogleIamV1Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef GoogleTypeExpr = $Expr;
