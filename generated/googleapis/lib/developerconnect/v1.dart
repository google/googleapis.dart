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

  DeveloperConnectApi(http.Client client,
      {core.String rootUrl = 'https://developerconnect.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (accountConnectorId != null)
        'accountConnectorId': [accountConnectorId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountConnector.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists AccountConnectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListAccountConnectorsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/accountConnectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountConnectorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$accountConnector') +
        '/users:fetchAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchAccessTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<User> fetchSelf(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/users:fetchSelf';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Users in a given project, location, and account_connector.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListUsersRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accountConnectors/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [connectionId] - Required. Id of the requesting object If auto-generating
  /// Id server-side, remove this field and connection_id from the
  /// method_signature of Create RPC
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
      if (connectionId != null) 'connectionId': [connectionId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$connection') +
        ':fetchGitHubInstallations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitHubInstallationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$connection') +
        ':fetchLinkableGitRepositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchLinkableGitRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Connection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListConnectionsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
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
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a GitRepositoryLink.
  ///
  /// Upon linking a Git Repository, Developer Connect will configure the Git
  /// Repository to send webhook events to Developer Connect. Connections that
  /// use Firebase GitHub Application will have events forwarded to the Firebase
  /// service. All other Connections will have events forwarded to Cloud Build.
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
      if (gitRepositoryLinkId != null)
        'gitRepositoryLinkId': [gitRepositoryLinkId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (refType != null) 'refType': [refType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$gitRepositoryLink') + ':fetchGitRefs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchGitRefsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$gitRepositoryLink') +
        ':fetchReadWriteToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchReadWriteTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GitRepositoryLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists GitRepositoryLinks in a given project, location, and connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListGitRepositoryLinksRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gitRepositoryLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGitRepositoryLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
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
      if ($fields != null) 'fields': [$fields],
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
      if (insightsConfigId != null) 'insightsConfigId': [insightsConfigId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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

  /// Delete a single Insight.
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
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InsightsConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insightsConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInsightsConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  ProviderOAuthConfig? providerOauthConfig;

  /// The timestamp when the accountConnector was updated.
  ///
  /// Output only.
  core.String? updateTime;

  AccountConnector({
    this.annotations,
    this.createTime,
    this.etag,
    this.labels,
    this.name,
    this.oauthStartUri,
    this.providerOauthConfig,
    this.updateTime,
  });

  AccountConnector.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          oauthStartUri: json_['oauthStartUri'] as core.String?,
          providerOauthConfig: json_.containsKey('providerOauthConfig')
              ? ProviderOAuthConfig.fromJson(json_['providerOauthConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (oauthStartUri != null) 'oauthStartUri': oauthStartUri!,
        if (providerOauthConfig != null)
          'providerOauthConfig': providerOauthConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
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

  AppHubWorkload({
    this.criticality,
    this.environment,
    this.workload,
  });

  AppHubWorkload.fromJson(core.Map json_)
      : this(
          criticality: json_['criticality'] as core.String?,
          environment: json_['environment'] as core.String?,
          workload: json_['workload'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (criticality != null) 'criticality': criticality!,
        if (environment != null) 'environment': environment!,
        if (workload != null) 'workload': workload!,
      };
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
              ? GoogleArtifactAnalysis.fromJson(json_['googleArtifactAnalysis']
                  as core.Map<core.String, core.dynamic>)
              : null,
          googleArtifactRegistry: json_.containsKey('googleArtifactRegistry')
              ? GoogleArtifactRegistry.fromJson(json_['googleArtifactRegistry']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleArtifactAnalysis != null)
          'googleArtifactAnalysis': googleArtifactAnalysis!,
        if (googleArtifactRegistry != null)
          'googleArtifactRegistry': googleArtifactRegistry!,
        if (uri != null) 'uri': uri!,
      };
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
  /// webhook events, formatted as `projects / * /secrets / * /versions / * `.
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
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          webhookSecretSecretVersion:
              json_['webhookSecretSecretVersion'] as core.String?,
          workspace: json_['workspace'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
        if (workspace != null) 'workspace': workspace!,
      };
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
  /// webhook events, formatted as `projects / * /secrets / * /versions / * `.
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
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hostUri: json_['hostUri'] as core.String?,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          serverVersion: json_['serverVersion'] as core.String?,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? ServiceDirectoryConfig.fromJson(json_['serviceDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sslCaCertificate: json_['sslCaCertificate'] as core.String?,
          webhookSecretSecretVersion:
              json_['webhookSecretSecretVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCaCertificate != null) 'sslCaCertificate': sslCaCertificate!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
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

  /// Create timestamp
  ///
  /// Output only.
  core.String? createTime;

  /// The crypto key configuration.
  ///
  /// This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  ///
  /// Optional.
  CryptoKeyConfig? cryptoKeyConfig;

  /// Delete timestamp
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

  /// Configuration for the git proxy feature.
  ///
  /// Enabling the git proxy allows clients to perform git operations on the
  /// repositories linked in the connection.
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

  /// A system-assigned unique identifier for the Connection.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp
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
    this.installationState,
    this.labels,
    this.name,
    this.reconciling,
    this.uid,
    this.updateTime,
  });

  Connection.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          bitbucketCloudConfig: json_.containsKey('bitbucketCloudConfig')
              ? BitbucketCloudConfig.fromJson(json_['bitbucketCloudConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bitbucketDataCenterConfig:
              json_.containsKey('bitbucketDataCenterConfig')
                  ? BitbucketDataCenterConfig.fromJson(
                      json_['bitbucketDataCenterConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_['createTime'] as core.String?,
          cryptoKeyConfig: json_.containsKey('cryptoKeyConfig')
              ? CryptoKeyConfig.fromJson(json_['cryptoKeyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: json_['deleteTime'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          etag: json_['etag'] as core.String?,
          gitProxyConfig: json_.containsKey('gitProxyConfig')
              ? GitProxyConfig.fromJson(json_['gitProxyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          githubConfig: json_.containsKey('githubConfig')
              ? GitHubConfig.fromJson(
                  json_['githubConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          githubEnterpriseConfig: json_.containsKey('githubEnterpriseConfig')
              ? GitHubEnterpriseConfig.fromJson(json_['githubEnterpriseConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gitlabConfig: json_.containsKey('gitlabConfig')
              ? GitLabConfig.fromJson(
                  json_['gitlabConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gitlabEnterpriseConfig: json_.containsKey('gitlabEnterpriseConfig')
              ? GitLabEnterpriseConfig.fromJson(json_['gitlabEnterpriseConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          installationState: json_.containsKey('installationState')
              ? InstallationState.fromJson(json_['installationState']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (bitbucketCloudConfig != null)
          'bitbucketCloudConfig': bitbucketCloudConfig!,
        if (bitbucketDataCenterConfig != null)
          'bitbucketDataCenterConfig': bitbucketDataCenterConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (cryptoKeyConfig != null) 'cryptoKeyConfig': cryptoKeyConfig!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (disabled != null) 'disabled': disabled!,
        if (etag != null) 'etag': etag!,
        if (gitProxyConfig != null) 'gitProxyConfig': gitProxyConfig!,
        if (githubConfig != null) 'githubConfig': githubConfig!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
        if (gitlabConfig != null) 'gitlabConfig': gitlabConfig!,
        if (gitlabEnterpriseConfig != null)
          'gitlabEnterpriseConfig': gitlabEnterpriseConfig!,
        if (installationState != null) 'installationState': installationState!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
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

  CryptoKeyConfig({
    this.keyReference,
  });

  CryptoKeyConfig.fromJson(core.Map json_)
      : this(
          keyReference: json_['keyReference'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyReference != null) 'keyReference': keyReference!,
      };
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

  ExchangeError({
    this.code,
    this.description,
  });

  ExchangeError.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          description: json_['description'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
      };
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
                  json_['exchangeError'] as core.Map<core.String, core.dynamic>)
              : null,
          expirationTime: json_['expirationTime'] as core.String?,
          scopes: (json_['scopes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          token: json_['token'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchangeError != null) 'exchangeError': exchangeError!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (scopes != null) 'scopes': scopes!,
        if (token != null) 'token': token!,
      };
}

/// Response of fetching github installations.
class FetchGitHubInstallationsResponse {
  /// List of installations available to the OAuth user (for github.com) or all
  /// the installations (for GitHub enterprise).
  core.List<Installation>? installations;

  FetchGitHubInstallationsResponse({
    this.installations,
  });

  FetchGitHubInstallationsResponse.fromJson(core.Map json_)
      : this(
          installations: (json_['installations'] as core.List?)
              ?.map((value) => Installation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installations != null) 'installations': installations!,
      };
}

/// Response for fetching git refs.
typedef FetchGitRefsResponse = $FetchGitRefsResponse;

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
                  ?.map((value) => LinkableGitRepository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkableGitRepositories != null)
          'linkableGitRepositories': linkableGitRepositories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Message for fetching SCM read token.
typedef FetchReadTokenRequest = $Empty;

/// Message for responding to get read token.
typedef FetchReadTokenResponse = $TokenResponse01;

/// Message for fetching SCM read/write token.
typedef FetchReadWriteTokenRequest = $Empty;

/// Message for responding to get read/write token.
typedef FetchReadWriteTokenResponse = $TokenResponse01;

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

  GKEWorkload({
    this.cluster,
    this.deployment,
  });

  GKEWorkload.fromJson(core.Map json_)
      : this(
          cluster: json_['cluster'] as core.String?,
          deployment: json_['deployment'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (deployment != null) 'deployment': deployment!,
      };
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
              ? OAuthCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          githubApp: json_['githubApp'] as core.String?,
          installationUri: json_['installationUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInstallationId != null) 'appInstallationId': appInstallationId!,
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (githubApp != null) 'githubApp': githubApp!,
        if (installationUri != null) 'installationUri': installationUri!,
      };
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

  /// SecretManager resource containing the private key of the GitHub App,
  /// formatted as `projects / * /secrets / * /versions / * `.
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
  /// formatted as `projects / * /secrets / * /versions / * `.
  ///
  /// Optional.
  core.String? webhookSecretSecretVersion;

  GitHubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    this.hostUri,
    this.installationUri,
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
          privateKeySecretVersion:
              json_['privateKeySecretVersion'] as core.String?,
          serverVersion: json_['serverVersion'] as core.String?,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? ServiceDirectoryConfig.fromJson(json_['serviceDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sslCaCertificate: json_['sslCaCertificate'] as core.String?,
          webhookSecretSecretVersion:
              json_['webhookSecretSecretVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (appInstallationId != null) 'appInstallationId': appInstallationId!,
        if (appSlug != null) 'appSlug': appSlug!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (installationUri != null) 'installationUri': installationUri!,
        if (privateKeySecretVersion != null)
          'privateKeySecretVersion': privateKeySecretVersion!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCaCertificate != null) 'sslCaCertificate': sslCaCertificate!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
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
  /// formatted as `projects / * /secrets / * /versions / * `.
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
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          webhookSecretSecretVersion:
              json_['webhookSecretSecretVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
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
  /// formatted as `projects / * /secrets / * /versions / * `.
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
              ? UserCredential.fromJson(json_['authorizerCredential']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hostUri: json_['hostUri'] as core.String?,
          readAuthorizerCredential:
              json_.containsKey('readAuthorizerCredential')
                  ? UserCredential.fromJson(json_['readAuthorizerCredential']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          serverVersion: json_['serverVersion'] as core.String?,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? ServiceDirectoryConfig.fromJson(json_['serviceDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sslCaCertificate: json_['sslCaCertificate'] as core.String?,
          webhookSecretSecretVersion:
              json_['webhookSecretSecretVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizerCredential != null)
          'authorizerCredential': authorizerCredential!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (readAuthorizerCredential != null)
          'readAuthorizerCredential': readAuthorizerCredential!,
        if (serverVersion != null) 'serverVersion': serverVersion!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (sslCaCertificate != null) 'sslCaCertificate': sslCaCertificate!,
        if (webhookSecretSecretVersion != null)
          'webhookSecretSecretVersion': webhookSecretSecretVersion!,
      };
}

/// The git proxy configuration.
class GitProxyConfig {
  /// Setting this to true allows the git proxy to be used for performing git
  /// operations on the repositories linked in the connection.
  ///
  /// Optional.
  core.bool? enabled;

  GitProxyConfig({
    this.enabled,
  });

  GitProxyConfig.fromJson(core.Map json_)
      : this(
          enabled: json_['enabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
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

  /// Create timestamp
  ///
  /// Output only.
  core.String? createTime;

  /// Delete timestamp
  ///
  /// Output only.
  core.String? deleteTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// URI to access the linked repository through the Git Proxy.
  ///
  /// This field is only populated if the git proxy is enabled for the
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

  /// Update timestamp
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
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          cloneUri: json_['cloneUri'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          gitProxyUri: json_['gitProxyUri'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          webhookId: json_['webhookId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (cloneUri != null) 'cloneUri': cloneUri!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (etag != null) 'etag': etag!,
        if (gitProxyUri != null) 'gitProxyUri': gitProxyUri!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webhookId != null) 'webhookId': webhookId!,
      };
}

/// Google Artifact Analysis configurations.
class GoogleArtifactAnalysis {
  /// The project id of the project where the provenance is stored.
  ///
  /// Required.
  core.String? projectId;

  GoogleArtifactAnalysis({
    this.projectId,
  });

  GoogleArtifactAnalysis.fromJson(core.Map json_)
      : this(
          projectId: json_['projectId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
      };
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

  GoogleArtifactRegistry({
    this.artifactRegistryPackage,
    this.projectId,
  });

  GoogleArtifactRegistry.fromJson(core.Map json_)
      : this(
          artifactRegistryPackage:
              json_['artifactRegistryPackage'] as core.String?,
          projectId: json_['projectId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactRegistryPackage != null)
          'artifactRegistryPackage': artifactRegistryPackage!,
        if (projectId != null) 'projectId': projectId!,
      };
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
/// It acts as the central hub for managing how Developer connect understands
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

  /// Create timestamp
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

  /// Update timestamp
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
    this.reconciling,
    this.runtimeConfigs,
    this.state,
    this.updateTime,
  });

  InsightsConfig.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          appHubApplication: json_['appHubApplication'] as core.String?,
          artifactConfigs: (json_['artifactConfigs'] as core.List?)
              ?.map((value) => ArtifactConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          createTime: json_['createTime'] as core.String?,
          errors: (json_['errors'] as core.List?)
              ?.map((value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          runtimeConfigs: (json_['runtimeConfigs'] as core.List?)
              ?.map((value) => RuntimeConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (appHubApplication != null) 'appHubApplication': appHubApplication!,
        if (artifactConfigs != null) 'artifactConfigs': artifactConfigs!,
        if (createTime != null) 'createTime': createTime!,
        if (errors != null) 'errors': errors!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (runtimeConfigs != null) 'runtimeConfigs': runtimeConfigs!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents an installation of the GitHub App.
class Installation {
  /// ID of the installation in GitHub.
  core.String? id;

  /// Name of the GitHub user or organization that owns this installation.
  core.String? name;

  /// Either "user" or "organization".
  core.String? type;

  Installation({
    this.id,
    this.name,
    this.type,
  });

  Installation.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
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

  LinkableGitRepository({
    this.cloneUri,
  });

  LinkableGitRepository.fromJson(core.Map json_)
      : this(
          cloneUri: json_['cloneUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloneUri != null) 'cloneUri': cloneUri!,
      };
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
              ?.map((value) => AccountConnector.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountConnectors != null) 'accountConnectors': accountConnectors!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to listing Connections
class ListConnectionsResponse {
  /// The list of Connection
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
              ?.map((value) => Connection.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to listing GitRepositoryLinks
class ListGitRepositoryLinksResponse {
  /// The list of GitRepositoryLinks
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
              ?.map((value) => GitRepositoryLink.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gitRepositoryLinks != null)
          'gitRepositoryLinks': gitRepositoryLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
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
              ?.map((value) => InsightsConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insightsConfigs != null) 'insightsConfigs': insightsConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Message for response to listing Users
class ListUsersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of Users
  core.List<User>? users;

  ListUsersResponse({
    this.nextPageToken,
    this.unreachable,
    this.users,
  });

  ListUsersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          users: (json_['users'] as core.List?)
              ?.map((value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (users != null) 'users': users!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Represents an OAuth token of the account that authorized the Connection, and
/// associated metadata.
class OAuthCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the
  /// connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? oauthTokenSecretVersion;

  /// The username associated with this token.
  ///
  /// Output only.
  core.String? username;

  OAuthCredential({
    this.oauthTokenSecretVersion,
    this.username,
  });

  OAuthCredential.fromJson(core.Map json_)
      : this(
          oauthTokenSecretVersion:
              json_['oauthTokenSecretVersion'] as core.String?,
          username: json_['username'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oauthTokenSecretVersion != null)
          'oauthTokenSecretVersion': oauthTokenSecretVersion!,
        if (username != null) 'username': username!,
      };
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// RPC request object accepted by the ProcessBitbucketCloudWebhook RPC method.
class ProcessBitbucketCloudWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessBitbucketCloudWebhookRequest({
    this.body,
  });

  ProcessBitbucketCloudWebhookRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? HttpBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// RPC request object accepted by the ProcessBitbucketDataCenterWebhook RPC
/// method.
class ProcessBitbucketDataCenterWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessBitbucketDataCenterWebhookRequest({
    this.body,
  });

  ProcessBitbucketDataCenterWebhookRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? HttpBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// RPC request object accepted by the ProcessGitHubEnterpriseWebhook RPC
/// method.
class ProcessGitHubEnterpriseWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitHubEnterpriseWebhookRequest({
    this.body,
  });

  ProcessGitHubEnterpriseWebhookRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? HttpBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// RPC request object accepted by the ProcessGitLabEnterpriseWebhook RPC
/// method.
class ProcessGitLabEnterpriseWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitLabEnterpriseWebhookRequest({
    this.body,
  });

  ProcessGitLabEnterpriseWebhookRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? HttpBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// RPC request object accepted by the ProcessGitLabWebhook RPC method.
class ProcessGitLabWebhookRequest {
  /// HTTP request body.
  ///
  /// Required.
  HttpBody? body;

  ProcessGitLabWebhookRequest({
    this.body,
  });

  ProcessGitLabWebhookRequest.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? HttpBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
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
  /// Immutable.
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
  core.String? systemProviderId;

  ProviderOAuthConfig({
    this.scopes,
    this.systemProviderId,
  });

  ProviderOAuthConfig.fromJson(core.Map json_)
      : this(
          scopes: (json_['scopes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          systemProviderId: json_['systemProviderId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scopes != null) 'scopes': scopes!,
        if (systemProviderId != null) 'systemProviderId': systemProviderId!,
      };
}

/// RuntimeConfig represents the runtimes where the application is deployed.
class RuntimeConfig {
  /// App Hub Workload.
  ///
  /// Output only.
  AppHubWorkload? appHubWorkload;

  /// Google Kubernetes Engine runtime.
  ///
  /// Output only.
  GKEWorkload? gkeWorkload;

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
    this.appHubWorkload,
    this.gkeWorkload,
    this.state,
    this.uri,
  });

  RuntimeConfig.fromJson(core.Map json_)
      : this(
          appHubWorkload: json_.containsKey('appHubWorkload')
              ? AppHubWorkload.fromJson(json_['appHubWorkload']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gkeWorkload: json_.containsKey('gkeWorkload')
              ? GKEWorkload.fromJson(
                  json_['gkeWorkload'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appHubWorkload != null) 'appHubWorkload': appHubWorkload!,
        if (gkeWorkload != null) 'gkeWorkload': gkeWorkload!,
        if (state != null) 'state': state!,
        if (uri != null) 'uri': uri!,
      };
}

/// ServiceDirectoryConfig represents Service Directory configuration for a
/// connection.
typedef ServiceDirectoryConfig = $ServiceDirectoryConfig;

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

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (lastTokenRequestTime != null)
          'lastTokenRequestTime': lastTokenRequestTime!,
        if (name != null) 'name': name!,
      };
}

/// Represents a personal access token that authorized the Connection, and
/// associated metadata.
class UserCredential {
  /// A SecretManager resource containing the user token that authorizes the
  /// Developer Connect connection.
  ///
  /// Format: `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? userTokenSecretVersion;

  /// The username associated with this token.
  ///
  /// Output only.
  core.String? username;

  UserCredential({
    this.userTokenSecretVersion,
    this.username,
  });

  UserCredential.fromJson(core.Map json_)
      : this(
          userTokenSecretVersion:
              json_['userTokenSecretVersion'] as core.String?,
          username: json_['username'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userTokenSecretVersion != null)
          'userTokenSecretVersion': userTokenSecretVersion!,
        if (username != null) 'username': username!,
      };
}
