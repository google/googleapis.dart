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

/// Agent Registry API - v1
///
/// Agent Registry is a centralized, unified catalog that lets you store,
/// discover, and govern Model Context Protocol (MCP) servers, tools, and AI
/// agents within Google Cloud.
///
/// For more information, see
/// <https://docs.cloud.google.com/agent-registry/overview>
///
/// Create an instance of [AgentRegistryApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAgentsResource]
///     - [ProjectsLocationsBindingsResource]
///     - [ProjectsLocationsEndpointsResource]
///     - [ProjectsLocationsMcpServersResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
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

/// Agent Registry is a centralized, unified catalog that lets you store,
/// discover, and govern Model Context Protocol (MCP) servers, tools, and AI
/// agents within Google Cloud.
class AgentRegistryApi {
  /// See your Google Cloud Agent Registry data and the email address of your
  /// Google Account
  static const agentregistryReadOnlyScope =
      'https://www.googleapis.com/auth/agentregistry.read-only';

  /// See, edit, configure, and delete your Google Cloud Agent Registry data and
  /// see the email address for your Google Account
  static const agentregistryReadWriteScope =
      'https://www.googleapis.com/auth/agentregistry.read-write';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AgentRegistryApi(
    http.Client client, {
    core.String rootUrl = 'https://agentregistry.googleapis.com/',
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

  ProjectsLocationsAgentsResource get agents =>
      ProjectsLocationsAgentsResource(_requester);
  ProjectsLocationsBindingsResource get bindings =>
      ProjectsLocationsBindingsResource(_requester);
  ProjectsLocationsEndpointsResource get endpoints =>
      ProjectsLocationsEndpointsResource(_requester);
  ProjectsLocationsMcpServersResource get mcpServers =>
      ProjectsLocationsMcpServersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

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

class ProjectsLocationsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Agent> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Agent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Agents in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListAgentsRequest
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
  /// Completes with a [ListAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAgentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches Agents in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for SearchAgentsRequest. Format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAgentsResponse> search(
    SearchAgentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/agents:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Binding in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to create the Binding in.
  /// Expected format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [bindingId] - Required. The ID to use for the binding, which will become
  /// the final component of the binding's resource name. This value should be
  /// 4-63 characters, and must conform to RFC-1034. Specifically, it must match
  /// the regular expression `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
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
    Binding request,
    core.String parent, {
    core.String? bindingId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'bindingId': ?bindingId == null ? null : [bindingId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Binding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Binding. Format:
  /// `projects/{project}/locations/{location}/bindings/{binding}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bindings/\[^/\]+$`.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
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

  /// Fetches available Bindings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. Page size is 500 if unspecified and is capped at `500`
  /// even if a larger value is given.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [sourceIdentifier] - The identifier of the source Agent. Format: *
  /// `urn:agent:{publisher}:{namespace}:{name}`
  ///
  /// [targetIdentifier] - Optional. The identifier of the target Agent, MCP
  /// Server, or Endpoint. Format: * `urn:agent:{publisher}:{namespace}:{name}`
  /// * `urn:mcp:{publisher}:{namespace}:{name}` *
  /// `urn:endpoint:{publisher}:{namespace}:{name}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchAvailableBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchAvailableBindingsResponse> fetchAvailable(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? sourceIdentifier,
    core.String? targetIdentifier,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'sourceIdentifier': ?sourceIdentifier == null ? null : [sourceIdentifier],
      'targetIdentifier': ?targetIdentifier == null ? null : [targetIdentifier],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/bindings:fetchAvailable';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchAvailableBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Binding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Binding. Format:
  /// `projects/{project}/locations/{location}/bindings/{binding}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Binding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Binding> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Binding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Bindings in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to list bindings in.
  /// Expected format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A query string used to filter the list of bindings
  /// returned. The filter expression must follow AIP-160 syntax.
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. Page size is 500 if unspecified and is capped at `500`
  /// even if a larger value is given.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Binding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The resource name of the Binding. Format:
  /// `projects/{project}/locations/{location}/bindings/{binding}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/bindings/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Binding resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields present in the request will be overwritten.
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
    Binding request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
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

class ProjectsLocationsEndpointsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEndpointsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Endpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the endpoint to retrieve. Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Endpoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Endpoint> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Endpoint.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Endpoints in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to list endpoints in.
  /// Expected format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A query string used to filter the list of endpoints
  /// returned. The filter expression must follow AIP-160 syntax. Filtering is
  /// supported on the `name`, `display_name`, `description`, `version`, and
  /// `interfaces` fields. Some examples: * `name =
  /// "projects/p1/locations/l1/endpoints/e1"` * `display_name = "my-endpoint"`
  /// * `description = "my-endpoint-description"` * `version = "v1"` *
  /// `interfaces.transport = "HTTP_JSON"`
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
  /// Completes with a [ListEndpointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEndpointsResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/endpoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndpointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsMcpServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMcpServersResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single McpServer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mcpServers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [McpServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<McpServer> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return McpServer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists McpServers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListMcpServersRequest. Format:
  /// `projects/{project}/locations/{location}`.
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
  /// Completes with a [ListMcpServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMcpServersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/mcpServers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMcpServersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches McpServers in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for SearchMcpServersRequest. Format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchMcpServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchMcpServersResponse> search(
    SearchMcpServersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/mcpServers:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchMcpServersResponse.fromJson(
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

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Service in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to create the Service in.
  /// Expected format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// [serviceId] - Required. The ID to use for the service, which will become
  /// the final component of the service's resource name. This value should be
  /// 4-63 characters, and valid characters are `/a-z-/`.
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
    Service request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'serviceId': ?serviceId == null ? null : [serviceId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Service. Format:
  /// `projects/{project}/locations/{location}/services/{service}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
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

  /// Gets details of a single Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Service. Format:
  /// `projects/{project}/locations/{location}/services/{service}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Services in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location to list services in.
  /// Expected format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A query string used to filter the list of services
  /// returned. The filter expression must follow AIP-160 syntax. Filtering is
  /// supported on the `name`, `display_name`, `description`, and `labels`
  /// fields. Some examples: * `name = "projects/p1/locations/l1/services/s1"` *
  /// `display_name = "my-service"` * `description : "myservice description"` *
  /// `labels.env = "prod"`
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
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the Service. Format:
  /// `projects/{project}/locations/{location}/services/{service}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Service resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields present in the request will be overwritten.
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
    Service request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
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

/// Represents the skills of an Agent.
class A2ASkill {
  /// A more detailed description of the skill.
  ///
  /// Output only.
  core.String? description;

  /// Example prompts or scenarios this skill can handle.
  ///
  /// Output only.
  core.List<core.String>? examples;

  /// A unique identifier for the agent's skill.
  ///
  /// Output only.
  core.String? id;

  /// A human-readable name for the agent's skill.
  ///
  /// Output only.
  core.String? name;

  /// Keywords describing the skill.
  ///
  /// Output only.
  core.List<core.String>? tags;

  A2ASkill({this.description, this.examples, this.id, this.name, this.tags});

  A2ASkill.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        examples: (json_['examples'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        tags: (json_['tags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final examples = this.examples;
    final id = this.id;
    final name = this.name;
    final tags = this.tags;
    return {
      'description': ?description,
      'examples': ?examples,
      'id': ?id,
      'name': ?name,
      'tags': ?tags,
    };
  }
}

/// Represents an Agent.
///
/// "A2A" below refers to the Agent-to-Agent protocol.
class Agent {
  /// A stable, globally unique identifier for agents.
  ///
  /// Output only.
  core.String? agentId;

  /// Attributes of the Agent.
  ///
  /// Valid values: * `agentregistry.googleapis.com/system/Framework`:
  /// {"framework": "google-adk"} - the agent framework used to develop the
  /// Agent. Example values: "google-adk", "langchain", "custom". *
  /// `agentregistry.googleapis.com/system/RuntimeIdentity`: {"principal":
  /// "principal://..."} - the runtime identity associated with the Agent. *
  /// `agentregistry.googleapis.com/system/RuntimeReference`: {"uri": "//..."} -
  /// the URI of the underlying resource hosting the Agent, for example, the
  /// Reasoning Engine URI.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? attributes;

  /// Full Agent Card payload, when available.
  ///
  /// Output only.
  Card? card;

  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the Agent, often obtained from the A2A Agent Card.
  ///
  /// Empty if Agent Card has no description.
  ///
  /// Output only.
  core.String? description;

  /// The display name of the agent, often obtained from the A2A Agent Card.
  ///
  /// Output only.
  core.String? displayName;

  /// The location where agent is hosted.
  ///
  /// The value is defined by the hosting environment (i.e. cloud provider).
  ///
  /// Output only.
  core.String? location;

  /// Identifier.
  ///
  /// The resource name of an Agent. Format:
  /// `projects/{project}/locations/{location}/agents/{agent}`.
  core.String? name;

  /// The connection details for the Agent.
  ///
  /// Output only.
  core.List<Protocol>? protocols;

  /// Skills the agent possesses, often obtained from the A2A Agent Card.
  ///
  /// Output only.
  core.List<A2ASkill>? skills;

  /// A universally unique identifier for the Agent.
  ///
  /// Output only.
  core.String? uid;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  /// The version of the Agent, often obtained from the A2A Agent Card.
  ///
  /// Empty if Agent Card has no version or agent is not an A2A Agent.
  ///
  /// Output only.
  core.String? version;

  Agent({
    this.agentId,
    this.attributes,
    this.card,
    this.createTime,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.protocols,
    this.skills,
    this.uid,
    this.updateTime,
    this.version,
  });

  Agent.fromJson(core.Map json_)
    : this(
        agentId: json_['agentId'] as core.String?,
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        card: json_.containsKey('card')
            ? Card.fromJson(
                json_['card'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        protocols: (json_['protocols'] as core.List?)
            ?.map(
              (value) => Protocol.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        skills: (json_['skills'] as core.List?)
            ?.map(
              (value) => A2ASkill.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentId = this.agentId;
    final attributes = this.attributes;
    final card = this.card;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final location = this.location;
    final name = this.name;
    final protocols = this.protocols;
    final skills = this.skills;
    final uid = this.uid;
    final updateTime = this.updateTime;
    final version = this.version;
    return {
      'agentId': ?agentId,
      'attributes': ?attributes,
      'card': ?card,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'protocols': ?protocols,
      'skills': ?skills,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }
}

/// The spec of the agent.
class AgentSpec {
  /// The content of the Agent spec in the JSON format.
  ///
  /// This payload is validated against the schema for the specified type. The
  /// content size is limited to `10KB`.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? content;

  /// The type of the agent spec content.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "NO_SPEC" : There is no spec for the Agent. The `content` field must be
  /// empty.
  /// - "A2A_AGENT_CARD" : The content is an A2A Agent Card following the A2A
  /// specification. The `interfaces` field must be empty.
  core.String? type;

  AgentSpec({this.content, this.type});

  AgentSpec.fromJson(core.Map json_)
    : this(
        content: json_.containsKey('content')
            ? json_['content'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final type = this.type;
    return {'content': ?content, 'type': ?type};
  }
}

/// Annotations describing the characteristics and behavior of a tool or
/// operation.
class Annotations {
  /// If true, the tool may perform destructive updates to its environment.
  ///
  /// If false, the tool performs only additive updates. NOTE: This property is
  /// meaningful only when `read_only_hint == false` Default: true
  ///
  /// Output only.
  core.bool? destructiveHint;

  /// If true, calling the tool repeatedly with the same arguments will have no
  /// additional effect on its environment.
  ///
  /// NOTE: This property is meaningful only when `read_only_hint == false`
  /// Default: false
  ///
  /// Output only.
  core.bool? idempotentHint;

  /// If true, this tool may interact with an "open world" of external entities.
  ///
  /// If false, the tool's domain of interaction is closed. For example, the
  /// world of a web search tool is open, whereas that of a memory tool is not.
  /// Default: true
  ///
  /// Output only.
  core.bool? openWorldHint;

  /// If true, the tool does not modify its environment.
  ///
  /// Default: false
  ///
  /// Output only.
  core.bool? readOnlyHint;

  /// A human-readable title for the tool.
  ///
  /// Output only.
  core.String? title;

  Annotations({
    this.destructiveHint,
    this.idempotentHint,
    this.openWorldHint,
    this.readOnlyHint,
    this.title,
  });

  Annotations.fromJson(core.Map json_)
    : this(
        destructiveHint: json_['destructiveHint'] as core.bool?,
        idempotentHint: json_['idempotentHint'] as core.bool?,
        openWorldHint: json_['openWorldHint'] as core.bool?,
        readOnlyHint: json_['readOnlyHint'] as core.bool?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destructiveHint = this.destructiveHint;
    final idempotentHint = this.idempotentHint;
    final openWorldHint = this.openWorldHint;
    final readOnlyHint = this.readOnlyHint;
    final title = this.title;
    return {
      'destructiveHint': ?destructiveHint,
      'idempotentHint': ?idempotentHint,
      'openWorldHint': ?openWorldHint,
      'readOnlyHint': ?readOnlyHint,
      'title': ?title,
    };
  }
}

/// The AuthProvider of the Binding.
class AuthProviderBinding {
  /// The resource name of the target AuthProvider.
  ///
  /// Format: *
  /// `projects/{project}/locations/{location}/authProviders/{auth_provider}`
  ///
  /// Required.
  core.String? authProvider;

  /// The continue URI of the AuthProvider.
  ///
  /// The URI is used to reauthenticate the user and finalize the managed OAuth
  /// flow.
  ///
  /// Optional.
  core.String? continueUri;

  /// The list of OAuth2 scopes of the AuthProvider.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  AuthProviderBinding({this.authProvider, this.continueUri, this.scopes});

  AuthProviderBinding.fromJson(core.Map json_)
    : this(
        authProvider: json_['authProvider'] as core.String?,
        continueUri: json_['continueUri'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authProvider = this.authProvider;
    final continueUri = this.continueUri;
    final scopes = this.scopes;
    return {
      'authProvider': ?authProvider,
      'continueUri': ?continueUri,
      'scopes': ?scopes,
    };
  }
}

/// Represents a user-defined Binding.
class Binding {
  /// The binding for AuthProvider.
  AuthProviderBinding? authProviderBinding;

  /// Timestamp when this binding was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User-defined description of a Binding.
  ///
  /// Can have a maximum length of `2048` characters.
  ///
  /// Optional.
  core.String? description;

  /// User-defined display name for the Binding.
  ///
  /// Can have a maximum length of `63` characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// The resource name of the Binding. Format:
  /// `projects/{project}/locations/{location}/bindings/{binding}`.
  ///
  /// Required.
  core.String? name;

  /// The target Agent of the Binding.
  ///
  /// Required.
  Source? source;

  /// The target Agent Registry Resource of the Binding.
  ///
  /// Required.
  Target? target;

  /// Timestamp when this binding was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Binding({
    this.authProviderBinding,
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.source,
    this.target,
    this.updateTime,
  });

  Binding.fromJson(core.Map json_)
    : this(
        authProviderBinding: json_.containsKey('authProviderBinding')
            ? AuthProviderBinding.fromJson(
                json_['authProviderBinding']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        source: json_.containsKey('source')
            ? Source.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        target: json_.containsKey('target')
            ? Target.fromJson(
                json_['target'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authProviderBinding = this.authProviderBinding;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final source = this.source;
    final target = this.target;
    final updateTime = this.updateTime;
    return {
      'authProviderBinding': ?authProviderBinding,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'source': ?source,
      'target': ?target,
      'updateTime': ?updateTime,
    };
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Full Agent Card payload, often obtained from the A2A Agent Card.
class Card {
  /// The content of the agent card.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? content;

  /// The type of agent card.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "A2A_AGENT_CARD" : Indicates that the card is an A2A Agent Card.
  core.String? type;

  Card({this.content, this.type});

  Card.fromJson(core.Map json_)
    : this(
        content: json_.containsKey('content')
            ? json_['content'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final type = this.type;
    return {'content': ?content, 'type': ?type};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents an Endpoint.
class Endpoint {
  /// Attributes of the Endpoint.
  ///
  /// Valid values: * `agentregistry.googleapis.com/system/RuntimeReference`:
  /// {"uri": "//..."} - the URI of the underlying resource hosting the
  /// Endpoint, for example, the GKE Deployment.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? attributes;

  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of an Endpoint.
  ///
  /// Output only.
  core.String? description;

  /// Display name for the Endpoint.
  ///
  /// Output only.
  core.String? displayName;

  /// A stable, globally unique identifier for Endpoint.
  ///
  /// Output only.
  core.String? endpointId;

  /// The connection details for the Endpoint.
  ///
  /// Required.
  core.List<Interface>? interfaces;

  /// Identifier.
  ///
  /// The resource name of the Endpoint. Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`.
  core.String? name;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  Endpoint({
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.endpointId,
    this.interfaces,
    this.name,
    this.updateTime,
  });

  Endpoint.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endpointId: json_['endpointId'] as core.String?,
        interfaces: (json_['interfaces'] as core.List?)
            ?.map(
              (value) => Interface.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final endpointId = this.endpointId;
    final interfaces = this.interfaces;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'endpointId': ?endpointId,
      'interfaces': ?interfaces,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

/// The spec of the endpoint.
class EndpointSpec {
  /// The content of the endpoint spec.
  ///
  /// Reserved for future use.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? content;

  /// The type of the endpoint spec content.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "NO_SPEC" : There is no spec for the Endpoint. The `content` field must
  /// be empty.
  core.String? type;

  EndpointSpec({this.content, this.type});

  EndpointSpec.fromJson(core.Map json_)
    : this(
        content: json_.containsKey('content')
            ? json_['content'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final type = this.type;
    return {'content': ?content, 'type': ?type};
  }
}

/// Message for response to fetching available Bindings.
class FetchAvailableBindingsResponse {
  /// The list of Bindings.
  core.List<Binding>? bindings;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  FetchAvailableBindingsResponse({this.bindings, this.nextPageToken});

  FetchAvailableBindingsResponse.fromJson(core.Map json_)
    : this(
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bindings = this.bindings;
    final nextPageToken = this.nextPageToken;
    return {'bindings': ?bindings, 'nextPageToken': ?nextPageToken};
  }
}

/// Represents the connection details for an Agent or MCP Server.
class Interface {
  /// The protocol binding of the interface.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROTOCOL_BINDING_UNSPECIFIED" : Unspecified transport protocol.
  /// - "JSONRPC" : JSON-RPC specification.
  /// - "GRPC" : gRPC specification.
  /// - "HTTP_JSON" : HTTP+JSON specification.
  core.String? protocolBinding;

  /// The destination URL.
  ///
  /// Required.
  core.String? url;

  Interface({this.protocolBinding, this.url});

  Interface.fromJson(core.Map json_)
    : this(
        protocolBinding: json_['protocolBinding'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final protocolBinding = this.protocolBinding;
    final url = this.url;
    return {'protocolBinding': ?protocolBinding, 'url': ?url};
  }
}

/// Message for response to listing Agents
class ListAgentsResponse {
  /// The list of Agents.
  core.List<Agent>? agents;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAgentsResponse({this.agents, this.nextPageToken});

  ListAgentsResponse.fromJson(core.Map json_)
    : this(
        agents: (json_['agents'] as core.List?)
            ?.map(
              (value) =>
                  Agent.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agents = this.agents;
    final nextPageToken = this.nextPageToken;
    return {'agents': ?agents, 'nextPageToken': ?nextPageToken};
  }
}

/// Message for response to listing Bindings
class ListBindingsResponse {
  /// The list of Binding resources matching the parent and filter criteria in
  /// the request.
  ///
  /// Each Binding resource follows the format:
  /// `projects/{project}/locations/{location}/bindings/{binding}`.
  core.List<Binding>? bindings;

  /// A token identifying a page of results the server should return.
  ///
  /// Used in page_token.
  core.String? nextPageToken;

  ListBindingsResponse({this.bindings, this.nextPageToken});

  ListBindingsResponse.fromJson(core.Map json_)
    : this(
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bindings = this.bindings;
    final nextPageToken = this.nextPageToken;
    return {'bindings': ?bindings, 'nextPageToken': ?nextPageToken};
  }
}

/// Message for response to listing Endpoints
class ListEndpointsResponse {
  /// The list of Endpoint resources matching the parent and filter criteria in
  /// the request.
  ///
  /// Each Endpoint resource follows the format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`.
  core.List<Endpoint>? endpoints;

  /// A token identifying a page of results the server should return.
  ///
  /// Used in page_token.
  core.String? nextPageToken;

  ListEndpointsResponse({this.endpoints, this.nextPageToken});

  ListEndpointsResponse.fromJson(core.Map json_)
    : this(
        endpoints: (json_['endpoints'] as core.List?)
            ?.map(
              (value) => Endpoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endpoints = this.endpoints;
    final nextPageToken = this.nextPageToken;
    return {'endpoints': ?endpoints, 'nextPageToken': ?nextPageToken};
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

/// Message for response to listing McpServers
class ListMcpServersResponse {
  /// The list of McpServers.
  core.List<McpServer>? mcpServers;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListMcpServersResponse({this.mcpServers, this.nextPageToken});

  ListMcpServersResponse.fromJson(core.Map json_)
    : this(
        mcpServers: (json_['mcpServers'] as core.List?)
            ?.map(
              (value) => McpServer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mcpServers = this.mcpServers;
    final nextPageToken = this.nextPageToken;
    return {'mcpServers': ?mcpServers, 'nextPageToken': ?nextPageToken};
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

/// Message for response to listing Services
class ListServicesResponse {
  /// A token identifying a page of results the server should return.
  ///
  /// Used in page_token.
  core.String? nextPageToken;

  /// The list of Service resources matching the parent and filter criteria in
  /// the request.
  ///
  /// Each Service resource follows the format:
  /// `projects/{project}/locations/{location}/services/{service}`.
  core.List<Service>? services;

  ListServicesResponse({this.nextPageToken, this.services});

  ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => Service.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final services = this.services;
    return {'nextPageToken': ?nextPageToken, 'services': ?services};
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Represents an MCP (Model Context Protocol) Server.
class McpServer {
  /// Attributes of the MCP Server.
  ///
  /// Valid values: * `agentregistry.googleapis.com/system/RuntimeIdentity`:
  /// {"principal": "principal://..."} - the runtime identity associated with
  /// the MCP Server. * `agentregistry.googleapis.com/system/RuntimeReference`:
  /// {"uri": "//..."} - the URI of the underlying resource hosting the MCP
  /// Server, for example, the GKE Deployment.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? attributes;

  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the MCP Server.
  ///
  /// Output only.
  core.String? description;

  /// The display name of the MCP Server.
  ///
  /// Output only.
  core.String? displayName;

  /// The connection details for the MCP Server.
  ///
  /// Output only.
  core.List<Interface>? interfaces;

  /// A stable, globally unique identifier for MCP Servers.
  ///
  /// Output only.
  core.String? mcpServerId;

  /// Identifier.
  ///
  /// The resource name of the MCP Server. Format:
  /// `projects/{project}/locations/{location}/mcpServers/{mcp_server}`.
  core.String? name;

  /// Tools provided by the MCP Server.
  ///
  /// Output only.
  core.List<Tool>? tools;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  McpServer({
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.interfaces,
    this.mcpServerId,
    this.name,
    this.tools,
    this.updateTime,
  });

  McpServer.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        interfaces: (json_['interfaces'] as core.List?)
            ?.map(
              (value) => Interface.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mcpServerId: json_['mcpServerId'] as core.String?,
        name: json_['name'] as core.String?,
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) =>
                  Tool.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final interfaces = this.interfaces;
    final mcpServerId = this.mcpServerId;
    final name = this.name;
    final tools = this.tools;
    final updateTime = this.updateTime;
    return {
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'interfaces': ?interfaces,
      'mcpServerId': ?mcpServerId,
      'name': ?name,
      'tools': ?tools,
      'updateTime': ?updateTime,
    };
  }
}

/// The spec of the MCP Server.
class McpServerSpec {
  /// The content of the MCP Server spec.
  ///
  /// This payload is validated against the schema for the specified type. The
  /// content size is limited to `10KB`.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? content;

  /// The type of the MCP Server spec content.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "NO_SPEC" : There is no spec for the MCP Server. The `content` field
  /// must be empty.
  /// - "TOOL_SPEC" : The content is a MCP Tool Spec following the One MCP
  /// specification. The payload is the same as the `tools/list` response.
  core.String? type;

  McpServerSpec({this.content, this.type});

  McpServerSpec.fromJson(core.Map json_)
    : this(
        content: json_.containsKey('content')
            ? json_['content'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final type = this.type;
    return {'content': ?content, 'type': ?type};
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

/// Represents the protocol of an Agent.
class Protocol {
  /// The connection details for the Agent.
  ///
  /// Output only.
  core.List<Interface>? interfaces;

  /// The version of the protocol, for example, the A2A Agent Card version.
  ///
  /// Output only.
  core.String? protocolVersion;

  /// The type of the protocol.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "A2A_AGENT" : The interfaces point to an A2A Agent following the A2A
  /// specification.
  /// - "CUSTOM" : Agent does not follow any standard protocol.
  core.String? type;

  Protocol({this.interfaces, this.protocolVersion, this.type});

  Protocol.fromJson(core.Map json_)
    : this(
        interfaces: (json_['interfaces'] as core.List?)
            ?.map(
              (value) => Interface.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        protocolVersion: json_['protocolVersion'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final interfaces = this.interfaces;
    final protocolVersion = this.protocolVersion;
    final type = this.type;
    return {
      'interfaces': ?interfaces,
      'protocolVersion': ?protocolVersion,
      'type': ?type,
    };
  }
}

/// Message for searching Agents
class SearchAgentsRequest {
  /// The maximum number of search results to return per page.
  ///
  /// The page size is capped at `100`, even if a larger value is specified. A
  /// negative value will result in an `INVALID_ARGUMENT` error. If unspecified
  /// or set to `0`, a default value of `20` will be used. The server may return
  /// fewer results than requested.
  ///
  /// Optional.
  core.int? pageSize;

  /// If present, retrieve the next batch of results from the preceding call to
  /// this method.
  ///
  /// `page_token` must be the value of `next_page_token` from the previous
  /// response. The values of all other method parameters, must be identical to
  /// those in the previous call.
  ///
  /// Optional.
  core.String? pageToken;

  /// Search criteria used to select the Agents to return.
  ///
  /// If no search criteria is specified then all accessible Agents will be
  /// returned. Search expressions can be used to restrict results based upon
  /// searchable fields, where the operators can be used along with the suffix
  /// wildcard symbol `*`. See
  /// [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-tools)
  /// for more details. Allowed operators: `=`, `:`, `NOT`, `AND`, `OR`, and
  /// `()`. Searchable fields: | Field | `=` | `:` | `*` | Keyword Search |
  /// |--------------------|-----|-----|-----|----------------| | agentId | Yes
  /// | Yes | Yes | Included | | name | No | Yes | Yes | Included | |
  /// displayName | No | Yes | Yes | Included | | description | No | Yes | No |
  /// Included | | skills | No | Yes | No | Included | | skills.id | No | Yes |
  /// No | Included | | skills.name | No | Yes | No | Included | |
  /// skills.description | No | Yes | No | Included | | skills.tags | No | Yes |
  /// No | Included | | skills.examples | No | Yes | No | Included | Examples: *
  /// `agentId="urn:agent:projects-123:projects:123:locations:us-central1:reasoningEngines:1234"`
  /// to find the agent with the specified agent ID. * `name:important` to find
  /// agents whose name contains `important` as a word. * `displayName:works*`
  /// to find agents whose display name contains words that start with `works`.
  /// * `skills.tags:test` to find agents whose skills tags contain `test`. *
  /// `planner OR booking` to find agents whose metadata contains the words
  /// `planner` or `booking`.
  ///
  /// Optional.
  core.String? searchString;

  SearchAgentsRequest({this.pageSize, this.pageToken, this.searchString});

  SearchAgentsRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        searchString: json_['searchString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final searchString = this.searchString;
    return {
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'searchString': ?searchString,
    };
  }
}

/// Message for response to searching Agents
class SearchAgentsResponse {
  /// A list of Agents that match the `search_string`.
  core.List<Agent>? agents;

  /// If there are more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  SearchAgentsResponse({this.agents, this.nextPageToken});

  SearchAgentsResponse.fromJson(core.Map json_)
    : this(
        agents: (json_['agents'] as core.List?)
            ?.map(
              (value) =>
                  Agent.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agents = this.agents;
    final nextPageToken = this.nextPageToken;
    return {'agents': ?agents, 'nextPageToken': ?nextPageToken};
  }
}

/// Message for searching MCP Servers
class SearchMcpServersRequest {
  /// The maximum number of search results to return per page.
  ///
  /// The page size is capped at `100`, even if a larger value is specified. A
  /// negative value will result in an `INVALID_ARGUMENT` error. If unspecified
  /// or set to `0`, a default value of `20` will be used. The server may return
  /// fewer results than requested.
  ///
  /// Optional.
  core.int? pageSize;

  /// If present, retrieve the next batch of results from the preceding call to
  /// this method.
  ///
  /// `page_token` must be the value of `next_page_token` from the previous
  /// response. The values of all other method parameters, must be identical to
  /// those in the previous call.
  ///
  /// Optional.
  core.String? pageToken;

  /// Search criteria used to select the MCP Servers to return.
  ///
  /// If no search criteria is specified then all accessible MCP Servers will be
  /// returned. Search expressions can be used to restrict results based upon
  /// searchable fields, where the operators can be used along with the suffix
  /// wildcard symbol `*`. See
  /// [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-tools)
  /// for more details. Allowed operators: `=`, `:`, `NOT`, `AND`, `OR`, and
  /// `()`. Searchable fields: | Field | `=` | `:` | `*` | Keyword Search |
  /// |--------------------|-----|-----|-----|----------------| | mcpServerId |
  /// Yes | Yes | Yes | Included | | name | No | Yes | Yes | Included | |
  /// displayName | No | Yes | Yes | Included | Examples: *
  /// `mcpServerId="urn:mcp:projects-123:projects:123:locations:us-central1:agentregistry:services:service-id"`
  /// to find the MCP Server with the specified MCP Server ID. *
  /// `name:important` to find MCP Servers whose name contains `important` as a
  /// word. * `displayName:works*` to find MCP Servers whose display name
  /// contains words that start with `works`. * `planner OR booking` to find MCP
  /// Servers whose metadata contains the words `planner` or `booking`. *
  /// `mcpServerId:service-id AND (displayName:planner OR displayName:booking)`
  /// to find MCP Servers whose MCP Server ID contains `service-id` and whose
  /// display name contains `planner` or `booking`.
  ///
  /// Optional.
  core.String? searchString;

  SearchMcpServersRequest({this.pageSize, this.pageToken, this.searchString});

  SearchMcpServersRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        searchString: json_['searchString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final searchString = this.searchString;
    return {
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'searchString': ?searchString,
    };
  }
}

/// Message for response to searching MCP Servers
class SearchMcpServersResponse {
  /// A list of McpServers that match the `search_string`.
  core.List<McpServer>? mcpServers;

  /// If there are more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  SearchMcpServersResponse({this.mcpServers, this.nextPageToken});

  SearchMcpServersResponse.fromJson(core.Map json_)
    : this(
        mcpServers: (json_['mcpServers'] as core.List?)
            ?.map(
              (value) => McpServer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mcpServers = this.mcpServers;
    final nextPageToken = this.nextPageToken;
    return {'mcpServers': ?mcpServers, 'nextPageToken': ?nextPageToken};
  }
}

/// Represents a user-defined Service.
class Service {
  /// The spec of the Agent.
  ///
  /// When `agent_spec` is set, the type of the service is Agent.
  ///
  /// Optional.
  AgentSpec? agentSpec;

  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// User-defined description of an Service.
  ///
  /// Can have a maximum length of `2048` characters.
  ///
  /// Optional.
  core.String? description;

  /// User-defined display name for the Service.
  ///
  /// Can have a maximum length of `63` characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The spec of the Endpoint.
  ///
  /// When `endpoint_spec` is set, the type of the service is Endpoint.
  ///
  /// Optional.
  EndpointSpec? endpointSpec;

  /// The connection details for the Service.
  ///
  /// Optional.
  core.List<Interface>? interfaces;

  /// The spec of the MCP Server.
  ///
  /// When `mcp_server_spec` is set, the type of the service is MCP Server.
  ///
  /// Optional.
  McpServerSpec? mcpServerSpec;

  /// Identifier.
  ///
  /// The resource name of the Service. Format:
  /// `projects/{project}/locations/{location}/services/{service}`.
  core.String? name;

  /// The resource name of the resulting Agent, MCP Server, or Endpoint.
  ///
  /// Format: *
  /// `projects/{project}/locations/{location}/mcpServers/{mcp_server}` *
  /// `projects/{project}/locations/{location}/agents/{agent}` *
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  ///
  /// Output only.
  core.String? registryResource;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  Service({
    this.agentSpec,
    this.createTime,
    this.description,
    this.displayName,
    this.endpointSpec,
    this.interfaces,
    this.mcpServerSpec,
    this.name,
    this.registryResource,
    this.updateTime,
  });

  Service.fromJson(core.Map json_)
    : this(
        agentSpec: json_.containsKey('agentSpec')
            ? AgentSpec.fromJson(
                json_['agentSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endpointSpec: json_.containsKey('endpointSpec')
            ? EndpointSpec.fromJson(
                json_['endpointSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        interfaces: (json_['interfaces'] as core.List?)
            ?.map(
              (value) => Interface.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mcpServerSpec: json_.containsKey('mcpServerSpec')
            ? McpServerSpec.fromJson(
                json_['mcpServerSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        registryResource: json_['registryResource'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentSpec = this.agentSpec;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final endpointSpec = this.endpointSpec;
    final interfaces = this.interfaces;
    final mcpServerSpec = this.mcpServerSpec;
    final name = this.name;
    final registryResource = this.registryResource;
    final updateTime = this.updateTime;
    return {
      'agentSpec': ?agentSpec,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'endpointSpec': ?endpointSpec,
      'interfaces': ?interfaces,
      'mcpServerSpec': ?mcpServerSpec,
      'name': ?name,
      'registryResource': ?registryResource,
      'updateTime': ?updateTime,
    };
  }
}

/// The source of the Binding.
class Source {
  /// The identifier of the source Agent.
  ///
  /// Format: * `urn:agent:{publisher}:{namespace}:{name}`
  core.String? identifier;

  Source({this.identifier});

  Source.fromJson(core.Map json_)
    : this(identifier: json_['identifier'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final identifier = this.identifier;
    return {'identifier': ?identifier};
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

/// The target of the Binding.
class Target {
  /// The identifier of the target Agent, MCP Server, or Endpoint.
  ///
  /// Format: * `urn:agent:{publisher}:{namespace}:{name}` *
  /// `urn:mcp:{publisher}:{namespace}:{name}` *
  /// `urn:endpoint:{publisher}:{namespace}:{name}`
  core.String? identifier;

  Target({this.identifier});

  Target.fromJson(core.Map json_)
    : this(identifier: json_['identifier'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final identifier = this.identifier;
    return {'identifier': ?identifier};
  }
}

/// Represents a single tool provided by an MCP Server.
class Tool {
  /// Annotations associated with the tool.
  ///
  /// Output only.
  Annotations? annotations;

  /// Description of what the tool does.
  ///
  /// Output only.
  core.String? description;

  /// Human-readable name of the tool.
  ///
  /// Output only.
  core.String? name;

  Tool({this.annotations, this.description, this.name});

  Tool.fromJson(core.Map json_)
    : this(
        annotations: json_.containsKey('annotations')
            ? Annotations.fromJson(
                json_['annotations'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final description = this.description;
    final name = this.name;
    return {
      'annotations': ?annotations,
      'description': ?description,
      'name': ?name,
    };
  }
}
