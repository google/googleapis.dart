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
///       - [ProjectsLocationsAiApplicationsAgentsResource]
///       - [ProjectsLocationsAiApplicationsEndpointsResource]
///       - [ProjectsLocationsAiApplicationsMcpServersResource]
///     - [ProjectsLocationsBindingsResource]
///     - [ProjectsLocationsEndpointsResource]
///     - [ProjectsLocationsFindingsResource]
///     - [ProjectsLocationsMcpServersResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPublishersResource]
///     - [ProjectsLocationsServicesResource]
///     - [ProjectsLocationsSkillsResource]
///       - [ProjectsLocationsSkillsRevisionsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

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
  ProjectsLocationsFindingsResource get findings =>
      ProjectsLocationsFindingsResource(_requester);
  ProjectsLocationsMcpServersResource get mcpServers =>
      ProjectsLocationsMcpServersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPublishersResource get publishers =>
      ProjectsLocationsPublishersResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);
  ProjectsLocationsSkillsResource get skills =>
      ProjectsLocationsSkillsResource(_requester);

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

  ProjectsLocationsAiApplicationsAgentsResource get agents =>
      ProjectsLocationsAiApplicationsAgentsResource(_requester);
  ProjectsLocationsAiApplicationsEndpointsResource get endpoints =>
      ProjectsLocationsAiApplicationsEndpointsResource(_requester);
  ProjectsLocationsAiApplicationsMcpServersResource get mcpServers =>
      ProjectsLocationsAiApplicationsMcpServersResource(_requester);

  ProjectsLocationsAiApplicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single AI Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target AI Application resource name. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AiApplication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AiApplication> get(
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
    return AiApplication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

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

  /// Lists AI Applications in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent project and location to query. Format:
  /// `projects/{project}/locations/{location}`
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
  /// Completes with a [ListAiApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAiApplicationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/aiApplications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAiApplicationsResponse.fromJson(
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

class ProjectsLocationsAiApplicationsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAiApplicationsAgentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Agent under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}/agents/{agent}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+/agents/\[^/\]+$`.
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

  /// Lists Agents under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value (AI Application) for
  /// ListAiApplicationAgentsRequest. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
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
  /// Completes with a [ListAiApplicationAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAiApplicationAgentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return ListAiApplicationAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAiApplicationsEndpointsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAiApplicationsEndpointsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Endpoint under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}/endpoints/{endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+/endpoints/\[^/\]+$`.
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

  /// Lists Endpoints under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value (AI Application) for
  /// ListAiApplicationEndpointsRequest. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
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
  /// Completes with a [ListAiApplicationEndpointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAiApplicationEndpointsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return ListAiApplicationEndpointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAiApplicationsMcpServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAiApplicationsMcpServersResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single McpServer under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}/mcpServers/{mcp_server}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+/mcpServers/\[^/\]+$`.
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

  /// Lists McpServers under an AI Application.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value (AI Application) for
  /// ListAiApplicationMcpServersRequest. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/aiApplications/\[^/\]+$`.
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
  /// Completes with a [ListAiApplicationMcpServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAiApplicationMcpServersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return ListAiApplicationMcpServersResponse.fromJson(
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

class ProjectsLocationsFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Finding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Finding to retrieve. Format:
  /// `projects/{project}/locations/{location}/findings/{finding}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Findings in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListFindingsRequest. Format:
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
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
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

class ProjectsLocationsPublishersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPublishersResource(commons.ApiRequester client)
    : _requester = client;

  /// Fetches details of a specific Publisher.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target publisher resource name. Format:
  /// `projects/{project}/locations/{location}/publishers/{publisher}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/publishers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Publisher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Publisher> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Publisher.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Publishers in a location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent location to query. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Page limit size.
  ///
  /// [pageToken] - Optional. Page offset token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublishersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublishersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/publishers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPublishersResponse.fromJson(
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

class ProjectsLocationsSkillsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSkillsRevisionsResource get revisions =>
      ProjectsLocationsSkillsRevisionsResource(_requester);

  ProjectsLocationsSkillsResource(commons.ApiRequester client)
    : _requester = client;

  /// =========================================================================
  /// # Skills Collection APIs Creates a Skill resource container, optionally
  /// publishing the initial SkillRevision inline in a single, atomic CRUD
  /// roundtrip.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location location to bootstrap.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Signed UUID request idempotency token.
  ///
  /// [skillId] - Required. Custom, user-defined unique container identifier.
  /// Must be unique within the parent project and location. This value should
  /// be 4-64 characters, and valid characters are `/a-z-/`.
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
    Skill request,
    core.String parent, {
    core.String? requestId,
    core.String? skillId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'skillId': ?skillId == null ? null : [skillId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/skills';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Skill container along with all its revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target Skill container name to remove.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any child SkillRevisions under this
  /// Skill will also be deleted. Otherwise, the request will only succeed if
  /// the Skill has no child SkillRevisions.
  ///
  /// [requestId] - Optional. Signed UUID request idempotency token.
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
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
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

  /// Fetches the active configuration and metadata of a Skill.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target resource container name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Skill] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String name, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Skill.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
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

  /// Lists logical Skills available in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListSkillsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Use this field to specify filter criteria on list
  /// results. Filter expressions can be used to restrict results based upon
  /// filterable fields, where equality operators can be used. See
  /// [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-tools)
  /// for more details. Allowed operators: `=`, `<`, `>`, `NOT`, `AND`, `OR`,
  /// and `()`. | Field | `=` | `<`, `>` | |--------------|-----|----------| |
  /// state | Yes | No | | targetState | Yes | No | | createTime | Yes | Yes | |
  /// updateTime | Yes | Yes | Examples: * `state=ACTIVE` to restrict results to
  /// skills in the `ACTIVE` state.
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
  /// Completes with a [ListSkillsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSkillsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/skills';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSkillsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates Skill metadata or overrides active pointers/state using REST
  /// standard PATCH.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the Skill. Format:
  /// `projects/{project}/locations/{location}/skills/{skill}` The `{skill}`
  /// segment acts as the resource ID. If the skill is associated with a
  /// Publisher, this segment typically uses a hyphenated namespace prefix
  /// corresponding to the publisher (e.g., `google-workspace-create-docs`).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Signed UUID request idempotency token.
  ///
  /// [updateMask] - Optional. Standard update target mask mapping relative
  /// fields.
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
    Skill request,
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

  /// Custom deep-search method to filter by frontmatter or query SKILL.md text
  /// blobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for SearchSkillsRequest. Format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Use this field to specify additional filter criteria
  /// on search results. Filter expressions can be used to restrict results
  /// based upon filterable fields, where equality operators can be used. See
  /// [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-tools)
  /// for more details. Allowed operators: `=`, `<`, `>`, `NOT`, `AND`, `OR`,
  /// and `()`. | Field | `=` | `<`, `>` | |--------------|-----|----------| |
  /// state | Yes | No | | targetState | Yes | No | | createTime | Yes | Yes | |
  /// updateTime | Yes | Yes | Examples: * `state=ACTIVE` to restrict results to
  /// skills in the `ACTIVE` state.
  ///
  /// [pageSize] - Optional. The maximum number of search results to return per
  /// page. The page size is capped at `100`, even if a larger value is
  /// specified. A negative value will result in an `INVALID_ARGUMENT` error. If
  /// unspecified or set to `0`, a default value of `20` will be used. The
  /// server may return fewer results than requested.
  ///
  /// [pageToken] - Optional. If present, retrieve the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of all other
  /// method parameters, must be identical to those in the previous call.
  ///
  /// [searchString] - Optional. Search criteria used to select the Skills to
  /// return. If no search criteria is specified then all accessible Skills will
  /// be returned. Search expressions can be used to restrict results based upon
  /// searchable fields, where the operators can be used along with the suffix
  /// wildcard symbol `*`. See
  /// [instructions](https://docs.cloud.google.com/agent-registry/search-agents-and-tools)
  /// for more details. Allowed operators: `=`, `:`, `NOT`, `AND`, `OR`, and
  /// `()`. Searchable fields: | Field | `=` | `:` | `*` | Keyword Search |
  /// |---------------------------|-----|-----|-----|----------------| | skillId
  /// | Yes | Yes | Yes | Included | | name | No | Yes | Yes | Included | |
  /// displayName | No | Yes | Yes | Included | | description | No | Yes | No |
  /// Included | | frontmatter.name | No | Yes | No | Included | |
  /// frontmatter.description | No | Yes | No | Included | |
  /// frontmatter.compatibility | No | Yes | No | Included | |
  /// frontmatter.license | No | Yes | No | Included | Examples: *
  /// `skillId="urn:skill:projects-1234:locations:global:private-important-skill"`
  /// to find the skill with the specified skill ID. * `name:important` to find
  /// skills whose name contains `important` as a word. * `displayName:works*`
  /// to find skills whose display name contains words that start with `works`.
  ///
  /// [searchType] - Optional. The type of search.
  /// Possible string values are:
  /// - "SEARCH_TYPE_UNSPECIFIED" : Invalid search type.
  /// - "KEYWORD" : Search for a keyword across all searchable fields.
  /// - "SEMANTIC" : Search based on the meaning and intent of a natural
  /// language query.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchSkillsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchSkillsResponse> search(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? searchString,
    core.String? searchType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'searchString': ?searchString == null ? null : [searchString],
      'searchType': ?searchType == null ? null : [searchType],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/skills:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchSkillsResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
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

class ProjectsLocationsSkillsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSkillsRevisionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new immutable revision and triggers validation pipelines.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent logical container name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Signed UUID request idempotency token.
  ///
  /// [skillRevisionId] - Optional. Custom, user-defined unique revision
  /// identifier. Format: 4-63 characters, matching regex
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`
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
    SkillRevision request,
    core.String parent, {
    core.String? requestId,
    core.String? skillRevisionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'skillRevisionId': ?skillRevisionId == null ? null : [skillRevisionId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specific revision (restricted to admins to purge accidentally
  /// committed secrets).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target revision name to remove.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. Signed UUID request idempotency token.
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

  /// Gets details of a single immutable Revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Target revision name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [SkillRevision] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String name, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return SkillRevision.fromJson(
        response_ as core.Map<core.String, core.dynamic>,
      );
    } else {
      return response_ as commons.Media;
    }
  }

  /// Lists all revisions belonging to a parent Skill.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent logical container name to query.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/skills/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Page limit size.
  ///
  /// [pageToken] - Optional. Page offset token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSkillRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSkillRevisionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSkillRevisionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Required. Immutable.
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

/// Represents an AI Application.
class AiApplication {
  /// Properties of an underlying cloud resource that can comprise an AI
  /// Application.
  ///
  /// Output only.
  ApplicationProperties? applicationProperties;

  /// Consumer provided attributes.
  ///
  /// Optional.
  Attributes? attributes;

  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// User-defined description of the AI Application.
  ///
  /// Optional.
  core.String? description;

  /// User-defined name for the AI Application.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Resource name of the AI Application. Format:
  /// `projects/{project}/locations/{location}/aiApplications/{ai_application}`
  core.String? name;

  /// The current state of the AI Application.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : The resource is being provisioned or created.
  /// - "ACTIVE" : The resource is active and ready for use.
  /// - "DELETING" : The resource is in the process of being deleted.
  core.String? state;

  /// Universally unique identifier (UUID4) for the AI Application.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time.
  ///
  /// Output only.
  core.String? updateTime;

  AiApplication({
    this.applicationProperties,
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  AiApplication.fromJson(core.Map json_)
    : this(
        applicationProperties: json_.containsKey('applicationProperties')
            ? ApplicationProperties.fromJson(
                json_['applicationProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        attributes: json_.containsKey('attributes')
            ? Attributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationProperties = this.applicationProperties;
    final attributes = this.attributes;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final state = this.state;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'applicationProperties': ?applicationProperties,
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
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

/// Additional system properties of an Application.
class ApplicationProperties {
  /// Additional metadata specific to the App Hub application.
  ///
  /// The key is a string that identifies the type of metadata and the value is
  /// the metadata contents specific to that type. Key format:
  /// `apphub.googleapis.com/{metadataType}`
  ///
  /// Output only.
  core.Map<core.String, ExtendedMetadata>? extendedMetadata;

  ApplicationProperties({this.extendedMetadata});

  ApplicationProperties.fromJson(core.Map json_)
    : this(
        extendedMetadata:
            (json_['extendedMetadata'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    ExtendedMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extendedMetadata = this.extendedMetadata;
    return {'extendedMetadata': ?extendedMetadata};
  }
}

/// Direct write-only raw archive payload upload.
class ArchiveUploadSource {
  /// Input only.
  ///
  /// Write-only raw ZIP/TAR archive payload bytes containing the skill package.
  ///
  /// Required.
  core.String? archiveContent;
  core.List<core.int> get archiveContentAsBytes =>
      convert.base64.decode(archiveContent!);

  set archiveContentAsBytes(core.List<core.int> bytes_) {
    archiveContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ArchiveUploadSource({this.archiveContent});

  ArchiveUploadSource.fromJson(core.Map json_)
    : this(archiveContent: json_['archiveContent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final archiveContent = this.archiveContent;
    return {'archiveContent': ?archiveContent};
  }
}

/// Consumer provided attributes.
class Attributes {
  /// Business team that ensures user needs are met and value is delivered
  ///
  /// Optional.
  core.List<ContactInfo>? businessOwners;

  /// User-defined criticality information.
  ///
  /// Optional.
  Criticality? criticality;

  /// Developer team that owns development and coding.
  ///
  /// Optional.
  core.List<ContactInfo>? developerOwners;

  /// User-defined environment information.
  ///
  /// Optional.
  Environment? environment;

  /// Operator team that ensures runtime and operations.
  ///
  /// Optional.
  core.List<ContactInfo>? operatorOwners;

  Attributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Attributes.fromJson(core.Map json_)
    : this(
        businessOwners: (json_['businessOwners'] as core.List?)
            ?.map(
              (value) => ContactInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        criticality: json_.containsKey('criticality')
            ? Criticality.fromJson(
                json_['criticality'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        developerOwners: (json_['developerOwners'] as core.List?)
            ?.map(
              (value) => ContactInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        environment: json_.containsKey('environment')
            ? Environment.fromJson(
                json_['environment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operatorOwners: (json_['operatorOwners'] as core.List?)
            ?.map(
              (value) => ContactInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessOwners = this.businessOwners;
    final criticality = this.criticality;
    final developerOwners = this.developerOwners;
    final environment = this.environment;
    final operatorOwners = this.operatorOwners;
    return {
      'businessOwners': ?businessOwners,
      'criticality': ?criticality,
      'developerOwners': ?developerOwners,
      'environment': ?environment,
      'operatorOwners': ?operatorOwners,
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

  /// The source Agent of the Binding.
  ///
  /// Optional.
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

/// Contact information of stakeholders.
typedef ContactInfo = $ContactInfo;

/// Criticality of the Application, Service, or Workload
typedef Criticality = $Criticality;

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
  /// Required. Immutable.
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

/// Environment of the Application, Service, or Workload
typedef Environment = $Environment;

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

/// Additional metadata for a Service or Workload.
typedef ExtendedMetadata = $ExtendedMetadata;

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

/// File location of the finding.
class File {
  /// Line number (1-based), or 0 if whole File / unknown.
  ///
  /// Optional.
  core.String? lineNumber;

  /// Relative path of the file containing the finding.
  ///
  /// Optional.
  core.String? path;

  File({this.lineNumber, this.path});

  File.fromJson(core.Map json_)
    : this(
        lineNumber: json_['lineNumber'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lineNumber = this.lineNumber;
    final path = this.path;
    return {'lineNumber': ?lineNumber, 'path': ?path};
  }
}

/// Represents a security Finding.
class Finding {
  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// Detailed description of the finding.
  ///
  /// Optional.
  core.String? detail;

  /// File associated with the finding.
  ///
  /// Optional.
  core.List<File>? files;

  /// Class of the finding.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FINDING_CLASS_UNSPECIFIED" : Unspecified finding class.
  /// - "VULNERABILITY" : Describes a potential weakness in software that
  /// increases risk to Confidentiality & Integrity & Availability.
  /// - "SECRET" : Describes a potential security risk due to plaintext
  /// credentials, keys, or tokens being exposed in an asset or workload.
  core.String? findingClass;

  /// Identifier.
  ///
  /// Resource name of the Finding. Format:
  /// `projects/{project}/locations/{location}/findings/{finding}`.
  core.String? name;

  /// The resource that the finding is associated with.
  ///
  /// Optional.
  core.String? resource;

  /// Severity of the finding.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : This value is used for findings when a source
  /// doesn't write a severity value.
  /// - "SEVERITY_CRITICAL" : Critical severity.
  /// - "SEVERITY_HIGH" : High severity.
  /// - "SEVERITY_MEDIUM" : Medium severity.
  /// - "SEVERITY_LOW" : Low severity.
  core.String? severity;

  /// Universally unique identifier (UUID4) for the Finding.
  ///
  /// Output only.
  core.String? uid;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  Finding({
    this.createTime,
    this.detail,
    this.files,
    this.findingClass,
    this.name,
    this.resource,
    this.severity,
    this.uid,
    this.updateTime,
  });

  Finding.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        detail: json_['detail'] as core.String?,
        files: (json_['files'] as core.List?)
            ?.map(
              (value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        findingClass: json_['findingClass'] as core.String?,
        name: json_['name'] as core.String?,
        resource: json_['resource'] as core.String?,
        severity: json_['severity'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final detail = this.detail;
    final files = this.files;
    final findingClass = this.findingClass;
    final name = this.name;
    final resource = this.resource;
    final severity = this.severity;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'detail': ?detail,
      'files': ?files,
      'findingClass': ?findingClass,
      'name': ?name,
      'resource': ?resource,
      'severity': ?severity,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Structured metadata attributes extracted from the package's local SKILL.md
/// frontmatter.
class Frontmatter {
  /// Environmental dependencies or local sidecars.
  ///
  /// Optional.
  core.String? compatibility;

  /// Functional description.
  ///
  /// Required.
  core.String? description;

  /// License.
  ///
  /// Optional.
  core.String? license;

  /// Extensible flattened map mapping custom tags, authors, and version
  /// parameters.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The name of the skill.
  ///
  /// Required.
  core.String? name;

  Frontmatter({
    this.compatibility,
    this.description,
    this.license,
    this.metadata,
    this.name,
  });

  Frontmatter.fromJson(core.Map json_)
    : this(
        compatibility: json_['compatibility'] as core.String?,
        description: json_['description'] as core.String?,
        license: json_['license'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compatibility = this.compatibility;
    final description = this.description;
    final license = this.license;
    final metadata = this.metadata;
    final name = this.name;
    return {
      'compatibility': ?compatibility,
      'description': ?description,
      'license': ?license,
      'metadata': ?metadata,
      'name': ?name,
    };
  }
}

/// Specifications for Cloud Storage objects.
class GcsSource {
  /// Cloud Storage object generation ID.
  ///
  /// If not specified, the latest generation is used.
  ///
  /// Optional.
  core.String? generation;

  /// Cloud Storage object URI.
  ///
  /// Format: `gs://{bucket_name}/{object_name}`
  ///
  /// Required.
  core.String? uri;

  GcsSource({this.generation, this.uri});

  GcsSource.fromJson(core.Map json_)
    : this(
        generation: json_['generation'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generation = this.generation;
    final uri = this.uri;
    return {'generation': ?generation, 'uri': ?uri};
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
typedef GoogleIamV1TestIamPermissionsResponse = $TestIamPermissionsResponse00;

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

/// Message for response to listing Agents under an AI Application.
class ListAiApplicationAgentsResponse {
  /// The list of Agents.
  core.List<Agent>? agents;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAiApplicationAgentsResponse({this.agents, this.nextPageToken});

  ListAiApplicationAgentsResponse.fromJson(core.Map json_)
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

/// Message for response to listing Endpoints under an AI Application.
class ListAiApplicationEndpointsResponse {
  /// The list of Endpoints.
  core.List<Endpoint>? endpoints;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAiApplicationEndpointsResponse({this.endpoints, this.nextPageToken});

  ListAiApplicationEndpointsResponse.fromJson(core.Map json_)
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

/// Message for response to listing McpServers under an AI Application.
class ListAiApplicationMcpServersResponse {
  /// The list of McpServers.
  core.List<McpServer>? mcpServers;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAiApplicationMcpServersResponse({this.mcpServers, this.nextPageToken});

  ListAiApplicationMcpServersResponse.fromJson(core.Map json_)
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

/// Message for response to listing AiApplications.
class ListAiApplicationsResponse {
  /// The list of AiApplications.
  core.List<AiApplication>? aiApplications;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAiApplicationsResponse({
    this.aiApplications,
    this.nextPageToken,
    this.unreachable,
  });

  ListAiApplicationsResponse.fromJson(core.Map json_)
    : this(
        aiApplications: (json_['aiApplications'] as core.List?)
            ?.map(
              (value) => AiApplication.fromJson(
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
    final aiApplications = this.aiApplications;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'aiApplications': ?aiApplications,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
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

/// Message for response to listing Findings.
class ListFindingsResponse {
  /// The list of Findings.
  core.List<Finding>? findings;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListFindingsResponse({this.findings, this.nextPageToken});

  ListFindingsResponse.fromJson(core.Map json_)
    : this(
        findings: (json_['findings'] as core.List?)
            ?.map(
              (value) => Finding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final findings = this.findings;
    final nextPageToken = this.nextPageToken;
    return {'findings': ?findings, 'nextPageToken': ?nextPageToken};
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

/// Response listing Publishers.
class ListPublishersResponse {
  /// Page offset continuation token.
  core.String? nextPageToken;

  /// The returned list of Publishers.
  core.List<Publisher>? publishers;

  ListPublishersResponse({this.nextPageToken, this.publishers});

  ListPublishersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        publishers: (json_['publishers'] as core.List?)
            ?.map(
              (value) => Publisher.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final publishers = this.publishers;
    return {'nextPageToken': ?nextPageToken, 'publishers': ?publishers};
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

/// Response listing Revisions.
class ListSkillRevisionsResponse {
  /// Page offset continuation token.
  core.String? nextPageToken;

  /// Returned version snapshot list.
  core.List<SkillRevision>? skillRevisions;

  ListSkillRevisionsResponse({this.nextPageToken, this.skillRevisions});

  ListSkillRevisionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skillRevisions: (json_['skillRevisions'] as core.List?)
            ?.map(
              (value) => SkillRevision.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final skillRevisions = this.skillRevisions;
    return {'nextPageToken': ?nextPageToken, 'skillRevisions': ?skillRevisions};
  }
}

/// Response structure listing logical Skills.
class ListSkillsResponse {
  /// Page continuation continuation token.
  core.String? nextPageToken;

  /// Returned container list.
  core.List<Skill>? skills;

  /// Unreachable locations or failures.
  core.List<core.String>? unreachable;

  ListSkillsResponse({this.nextPageToken, this.skills, this.unreachable});

  ListSkillsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skills: (json_['skills'] as core.List?)
            ?.map(
              (value) =>
                  Skill.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final skills = this.skills;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'skills': ?skills,
      'unreachable': ?unreachable,
    };
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
  /// Required. Immutable.
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

/// Represents a verified Publisher of Skills.
///
/// Prepopulated publishers include `publishers/cloud.google.com` and
/// `publishers/workspace.google.com`.
class Publisher {
  /// Human readable display name of the publisher.
  ///
  /// Optional.
  core.String? displayName;

  /// URI pointing to official publisher documentation.
  ///
  /// Optional.
  core.String? documentationUri;

  /// Identifier.
  ///
  /// Resource name of the publisher. Format:
  /// `projects/{project}/locations/{location}/publishers/{publisher}`
  core.String? name;

  /// The curation tier of the publisher.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PUBLISHER_TIER_UNSPECIFIED" : Default value. Unspecified.
  /// - "FIRST_PARTY" : First-party Google-curated and verified global
  /// publishers.
  /// - "THIRD_PARTY" : Third-party verified enterprise partner publishers.
  /// - "PRIVATE" : Private publishers within the developer's workspace/project.
  core.String? publisherTier;

  /// URI pointing to the support portal or email.
  ///
  /// Optional.
  core.String? supportUri;

  /// The verified prefix (e.g. "snowflake-", "google-") associated with this
  /// publisher.
  ///
  /// The system uses this prefix to enforce name-squatting rules during Skill
  /// registration. Must be globally unique across all publishers.
  ///
  /// Required.
  core.String? verifiedPrefix;

  Publisher({
    this.displayName,
    this.documentationUri,
    this.name,
    this.publisherTier,
    this.supportUri,
    this.verifiedPrefix,
  });

  Publisher.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        name: json_['name'] as core.String?,
        publisherTier: json_['publisherTier'] as core.String?,
        supportUri: json_['supportUri'] as core.String?,
        verifiedPrefix: json_['verifiedPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final documentationUri = this.documentationUri;
    final name = this.name;
    final publisherTier = this.publisherTier;
    final supportUri = this.supportUri;
    final verifiedPrefix = this.verifiedPrefix;
    return {
      'displayName': ?displayName,
      'documentationUri': ?documentationUri,
      'name': ?name,
      'publisherTier': ?publisherTier,
      'supportUri': ?supportUri,
      'verifiedPrefix': ?verifiedPrefix,
    };
  }
}

/// Scan result of the skill revision.
class ScanResult {
  /// The error message if the scan failed.
  ///
  /// Output only.
  core.String? errorMessage;

  /// The finding resource names for the skill revision.
  ///
  /// Output only.
  core.List<core.String>? findings;

  /// The state of the vulnerability check.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SCAN_STATE_UNSPECIFIED" : Should not be used.
  /// - "FAILED" : The underlying scanning system failed to execute the scan.
  /// - "UNSUPPORTED_FORMAT" : The uploaded artifact format is unsupported by
  /// the scanning system.
  /// - "SUCCEEDED" : The scan has completed successfully.
  /// - "DISABLED" : The scan was disabled.
  /// - "RUNNING" : The scan is running.
  core.String? scanState;

  /// The time when the scan was completed.
  ///
  /// Output only.
  core.String? scanTime;

  ScanResult({this.errorMessage, this.findings, this.scanState, this.scanTime});

  ScanResult.fromJson(core.Map json_)
    : this(
        errorMessage: json_['errorMessage'] as core.String?,
        findings: (json_['findings'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        scanState: json_['scanState'] as core.String?,
        scanTime: json_['scanTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorMessage = this.errorMessage;
    final findings = this.findings;
    final scanState = this.scanState;
    final scanTime = this.scanTime;
    return {
      'errorMessage': ?errorMessage,
      'findings': ?findings,
      'scanState': ?scanState,
      'scanTime': ?scanTime,
    };
  }
}

/// Configuration for scanning of the skill.
class ScanningConfig {
  /// The security scanning policy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POLICY_UNSPECIFIED" : Default value. Inherits system default
  /// (ENABLED_BLOCKING).
  /// - "DISABLED" : Bypasses scanning.
  /// - "ENABLED_BLOCKING" : Scans the skill package and blocks download if
  /// security or safety issues are found.
  /// - "ENABLED_NONBLOCKING" : Scans the skill package in audit mode without
  /// blocking downloads.
  core.String? policy;

  ScanningConfig({this.policy});

  ScanningConfig.fromJson(core.Map json_)
    : this(policy: json_['policy'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    return {'policy': ?policy};
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
  /// `agentId="urn:agent:projects-123:projects:123:locations:us-central1:aiplatform:reasoningEngines:1234"`
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

/// Response listing searched Skills.
class SearchSkillsResponse {
  /// Query page offset continuation token.
  core.String? nextPageToken;

  /// Matched Skills list.
  core.List<Skill>? skills;

  SearchSkillsResponse({this.nextPageToken, this.skills});

  SearchSkillsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skills: (json_['skills'] as core.List?)
            ?.map(
              (value) =>
                  Skill.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final skills = this.skills;
    return {'nextPageToken': ?nextPageToken, 'skills': ?skills};
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

/// Represents an Executable Agent Skill or a Composite Tool Suite (Bundle).
///
/// Sibling resource with Agent and McpServer under
/// agentregistry.googleapis.com.
class Skill {
  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// The full resource name of the revision currently served by default
  /// (floating track).
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/skills/{skill}/revisions/{revision}`
  ///
  /// Optional.
  core.String? defaultRevision;

  /// Brief summary describing the capabilities of the skill.
  ///
  /// Maximum length is 2048 characters.
  ///
  /// Optional.
  core.String? description;

  /// Human-readable display name of the skill.
  ///
  /// Maximum length is 128 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Lightweight frontmatter metadata attributes copied from the default
  /// revision.
  ///
  /// Output only.
  Frontmatter? frontmatter;

  /// Input only.
  ///
  /// Optional nested initial revision payload to support standard one-shot
  /// creation. The server processes this field on input during creation but
  /// must never return it in responses.
  ///
  /// Optional.
  SkillRevision? initialRevision;

  /// Identifier.
  ///
  /// Resource name of the Skill. Format:
  /// `projects/{project}/locations/{location}/skills/{skill}` The `{skill}`
  /// segment acts as the resource ID. If the skill is associated with a
  /// Publisher, this segment typically uses a hyphenated namespace prefix
  /// corresponding to the publisher (e.g., `google-workspace-create-docs`).
  core.String? name;

  /// The publisher resource associated with this skill.
  ///
  /// Format: `projects/{project}/locations/{location}/publishers/{publisher}`
  /// The publisher dictates the allowed namespace prefixes for the skill's name
  /// and logical `skill_id` (e.g., Publisher `google` authorizes the `google-*`
  /// prefix).
  ///
  /// Optional.
  core.String? publisher;

  /// Scanning configuration for the skill.
  ///
  /// Optional.
  ScanningConfig? scanningConfig;

  /// A stable, globally unique logical identifier for the skill.
  ///
  /// It is securely constructed by the backend by combining the associated
  /// `publisher`'s verified namespace and the skill's resource ID to enforce
  /// strict ownership. For example, the prefix `google-` is reserved
  /// exclusively for first-party Google publishers to prevent namespace
  /// squatting. Example: `urn:skill:google-workspace:create-docs`
  ///
  /// Output only.
  core.String? skillId;

  /// The system-managed state of the skill.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "STATE_CREATING" : The skill is being created. It is not served.
  /// - "STATE_DRAFT" : The skill is in draft, or lacks a valid payload. It is
  /// not served.
  /// - "STATE_ACTIVE" : The skill is active and is served.
  /// - "STATE_DISABLED" : The skill is disabled and is not served.
  /// - "STATE_DEPRECATED" : The skill is deprecated. It is served, but emits
  /// warnings.
  /// - "STATE_DECOMMISSIONED" : The skill is decommissioned and is not served.
  /// - "STATE_DELETING" : The skill is being deleted. It is not served.
  core.String? state;

  /// User-managed target state of the skill.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGET_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TARGET_STATE_DRAFT" : The skill is in draft and cannot be served.
  /// - "TARGET_STATE_ACTIVE" : The skill is active and can be served.
  /// - "TARGET_STATE_DISABLED" : The skill is disabled and cannot be served.
  /// - "TARGET_STATE_DEPRECATED" : The skill is deprecated. It can still be
  /// served, but emits warnings.
  /// - "TARGET_STATE_DECOMMISSIONED" : The skill is decommissioned and cannot
  /// be served.
  core.String? targetState;

  /// Structural deployment type (SIMPLE leaf vs COMPOSITE bundle).
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "SIMPLE" : A standard, leaf executable skill containing natural language
  /// and code.
  core.String? type;

  /// Universally unique identifier (UUID4) for the logical container.
  ///
  /// Output only.
  core.String? uid;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  Skill({
    this.createTime,
    this.defaultRevision,
    this.description,
    this.displayName,
    this.frontmatter,
    this.initialRevision,
    this.name,
    this.publisher,
    this.scanningConfig,
    this.skillId,
    this.state,
    this.targetState,
    this.type,
    this.uid,
    this.updateTime,
  });

  Skill.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        defaultRevision: json_['defaultRevision'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        frontmatter: json_.containsKey('frontmatter')
            ? Frontmatter.fromJson(
                json_['frontmatter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        initialRevision: json_.containsKey('initialRevision')
            ? SkillRevision.fromJson(
                json_['initialRevision'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        publisher: json_['publisher'] as core.String?,
        scanningConfig: json_.containsKey('scanningConfig')
            ? ScanningConfig.fromJson(
                json_['scanningConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        skillId: json_['skillId'] as core.String?,
        state: json_['state'] as core.String?,
        targetState: json_['targetState'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final defaultRevision = this.defaultRevision;
    final description = this.description;
    final displayName = this.displayName;
    final frontmatter = this.frontmatter;
    final initialRevision = this.initialRevision;
    final name = this.name;
    final publisher = this.publisher;
    final scanningConfig = this.scanningConfig;
    final skillId = this.skillId;
    final state = this.state;
    final targetState = this.targetState;
    final type = this.type;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'defaultRevision': ?defaultRevision,
      'description': ?description,
      'displayName': ?displayName,
      'frontmatter': ?frontmatter,
      'initialRevision': ?initialRevision,
      'name': ?name,
      'publisher': ?publisher,
      'scanningConfig': ?scanningConfig,
      'skillId': ?skillId,
      'state': ?state,
      'targetState': ?targetState,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Represents an immutable, versioned snapshot of a Skill package.
class SkillRevision {
  /// Direct write-only raw archive upload source.
  ///
  /// Optional. Immutable.
  ArchiveUploadSource? archiveUploadSource;

  /// Revision creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Extracted YAML frontmatter configuration snapshot.
  ///
  /// Output only.
  Frontmatter? frontmatter;

  /// Cloud Storage object generation URI.
  ///
  /// Optional. Immutable.
  GcsSource? gcsSource;

  /// Identifier.
  ///
  /// Resource name of the SkillRevision. Format:
  /// `projects/{project}/locations/{location}/skills/{skill}/revisions/{revision}`
  core.String? name;

  /// Scan result of the skill revision.
  ///
  /// Output only.
  ScanResult? scanResult;

  /// Cryptographic SHA-256 integrity and deduplication digest of the payload
  /// zip.
  ///
  /// Output only.
  core.String? sha256Hash;

  /// Size of the compiled zip payload in bytes (assists client download
  /// progress).
  ///
  /// Output only.
  core.String? sizeBytes;

  /// The system-managed lifecycle state of this revision.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : The revision is being created.
  /// - "ACTIVE" : The revision is active.
  /// - "FAILED" : The revision failed to compile or ingest.
  /// - "DELETING" : The revision is being deleted.
  core.String? state;

  /// Universally unique identifier (UUID4) for the skill revision.
  ///
  /// Output only.
  core.String? uid;

  SkillRevision({
    this.archiveUploadSource,
    this.createTime,
    this.frontmatter,
    this.gcsSource,
    this.name,
    this.scanResult,
    this.sha256Hash,
    this.sizeBytes,
    this.state,
    this.uid,
  });

  SkillRevision.fromJson(core.Map json_)
    : this(
        archiveUploadSource: json_.containsKey('archiveUploadSource')
            ? ArchiveUploadSource.fromJson(
                json_['archiveUploadSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        frontmatter: json_.containsKey('frontmatter')
            ? Frontmatter.fromJson(
                json_['frontmatter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gcsSource: json_.containsKey('gcsSource')
            ? GcsSource.fromJson(
                json_['gcsSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        scanResult: json_.containsKey('scanResult')
            ? ScanResult.fromJson(
                json_['scanResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sha256Hash: json_['sha256Hash'] as core.String?,
        sizeBytes: json_['sizeBytes'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final archiveUploadSource = this.archiveUploadSource;
    final createTime = this.createTime;
    final frontmatter = this.frontmatter;
    final gcsSource = this.gcsSource;
    final name = this.name;
    final scanResult = this.scanResult;
    final sha256Hash = this.sha256Hash;
    final sizeBytes = this.sizeBytes;
    final state = this.state;
    final uid = this.uid;
    return {
      'archiveUploadSource': ?archiveUploadSource,
      'createTime': ?createTime,
      'frontmatter': ?frontmatter,
      'gcsSource': ?gcsSource,
      'name': ?name,
      'scanResult': ?scanResult,
      'sha256Hash': ?sha256Hash,
      'sizeBytes': ?sizeBytes,
      'state': ?state,
      'uid': ?uid,
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
  /// Protocol-level tool metadata conforming to MCP _meta specification.
  ///
  /// Output only.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? P_meta;

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

  Tool({this.P_meta, this.annotations, this.description, this.name});

  Tool.fromJson(core.Map json_)
    : this(
        P_meta: json_.containsKey('_meta')
            ? json_['_meta'] as core.Map<core.String, core.dynamic>
            : null,
        annotations: json_.containsKey('annotations')
            ? Annotations.fromJson(
                json_['annotations'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final P_meta = this.P_meta;
    final annotations = this.annotations;
    final description = this.description;
    final name = this.name;
    return {
      '_meta': ?P_meta,
      'annotations': ?annotations,
      'description': ?description,
      'name': ?name,
    };
  }
}
