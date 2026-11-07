// Copyright 2024 Google LLC
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

/// Developer Connect API - v1
///
/// Connect third-party source code management to Google
///
/// For more information, see
/// <http://cloud.google.com/developer-connect/docs/overview>
///
/// Create an instance of [DeveloperConnectApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAccountConnectorsResource]
///       - [ProjectsLocationsAccountConnectorsUsersResource]
///     - [ProjectsLocationsConnectionsResource]
///       - [ProjectsLocationsConnectionsGitRepositoryLinksResource]
///     - [ProjectsLocationsInsightsConfigsResource]
///       - [ProjectsLocationsInsightsConfigsDeploymentEventsResource]
///     - [ProjectsLocationsOperationsResource]
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

/// Connect third-party source code management to Google
class DeveloperConnectApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DeveloperConnectApi(
    http.Client client, {
    core.String rootUrl = 'https://developerconnect.googleapis.com/',
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

  ProjectsLocationsAccountConnectorsResource get accountConnectors =>
      ProjectsLocationsAccountConnectorsResource(_requester);
  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsInsightsConfigsResource get insightsConfigs =>
      ProjectsLocationsInsightsConfigsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// This method lists locations based on the resource scope provided in the
  /// ListLocationsRequest.name field: * **Global locations**: If `name` is
  /// empty, the method lists the public locations available to all projects. *
  /// **Project-specific locations**: If `name` follows the format
  /// `projects/{project}`, the method lists locations visible to that specific
  /// project. This includes public, private, or other project-specific
  /// locations enabled for the project. For gRPC and client library
  /// implementations, the resource name is passed as the `name` field. For
  /// direct service calls, the resource name is incorporated into the request
  /// path based on the specific service implementation and version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field unless explicitly
  /// documented otherwise. This is primarily for internal usage.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAccountConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAccountConnectorsUsersResource get users =>
      ProjectsLocationsAccountConnectorsUsersResource(_requester);

  ProjectsLocationsAccountConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AccountConnector in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Location resource name as the account_connector’s
  /// parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [accountConnectorId] - Required. The ID to use for the AccountConnector,
  /// which will become the final component of the AccountConnector's resource
  /// name. Its format should adhere to
  /// https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    AccountConnector request,
    core.String parent, {
    core.String? accountConnectorId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'accountConnectorId': ?accountConnectorId == null
          ? null
          : [accountConnectorId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/accountConnectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single AccountConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the AccountConnectorn. If an etag
  /// is provided and does not match the current etag of the AccountConnector,
  /// deletion will be blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. If set to true, any Users from this AccountConnector
  /// will also be deleted. (Otherwise, the request will only work if the
  /// AccountConnector has no Users.)
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// FetchUserRepositories returns a list of UserRepos that are available for
  /// an account connector resource.
  ///
  /// Request parameters:
  ///
  /// [accountConnector] - Required. The name of the Account Connector resource
  /// in the format: `projects / * /locations / * /accountConnectors / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Defaults
  /// to 20.
  ///
  /// [pageToken] - Optional. Page start.
  ///
  /// [repository] - Optional. The name of the repository. When specified, only
  /// the UserRepository with this name will be returned if the repository is
  /// accessible under this Account Connector for the calling user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchUserRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchUserRepositoriesResponse> fetchUserRepositories(
    core.String accountConnector, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? repository,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'repository': ?repository == null ? null : [repository],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$accountConnector') +
        ':fetchUserRepositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchUserRepositoriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single AccountConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountConnector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountConnector> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountConnector.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AccountConnectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListAccountConnectorsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountConnectorsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/accountConnectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountConnectorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AccountConnector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the accountConnector, in the
  /// format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the accountConnector is not
  /// found a new accountConnector will be created. In this situation
  /// `update_mask` is ignored. The creation will succeed only if the input
  /// accountConnector has all the necessary
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    AccountConnector request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAccountConnectorsUsersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAccountConnectorsUsersResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a single User.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the User based on the user credentials.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the AccountConnector resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> deleteSelf(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/users:deleteSelf';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches OAuth access token based on end user credentials.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountConnector] - Required. The resource name of the AccountConnector
  /// in the format `projects / * /locations / * /accountConnectors / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchAccessTokenResponse> fetchAccessToken(
    FetchAccessTokenRequest request,
    core.String accountConnector, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$accountConnector') +
        '/users:fetchAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchAccessTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch the User based on the user credentials.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the AccountConnector resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> fetchSelf(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/users:fetchSelf';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Finishes OAuth flow for an account connector.
  ///
  /// Request parameters:
  ///
  /// [accountConnector] - Required. The resource name of the AccountConnector
  /// in the format `projects / * /locations / * /accountConnectors / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [googleOauthParams_scopes] - Required. The scopes returned by Google OAuth
  /// flow.
  ///
  /// [googleOauthParams_ticket] - Required. The ticket to be used for post
  /// processing the callback from Google OAuth flow.
  ///
  /// [googleOauthParams_versionInfo] - Optional. The version info returned by
  /// Google OAuth flow.
  ///
  /// [oauthParams_code] - Required. The code to be used for getting the token
  /// from SCM provider.
  ///
  /// [oauthParams_ticket] - Required. The ticket to be used for post processing
  /// the callback from SCM provider.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinishOAuthResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinishOAuthResponse> finishOAuthFlow(
    core.String accountConnector, {
    core.List<core.String>? googleOauthParams_scopes,
    core.String? googleOauthParams_ticket,
    core.String? googleOauthParams_versionInfo,
    core.String? oauthParams_code,
    core.String? oauthParams_ticket,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'googleOauthParams.scopes': ?googleOauthParams_scopes,
      'googleOauthParams.ticket': ?googleOauthParams_ticket == null
          ? null
          : [googleOauthParams_ticket],
      'googleOauthParams.versionInfo': ?googleOauthParams_versionInfo == null
          ? null
          : [googleOauthParams_versionInfo],
      'oauthParams.code': ?oauthParams_code == null ? null : [oauthParams_code],
      'oauthParams.ticket': ?oauthParams_ticket == null
          ? null
          : [oauthParams_ticket],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$accountConnector') +
        '/users:finishOAuthFlow';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FinishOAuthResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Users in a given project, location, and account_connector.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListUsersRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Starts OAuth flow for an account connector.
  ///
  /// Request parameters:
  ///
  /// [accountConnector] - Required. The resource name of the AccountConnector
  /// in the format `projects / * /locations / * /accountConnectors / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StartOAuthResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StartOAuthResponse> startOAuthFlow(
    core.String accountConnector, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$accountConnector') +
        '/users:startOAuthFlow';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StartOAuthResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsGitRepositoryLinksResource
  get gitRepositoryLinks =>
      ProjectsLocationsConnectionsGitRepositoryLinksResource(_requester);

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Connection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionId] - Required. The ID to use for the connection, which becomes
  /// the final component of the connection's resource name.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Connection request,
    core.String parent, {
    core.String? connectionId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'connectionId': ?connectionId == null ? null : [connectionId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the Connection. If an etag is
  /// provided and does not match the current etag of the Connection, deletion
  /// will be blocked and an ABORTED error will be returned.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// FetchGitHubInstallations returns the list of GitHub Installations that are
  /// available to be added to a Connection.
  ///
  /// For github.com, only installations accessible to the authorizer token are
  /// returned. For GitHub Enterprise, all installations are returned.
  ///
  /// Request parameters:
  ///
  /// [connection] - Required. The resource name of the connection in the format
  /// `projects / * /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitHubInstallationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitHubInstallationsResponse> fetchGitHubInstallations(
    core.String connection, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$connection') +
        ':fetchGitHubInstallations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitHubInstallationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// FetchLinkableGitRepositories returns a list of git repositories from an
  /// SCM that are available to be added to a Connection.
  ///
  /// Request parameters:
  ///
  /// [connection] - Required. The name of the Connection. Format: `projects / *
  /// /locations / * /connections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Defaults
  /// to 20.
  ///
  /// [pageToken] - Optional. Page start.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchLinkableGitRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchLinkableGitRepositoriesResponse>
  fetchLinkableGitRepositories(
    core.String connection, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$connection') +
        ':fetchLinkableGitRepositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchLinkableGitRepositoriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListConnectionsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the connection is not found
  /// a new connection will be created. In this situation `update_mask` is
  /// ignored. The creation will succeed only if the input connection has all
  /// the necessary information (e.g a github_config with both user_oauth_token
  /// and installation_id properties).
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Connection resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Connection request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ProcessGitHubEnterpriseWebhook is called by the external GitHub Enterprise
  /// instances for notifying events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location where the webhook will be
  /// received. Format: `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> processGitHubEnterpriseWebhook(
    ProcessGitHubEnterpriseWebhookRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/connections:processGitHubEnterpriseWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsGitRepositoryLinksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsGitRepositoryLinksResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Add a comment to a Pull Request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequestComment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequestComment> addPullRequestComment(
    AddGitRepositoryLinkPullRequestCommentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':addPullRequestComment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullRequestComment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Add a review comment (inline on diff) to a Pull Request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequestReviewComment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequestReviewComment> addPullRequestReviewComment(
    AddGitRepositoryLinkPullRequestReviewCommentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':addPullRequestReviewComment';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullRequestReviewComment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a GitRepositoryLink.
  ///
  /// Upon linking a Git Repository, Developer Connect will configure the Git
  /// Repository to send webhook events to Developer Connect. Connections that
  /// use Firebase GitHub Application will have events forwarded to the Firebase
  /// service. Connections that use Gemini Code Assist will have events
  /// forwarded to Gemini Code Assist service. All other Connections will have
  /// events forwarded to Cloud Build.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [gitRepositoryLinkId] - Required. The ID to use for the repository, which
  /// will become the final component of the repository's resource name. This ID
  /// should be unique in the connection. Allows alphanumeric characters and any
  /// of -._~%!$&'()*+,;=@.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    GitRepositoryLink request,
    core.String parent, {
    core.String? gitRepositoryLinkId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'gitRepositoryLinkId': ?gitRepositoryLinkId == null
          ? null
          : [gitRepositoryLinkId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gitRepositoryLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GitRepositoryLink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Diff commits for a GitRepositoryLink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [baseSha] - Required. The base commit SHA or ref.
  ///
  /// [headSha] - Required. The head commit SHA or ref.
  ///
  /// [pathFilters] - Optional. Path patterns or exact paths to filter returned
  /// files. When `path_filters` is specified, `FileDiff.patch` is populated for
  /// all matching files (use `["**"]` to include patches for all changed
  /// files). When `path_filters` is omitted or empty, the full list of
  /// `FileDiff` is returned without patch diffs (`FileDiff.patch` is empty).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DiffGitRepositoryLinkCommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DiffGitRepositoryLinkCommitResponse> diffCommit(
    core.String name, {
    core.String? baseSha,
    core.String? headSha,
    core.List<core.String>? pathFilters,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'baseSha': ?baseSha == null ? null : [baseSha],
      'headSha': ?headSha == null ? null : [headSha],
      'pathFilters': ?pathFilters,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':diffCommit';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DiffGitRepositoryLinkCommitResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch Commit details from a Git repository link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [commitSha] - Required. The commit SHA, or symbolic revision (for example,
  /// branch name, tag, or Git reference).
  ///
  /// [pathFilters] - Optional. Path patterns or exact paths to filter returned
  /// files (only applicable in `FULL` view). When `path_filters` is specified,
  /// `FileDiff.patch` is populated for all matching files (use `["**"]` to
  /// include patches for all changed files). When `path_filters` is omitted or
  /// empty, the full list of `FileDiff` is returned without patch diffs
  /// (`FileDiff.patch` is empty).
  ///
  /// [view] - Optional. The level of commit details to return in the response.
  /// Defaults to `FULL` if unspecified. In `FULL` view, `files` metadata (paths
  /// and statuses) are returned; `path_filters` must also be specified to
  /// populate line patch hunks.
  /// Possible string values are:
  /// - "COMMIT_VIEW_UNSPECIFIED" : Unspecified, defaults to BASIC.
  /// - "BASIC" : Basic view, returns commit metadata but no file diffs.
  /// - "FULL" : Full view, returns commit metadata and file diffs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRepositoryLinkCommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRepositoryLinkCommitResponse> fetchCommit(
    core.String name, {
    core.String? commitSha,
    core.List<core.String>? pathFilters,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'commitSha': ?commitSha == null ? null : [commitSha],
      'pathFilters': ?pathFilters,
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchCommit';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRepositoryLinkCommitResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch a list of Commits from a Git repository link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Default is
  /// 50. Max is 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FetchGitRepositoryLinkCommitList` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `FetchGitRepositoryLinkCommitList` must match the call that provided the
  /// page token.
  ///
  /// [ref] - Optional. The commit SHA, or symbolic revision (for example,
  /// branch name, tag, or Git reference) from which to start listing commits.
  ///
  /// [view] - Optional. The level of commit details to return in the response.
  /// Only `BASIC` is supported; `FULL` returns `INVALID_ARGUMENT`. Defaults to
  /// `BASIC` if unspecified. Use `FetchGitRepositoryLinkCommit` to get file
  /// diffs for a single commit.
  /// Possible string values are:
  /// - "COMMIT_VIEW_UNSPECIFIED" : Unspecified, defaults to BASIC.
  /// - "BASIC" : Basic view, returns commit metadata but no file diffs.
  /// - "FULL" : Full view, returns commit metadata and file diffs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRepositoryLinkCommitListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRepositoryLinkCommitListResponse> fetchCommitList(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? ref,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'ref': ?ref == null ? null : [ref],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchCommitList';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRepositoryLinkCommitListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches blame information for a file or line range in a file.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [firstLine] - Optional. The 1-indexed starting line number of the range to
  /// blame (inclusive). If not specified, blame begins at line 1.
  ///
  /// [lastLine] - Optional. The 1-indexed ending line number of the range to
  /// blame (inclusive). If not specified, blame extends to the end of the file.
  ///
  /// [path] - Required. The file path within the repository.
  ///
  /// [ref] - Required. The SCM commit SHA, or symbolic revision (for example,
  /// branch name, tag) from which to fetch the blame.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRepositoryLinkFileBlameResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRepositoryLinkFileBlameResponse> fetchFileBlame(
    core.String name, {
    core.int? firstLine,
    core.int? lastLine,
    core.String? path,
    core.String? ref,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'firstLine': ?firstLine == null ? null : ['${firstLine}'],
      'lastLine': ?lastLine == null ? null : ['${lastLine}'],
      'path': ?path == null ? null : [path],
      'ref': ?ref == null ? null : [ref],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchFileBlame';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRepositoryLinkFileBlameResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch the list of branches or tags for a given repository.
  ///
  /// Request parameters:
  ///
  /// [gitRepositoryLink] - Required. The resource name of GitRepositoryLink in
  /// the format `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Default to
  /// 20.
  ///
  /// [pageToken] - Optional. Page start.
  ///
  /// [refType] - Required. Type of refs to fetch.
  /// Possible string values are:
  /// - "REF_TYPE_UNSPECIFIED" : No type specified.
  /// - "TAG" : To fetch tags.
  /// - "BRANCH" : To fetch branches.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRefsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRefsResponse> fetchGitRefs(
    core.String gitRepositoryLink, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? refType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'refType': ?refType == null ? null : [refType],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$gitRepositoryLink') + ':fetchGitRefs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRefsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch Pull Request details from a Git repository link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the GitRepositoryLink in the
  /// format `projects / * /locations / * /connections / * /gitRepositoryLinks /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [pullRequestId] - Required. The ID of the Pull Request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequest> fetchPullRequest(
    core.String name, {
    core.String? pullRequestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pullRequestId': ?pullRequestId == null ? null : [pullRequestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchPullRequest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PullRequest.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches a list of Pull Requests from the remote repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink resource name in the format
  /// `projects / * /locations / * /connections / * /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters the pull requests
  /// returned in the response. Only a single equality comparison on `state` is
  /// supported, for example `state = "OPEN"`. Supported values are `OPEN`,
  /// `CLOSED`, and `MERGED`. `DECLINED` is only supported for SCM providers
  /// that support declining pull requests, and returns `INVALID_ARGUMENT` for
  /// GitHub, GitHub Enterprise, GitLab, and GitLab Enterprise. Other values or
  /// expressions return `INVALID_ARGUMENT`. Defaults to `state = "OPEN"` if
  /// unspecified.
  ///
  /// [pageSize] - Optional. Number of results to return in the list. Default is
  /// 20. Max is 100. A page may contain fewer than `page_size` results even
  /// when more results are available; use `next_page_token` to check for more
  /// pages.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FetchGitRepositoryLinkPullRequestList` call. Provide this to retrieve the
  /// subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchGitRepositoryLinkPullRequestListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchGitRepositoryLinkPullRequestListResponse>
  fetchPullRequestList(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchPullRequestList';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRepositoryLinkPullRequestListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches read token of a given gitRepositoryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [gitRepositoryLink] - Required. The resource name of the gitRepositoryLink
  /// in the format `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReadTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReadTokenResponse> fetchReadToken(
    FetchReadTokenRequest request,
    core.String gitRepositoryLink, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$gitRepositoryLink') + ':fetchReadToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchReadTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches read/write token of a given gitRepositoryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [gitRepositoryLink] - Required. The resource name of the gitRepositoryLink
  /// in the format `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReadWriteTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReadWriteTokenResponse> fetchReadWriteToken(
    FetchReadWriteTokenRequest request,
    core.String gitRepositoryLink, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$gitRepositoryLink') +
        ':fetchReadWriteToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchReadWriteTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single GitRepositoryLink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GitRepositoryLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GitRepositoryLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GitRepositoryLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists GitRepositoryLinks in a given project, location, and connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListGitRepositoryLinksRequest.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGitRepositoryLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGitRepositoryLinksResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gitRepositoryLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGitRepositoryLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a Pull Request in the remote SCM repository associated with a
  /// GitRepositoryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink resource name in the format
  /// `projects / * /locations / * /connections / * /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequest> modifyPullRequest(
    ModifyGitRepositoryLinkPullRequestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':modifyPullRequest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullRequest.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Opens a Pull Request in the remote SCM repository associated with a
  /// GitRepositoryLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink resource name in the format
  /// `projects / * /locations / * /connections / * /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequest> openPullRequest(
    OpenGitRepositoryLinkPullRequestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':openPullRequest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullRequest.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ProcessBitbucketCloudWebhook is called by the external Bitbucket Cloud
  /// instances for notifying events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink where the webhook will be
  /// received. Format: `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> processBitbucketCloudWebhook(
    ProcessBitbucketCloudWebhookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':processBitbucketCloudWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ProcessBitbucketDataCenterWebhook is called by the external Bitbucket Data
  /// Center instances for notifying events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink where the webhook will be
  /// received. Format: `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> processBitbucketDataCenterWebhook(
    ProcessBitbucketDataCenterWebhookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        ':processBitbucketDataCenterWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ProcessGitLabEnterpriseWebhook is called by the external GitLab Enterprise
  /// instances for notifying events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink resource where the webhook will
  /// be received. Format: `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> processGitLabEnterpriseWebhook(
    ProcessGitLabEnterpriseWebhookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        ':processGitLabEnterpriseWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// ProcessGitLabWebhook is called by the GitLab.com for notifying events.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The GitRepositoryLink resource where the webhook will
  /// be received. Format: `projects / * /locations / * /connections / *
  /// /gitRepositoryLinks / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/gitRepositoryLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> processGitLabWebhook(
    ProcessGitLabWebhookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':processGitLabWebhook';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInsightsConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsConfigsDeploymentEventsResource
  get deploymentEvents =>
      ProjectsLocationsInsightsConfigsDeploymentEventsResource(_requester);

  ProjectsLocationsInsightsConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new InsightsConfig in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [insightsConfigId] - Required. ID of the requesting InsightsConfig.
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    InsightsConfig request,
    core.String parent, {
    core.String? insightsConfigId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'insightsConfigId': ?insightsConfigId == null ? null : [insightsConfigId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insightsConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Insight.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightsConfigs/\[^/\]+$`.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Insight.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightsConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InsightsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InsightsConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InsightsConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists InsightsConfigs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListInsightsConfigsRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results. See https://google.aip.dev/160 for
  /// more details. Filter string, adhering to the rules in
  /// https://google.aip.dev/160. List only InsightsConfigs matching the filter.
  /// If filter is empty, all InsightsConfigs are listed.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInsightsConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInsightsConfigsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insightsConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInsightsConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single InsightsConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the InsightsConfig. Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightsConfigs/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the insightsConfig is not
  /// found a new insightsConfig will be created. In this situation
  /// `update_mask` is ignored. The creation will succeed only if the input
  /// insightsConfig has all the necessary information (e.g a github_config with
  /// both user_oauth_token and installation_id properties).
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request, but do not
  /// actually post it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    InsightsConfig request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInsightsConfigsDeploymentEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsConfigsDeploymentEventsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a single Deployment Event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment event to retrieve. Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insights_config}/deploymentEvents/{uuid}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightsConfigs/\[^/\]+/deploymentEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeploymentEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeploymentEvent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeploymentEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Deployment Events in a given insights config.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent insights config that owns this collection
  /// of deployment events. Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insights_config}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insightsConfigs/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression that matches a subset of the
  /// DeploymentEvents. https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Field to use to order the list of DeploymentEvents.
  /// Expects AIP-132 format "field_name asc" or "field_name desc", e.g.
  /// "deploy_time desc" Supported fields for ordering are: deploy_time,
  /// update_time. Currently, only sorting by a single field is supported. If
  /// this field is not provided, the list will be sorted by "deploy_time desc".
  /// For more details on the ordering syntax, see
  /// https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - Optional. The maximum number of deployment events to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// deployment events will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDeploymentEvents` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListDeploymentEvents`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeploymentEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeploymentEventsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deploymentEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeploymentEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// AccountConnector encapsulates what a platform administrator needs to
/// configure for users to connect to the service providers, which includes,
/// among other fields, the OAuth client ID, client secret, and authorization
/// and token endpoints.
class AccountConnector {
  /// Allows users to store small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The timestamp when the accountConnector was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Custom OAuth config.
  CustomOAuthConfig? customOauthConfig;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the accountConnector, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  core.String? name;

  /// Start OAuth flow by clicking on this URL.
  ///
  /// Output only.
  core.String? oauthStartUri;

  /// Provider OAuth config.
  ///
  /// Optional.
  ProviderOAuthConfig? providerOauthConfig;

  /// Configuration for the http and git proxy features.
  ///
  /// Optional.
  ProxyConfig? proxyConfig;

  /// A system-assigned unique identifier for the Account Connector.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when the accountConnector was updated.
  ///
  /// Output only.
  core.String? updateTime;

  AccountConnector({
    this.annotations,
    this.createTime,
    this.customOauthConfig,
    this.etag,
    this.labels,
    this.name,
    this.oauthStartUri,
    this.providerOauthConfig,
    this.proxyConfig,
    this.uid,
    this.updateTime,
  });

  AccountConnector.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        customOauthConfig: json_.containsKey('customOauthConfig')
            ? CustomOAuthConfig.fromJson(
                json_['customOauthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        oauthStartUri: json_['oauthStartUri'] as core.String?,
        providerOauthConfig: json_.containsKey('providerOauthConfig')
            ? ProviderOAuthConfig.fromJson(
                json_['providerOauthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        proxyConfig: json_.containsKey('proxyConfig')
            ? ProxyConfig.fromJson(
                json_['proxyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final customOauthConfig = this.customOauthConfig;
    final etag = this.etag;
    final labels = this.labels;
    final name = this.name;
    final oauthStartUri = this.oauthStartUri;
    final providerOauthConfig = this.providerOauthConfig;
    final proxyConfig = this.proxyConfig;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'customOauthConfig': ?customOauthConfig,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'oauthStartUri': ?oauthStartUri,
      'providerOauthConfig': ?providerOauthConfig,
      'proxyConfig': ?proxyConfig,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Request message for AddGitRepositoryLinkPullRequestComment.
class AddGitRepositoryLinkPullRequestCommentRequest {
  /// The comment to add.
  ///
  /// Required.
  PullRequestComment? comment;

  /// The ID of the Pull Request.
  ///
  /// Required.
  core.String? pullRequestId;

  AddGitRepositoryLinkPullRequestCommentRequest({
    this.comment,
    this.pullRequestId,
  });

  AddGitRepositoryLinkPullRequestCommentRequest.fromJson(core.Map json_)
    : this(
        comment: json_.containsKey('comment')
            ? PullRequestComment.fromJson(
                json_['comment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pullRequestId: json_['pullRequestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comment = this.comment;
    final pullRequestId = this.pullRequestId;
    return {'comment': ?comment, 'pullRequestId': ?pullRequestId};
  }
}

/// Request message for AddGitRepositoryLinkPullRequestReviewComment.
class AddGitRepositoryLinkPullRequestReviewCommentRequest {
  /// The review comment to add.
  ///
  /// Required.
  PullRequestReviewComment? comment;

  /// The commit SHA to comment on.
  ///
  /// If not specified, defaults to the HEAD commit of the Pull Request.
  ///
  /// Optional.
  core.String? commitId;

  /// The ID of the Pull Request.
  ///
  /// Required.
  core.String? pullRequestId;

  AddGitRepositoryLinkPullRequestReviewCommentRequest({
    this.comment,
    this.commitId,
    this.pullRequestId,
  });

  AddGitRepositoryLinkPullRequestReviewCommentRequest.fromJson(core.Map json_)
    : this(
        comment: json_.containsKey('comment')
            ? PullRequestReviewComment.fromJson(
                json_['comment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        commitId: json_['commitId'] as core.String?,
        pullRequestId: json_['pullRequestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comment = this.comment;
    final commitId = this.commitId;
    final pullRequestId = this.pullRequestId;
    return {
      'comment': ?comment,
      'commitId': ?commitId,
      'pullRequestId': ?pullRequestId,
    };
  }
}

/// AppHubService represents the App Hub Service.
class AppHubService {
  /// The name of the App Hub Service.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/applications/{application}/services/{service}`.
  ///
  /// Required. Output only. Immutable.
  core.String? apphubService;

  /// The criticality of the App Hub Service.
  ///
  /// Output only.
  core.String? criticality;

  /// The environment of the App Hub Service.
  ///
  /// Output only.
  core.String? environment;

  AppHubService({this.apphubService, this.criticality, this.environment});

  AppHubService.fromJson(core.Map json_)
    : this(
        apphubService: json_['apphubService'] as core.String?,
        criticality: json_['criticality'] as core.String?,
        environment: json_['environment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apphubService = this.apphubService;
    final criticality = this.criticality;
    final environment = this.environment;
    return {
      'apphubService': ?apphubService,
      'criticality': ?criticality,
      'environment': ?environment,
    };
  }
}

/// AppHubWorkload represents the App Hub Workload.
class AppHubWorkload {
  /// The criticality of the App Hub Workload.
  ///
  /// Output only.
  core.String? criticality;

  /// The environment of the App Hub Workload.
  ///
  /// Output only.
  core.String? environment;

  /// The name of the App Hub Workload.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/applications/{application}/workloads/{workload}`.
  ///
  /// Required. Output only. Immutable.
  core.String? workload;

  AppHubWorkload({this.criticality, this.environment, this.workload});

  AppHubWorkload.fromJson(core.Map json_)
    : this(
        criticality: json_['criticality'] as core.String?,
        environment: json_['environment'] as core.String?,
        workload: json_['workload'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final criticality = this.criticality;
    final environment = this.environment;
    final workload = this.workload;
    return {
      'criticality': ?criticality,
      'environment': ?environment,
      'workload': ?workload,
    };
  }
}

/// The artifact config of the artifact that is deployed.
class ArtifactConfig {
  /// Set if the artifact metadata is stored in Artifact analysis.
  ///
  /// Optional.
  GoogleArtifactAnalysis? googleArtifactAnalysis;

  /// Set if the artifact is stored in Artifact registry.
  ///
  /// Optional.
  GoogleArtifactRegistry? googleArtifactRegistry;

  /// The URI of the artifact that is deployed.
  ///
  /// e.g. `us-docker.pkg.dev/my-project/my-repo/image`. The URI does not
  /// include the tag / digest because it captures a lineage of artifacts.
  ///
  /// Required. Immutable.
  core.String? uri;

  ArtifactConfig({
    this.googleArtifactAnalysis,
    this.googleArtifactRegistry,
    this.uri,
  });

  ArtifactConfig.fromJson(core.Map json_)
    : this(
        googleArtifactAnalysis: json_.containsKey('googleArtifactAnalysis')
            ? GoogleArtifactAnalysis.fromJson(
                json_['googleArtifactAnalysis']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleArtifactRegistry: json_.containsKey('googleArtifactRegistry')
            ? GoogleArtifactRegistry.fromJson(
                json_['googleArtifactRegistry']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleArtifactAnalysis = this.googleArtifactAnalysis;
    final googleArtifactRegistry = this.googleArtifactRegistry;
    final uri = this.uri;
    return {
      'googleArtifactAnalysis': ?googleArtifactAnalysis,
      'googleArtifactRegistry': ?googleArtifactRegistry,
      'uri': ?uri,
    };
  }
}

/// The ArtifactDeployment resource represents the deployment of the artifact
/// within the InsightsConfig resource.
class ArtifactDeployment {
  /// The artifact alias in the deployment spec, with Tag/SHA.
  ///
  /// e.g. us-docker.pkg.dev/my-project/my-repo/image:1.0.0
  ///
  /// Output only.
  core.String? artifactAlias;

  /// The artifact that is deployed.
  ///
  /// Output only.
  core.String? artifactReference;

  /// The summary of container status of the artifact deployment.
  ///
  /// Format as `ContainerStatusState-Reason : restartCount` e.g.
  /// "Waiting-ImagePullBackOff : 3"
  ///
  /// Output only.
  core.String? containerStatusSummary;

  /// The time at which the deployment was deployed.
  ///
  /// Output only.
  core.String? deployTime;

  /// Unique identifier of `ArtifactDeployment`.
  ///
  /// Output only.
  core.String? id;

  /// The URIs of the source code, if available.
  ///
  /// For Cloud Run source deploy for example:
  /// `gs://my-bucket/my-folder/1234567890.abcde-fdbe.zip#1234567890`
  ///
  /// Output only.
  core.List<core.String>? sourceCodeUris;

  /// The source commits at which this artifact was built.
  ///
  /// Extracted from provenance.
  ///
  /// Output only.
  core.List<core.String>? sourceCommitUris;

  /// The time at which the deployment was undeployed, all artifacts are
  /// considered undeployed once this time is set.
  ///
  /// Output only.
  core.String? undeployTime;

  ArtifactDeployment({
    this.artifactAlias,
    this.artifactReference,
    this.containerStatusSummary,
    this.deployTime,
    this.id,
    this.sourceCodeUris,
    this.sourceCommitUris,
    this.undeployTime,
  });

  ArtifactDeployment.fromJson(core.Map json_)
    : this(
        artifactAlias: json_['artifactAlias'] as core.String?,
        artifactReference: json_['artifactReference'] as core.String?,
        containerStatusSummary: json_['containerStatusSummary'] as core.String?,
        deployTime: json_['deployTime'] as core.String?,
        id: json_['id'] as core.String?,
        sourceCodeUris: (json_['sourceCodeUris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sourceCommitUris: (json_['sourceCommitUris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        undeployTime: json_['undeployTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactAlias = this.artifactAlias;
    final artifactReference = this.artifactReference;
    final containerStatusSummary = this.containerStatusSummary;
    final deployTime = this.deployTime;
    final id = this.id;
    final sourceCodeUris = this.sourceCodeUris;
    final sourceCommitUris = this.sourceCommitUris;
    final undeployTime = this.undeployTime;
    return {
      'artifactAlias': ?artifactAlias,
      'artifactReference': ?artifactReference,
      'containerStatusSummary': ?containerStatusSummary,
      'deployTime': ?deployTime,
      'id': ?id,
      'sourceCodeUris': ?sourceCodeUris,
      'sourceCommitUris': ?sourceCommitUris,
      'undeployTime': ?undeployTime,
    };
  }
}

/// Basic authentication with username and password.
class BasicAuthentication {
  /// The password SecretManager secret version to authenticate as.
  core.String? passwordSecretVersion;

  /// The username to authenticate as.
  ///
  /// Required.
  core.String? username;

  BasicAuthentication({this.passwordSecretVersion, this.username});

  BasicAuthentication.fromJson(core.Map json_)
    : this(
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final passwordSecretVersion = this.passwordSecretVersion;
    final username = this.username;
    return {
      'passwordSecretVersion': ?passwordSecretVersion,
      'username': ?username,
    };
  }
}

/// Bearer token authentication with a token.
class BearerTokenAuthentication {
  /// The token SecretManager secret version to authenticate as.
  ///
  /// Optional.
  core.String? tokenSecretVersion;

  BearerTokenAuthentication({this.tokenSecretVersion});

  BearerTokenAuthentication.fromJson(core.Map json_)
    : this(tokenSecretVersion: json_['tokenSecretVersion'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tokenSecretVersion = this.tokenSecretVersion;
    return {'tokenSecretVersion': ?tokenSecretVersion};
  }
}

/// Configuration for connections to an instance of Bitbucket Cloud.
class BitbucketCloudConfig {
  /// An access token with the minimum `repository`, `pullrequest` and `webhook`
  /// scope access.
  ///
  /// It can either be a workspace, project or repository access token. This is
  /// needed to create webhooks. It's recommended to use a system account to
  /// generate these credentials.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// An access token with the minimum `repository` access.
  ///
  /// It can either be a workspace, project or repository access token. It's
  /// recommended to use a system account to generate the credentials.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// SecretManager resource containing the webhook secret used to verify
  /// webhook events, formatted as `projects / * /secrets / * /versions / * ` or
  /// `projects / * /locations / * /secrets / * /versions / * ` (if regional
  /// secrets are supported in that location).
  ///
  /// This is used to validate and create webhooks.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  /// The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  ///
  /// Required.
  core.String? workspace;

  BitbucketCloudConfig({
    this.authorizerCredential,
    this.readAuthorizerCredential,
    this.webhookSecretSecretVersion,
    this.workspace,
  });

  BitbucketCloudConfig.fromJson(core.Map json_)
    : this(
        authorizerCredential: json_.containsKey('authorizerCredential')
            ? UserCredential.fromJson(
                json_['authorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        readAuthorizerCredential: json_.containsKey('readAuthorizerCredential')
            ? UserCredential.fromJson(
                json_['readAuthorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        webhookSecretSecretVersion:
            json_['webhookSecretSecretVersion'] as core.String?,
        workspace: json_['workspace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizerCredential = this.authorizerCredential;
    final readAuthorizerCredential = this.readAuthorizerCredential;
    final webhookSecretSecretVersion = this.webhookSecretSecretVersion;
    final workspace = this.workspace;
    return {
      'authorizerCredential': ?authorizerCredential,
      'readAuthorizerCredential': ?readAuthorizerCredential,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
      'workspace': ?workspace,
    };
  }
}

/// Configuration for connections to an instance of Bitbucket Data Center.
class BitbucketDataCenterConfig {
  /// An http access token with the minimum `Repository admin` scope access.
  ///
  /// This is needed to create webhooks. It's recommended to use a system
  /// account to generate these credentials.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// The URI of the Bitbucket Data Center host this connection is for.
  ///
  /// Required.
  core.String? hostUri;

  /// An http access token with the minimum `Repository read` access.
  ///
  /// It's recommended to use a system account to generate the credentials.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// Version of the Bitbucket Data Center server running on the `host_uri`.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a
  /// Bitbucket Data Center instance.
  ///
  /// This should only be set if the Bitbucket Data Center is hosted on-premises
  /// and not reachable by public internet. If this field is left empty, calls
  /// to the Bitbucket Data Center will be made over the public internet.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate authority to trust when making requests to Bitbucket Data
  /// Center.
  ///
  /// Optional.
  core.String? sslCaCertificate;

  /// SecretManager resource containing the webhook secret used to verify
  /// webhook events, formatted as `projects / * /secrets / * /versions / * ` or
  /// `projects / * /locations / * /secrets / * /versions / * ` (if regional
  /// secrets are supported in that location).
  ///
  /// This is used to validate webhooks.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  BitbucketDataCenterConfig({
    this.authorizerCredential,
    this.hostUri,
    this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
  });

  BitbucketDataCenterConfig.fromJson(core.Map json_)
    : this(
        authorizerCredential: json_.containsKey('authorizerCredential')
            ? UserCredential.fromJson(
                json_['authorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hostUri: json_['hostUri'] as core.String?,
        readAuthorizerCredential: json_.containsKey('readAuthorizerCredential')
            ? UserCredential.fromJson(
                json_['readAuthorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serverVersion: json_['serverVersion'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslCaCertificate: json_['sslCaCertificate'] as core.String?,
        webhookSecretSecretVersion:
            json_['webhookSecretSecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizerCredential = this.authorizerCredential;
    final hostUri = this.hostUri;
    final readAuthorizerCredential = this.readAuthorizerCredential;
    final serverVersion = this.serverVersion;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final sslCaCertificate = this.sslCaCertificate;
    final webhookSecretSecretVersion = this.webhookSecretSecretVersion;
    return {
      'authorizerCredential': ?authorizerCredential,
      'hostUri': ?hostUri,
      'readAuthorizerCredential': ?readAuthorizerCredential,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }
}

/// BlameRange represents blame information for a range of lines.
class BlameRange {
  /// The commit metadata for this line range.
  SCMCommit? commit;

  /// The 1-indexed starting line number of the range (inclusive).
  core.int? firstLine;

  /// The 1-indexed ending line number of the range (inclusive).
  core.int? lastLine;

  BlameRange({this.commit, this.firstLine, this.lastLine});

  BlameRange.fromJson(core.Map json_)
    : this(
        commit: json_.containsKey('commit')
            ? SCMCommit.fromJson(
                json_['commit'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        firstLine: json_['firstLine'] as core.int?,
        lastLine: json_['lastLine'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commit = this.commit;
    final firstLine = this.firstLine;
    final lastLine = this.lastLine;
    return {'commit': ?commit, 'firstLine': ?firstLine, 'lastLine': ?lastLine};
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Message describing Connection object
class Connection {
  /// Allows clients to store small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Configuration for connections to an instance of Bitbucket Clouds.
  BitbucketCloudConfig? bitbucketCloudConfig;

  /// Configuration for connections to an instance of Bitbucket Data Center.
  BitbucketDataCenterConfig? bitbucketDataCenterConfig;

  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The crypto key configuration.
  ///
  /// This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  ///
  /// Optional.
  CryptoKeyConfig? cryptoKeyConfig;

  /// Delete timestamp.
  ///
  /// Output only.
  core.String? deleteTime;

  /// If disabled is set to true, functionality is disabled for this connection.
  ///
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  ///
  /// Optional.
  core.bool? disabled;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Configuration for the Git proxy feature.
  ///
  /// Enabling the Git proxy allows clients to perform Git operations on the
  /// repositories linked in the connection.
  /// [Learn more](https://docs.cloud.google.com/developer-connect/docs/configure-git-proxy).
  ///
  /// Optional.
  GitProxyConfig? gitProxyConfig;

  /// Configuration for connections to github.com.
  GitHubConfig? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  GitHubEnterpriseConfig? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com.
  GitLabConfig? gitlabConfig;

  /// Configuration for connections to an instance of GitLab Enterprise.
  GitLabEnterpriseConfig? gitlabEnterpriseConfig;

  /// Configuration for connections to an HTTP service provider.
  ///
  /// Optional.
  GenericHTTPEndpointConfig? httpConfig;

  /// Installation state of the Connection.
  ///
  /// Output only.
  InstallationState? installationState;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  core.String? name;

  /// Set to true when the connection is being set up or updated in the
  /// background.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Configuration for connections to an instance of Secure Source Manager.
  SecureSourceManagerInstanceConfig? secureSourceManagerInstanceConfig;

  /// A system-assigned unique identifier for the Connection.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Connection({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.createTime,
    this.cryptoKeyConfig,
    this.deleteTime,
    this.disabled,
    this.etag,
    this.gitProxyConfig,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.gitlabEnterpriseConfig,
    this.httpConfig,
    this.installationState,
    this.labels,
    this.name,
    this.reconciling,
    this.secureSourceManagerInstanceConfig,
    this.uid,
    this.updateTime,
  });

  Connection.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        bitbucketCloudConfig: json_.containsKey('bitbucketCloudConfig')
            ? BitbucketCloudConfig.fromJson(
                json_['bitbucketCloudConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bitbucketDataCenterConfig:
            json_.containsKey('bitbucketDataCenterConfig')
            ? BitbucketDataCenterConfig.fromJson(
                json_['bitbucketDataCenterConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        cryptoKeyConfig: json_.containsKey('cryptoKeyConfig')
            ? CryptoKeyConfig.fromJson(
                json_['cryptoKeyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTime: json_['deleteTime'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        etag: json_['etag'] as core.String?,
        gitProxyConfig: json_.containsKey('gitProxyConfig')
            ? GitProxyConfig.fromJson(
                json_['gitProxyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        githubConfig: json_.containsKey('githubConfig')
            ? GitHubConfig.fromJson(
                json_['githubConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        githubEnterpriseConfig: json_.containsKey('githubEnterpriseConfig')
            ? GitHubEnterpriseConfig.fromJson(
                json_['githubEnterpriseConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gitlabConfig: json_.containsKey('gitlabConfig')
            ? GitLabConfig.fromJson(
                json_['gitlabConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gitlabEnterpriseConfig: json_.containsKey('gitlabEnterpriseConfig')
            ? GitLabEnterpriseConfig.fromJson(
                json_['gitlabEnterpriseConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        httpConfig: json_.containsKey('httpConfig')
            ? GenericHTTPEndpointConfig.fromJson(
                json_['httpConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        installationState: json_.containsKey('installationState')
            ? InstallationState.fromJson(
                json_['installationState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        secureSourceManagerInstanceConfig:
            json_.containsKey('secureSourceManagerInstanceConfig')
            ? SecureSourceManagerInstanceConfig.fromJson(
                json_['secureSourceManagerInstanceConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final bitbucketCloudConfig = this.bitbucketCloudConfig;
    final bitbucketDataCenterConfig = this.bitbucketDataCenterConfig;
    final createTime = this.createTime;
    final cryptoKeyConfig = this.cryptoKeyConfig;
    final deleteTime = this.deleteTime;
    final disabled = this.disabled;
    final etag = this.etag;
    final gitProxyConfig = this.gitProxyConfig;
    final githubConfig = this.githubConfig;
    final githubEnterpriseConfig = this.githubEnterpriseConfig;
    final gitlabConfig = this.gitlabConfig;
    final gitlabEnterpriseConfig = this.gitlabEnterpriseConfig;
    final httpConfig = this.httpConfig;
    final installationState = this.installationState;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final secureSourceManagerInstanceConfig =
        this.secureSourceManagerInstanceConfig;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'bitbucketCloudConfig': ?bitbucketCloudConfig,
      'bitbucketDataCenterConfig': ?bitbucketDataCenterConfig,
      'createTime': ?createTime,
      'cryptoKeyConfig': ?cryptoKeyConfig,
      'deleteTime': ?deleteTime,
      'disabled': ?disabled,
      'etag': ?etag,
      'gitProxyConfig': ?gitProxyConfig,
      'githubConfig': ?githubConfig,
      'githubEnterpriseConfig': ?githubEnterpriseConfig,
      'gitlabConfig': ?gitlabConfig,
      'gitlabEnterpriseConfig': ?gitlabEnterpriseConfig,
      'httpConfig': ?httpConfig,
      'installationState': ?installationState,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'secureSourceManagerInstanceConfig': ?secureSourceManagerInstanceConfig,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// The crypto key configuration.
///
/// This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfig {
  /// The name of the key which is used to encrypt/decrypt customer data.
  ///
  /// For key in Cloud KMS, the key should be in the format of `projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * `.
  ///
  /// Required.
  core.String? keyReference;

  CryptoKeyConfig({this.keyReference});

  CryptoKeyConfig.fromJson(core.Map json_)
    : this(keyReference: json_['keyReference'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final keyReference = this.keyReference;
    return {'keyReference': ?keyReference};
  }
}

/// Message for a customized OAuth config.
class CustomOAuthConfig {
  /// The OAuth2 authorization server URL.
  ///
  /// Required. Immutable.
  core.String? authUri;

  /// The client ID of the OAuth application.
  ///
  /// Required.
  core.String? clientId;

  /// Input only.
  ///
  /// The client secret of the OAuth application. It will be provided as plain
  /// text, but encrypted and stored in developer connect. As INPUT_ONLY field,
  /// it will not be included in the output.
  ///
  /// Required.
  core.String? clientSecret;

  /// The host URI of the OAuth application.
  ///
  /// Required.
  core.String? hostUri;

  /// Disable PKCE for this OAuth config.
  ///
  /// PKCE is enabled by default.
  ///
  /// Optional.
  core.bool? pkceDisabled;

  /// The type of the SCM provider.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCM_PROVIDER_UNKNOWN" : The SCM is not specified or BYO Account
  /// Connector is not an SCM.
  /// - "GITHUB_ENTERPRISE" : BYO Account Connector is an instance of GitHub
  /// Enterprise.
  /// - "GITLAB_ENTERPRISE" : BYO Account Connector is an instance of GitLab
  /// Enterprise.
  /// - "BITBUCKET_DATA_CENTER" : BYO Account Connector is an instance of
  /// Bitbucket Data Center.
  core.String? scmProvider;

  /// The scopes to be requested during OAuth.
  ///
  /// Required.
  core.List<core.String>? scopes;

  /// SCM server version installed at the host URI.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to connect to a private service.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to a private service.
  ///
  /// Optional.
  core.String? sslCaCertificate;

  /// The OAuth2 token request URL.
  ///
  /// Required. Immutable.
  core.String? tokenUri;

  CustomOAuthConfig({
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.hostUri,
    this.pkceDisabled,
    this.scmProvider,
    this.scopes,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.tokenUri,
  });

  CustomOAuthConfig.fromJson(core.Map json_)
    : this(
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        hostUri: json_['hostUri'] as core.String?,
        pkceDisabled: json_['pkceDisabled'] as core.bool?,
        scmProvider: json_['scmProvider'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        serverVersion: json_['serverVersion'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslCaCertificate: json_['sslCaCertificate'] as core.String?,
        tokenUri: json_['tokenUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authUri = this.authUri;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final hostUri = this.hostUri;
    final pkceDisabled = this.pkceDisabled;
    final scmProvider = this.scmProvider;
    final scopes = this.scopes;
    final serverVersion = this.serverVersion;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final sslCaCertificate = this.sslCaCertificate;
    final tokenUri = this.tokenUri;
    return {
      'authUri': ?authUri,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'hostUri': ?hostUri,
      'pkceDisabled': ?pkceDisabled,
      'scmProvider': ?scmProvider,
      'scopes': ?scopes,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'sslCaCertificate': ?sslCaCertificate,
      'tokenUri': ?tokenUri,
    };
  }
}

/// The DeploymentEvent resource represents the deployment of the artifact
/// within the InsightsConfig resource.
class DeploymentEvent {
  /// The artifact deployments of the DeploymentEvent.
  ///
  /// Each artifact deployment contains the artifact uri and the runtime
  /// configuration uri. For GKE, this would be all the containers images that
  /// are deployed in the pod.
  ///
  /// Output only.
  core.List<ArtifactDeployment>? artifactDeployments;

  /// The create time of the DeploymentEvent.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which the DeploymentEvent was deployed.
  ///
  /// This would be the min of all ArtifactDeployment deploy_times.
  ///
  /// Output only.
  core.String? deployTime;

  /// Identifier.
  ///
  /// The name of the DeploymentEvent. This name is provided by Developer
  /// Connect insights. Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insights_config}/deploymentEvents/{uuid}
  core.String? name;

  /// The runtime configurations where the DeploymentEvent happened.
  ///
  /// Output only.
  RuntimeConfig? runtimeConfig;

  /// The runtime assigned URI of the DeploymentEvent.
  ///
  /// For GKE, this is the fully qualified replica set uri. e.g.
  /// container.googleapis.com/projects/{project}/locations/{location}/clusters/{cluster}/k8s/namespaces/{namespace}/apps/replicasets/{replica-set-id}
  /// For Cloud Run, this is the revision name.
  ///
  /// Output only.
  core.String? runtimeDeploymentUri;

  /// The state of the DeploymentEvent.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified.
  /// - "STATE_ACTIVE" : The deployment is active in the runtime.
  /// - "STATE_INACTIVE" : The deployment is not in the runtime.
  core.String? state;

  /// The time at which the DeploymentEvent was undeployed, all artifacts are
  /// considered undeployed once this time is set.
  ///
  /// This would be the max of all ArtifactDeployment undeploy_times. If any
  /// ArtifactDeployment is still active (i.e. does not have an undeploy_time),
  /// this field will be empty.
  ///
  /// Output only.
  core.String? undeployTime;

  /// The update time of the DeploymentEvent.
  ///
  /// Output only.
  core.String? updateTime;

  DeploymentEvent({
    this.artifactDeployments,
    this.createTime,
    this.deployTime,
    this.name,
    this.runtimeConfig,
    this.runtimeDeploymentUri,
    this.state,
    this.undeployTime,
    this.updateTime,
  });

  DeploymentEvent.fromJson(core.Map json_)
    : this(
        artifactDeployments: (json_['artifactDeployments'] as core.List?)
            ?.map(
              (value) => ArtifactDeployment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        createTime: json_['createTime'] as core.String?,
        deployTime: json_['deployTime'] as core.String?,
        name: json_['name'] as core.String?,
        runtimeConfig: json_.containsKey('runtimeConfig')
            ? RuntimeConfig.fromJson(
                json_['runtimeConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        runtimeDeploymentUri: json_['runtimeDeploymentUri'] as core.String?,
        state: json_['state'] as core.String?,
        undeployTime: json_['undeployTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactDeployments = this.artifactDeployments;
    final createTime = this.createTime;
    final deployTime = this.deployTime;
    final name = this.name;
    final runtimeConfig = this.runtimeConfig;
    final runtimeDeploymentUri = this.runtimeDeploymentUri;
    final state = this.state;
    final undeployTime = this.undeployTime;
    final updateTime = this.updateTime;
    return {
      'artifactDeployments': ?artifactDeployments,
      'createTime': ?createTime,
      'deployTime': ?deployTime,
      'name': ?name,
      'runtimeConfig': ?runtimeConfig,
      'runtimeDeploymentUri': ?runtimeDeploymentUri,
      'state': ?state,
      'undeployTime': ?undeployTime,
      'updateTime': ?updateTime,
    };
  }
}

/// Response message for DiffGitRepositoryLinkCommit.
class DiffGitRepositoryLinkCommitResponse {
  /// The file diff extracted from the unified diff.
  core.List<FileDiff>? files;

  DiffGitRepositoryLinkCommitResponse({this.files});

  DiffGitRepositoryLinkCommitResponse.fromJson(core.Map json_)
    : this(
        files: (json_['files'] as core.List?)
            ?.map(
              (value) => FileDiff.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final files = this.files;
    return {'files': ?files};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message for representing an error from exchanging OAuth tokens.
class ExchangeError {
  /// https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 - error
  core.String? code;

  /// https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 -
  /// error_description
  core.String? description;

  ExchangeError({this.code, this.description});

  ExchangeError.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final description = this.description;
    return {'code': ?code, 'description': ?description};
  }
}

/// Message for fetching an OAuth access token.
typedef FetchAccessTokenRequest = $Empty;

/// Message for responding to getting an OAuth access token.
class FetchAccessTokenResponse {
  /// The error resulted from exchanging OAuth tokens from the service provider.
  ExchangeError? exchangeError;

  /// Expiration timestamp.
  ///
  /// Can be empty if unknown or non-expiring.
  core.String? expirationTime;

  /// The scopes of the access token.
  core.List<core.String>? scopes;

  /// The token content.
  core.String? token;

  FetchAccessTokenResponse({
    this.exchangeError,
    this.expirationTime,
    this.scopes,
    this.token,
  });

  FetchAccessTokenResponse.fromJson(core.Map json_)
    : this(
        exchangeError: json_.containsKey('exchangeError')
            ? ExchangeError.fromJson(
                json_['exchangeError'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        expirationTime: json_['expirationTime'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exchangeError = this.exchangeError;
    final expirationTime = this.expirationTime;
    final scopes = this.scopes;
    final token = this.token;
    return {
      'exchangeError': ?exchangeError,
      'expirationTime': ?expirationTime,
      'scopes': ?scopes,
      'token': ?token,
    };
  }
}

/// Response of fetching github installations.
class FetchGitHubInstallationsResponse {
  /// List of installations available to the OAuth user (for github.com) or all
  /// the installations (for GitHub enterprise).
  core.List<Installation>? installations;

  FetchGitHubInstallationsResponse({this.installations});

  FetchGitHubInstallationsResponse.fromJson(core.Map json_)
    : this(
        installations: (json_['installations'] as core.List?)
            ?.map(
              (value) => Installation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final installations = this.installations;
    return {'installations': ?installations};
  }
}

/// Response for fetching git refs.
typedef FetchGitRefsResponse = $FetchGitRefsResponse;

/// Response message for FetchGitRepositoryLinkCommitList.
class FetchGitRepositoryLinkCommitListResponse {
  /// The list of commit metadata.
  core.List<SCMCommit>? commits;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  FetchGitRepositoryLinkCommitListResponse({this.commits, this.nextPageToken});

  FetchGitRepositoryLinkCommitListResponse.fromJson(core.Map json_)
    : this(
        commits: (json_['commits'] as core.List?)
            ?.map(
              (value) => SCMCommit.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commits = this.commits;
    final nextPageToken = this.nextPageToken;
    return {'commits': ?commits, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for FetchGitRepositoryLinkCommit.
class FetchGitRepositoryLinkCommitResponse {
  /// The commit metadata.
  SCMCommit? commit;

  /// List of file changes and patch diffs.
  ///
  /// Omitted when view is `BASIC`. Patch diffs (`FileDiff.patch`) are only
  /// populated when `path_filters` is specified in the request.
  core.List<FileDiff>? files;

  FetchGitRepositoryLinkCommitResponse({this.commit, this.files});

  FetchGitRepositoryLinkCommitResponse.fromJson(core.Map json_)
    : this(
        commit: json_.containsKey('commit')
            ? SCMCommit.fromJson(
                json_['commit'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        files: (json_['files'] as core.List?)
            ?.map(
              (value) => FileDiff.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commit = this.commit;
    final files = this.files;
    return {'commit': ?commit, 'files': ?files};
  }
}

/// Response message for FetchGitRepositoryLinkFileBlame.
class FetchGitRepositoryLinkFileBlameResponse {
  /// The list of blame ranges for the file.
  core.List<BlameRange>? ranges;

  FetchGitRepositoryLinkFileBlameResponse({this.ranges});

  FetchGitRepositoryLinkFileBlameResponse.fromJson(core.Map json_)
    : this(
        ranges: (json_['ranges'] as core.List?)
            ?.map(
              (value) => BlameRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ranges = this.ranges;
    return {'ranges': ?ranges};
  }
}

/// Response message for FetchGitRepositoryLinkPullRequestList.
class FetchGitRepositoryLinkPullRequestListResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of pull requests.
  core.List<PullRequest>? pullRequests;

  FetchGitRepositoryLinkPullRequestListResponse({
    this.nextPageToken,
    this.pullRequests,
  });

  FetchGitRepositoryLinkPullRequestListResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pullRequests: (json_['pullRequests'] as core.List?)
            ?.map(
              (value) => PullRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final pullRequests = this.pullRequests;
    return {'nextPageToken': ?nextPageToken, 'pullRequests': ?pullRequests};
  }
}

/// Response message for FetchLinkableGitRepositories.
class FetchLinkableGitRepositoriesResponse {
  /// The git repositories that can be linked to the connection.
  core.List<LinkableGitRepository>? linkableGitRepositories;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  FetchLinkableGitRepositoriesResponse({
    this.linkableGitRepositories,
    this.nextPageToken,
  });

  FetchLinkableGitRepositoriesResponse.fromJson(core.Map json_)
    : this(
        linkableGitRepositories:
            (json_['linkableGitRepositories'] as core.List?)
                ?.map(
                  (value) => LinkableGitRepository.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final linkableGitRepositories = this.linkableGitRepositories;
    final nextPageToken = this.nextPageToken;
    return {
      'linkableGitRepositories': ?linkableGitRepositories,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Message for fetching SCM read token.
typedef FetchReadTokenRequest = $Empty;

/// Message for responding to get read token.
typedef FetchReadTokenResponse = $TokenResponse01;

/// Message for fetching SCM read/write token.
typedef FetchReadWriteTokenRequest = $Empty;

/// Message for responding to get read/write token.
typedef FetchReadWriteTokenResponse = $TokenResponse01;

/// Response message for FetchUserRepositories.
class FetchUserRepositoriesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The repositories that the user can access with this account connector.
  core.List<UserRepository>? userRepos;

  FetchUserRepositoriesResponse({this.nextPageToken, this.userRepos});

  FetchUserRepositoriesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userRepos: (json_['userRepos'] as core.List?)
            ?.map(
              (value) => UserRepository.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userRepos = this.userRepos;
    return {'nextPageToken': ?nextPageToken, 'userRepos': ?userRepos};
  }
}

/// Message for a file diff.
class FileDiff {
  /// Standard unified diff patch hunk for the file.
  ///
  /// Only populated when `path_filters` is specified in the request; otherwise
  /// empty.
  core.String? patch;

  /// Relative path to the file in the repository.
  core.String? path;

  /// Status of change: "ADDED", "MODIFIED", "REMOVED", "RENAMED".
  core.String? status;

  FileDiff({this.patch, this.path, this.status});

  FileDiff.fromJson(core.Map json_)
    : this(
        patch: json_['patch'] as core.String?,
        path: json_['path'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final patch = this.patch;
    final path = this.path;
    final status = this.status;
    return {'patch': ?patch, 'path': ?path, 'status': ?status};
  }
}

/// Message for responding to finishing an OAuth flow.
class FinishOAuthResponse {
  /// The error resulted from exchanging OAuth tokens from the service provider.
  ExchangeError? exchangeError;

  FinishOAuthResponse({this.exchangeError});

  FinishOAuthResponse.fromJson(core.Map json_)
    : this(
        exchangeError: json_.containsKey('exchangeError')
            ? ExchangeError.fromJson(
                json_['exchangeError'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exchangeError = this.exchangeError;
    return {'exchangeError': ?exchangeError};
  }
}

/// GKEWorkload represents the Google Kubernetes Engine runtime.
class GKEWorkload {
  /// The name of the GKE cluster.
  ///
  /// Format: `projects/{project}/locations/{location}/clusters/{cluster}`.
  ///
  /// Required. Immutable.
  core.String? cluster;

  /// The name of the GKE deployment.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/namespaces/{namespace}/deployments/{deployment}`.
  ///
  /// Output only.
  core.String? deployment;

  GKEWorkload({this.cluster, this.deployment});

  GKEWorkload.fromJson(core.Map json_)
    : this(
        cluster: json_['cluster'] as core.String?,
        deployment: json_['deployment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cluster = this.cluster;
    final deployment = this.deployment;
    return {'cluster': ?cluster, 'deployment': ?deployment};
  }
}

/// Defines the configuration for connections to an HTTP service provider.
class GenericHTTPEndpointConfig {
  /// Basic authentication with username and password.
  ///
  /// Optional.
  BasicAuthentication? basicAuthentication;

  /// Bearer token authentication with a token.
  ///
  /// Optional.
  BearerTokenAuthentication? bearerTokenAuthentication;

  /// The service provider's https endpoint.
  ///
  /// Required. Immutable.
  core.String? hostUri;

  /// Configuration for using Service Directory to privately connect to a HTTP
  /// service provider.
  ///
  /// This should only be set if the Http service provider is hosted on-premises
  /// and not reachable by public internet. If this field is left empty, calls
  /// to the HTTP service provider will be made over the public internet.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The SSL certificate to use for requests to the HTTP service provider.
  ///
  /// Optional.
  core.String? sslCaCertificate;

  GenericHTTPEndpointConfig({
    this.basicAuthentication,
    this.bearerTokenAuthentication,
    this.hostUri,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
  });

  GenericHTTPEndpointConfig.fromJson(core.Map json_)
    : this(
        basicAuthentication: json_.containsKey('basicAuthentication')
            ? BasicAuthentication.fromJson(
                json_['basicAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bearerTokenAuthentication:
            json_.containsKey('bearerTokenAuthentication')
            ? BearerTokenAuthentication.fromJson(
                json_['bearerTokenAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hostUri: json_['hostUri'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslCaCertificate: json_['sslCaCertificate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basicAuthentication = this.basicAuthentication;
    final bearerTokenAuthentication = this.bearerTokenAuthentication;
    final hostUri = this.hostUri;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final sslCaCertificate = this.sslCaCertificate;
    return {
      'basicAuthentication': ?basicAuthentication,
      'bearerTokenAuthentication': ?bearerTokenAuthentication,
      'hostUri': ?hostUri,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'sslCaCertificate': ?sslCaCertificate,
    };
  }
}

/// Configuration for connections to github.com.
class GitHubConfig {
  /// GitHub App installation id.
  ///
  /// Optional.
  core.String? appInstallationId;

  /// OAuth credential of the account that authorized the GitHub App.
  ///
  /// It is recommended to use a robot account instead of a human user account.
  /// The OAuth token must be tied to the GitHub App of this config.
  ///
  /// Optional.
  OAuthCredential? authorizerCredential;

  /// The GitHub Application that was installed to the GitHub user or
  /// organization.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "GIT_HUB_APP_UNSPECIFIED" : GitHub App not specified.
  /// - "DEVELOPER_CONNECT" : The Developer Connect GitHub Application.
  /// - "FIREBASE" : The Firebase GitHub Application.
  /// - "GEMINI_CODE_ASSIST" : The Gemini Code Assist Application.
  /// - "DATAFORM" : The Dataform GitHub Application.
  core.String? githubApp;

  /// The URI to navigate to in order to manage the installation associated with
  /// this GitHubConfig.
  ///
  /// Output only.
  core.String? installationUri;

  GitHubConfig({
    this.appInstallationId,
    this.authorizerCredential,
    this.githubApp,
    this.installationUri,
  });

  GitHubConfig.fromJson(core.Map json_)
    : this(
        appInstallationId: json_['appInstallationId'] as core.String?,
        authorizerCredential: json_.containsKey('authorizerCredential')
            ? OAuthCredential.fromJson(
                json_['authorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        githubApp: json_['githubApp'] as core.String?,
        installationUri: json_['installationUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appInstallationId = this.appInstallationId;
    final authorizerCredential = this.authorizerCredential;
    final githubApp = this.githubApp;
    final installationUri = this.installationUri;
    return {
      'appInstallationId': ?appInstallationId,
      'authorizerCredential': ?authorizerCredential,
      'githubApp': ?githubApp,
      'installationUri': ?installationUri,
    };
  }
}

/// Configuration for connections to an instance of GitHub Enterprise.
class GitHubEnterpriseConfig {
  /// ID of the GitHub App created from the manifest.
  ///
  /// Optional.
  core.String? appId;

  /// ID of the installation of the GitHub App.
  ///
  /// Optional.
  core.String? appInstallationId;

  /// The URL-friendly name of the GitHub App.
  ///
  /// Output only.
  core.String? appSlug;

  /// The URI of the GitHub Enterprise host this connection is for.
  ///
  /// Required.
  core.String? hostUri;

  /// The URI to navigate to in order to manage the installation associated with
  /// this GitHubEnterpriseConfig.
  ///
  /// Output only.
  core.String? installationUri;

  /// GitHub Enterprise organization in which the GitHub App is created.
  ///
  /// Optional. Immutable.
  core.String? organization;

  /// SecretManager resource containing the private key of the GitHub App,
  /// formatted as `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// Optional.
  core.String? privateKeySecretVersion;

  /// GitHub Enterprise version installed at the host_uri.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a GitHub
  /// Enterprise server.
  ///
  /// This should only be set if the GitHub Enterprise server is hosted
  /// on-premises and not reachable by public internet. If this field is left
  /// empty, calls to the GitHub Enterprise server will be made over the public
  /// internet.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to GitHub Enterprise.
  ///
  /// Optional.
  core.String? sslCaCertificate;

  /// SecretManager resource containing the webhook secret of the GitHub App,
  /// formatted as `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// Optional.
  core.String? webhookSecretSecretVersion;

  GitHubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    this.hostUri,
    this.installationUri,
    this.organization,
    this.privateKeySecretVersion,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
  });

  GitHubEnterpriseConfig.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appInstallationId: json_['appInstallationId'] as core.String?,
        appSlug: json_['appSlug'] as core.String?,
        hostUri: json_['hostUri'] as core.String?,
        installationUri: json_['installationUri'] as core.String?,
        organization: json_['organization'] as core.String?,
        privateKeySecretVersion:
            json_['privateKeySecretVersion'] as core.String?,
        serverVersion: json_['serverVersion'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslCaCertificate: json_['sslCaCertificate'] as core.String?,
        webhookSecretSecretVersion:
            json_['webhookSecretSecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final appInstallationId = this.appInstallationId;
    final appSlug = this.appSlug;
    final hostUri = this.hostUri;
    final installationUri = this.installationUri;
    final organization = this.organization;
    final privateKeySecretVersion = this.privateKeySecretVersion;
    final serverVersion = this.serverVersion;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final sslCaCertificate = this.sslCaCertificate;
    final webhookSecretSecretVersion = this.webhookSecretSecretVersion;
    return {
      'appId': ?appId,
      'appInstallationId': ?appInstallationId,
      'appSlug': ?appSlug,
      'hostUri': ?hostUri,
      'installationUri': ?installationUri,
      'organization': ?organization,
      'privateKeySecretVersion': ?privateKeySecretVersion,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }
}

/// Configuration for connections to gitlab.com.
class GitLabConfig {
  /// A GitLab personal access token with the minimum `api` scope access and a
  /// minimum role of `maintainer`.
  ///
  /// The GitLab Projects visible to this Personal Access Token will control
  /// which Projects Developer Connect has access to.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// A GitLab personal access token with the minimum `read_api` scope access
  /// and a minimum role of `reporter`.
  ///
  /// The GitLab Projects visible to this Personal Access Token will control
  /// which Projects Developer Connect has access to.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// This is used to validate webhooks.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  GitLabConfig({
    this.authorizerCredential,
    this.readAuthorizerCredential,
    this.webhookSecretSecretVersion,
  });

  GitLabConfig.fromJson(core.Map json_)
    : this(
        authorizerCredential: json_.containsKey('authorizerCredential')
            ? UserCredential.fromJson(
                json_['authorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        readAuthorizerCredential: json_.containsKey('readAuthorizerCredential')
            ? UserCredential.fromJson(
                json_['readAuthorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        webhookSecretSecretVersion:
            json_['webhookSecretSecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizerCredential = this.authorizerCredential;
    final readAuthorizerCredential = this.readAuthorizerCredential;
    final webhookSecretSecretVersion = this.webhookSecretSecretVersion;
    return {
      'authorizerCredential': ?authorizerCredential,
      'readAuthorizerCredential': ?readAuthorizerCredential,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }
}

/// Configuration for connections to an instance of GitLab Enterprise.
class GitLabEnterpriseConfig {
  /// A GitLab personal access token with the minimum `api` scope access and a
  /// minimum role of `maintainer`.
  ///
  /// The GitLab Projects visible to this Personal Access Token will control
  /// which Projects Developer Connect has access to.
  ///
  /// Required.
  UserCredential? authorizerCredential;

  /// The URI of the GitLab Enterprise host this connection is for.
  ///
  /// Required.
  core.String? hostUri;

  /// A GitLab personal access token with the minimum `read_api` scope access
  /// and a minimum role of `reporter`.
  ///
  /// The GitLab Projects visible to this Personal Access Token will control
  /// which Projects Developer Connect has access to.
  ///
  /// Required.
  UserCredential? readAuthorizerCredential;

  /// Version of the GitLab Enterprise server running on the `host_uri`.
  ///
  /// Output only.
  core.String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a GitLab
  /// Enterprise instance.
  ///
  /// This should only be set if the GitLab Enterprise server is hosted
  /// on-premises and not reachable by public internet. If this field is left
  /// empty, calls to the GitLab Enterprise server will be made over the public
  /// internet.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL Certificate Authority certificate to use for requests to GitLab
  /// Enterprise instance.
  ///
  /// Optional.
  core.String? sslCaCertificate;

  /// SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// This is used to validate webhooks.
  ///
  /// Required. Immutable.
  core.String? webhookSecretSecretVersion;

  GitLabEnterpriseConfig({
    this.authorizerCredential,
    this.hostUri,
    this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
  });

  GitLabEnterpriseConfig.fromJson(core.Map json_)
    : this(
        authorizerCredential: json_.containsKey('authorizerCredential')
            ? UserCredential.fromJson(
                json_['authorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hostUri: json_['hostUri'] as core.String?,
        readAuthorizerCredential: json_.containsKey('readAuthorizerCredential')
            ? UserCredential.fromJson(
                json_['readAuthorizerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serverVersion: json_['serverVersion'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sslCaCertificate: json_['sslCaCertificate'] as core.String?,
        webhookSecretSecretVersion:
            json_['webhookSecretSecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizerCredential = this.authorizerCredential;
    final hostUri = this.hostUri;
    final readAuthorizerCredential = this.readAuthorizerCredential;
    final serverVersion = this.serverVersion;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final sslCaCertificate = this.sslCaCertificate;
    final webhookSecretSecretVersion = this.webhookSecretSecretVersion;
    return {
      'authorizerCredential': ?authorizerCredential,
      'hostUri': ?hostUri,
      'readAuthorizerCredential': ?readAuthorizerCredential,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }
}

/// Configuration for proxies.
///
/// For legacy reasons, this message is named `GitProxyConfig`, but it includes
/// settings for both Git and HTTP proxy.
class GitProxyConfig {
  /// Setting this to true allows the Git proxy to be used for performing Git
  /// operations on the repositories linked in the connection.
  ///
  /// Optional.
  core.bool? enabled;

  /// The base URI for the HTTP proxy endpoint.
  ///
  /// Has the format
  /// `https://{generatedID}-c-h-{shortRegion}.developerconnect.dev` Populated
  /// only when enabled is set to true. This endpoint is used by other Google
  /// services that integrate with Developer Connect.
  ///
  /// Output only.
  core.String? httpProxyBaseUri;

  GitProxyConfig({this.enabled, this.httpProxyBaseUri});

  GitProxyConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        httpProxyBaseUri: json_['httpProxyBaseUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final httpProxyBaseUri = this.httpProxyBaseUri;
    return {'enabled': ?enabled, 'httpProxyBaseUri': ?httpProxyBaseUri};
  }
}

/// Message describing the GitRepositoryLink object
class GitRepositoryLink {
  /// Allows clients to store small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Git Clone URI.
  ///
  /// Required.
  core.String? cloneUri;

  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Delete timestamp.
  ///
  /// Output only.
  core.String? deleteTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// URI to access the linked repository through the Git proxy.
  ///
  /// This field is only populated if the Git proxy is enabled for the
  /// connection.
  ///
  /// Output only.
  core.String? gitProxyUri;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Resource name of the repository, in the format `projects / * /locations /
  /// * /connections / * /gitRepositoryLinks / * `.
  core.String? name;

  /// Set to true when the connection is being set up or updated in the
  /// background.
  ///
  /// Output only.
  core.bool? reconciling;

  /// A system-assigned unique identifier for the GitRepositoryLink.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// External ID of the webhook created for the repository.
  ///
  /// Output only.
  core.String? webhookId;

  GitRepositoryLink({
    this.annotations,
    this.cloneUri,
    this.createTime,
    this.deleteTime,
    this.etag,
    this.gitProxyUri,
    this.labels,
    this.name,
    this.reconciling,
    this.uid,
    this.updateTime,
    this.webhookId,
  });

  GitRepositoryLink.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        cloneUri: json_['cloneUri'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        gitProxyUri: json_['gitProxyUri'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        webhookId: json_['webhookId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final cloneUri = this.cloneUri;
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final etag = this.etag;
    final gitProxyUri = this.gitProxyUri;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final uid = this.uid;
    final updateTime = this.updateTime;
    final webhookId = this.webhookId;
    return {
      'annotations': ?annotations,
      'cloneUri': ?cloneUri,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'etag': ?etag,
      'gitProxyUri': ?gitProxyUri,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'webhookId': ?webhookId,
    };
  }
}

/// Google Artifact Analysis configurations.
class GoogleArtifactAnalysis {
  /// The project id of the project where the provenance is stored.
  ///
  /// Required.
  core.String? projectId;

  GoogleArtifactAnalysis({this.projectId});

  GoogleArtifactAnalysis.fromJson(core.Map json_)
    : this(projectId: json_['projectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    return {'projectId': ?projectId};
  }
}

/// Google Artifact Registry configurations.
class GoogleArtifactRegistry {
  /// The name of the artifact registry package.
  ///
  /// Required. Immutable.
  core.String? artifactRegistryPackage;

  /// The host project of Artifact Registry.
  ///
  /// Required.
  core.String? projectId;

  GoogleArtifactRegistry({this.artifactRegistryPackage, this.projectId});

  GoogleArtifactRegistry.fromJson(core.Map json_)
    : this(
        artifactRegistryPackage:
            json_['artifactRegistryPackage'] as core.String?,
        projectId: json_['projectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactRegistryPackage = this.artifactRegistryPackage;
    final projectId = this.projectId;
    return {
      'artifactRegistryPackage': ?artifactRegistryPackage,
      'projectId': ?projectId,
    };
  }
}

/// GoogleCloudRun represents the Cloud Run runtime.
class GoogleCloudRun {
  /// The name of the Cloud Run service.
  ///
  /// Format: `projects/{project}/locations/{location}/services/{service}`.
  ///
  /// Required. Immutable.
  core.String? serviceUri;

  GoogleCloudRun({this.serviceUri});

  GoogleCloudRun.fromJson(core.Map json_)
    : this(serviceUri: json_['serviceUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final serviceUri = this.serviceUri;
    return {'serviceUri': ?serviceUri};
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// The InsightsConfig resource is the core configuration object to capture
/// events from your Software Development Lifecycle.
///
/// It acts as the central hub for managing how Developer Connect understands
/// your application, its runtime environments, and the artifacts deployed
/// within them.
class InsightsConfig {
  /// User specified annotations.
  ///
  /// See https://google.aip.dev/148#annotations for more details such as format
  /// and size limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The name of the App Hub Application.
  ///
  /// Format: projects/{project}/locations/{location}/applications/{application}
  ///
  /// Optional.
  core.String? appHubApplication;

  /// The artifact configurations of the artifacts that are deployed.
  ///
  /// Optional.
  core.List<ArtifactConfig>? artifactConfigs;

  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Any errors that occurred while setting up the InsightsConfig.
  ///
  /// Each error will be in the format: `field_name: error_message`, e.g.
  /// GetAppHubApplication: Permission denied while getting App Hub application.
  /// Please grant permissions to the P4SA.
  ///
  /// Output only.
  core.List<Status>? errors;

  /// Set of labels associated with an InsightsConfig.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the InsightsConfig. Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
  core.String? name;

  /// The projects to track with the InsightsConfig.
  ///
  /// Optional.
  Projects? projects;

  /// Reconciling (https://google.aip.dev/128#reconciliation).
  ///
  /// Set to true if the current state of InsightsConfig does not match the
  /// user's intended state, and the service is actively updating the resource
  /// to reconcile them. This can happen due to user-triggered updates or system
  /// actions like failover or maintenance.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The runtime configurations where the application is deployed.
  ///
  /// Output only.
  core.List<RuntimeConfig>? runtimeConfigs;

  /// The state of the InsightsConfig.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified.
  /// - "PENDING" : The InsightsConfig is pending application discovery/runtime
  /// discovery.
  /// - "COMPLETE" : The initial discovery process is complete.
  /// - "ERROR" : The InsightsConfig is in an error state.
  core.String? state;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  InsightsConfig({
    this.annotations,
    this.appHubApplication,
    this.artifactConfigs,
    this.createTime,
    this.errors,
    this.labels,
    this.name,
    this.projects,
    this.reconciling,
    this.runtimeConfigs,
    this.state,
    this.updateTime,
  });

  InsightsConfig.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        appHubApplication: json_['appHubApplication'] as core.String?,
        artifactConfigs: (json_['artifactConfigs'] as core.List?)
            ?.map(
              (value) => ArtifactConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        createTime: json_['createTime'] as core.String?,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        projects: json_.containsKey('projects')
            ? Projects.fromJson(
                json_['projects'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reconciling: json_['reconciling'] as core.bool?,
        runtimeConfigs: (json_['runtimeConfigs'] as core.List?)
            ?.map(
              (value) => RuntimeConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final appHubApplication = this.appHubApplication;
    final artifactConfigs = this.artifactConfigs;
    final createTime = this.createTime;
    final errors = this.errors;
    final labels = this.labels;
    final name = this.name;
    final projects = this.projects;
    final reconciling = this.reconciling;
    final runtimeConfigs = this.runtimeConfigs;
    final state = this.state;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'appHubApplication': ?appHubApplication,
      'artifactConfigs': ?artifactConfigs,
      'createTime': ?createTime,
      'errors': ?errors,
      'labels': ?labels,
      'name': ?name,
      'projects': ?projects,
      'reconciling': ?reconciling,
      'runtimeConfigs': ?runtimeConfigs,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }
}

/// Represents an installation of the GitHub App.
class Installation {
  /// ID of the installation in GitHub.
  core.String? id;

  /// Name of the GitHub user or organization that owns this installation.
  core.String? name;

  /// Either "user" or "organization".
  core.String? type;

  Installation({this.id, this.name, this.type});

  Installation.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final name = this.name;
    final type = this.type;
    return {'id': ?id, 'name': ?name, 'type': ?type};
  }
}

/// Describes stage and necessary actions to be taken by the user to complete
/// the installation.
///
/// Used for GitHub and GitHub Enterprise based connections.
typedef InstallationState = $InstallationState;

/// LinkableGitRepository represents a git repository that can be linked to a
/// connection.
class LinkableGitRepository {
  /// The clone uri of the repository.
  core.String? cloneUri;

  LinkableGitRepository({this.cloneUri});

  LinkableGitRepository.fromJson(core.Map json_)
    : this(cloneUri: json_['cloneUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final cloneUri = this.cloneUri;
    return {'cloneUri': ?cloneUri};
  }
}

/// Message for response to listing AccountConnectors
class ListAccountConnectorsResponse {
  /// The list of AccountConnectors
  core.List<AccountConnector>? accountConnectors;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAccountConnectorsResponse({
    this.accountConnectors,
    this.nextPageToken,
    this.unreachable,
  });

  ListAccountConnectorsResponse.fromJson(core.Map json_)
    : this(
        accountConnectors: (json_['accountConnectors'] as core.List?)
            ?.map(
              (value) => AccountConnector.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountConnectors = this.accountConnectors;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'accountConnectors': ?accountConnectors,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Connections
class ListConnectionsResponse {
  /// The list of Connections.
  core.List<Connection>? connections;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections: (json_['connections'] as core.List?)
            ?.map(
              (value) => Connection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connections = this.connections;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'connections': ?connections,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Response to listing DeploymentEvents.
class ListDeploymentEventsResponse {
  /// The list of DeploymentEvents.
  core.List<DeploymentEvent>? deploymentEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDeploymentEventsResponse({this.deploymentEvents, this.nextPageToken});

  ListDeploymentEventsResponse.fromJson(core.Map json_)
    : this(
        deploymentEvents: (json_['deploymentEvents'] as core.List?)
            ?.map(
              (value) => DeploymentEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deploymentEvents = this.deploymentEvents;
    final nextPageToken = this.nextPageToken;
    return {
      'deploymentEvents': ?deploymentEvents,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Message for response to listing GitRepositoryLinks
class ListGitRepositoryLinksResponse {
  /// The list of GitRepositoryLinks.
  core.List<GitRepositoryLink>? gitRepositoryLinks;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGitRepositoryLinksResponse({
    this.gitRepositoryLinks,
    this.nextPageToken,
    this.unreachable,
  });

  ListGitRepositoryLinksResponse.fromJson(core.Map json_)
    : this(
        gitRepositoryLinks: (json_['gitRepositoryLinks'] as core.List?)
            ?.map(
              (value) => GitRepositoryLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gitRepositoryLinks = this.gitRepositoryLinks;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'gitRepositoryLinks': ?gitRepositoryLinks,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Request for response to listing InsightsConfigs.
class ListInsightsConfigsResponse {
  /// The list of InsightsConfigs.
  core.List<InsightsConfig>? insightsConfigs;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInsightsConfigsResponse({
    this.insightsConfigs,
    this.nextPageToken,
    this.unreachable,
  });

  ListInsightsConfigsResponse.fromJson(core.Map json_)
    : this(
        insightsConfigs: (json_['insightsConfigs'] as core.List?)
            ?.map(
              (value) => InsightsConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final insightsConfigs = this.insightsConfigs;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'insightsConfigs': ?insightsConfigs,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Users
class ListUsersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of Users
  core.List<User>? users;

  ListUsersResponse({this.nextPageToken, this.unreachable, this.users});

  ListUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        users: (json_['users'] as core.List?)
            ?.map(
              (value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    final users = this.users;
    return {
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
      'users': ?users,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message for modifying SCM Pull Request.
class ModifyGitRepositoryLinkPullRequestRequest {
  /// The target branch to merge into.
  ///
  /// Optional.
  core.String? baseRef;

  /// The body description of the Pull Request.
  ///
  /// Optional.
  core.String? body;

  /// The SCM-specific pull request identifier (for example, "45").
  ///
  /// Required.
  core.String? pullRequestId;

  /// The state of the Pull Request.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "OPEN" : The pull request is open.
  /// - "CLOSED" : The pull request is closed.
  core.String? state;

  /// The title of the Pull Request.
  ///
  /// Optional.
  core.String? title;

  ModifyGitRepositoryLinkPullRequestRequest({
    this.baseRef,
    this.body,
    this.pullRequestId,
    this.state,
    this.title,
  });

  ModifyGitRepositoryLinkPullRequestRequest.fromJson(core.Map json_)
    : this(
        baseRef: json_['baseRef'] as core.String?,
        body: json_['body'] as core.String?,
        pullRequestId: json_['pullRequestId'] as core.String?,
        state: json_['state'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseRef = this.baseRef;
    final body = this.body;
    final pullRequestId = this.pullRequestId;
    final state = this.state;
    final title = this.title;
    return {
      'baseRef': ?baseRef,
      'body': ?body,
      'pullRequestId': ?pullRequestId,
      'state': ?state,
      'title': ?title,
    };
  }
}

/// Represents an OAuth token of the account that authorized the Connection, and
/// associated metadata.
class OAuthCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the
  /// connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// Required.
  core.String? oauthTokenSecretVersion;

  /// The username associated with this token.
  ///
  /// Output only.
  core.String? username;

  OAuthCredential({this.oauthTokenSecretVersion, this.username});

  OAuthCredential.fromJson(core.Map json_)
    : this(
        oauthTokenSecretVersion:
            json_['oauthTokenSecretVersion'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oauthTokenSecretVersion = this.oauthTokenSecretVersion;
    final username = this.username;
    return {
      'oauthTokenSecretVersion': ?oauthTokenSecretVersion,
      'username': ?username,
    };
  }
}

/// Message for opening SCM Pull Request.
class OpenGitRepositoryLinkPullRequestRequest {
  /// The Pull Request details to open.
  ///
  /// Input fields used: title, body, head_ref, base_ref.
  ///
  /// Required.
  PullRequest? pullRequest;

  OpenGitRepositoryLinkPullRequestRequest({this.pullRequest});

  OpenGitRepositoryLinkPullRequestRequest.fromJson(core.Map json_)
    : this(
        pullRequest: json_.containsKey('pullRequest')
            ? PullRequest.fromJson(
                json_['pullRequest'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pullRequest = this.pullRequest;
    return {'pullRequest': ?pullRequest};
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// RPC request object accepted by the ProcessBitbucketCloudWebhook RPC method.
class ProcessBitbucketCloudWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessBitbucketCloudWebhookRequest({this.body});

  ProcessBitbucketCloudWebhookRequest.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? HttpBody.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// RPC request object accepted by the ProcessBitbucketDataCenterWebhook RPC
/// method.
class ProcessBitbucketDataCenterWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessBitbucketDataCenterWebhookRequest({this.body});

  ProcessBitbucketDataCenterWebhookRequest.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? HttpBody.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// RPC request object accepted by the ProcessGitHubEnterpriseWebhook RPC
/// method.
class ProcessGitHubEnterpriseWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitHubEnterpriseWebhookRequest({this.body});

  ProcessGitHubEnterpriseWebhookRequest.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? HttpBody.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// RPC request object accepted by the ProcessGitLabEnterpriseWebhook RPC
/// method.
class ProcessGitLabEnterpriseWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitLabEnterpriseWebhookRequest({this.body});

  ProcessGitLabEnterpriseWebhookRequest.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? HttpBody.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// RPC request object accepted by the ProcessGitLabWebhook RPC method.
class ProcessGitLabWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitLabWebhookRequest({this.body});

  ProcessGitLabWebhookRequest.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? HttpBody.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// Projects represents the projects to track with the InsightsConfig.
class Projects {
  /// The project IDs.
  ///
  /// Format: {project}
  ///
  /// Optional.
  core.List<core.String>? projectIds;

  Projects({this.projectIds});

  Projects.fromJson(core.Map json_)
    : this(
        projectIds: (json_['projectIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final projectIds = this.projectIds;
    return {'projectIds': ?projectIds};
  }
}

/// ProviderOAuthConfig is the OAuth config for a provider.
class ProviderOAuthConfig {
  /// User selected scopes to apply to the Oauth config In the event of changing
  /// scopes, user records under AccountConnector will be deleted and users will
  /// re-auth again.
  ///
  /// Required.
  core.List<core.String>? scopes;

  /// Developer Connect provided OAuth.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "SYSTEM_PROVIDER_UNSPECIFIED" : No system provider specified.
  /// - "GITHUB" : GitHub provider. Scopes can be found at
  /// https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/scopes-for-oauth-apps#available-scopes
  /// - "GITLAB" : GitLab provider. Scopes can be found at
  /// https://docs.gitlab.com/user/profile/personal_access_tokens/#personal-access-token-scopes
  /// - "GOOGLE" : Google provider. Recommended scopes:
  /// "https://www.googleapis.com/auth/drive.readonly",
  /// "https://www.googleapis.com/auth/documents.readonly"
  /// - "SENTRY" : Sentry provider. Scopes can be found at
  /// https://docs.sentry.io/api/permissions/
  /// - "ROVO" : Rovo provider. Must select the "rovo" scope.
  /// - "NEW_RELIC" : New Relic provider. No scopes are allowed.
  /// - "DATASTAX" : Datastax provider. No scopes are allowed.
  /// - "DYNATRACE" : Dynatrace provider.
  /// - "BITBUCKET_CLOUD" : Bitbucket Cloud provider.
  core.String? systemProviderId;

  ProviderOAuthConfig({this.scopes, this.systemProviderId});

  ProviderOAuthConfig.fromJson(core.Map json_)
    : this(
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        systemProviderId: json_['systemProviderId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final scopes = this.scopes;
    final systemProviderId = this.systemProviderId;
    return {'scopes': ?scopes, 'systemProviderId': ?systemProviderId};
  }
}

/// The proxy configuration.
class ProxyConfig {
  /// Setting this to true allows the git and http proxies to perform actions on
  /// behalf of the user configured under the account connector.
  ///
  /// Optional.
  core.bool? enabled;

  /// The base URI for the HTTP proxy endpoint.
  ///
  /// Has the format
  /// `https://{generatedID}-a-h-{shortRegion}.developerconnect.dev` Populated
  /// only when `enabled` is set to `true`. This endpoint is used by other
  /// Google services that integrate with Developer Connect.
  ///
  /// Output only.
  core.String? httpProxyBaseUri;

  ProxyConfig({this.enabled, this.httpProxyBaseUri});

  ProxyConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        httpProxyBaseUri: json_['httpProxyBaseUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final httpProxyBaseUri = this.httpProxyBaseUri;
    return {'enabled': ?enabled, 'httpProxyBaseUri': ?httpProxyBaseUri};
  }
}

/// Message representing a SCM Pull Request.
class PullRequest {
  /// The username of the author.
  ///
  /// Output only.
  core.String? author;

  /// The target commit SHA of the base branch.
  ///
  /// Required.
  core.String? baseRef;

  /// The body description of the PR.
  ///
  /// Optional.
  core.String? body;

  /// When the PR was closed.
  ///
  /// Output only.
  core.String? closeTime;

  /// When the PR was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the PR was declined.
  ///
  /// Only set for SCM providers that support declining pull requests. Never set
  /// for GitHub, GitHub Enterprise, GitLab, or GitLab Enterprise, where a pull
  /// request closed without being merged is `CLOSED`.
  ///
  /// Output only.
  core.String? declineTime;

  /// The source commit SHA of the head branch.
  ///
  /// Required.
  core.String? headRef;

  /// The HTML URL of the pull request on the SCM provider.
  ///
  /// Output only.
  core.String? htmlUrl;

  /// The ID of the PR.
  ///
  /// Required.
  core.String? id;

  /// When the PR was merged.
  ///
  /// Output only.
  core.String? mergeTime;

  /// The mergeability state of the pull request.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MERGEABILITY_UNSPECIFIED" : Mergeability state is unspecified.
  /// - "MERGEABLE" : The pull request can be merged cleanly without Git
  /// conflicts.
  /// - "CONFLICTING" : The pull request has merge conflicts and cannot be
  /// merged cleanly.
  /// - "COMPUTING" : The mergeability state is currently being computed
  /// asynchronously by the upstream SCM provider.
  core.String? mergeability;

  /// The current state of the PR.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "OPEN" : The PR is open.
  /// - "CLOSED" : The PR is closed.
  /// - "MERGED" : The PR is merged.
  /// - "DECLINED" : The PR is declined. Only used by SCM providers that support
  /// declining pull requests. Never used for GitHub, GitHub Enterprise, GitLab,
  /// or GitLab Enterprise, where a pull request closed without being merged is
  /// `CLOSED`.
  core.String? state;

  /// The title of the PR.
  ///
  /// Required.
  core.String? title;

  /// When the PR was updated.
  ///
  /// Output only.
  core.String? updateTime;

  PullRequest({
    this.author,
    this.baseRef,
    this.body,
    this.closeTime,
    this.createTime,
    this.declineTime,
    this.headRef,
    this.htmlUrl,
    this.id,
    this.mergeTime,
    this.mergeability,
    this.state,
    this.title,
    this.updateTime,
  });

  PullRequest.fromJson(core.Map json_)
    : this(
        author: json_['author'] as core.String?,
        baseRef: json_['baseRef'] as core.String?,
        body: json_['body'] as core.String?,
        closeTime: json_['closeTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        declineTime: json_['declineTime'] as core.String?,
        headRef: json_['headRef'] as core.String?,
        htmlUrl: json_['htmlUrl'] as core.String?,
        id: json_['id'] as core.String?,
        mergeTime: json_['mergeTime'] as core.String?,
        mergeability: json_['mergeability'] as core.String?,
        state: json_['state'] as core.String?,
        title: json_['title'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final baseRef = this.baseRef;
    final body = this.body;
    final closeTime = this.closeTime;
    final createTime = this.createTime;
    final declineTime = this.declineTime;
    final headRef = this.headRef;
    final htmlUrl = this.htmlUrl;
    final id = this.id;
    final mergeTime = this.mergeTime;
    final mergeability = this.mergeability;
    final state = this.state;
    final title = this.title;
    final updateTime = this.updateTime;
    return {
      'author': ?author,
      'baseRef': ?baseRef,
      'body': ?body,
      'closeTime': ?closeTime,
      'createTime': ?createTime,
      'declineTime': ?declineTime,
      'headRef': ?headRef,
      'htmlUrl': ?htmlUrl,
      'id': ?id,
      'mergeTime': ?mergeTime,
      'mergeability': ?mergeability,
      'state': ?state,
      'title': ?title,
      'updateTime': ?updateTime,
    };
  }
}

/// Message representing a SCM Pull Request Comment.
class PullRequestComment {
  /// The username of the author.
  ///
  /// Output only.
  core.String? author;

  /// The body of the comment.
  ///
  /// Required.
  core.String? body;

  /// When the comment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The ID of the comment.
  ///
  /// Output only.
  core.String? id;

  /// When the comment was updated.
  ///
  /// Output only.
  core.String? updateTime;

  PullRequestComment({
    this.author,
    this.body,
    this.createTime,
    this.id,
    this.updateTime,
  });

  PullRequestComment.fromJson(core.Map json_)
    : this(
        author: json_['author'] as core.String?,
        body: json_['body'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        id: json_['id'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final body = this.body;
    final createTime = this.createTime;
    final id = this.id;
    final updateTime = this.updateTime;
    return {
      'author': ?author,
      'body': ?body,
      'createTime': ?createTime,
      'id': ?id,
      'updateTime': ?updateTime,
    };
  }
}

/// Message representing a SCM Pull Request Review Comment (inline on diff).
class PullRequestReviewComment {
  /// The username of the author.
  ///
  /// Output only.
  core.String? author;

  /// The body of the comment.
  ///
  /// Required.
  core.String? body;

  /// The commit SHA the comment was actually applied to.
  ///
  /// Output only.
  core.String? commitId;

  /// When the comment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The first line of the comment range (inclusive).
  ///
  /// If not specified, the comment applies only to the `last_line`.
  ///
  /// Optional.
  core.int? firstLine;

  /// The ID of the comment.
  ///
  /// Output only.
  core.String? id;

  /// The last line of the comment range (inclusive).
  ///
  /// If `first_line` is not specified, the comment applies only to this line.
  ///
  /// Required.
  core.int? lastLine;

  /// The file path to comment on.
  ///
  /// Required.
  core.String? path;

  /// The side of the diff to comment on.
  ///
  /// Defaults to HEAD.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DIFF_SIDE_UNSPECIFIED" : Default value. This value is unused.
  /// - "BASE" : The side of the diff before changes (deleted or modified
  /// lines).
  /// - "HEAD" : The side of the diff after changes (added or modified lines).
  core.String? side;

  /// When the comment was updated.
  ///
  /// Output only.
  core.String? updateTime;

  PullRequestReviewComment({
    this.author,
    this.body,
    this.commitId,
    this.createTime,
    this.firstLine,
    this.id,
    this.lastLine,
    this.path,
    this.side,
    this.updateTime,
  });

  PullRequestReviewComment.fromJson(core.Map json_)
    : this(
        author: json_['author'] as core.String?,
        body: json_['body'] as core.String?,
        commitId: json_['commitId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        firstLine: json_['firstLine'] as core.int?,
        id: json_['id'] as core.String?,
        lastLine: json_['lastLine'] as core.int?,
        path: json_['path'] as core.String?,
        side: json_['side'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final body = this.body;
    final commitId = this.commitId;
    final createTime = this.createTime;
    final firstLine = this.firstLine;
    final id = this.id;
    final lastLine = this.lastLine;
    final path = this.path;
    final side = this.side;
    final updateTime = this.updateTime;
    return {
      'author': ?author,
      'body': ?body,
      'commitId': ?commitId,
      'createTime': ?createTime,
      'firstLine': ?firstLine,
      'id': ?id,
      'lastLine': ?lastLine,
      'path': ?path,
      'side': ?side,
      'updateTime': ?updateTime,
    };
  }
}

/// RuntimeConfig represents the runtimes where the application is deployed.
class RuntimeConfig {
  /// App Hub Service.
  ///
  /// Output only.
  AppHubService? appHubService;

  /// App Hub Workload.
  ///
  /// Output only.
  AppHubWorkload? appHubWorkload;

  /// Google Kubernetes Engine runtime.
  ///
  /// Output only.
  GKEWorkload? gkeWorkload;

  /// Cloud Run runtime.
  ///
  /// Output only.
  GoogleCloudRun? googleCloudRun;

  /// The state of the Runtime.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified.
  /// - "LINKED" : The runtime configuration has been linked to the
  /// InsightsConfig.
  /// - "UNLINKED" : The runtime configuration has been unlinked to the
  /// InsightsConfig.
  core.String? state;

  /// The URI of the runtime configuration.
  ///
  /// For GKE, this is the cluster name. For Cloud Run, this is the service
  /// name.
  ///
  /// Required. Immutable.
  core.String? uri;

  RuntimeConfig({
    this.appHubService,
    this.appHubWorkload,
    this.gkeWorkload,
    this.googleCloudRun,
    this.state,
    this.uri,
  });

  RuntimeConfig.fromJson(core.Map json_)
    : this(
        appHubService: json_.containsKey('appHubService')
            ? AppHubService.fromJson(
                json_['appHubService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        appHubWorkload: json_.containsKey('appHubWorkload')
            ? AppHubWorkload.fromJson(
                json_['appHubWorkload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gkeWorkload: json_.containsKey('gkeWorkload')
            ? GKEWorkload.fromJson(
                json_['gkeWorkload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleCloudRun: json_.containsKey('googleCloudRun')
            ? GoogleCloudRun.fromJson(
                json_['googleCloudRun'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appHubService = this.appHubService;
    final appHubWorkload = this.appHubWorkload;
    final gkeWorkload = this.gkeWorkload;
    final googleCloudRun = this.googleCloudRun;
    final state = this.state;
    final uri = this.uri;
    return {
      'appHubService': ?appHubService,
      'appHubWorkload': ?appHubWorkload,
      'gkeWorkload': ?gkeWorkload,
      'googleCloudRun': ?googleCloudRun,
      'state': ?state,
      'uri': ?uri,
    };
  }
}

/// SCMCommit represents commit metadata.
class SCMCommit {
  /// The author's display name.
  core.String? author;

  /// The author's email address.
  core.String? authorEmail;

  /// Timestamp when the commit was authored.
  core.String? commitTime;

  /// Commit message text.
  core.String? message;

  /// Full 40-character SCM commit SHA.
  core.String? sha;

  /// The SCM provider's HTML URL link for this commit.
  core.String? url;

  SCMCommit({
    this.author,
    this.authorEmail,
    this.commitTime,
    this.message,
    this.sha,
    this.url,
  });

  SCMCommit.fromJson(core.Map json_)
    : this(
        author: json_['author'] as core.String?,
        authorEmail: json_['authorEmail'] as core.String?,
        commitTime: json_['commitTime'] as core.String?,
        message: json_['message'] as core.String?,
        sha: json_['sha'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final author = this.author;
    final authorEmail = this.authorEmail;
    final commitTime = this.commitTime;
    final message = this.message;
    final sha = this.sha;
    final url = this.url;
    return {
      'author': ?author,
      'authorEmail': ?authorEmail,
      'commitTime': ?commitTime,
      'message': ?message,
      'sha': ?sha,
      'url': ?url,
    };
  }
}

/// Configuration for connections to Secure Source Manager instance
class SecureSourceManagerInstanceConfig {
  /// Secure Source Manager instance resource, formatted as `projects / *
  /// /locations / * /instances / * `
  ///
  /// Required. Immutable.
  core.String? instance;

  SecureSourceManagerInstanceConfig({this.instance});

  SecureSourceManagerInstanceConfig.fromJson(core.Map json_)
    : this(instance: json_['instance'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final instance = this.instance;
    return {'instance': ?instance};
  }
}

/// ServiceDirectoryConfig represents Service Directory configuration for a
/// connection.
typedef ServiceDirectoryConfig = $ServiceDirectoryConfig;

/// Message for responding to starting an OAuth flow.
class StartOAuthResponse {
  /// The authorization server URL to the OAuth flow of the service provider.
  core.String? authUri;

  /// The client ID to the OAuth App of the service provider.
  core.String? clientId;

  /// Please refer to https://datatracker.ietf.org/doc/html/rfc7636#section-4.1
  core.String? codeChallenge;

  /// Please refer to https://datatracker.ietf.org/doc/html/rfc7636#section-4.2
  core.String? codeChallengeMethod;

  /// The list of scopes requested by the application.
  core.List<core.String>? scopes;

  /// The ID of the system provider.
  /// Possible string values are:
  /// - "SYSTEM_PROVIDER_UNSPECIFIED" : No system provider specified.
  /// - "GITHUB" : GitHub provider. Scopes can be found at
  /// https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/scopes-for-oauth-apps#available-scopes
  /// - "GITLAB" : GitLab provider. Scopes can be found at
  /// https://docs.gitlab.com/user/profile/personal_access_tokens/#personal-access-token-scopes
  /// - "GOOGLE" : Google provider. Recommended scopes:
  /// "https://www.googleapis.com/auth/drive.readonly",
  /// "https://www.googleapis.com/auth/documents.readonly"
  /// - "SENTRY" : Sentry provider. Scopes can be found at
  /// https://docs.sentry.io/api/permissions/
  /// - "ROVO" : Rovo provider. Must select the "rovo" scope.
  /// - "NEW_RELIC" : New Relic provider. No scopes are allowed.
  /// - "DATASTAX" : Datastax provider. No scopes are allowed.
  /// - "DYNATRACE" : Dynatrace provider.
  /// - "BITBUCKET_CLOUD" : Bitbucket Cloud provider.
  core.String? systemProviderId;

  /// The ticket to be used for post processing the callback from the service
  /// provider.
  core.String? ticket;

  StartOAuthResponse({
    this.authUri,
    this.clientId,
    this.codeChallenge,
    this.codeChallengeMethod,
    this.scopes,
    this.systemProviderId,
    this.ticket,
  });

  StartOAuthResponse.fromJson(core.Map json_)
    : this(
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        codeChallenge: json_['codeChallenge'] as core.String?,
        codeChallengeMethod: json_['codeChallengeMethod'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        systemProviderId: json_['systemProviderId'] as core.String?,
        ticket: json_['ticket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authUri = this.authUri;
    final clientId = this.clientId;
    final codeChallenge = this.codeChallenge;
    final codeChallengeMethod = this.codeChallengeMethod;
    final scopes = this.scopes;
    final systemProviderId = this.systemProviderId;
    final ticket = this.ticket;
    return {
      'authUri': ?authUri,
      'clientId': ?clientId,
      'codeChallenge': ?codeChallenge,
      'codeChallengeMethod': ?codeChallengeMethod,
      'scopes': ?scopes,
      'systemProviderId': ?systemProviderId,
      'ticket': ?ticket,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// User represents a user connected to the service providers through a
/// AccountConnector.
class User {
  /// The timestamp when the user was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Developer Connect automatically converts user identity to some human
  /// readable description, e.g., email address.
  ///
  /// Output only.
  core.String? displayName;

  /// The timestamp when the token was last requested.
  ///
  /// Output only.
  core.String? lastTokenRequestTime;

  /// Identifier.
  ///
  /// Resource name of the user, in the format `projects / * /locations / *
  /// /accountConnectors / * /users / * `.
  core.String? name;

  User({
    this.createTime,
    this.displayName,
    this.lastTokenRequestTime,
    this.name,
  });

  User.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        lastTokenRequestTime: json_['lastTokenRequestTime'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final lastTokenRequestTime = this.lastTokenRequestTime;
    final name = this.name;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'lastTokenRequestTime': ?lastTokenRequestTime,
      'name': ?name,
    };
  }
}

/// Represents a personal access token that authorized the Connection, and
/// associated metadata.
class UserCredential {
  /// A SecretManager resource containing the user token that authorizes the
  /// Developer Connect connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * ` (if regional secrets are
  /// supported in that location).
  ///
  /// Required.
  core.String? userTokenSecretVersion;

  /// The username associated with this token.
  ///
  /// Output only.
  core.String? username;

  UserCredential({this.userTokenSecretVersion, this.username});

  UserCredential.fromJson(core.Map json_)
    : this(
        userTokenSecretVersion: json_['userTokenSecretVersion'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final userTokenSecretVersion = this.userTokenSecretVersion;
    final username = this.username;
    return {
      'userTokenSecretVersion': ?userTokenSecretVersion,
      'username': ?username,
    };
  }
}

/// A user repository that can be linked to the account connector.
///
/// Consists of the repo name and the git proxy URL to forward requests to this
/// repo.
class UserRepository {
  /// The git clone URL of the repo.
  ///
  /// For example: https://github.com/myuser/myrepo.git
  ///
  /// Output only.
  core.String? cloneUri;

  /// The user friendly repo name (e.g., myuser/myrepo)
  ///
  /// Output only.
  core.String? displayName;

  /// The Git proxy URL for this repo.
  ///
  /// For example:
  /// https://us-west1-git.developerconnect.dev/a/my-proj/my-ac/myuser/myrepo.git.
  /// Populated only when `proxy_config.enabled` is set to `true` in the Account
  /// Connector. This URL is used by other Google services that integrate with
  /// Developer Connect.
  ///
  /// Output only.
  core.String? gitProxyUri;

  UserRepository({this.cloneUri, this.displayName, this.gitProxyUri});

  UserRepository.fromJson(core.Map json_)
    : this(
        cloneUri: json_['cloneUri'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gitProxyUri: json_['gitProxyUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloneUri = this.cloneUri;
    final displayName = this.displayName;
    final gitProxyUri = this.gitProxyUri;
    return {
      'cloneUri': ?cloneUri,
      'displayName': ?displayName,
      'gitProxyUri': ?gitProxyUri,
    };
  }
}
