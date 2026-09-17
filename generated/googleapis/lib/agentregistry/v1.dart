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
///     - [ProjectsLocationsAiApplicationsResource]
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
  ProjectsLocationsAiApplicationsResource get aiApplications =>
      ProjectsLocationsAiApplicationsResource(_requester);
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

class ProjectsLocationsAiApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAiApplicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
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
typedef Expr = $Expr;

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

  GoogleIamV1AuditConfig({this.auditLogConfigs, this.service});

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => GoogleIamV1AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
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
  Expr? condition;

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

  GoogleIamV1Binding({this.condition, this.members, this.role});

  GoogleIamV1Binding.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

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
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => GoogleIamV1AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => GoogleIamV1Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
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

  GoogleIamV1SetIamPolicyRequest({this.policy, this.updateMask});

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy: json_.containsKey('policy')
            ? GoogleIamV1Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

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
