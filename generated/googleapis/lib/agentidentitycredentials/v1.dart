// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Agent Identity Credentials API - v1
///
/// The Agent Identity Credentials API retrieves and finalizes authorization
/// credentials for auth providers.
///
/// For more information, see <https://cloud.google.com/iam/docs/>
///
/// Create an instance of [AgentIdentityCredentialsApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAuthProvidersResource]
///       - [ProjectsLocationsAuthProvidersCredentialsResource]
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

/// The Agent Identity Credentials API retrieves and finalizes authorization
/// credentials for auth providers.
class AgentIdentityCredentialsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AgentIdentityCredentialsApi(
    http.Client client, {
    core.String rootUrl = 'https://agentidentitycredentials.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthProvidersResource get authProviders =>
      ProjectsLocationsAuthProvidersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsAuthProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthProvidersCredentialsResource get credentials =>
      ProjectsLocationsAuthProvidersCredentialsResource(_requester);

  ProjectsLocationsAuthProvidersResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsAuthProvidersCredentialsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthProvidersCredentialsResource(commons.ApiRequester client)
    : _requester = client;

  /// Finalizes the credentials after a successful consent flow.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [authProvider] - Required. The resource name of the auth provider. Format:
  /// `projects/{project}/locations/{location}/authProviders/{auth_provider}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse>
  finalize(
    GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest request,
    core.String authProvider, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$authProvider') + '/credentials:finalize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves authorization credentials for an auth provider, or indicates
  /// what action needs to be taken to obtain credentials.
  ///
  /// If the `token` field in the response is populated, credential retrieval
  /// was successful. If one of the fields in the `result` oneof is populated,
  /// further action is required to obtain credentials, such as redirecting the
  /// user for consent. View comments on `RetrieveCredentialsResponse` for more
  /// information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [authProvider] - Required. The resource name of the auth provider. Format:
  /// `projects/{project}/locations/{location}/authProviders/{auth_provider}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse>
  retrieve(
    GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest request,
    core.String authProvider, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$authProvider') + '/credentials:retrieve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Indicates the user has rejected the permission delegation or canceled the
/// request.
typedef GoogleCloudAgentidentitycredentialsV1ConsentRejected = $Empty;

/// Request message for `FinalizeCredentials`.
class GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest {
  /// The same `consent_nonce` value that was provided during retrieval in the
  /// [UriConsentRequired](https://cloud.google.com/iam/docs/reference/agentidentitycredentials/rest/v1/projects.locations.authProviders.credentials/retrieve#UriConsentRequired)
  /// metadata.
  ///
  /// Required.
  core.String? consentNonce;

  /// The identity of the end user.
  ///
  /// Required.
  core.String? userId;

  /// The encrypted state passed back from the consent flow.
  ///
  /// Required.
  core.String? userIdValidationState;
  core.List<core.int> get userIdValidationStateAsBytes =>
      convert.base64.decode(userIdValidationState!);

  set userIdValidationStateAsBytes(core.List<core.int> bytes_) {
    userIdValidationState = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest({
    this.consentNonce,
    this.userId,
    this.userIdValidationState,
  });

  GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest.fromJson(
    core.Map json_,
  ) : this(
        consentNonce: json_['consentNonce'] as core.String?,
        userId: json_['userId'] as core.String?,
        userIdValidationState: json_['userIdValidationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consentNonce = this.consentNonce;
    final userId = this.userId;
    final userIdValidationState = this.userIdValidationState;
    return {
      'consentNonce': ?consentNonce,
      'userId': ?userId,
      'userIdValidationState': ?userIdValidationState,
    };
  }
}

/// Response message for `FinalizeCredentials`.
///
/// Intentionally empty.
typedef GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse =
    $Empty;

/// Indicates that the credential retrieval is pending.
///
/// The caller should retry the `RetrieveCredentials` request after some time.
typedef GoogleCloudAgentidentitycredentialsV1Pending = $Empty;

/// Request message for `RetrieveCredentials`.
class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest {
  /// The URI to redirect the user to after consent is completed.
  ///
  /// This field is required for auth providers using the 3-legged OAuth flow.
  /// For other auth provider types, this field is unused but not rejected.
  ///
  /// Optional.
  core.String? continueUri;

  /// Input only.
  ///
  /// Set this field only if the previous token was expired or invalid. This
  /// value must be the full, previously returned token string. Setting this
  /// field triggers a refresh of the access token with a stored refresh token,
  /// if possible, or a new consent flow.
  ///
  /// Optional.
  core.String? forceRefreshToken;

  /// The OAuth scopes required for this access.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  /// The identity of the end user.
  ///
  /// Required.
  core.String? userId;

  GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest({
    this.continueUri,
    this.forceRefreshToken,
    this.scopes,
    this.userId,
  });

  GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest.fromJson(
    core.Map json_,
  ) : this(
        continueUri: json_['continueUri'] as core.String?,
        forceRefreshToken: json_['forceRefreshToken'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final continueUri = this.continueUri;
    final forceRefreshToken = this.forceRefreshToken;
    final scopes = this.scopes;
    final userId = this.userId;
    return {
      'continueUri': ?continueUri,
      'forceRefreshToken': ?forceRefreshToken,
      'scopes': ?scopes,
      'userId': ?userId,
    };
  }
}

/// Response message for `RetrieveCredentials`.
///
/// Contains the access tokens and related artifacts.
class GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse {
  /// Message indicating consent was rejected.
  GoogleCloudAgentidentitycredentialsV1ConsentRejected? consentRejected;

  /// Message indicating credential retrieval is pending.
  GoogleCloudAgentidentitycredentialsV1Pending? pending;

  /// Message indicating credentials were successfully retrieved.
  GoogleCloudAgentidentitycredentialsV1Success? success;

  /// Message indicating URI-based consent is required.
  GoogleCloudAgentidentitycredentialsV1UriConsentRequired? uriConsentRequired;

  GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse({
    this.consentRejected,
    this.pending,
    this.success,
    this.uriConsentRequired,
  });

  GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse.fromJson(
    core.Map json_,
  ) : this(
        consentRejected: json_.containsKey('consentRejected')
            ? GoogleCloudAgentidentitycredentialsV1ConsentRejected.fromJson(
                json_['consentRejected'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pending: json_.containsKey('pending')
            ? GoogleCloudAgentidentitycredentialsV1Pending.fromJson(
                json_['pending'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        success: json_.containsKey('success')
            ? GoogleCloudAgentidentitycredentialsV1Success.fromJson(
                json_['success'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uriConsentRequired: json_.containsKey('uriConsentRequired')
            ? GoogleCloudAgentidentitycredentialsV1UriConsentRequired.fromJson(
                json_['uriConsentRequired']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consentRejected = this.consentRejected;
    final pending = this.pending;
    final success = this.success;
    final uriConsentRequired = this.uriConsentRequired;
    return {
      'consentRejected': ?consentRejected,
      'pending': ?pending,
      'success': ?success,
      'uriConsentRequired': ?uriConsentRequired,
    };
  }
}

/// Message indicating successful retrieval of credentials.
class GoogleCloudAgentidentitycredentialsV1Success {
  /// The expiration time of the token.
  ///
  /// This does not guarantee that the token will be valid until this time,
  /// since the token could be revoked earlier. There could also be clock skew
  /// between the auth provider and the client so it may expire slightly
  /// earlier. If not set, the token might be permanent or it may be that the
  /// service does not (or cannot) know when it will expire.
  core.String? expireTime;

  /// The HTTP header name where the token should be placed.
  core.String? header;

  /// The scopes actually associated with the retrieved token.
  ///
  /// End users may have rejected some requested scopes, or the third-party
  /// authorization servers can return a different set of scopes than what was
  /// asked for. Callers should verify that all required scopes for their
  /// intended use are included in this list.
  core.List<core.String>? scopes;

  /// The retrieved access token or credential for the end user.
  ///
  /// On an MCP tool call, for an invalid token the OAuth spec states that this
  /// should return `401` or `403`, but MCP servers may implement this
  /// differently. If you get any flavor of `PERMISSION_DENIED`, retry your
  /// original request to `RetrieveCredentials` with force_refresh_token set to
  /// the expired/invalid token string, which will fetch a new token or initiate
  /// a new consent flow.
  core.String? token;

  GoogleCloudAgentidentitycredentialsV1Success({
    this.expireTime,
    this.header,
    this.scopes,
    this.token,
  });

  GoogleCloudAgentidentitycredentialsV1Success.fromJson(core.Map json_)
    : this(
        expireTime: json_['expireTime'] as core.String?,
        header: json_['header'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expireTime = this.expireTime;
    final header = this.header;
    final scopes = this.scopes;
    final token = this.token;
    return {
      'expireTime': ?expireTime,
      'header': ?header,
      'scopes': ?scopes,
      'token': ?token,
    };
  }
}

/// Indicates that the user must visit the provided URI to consent to delegate
/// permission to the agent to act on their behalf.
///
/// The caller can either poll the `RetrieveCredentials` method, or await the
/// /ValidateUserId callback.
class GoogleCloudAgentidentitycredentialsV1UriConsentRequired {
  /// The URL where the user should be redirected to grant consent.
  ///
  /// This will always be present.
  ///
  /// Output only.
  core.String? authorizationUri;

  /// A one-time, randomly generated value that validates the entire consent
  /// flow is handled by a single user, avoiding CSRF attacks.
  ///
  /// It must be submitted with the `FinalizeCredentials` request to complete
  /// the OAuth exchange. This will always be present. Implemented per
  /// [RFC 6819 Section 5.3.5](https://www.rfc-editor.org/rfc/rfc6819#section-5.3.5).
  ///
  /// Output only.
  core.String? consentNonce;

  /// The unique ID of the credentials retrieval operation.
  ///
  /// Output only.
  core.String? uid;

  GoogleCloudAgentidentitycredentialsV1UriConsentRequired({
    this.authorizationUri,
    this.consentNonce,
    this.uid,
  });

  GoogleCloudAgentidentitycredentialsV1UriConsentRequired.fromJson(
    core.Map json_,
  ) : this(
        authorizationUri: json_['authorizationUri'] as core.String?,
        consentNonce: json_['consentNonce'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationUri = this.authorizationUri;
    final consentNonce = this.consentNonce;
    final uid = this.uid;
    return {
      'authorizationUri': ?authorizationUri,
      'consentNonce': ?consentNonce,
      'uid': ?uid,
    };
  }
}
