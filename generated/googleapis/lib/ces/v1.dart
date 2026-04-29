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

/// Gemini Enterprise for Customer Experience API - v1
///
/// For more information, see
/// <https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps>
///
/// Create an instance of [CustomerEngagementSuiteApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAppsResource]
///       - [ProjectsLocationsAppsAgentsResource]
///       - [ProjectsLocationsAppsChangelogsResource]
///       - [ProjectsLocationsAppsConversationsResource]
///       - [ProjectsLocationsAppsDeploymentsResource]
///       - [ProjectsLocationsAppsExamplesResource]
///       - [ProjectsLocationsAppsGuardrailsResource]
///       - [ProjectsLocationsAppsSessionsResource]
///       - [ProjectsLocationsAppsToolsResource]
///       - [ProjectsLocationsAppsToolsetsResource]
///       - [ProjectsLocationsAppsVersionsResource]
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

class CustomerEngagementSuiteApi {
  /// Create, update, delete, and manage your Next Gen Agents
  static const cesScope = 'https://www.googleapis.com/auth/ces';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CustomerEngagementSuiteApi(
    http.Client client, {
    core.String rootUrl = 'https://ces.googleapis.com/',
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

  ProjectsLocationsAppsResource get apps =>
      ProjectsLocationsAppsResource(_requester);
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

class ProjectsLocationsAppsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsAgentsResource get agents =>
      ProjectsLocationsAppsAgentsResource(_requester);
  ProjectsLocationsAppsChangelogsResource get changelogs =>
      ProjectsLocationsAppsChangelogsResource(_requester);
  ProjectsLocationsAppsConversationsResource get conversations =>
      ProjectsLocationsAppsConversationsResource(_requester);
  ProjectsLocationsAppsDeploymentsResource get deployments =>
      ProjectsLocationsAppsDeploymentsResource(_requester);
  ProjectsLocationsAppsExamplesResource get examples =>
      ProjectsLocationsAppsExamplesResource(_requester);
  ProjectsLocationsAppsGuardrailsResource get guardrails =>
      ProjectsLocationsAppsGuardrailsResource(_requester);
  ProjectsLocationsAppsSessionsResource get sessions =>
      ProjectsLocationsAppsSessionsResource(_requester);
  ProjectsLocationsAppsToolsResource get tools =>
      ProjectsLocationsAppsToolsResource(_requester);
  ProjectsLocationsAppsToolsetsResource get toolsets =>
      ProjectsLocationsAppsToolsetsResource(_requester);
  ProjectsLocationsAppsVersionsResource get versions =>
      ProjectsLocationsAppsVersionsResource(_requester);

  ProjectsLocationsAppsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new app in the given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create an app
  /// in.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [appId] - Optional. The ID to use for the app, which will become the final
  /// component of the app's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app.
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
    App request,
    core.String parent, {
    core.String? appId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'appId': ?appId == null ? null : [appId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the app. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the app, deletion will
  /// be blocked and an ABORTED error will be returned.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
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

  /// Executes the given tool with the given arguments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app which the tool/toolset
  /// belongs to. Format: `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteToolResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteToolResponse> executeTool(
    ExecuteToolRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':executeTool';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteToolResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports the specified app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app to export.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
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
  async.Future<Operation> exportApp(
    ExportAppRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':exportApp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of the specified app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [App].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<App> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return App.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name with the location of the app
  /// to import.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> importApp(
    ImportAppRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apps:importApp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists apps in the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to list apps from.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the apps. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListApps call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the app. Format:
  /// `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [App].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<App> patch(
    App request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return App.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the schema of the given tool.
  ///
  /// The schema is computed on the fly for the given instance of the tool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app which the tool/toolset
  /// belongs to. Format: `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveToolSchemaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveToolSchemaResponse> retrieveToolSchema(
    RetrieveToolSchemaRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':retrieveToolSchema';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetrieveToolSchemaResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsAgentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new agent in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create an agent in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [agentId] - Optional. The ID to use for the agent, which will become the
  /// final component of the agent's resource name. If not provided, a unique ID
  /// will be automatically assigned for the agent.
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
  async.Future<Agent> create(
    Agent request,
    core.String parent, {
    core.String? agentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'agentId': ?agentId == null ? null : [agentId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Agent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the agent to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the agent. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the agent, deletion
  /// will be blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. Indicates whether to forcefully delete the agent, even
  /// if it is still referenced by other app/agents/examples. * If `force =
  /// false`, the deletion fails if other agents/examples reference it. * If
  /// `force = true`, delete the agent and remove it from all referencing
  /// apps/agents/examples.
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
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
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

  /// Gets details of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the agent to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/agents/\[^/\]+$`.
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

  /// Lists agents in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list agents from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the agents. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListAgents call.
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

  /// Updates the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the agent. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
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
  async.Future<Agent> patch(
    Agent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Agent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAppsChangelogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsChangelogsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the specified changelog.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the changelog to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/changelogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Changelog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Changelog> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Changelog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the changelogs of the specified app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list changelogs from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the changelogs. See
  /// https://google.aip.dev/160 for more details. The filter string can be used
  /// to filter by `action`, `resource_type`, `resource_name`, `author`, and
  /// `create_time`. The `:` comparator can be used for case-insensitive partial
  /// matching on string fields, while `=` performs an exact case-sensitive
  /// match. Examples: * `action:update` (case-insensitive partial match) *
  /// `action="Create"` (case-sensitive exact match) * `resource_type:agent` *
  /// `resource_name:my-agent` * `author:me@example.com` * `create_time >
  /// "2025-01-01T00:00:00Z"` * `create_time <= "2025-01-01T00:00:00Z" AND
  /// resource_type:tool`
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListChangelogs call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChangelogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChangelogsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/changelogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChangelogsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsConversationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Batch deletes the specified conversations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to delete conversations
  /// from. Format: `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
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
  async.Future<Operation> batchDelete(
    BatchDeleteConversationsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversations:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversation to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [source] - Optional. Indicate the source of the conversation. If not set,
  /// Source.Live will be applied by default.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : Unspecified source.
  /// - "LIVE" : The conversation is from the live end user.
  /// - "SIMULATOR" : The conversation is from the simulator.
  /// - "EVAL" : The conversation is from the evaluation.
  /// - "AGENT_TOOL" : The conversation is from an agent tool. Agent tool runs
  /// the agent in a separate session, which is persisted for testing and
  /// debugging purposes.
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
    core.String? source,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'source': ?source == null ? null : [source],
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

  /// Gets details of the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversation to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [source] - Optional. Indicate the source of the conversation. If not set,
  /// all source will be searched.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : Unspecified source.
  /// - "LIVE" : The conversation is from the live end user.
  /// - "SIMULATOR" : The conversation is from the simulator.
  /// - "EVAL" : The conversation is from the evaluation.
  /// - "AGENT_TOOL" : The conversation is from an agent tool. Agent tool runs
  /// the agent in a separate session, which is persisted for testing and
  /// debugging purposes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Conversation> get(
    core.String name, {
    core.String? source,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'source': ?source == null ? null : [source],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists conversations in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list conversations
  /// from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the conversations.
  /// See https://google.aip.dev/160 for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListConversations call.
  ///
  /// [source] - Optional. Indicate the source of the conversation. If not set,
  /// Source.Live will be applied by default. Will be deprecated in favor of
  /// `sources` field.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : Unspecified source.
  /// - "LIVE" : The conversation is from the live end user.
  /// - "SIMULATOR" : The conversation is from the simulator.
  /// - "EVAL" : The conversation is from the evaluation.
  /// - "AGENT_TOOL" : The conversation is from an agent tool. Agent tool runs
  /// the agent in a separate session, which is persisted for testing and
  /// debugging purposes.
  ///
  /// [sources] - Optional. Indicate the sources of the conversations. If not
  /// set, all available sources will be applied by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConversationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? source,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'source': ?source == null ? null : [source],
      'sources': ?sources,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new deployment in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent app. Format:
  /// `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [deploymentId] - Optional. The ID to use for the deployment, which will
  /// become the final component of the deployment's resource name. If not
  /// provided, a unique ID will be automatically assigned for the deployment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> create(
    Deployment request,
    core.String parent, {
    core.String? deploymentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'deploymentId': ?deploymentId == null ? null : [deploymentId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to delete. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag of the deployment. If an etag is provided and
  /// does not match the current etag of the deployment, deletion will be
  /// blocked and an ABORTED error will be returned.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
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

  /// Gets details of the specified deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists deployments in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent app. Format:
  /// `projects/{project}/locations/{location}/apps/{app}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of deployments to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// deployments will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDeployments` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListDeployments` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeploymentsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the deployment. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> patch(
    Deployment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsExamplesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsExamplesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new example in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create an example in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [exampleId] - Optional. The ID to use for the example, which will become
  /// the final component of the example's resource name. If not provided, a
  /// unique ID will be automatically assigned for the example.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Example> create(
    Example request,
    core.String parent, {
    core.String? exampleId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'exampleId': ?exampleId == null ? null : [exampleId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Example.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified example.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the example to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the example. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the example, deletion
  /// will be blocked and an ABORTED error will be returned.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
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

  /// Gets details of the specified example.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the example to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Example> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Example.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists examples in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list examples from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the examples. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListExamples call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExamplesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExamplesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified example.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the example. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Example> patch(
    Example request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Example.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAppsGuardrailsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsGuardrailsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new guardrail in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create a guardrail
  /// in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [guardrailId] - Optional. The ID to use for the guardrail, which will
  /// become the final component of the guardrail's resource name. If not
  /// provided, a unique ID will be automatically assigned for the guardrail.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Guardrail].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Guardrail> create(
    Guardrail request,
    core.String parent, {
    core.String? guardrailId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'guardrailId': ?guardrailId == null ? null : [guardrailId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/guardrails';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Guardrail.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified guardrail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the guardrail to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/guardrails/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the guardrail. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the guardrail, deletion
  /// will be blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. Indicates whether to forcefully delete the guardrail,
  /// even if it is still referenced by app/agents. * If `force = false`, the
  /// deletion fails if any apps/agents still reference the guardrail. * If
  /// `force = true`, all existing references from apps/agents will be removed
  /// and the guardrail will be deleted.
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
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
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

  /// Gets details of the specified guardrail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the guardrail to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/guardrails/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Guardrail].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Guardrail> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Guardrail.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists guardrails in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list guardrails from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the guardrails. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListGuardrails call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGuardrailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGuardrailsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/guardrails';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGuardrailsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified guardrail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the guardrail. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/guardrails/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Guardrail].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Guardrail> patch(
    Guardrail request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Guardrail.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAppsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsSessionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates a session scoped token for chat widget to authenticate with
  /// Session APIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The session name to generate the chat token for.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/sessions/{session}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateChatTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateChatTokenResponse> generateChatToken(
    GenerateChatTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateChatToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateChatTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Initiates a single-turn interaction with the CES agent within a session.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The unique identifier of the session. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/sessions/{session}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunSessionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunSessionResponse> runSession(
    RunSessionRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$session') + ':runSession';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunSessionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Initiates a single-turn interaction with the CES agent.
  ///
  /// Uses server-side streaming to deliver incremental results and partial
  /// responses as they are generated. By default, complete responses (e.g.,
  /// messages from callbacks or full LLM responses) are sent to the client as
  /// soon as they are available. To enable streaming individual text chunks
  /// directly from the model, set enable_text_streaming to true.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The unique identifier of the session. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/sessions/{session}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunSessionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunSessionResponse> streamRunSession(
    RunSessionRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$session') + ':streamRunSession';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunSessionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsToolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsToolsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new tool in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create a tool in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [toolId] - Optional. The ID to use for the tool, which will become the
  /// final component of the tool's resource name. If not provided, a unique ID
  /// will be automatically assigned for the tool.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tool> create(
    Tool request,
    core.String parent, {
    core.String? toolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'toolId': ?toolId == null ? null : [toolId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Tool.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the tool to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the tool. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the tool, deletion will
  /// be blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. Indicates whether to forcefully delete the tool, even
  /// if it is still referenced by agents/examples. * If `force = false`, the
  /// deletion will fail if any agents still reference the tool. * If `force =
  /// true`, all existing references from agents will be removed and the tool
  /// will be deleted.
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
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
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

  /// Gets details of the specified tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the tool to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tool> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tool.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tools in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list tools from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the tools. Use
  /// "include_system_tools=true" to include system tools in the response. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListTools call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListToolsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified tool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the tool. Format: *
  /// `projects/{project}/locations/{location}/apps/{app}/tools/{tool}` for
  /// standalone tools. *
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}/tools/{tool}`
  /// for tools retrieved from a toolset. These tools are dynamic and
  /// output-only; they cannot be referenced directly where a tool is expected.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tool> patch(
    Tool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Tool.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAppsToolsetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsToolsetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new toolset in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create a toolset in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [toolsetId] - Optional. The ID to use for the toolset, which will become
  /// the final component of the toolset's resource name. If not provided, a
  /// unique ID will be automatically assigned for the toolset.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Toolset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Toolset> create(
    Toolset request,
    core.String parent, {
    core.String? toolsetId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'toolsetId': ?toolsetId == null ? null : [toolsetId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/toolsets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Toolset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified toolset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the toolset to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/toolsets/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the toolset. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the toolset, deletion
  /// will be blocked and an ABORTED error will be returned.
  ///
  /// [force] - Optional. Indicates whether to forcefully delete the toolset,
  /// even if it is still referenced by app/agents. * If `force = false`, the
  /// deletion fails if any agents still reference the toolset. * If `force =
  /// true`, all existing references from agents will be removed and the toolset
  /// will be deleted.
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
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
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

  /// Gets details of the specified toolset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the toolset to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/toolsets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Toolset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Toolset> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Toolset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists toolsets in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list toolsets from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the toolsets. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListToolsets call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListToolsetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListToolsetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/toolsets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListToolsetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified toolset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the toolset. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/toolsets/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to control which fields get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Toolset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Toolset> patch(
    Toolset request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Toolset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the list of tools included in the specified toolset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [toolset] - Required. The name of the toolset to retrieve the tools for.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/toolsets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveToolsResponse> retrieveTools(
    RetrieveToolsRequest request,
    core.String toolset, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$toolset') + ':retrieveTools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetrieveToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new app version in the given app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to create an app version
  /// in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [appVersionId] - Optional. The ID to use for the app version, which will
  /// become the final component of the app version's resource name. If not
  /// provided, a unique ID will be automatically assigned for the app version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppVersion> create(
    AppVersion request,
    core.String parent, {
    core.String? appVersionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'appVersionId': ?appVersionId == null ? null : [appVersionId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AppVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified app version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app version to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the app version. If an etag is not
  /// provided, the deletion will overwrite any concurrent changes. If an etag
  /// is provided and does not match the current etag of the app version,
  /// deletion will be blocked and an ABORTED error will be returned.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
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

  /// Gets details of the specified app version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app version to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppVersion> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AppVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all app versions in the given app.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the app to list app versions
  /// from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter to be applied when listing the app versions.
  /// See https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. Only "name" and "create_time" is
  /// supported. See https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list AgentService.ListAppVersions call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Restores the specified app version.
  ///
  /// This will create a new app version from the current draft app and
  /// overwrite the current draft with the specified app version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the app version to restore.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apps/\[^/\]+/versions/\[^/\]+$`.
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
  async.Future<Operation> restore(
    RestoreAppVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
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

/// Configuration of an Action for the tool to use.
///
/// Note: This can be either an Action or an Operation. See
/// https://cloud.google.com/integration-connectors/docs/entities-operation-action
/// for details.
class Action {
  /// ID of a Connection action for the tool to use.
  core.String? connectionActionId;

  /// Entity operation configuration for the tool to use.
  ActionEntityOperation? entityOperation;

  /// Entity fields to use as inputs for the operation.
  ///
  /// If no fields are specified, all fields of the Entity will be used.
  ///
  /// Optional.
  core.List<core.String>? inputFields;

  /// Entity fields to return from the operation.
  ///
  /// If no fields are specified, all fields of the Entity will be returned.
  ///
  /// Optional.
  core.List<core.String>? outputFields;

  Action({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  Action.fromJson(core.Map json_)
    : this(
        connectionActionId: json_['connectionActionId'] as core.String?,
        entityOperation: json_.containsKey('entityOperation')
            ? ActionEntityOperation.fromJson(
                json_['entityOperation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inputFields: (json_['inputFields'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        outputFields: (json_['outputFields'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionActionId = this.connectionActionId;
    final entityOperation = this.entityOperation;
    final inputFields = this.inputFields;
    final outputFields = this.outputFields;
    return {
      'connectionActionId': ?connectionActionId,
      'entityOperation': ?entityOperation,
      'inputFields': ?inputFields,
      'outputFields': ?outputFields,
    };
  }
}

/// Entity CRUD operation specification.
class ActionEntityOperation {
  /// ID of the entity.
  ///
  /// Required.
  core.String? entityId;

  /// Operation to perform on the entity.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified. Invalid,
  /// ConnectorTool create/update will fail.
  /// - "LIST" : List operation.
  /// - "GET" : Get operation.
  /// - "CREATE" : Create operation.
  /// - "UPDATE" : Update operation.
  /// - "DELETE" : Delete operation.
  core.String? operation;

  ActionEntityOperation({this.entityId, this.operation});

  ActionEntityOperation.fromJson(core.Map json_)
    : this(
        entityId: json_['entityId'] as core.String?,
        operation: json_['operation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityId = this.entityId;
    final operation = this.operation;
    return {'entityId': ?entityId, 'operation': ?operation};
  }
}

/// An agent acts as the fundamental building block that provides instructions
/// to the Large Language Model (LLM) for executing specific tasks.
class Agent {
  /// The callbacks to execute after the agent is called.
  ///
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  ///
  /// Optional.
  core.List<Callback>? afterAgentCallbacks;

  /// The callbacks to execute after the model is called.
  ///
  /// If there are multiple calls to the model, the callback will be executed
  /// multiple times. The provided callbacks are executed sequentially in the
  /// exact order they are given in the list. If a callback returns an
  /// overridden response, execution stops and any remaining callbacks are
  /// skipped.
  ///
  /// Optional.
  core.List<Callback>? afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked.
  ///
  /// If there are multiple tool invocations, the callback will be executed
  /// multiple times. The provided callbacks are executed sequentially in the
  /// exact order they are given in the list. If a callback returns an
  /// overridden response, execution stops and any remaining callbacks are
  /// skipped.
  ///
  /// Optional.
  core.List<Callback>? afterToolCallbacks;

  /// The callbacks to execute before the agent is called.
  ///
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  ///
  /// Optional.
  core.List<Callback>? beforeAgentCallbacks;

  /// The callbacks to execute before the model is called.
  ///
  /// If there are multiple calls to the model, the callback will be executed
  /// multiple times. The provided callbacks are executed sequentially in the
  /// exact order they are given in the list. If a callback returns an
  /// overridden response, execution stops and any remaining callbacks are
  /// skipped.
  ///
  /// Optional.
  core.List<Callback>? beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked.
  ///
  /// If there are multiple tool invocations, the callback will be executed
  /// multiple times. The provided callbacks are executed sequentially in the
  /// exact order they are given in the list. If a callback returns an
  /// overridden response, execution stops and any remaining callbacks are
  /// skipped.
  ///
  /// Optional.
  core.List<Callback>? beforeToolCallbacks;

  /// List of child agents in the agent tree.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Optional.
  core.List<core.String>? childAgents;

  /// Timestamp when the agent was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable description of the agent.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the agent.
  ///
  /// Required.
  core.String? displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  core.String? etag;

  /// If the agent is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  ///
  /// Output only.
  core.String? generatedSummary;

  /// List of guardrails for the agent.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  ///
  /// Optional.
  core.List<core.String>? guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  ///
  /// Optional.
  core.String? instruction;

  /// The default agent type.
  ///
  /// Optional.
  AgentLlmAgent? llmAgent;

  /// Configurations for the LLM model.
  ///
  /// Optional.
  ModelSettings? modelSettings;

  /// Identifier.
  ///
  /// The unique identifier of the agent. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  core.String? name;

  /// The remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent to be used for the agent execution.
  ///
  /// If this field is set, all other agent level properties will be ignored.
  /// Note: If the Dialogflow agent is in a different project from the app, you
  /// should grant `roles/dialogflow.client` to the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Optional.
  AgentRemoteDialogflowAgent? remoteDialogflowAgent;

  /// List of available tools for the agent.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  ///
  /// Optional.
  core.List<core.String>? tools;

  /// List of toolsets for the agent.
  ///
  /// Optional.
  core.List<AgentAgentToolset>? toolsets;

  /// Agent transfer rules.
  ///
  /// If multiple rules match, the first one in the list will be used.
  ///
  /// Optional.
  core.List<TransferRule>? transferRules;

  /// Timestamp when the agent was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Agent({
    this.afterAgentCallbacks,
    this.afterModelCallbacks,
    this.afterToolCallbacks,
    this.beforeAgentCallbacks,
    this.beforeModelCallbacks,
    this.beforeToolCallbacks,
    this.childAgents,
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.generatedSummary,
    this.guardrails,
    this.instruction,
    this.llmAgent,
    this.modelSettings,
    this.name,
    this.remoteDialogflowAgent,
    this.tools,
    this.toolsets,
    this.transferRules,
    this.updateTime,
  });

  Agent.fromJson(core.Map json_)
    : this(
        afterAgentCallbacks: (json_['afterAgentCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        afterModelCallbacks: (json_['afterModelCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        afterToolCallbacks: (json_['afterToolCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        beforeAgentCallbacks: (json_['beforeAgentCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        beforeModelCallbacks: (json_['beforeModelCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        beforeToolCallbacks: (json_['beforeToolCallbacks'] as core.List?)
            ?.map(
              (value) => Callback.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        childAgents: (json_['childAgents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        generatedSummary: json_['generatedSummary'] as core.String?,
        guardrails: (json_['guardrails'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        instruction: json_['instruction'] as core.String?,
        llmAgent: json_.containsKey('llmAgent')
            ? AgentLlmAgent.fromJson(
                json_['llmAgent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        modelSettings: json_.containsKey('modelSettings')
            ? ModelSettings.fromJson(
                json_['modelSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        remoteDialogflowAgent: json_.containsKey('remoteDialogflowAgent')
            ? AgentRemoteDialogflowAgent.fromJson(
                json_['remoteDialogflowAgent']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tools: (json_['tools'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        toolsets: (json_['toolsets'] as core.List?)
            ?.map(
              (value) => AgentAgentToolset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        transferRules: (json_['transferRules'] as core.List?)
            ?.map(
              (value) => TransferRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final afterAgentCallbacks = this.afterAgentCallbacks;
    final afterModelCallbacks = this.afterModelCallbacks;
    final afterToolCallbacks = this.afterToolCallbacks;
    final beforeAgentCallbacks = this.beforeAgentCallbacks;
    final beforeModelCallbacks = this.beforeModelCallbacks;
    final beforeToolCallbacks = this.beforeToolCallbacks;
    final childAgents = this.childAgents;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final etag = this.etag;
    final generatedSummary = this.generatedSummary;
    final guardrails = this.guardrails;
    final instruction = this.instruction;
    final llmAgent = this.llmAgent;
    final modelSettings = this.modelSettings;
    final name = this.name;
    final remoteDialogflowAgent = this.remoteDialogflowAgent;
    final tools = this.tools;
    final toolsets = this.toolsets;
    final transferRules = this.transferRules;
    final updateTime = this.updateTime;
    return {
      'afterAgentCallbacks': ?afterAgentCallbacks,
      'afterModelCallbacks': ?afterModelCallbacks,
      'afterToolCallbacks': ?afterToolCallbacks,
      'beforeAgentCallbacks': ?beforeAgentCallbacks,
      'beforeModelCallbacks': ?beforeModelCallbacks,
      'beforeToolCallbacks': ?beforeToolCallbacks,
      'childAgents': ?childAgents,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'generatedSummary': ?generatedSummary,
      'guardrails': ?guardrails,
      'instruction': ?instruction,
      'llmAgent': ?llmAgent,
      'modelSettings': ?modelSettings,
      'name': ?name,
      'remoteDialogflowAgent': ?remoteDialogflowAgent,
      'tools': ?tools,
      'toolsets': ?toolsets,
      'transferRules': ?transferRules,
      'updateTime': ?updateTime,
    };
  }
}

/// A toolset with a selection of its tools.
class AgentAgentToolset {
  /// The tools IDs to filter the toolset.
  ///
  /// Optional.
  core.List<core.String>? toolIds;

  /// The resource name of the toolset.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  ///
  /// Required.
  core.String? toolset;

  AgentAgentToolset({this.toolIds, this.toolset});

  AgentAgentToolset.fromJson(core.Map json_)
    : this(
        toolIds: (json_['toolIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        toolset: json_['toolset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolIds = this.toolIds;
    final toolset = this.toolset;
    return {'toolIds': ?toolIds, 'toolset': ?toolset};
  }
}

/// Default agent type.
///
/// The agent uses instructions and callbacks specified in the agent to perform
/// the task using a large language model.
typedef AgentLlmAgent = $Empty;

/// The agent which will transfer execution to a remote
/// [Dialogflow CX](https://docs.cloud.google.com/dialogflow/cx/docs/concept/agent)
/// agent.
///
/// The Dialogflow agent will process subsequent user queries until the session
/// ends or flow ends, and the control is transferred back to the parent CES
/// agent.
class AgentRemoteDialogflowAgent {
  /// The
  /// [Dialogflow](https://docs.cloud.google.com/dialogflow/cx/docs/concept/agent)
  /// agent resource name.
  ///
  /// Format: `projects/{project}/locations/{location}/agents/{agent}`
  ///
  /// Required.
  core.String? agent;

  /// The environment ID of the Dialogflow agent to be used for the agent
  /// execution.
  ///
  /// If not specified, the draft environment will be used.
  ///
  /// Optional.
  core.String? environmentId;

  /// The flow ID of the flow in the Dialogflow agent.
  ///
  /// Optional.
  core.String? flowId;

  /// The mapping of the app variables names to the Dialogflow session
  /// parameters names to be sent to the Dialogflow agent as input.
  ///
  /// Optional.
  core.Map<core.String, core.String>? inputVariableMapping;

  /// The mapping of the Dialogflow session parameters names to the app
  /// variables names to be sent back to the CES agent after the Dialogflow
  /// agent execution ends.
  ///
  /// Optional.
  core.Map<core.String, core.String>? outputVariableMapping;

  /// Indicates whether to respect the message-level interruption settings
  /// configured in the Dialogflow agent.
  ///
  /// * If false: all response messages from the Dialogflow agent follow the
  /// app-level barge-in settings. * If true: only response messages with
  /// \[`allow_playback_interruption`\](https://docs.cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#text)
  /// set to true will be interruptable, all other messages follow the app-level
  /// barge-in settings.
  ///
  /// Optional.
  core.bool? respectResponseInterruptionSettings;

  AgentRemoteDialogflowAgent({
    this.agent,
    this.environmentId,
    this.flowId,
    this.inputVariableMapping,
    this.outputVariableMapping,
    this.respectResponseInterruptionSettings,
  });

  AgentRemoteDialogflowAgent.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        environmentId: json_['environmentId'] as core.String?,
        flowId: json_['flowId'] as core.String?,
        inputVariableMapping:
            (json_['inputVariableMapping']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        outputVariableMapping:
            (json_['outputVariableMapping']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        respectResponseInterruptionSettings:
            json_['respectResponseInterruptionSettings'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final environmentId = this.environmentId;
    final flowId = this.flowId;
    final inputVariableMapping = this.inputVariableMapping;
    final outputVariableMapping = this.outputVariableMapping;
    final respectResponseInterruptionSettings =
        this.respectResponseInterruptionSettings;
    return {
      'agent': ?agent,
      'environmentId': ?environmentId,
      'flowId': ?flowId,
      'inputVariableMapping': ?inputVariableMapping,
      'outputVariableMapping': ?outputVariableMapping,
      'respectResponseInterruptionSettings':
          ?respectResponseInterruptionSettings,
    };
  }
}

/// Represents a tool that allows the agent to call another agent.
class AgentTool {
  /// The resource name of the agent that is the entry point of the tool.
  ///
  /// Format: `projects/{project}/locations/{location}/agents/{agent}`
  ///
  /// Optional.
  core.String? agent;

  /// Description of the tool's purpose.
  ///
  /// Optional.
  core.String? description;

  /// The name of the agent tool.
  ///
  /// Required.
  core.String? name;

  /// Deprecated: Use `agent` instead.
  ///
  /// The resource name of the root agent that is the entry point of the tool.
  /// Format: `projects/{project}/locations/{location}/agents/{agent}`
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? rootAgent;

  AgentTool({this.agent, this.description, this.name, this.rootAgent});

  AgentTool.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        rootAgent: json_['rootAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final description = this.description;
    final name = this.name;
    final rootAgent = this.rootAgent;
    return {
      'agent': ?agent,
      'description': ?description,
      'name': ?name,
      'rootAgent': ?rootAgent,
    };
  }
}

/// Represents an event indicating the transfer of a conversation to a different
/// agent.
typedef AgentTransfer = $AgentTransfer;

/// Configuration for the ambient sound to be played with the synthesized agent
/// response, to enhance the naturalness of the conversation.
class AmbientSoundConfig {
  /// Ambient noise as a mono-channel, 16kHz WAV file stored in
  /// [Cloud Storage](https://cloud.google.com/storage).
  ///
  /// Note: Please make sure the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com` has `storage.objects.get`
  /// permission to the Cloud Storage object.
  ///
  /// Optional.
  core.String? gcsUri;

  /// Deprecated: `prebuilt_ambient_noise` is deprecated in favor of
  /// `prebuilt_ambient_sound`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PREBUILT_AMBIENT_NOISE_UNSPECIFIED" : Not specified.
  /// - "RETAIL_STORE" : Ambient noise of a retail store.
  /// - "CONVENTION_HALL" : Ambient noise of a convention hall.
  /// - "OUTDOOR" : Ambient noise of a street.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? prebuiltAmbientNoise;

  /// Name of the prebuilt ambient sound.
  ///
  /// Valid values are: - "coffee_shop" - "keyboard" - "keypad" - "hum" -
  /// "office_1" - "office_2" - "office_3" - "room_1" - "room_2" - "room_3" -
  /// "room_4" - "room_5" - "air_conditioner"
  ///
  /// Optional.
  core.String? prebuiltAmbientSound;

  /// Volume gain (in dB) of the normal native volume supported by ambient
  /// noise, in the range \[-96.0, 16.0\].
  ///
  /// If unset, or set to a value of 0.0 (dB), will play at normal native signal
  /// amplitude. A value of -6.0 (dB) will play at approximately half the
  /// amplitude of the normal native signal amplitude. A value of +6.0 (dB) will
  /// play at approximately twice the amplitude of the normal native signal
  /// amplitude. We strongly recommend not to exceed +10 (dB) as there's usually
  /// no effective increase in loudness for any value greater than that.
  ///
  /// Optional.
  core.double? volumeGainDb;

  AmbientSoundConfig({
    this.gcsUri,
    this.prebuiltAmbientNoise,
    this.prebuiltAmbientSound,
    this.volumeGainDb,
  });

  AmbientSoundConfig.fromJson(core.Map json_)
    : this(
        gcsUri: json_['gcsUri'] as core.String?,
        prebuiltAmbientNoise: json_['prebuiltAmbientNoise'] as core.String?,
        prebuiltAmbientSound: json_['prebuiltAmbientSound'] as core.String?,
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcsUri = this.gcsUri;
    final prebuiltAmbientNoise = this.prebuiltAmbientNoise;
    final prebuiltAmbientSound = this.prebuiltAmbientSound;
    final volumeGainDb = this.volumeGainDb;
    return {
      'gcsUri': ?gcsUri,
      'prebuiltAmbientNoise': ?prebuiltAmbientNoise,
      'prebuiltAmbientSound': ?prebuiltAmbientSound,
      'volumeGainDb': ?volumeGainDb,
    };
  }
}

/// Authentication information required for API calls.
class ApiAuthentication {
  /// Config for API key auth.
  ///
  /// Optional.
  ApiKeyConfig? apiKeyConfig;

  /// Config for bearer token auth.
  ///
  /// Optional.
  BearerTokenConfig? bearerTokenConfig;

  /// Config for OAuth.
  ///
  /// Optional.
  OAuthConfig? oauthConfig;

  /// Config for service account authentication.
  ///
  /// Optional.
  ServiceAccountAuthConfig? serviceAccountAuthConfig;

  /// Config for ID token auth generated from CES service agent.
  ///
  /// Optional.
  ServiceAgentIdTokenAuthConfig? serviceAgentIdTokenAuthConfig;

  ApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  ApiAuthentication.fromJson(core.Map json_)
    : this(
        apiKeyConfig: json_.containsKey('apiKeyConfig')
            ? ApiKeyConfig.fromJson(
                json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bearerTokenConfig: json_.containsKey('bearerTokenConfig')
            ? BearerTokenConfig.fromJson(
                json_['bearerTokenConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauthConfig: json_.containsKey('oauthConfig')
            ? OAuthConfig.fromJson(
                json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAccountAuthConfig: json_.containsKey('serviceAccountAuthConfig')
            ? ServiceAccountAuthConfig.fromJson(
                json_['serviceAccountAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAgentIdTokenAuthConfig:
            json_.containsKey('serviceAgentIdTokenAuthConfig')
            ? ServiceAgentIdTokenAuthConfig.fromJson(
                json_['serviceAgentIdTokenAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKeyConfig = this.apiKeyConfig;
    final bearerTokenConfig = this.bearerTokenConfig;
    final oauthConfig = this.oauthConfig;
    final serviceAccountAuthConfig = this.serviceAccountAuthConfig;
    final serviceAgentIdTokenAuthConfig = this.serviceAgentIdTokenAuthConfig;
    return {
      'apiKeyConfig': ?apiKeyConfig,
      'bearerTokenConfig': ?bearerTokenConfig,
      'oauthConfig': ?oauthConfig,
      'serviceAccountAuthConfig': ?serviceAccountAuthConfig,
      'serviceAgentIdTokenAuthConfig': ?serviceAgentIdTokenAuthConfig,
    };
  }
}

/// Configurations for authentication with API key.
class ApiKeyConfig {
  /// The name of the SecretManager secret version resource storing the API key.
  ///
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}` Note: You
  /// should grant `roles/secretmanager.secretAccessor` role to the CES service
  /// agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Required.
  core.String? apiKeySecretVersion;

  /// The parameter name or the header name of the API key.
  ///
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=",
  /// "X-Api-Key" would be the parameter name.
  ///
  /// Required.
  core.String? keyName;

  /// Key location in the request.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REQUEST_LOCATION_UNSPECIFIED" : Unspecified. This value should not be
  /// used.
  /// - "HEADER" : Represents the key in http header.
  /// - "QUERY_STRING" : Represents the key in query string.
  core.String? requestLocation;

  ApiKeyConfig({this.apiKeySecretVersion, this.keyName, this.requestLocation});

  ApiKeyConfig.fromJson(core.Map json_)
    : this(
        apiKeySecretVersion: json_['apiKeySecretVersion'] as core.String?,
        keyName: json_['keyName'] as core.String?,
        requestLocation: json_['requestLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKeySecretVersion = this.apiKeySecretVersion;
    final keyName = this.keyName;
    final requestLocation = this.requestLocation;
    return {
      'apiKeySecretVersion': ?apiKeySecretVersion,
      'keyName': ?keyName,
      'requestLocation': ?requestLocation,
    };
  }
}

/// An app serves as a top-level container for a group of agents, including the
/// root agent and its sub-agents, along with their associated configurations.
///
/// These agents work together to achieve specific goals within the app's
/// context.
class App {
  /// Audio processing configuration of the app.
  ///
  /// Optional.
  AudioProcessingConfig? audioProcessingConfig;

  /// The default client certificate settings for the app.
  ///
  /// Optional.
  ClientCertificateSettings? clientCertificateSettings;

  /// Timestamp when the app was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The data store settings for the app.
  ///
  /// Optional.
  DataStoreSettings? dataStoreSettings;

  /// The default channel profile used by the app.
  ///
  /// Optional.
  ChannelProfile? defaultChannelProfile;

  /// Number of deployments in the app.
  ///
  /// Output only.
  core.int? deploymentCount;

  /// Human-readable description of the app.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the app.
  ///
  /// Required.
  core.String? displayName;

  /// Error handling settings of the app.
  ///
  /// Optional.
  ErrorHandlingSettings? errorHandlingSettings;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  ///
  /// Output only.
  core.String? etag;

  /// The evaluation thresholds for the app.
  ///
  /// Optional.
  EvaluationMetricsThresholds? evaluationMetricsThresholds;

  /// Instructions for all the agents in the app.
  ///
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  ///
  /// Optional.
  core.String? globalInstruction;

  /// List of guardrails for the app.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  ///
  /// Optional.
  core.List<core.String>? guardrails;

  /// Language settings of the app.
  ///
  /// Optional.
  LanguageSettings? languageSettings;

  /// Indicates whether the app is locked for changes.
  ///
  /// If the app is locked, modifications to the app resources will be rejected.
  ///
  /// Optional.
  core.bool? locked;

  /// Logging settings of the app.
  ///
  /// Optional.
  LoggingSettings? loggingSettings;

  /// Metadata about the app.
  ///
  /// This field can be used to store additional information relevant to the
  /// app's details or intended usages.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The default LLM model settings for the app.
  ///
  /// Individual resources (e.g. agents, guardrails) can override these
  /// configurations as needed.
  ///
  /// Optional.
  ModelSettings? modelSettings;

  /// Identifier.
  ///
  /// The unique identifier of the app. Format:
  /// `projects/{project}/locations/{location}/apps/{app}`
  core.String? name;

  /// Whether the app is pinned in the app list.
  ///
  /// Optional.
  core.bool? pinned;

  /// The declarations of predefined variables for the app.
  ///
  /// Output only.
  core.List<AppVariableDeclaration>? predefinedVariableDeclarations;

  /// The root agent is the entry point of the app.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Optional.
  core.String? rootAgent;

  /// TimeZone settings of the app.
  ///
  /// Optional.
  TimeZoneSettings? timeZoneSettings;

  /// The tool execution mode for the app.
  ///
  /// If not provided, will default to PARALLEL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TOOL_EXECUTION_MODE_UNSPECIFIED" : Unspecified tool execution mode.
  /// Default to PARALLEL.
  /// - "PARALLEL" : If there are multiple tools being selected, they will be
  /// executed in parallel, with the same
  /// [ToolContext](https://google.github.io/adk-docs/context/#the-different-types-of-context).
  /// - "SEQUENTIAL" : If there are multiple tools being selected, they will be
  /// executed sequentially. The next tool will only be executed after the
  /// previous tool completes and it can see updated
  /// [ToolContext](https://google.github.io/adk-docs/context/#the-different-types-of-context)
  /// from the previous tool.
  core.String? toolExecutionMode;

  /// Timestamp when the app was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The declarations of the variables.
  ///
  /// Optional.
  core.List<AppVariableDeclaration>? variableDeclarations;

  App({
    this.audioProcessingConfig,
    this.clientCertificateSettings,
    this.createTime,
    this.dataStoreSettings,
    this.defaultChannelProfile,
    this.deploymentCount,
    this.description,
    this.displayName,
    this.errorHandlingSettings,
    this.etag,
    this.evaluationMetricsThresholds,
    this.globalInstruction,
    this.guardrails,
    this.languageSettings,
    this.locked,
    this.loggingSettings,
    this.metadata,
    this.modelSettings,
    this.name,
    this.pinned,
    this.predefinedVariableDeclarations,
    this.rootAgent,
    this.timeZoneSettings,
    this.toolExecutionMode,
    this.updateTime,
    this.variableDeclarations,
  });

  App.fromJson(core.Map json_)
    : this(
        audioProcessingConfig: json_.containsKey('audioProcessingConfig')
            ? AudioProcessingConfig.fromJson(
                json_['audioProcessingConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        clientCertificateSettings:
            json_.containsKey('clientCertificateSettings')
            ? ClientCertificateSettings.fromJson(
                json_['clientCertificateSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        dataStoreSettings: json_.containsKey('dataStoreSettings')
            ? DataStoreSettings.fromJson(
                json_['dataStoreSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultChannelProfile: json_.containsKey('defaultChannelProfile')
            ? ChannelProfile.fromJson(
                json_['defaultChannelProfile']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deploymentCount: json_['deploymentCount'] as core.int?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorHandlingSettings: json_.containsKey('errorHandlingSettings')
            ? ErrorHandlingSettings.fromJson(
                json_['errorHandlingSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        evaluationMetricsThresholds:
            json_.containsKey('evaluationMetricsThresholds')
            ? EvaluationMetricsThresholds.fromJson(
                json_['evaluationMetricsThresholds']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        globalInstruction: json_['globalInstruction'] as core.String?,
        guardrails: (json_['guardrails'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        languageSettings: json_.containsKey('languageSettings')
            ? LanguageSettings.fromJson(
                json_['languageSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locked: json_['locked'] as core.bool?,
        loggingSettings: json_.containsKey('loggingSettings')
            ? LoggingSettings.fromJson(
                json_['loggingSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        modelSettings: json_.containsKey('modelSettings')
            ? ModelSettings.fromJson(
                json_['modelSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pinned: json_['pinned'] as core.bool?,
        predefinedVariableDeclarations:
            (json_['predefinedVariableDeclarations'] as core.List?)
                ?.map(
                  (value) => AppVariableDeclaration.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rootAgent: json_['rootAgent'] as core.String?,
        timeZoneSettings: json_.containsKey('timeZoneSettings')
            ? TimeZoneSettings.fromJson(
                json_['timeZoneSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolExecutionMode: json_['toolExecutionMode'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        variableDeclarations: (json_['variableDeclarations'] as core.List?)
            ?.map(
              (value) => AppVariableDeclaration.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioProcessingConfig = this.audioProcessingConfig;
    final clientCertificateSettings = this.clientCertificateSettings;
    final createTime = this.createTime;
    final dataStoreSettings = this.dataStoreSettings;
    final defaultChannelProfile = this.defaultChannelProfile;
    final deploymentCount = this.deploymentCount;
    final description = this.description;
    final displayName = this.displayName;
    final errorHandlingSettings = this.errorHandlingSettings;
    final etag = this.etag;
    final evaluationMetricsThresholds = this.evaluationMetricsThresholds;
    final globalInstruction = this.globalInstruction;
    final guardrails = this.guardrails;
    final languageSettings = this.languageSettings;
    final locked = this.locked;
    final loggingSettings = this.loggingSettings;
    final metadata = this.metadata;
    final modelSettings = this.modelSettings;
    final name = this.name;
    final pinned = this.pinned;
    final predefinedVariableDeclarations = this.predefinedVariableDeclarations;
    final rootAgent = this.rootAgent;
    final timeZoneSettings = this.timeZoneSettings;
    final toolExecutionMode = this.toolExecutionMode;
    final updateTime = this.updateTime;
    final variableDeclarations = this.variableDeclarations;
    return {
      'audioProcessingConfig': ?audioProcessingConfig,
      'clientCertificateSettings': ?clientCertificateSettings,
      'createTime': ?createTime,
      'dataStoreSettings': ?dataStoreSettings,
      'defaultChannelProfile': ?defaultChannelProfile,
      'deploymentCount': ?deploymentCount,
      'description': ?description,
      'displayName': ?displayName,
      'errorHandlingSettings': ?errorHandlingSettings,
      'etag': ?etag,
      'evaluationMetricsThresholds': ?evaluationMetricsThresholds,
      'globalInstruction': ?globalInstruction,
      'guardrails': ?guardrails,
      'languageSettings': ?languageSettings,
      'locked': ?locked,
      'loggingSettings': ?loggingSettings,
      'metadata': ?metadata,
      'modelSettings': ?modelSettings,
      'name': ?name,
      'pinned': ?pinned,
      'predefinedVariableDeclarations': ?predefinedVariableDeclarations,
      'rootAgent': ?rootAgent,
      'timeZoneSettings': ?timeZoneSettings,
      'toolExecutionMode': ?toolExecutionMode,
      'updateTime': ?updateTime,
      'variableDeclarations': ?variableDeclarations,
    };
  }
}

/// A snapshot of the app.
class AppSnapshot {
  /// List of agents in the app.
  ///
  /// Optional.
  core.List<Agent>? agents;

  /// The basic settings for the app.
  ///
  /// Optional.
  App? app;

  /// List of examples in the app.
  ///
  /// Optional.
  core.List<Example>? examples;

  /// List of guardrails in the app.
  ///
  /// Optional.
  core.List<Guardrail>? guardrails;

  /// List of tools in the app.
  ///
  /// Optional.
  core.List<Tool>? tools;

  /// List of toolsets in the app.
  ///
  /// Optional.
  core.List<Toolset>? toolsets;

  AppSnapshot({
    this.agents,
    this.app,
    this.examples,
    this.guardrails,
    this.tools,
    this.toolsets,
  });

  AppSnapshot.fromJson(core.Map json_)
    : this(
        agents: (json_['agents'] as core.List?)
            ?.map(
              (value) =>
                  Agent.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        app: json_.containsKey('app')
            ? App.fromJson(json_['app'] as core.Map<core.String, core.dynamic>)
            : null,
        examples: (json_['examples'] as core.List?)
            ?.map(
              (value) => Example.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        guardrails: (json_['guardrails'] as core.List?)
            ?.map(
              (value) => Guardrail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) =>
                  Tool.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        toolsets: (json_['toolsets'] as core.List?)
            ?.map(
              (value) => Toolset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agents = this.agents;
    final app = this.app;
    final examples = this.examples;
    final guardrails = this.guardrails;
    final tools = this.tools;
    final toolsets = this.toolsets;
    return {
      'agents': ?agents,
      'app': ?app,
      'examples': ?examples,
      'guardrails': ?guardrails,
      'tools': ?tools,
      'toolsets': ?toolsets,
    };
  }
}

/// Defines the structure and metadata for a variable.
class AppVariableDeclaration {
  /// The description of the variable.
  ///
  /// Required.
  core.String? description;

  /// The name of the variable.
  ///
  /// The name must start with a letter or underscore and contain only letters,
  /// numbers, or underscores.
  ///
  /// Required.
  core.String? name;

  /// The schema of the variable.
  ///
  /// Required.
  Schema? schema;

  AppVariableDeclaration({this.description, this.name, this.schema});

  AppVariableDeclaration.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        schema: json_.containsKey('schema')
            ? Schema.fromJson(
                json_['schema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    final schema = this.schema;
    return {'description': ?description, 'name': ?name, 'schema': ?schema};
  }
}

/// In Customer Engagement Suite (CES), an app version is a snapshot of the app
/// at a specific point in time.
///
/// It is immutable and cannot be modified once created.
class AppVersion {
  /// Timestamp when the app version was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Email of the user who created the app version.
  ///
  /// Output only.
  core.String? creator;

  /// The description of the app version.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the app version.
  ///
  /// Optional.
  core.String? displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  ///
  /// Output only.
  core.String? etag;

  /// Identifier.
  ///
  /// The unique identifier of the app version. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/versions/{version}`
  core.String? name;

  /// The snapshot of the app when the version is created.
  ///
  /// Output only.
  AppSnapshot? snapshot;

  AppVersion({
    this.createTime,
    this.creator,
    this.description,
    this.displayName,
    this.etag,
    this.name,
    this.snapshot,
  });

  AppVersion.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        snapshot: json_.containsKey('snapshot')
            ? AppSnapshot.fromJson(
                json_['snapshot'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final creator = this.creator;
    final description = this.description;
    final displayName = this.displayName;
    final etag = this.etag;
    final name = this.name;
    final snapshot = this.snapshot;
    return {
      'createTime': ?createTime,
      'creator': ?creator,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'snapshot': ?snapshot,
    };
  }
}

/// Configuration for how the input and output audio should be processed and
/// delivered.
class AudioProcessingConfig {
  /// Configuration for the ambient sound to be played with the synthesized
  /// agent response, to enhance the naturalness of the conversation.
  ///
  /// Optional.
  AmbientSoundConfig? ambientSoundConfig;

  /// Configures the agent behavior for the user barge-in activities.
  ///
  /// Optional.
  BargeInConfig? bargeInConfig;

  /// The duration of user inactivity (no speech or interaction) before the
  /// agent prompts the user for reengagement.
  ///
  /// If not set, the agent will not prompt the user for reengagement.
  ///
  /// Optional.
  core.String? inactivityTimeout;

  /// Configuration of how the agent response should be synthesized, mapping
  /// from the language code to SynthesizeSpeechConfig.
  ///
  /// If the configuration for the specified language code is not found, the
  /// configuration for the root language code will be used. For example, if the
  /// map contains "en-us" and "en", and the specified language code is "en-gb",
  /// then "en" configuration will be used. Note: Language code is
  /// case-insensitive.
  ///
  /// Optional.
  core.Map<core.String, SynthesizeSpeechConfig>? synthesizeSpeechConfigs;

  AudioProcessingConfig({
    this.ambientSoundConfig,
    this.bargeInConfig,
    this.inactivityTimeout,
    this.synthesizeSpeechConfigs,
  });

  AudioProcessingConfig.fromJson(core.Map json_)
    : this(
        ambientSoundConfig: json_.containsKey('ambientSoundConfig')
            ? AmbientSoundConfig.fromJson(
                json_['ambientSoundConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bargeInConfig: json_.containsKey('bargeInConfig')
            ? BargeInConfig.fromJson(
                json_['bargeInConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inactivityTimeout: json_['inactivityTimeout'] as core.String?,
        synthesizeSpeechConfigs:
            (json_['synthesizeSpeechConfigs']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SynthesizeSpeechConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ambientSoundConfig = this.ambientSoundConfig;
    final bargeInConfig = this.bargeInConfig;
    final inactivityTimeout = this.inactivityTimeout;
    final synthesizeSpeechConfigs = this.synthesizeSpeechConfigs;
    return {
      'ambientSoundConfig': ?ambientSoundConfig,
      'bargeInConfig': ?bargeInConfig,
      'inactivityTimeout': ?inactivityTimeout,
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }
}

/// Configuration for how the audio interactions should be recorded.
class AudioRecordingConfig {
  /// The [Cloud Storage](https://cloud.google.com/storage) bucket to store the
  /// session audio recordings.
  ///
  /// The URI must start with "gs://". Please choose a bucket location that
  /// meets your data residency requirements. Note: If the Cloud Storage bucket
  /// is in a different project from the app, you should grant
  /// `storage.objects.create` permission to the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Optional.
  core.String? gcsBucket;

  /// The Cloud Storage path prefix for audio recordings.
  ///
  /// This prefix can include the following placeholders, which will be
  /// dynamically substituted at serving time: - $project: project ID -
  /// $location: app location - $app: app ID - $date: session date in YYYY-MM-DD
  /// format - $session: session ID If the path prefix is not specified, the
  /// default prefix `$project/$location/$app/$date/$session/` will be used.
  ///
  /// Optional.
  core.String? gcsPathPrefix;

  AudioRecordingConfig({this.gcsBucket, this.gcsPathPrefix});

  AudioRecordingConfig.fromJson(core.Map json_)
    : this(
        gcsBucket: json_['gcsBucket'] as core.String?,
        gcsPathPrefix: json_['gcsPathPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcsBucket = this.gcsBucket;
    final gcsPathPrefix = this.gcsPathPrefix;
    return {'gcsBucket': ?gcsBucket, 'gcsPathPrefix': ?gcsPathPrefix};
  }
}

/// Configuration for how the user barge-in activities should be handled.
class BargeInConfig {
  /// If enabled, the agent will adapt its next response based on the assumption
  /// that the user hasn't heard the full preceding agent message.
  ///
  /// This should not be used in scenarios where agent responses are displayed
  /// visually.
  ///
  /// Optional.
  core.bool? bargeInAwareness;

  /// Disables user barge-in while the agent is speaking.
  ///
  /// If true, user input during agent response playback will be ignored.
  /// Deprecated: `disable_barge_in` is deprecated in favor of
  /// `disable_barge_in_control` in ChannelProfile.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? disableBargeIn;

  BargeInConfig({this.bargeInAwareness, this.disableBargeIn});

  BargeInConfig.fromJson(core.Map json_)
    : this(
        bargeInAwareness: json_['bargeInAwareness'] as core.bool?,
        disableBargeIn: json_['disableBargeIn'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bargeInAwareness = this.bargeInAwareness;
    final disableBargeIn = this.disableBargeIn;
    return {
      'bargeInAwareness': ?bargeInAwareness,
      'disableBargeIn': ?disableBargeIn,
    };
  }
}

/// Request message for AgentService.BatchDeleteConversations.
class BatchDeleteConversationsRequest {
  /// The resource names of the conversations to delete.
  ///
  /// Required.
  core.List<core.String>? conversations;

  BatchDeleteConversationsRequest({this.conversations});

  BatchDeleteConversationsRequest.fromJson(core.Map json_)
    : this(
        conversations: (json_['conversations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversations = this.conversations;
    return {'conversations': ?conversations};
  }
}

/// Configurations for authentication with a bearer token.
class BearerTokenConfig {
  /// The bearer token.
  ///
  /// Must be in the format `$context.variables.`.
  ///
  /// Required.
  core.String? token;

  BearerTokenConfig({this.token});

  BearerTokenConfig.fromJson(core.Map json_)
    : this(token: json_['token'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final token = this.token;
    return {'token': ?token};
  }
}

/// Settings to describe the BigQuery export behaviors for the app.
class BigQueryExportSettings {
  /// The BigQuery **dataset ID** to export the data to.
  ///
  /// Optional.
  core.String? dataset;

  /// Indicates whether the BigQuery export is enabled.
  ///
  /// Optional.
  core.bool? enabled;

  /// The **project ID** of the BigQuery dataset to export the data to.
  ///
  /// Note: If the BigQuery dataset is in a different project from the app, you
  /// should grant `roles/bigquery.admin` role to the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Optional.
  core.String? project;

  BigQueryExportSettings({this.dataset, this.enabled, this.project});

  BigQueryExportSettings.fromJson(core.Map json_)
    : this(
        dataset: json_['dataset'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataset = this.dataset;
    final enabled = this.enabled;
    final project = this.project;
    return {'dataset': ?dataset, 'enabled': ?enabled, 'project': ?project};
  }
}

/// Represents a blob input or output in the conversation.
typedef Blob = $Blob;

/// A callback defines the custom logic to be executed at various stages of
/// agent interaction.
class Callback {
  /// Human-readable description of the callback.
  ///
  /// Optional.
  core.String? description;

  /// Whether the callback is disabled.
  ///
  /// Disabled callbacks are ignored by the agent.
  ///
  /// Optional.
  core.bool? disabled;

  /// If enabled, the callback will also be executed on intermediate model
  /// outputs.
  ///
  /// This setting only affects after model callback. **ENABLE WITH CAUTION**.
  /// Typically after model callback only needs to be executed after receiving
  /// all model responses. Enabling proactive execution may have negative
  /// implication on the execution cost and latency, and should only be enabled
  /// in rare situations.
  ///
  /// Optional.
  core.bool? proactiveExecutionEnabled;

  /// The python code to execute for the callback.
  ///
  /// Required.
  core.String? pythonCode;

  Callback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    this.pythonCode,
  });

  Callback.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        proactiveExecutionEnabled:
            json_['proactiveExecutionEnabled'] as core.bool?,
        pythonCode: json_['pythonCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final disabled = this.disabled;
    final proactiveExecutionEnabled = this.proactiveExecutionEnabled;
    final pythonCode = this.pythonCode;
    return {
      'description': ?description,
      'disabled': ?disabled,
      'proactiveExecutionEnabled': ?proactiveExecutionEnabled,
      'pythonCode': ?pythonCode,
    };
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Changelogs represent a change made to the app or to an resource within the
/// app.
class Changelog {
  /// The action that was performed on the resource.
  ///
  /// Output only.
  core.String? action;

  /// Email address of the change author.
  ///
  /// Output only.
  core.String? author;

  /// The time when the change was made.
  ///
  /// Output only.
  core.String? createTime;

  /// The dependent resources that were changed.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? dependentResources;

  /// Description of the change.
  ///
  /// which typically captures the changed fields in the resource.
  ///
  /// Output only.
  core.String? description;

  /// Display name of the change.
  ///
  /// It typically should be the display name of the resource that was changed.
  ///
  /// Output only.
  core.String? displayName;

  /// Identifier.
  ///
  /// The unique identifier of the changelog. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/changelogs/{changelog}`
  core.String? name;

  /// The new resource after the change.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? newResource;

  /// The original resource before the change.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? originalResource;

  /// The resource that was changed.
  ///
  /// Output only.
  core.String? resource;

  /// The type of the resource that was changed.
  ///
  /// Output only.
  core.String? resourceType;

  /// The monotonically increasing sequence number of the changelog.
  ///
  /// Output only.
  core.String? sequenceNumber;

  Changelog({
    this.action,
    this.author,
    this.createTime,
    this.dependentResources,
    this.description,
    this.displayName,
    this.name,
    this.newResource,
    this.originalResource,
    this.resource,
    this.resourceType,
    this.sequenceNumber,
  });

  Changelog.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        author: json_['author'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        dependentResources: (json_['dependentResources'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        newResource: json_.containsKey('newResource')
            ? json_['newResource'] as core.Map<core.String, core.dynamic>
            : null,
        originalResource: json_.containsKey('originalResource')
            ? json_['originalResource'] as core.Map<core.String, core.dynamic>
            : null,
        resource: json_['resource'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        sequenceNumber: json_['sequenceNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final author = this.author;
    final createTime = this.createTime;
    final dependentResources = this.dependentResources;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final newResource = this.newResource;
    final originalResource = this.originalResource;
    final resource = this.resource;
    final resourceType = this.resourceType;
    final sequenceNumber = this.sequenceNumber;
    return {
      'action': ?action,
      'author': ?author,
      'createTime': ?createTime,
      'dependentResources': ?dependentResources,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'newResource': ?newResource,
      'originalResource': ?originalResource,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'sequenceNumber': ?sequenceNumber,
    };
  }
}

/// A ChannelProfile configures the agent's behavior for a specific
/// communication channel, such as web UI or telephony.
class ChannelProfile {
  /// The type of the channel profile.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown channel type.
  /// - "WEB_UI" : Web UI channel.
  /// - "API" : API channel.
  /// - "TWILIO" : Twilio channel.
  /// - "GOOGLE_TELEPHONY_PLATFORM" : Google Telephony Platform channel.
  /// - "CONTACT_CENTER_AS_A_SERVICE" : Contact Center as a Service (CCaaS)
  /// channel.
  /// - "FIVE9" : Five9 channel.
  /// - "CONTACT_CENTER_INTEGRATION" : Third party contact center integration
  /// channel.
  core.String? channelType;

  /// Whether to disable user barge-in control in the conversation.
  ///
  /// - **true**: User interruptions are disabled while the agent is speaking. -
  /// **false**: The agent retains automatic control over when the user can
  /// interrupt.
  ///
  /// Optional.
  core.bool? disableBargeInControl;

  /// Whether to disable DTMF (dual-tone multi-frequency).
  ///
  /// Optional.
  core.bool? disableDtmf;

  /// The noise suppression level of the channel profile.
  ///
  /// Available values are "low", "moderate", "high", "very_high".
  ///
  /// Optional.
  core.String? noiseSuppressionLevel;

  /// The persona property of the channel profile.
  ///
  /// Optional.
  ChannelProfilePersonaProperty? personaProperty;

  /// The unique identifier of the channel profile.
  ///
  /// Optional.
  core.String? profileId;

  /// The configuration for the web widget.
  ///
  /// Optional.
  ChannelProfileWebWidgetConfig? webWidgetConfig;

  ChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.noiseSuppressionLevel,
    this.personaProperty,
    this.profileId,
    this.webWidgetConfig,
  });

  ChannelProfile.fromJson(core.Map json_)
    : this(
        channelType: json_['channelType'] as core.String?,
        disableBargeInControl: json_['disableBargeInControl'] as core.bool?,
        disableDtmf: json_['disableDtmf'] as core.bool?,
        noiseSuppressionLevel: json_['noiseSuppressionLevel'] as core.String?,
        personaProperty: json_.containsKey('personaProperty')
            ? ChannelProfilePersonaProperty.fromJson(
                json_['personaProperty'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        profileId: json_['profileId'] as core.String?,
        webWidgetConfig: json_.containsKey('webWidgetConfig')
            ? ChannelProfileWebWidgetConfig.fromJson(
                json_['webWidgetConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelType = this.channelType;
    final disableBargeInControl = this.disableBargeInControl;
    final disableDtmf = this.disableDtmf;
    final noiseSuppressionLevel = this.noiseSuppressionLevel;
    final personaProperty = this.personaProperty;
    final profileId = this.profileId;
    final webWidgetConfig = this.webWidgetConfig;
    return {
      'channelType': ?channelType,
      'disableBargeInControl': ?disableBargeInControl,
      'disableDtmf': ?disableDtmf,
      'noiseSuppressionLevel': ?noiseSuppressionLevel,
      'personaProperty': ?personaProperty,
      'profileId': ?profileId,
      'webWidgetConfig': ?webWidgetConfig,
    };
  }
}

/// Represents the persona property of a channel.
class ChannelProfilePersonaProperty {
  /// The persona of the channel.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN persona.
  /// - "CONCISE" : The agent keeps the responses concise and to the point
  /// - "CHATTY" : The agent provides additional context, explanations, and
  /// details
  core.String? persona;

  ChannelProfilePersonaProperty({this.persona});

  ChannelProfilePersonaProperty.fromJson(core.Map json_)
    : this(persona: json_['persona'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final persona = this.persona;
    return {'persona': ?persona};
  }
}

/// Message for configuration for the web widget.
class ChannelProfileWebWidgetConfig {
  /// The modality of the web widget.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODALITY_UNSPECIFIED" : Unknown modality.
  /// - "CHAT_AND_VOICE" : Widget supports both chat and voice input.
  /// - "VOICE_ONLY" : Widget supports only voice input.
  /// - "CHAT_ONLY" : Widget supports only chat input.
  /// - "CHAT_VOICE_AND_VIDEO" : Widget supports chat, voice, and video input.
  core.String? modality;

  /// The security settings of the web widget.
  ///
  /// Optional.
  ChannelProfileWebWidgetConfigSecuritySettings? securitySettings;

  /// The theme of the web widget.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "THEME_UNSPECIFIED" : Unknown theme.
  /// - "LIGHT" : Light theme.
  /// - "DARK" : Dark theme.
  core.String? theme;

  /// The title of the web widget.
  ///
  /// Optional.
  core.String? webWidgetTitle;

  ChannelProfileWebWidgetConfig({
    this.modality,
    this.securitySettings,
    this.theme,
    this.webWidgetTitle,
  });

  ChannelProfileWebWidgetConfig.fromJson(core.Map json_)
    : this(
        modality: json_['modality'] as core.String?,
        securitySettings: json_.containsKey('securitySettings')
            ? ChannelProfileWebWidgetConfigSecuritySettings.fromJson(
                json_['securitySettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        theme: json_['theme'] as core.String?,
        webWidgetTitle: json_['webWidgetTitle'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final modality = this.modality;
    final securitySettings = this.securitySettings;
    final theme = this.theme;
    final webWidgetTitle = this.webWidgetTitle;
    return {
      'modality': ?modality,
      'securitySettings': ?securitySettings,
      'theme': ?theme,
      'webWidgetTitle': ?webWidgetTitle,
    };
  }
}

/// Security settings for the web widget.
class ChannelProfileWebWidgetConfigSecuritySettings {
  /// The origins that are allowed to host the web widget.
  ///
  /// An origin is defined by RFC 6454. If empty, all origins are allowed. A
  /// maximum of 100 origins is allowed. Example: "https://example.com"
  ///
  /// Optional.
  core.List<core.String>? allowedOrigins;

  /// Indicates whether origin check for the web widget is enabled.
  ///
  /// If `true`, the web widget will check the origin of the website that loads
  /// the web widget and only allow it to be loaded in the same origin or any of
  /// the allowed origins.
  ///
  /// Optional.
  core.bool? enableOriginCheck;

  /// Indicates whether public access to the web widget is enabled.
  ///
  /// If `true`, the web widget will be publicly accessible. If `false`, the web
  /// widget must be integrated with your own authentication and authorization
  /// system to return valid credentials for accessing the CES agent.
  ///
  /// Optional.
  core.bool? enablePublicAccess;

  /// Indicates whether reCAPTCHA verification for the web widget is enabled.
  ///
  /// Optional.
  core.bool? enableRecaptcha;

  ChannelProfileWebWidgetConfigSecuritySettings({
    this.allowedOrigins,
    this.enableOriginCheck,
    this.enablePublicAccess,
    this.enableRecaptcha,
  });

  ChannelProfileWebWidgetConfigSecuritySettings.fromJson(core.Map json_)
    : this(
        allowedOrigins: (json_['allowedOrigins'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        enableOriginCheck: json_['enableOriginCheck'] as core.bool?,
        enablePublicAccess: json_['enablePublicAccess'] as core.bool?,
        enableRecaptcha: json_['enableRecaptcha'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedOrigins = this.allowedOrigins;
    final enableOriginCheck = this.enableOriginCheck;
    final enablePublicAccess = this.enablePublicAccess;
    final enableRecaptcha = this.enableRecaptcha;
    return {
      'allowedOrigins': ?allowedOrigins,
      'enableOriginCheck': ?enableOriginCheck,
      'enablePublicAccess': ?enablePublicAccess,
      'enableRecaptcha': ?enableRecaptcha,
    };
  }
}

/// A chunk of content within a message.
class Chunk {
  /// Agent transfer event.
  ///
  /// Optional.
  AgentTransfer? agentTransfer;

  /// Blob data.
  ///
  /// Optional.
  Blob? blob;

  /// A struct represents default variables at the start of the conversation,
  /// keyed by variable names.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? defaultVariables;

  /// Image data.
  ///
  /// Optional.
  Image? image;

  /// Custom payload data.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// Text data.
  ///
  /// Optional.
  core.String? text;

  /// Tool execution request.
  ///
  /// Optional.
  ToolCall? toolCall;

  /// Tool execution response.
  ///
  /// Optional.
  ToolResponse? toolResponse;

  /// Transcript associated with the audio.
  ///
  /// Optional.
  core.String? transcript;

  /// A struct represents variables that were updated in the conversation, keyed
  /// by variable names.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? updatedVariables;

  Chunk({
    this.agentTransfer,
    this.blob,
    this.defaultVariables,
    this.image,
    this.payload,
    this.text,
    this.toolCall,
    this.toolResponse,
    this.transcript,
    this.updatedVariables,
  });

  Chunk.fromJson(core.Map json_)
    : this(
        agentTransfer: json_.containsKey('agentTransfer')
            ? AgentTransfer.fromJson(
                json_['agentTransfer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        blob: json_.containsKey('blob')
            ? Blob.fromJson(
                json_['blob'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultVariables: json_.containsKey('defaultVariables')
            ? json_['defaultVariables'] as core.Map<core.String, core.dynamic>
            : null,
        image: json_.containsKey('image')
            ? Image.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
        toolCall: json_.containsKey('toolCall')
            ? ToolCall.fromJson(
                json_['toolCall'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolResponse: json_.containsKey('toolResponse')
            ? ToolResponse.fromJson(
                json_['toolResponse'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transcript: json_['transcript'] as core.String?,
        updatedVariables: json_.containsKey('updatedVariables')
            ? json_['updatedVariables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentTransfer = this.agentTransfer;
    final blob = this.blob;
    final defaultVariables = this.defaultVariables;
    final image = this.image;
    final payload = this.payload;
    final text = this.text;
    final toolCall = this.toolCall;
    final toolResponse = this.toolResponse;
    final transcript = this.transcript;
    final updatedVariables = this.updatedVariables;
    return {
      'agentTransfer': ?agentTransfer,
      'blob': ?blob,
      'defaultVariables': ?defaultVariables,
      'image': ?image,
      'payload': ?payload,
      'text': ?text,
      'toolCall': ?toolCall,
      'toolResponse': ?toolResponse,
      'transcript': ?transcript,
      'updatedVariables': ?updatedVariables,
    };
  }
}

/// Citations associated with the agent response.
class Citations {
  /// List of cited pieces of information.
  core.List<CitationsCitedChunk>? citedChunks;

  Citations({this.citedChunks});

  Citations.fromJson(core.Map json_)
    : this(
        citedChunks: (json_['citedChunks'] as core.List?)
            ?.map(
              (value) => CitationsCitedChunk.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final citedChunks = this.citedChunks;
    return {'citedChunks': ?citedChunks};
  }
}

/// Piece of cited information.
class CitationsCitedChunk {
  /// Text used for citation.
  core.String? text;

  /// Title of the cited document.
  core.String? title;

  /// URI used for citation.
  core.String? uri;

  CitationsCitedChunk({this.text, this.title, this.uri});

  CitationsCitedChunk.fromJson(core.Map json_)
    : this(
        text: json_['text'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final text = this.text;
    final title = this.title;
    final uri = this.uri;
    return {'text': ?text, 'title': ?title, 'uri': ?uri};
  }
}

/// Settings for custom client certificates.
class ClientCertificateSettings {
  /// The name of the SecretManager secret version resource storing the
  /// passphrase to decrypt the private key.
  ///
  /// Should be left unset if the private key is not encrypted. Format:
  /// `projects/{project}/secrets/{secret}/versions/{version}`
  ///
  /// Optional.
  core.String? passphrase;

  /// The name of the SecretManager secret version resource storing the private
  /// key encoded in PEM format.
  ///
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  ///
  /// Required.
  core.String? privateKey;

  /// The TLS certificate encoded in PEM format.
  ///
  /// This string must include the begin header and end footer lines.
  ///
  /// Required.
  core.String? tlsCertificate;

  ClientCertificateSettings({
    this.passphrase,
    this.privateKey,
    this.tlsCertificate,
  });

  ClientCertificateSettings.fromJson(core.Map json_)
    : this(
        passphrase: json_['passphrase'] as core.String?,
        privateKey: json_['privateKey'] as core.String?,
        tlsCertificate: json_['tlsCertificate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final passphrase = this.passphrase;
    final privateKey = this.privateKey;
    final tlsCertificate = this.tlsCertificate;
    return {
      'passphrase': ?passphrase,
      'privateKey': ?privateKey,
      'tlsCertificate': ?tlsCertificate,
    };
  }
}

/// Represents a client-side function that the agent can invoke.
///
/// When the tool is chosen by the agent, control is handed off to the client.
/// The client is responsible for executing the function and returning the
/// result as a ToolResponse to continue the interaction with the agent.
class ClientFunction {
  /// The function description.
  ///
  /// Optional.
  core.String? description;

  /// The function name.
  ///
  /// Required.
  core.String? name;

  /// The schema of the function parameters.
  ///
  /// Optional.
  Schema? parameters;

  /// The schema of the function response.
  ///
  /// Optional.
  Schema? response;

  ClientFunction({this.description, this.name, this.parameters, this.response});

  ClientFunction.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? Schema.fromJson(
                json_['parameters'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        response: json_.containsKey('response')
            ? Schema.fromJson(
                json_['response'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    final parameters = this.parameters;
    final response = this.response;
    return {
      'description': ?description,
      'name': ?name,
      'parameters': ?parameters,
      'response': ?response,
    };
  }
}

/// Settings to describe the Cloud Logging behaviors for the app.
class CloudLoggingSettings {
  /// Whether to enable Cloud Logging for the sessions.
  ///
  /// Optional.
  core.bool? enableCloudLogging;

  CloudLoggingSettings({this.enableCloudLogging});

  CloudLoggingSettings.fromJson(core.Map json_)
    : this(enableCloudLogging: json_['enableCloudLogging'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enableCloudLogging = this.enableCloudLogging;
    return {'enableCloudLogging': ?enableCloudLogging};
  }
}

/// A code block to be executed instead of a real tool call.
class CodeBlock {
  /// Python code which will be invoked in tool fake mode.
  ///
  /// Expected Python function signature - To catch all tool calls: def
  /// fake_tool_call(tool: Tool, input: dict\[str, Any\], callback_context:
  /// CallbackContext) -\> Optional\[dict\[str, Any\]\]: To catch a specific
  /// tool call: def fake_{tool_id}(tool: Tool, input: dict\[str, Any\],
  /// callback_context: CallbackContext) -\> Optional\[dict\[str, Any\]\]: If
  /// the function returns None, the real tool will be invoked instead.
  ///
  /// Required.
  core.String? pythonCode;

  CodeBlock({this.pythonCode});

  CodeBlock.fromJson(core.Map json_)
    : this(pythonCode: json_['pythonCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final pythonCode = this.pythonCode;
    return {'pythonCode': ?pythonCode};
  }
}

/// A ConnectorTool allows connections to different integrations.
///
/// See: https://cloud.google.com/integration-connectors/docs/overview.
class ConnectorTool {
  /// Action for the tool to use.
  ///
  /// Required.
  Action? action;

  /// Configures how authentication is handled in Integration Connectors.
  ///
  /// By default, an admin authentication is passed in the Integration
  /// Connectors API requests. You can override it with a different end-user
  /// authentication config. **Note**: The Connection must have authentication
  /// override enabled in order to specify an EUC configuration here -
  /// otherwise, the ConnectorTool creation will fail. See
  /// https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override
  /// for details.
  ///
  /// Optional.
  EndUserAuthConfig? authConfig;

  /// The full resource name of the referenced Integration Connectors
  /// Connection.
  ///
  /// Format: `projects/{project}/locations/{location}/connections/{connection}`
  ///
  /// Required.
  core.String? connection;

  /// The description of the tool that can be used by the Agent to decide
  /// whether to call this ConnectorTool.
  ///
  /// Optional.
  core.String? description;

  /// The name of the tool that can be used by the Agent to decide whether to
  /// call this ConnectorTool.
  ///
  /// Optional.
  core.String? name;

  ConnectorTool({
    this.action,
    this.authConfig,
    this.connection,
    this.description,
    this.name,
  });

  ConnectorTool.fromJson(core.Map json_)
    : this(
        action: json_.containsKey('action')
            ? Action.fromJson(
                json_['action'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        authConfig: json_.containsKey('authConfig')
            ? EndUserAuthConfig.fromJson(
                json_['authConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        connection: json_['connection'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final authConfig = this.authConfig;
    final connection = this.connection;
    final description = this.description;
    final name = this.name;
    return {
      'action': ?action,
      'authConfig': ?authConfig,
      'connection': ?connection,
      'description': ?description,
      'name': ?name,
    };
  }
}

/// A toolset that generates tools from an Integration Connectors Connection.
class ConnectorToolset {
  /// Configures how authentication is handled in Integration Connectors.
  ///
  /// By default, an admin authentication is passed in the Integration
  /// Connectors API requests. You can override it with a different end-user
  /// authentication config. **Note**: The Connection must have authentication
  /// override enabled in order to specify an EUC configuration here -
  /// otherwise, the Toolset creation will fail. See:
  /// https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override
  ///
  /// Optional.
  EndUserAuthConfig? authConfig;

  /// The full resource name of the referenced Integration Connectors
  /// Connection.
  ///
  /// Format: `projects/{project}/locations/{location}/connections/{connection}`
  ///
  /// Required.
  core.String? connection;

  /// The list of connector actions/entity operations to generate tools for.
  ///
  /// Required.
  core.List<Action>? connectorActions;

  ConnectorToolset({this.authConfig, this.connection, this.connectorActions});

  ConnectorToolset.fromJson(core.Map json_)
    : this(
        authConfig: json_.containsKey('authConfig')
            ? EndUserAuthConfig.fromJson(
                json_['authConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        connection: json_['connection'] as core.String?,
        connectorActions: (json_['connectorActions'] as core.List?)
            ?.map(
              (value) =>
                  Action.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authConfig = this.authConfig;
    final connection = this.connection;
    final connectorActions = this.connectorActions;
    return {
      'authConfig': ?authConfig,
      'connection': ?connection,
      'connectorActions': ?connectorActions,
    };
  }
}

/// A conversation represents an interaction between an end user and the CES
/// app.
class Conversation {
  /// The version of the app used for processing the conversation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/versions/{version}`
  ///
  /// Output only.
  core.String? appVersion;

  /// Please use input_types instead.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "CHANNEL_TYPE_UNSPECIFIED" : Unspecified channel type.
  /// - "TEXT" : The conversation only contains text messages between the end
  /// user and the agent.
  /// - "AUDIO" : The conversation contains audio messages between the end user
  /// and the agent.
  /// - "MULTIMODAL" : The conversation multi-modal messages (e.g. image)
  /// between the end user and the agent.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? channelType;

  /// The deployment of the app used for processing the conversation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  ///
  /// Output only.
  core.String? deployment;

  /// Timestamp when the conversation was completed.
  ///
  /// Output only.
  core.String? endTime;

  /// The agent that initially handles the conversation.
  ///
  /// If not specified, the conversation is handled by the root agent. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Output only.
  core.String? entryAgent;

  /// The input types of the conversation.
  ///
  /// Output only.
  core.List<core.String>? inputTypes;

  /// The language code of the conversation.
  ///
  /// Output only.
  core.String? languageCode;

  /// Use turns instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<Message>? messages;

  /// Identifier.
  ///
  /// The unique identifier of the conversation. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/conversations/{conversation}`
  core.String? name;

  /// Indicate the source of the conversation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : Unspecified source.
  /// - "LIVE" : The conversation is from the live end user.
  /// - "SIMULATOR" : The conversation is from the simulator.
  /// - "EVAL" : The conversation is from the evaluation.
  /// - "AGENT_TOOL" : The conversation is from an agent tool. Agent tool runs
  /// the agent in a separate session, which is persisted for testing and
  /// debugging purposes.
  core.String? source;

  /// Timestamp when the conversation was created.
  ///
  /// Output only.
  core.String? startTime;

  /// The number of turns in the conversation.
  ///
  /// Output only.
  core.int? turnCount;

  /// The turns in the conversation.
  ///
  /// Required.
  core.List<ConversationTurn>? turns;

  Conversation({
    this.appVersion,
    this.channelType,
    this.deployment,
    this.endTime,
    this.entryAgent,
    this.inputTypes,
    this.languageCode,
    this.messages,
    this.name,
    this.source,
    this.startTime,
    this.turnCount,
    this.turns,
  });

  Conversation.fromJson(core.Map json_)
    : this(
        appVersion: json_['appVersion'] as core.String?,
        channelType: json_['channelType'] as core.String?,
        deployment: json_['deployment'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        entryAgent: json_['entryAgent'] as core.String?,
        inputTypes: (json_['inputTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        languageCode: json_['languageCode'] as core.String?,
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        source: json_['source'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        turnCount: json_['turnCount'] as core.int?,
        turns: (json_['turns'] as core.List?)
            ?.map(
              (value) => ConversationTurn.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appVersion = this.appVersion;
    final channelType = this.channelType;
    final deployment = this.deployment;
    final endTime = this.endTime;
    final entryAgent = this.entryAgent;
    final inputTypes = this.inputTypes;
    final languageCode = this.languageCode;
    final messages = this.messages;
    final name = this.name;
    final source = this.source;
    final startTime = this.startTime;
    final turnCount = this.turnCount;
    final turns = this.turns;
    return {
      'appVersion': ?appVersion,
      'channelType': ?channelType,
      'deployment': ?deployment,
      'endTime': ?endTime,
      'entryAgent': ?entryAgent,
      'inputTypes': ?inputTypes,
      'languageCode': ?languageCode,
      'messages': ?messages,
      'name': ?name,
      'source': ?source,
      'startTime': ?startTime,
      'turnCount': ?turnCount,
      'turns': ?turns,
    };
  }
}

/// Settings to describe the conversation logging behaviors for the app.
class ConversationLoggingSettings {
  /// Whether to disable conversation logging for the sessions.
  ///
  /// Optional.
  core.bool? disableConversationLogging;

  /// Controls the retention window for the conversation.
  ///
  /// If not set, the conversation will be retained for 365 days.
  ///
  /// Optional.
  core.String? retentionWindow;

  ConversationLoggingSettings({
    this.disableConversationLogging,
    this.retentionWindow,
  });

  ConversationLoggingSettings.fromJson(core.Map json_)
    : this(
        disableConversationLogging:
            json_['disableConversationLogging'] as core.bool?,
        retentionWindow: json_['retentionWindow'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disableConversationLogging = this.disableConversationLogging;
    final retentionWindow = this.retentionWindow;
    return {
      'disableConversationLogging': ?disableConversationLogging,
      'retentionWindow': ?retentionWindow,
    };
  }
}

/// All information about a single turn in the conversation.
class ConversationTurn {
  /// List of messages in the conversation turn, including user input, agent
  /// responses and intermediate events during the processing.
  ///
  /// Optional.
  core.List<Message>? messages;

  /// The root span of the action processing.
  ///
  /// Optional.
  Span? rootSpan;

  ConversationTurn({this.messages, this.rootSpan});

  ConversationTurn.fromJson(core.Map json_)
    : this(
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rootSpan: json_.containsKey('rootSpan')
            ? Span.fromJson(
                json_['rootSpan'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messages = this.messages;
    final rootSpan = this.rootSpan;
    return {'messages': ?messages, 'rootSpan': ?rootSpan};
  }
}

/// A DataStore resource in Vertex AI Search.
class DataStore {
  /// The connector config for the data store connection.
  ///
  /// Output only.
  DataStoreConnectorConfig? connectorConfig;

  /// Timestamp when the data store was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name of the data store.
  ///
  /// Output only.
  core.String? displayName;

  /// The document processing mode for the data store connection.
  ///
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DOCUMENT_PROCESSING_MODE_UNSPECIFIED" : Not specified.
  /// - "DOCUMENTS" : Documents are processed as documents.
  /// - "CHUNKS" : Documents are converted to chunks.
  core.String? documentProcessingMode;

  /// Full resource name of the DataStore.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
  ///
  /// Required.
  core.String? name;

  /// The type of the data store.
  ///
  /// This field is readonly and populated by the server.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATA_STORE_TYPE_UNSPECIFIED" : Not specified. This value indicates that
  /// the data store type is not specified, so it will not be used during
  /// search.
  /// - "PUBLIC_WEB" : A data store that contains public web content.
  /// - "UNSTRUCTURED" : A data store that contains unstructured private data.
  /// - "FAQ" : A data store that contains structured data used as FAQ.
  /// - "CONNECTOR" : A data store that is a connector to a first-party or a
  /// third-party service.
  core.String? type;

  DataStore({
    this.connectorConfig,
    this.createTime,
    this.displayName,
    this.documentProcessingMode,
    this.name,
    this.type,
  });

  DataStore.fromJson(core.Map json_)
    : this(
        connectorConfig: json_.containsKey('connectorConfig')
            ? DataStoreConnectorConfig.fromJson(
                json_['connectorConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentProcessingMode: json_['documentProcessingMode'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectorConfig = this.connectorConfig;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final documentProcessingMode = this.documentProcessingMode;
    final name = this.name;
    final type = this.type;
    return {
      'connectorConfig': ?connectorConfig,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': ?name,
      'type': ?type,
    };
  }
}

/// The connector config for the data store connection.
class DataStoreConnectorConfig {
  /// Resource name of the collection the data store belongs to.
  core.String? collection;

  /// Display name of the collection the data store belongs to.
  core.String? collectionDisplayName;

  /// The name of the data source.
  ///
  /// Example: `salesforce`, `jira`, `confluence`, `bigquery`.
  core.String? dataSource;

  DataStoreConnectorConfig({
    this.collection,
    this.collectionDisplayName,
    this.dataSource,
  });

  DataStoreConnectorConfig.fromJson(core.Map json_)
    : this(
        collection: json_['collection'] as core.String?,
        collectionDisplayName: json_['collectionDisplayName'] as core.String?,
        dataSource: json_['dataSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collection = this.collection;
    final collectionDisplayName = this.collectionDisplayName;
    final dataSource = this.dataSource;
    return {
      'collection': ?collection,
      'collectionDisplayName': ?collectionDisplayName,
      'dataSource': ?dataSource,
    };
  }
}

/// Data store related settings for the app.
class DataStoreSettings {
  /// The engines for the app.
  ///
  /// Output only.
  core.List<DataStoreSettingsEngine>? engines;

  DataStoreSettings({this.engines});

  DataStoreSettings.fromJson(core.Map json_)
    : this(
        engines: (json_['engines'] as core.List?)
            ?.map(
              (value) => DataStoreSettingsEngine.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final engines = this.engines;
    return {'engines': ?engines};
  }
}

/// An engine to which the data stores are connected.
///
/// See Vertex AI Search:
/// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
class DataStoreSettingsEngine {
  /// The resource name of the engine.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  ///
  /// Output only.
  core.String? name;

  /// The type of the engine.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified engine type.
  /// - "ENGINE_TYPE_SEARCH" : The SOLUTION_TYPE_SEARCH engine for the app. All
  /// connector data stores added to the app will be added to this engine.
  /// - "ENGINE_TYPE_CHAT" : Chat engine type. The SOLUTION_TYPE_CHAT engine for
  /// the app. All connector data stores added to the app will be added to this
  /// engine.
  core.String? type;

  DataStoreSettingsEngine({this.name, this.type});

  DataStoreSettingsEngine.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final type = this.type;
    return {'name': ?name, 'type': ?type};
  }
}

/// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
///
/// Accepts either a datastore or an engine, but not both. See Vertex AI Search:
/// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
class DataStoreTool {
  /// Boost specification to boost certain documents.
  ///
  /// Optional.
  core.List<DataStoreToolBoostSpecs>? boostSpecs;

  /// Search within a single specific DataStore.
  ///
  /// Optional.
  DataStoreToolDataStoreSource? dataStoreSource;

  /// The tool description.
  ///
  /// Optional.
  core.String? description;

  /// Search within an Engine (potentially across multiple DataStores).
  ///
  /// Optional.
  DataStoreToolEngineSource? engineSource;

  /// The filter parameter behavior.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FILTER_PARAMETER_BEHAVIOR_UNSPECIFIED" : Default filter behavior.
  /// Include filter parameter for connector datastores. For the rest of the
  /// datastore types, the filter input parameter is omitted.
  /// - "ALWAYS_INCLUDE" : Always include filter parameter for all datastore
  /// types.
  /// - "NEVER_INCLUDE" : The filter parameter is never included in the list of
  /// tool parameters, regardless of the datastore type.
  core.String? filterParameterBehavior;

  /// The modality configs for the data store.
  ///
  /// Optional.
  core.List<DataStoreToolModalityConfig>? modalityConfigs;

  /// The data store tool name.
  ///
  /// Required.
  core.String? name;

  DataStoreTool({
    this.boostSpecs,
    this.dataStoreSource,
    this.description,
    this.engineSource,
    this.filterParameterBehavior,
    this.modalityConfigs,
    this.name,
  });

  DataStoreTool.fromJson(core.Map json_)
    : this(
        boostSpecs: (json_['boostSpecs'] as core.List?)
            ?.map(
              (value) => DataStoreToolBoostSpecs.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataStoreSource: json_.containsKey('dataStoreSource')
            ? DataStoreToolDataStoreSource.fromJson(
                json_['dataStoreSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        engineSource: json_.containsKey('engineSource')
            ? DataStoreToolEngineSource.fromJson(
                json_['engineSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filterParameterBehavior:
            json_['filterParameterBehavior'] as core.String?,
        modalityConfigs: (json_['modalityConfigs'] as core.List?)
            ?.map(
              (value) => DataStoreToolModalityConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boostSpecs = this.boostSpecs;
    final dataStoreSource = this.dataStoreSource;
    final description = this.description;
    final engineSource = this.engineSource;
    final filterParameterBehavior = this.filterParameterBehavior;
    final modalityConfigs = this.modalityConfigs;
    final name = this.name;
    return {
      'boostSpecs': ?boostSpecs,
      'dataStoreSource': ?dataStoreSource,
      'description': ?description,
      'engineSource': ?engineSource,
      'filterParameterBehavior': ?filterParameterBehavior,
      'modalityConfigs': ?modalityConfigs,
      'name': ?name,
    };
  }
}

/// Boost specification to boost certain documents.
class DataStoreToolBoostSpec {
  /// A list of boosting specifications.
  ///
  /// Required.
  core.List<DataStoreToolBoostSpecConditionBoostSpec>? conditionBoostSpecs;

  DataStoreToolBoostSpec({this.conditionBoostSpecs});

  DataStoreToolBoostSpec.fromJson(core.Map json_)
    : this(
        conditionBoostSpecs: (json_['conditionBoostSpecs'] as core.List?)
            ?.map(
              (value) => DataStoreToolBoostSpecConditionBoostSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conditionBoostSpecs = this.conditionBoostSpecs;
    return {'conditionBoostSpecs': ?conditionBoostSpecs};
  }
}

/// Boost specification for a condition.
class DataStoreToolBoostSpecConditionBoostSpec {
  /// Strength of the boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the
  /// suggestions a big promotion. However, it does not necessarily mean that
  /// the top result will be a boosted suggestion. Setting to -1.0 gives the
  /// suggestions a big demotion. However, other suggestions that are relevant
  /// might still be shown. Setting to 0.0 means no boost applied. The boosting
  /// condition is ignored.
  ///
  /// Optional.
  core.double? boost;

  /// Complex specification for custom ranking based on customer defined
  /// attribute value.
  ///
  /// Optional.
  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec? boostControlSpec;

  /// An expression which specifies a boost condition.
  ///
  /// The syntax is the same as filter expression syntax. Currently, the only
  /// supported condition is a list of BCP-47 lang codes. Example: To boost
  /// suggestions in languages en or fr: (lang_code: ANY("en", "fr"))
  ///
  /// Required.
  core.String? condition;

  DataStoreToolBoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  DataStoreToolBoostSpecConditionBoostSpec.fromJson(core.Map json_)
    : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec: json_.containsKey('boostControlSpec')
            ? DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
                json_['boostControlSpec']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boost = this.boost;
    final boostControlSpec = this.boostControlSpec;
    final condition = this.condition;
    return {
      'boost': ?boost,
      'boostControlSpec': ?boostControlSpec,
      'condition': ?condition,
    };
  }
}

/// Specification for custom ranking based on customer specified attribute
/// value.
///
/// It provides more controls for customized ranking than the simple (condition,
/// boost) combination above.
class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec {
  /// The attribute type to be used to determine the boost amount.
  ///
  /// The attribute value can be derived from the field value of the specified
  /// field_name. In the case of numerical it is straightforward i.e.
  /// attribute_value = numerical_field_value. In the case of freshness however,
  /// attribute_value = (time.now() - datetime_field_value).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ATTRIBUTE_TYPE_UNSPECIFIED" : Unspecified AttributeType.
  /// - "NUMERICAL" : The value of the numerical field will be used to
  /// dynamically update the boost amount. In this case, the attribute_value
  /// (the x value) of the control point will be the actual value of the
  /// numerical field for which the boost_amount is specified.
  /// - "FRESHNESS" : For the freshness use case the attribute value will be the
  /// duration between the current time and the date in the datetime field
  /// specified. The value must be formatted as an XSD `dayTimeDuration` value
  /// (a restricted subset of an ISO 8601 duration value). The pattern for this
  /// is: `nDnM]`. E.g. `5D`, `3DT12H30M`, `T24H`.
  core.String? attributeType;

  /// The control points used to define the curve.
  ///
  /// The monotonic function (defined through the interpolation_type above)
  /// passes through the control points listed here.
  ///
  /// Optional.
  core.List<
    DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >?
  controlPoints;

  /// The name of the field whose value will be used to determine the boost
  /// amount.
  ///
  /// Optional.
  core.String? fieldName;

  /// The interpolation type to be applied to connect the control points listed
  /// below.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INTERPOLATION_TYPE_UNSPECIFIED" : Interpolation type is unspecified. In
  /// this case, it defaults to Linear.
  /// - "LINEAR" : Piecewise linear interpolation will be applied.
  core.String? interpolationType;

  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints: (json_['controlPoints'] as core.List?)
            ?.map(
              (value) =>
                  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        fieldName: json_['fieldName'] as core.String?,
        interpolationType: json_['interpolationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeType = this.attributeType;
    final controlPoints = this.controlPoints;
    final fieldName = this.fieldName;
    final interpolationType = this.interpolationType;
    return {
      'attributeType': ?attributeType,
      'controlPoints': ?controlPoints,
      'fieldName': ?fieldName,
      'interpolationType': ?interpolationType,
    };
  }
}

/// The control points used to define the curve.
///
/// The curve defined through these control points can only be monotonically
/// increasing or decreasing(constant values are acceptable).
class DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint {
  /// Can be one of: 1.
  ///
  /// The numerical field value. 2. The duration spec for freshness: The value
  /// must be formatted as an XSD `dayTimeDuration` value (a restricted subset
  /// of an ISO 8601 duration value). The pattern for this is: `nDnM]`.
  ///
  /// Optional.
  core.String? attributeValue;

  /// The value between -1 to 1 by which to boost the score if the
  /// attribute_value evaluates to the value specified above.
  ///
  /// Optional.
  core.double? boostAmount;

  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
    core.Map json_,
  ) : this(
        attributeValue: json_['attributeValue'] as core.String?,
        boostAmount: (json_['boostAmount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeValue = this.attributeValue;
    final boostAmount = this.boostAmount;
    return {'attributeValue': ?attributeValue, 'boostAmount': ?boostAmount};
  }
}

/// Boost specifications to boost certain documents.
///
/// For more information, please refer to
/// https://cloud.google.com/generative-ai-app-builder/docs/boosting.
class DataStoreToolBoostSpecs {
  /// The Data Store where the boosting configuration is applied.
  ///
  /// Full resource name of DataStore, such as
  /// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}.
  ///
  /// Required.
  core.List<core.String>? dataStores;

  /// A list of boosting specifications.
  ///
  /// Required.
  core.List<DataStoreToolBoostSpec>? spec;

  DataStoreToolBoostSpecs({this.dataStores, this.spec});

  DataStoreToolBoostSpecs.fromJson(core.Map json_)
    : this(
        dataStores: (json_['dataStores'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        spec: (json_['spec'] as core.List?)
            ?.map(
              (value) => DataStoreToolBoostSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStores = this.dataStores;
    final spec = this.spec;
    return {'dataStores': ?dataStores, 'spec': ?spec};
  }
}

/// Configuration for searching within a specific DataStore.
class DataStoreToolDataStoreSource {
  /// The data store.
  ///
  /// Optional.
  DataStore? dataStore;

  /// Filter specification for the DataStore.
  ///
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  ///
  /// Optional.
  core.String? filter;

  DataStoreToolDataStoreSource({this.dataStore, this.filter});

  DataStoreToolDataStoreSource.fromJson(core.Map json_)
    : this(
        dataStore: json_.containsKey('dataStore')
            ? DataStore.fromJson(
                json_['dataStore'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStore = this.dataStore;
    final filter = this.filter;
    return {'dataStore': ?dataStore, 'filter': ?filter};
  }
}

/// Configuration for searching within an Engine, potentially targeting specific
/// DataStores.
class DataStoreToolEngineSource {
  /// Use to target specific DataStores within the Engine.
  ///
  /// If empty, the search applies to all DataStores associated with the Engine.
  ///
  /// Optional.
  core.List<DataStoreToolDataStoreSource>? dataStoreSources;

  /// Full resource name of the Engine.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  ///
  /// Required.
  core.String? engine;

  /// A filter applied to the search across the Engine.
  ///
  /// Not relevant and not used if 'data_store_sources' is provided. See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  ///
  /// Optional.
  core.String? filter;

  DataStoreToolEngineSource({this.dataStoreSources, this.engine, this.filter});

  DataStoreToolEngineSource.fromJson(core.Map json_)
    : this(
        dataStoreSources: (json_['dataStoreSources'] as core.List?)
            ?.map(
              (value) => DataStoreToolDataStoreSource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        engine: json_['engine'] as core.String?,
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStoreSources = this.dataStoreSources;
    final engine = this.engine;
    final filter = this.filter;
    return {
      'dataStoreSources': ?dataStoreSources,
      'engine': ?engine,
      'filter': ?filter,
    };
  }
}

/// Grounding configuration.
class DataStoreToolGroundingConfig {
  /// Whether grounding is disabled.
  ///
  /// Optional.
  core.bool? disabled;

  /// The groundedness threshold of the answer based on the retrieved sources.
  ///
  /// The value has a configurable range of \[1, 5\]. The level is used to
  /// threshold the groundedness of the answer, meaning that all responses with
  /// a groundedness score below the threshold will fall back to returning
  /// relevant snippets only. For example, a level of 3 means that the
  /// groundedness score must be 3 or higher for the response to be returned.
  ///
  /// Optional.
  core.double? groundingLevel;

  DataStoreToolGroundingConfig({this.disabled, this.groundingLevel});

  DataStoreToolGroundingConfig.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        groundingLevel: (json_['groundingLevel'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabled = this.disabled;
    final groundingLevel = this.groundingLevel;
    return {'disabled': ?disabled, 'groundingLevel': ?groundingLevel};
  }
}

/// If specified, will apply the given configuration for the specified modality.
class DataStoreToolModalityConfig {
  /// The grounding configuration.
  ///
  /// Optional.
  DataStoreToolGroundingConfig? groundingConfig;

  /// The modality type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MODALITY_TYPE_UNSPECIFIED" : Unspecified modality type.
  /// - "TEXT" : Text modality.
  /// - "AUDIO" : Audio modality.
  core.String? modalityType;

  /// The rewriter config.
  ///
  /// Optional.
  DataStoreToolRewriterConfig? rewriterConfig;

  /// The summarization config.
  ///
  /// Optional.
  DataStoreToolSummarizationConfig? summarizationConfig;

  DataStoreToolModalityConfig({
    this.groundingConfig,
    this.modalityType,
    this.rewriterConfig,
    this.summarizationConfig,
  });

  DataStoreToolModalityConfig.fromJson(core.Map json_)
    : this(
        groundingConfig: json_.containsKey('groundingConfig')
            ? DataStoreToolGroundingConfig.fromJson(
                json_['groundingConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        modalityType: json_['modalityType'] as core.String?,
        rewriterConfig: json_.containsKey('rewriterConfig')
            ? DataStoreToolRewriterConfig.fromJson(
                json_['rewriterConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        summarizationConfig: json_.containsKey('summarizationConfig')
            ? DataStoreToolSummarizationConfig.fromJson(
                json_['summarizationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groundingConfig = this.groundingConfig;
    final modalityType = this.modalityType;
    final rewriterConfig = this.rewriterConfig;
    final summarizationConfig = this.summarizationConfig;
    return {
      'groundingConfig': ?groundingConfig,
      'modalityType': ?modalityType,
      'rewriterConfig': ?rewriterConfig,
      'summarizationConfig': ?summarizationConfig,
    };
  }
}

/// Rewriter configuration.
class DataStoreToolRewriterConfig {
  /// Whether the rewriter is disabled.
  ///
  /// Optional.
  core.bool? disabled;

  /// Configurations for the LLM model.
  ///
  /// Required.
  ModelSettings? modelSettings;

  /// The prompt definition.
  ///
  /// If not set, default prompt will be used.
  ///
  /// Optional.
  core.String? prompt;

  DataStoreToolRewriterConfig({this.disabled, this.modelSettings, this.prompt});

  DataStoreToolRewriterConfig.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        modelSettings: json_.containsKey('modelSettings')
            ? ModelSettings.fromJson(
                json_['modelSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabled = this.disabled;
    final modelSettings = this.modelSettings;
    final prompt = this.prompt;
    return {
      'disabled': ?disabled,
      'modelSettings': ?modelSettings,
      'prompt': ?prompt,
    };
  }
}

/// Summarization configuration.
class DataStoreToolSummarizationConfig {
  /// Whether summarization is disabled.
  ///
  /// Optional.
  core.bool? disabled;

  /// Configurations for the LLM model.
  ///
  /// Optional.
  ModelSettings? modelSettings;

  /// The prompt definition.
  ///
  /// If not set, default prompt will be used.
  ///
  /// Optional.
  core.String? prompt;

  DataStoreToolSummarizationConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  DataStoreToolSummarizationConfig.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        modelSettings: json_.containsKey('modelSettings')
            ? ModelSettings.fromJson(
                json_['modelSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabled = this.disabled;
    final modelSettings = this.modelSettings;
    final prompt = this.prompt;
    return {
      'disabled': ?disabled,
      'modelSettings': ?modelSettings,
      'prompt': ?prompt,
    };
  }
}

/// A deployment represents an immutable, queryable version of the app.
///
/// It is used to deploy an app version with a specific channel profile.
class Deployment {
  /// The resource name of the app version to deploy.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/versions/{version}`
  /// Use `projects/{project}/locations/{location}/apps/{app}/versions/-` to use
  /// the draft app.
  ///
  /// Optional.
  core.String? appVersion;

  /// The channel profile used in the deployment.
  ///
  /// Required.
  ChannelProfile? channelProfile;

  /// Timestamp when this deployment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name of the deployment.
  ///
  /// Required.
  core.String? displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  ///
  /// Output only.
  core.String? etag;

  /// Experiment configuration for the deployment.
  ///
  /// Optional.
  ExperimentConfig? experimentConfig;

  /// Identifier.
  ///
  /// The resource name of the deployment. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  core.String? name;

  /// Timestamp when this deployment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Deployment({
    this.appVersion,
    this.channelProfile,
    this.createTime,
    this.displayName,
    this.etag,
    this.experimentConfig,
    this.name,
    this.updateTime,
  });

  Deployment.fromJson(core.Map json_)
    : this(
        appVersion: json_['appVersion'] as core.String?,
        channelProfile: json_.containsKey('channelProfile')
            ? ChannelProfile.fromJson(
                json_['channelProfile'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        experimentConfig: json_.containsKey('experimentConfig')
            ? ExperimentConfig.fromJson(
                json_['experimentConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appVersion = this.appVersion;
    final channelProfile = this.channelProfile;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final etag = this.etag;
    final experimentConfig = this.experimentConfig;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'appVersion': ?appVersion,
      'channelProfile': ?channelProfile,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'experimentConfig': ?experimentConfig,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Indicates the session has terminated, due to either successful completion
/// (e.g. user says "Good bye!" ) or an agent escalation.
///
/// The agent will not process any further inputs after session is terminated
/// and the client should half-close and disconnect after receiving all
/// remaining responses from the agent.
typedef EndSession = $EndSession;

/// End-user authentication configuration used for Connection calls.
///
/// The field values must be the names of context variables in the format
/// `$context.variables.`.
class EndUserAuthConfig {
  /// Oauth 2.0 Authorization Code authentication.
  EndUserAuthConfigOauth2AuthCodeConfig? oauth2AuthCodeConfig;

  /// JWT Profile Oauth 2.0 Authorization Grant authentication.
  EndUserAuthConfigOauth2JwtBearerConfig? oauth2JwtBearerConfig;

  EndUserAuthConfig({this.oauth2AuthCodeConfig, this.oauth2JwtBearerConfig});

  EndUserAuthConfig.fromJson(core.Map json_)
    : this(
        oauth2AuthCodeConfig: json_.containsKey('oauth2AuthCodeConfig')
            ? EndUserAuthConfigOauth2AuthCodeConfig.fromJson(
                json_['oauth2AuthCodeConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauth2JwtBearerConfig: json_.containsKey('oauth2JwtBearerConfig')
            ? EndUserAuthConfigOauth2JwtBearerConfig.fromJson(
                json_['oauth2JwtBearerConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oauth2AuthCodeConfig = this.oauth2AuthCodeConfig;
    final oauth2JwtBearerConfig = this.oauth2JwtBearerConfig;
    return {
      'oauth2AuthCodeConfig': ?oauth2AuthCodeConfig,
      'oauth2JwtBearerConfig': ?oauth2JwtBearerConfig,
    };
  }
}

/// Oauth 2.0 Authorization Code authentication configuration.
class EndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token parameter name to pass through.
  ///
  /// Must be in the format `$context.variables.`.
  ///
  /// Required.
  core.String? oauthToken;

  EndUserAuthConfigOauth2AuthCodeConfig({this.oauthToken});

  EndUserAuthConfigOauth2AuthCodeConfig.fromJson(core.Map json_)
    : this(oauthToken: json_['oauthToken'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final oauthToken = this.oauthToken;
    return {'oauthToken': ?oauthToken};
  }
}

/// JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
class EndUserAuthConfigOauth2JwtBearerConfig {
  /// Client parameter name to pass through.
  ///
  /// Must be in the format `$context.variables.`.
  ///
  /// Required.
  core.String? clientKey;

  /// Issuer parameter name to pass through.
  ///
  /// Must be in the format `$context.variables.`.
  ///
  /// Required.
  core.String? issuer;

  /// Subject parameter name to pass through.
  ///
  /// Must be in the format `$context.variables.`.
  ///
  /// Required.
  core.String? subject;

  EndUserAuthConfigOauth2JwtBearerConfig({
    this.clientKey,
    this.issuer,
    this.subject,
  });

  EndUserAuthConfigOauth2JwtBearerConfig.fromJson(core.Map json_)
    : this(
        clientKey: json_['clientKey'] as core.String?,
        issuer: json_['issuer'] as core.String?,
        subject: json_['subject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientKey = this.clientKey;
    final issuer = this.issuer;
    final subject = this.subject;
    return {'clientKey': ?clientKey, 'issuer': ?issuer, 'subject': ?subject};
  }
}

/// Settings to describe how errors should be handled in the app.
class ErrorHandlingSettings {
  /// Configuration for ending the session in case of system errors (e.g. LLM
  /// errors).
  ///
  /// Optional.
  ErrorHandlingSettingsEndSessionConfig? endSessionConfig;

  /// The strategy to use for error handling.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ERROR_HANDLING_STRATEGY_UNSPECIFIED" : Unspecified error handling
  /// strategy.
  /// - "NONE" : No specific handling is enabled.
  /// - "FALLBACK_RESPONSE" : A fallback message will be returned to the user in
  /// case of system errors (e.g. LLM errors).
  /// - "END_SESSION" : An EndSession signal will be emitted in case of system
  /// errors (e.g. LLM errors).
  core.String? errorHandlingStrategy;

  /// Configuration for handling fallback responses.
  ///
  /// Optional.
  ErrorHandlingSettingsFallbackResponseConfig? fallbackResponseConfig;

  ErrorHandlingSettings({
    this.endSessionConfig,
    this.errorHandlingStrategy,
    this.fallbackResponseConfig,
  });

  ErrorHandlingSettings.fromJson(core.Map json_)
    : this(
        endSessionConfig: json_.containsKey('endSessionConfig')
            ? ErrorHandlingSettingsEndSessionConfig.fromJson(
                json_['endSessionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        errorHandlingStrategy: json_['errorHandlingStrategy'] as core.String?,
        fallbackResponseConfig: json_.containsKey('fallbackResponseConfig')
            ? ErrorHandlingSettingsFallbackResponseConfig.fromJson(
                json_['fallbackResponseConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endSessionConfig = this.endSessionConfig;
    final errorHandlingStrategy = this.errorHandlingStrategy;
    final fallbackResponseConfig = this.fallbackResponseConfig;
    return {
      'endSessionConfig': ?endSessionConfig,
      'errorHandlingStrategy': ?errorHandlingStrategy,
      'fallbackResponseConfig': ?fallbackResponseConfig,
    };
  }
}

/// Configuration for ending the session in case of system errors (e.g. LLM
/// errors).
class ErrorHandlingSettingsEndSessionConfig {
  /// Whether to escalate the session in EndSession.
  ///
  /// If session is escalated, metadata in EndSession will contain
  /// `session_escalated = true`. See
  /// https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/deploy/google-telephony-platform#transfer_a_call_to_a_human_agent
  /// for details.
  ///
  /// Optional.
  core.bool? escalateSession;

  ErrorHandlingSettingsEndSessionConfig({this.escalateSession});

  ErrorHandlingSettingsEndSessionConfig.fromJson(core.Map json_)
    : this(escalateSession: json_['escalateSession'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final escalateSession = this.escalateSession;
    return {'escalateSession': ?escalateSession};
  }
}

/// Configuration for handling fallback responses.
class ErrorHandlingSettingsFallbackResponseConfig {
  /// The fallback messages in case of system errors (e.g. LLM errors), mapped
  /// by
  /// [supported language code](https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference/language).
  ///
  /// Optional.
  core.Map<core.String, core.String>? customFallbackMessages;

  /// The maximum number of fallback attempts to make before the agent emitting
  /// EndSession Signal.
  ///
  /// Optional.
  core.int? maxFallbackAttempts;

  ErrorHandlingSettingsFallbackResponseConfig({
    this.customFallbackMessages,
    this.maxFallbackAttempts,
  });

  ErrorHandlingSettingsFallbackResponseConfig.fromJson(core.Map json_)
    : this(
        customFallbackMessages:
            (json_['customFallbackMessages']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        maxFallbackAttempts: json_['maxFallbackAttempts'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customFallbackMessages = this.customFallbackMessages;
    final maxFallbackAttempts = this.maxFallbackAttempts;
    return {
      'customFallbackMessages': ?customFallbackMessages,
      'maxFallbackAttempts': ?maxFallbackAttempts,
    };
  }
}

/// Threshold settings for metrics in an Evaluation.
class EvaluationMetricsThresholds {
  /// The golden evaluation metrics thresholds.
  ///
  /// Optional.
  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds?
  goldenEvaluationMetricsThresholds;

  /// The hallucination metric behavior for golden evaluations.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HALLUCINATION_METRIC_BEHAVIOR_UNSPECIFIED" : Unspecified hallucination
  /// metric behavior.
  /// - "DISABLED" : Disable hallucination metric.
  /// - "ENABLED" : Enable hallucination metric.
  core.String? goldenHallucinationMetricBehavior;

  /// Deprecated: Use `golden_hallucination_metric_behavior` instead.
  ///
  /// The hallucination metric behavior is currently used for golden
  /// evaluations.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HALLUCINATION_METRIC_BEHAVIOR_UNSPECIFIED" : Unspecified hallucination
  /// metric behavior.
  /// - "DISABLED" : Disable hallucination metric.
  /// - "ENABLED" : Enable hallucination metric.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hallucinationMetricBehavior;

  /// The hallucination metric behavior for scenario evaluations.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HALLUCINATION_METRIC_BEHAVIOR_UNSPECIFIED" : Unspecified hallucination
  /// metric behavior.
  /// - "DISABLED" : Disable hallucination metric.
  /// - "ENABLED" : Enable hallucination metric.
  core.String? scenarioHallucinationMetricBehavior;

  EvaluationMetricsThresholds({
    this.goldenEvaluationMetricsThresholds,
    this.goldenHallucinationMetricBehavior,
    this.hallucinationMetricBehavior,
    this.scenarioHallucinationMetricBehavior,
  });

  EvaluationMetricsThresholds.fromJson(core.Map json_)
    : this(
        goldenEvaluationMetricsThresholds:
            json_.containsKey('goldenEvaluationMetricsThresholds')
            ? EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromJson(
                json_['goldenEvaluationMetricsThresholds']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        goldenHallucinationMetricBehavior:
            json_['goldenHallucinationMetricBehavior'] as core.String?,
        hallucinationMetricBehavior:
            json_['hallucinationMetricBehavior'] as core.String?,
        scenarioHallucinationMetricBehavior:
            json_['scenarioHallucinationMetricBehavior'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldenEvaluationMetricsThresholds =
        this.goldenEvaluationMetricsThresholds;
    final goldenHallucinationMetricBehavior =
        this.goldenHallucinationMetricBehavior;
    final hallucinationMetricBehavior = this.hallucinationMetricBehavior;
    final scenarioHallucinationMetricBehavior =
        this.scenarioHallucinationMetricBehavior;
    return {
      'goldenEvaluationMetricsThresholds': ?goldenEvaluationMetricsThresholds,
      'goldenHallucinationMetricBehavior': ?goldenHallucinationMetricBehavior,
      'hallucinationMetricBehavior': ?hallucinationMetricBehavior,
      'scenarioHallucinationMetricBehavior':
          ?scenarioHallucinationMetricBehavior,
    };
  }
}

/// Settings for golden evaluations.
class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  /// The expectation level metrics thresholds.
  ///
  /// Optional.
  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds?
  expectationLevelMetricsThresholds;

  /// The tool matching settings.
  ///
  /// An extra tool call is a tool call that is present in the execution but
  /// does not match any tool call in the golden expectation.
  ///
  /// Optional.
  EvaluationMetricsThresholdsToolMatchingSettings? toolMatchingSettings;

  /// The turn level metrics thresholds.
  ///
  /// Optional.
  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds?
  turnLevelMetricsThresholds;

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.toolMatchingSettings,
    this.turnLevelMetricsThresholds,
  });

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromJson(
    core.Map json_,
  ) : this(
        expectationLevelMetricsThresholds:
            json_.containsKey('expectationLevelMetricsThresholds')
            ? EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromJson(
                json_['expectationLevelMetricsThresholds']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolMatchingSettings: json_.containsKey('toolMatchingSettings')
            ? EvaluationMetricsThresholdsToolMatchingSettings.fromJson(
                json_['toolMatchingSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        turnLevelMetricsThresholds:
            json_.containsKey('turnLevelMetricsThresholds')
            ? EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromJson(
                json_['turnLevelMetricsThresholds']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expectationLevelMetricsThresholds =
        this.expectationLevelMetricsThresholds;
    final toolMatchingSettings = this.toolMatchingSettings;
    final turnLevelMetricsThresholds = this.turnLevelMetricsThresholds;
    return {
      'expectationLevelMetricsThresholds': ?expectationLevelMetricsThresholds,
      'toolMatchingSettings': ?toolMatchingSettings,
      'turnLevelMetricsThresholds': ?turnLevelMetricsThresholds,
    };
  }
}

/// Expectation level metrics thresholds.
class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds {
  /// The success threshold for individual tool invocation parameter
  /// correctness.
  ///
  /// Must be a float between 0 and 1. Default is 1.0.
  ///
  /// Optional.
  core.double? toolInvocationParameterCorrectnessThreshold;

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds({
    this.toolInvocationParameterCorrectnessThreshold,
  });

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromJson(
    core.Map json_,
  ) : this(
        toolInvocationParameterCorrectnessThreshold:
            (json_['toolInvocationParameterCorrectnessThreshold'] as core.num?)
                ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolInvocationParameterCorrectnessThreshold =
        this.toolInvocationParameterCorrectnessThreshold;
    return {
      'toolInvocationParameterCorrectnessThreshold':
          ?toolInvocationParameterCorrectnessThreshold,
    };
  }
}

/// Turn level metrics thresholds.
class EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds {
  /// The success threshold for overall tool invocation correctness.
  ///
  /// Must be a float between 0 and 1. Default is 1.0.
  ///
  /// Optional.
  core.double? overallToolInvocationCorrectnessThreshold;

  /// The semantic similarity channel to use for evaluation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SEMANTIC_SIMILARITY_CHANNEL_UNSPECIFIED" : Metric unspecified. Defaults
  /// to TEXT.
  /// - "TEXT" : Use text semantic similarity.
  /// - "AUDIO" : Use audio semantic similarity.
  core.String? semanticSimilarityChannel;

  /// The success threshold for semantic similarity.
  ///
  /// Must be an integer between 0 and 4. Default is \>= 3.
  ///
  /// Optional.
  core.int? semanticSimilaritySuccessThreshold;

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds({
    this.overallToolInvocationCorrectnessThreshold,
    this.semanticSimilarityChannel,
    this.semanticSimilaritySuccessThreshold,
  });

  EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromJson(
    core.Map json_,
  ) : this(
        overallToolInvocationCorrectnessThreshold:
            (json_['overallToolInvocationCorrectnessThreshold'] as core.num?)
                ?.toDouble(),
        semanticSimilarityChannel:
            json_['semanticSimilarityChannel'] as core.String?,
        semanticSimilaritySuccessThreshold:
            json_['semanticSimilaritySuccessThreshold'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final overallToolInvocationCorrectnessThreshold =
        this.overallToolInvocationCorrectnessThreshold;
    final semanticSimilarityChannel = this.semanticSimilarityChannel;
    final semanticSimilaritySuccessThreshold =
        this.semanticSimilaritySuccessThreshold;
    return {
      'overallToolInvocationCorrectnessThreshold':
          ?overallToolInvocationCorrectnessThreshold,
      'semanticSimilarityChannel': ?semanticSimilarityChannel,
      'semanticSimilaritySuccessThreshold': ?semanticSimilaritySuccessThreshold,
    };
  }
}

/// Settings for matching tool calls.
class EvaluationMetricsThresholdsToolMatchingSettings {
  /// Behavior for extra tool calls.
  ///
  /// Defaults to FAIL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTRA_TOOL_CALL_BEHAVIOR_UNSPECIFIED" : Unspecified behavior. Defaults
  /// to FAIL.
  /// - "FAIL" : Fail the evaluation if an extra tool call is encountered.
  /// - "ALLOW" : Allow the extra tool call.
  core.String? extraToolCallBehavior;

  EvaluationMetricsThresholdsToolMatchingSettings({this.extraToolCallBehavior});

  EvaluationMetricsThresholdsToolMatchingSettings.fromJson(core.Map json_)
    : this(
        extraToolCallBehavior: json_['extraToolCallBehavior'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extraToolCallBehavior = this.extraToolCallBehavior;
    return {'extraToolCallBehavior': ?extraToolCallBehavior};
  }
}

/// Event input.
class Event {
  /// The name of the event.
  ///
  /// Required.
  core.String? event;

  Event({this.event});

  Event.fromJson(core.Map json_) : this(event: json_['event'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final event = this.event;
    return {'event': ?event};
  }
}

/// An example represents a sample conversation between the user and the
/// agent(s).
class Example {
  /// Timestamp when the example was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable description of the example.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the example.
  ///
  /// Required.
  core.String? displayName;

  /// The agent that initially handles the conversation.
  ///
  /// If not specified, the example represents a conversation that is handled by
  /// the root agent. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Optional.
  core.String? entryAgent;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  core.String? etag;

  /// The example may become invalid if referencing resources are deleted.
  ///
  /// Invalid examples will not be used as few-shot examples.
  ///
  /// Output only.
  core.bool? invalid;

  /// The collection of messages that make up the conversation.
  ///
  /// Optional.
  core.List<Message>? messages;

  /// Identifier.
  ///
  /// The unique identifier of the example. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  core.String? name;

  /// Timestamp when the example was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Example({
    this.createTime,
    this.description,
    this.displayName,
    this.entryAgent,
    this.etag,
    this.invalid,
    this.messages,
    this.name,
    this.updateTime,
  });

  Example.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entryAgent: json_['entryAgent'] as core.String?,
        etag: json_['etag'] as core.String?,
        invalid: json_['invalid'] as core.bool?,
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final entryAgent = this.entryAgent;
    final etag = this.etag;
    final invalid = this.invalid;
    final messages = this.messages;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'entryAgent': ?entryAgent,
      'etag': ?etag,
      'invalid': ?invalid,
      'messages': ?messages,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

/// Request message for ToolService.ExecuteTool.
class ExecuteToolRequest {
  /// The input parameters and values for the tool in JSON object format.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? args;

  /// The
  /// \[ToolCallContext\](https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool/python#environment
  /// for details) to be passed to the Python tool.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? context;

  /// Mock configuration for the tool execution.
  ///
  /// If this field is set, tools that call other tools will be mocked based on
  /// the provided patterns and responses.
  ///
  /// Optional.
  MockConfig? mockConfig;

  /// The name of the tool to execute.
  ///
  /// Format: projects/{project}/locations/{location}/apps/{app}/tools/{tool}
  ///
  /// Optional.
  core.String? tool;

  /// The toolset tool to execute.
  ///
  /// Only one tool should match the predicate from the toolset. Otherwise, an
  /// error will be returned.
  ///
  /// Optional.
  ToolsetTool? toolsetTool;

  /// The variables that are available for the tool execution.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  ExecuteToolRequest({
    this.args,
    this.context,
    this.mockConfig,
    this.tool,
    this.toolsetTool,
    this.variables,
  });

  ExecuteToolRequest.fromJson(core.Map json_)
    : this(
        args: json_.containsKey('args')
            ? json_['args'] as core.Map<core.String, core.dynamic>
            : null,
        context: json_.containsKey('context')
            ? json_['context'] as core.Map<core.String, core.dynamic>
            : null,
        mockConfig: json_.containsKey('mockConfig')
            ? MockConfig.fromJson(
                json_['mockConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final context = this.context;
    final mockConfig = this.mockConfig;
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    final variables = this.variables;
    return {
      'args': ?args,
      'context': ?context,
      'mockConfig': ?mockConfig,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool,
      'variables': ?variables,
    };
  }
}

/// Response message for ToolService.ExecuteTool.
class ExecuteToolResponse {
  /// The tool execution result in JSON object format.
  ///
  /// Use "output" key to specify tool response and "error" key to specify error
  /// details (if any). If "output" and "error" keys are not specified, then
  /// whole "response" is treated as tool execution result.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  /// The name of the tool that got executed.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  core.String? tool;

  /// The toolset tool that got executed.
  ToolsetTool? toolsetTool;

  /// The variable values at the end of the tool execution.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  ExecuteToolResponse({
    this.response,
    this.tool,
    this.toolsetTool,
    this.variables,
  });

  ExecuteToolResponse.fromJson(core.Map json_)
    : this(
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final response = this.response;
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    final variables = this.variables;
    return {
      'response': ?response,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool,
      'variables': ?variables,
    };
  }
}

/// Experiment for the deployment.
class ExperimentConfig {
  /// Version release for the experiment.
  ///
  /// Optional.
  ExperimentConfigVersionRelease? versionRelease;

  ExperimentConfig({this.versionRelease});

  ExperimentConfig.fromJson(core.Map json_)
    : this(
        versionRelease: json_.containsKey('versionRelease')
            ? ExperimentConfigVersionRelease.fromJson(
                json_['versionRelease'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final versionRelease = this.versionRelease;
    return {'versionRelease': ?versionRelease};
  }
}

/// Version release for the experiment.
class ExperimentConfigVersionRelease {
  /// State of the version release.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "PENDING" : Pending state. Experiment is pending and not valid.
  /// - "RUNNING" : Running state. Experiment is running and valid.
  /// - "DONE" : Done state. Experiment is done and no longer valid.
  /// - "EXPIRED" : Expired state. Experiment is expired and no longer valid.
  core.String? state;

  /// Traffic allocations for the version release.
  ///
  /// Optional.
  core.List<ExperimentConfigVersionReleaseTrafficAllocation>?
  trafficAllocations;

  ExperimentConfigVersionRelease({this.state, this.trafficAllocations});

  ExperimentConfigVersionRelease.fromJson(core.Map json_)
    : this(
        state: json_['state'] as core.String?,
        trafficAllocations: (json_['trafficAllocations'] as core.List?)
            ?.map(
              (value) =>
                  ExperimentConfigVersionReleaseTrafficAllocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    final trafficAllocations = this.trafficAllocations;
    return {'state': ?state, 'trafficAllocations': ?trafficAllocations};
  }
}

/// Traffic allocation for the version release.
class ExperimentConfigVersionReleaseTrafficAllocation {
  /// App version of the traffic allocation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/versions/{version}`
  ///
  /// Optional.
  core.String? appVersion;

  /// Id of the traffic allocation.
  ///
  /// Free format string, up to 128 characters.
  ///
  /// Optional.
  core.String? id;

  /// Traffic percentage of the traffic allocation.
  ///
  /// Must be between 0 and 100.
  ///
  /// Optional.
  core.int? trafficPercentage;

  ExperimentConfigVersionReleaseTrafficAllocation({
    this.appVersion,
    this.id,
    this.trafficPercentage,
  });

  ExperimentConfigVersionReleaseTrafficAllocation.fromJson(core.Map json_)
    : this(
        appVersion: json_['appVersion'] as core.String?,
        id: json_['id'] as core.String?,
        trafficPercentage: json_['trafficPercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appVersion = this.appVersion;
    final id = this.id;
    final trafficPercentage = this.trafficPercentage;
    return {
      'appVersion': ?appVersion,
      'id': ?id,
      'trafficPercentage': ?trafficPercentage,
    };
  }
}

/// Request message for AgentService.ExportApp.
class ExportAppRequest {
  /// The resource name of the app version to export.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/versions/{version}`.
  ///
  /// Optional.
  core.String? appVersion;

  /// The format to export the app in.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : The export format is unspecified.
  /// - "JSON" : The export format is JSON.
  /// - "YAML" : The export format is YAML.
  core.String? exportFormat;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// which to export the app.
  ///
  /// The format of this URI must be `gs:///`. The exported app archive will be
  /// written directly to the specified GCS object.
  ///
  /// Optional.
  core.String? gcsUri;

  ExportAppRequest({this.appVersion, this.exportFormat, this.gcsUri});

  ExportAppRequest.fromJson(core.Map json_)
    : this(
        appVersion: json_['appVersion'] as core.String?,
        exportFormat: json_['exportFormat'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appVersion = this.appVersion;
    final exportFormat = this.exportFormat;
    final gcsUri = this.gcsUri;
    return {
      'appVersion': ?appVersion,
      'exportFormat': ?exportFormat,
      'gcsUri': ?gcsUri,
    };
  }
}

/// Expression condition based on session state.
class ExpressionCondition {
  /// The string representation of cloud.api.Expression condition.
  ///
  /// Required.
  core.String? expression;

  ExpressionCondition({this.expression});

  ExpressionCondition.fromJson(core.Map json_)
    : this(expression: json_['expression'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final expression = this.expression;
    return {'expression': ?expression};
  }
}

/// The file search tool allows the agent to search across the files uploaded by
/// the app/agent developer.
///
/// It has presets to give relatively good quality search over the uploaded
/// files and summarization of the retrieved results.
class FileSearchTool {
  /// The type of the corpus.
  ///
  /// Default is FULLY_MANAGED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CORPUS_TYPE_UNSPECIFIED" : Unspecified corpus type.
  /// - "USER_OWNED" : The corpus is created and owned by the user.
  /// - "FULLY_MANAGED" : The corpus is created by the agent.
  core.String? corpusType;

  /// The tool description.
  ///
  /// Optional.
  core.String? description;

  /// The corpus where files are stored.
  ///
  /// Format: projects/{project}/locations/{location}/ragCorpora/{rag_corpus}
  ///
  /// Optional.
  core.String? fileCorpus;

  /// The tool name.
  ///
  /// Required.
  core.String? name;

  FileSearchTool({
    this.corpusType,
    this.description,
    this.fileCorpus,
    this.name,
  });

  FileSearchTool.fromJson(core.Map json_)
    : this(
        corpusType: json_['corpusType'] as core.String?,
        description: json_['description'] as core.String?,
        fileCorpus: json_['fileCorpus'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final corpusType = this.corpusType;
    final description = this.description;
    final fileCorpus = this.fileCorpus;
    final name = this.name;
    return {
      'corpusType': ?corpusType,
      'description': ?description,
      'fileCorpus': ?fileCorpus,
      'name': ?name,
    };
  }
}

/// Request message for WidgetService.GenerateChatToken.
class GenerateChatTokenRequest {
  /// The deployment of the app to use for the session.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  ///
  /// Required.
  core.String? deployment;

  /// Indicates if live handoff is enabled for the session.
  ///
  /// Optional.
  core.bool? liveHandoffEnabled;

  /// The reCAPTCHA token generated by the client-side chat widget.
  ///
  /// Optional.
  core.String? recaptchaToken;

  GenerateChatTokenRequest({
    this.deployment,
    this.liveHandoffEnabled,
    this.recaptchaToken,
  });

  GenerateChatTokenRequest.fromJson(core.Map json_)
    : this(
        deployment: json_['deployment'] as core.String?,
        liveHandoffEnabled: json_['liveHandoffEnabled'] as core.bool?,
        recaptchaToken: json_['recaptchaToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployment = this.deployment;
    final liveHandoffEnabled = this.liveHandoffEnabled;
    final recaptchaToken = this.recaptchaToken;
    return {
      'deployment': ?deployment,
      'liveHandoffEnabled': ?liveHandoffEnabled,
      'recaptchaToken': ?recaptchaToken,
    };
  }
}

/// Response message for WidgetService.GenerateChatToken.
class GenerateChatTokenResponse {
  /// The session scoped token for chat widget to authenticate with Session
  /// APIs.
  core.String? chatToken;

  /// The time at which the chat token expires.
  core.String? expireTime;

  GenerateChatTokenResponse({this.chatToken, this.expireTime});

  GenerateChatTokenResponse.fromJson(core.Map json_)
    : this(
        chatToken: json_['chatToken'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chatToken = this.chatToken;
    final expireTime = this.expireTime;
    return {'chatToken': ?chatToken, 'expireTime': ?expireTime};
  }
}

/// Search suggestions from Google Search Tool.
class GoogleSearchSuggestions {
  /// Compliant HTML and CSS styling for search suggestions.
  ///
  /// The provided HTML and CSS automatically adapts to your device settings,
  /// displaying in either light or dark mode indicated by
  /// `@media(prefers-color-scheme)`.
  core.List<core.String>? htmls;

  /// List of queries used to perform the google search along with the search
  /// result URIs forming the search suggestions.
  core.List<WebSearchQuery>? webSearchQueries;

  GoogleSearchSuggestions({this.htmls, this.webSearchQueries});

  GoogleSearchSuggestions.fromJson(core.Map json_)
    : this(
        htmls: (json_['htmls'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        webSearchQueries: (json_['webSearchQueries'] as core.List?)
            ?.map(
              (value) => WebSearchQuery.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final htmls = this.htmls;
    final webSearchQueries = this.webSearchQueries;
    return {'htmls': ?htmls, 'webSearchQueries': ?webSearchQueries};
  }
}

/// Represents a tool to perform Google web searches for grounding.
///
/// See
/// https://cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool#google-search.
class GoogleSearchTool {
  /// Content will be fetched directly from these URLs for context and
  /// grounding.
  ///
  /// Example: "https://example.com/path.html". A maximum of 20 URLs are
  /// allowed.
  ///
  /// Optional.
  core.List<core.String>? contextUrls;

  /// Description of the tool's purpose.
  ///
  /// Optional.
  core.String? description;

  /// List of domains to be excluded from the search results.
  ///
  /// Example: "example.com". A maximum of 2000 domains can be excluded.
  ///
  /// Optional.
  core.List<core.String>? excludeDomains;

  /// The name of the tool.
  ///
  /// Required.
  core.String? name;

  /// Specifies domains to restrict search results to.
  ///
  /// Example: "example.com", "another.site". A maximum of 20 domains can be
  /// specified.
  ///
  /// Optional.
  core.List<core.String>? preferredDomains;

  /// Prompt instructions passed to planner on how the search results should be
  /// processed for text and voice.
  ///
  /// Optional.
  GoogleSearchToolPromptConfig? promptConfig;

  GoogleSearchTool({
    this.contextUrls,
    this.description,
    this.excludeDomains,
    this.name,
    this.preferredDomains,
    this.promptConfig,
  });

  GoogleSearchTool.fromJson(core.Map json_)
    : this(
        contextUrls: (json_['contextUrls'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        description: json_['description'] as core.String?,
        excludeDomains: (json_['excludeDomains'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        preferredDomains: (json_['preferredDomains'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        promptConfig: json_.containsKey('promptConfig')
            ? GoogleSearchToolPromptConfig.fromJson(
                json_['promptConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextUrls = this.contextUrls;
    final description = this.description;
    final excludeDomains = this.excludeDomains;
    final name = this.name;
    final preferredDomains = this.preferredDomains;
    final promptConfig = this.promptConfig;
    return {
      'contextUrls': ?contextUrls,
      'description': ?description,
      'excludeDomains': ?excludeDomains,
      'name': ?name,
      'preferredDomains': ?preferredDomains,
      'promptConfig': ?promptConfig,
    };
  }
}

/// Prompt settings used by the model when processing or summarizing the google
/// search results.
class GoogleSearchToolPromptConfig {
  /// Defines the prompt used for the system instructions when interacting with
  /// the agent in chat conversations.
  ///
  /// If not set, default prompt will be used.
  ///
  /// Optional.
  core.String? textPrompt;

  /// Defines the prompt used for the system instructions when interacting with
  /// the agent in voice conversations.
  ///
  /// If not set, default prompt will be used.
  ///
  /// Optional.
  core.String? voicePrompt;

  GoogleSearchToolPromptConfig({this.textPrompt, this.voicePrompt});

  GoogleSearchToolPromptConfig.fromJson(core.Map json_)
    : this(
        textPrompt: json_['textPrompt'] as core.String?,
        voicePrompt: json_['voicePrompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final textPrompt = this.textPrompt;
    final voicePrompt = this.voicePrompt;
    return {'textPrompt': ?textPrompt, 'voicePrompt': ?voicePrompt};
  }
}

/// Guardrail contains a list of checks and balances to keep the agents safe and
/// secure.
class Guardrail {
  /// Action to take when the guardrail is triggered.
  ///
  /// Optional.
  TriggerAction? action;

  /// Guardrail that potentially blocks the conversation based on the result of
  /// the callback execution.
  ///
  /// Optional.
  GuardrailCodeCallback? codeCallback;

  /// Guardrail that bans certain content from being used in the conversation.
  ///
  /// Optional.
  GuardrailContentFilter? contentFilter;

  /// Timestamp when the guardrail was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the guardrail.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the guardrail.
  ///
  /// Required.
  core.String? displayName;

  /// Whether the guardrail is enabled.
  ///
  /// Optional.
  core.bool? enabled;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  core.String? etag;

  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  ///
  /// Optional.
  GuardrailLlmPolicy? llmPolicy;

  /// Guardrail that blocks the conversation if the prompt is considered unsafe
  /// based on the LLM classification.
  ///
  /// Optional.
  GuardrailLlmPromptSecurity? llmPromptSecurity;

  /// Guardrail that blocks the conversation if the LLM response is considered
  /// unsafe based on the model safety settings.
  ///
  /// Optional.
  GuardrailModelSafety? modelSafety;

  /// Identifier.
  ///
  /// The unique identifier of the guardrail. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  core.String? name;

  /// Timestamp when the guardrail was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Guardrail({
    this.action,
    this.codeCallback,
    this.contentFilter,
    this.createTime,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.llmPolicy,
    this.llmPromptSecurity,
    this.modelSafety,
    this.name,
    this.updateTime,
  });

  Guardrail.fromJson(core.Map json_)
    : this(
        action: json_.containsKey('action')
            ? TriggerAction.fromJson(
                json_['action'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        codeCallback: json_.containsKey('codeCallback')
            ? GuardrailCodeCallback.fromJson(
                json_['codeCallback'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contentFilter: json_.containsKey('contentFilter')
            ? GuardrailContentFilter.fromJson(
                json_['contentFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        etag: json_['etag'] as core.String?,
        llmPolicy: json_.containsKey('llmPolicy')
            ? GuardrailLlmPolicy.fromJson(
                json_['llmPolicy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        llmPromptSecurity: json_.containsKey('llmPromptSecurity')
            ? GuardrailLlmPromptSecurity.fromJson(
                json_['llmPromptSecurity']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        modelSafety: json_.containsKey('modelSafety')
            ? GuardrailModelSafety.fromJson(
                json_['modelSafety'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final codeCallback = this.codeCallback;
    final contentFilter = this.contentFilter;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final enabled = this.enabled;
    final etag = this.etag;
    final llmPolicy = this.llmPolicy;
    final llmPromptSecurity = this.llmPromptSecurity;
    final modelSafety = this.modelSafety;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'action': ?action,
      'codeCallback': ?codeCallback,
      'contentFilter': ?contentFilter,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'llmPolicy': ?llmPolicy,
      'llmPromptSecurity': ?llmPromptSecurity,
      'modelSafety': ?modelSafety,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

/// Guardrail that blocks the conversation based on the code callbacks provided.
class GuardrailCodeCallback {
  /// The callback to execute after the agent is called.
  ///
  /// Each callback function is expected to return a structure (e.g., a dict or
  /// object) containing at least: - 'decision': Either 'OK' or 'TRIGGER'. -
  /// 'reason': A string explaining the decision. A 'TRIGGER' decision may halt
  /// further processing.
  ///
  /// Optional.
  Callback? afterAgentCallback;

  /// The callback to execute after the model is called.
  ///
  /// If there are multiple calls to the model, the callback will be executed
  /// multiple times. Each callback function is expected to return a structure
  /// (e.g., a dict or object) containing at least: - 'decision': Either 'OK' or
  /// 'TRIGGER'. - 'reason': A string explaining the decision. A 'TRIGGER'
  /// decision may halt further processing.
  ///
  /// Optional.
  Callback? afterModelCallback;

  /// The callback to execute before the agent is called.
  ///
  /// Each callback function is expected to return a structure (e.g., a dict or
  /// object) containing at least: - 'decision': Either 'OK' or 'TRIGGER'. -
  /// 'reason': A string explaining the decision. A 'TRIGGER' decision may halt
  /// further processing.
  ///
  /// Optional.
  Callback? beforeAgentCallback;

  /// The callback to execute before the model is called.
  ///
  /// If there are multiple calls to the model, the callback will be executed
  /// multiple times. Each callback function is expected to return a structure
  /// (e.g., a dict or object) containing at least: - 'decision': Either 'OK' or
  /// 'TRIGGER'. - 'reason': A string explaining the decision. A 'TRIGGER'
  /// decision may halt further processing.
  ///
  /// Optional.
  Callback? beforeModelCallback;

  GuardrailCodeCallback({
    this.afterAgentCallback,
    this.afterModelCallback,
    this.beforeAgentCallback,
    this.beforeModelCallback,
  });

  GuardrailCodeCallback.fromJson(core.Map json_)
    : this(
        afterAgentCallback: json_.containsKey('afterAgentCallback')
            ? Callback.fromJson(
                json_['afterAgentCallback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        afterModelCallback: json_.containsKey('afterModelCallback')
            ? Callback.fromJson(
                json_['afterModelCallback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        beforeAgentCallback: json_.containsKey('beforeAgentCallback')
            ? Callback.fromJson(
                json_['beforeAgentCallback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        beforeModelCallback: json_.containsKey('beforeModelCallback')
            ? Callback.fromJson(
                json_['beforeModelCallback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final afterAgentCallback = this.afterAgentCallback;
    final afterModelCallback = this.afterModelCallback;
    final beforeAgentCallback = this.beforeAgentCallback;
    final beforeModelCallback = this.beforeModelCallback;
    return {
      'afterAgentCallback': ?afterAgentCallback,
      'afterModelCallback': ?afterModelCallback,
      'beforeAgentCallback': ?beforeAgentCallback,
      'beforeModelCallback': ?beforeModelCallback,
    };
  }
}

/// Guardrail that bans certain content from being used in the conversation.
class GuardrailContentFilter {
  /// List of banned phrases.
  ///
  /// Applies to both user inputs and agent responses.
  ///
  /// Optional.
  core.List<core.String>? bannedContents;

  /// List of banned phrases.
  ///
  /// Applies only to agent responses.
  ///
  /// Optional.
  core.List<core.String>? bannedContentsInAgentResponse;

  /// List of banned phrases.
  ///
  /// Applies only to user inputs.
  ///
  /// Optional.
  core.List<core.String>? bannedContentsInUserInput;

  /// If true, diacritics are ignored during matching.
  ///
  /// Optional.
  core.bool? disregardDiacritics;

  /// Match type for the content filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Match type is not specified.
  /// - "SIMPLE_STRING_MATCH" : Content is matched for substrings character by
  /// character.
  /// - "WORD_BOUNDARY_STRING_MATCH" : Content only matches if the pattern found
  /// in the text is surrounded by word delimiters. Banned phrases can also
  /// contain word delimiters.
  /// - "REGEXP_MATCH" : Content is matched using regular expression syntax.
  core.String? matchType;

  GuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponse,
    this.bannedContentsInUserInput,
    this.disregardDiacritics,
    this.matchType,
  });

  GuardrailContentFilter.fromJson(core.Map json_)
    : this(
        bannedContents: (json_['bannedContents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        bannedContentsInAgentResponse:
            (json_['bannedContentsInAgentResponse'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        bannedContentsInUserInput:
            (json_['bannedContentsInUserInput'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disregardDiacritics: json_['disregardDiacritics'] as core.bool?,
        matchType: json_['matchType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bannedContents = this.bannedContents;
    final bannedContentsInAgentResponse = this.bannedContentsInAgentResponse;
    final bannedContentsInUserInput = this.bannedContentsInUserInput;
    final disregardDiacritics = this.disregardDiacritics;
    final matchType = this.matchType;
    return {
      'bannedContents': ?bannedContents,
      'bannedContentsInAgentResponse': ?bannedContentsInAgentResponse,
      'bannedContentsInUserInput': ?bannedContentsInUserInput,
      'disregardDiacritics': ?disregardDiacritics,
      'matchType': ?matchType,
    };
  }
}

/// Guardrail that blocks the conversation if the LLM response is considered
/// violating the policy based on the LLM classification.
class GuardrailLlmPolicy {
  /// By default, the LLM policy check is bypassed for short utterances.
  ///
  /// Enabling this setting applies the policy check to all utterances,
  /// including those that would normally be skipped.
  ///
  /// Optional.
  core.bool? allowShortUtterance;

  /// If an error occurs during the policy check, fail open and do not trigger
  /// the guardrail.
  ///
  /// Optional.
  core.bool? failOpen;

  /// When checking this policy, consider the last 'n' messages in the
  /// conversation.
  ///
  /// When not set a default value of 10 will be used.
  ///
  /// Optional.
  core.int? maxConversationMessages;

  /// Model settings.
  ///
  /// Optional.
  ModelSettings? modelSettings;

  /// Defines when to apply the policy check during the conversation.
  ///
  /// If set to `POLICY_SCOPE_UNSPECIFIED`, the policy will be applied to the
  /// user input. When applying the policy to the agent response, additional
  /// latency will be introduced before the agent can respond.
  ///
  /// Required.
  /// Possible string values are:
  /// - "POLICY_SCOPE_UNSPECIFIED" : Policy scope is not specified.
  /// - "USER_QUERY" : Policy check is triggered on user input.
  /// - "AGENT_RESPONSE" : Policy check is triggered on agent response. Applying
  /// this policy scope will introduce additional latency before the agent can
  /// respond.
  /// - "USER_QUERY_AND_AGENT_RESPONSE" : Policy check is triggered on both user
  /// input and agent response. Applying this policy scope will introduce
  /// additional latency before the agent can respond.
  core.String? policyScope;

  /// Policy prompt.
  ///
  /// Required.
  core.String? prompt;

  GuardrailLlmPolicy({
    this.allowShortUtterance,
    this.failOpen,
    this.maxConversationMessages,
    this.modelSettings,
    this.policyScope,
    this.prompt,
  });

  GuardrailLlmPolicy.fromJson(core.Map json_)
    : this(
        allowShortUtterance: json_['allowShortUtterance'] as core.bool?,
        failOpen: json_['failOpen'] as core.bool?,
        maxConversationMessages: json_['maxConversationMessages'] as core.int?,
        modelSettings: json_.containsKey('modelSettings')
            ? ModelSettings.fromJson(
                json_['modelSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        policyScope: json_['policyScope'] as core.String?,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowShortUtterance = this.allowShortUtterance;
    final failOpen = this.failOpen;
    final maxConversationMessages = this.maxConversationMessages;
    final modelSettings = this.modelSettings;
    final policyScope = this.policyScope;
    final prompt = this.prompt;
    return {
      'allowShortUtterance': ?allowShortUtterance,
      'failOpen': ?failOpen,
      'maxConversationMessages': ?maxConversationMessages,
      'modelSettings': ?modelSettings,
      'policyScope': ?policyScope,
      'prompt': ?prompt,
    };
  }
}

/// Guardrail that blocks the conversation if the input is considered unsafe
/// based on the LLM classification.
class GuardrailLlmPromptSecurity {
  /// Use a user-defined LlmPolicy to configure the security guardrail.
  ///
  /// Optional.
  GuardrailLlmPolicy? customPolicy;

  /// Use the system's predefined default security settings.
  ///
  /// To select this mode, include an empty 'default_settings' message in the
  /// request. The 'default_prompt_template' field within will be populated by
  /// the server in the response.
  ///
  /// Optional.
  GuardrailLlmPromptSecurityDefaultSecuritySettings? defaultSettings;

  /// Determines the behavior when the guardrail encounters an LLM error.
  ///
  /// - If true: the guardrail is bypassed. - If false (default): the guardrail
  /// triggers/blocks. Note: If a custom policy is provided, this field is
  /// ignored in favor of the policy's 'fail_open' configuration.
  ///
  /// Optional.
  core.bool? failOpen;

  GuardrailLlmPromptSecurity({
    this.customPolicy,
    this.defaultSettings,
    this.failOpen,
  });

  GuardrailLlmPromptSecurity.fromJson(core.Map json_)
    : this(
        customPolicy: json_.containsKey('customPolicy')
            ? GuardrailLlmPolicy.fromJson(
                json_['customPolicy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultSettings: json_.containsKey('defaultSettings')
            ? GuardrailLlmPromptSecurityDefaultSecuritySettings.fromJson(
                json_['defaultSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        failOpen: json_['failOpen'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customPolicy = this.customPolicy;
    final defaultSettings = this.defaultSettings;
    final failOpen = this.failOpen;
    return {
      'customPolicy': ?customPolicy,
      'defaultSettings': ?defaultSettings,
      'failOpen': ?failOpen,
    };
  }
}

/// Configuration for default system security settings.
class GuardrailLlmPromptSecurityDefaultSecuritySettings {
  /// The default prompt template used by the system.
  ///
  /// This field is for display purposes to show the user what prompt the system
  /// uses by default. It is OUTPUT_ONLY.
  ///
  /// Output only.
  core.String? defaultPromptTemplate;

  GuardrailLlmPromptSecurityDefaultSecuritySettings({
    this.defaultPromptTemplate,
  });

  GuardrailLlmPromptSecurityDefaultSecuritySettings.fromJson(core.Map json_)
    : this(
        defaultPromptTemplate: json_['defaultPromptTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultPromptTemplate = this.defaultPromptTemplate;
    return {'defaultPromptTemplate': ?defaultPromptTemplate};
  }
}

/// Model safety settings overrides.
///
/// When this is set, it will override the default settings and trigger the
/// guardrail if the response is considered unsafe.
class GuardrailModelSafety {
  /// List of safety settings.
  ///
  /// Required.
  core.List<GuardrailModelSafetySafetySetting>? safetySettings;

  GuardrailModelSafety({this.safetySettings});

  GuardrailModelSafety.fromJson(core.Map json_)
    : this(
        safetySettings: (json_['safetySettings'] as core.List?)
            ?.map(
              (value) => GuardrailModelSafetySafetySetting.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final safetySettings = this.safetySettings;
    return {'safetySettings': ?safetySettings};
  }
}

/// Safety setting.
class GuardrailModelSafetySafetySetting {
  /// The harm category.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HARM_CATEGORY_UNSPECIFIED" : The harm category is unspecified.
  /// - "HARM_CATEGORY_HATE_SPEECH" : The harm category is hate speech.
  /// - "HARM_CATEGORY_DANGEROUS_CONTENT" : The harm category is dangerous
  /// content.
  /// - "HARM_CATEGORY_HARASSMENT" : The harm category is harassment.
  /// - "HARM_CATEGORY_SEXUALLY_EXPLICIT" : The harm category is sexually
  /// explicit content.
  core.String? category;

  /// The harm block threshold.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HARM_BLOCK_THRESHOLD_UNSPECIFIED" : Unspecified harm block threshold.
  /// - "BLOCK_LOW_AND_ABOVE" : Block low threshold and above (i.e. block more).
  /// - "BLOCK_MEDIUM_AND_ABOVE" : Block medium threshold and above.
  /// - "BLOCK_ONLY_HIGH" : Block only high threshold (i.e. block less).
  /// - "BLOCK_NONE" : Block none.
  /// - "OFF" : Turn off the safety filter.
  core.String? threshold;

  GuardrailModelSafetySafetySetting({this.category, this.threshold});

  GuardrailModelSafetySafetySetting.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        threshold: json_['threshold'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final threshold = this.threshold;
    return {'category': ?category, 'threshold': ?threshold};
  }
}

/// Represents an image input or output in the conversation.
typedef Image = $Image;

/// Request message for AgentService.ImportApp.
class ImportAppRequest {
  /// Raw bytes representing the compressed zip file with the app folder
  /// structure.
  core.String? appContent;
  core.List<core.int> get appContentAsBytes =>
      convert.base64.decode(appContent!);

  set appContentAsBytes(core.List<core.int> bytes_) {
    appContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The ID to use for the imported app.
  ///
  /// * If not specified, a unique ID will be automatically assigned for the
  /// app. * Otherwise, the imported app will use this ID as the final component
  /// of its resource name. If an app with the same ID already exists at the
  /// specified location in the project, the content of the existing app will be
  /// replaced.
  ///
  /// Optional.
  core.String? appId;

  /// The display name of the app to import.
  ///
  /// * If the app is created on import, and the display name is specified, the
  /// imported app will use this display name. If a conflict is detected with an
  /// existing app, a timestamp will be appended to the display name to make it
  /// unique. * If the app is a reimport, this field should not be set.
  /// Providing a display name during reimport will result in an
  /// INVALID_ARGUMENT error.
  ///
  /// Optional.
  core.String? displayName;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI
  /// from which to import app.
  ///
  /// The format of this URI must be `gs:///`.
  core.String? gcsUri;

  /// Flag for overriding the app lock during import.
  ///
  /// If set to true, the import process will ignore the app lock.
  ///
  /// Optional.
  core.bool? ignoreAppLock;

  /// Options governing the import process for the app.
  ///
  /// Optional.
  ImportAppRequestImportOptions? importOptions;

  ImportAppRequest({
    this.appContent,
    this.appId,
    this.displayName,
    this.gcsUri,
    this.ignoreAppLock,
    this.importOptions,
  });

  ImportAppRequest.fromJson(core.Map json_)
    : this(
        appContent: json_['appContent'] as core.String?,
        appId: json_['appId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
        ignoreAppLock: json_['ignoreAppLock'] as core.bool?,
        importOptions: json_.containsKey('importOptions')
            ? ImportAppRequestImportOptions.fromJson(
                json_['importOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appContent = this.appContent;
    final appId = this.appId;
    final displayName = this.displayName;
    final gcsUri = this.gcsUri;
    final ignoreAppLock = this.ignoreAppLock;
    final importOptions = this.importOptions;
    return {
      'appContent': ?appContent,
      'appId': ?appId,
      'displayName': ?displayName,
      'gcsUri': ?gcsUri,
      'ignoreAppLock': ?ignoreAppLock,
      'importOptions': ?importOptions,
    };
  }
}

/// Configuration options for the app import process.
///
/// These options control how the import behaves, particularly when conflicts
/// arise with existing app data.
class ImportAppRequestImportOptions {
  /// The strategy to use when resolving conflicts during import.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONFLICT_RESOLUTION_STRATEGY_UNSPECIFIED" : The conflict resolution
  /// strategy is unspecified.
  /// - "REPLACE" : Replace existing data with imported data. If an app with the
  /// same `app_id` already exists, its content will be updated based on the
  /// imported app. - Resources (App, Agents, Tools, Examples, Guardrails,
  /// Toolsets) in the imported app that have the same display name as existing
  /// resources will overwrite the existing ones. - Imported resources with new
  /// display names will be created. - Existing resources that do not have a
  /// matching display name in the imported app will remain untouched.
  /// - "OVERWRITE" : Overwrite existing data with imported data. If an app with
  /// the same `app_id` already exists, its content will be overwritten with the
  /// imported app. - Existing resources (Agents, Tools, Examples, Guardrails,
  /// Toolsets) in the app will be deleted. - Imported resources will be created
  /// as new resources.
  core.String? conflictResolutionStrategy;

  ImportAppRequestImportOptions({this.conflictResolutionStrategy});

  ImportAppRequestImportOptions.fromJson(core.Map json_)
    : this(
        conflictResolutionStrategy:
            json_['conflictResolutionStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conflictResolutionStrategy = this.conflictResolutionStrategy;
    return {'conflictResolutionStrategy': ?conflictResolutionStrategy};
  }
}

/// InputAudioConfig configures how the CES agent should interpret the incoming
/// audio data.
class InputAudioConfig {
  /// The encoding of the input audio data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Unspecified audio encoding.
  /// - "LINEAR16" : 16-bit linear PCM audio encoding.
  /// - "MULAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/mu-law.
  /// - "ALAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/A-law.
  core.String? audioEncoding;

  /// Whether to enable noise suppression on the input audio.
  ///
  /// Available values are "low", "moderate", "high", "very_high".
  ///
  /// Optional.
  core.String? noiseSuppressionLevel;

  /// The sample rate (in Hertz) of the input audio data.
  ///
  /// Required.
  core.int? sampleRateHertz;

  InputAudioConfig({
    this.audioEncoding,
    this.noiseSuppressionLevel,
    this.sampleRateHertz,
  });

  InputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        noiseSuppressionLevel: json_['noiseSuppressionLevel'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final noiseSuppressionLevel = this.noiseSuppressionLevel;
    final sampleRateHertz = this.sampleRateHertz;
    return {
      'audioEncoding': ?audioEncoding,
      'noiseSuppressionLevel': ?noiseSuppressionLevel,
      'sampleRateHertz': ?sampleRateHertz,
    };
  }
}

/// Language settings of the app.
class LanguageSettings {
  /// The default language code of the app.
  ///
  /// Optional.
  core.String? defaultLanguageCode;

  /// Enables multilingual support.
  ///
  /// If true, agents in the app will use pre-built instructions to improve
  /// handling of multilingual input.
  ///
  /// Optional.
  core.bool? enableMultilingualSupport;

  /// Deprecated: This feature is no longer supported.
  ///
  /// Use `enable_multilingual_support` instead to improve handling of
  /// multilingual input. The action to perform when an agent receives input in
  /// an unsupported language. This can be a predefined action or a custom tool
  /// call. Valid values are: - A tool's full resource name, which triggers a
  /// specific tool execution. - A predefined system action, such as "escalate"
  /// or "exit", which triggers an EndSession signal with corresponding metadata
  /// to terminate the conversation.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? fallbackAction;

  /// List of languages codes supported by the app, in addition to the
  /// `default_language_code`.
  ///
  /// Optional.
  core.List<core.String>? supportedLanguageCodes;

  LanguageSettings({
    this.defaultLanguageCode,
    this.enableMultilingualSupport,
    this.fallbackAction,
    this.supportedLanguageCodes,
  });

  LanguageSettings.fromJson(core.Map json_)
    : this(
        defaultLanguageCode: json_['defaultLanguageCode'] as core.String?,
        enableMultilingualSupport:
            json_['enableMultilingualSupport'] as core.bool?,
        fallbackAction: json_['fallbackAction'] as core.String?,
        supportedLanguageCodes: (json_['supportedLanguageCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultLanguageCode = this.defaultLanguageCode;
    final enableMultilingualSupport = this.enableMultilingualSupport;
    final fallbackAction = this.fallbackAction;
    final supportedLanguageCodes = this.supportedLanguageCodes;
    return {
      'defaultLanguageCode': ?defaultLanguageCode,
      'enableMultilingualSupport': ?enableMultilingualSupport,
      'fallbackAction': ?fallbackAction,
      'supportedLanguageCodes': ?supportedLanguageCodes,
    };
  }
}

/// Response message for AgentService.ListAgents.
class ListAgentsResponse {
  /// The list of agents.
  core.List<Agent>? agents;

  /// A token that can be sent as ListAgentsRequest.page_token to retrieve the
  /// next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
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

/// Response message for AgentService.ListAppVersions.
class ListAppVersionsResponse {
  /// The list of app versions.
  core.List<AppVersion>? appVersions;

  /// A token that can be sent as ListAppVersionsRequest.page_token to retrieve
  /// the next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  ListAppVersionsResponse({this.appVersions, this.nextPageToken});

  ListAppVersionsResponse.fromJson(core.Map json_)
    : this(
        appVersions: (json_['appVersions'] as core.List?)
            ?.map(
              (value) => AppVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appVersions = this.appVersions;
    final nextPageToken = this.nextPageToken;
    return {'appVersions': ?appVersions, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for AgentService.ListApps.
class ListAppsResponse {
  /// The list of apps.
  core.List<App>? apps;

  /// A token that can be sent as ListAppsRequest.page_token to retrieve the
  /// next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAppsResponse({this.apps, this.nextPageToken, this.unreachable});

  ListAppsResponse.fromJson(core.Map json_)
    : this(
        apps: (json_['apps'] as core.List?)
            ?.map(
              (value) =>
                  App.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apps = this.apps;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'apps': ?apps,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Response message for AgentService.ListChangelogs.
class ListChangelogsResponse {
  /// The list of changelogs.
  core.List<Changelog>? changelogs;

  /// A token that can be sent as ListChangelogsRequest.page_token to retrieve
  /// the next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  ListChangelogsResponse({this.changelogs, this.nextPageToken});

  ListChangelogsResponse.fromJson(core.Map json_)
    : this(
        changelogs: (json_['changelogs'] as core.List?)
            ?.map(
              (value) => Changelog.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final changelogs = this.changelogs;
    final nextPageToken = this.nextPageToken;
    return {'changelogs': ?changelogs, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for AgentService.ListConversations.
class ListConversationsResponse {
  /// The list of conversations.
  core.List<Conversation>? conversations;

  /// A token that can be sent as ListConversationsRequest.page_token to
  /// retrieve the next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  ListConversationsResponse({this.conversations, this.nextPageToken});

  ListConversationsResponse.fromJson(core.Map json_)
    : this(
        conversations: (json_['conversations'] as core.List?)
            ?.map(
              (value) => Conversation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversations = this.conversations;
    final nextPageToken = this.nextPageToken;
    return {'conversations': ?conversations, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for AgentService.ListDeployments.
class ListDeploymentsResponse {
  /// The list of deployments.
  core.List<Deployment>? deployments;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDeploymentsResponse({this.deployments, this.nextPageToken});

  ListDeploymentsResponse.fromJson(core.Map json_)
    : this(
        deployments: (json_['deployments'] as core.List?)
            ?.map(
              (value) => Deployment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployments = this.deployments;
    final nextPageToken = this.nextPageToken;
    return {'deployments': ?deployments, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for AgentService.ListExamples.
class ListExamplesResponse {
  /// The list of examples.
  core.List<Example>? examples;

  /// A token that can be sent as ListExamplesRequest.page_token to retrieve the
  /// next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  ListExamplesResponse({this.examples, this.nextPageToken});

  ListExamplesResponse.fromJson(core.Map json_)
    : this(
        examples: (json_['examples'] as core.List?)
            ?.map(
              (value) => Example.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final examples = this.examples;
    final nextPageToken = this.nextPageToken;
    return {'examples': ?examples, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for AgentService.ListGuardrails.
class ListGuardrailsResponse {
  /// The list of guardrails.
  core.List<Guardrail>? guardrails;

  /// A token that can be sent as ListGuardrailsRequest.page_token to retrieve
  /// the next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  ListGuardrailsResponse({this.guardrails, this.nextPageToken});

  ListGuardrailsResponse.fromJson(core.Map json_)
    : this(
        guardrails: (json_['guardrails'] as core.List?)
            ?.map(
              (value) => Guardrail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final guardrails = this.guardrails;
    final nextPageToken = this.nextPageToken;
    return {'guardrails': ?guardrails, 'nextPageToken': ?nextPageToken};
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

/// Response message for AgentService.ListTools.
class ListToolsResponse {
  /// A token that can be sent as ListToolsRequest.page_token to retrieve the
  /// next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of tools.
  core.List<Tool>? tools;

  ListToolsResponse({this.nextPageToken, this.tools});

  ListToolsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) =>
                  Tool.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final tools = this.tools;
    return {'nextPageToken': ?nextPageToken, 'tools': ?tools};
  }
}

/// Response message for AgentService.ListToolsets.
class ListToolsetsResponse {
  /// A token that can be sent as ListToolsetsRequest.page_token to retrieve the
  /// next page.
  ///
  /// Absence of this field indicates there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of toolsets.
  core.List<Toolset>? toolsets;

  ListToolsetsResponse({this.nextPageToken, this.toolsets});

  ListToolsetsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        toolsets: (json_['toolsets'] as core.List?)
            ?.map(
              (value) => Toolset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final toolsets = this.toolsets;
    return {'nextPageToken': ?nextPageToken, 'toolsets': ?toolsets};
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Settings to describe the logging behaviors for the app.
class LoggingSettings {
  /// Configuration for how audio interactions should be recorded.
  ///
  /// Optional.
  AudioRecordingConfig? audioRecordingConfig;

  /// Settings to describe the BigQuery export behaviors for the app.
  ///
  /// The conversation data will be exported to BigQuery tables if it is
  /// enabled.
  ///
  /// Optional.
  BigQueryExportSettings? bigqueryExportSettings;

  /// Settings to describe the Cloud Logging behaviors for the app.
  ///
  /// Optional.
  CloudLoggingSettings? cloudLoggingSettings;

  /// Settings to describe the conversation logging behaviors for the app.
  ///
  /// Optional.
  ConversationLoggingSettings? conversationLoggingSettings;

  /// Configuration for how audio interactions should be recorded for the
  /// evaluation.
  ///
  /// By default, audio recording is not enabled for evaluation sessions.
  ///
  /// Optional.
  AudioRecordingConfig? evaluationAudioRecordingConfig;

  /// Settings to describe the conversation data collection behaviors for the
  /// LLM analysis pipeline for the app.
  ///
  /// Optional.
  MetricAnalysisSettings? metricAnalysisSettings;

  /// Configuration for how sensitive data should be redacted.
  ///
  /// Optional.
  RedactionConfig? redactionConfig;

  /// Configures recording of unredacted audio.
  ///
  /// Use this to maintain a raw backup with restricted access when audio
  /// redaction is enabled, typically for auditing or monitoring purposes.
  ///
  /// Optional.
  AudioRecordingConfig? unredactedAudioRecordingConfig;

  LoggingSettings({
    this.audioRecordingConfig,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.evaluationAudioRecordingConfig,
    this.metricAnalysisSettings,
    this.redactionConfig,
    this.unredactedAudioRecordingConfig,
  });

  LoggingSettings.fromJson(core.Map json_)
    : this(
        audioRecordingConfig: json_.containsKey('audioRecordingConfig')
            ? AudioRecordingConfig.fromJson(
                json_['audioRecordingConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bigqueryExportSettings: json_.containsKey('bigqueryExportSettings')
            ? BigQueryExportSettings.fromJson(
                json_['bigqueryExportSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudLoggingSettings: json_.containsKey('cloudLoggingSettings')
            ? CloudLoggingSettings.fromJson(
                json_['cloudLoggingSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conversationLoggingSettings:
            json_.containsKey('conversationLoggingSettings')
            ? ConversationLoggingSettings.fromJson(
                json_['conversationLoggingSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        evaluationAudioRecordingConfig:
            json_.containsKey('evaluationAudioRecordingConfig')
            ? AudioRecordingConfig.fromJson(
                json_['evaluationAudioRecordingConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricAnalysisSettings: json_.containsKey('metricAnalysisSettings')
            ? MetricAnalysisSettings.fromJson(
                json_['metricAnalysisSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        redactionConfig: json_.containsKey('redactionConfig')
            ? RedactionConfig.fromJson(
                json_['redactionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        unredactedAudioRecordingConfig:
            json_.containsKey('unredactedAudioRecordingConfig')
            ? AudioRecordingConfig.fromJson(
                json_['unredactedAudioRecordingConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioRecordingConfig = this.audioRecordingConfig;
    final bigqueryExportSettings = this.bigqueryExportSettings;
    final cloudLoggingSettings = this.cloudLoggingSettings;
    final conversationLoggingSettings = this.conversationLoggingSettings;
    final evaluationAudioRecordingConfig = this.evaluationAudioRecordingConfig;
    final metricAnalysisSettings = this.metricAnalysisSettings;
    final redactionConfig = this.redactionConfig;
    final unredactedAudioRecordingConfig = this.unredactedAudioRecordingConfig;
    return {
      'audioRecordingConfig': ?audioRecordingConfig,
      'bigqueryExportSettings': ?bigqueryExportSettings,
      'cloudLoggingSettings': ?cloudLoggingSettings,
      'conversationLoggingSettings': ?conversationLoggingSettings,
      'evaluationAudioRecordingConfig': ?evaluationAudioRecordingConfig,
      'metricAnalysisSettings': ?metricAnalysisSettings,
      'redactionConfig': ?redactionConfig,
      'unredactedAudioRecordingConfig': ?unredactedAudioRecordingConfig,
    };
  }
}

/// An MCP tool.
///
/// See https://modelcontextprotocol.io/specification/2025-06-18/server/tools
/// for more details.
class McpTool {
  /// Authentication information required to execute the tool against the MCP
  /// server.
  ///
  /// For bearer token authentication, the token applies only to tool execution,
  /// not to listing tools. This requires that tools can be listed without
  /// authentication.
  ///
  /// Optional.
  ApiAuthentication? apiAuthentication;

  /// The custom headers to send in the request to the MCP server.
  ///
  /// The values must be in the format `$context.variables.` and can be set in
  /// the session variables. See
  /// https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool/open-api#openapi-injection
  /// for more details.
  ///
  /// Optional.
  core.Map<core.String, core.String>? customHeaders;

  /// The description of the MCP tool.
  ///
  /// Optional.
  core.String? description;

  /// The schema of the input arguments of the MCP tool.
  ///
  /// Optional.
  Schema? inputSchema;

  /// The name of the MCP tool.
  ///
  /// Required.
  core.String? name;

  /// The schema of the output arguments of the MCP tool.
  ///
  /// Optional.
  Schema? outputSchema;

  /// The server address of the MCP server, e.g., "https://example.com/mcp/".
  ///
  /// If the server is built with the MCP SDK, the url should be suffixed with
  /// "/mcp/". Only Streamable HTTP transport based servers are supported. This
  /// is the same as the server_address in the McpToolset. See
  /// https://modelcontextprotocol.io/specification/2025-03-26/basic/transports#streamable-http
  /// for more details.
  ///
  /// Required.
  core.String? serverAddress;

  /// Service Directory configuration for VPC-SC, used to resolve service names
  /// within a perimeter.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The TLS configuration.
  ///
  /// Includes the custom server certificates that the client should trust.
  ///
  /// Optional.
  TlsConfig? tlsConfig;

  McpTool({
    this.apiAuthentication,
    this.customHeaders,
    this.description,
    this.inputSchema,
    this.name,
    this.outputSchema,
    this.serverAddress,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  McpTool.fromJson(core.Map json_)
    : this(
        apiAuthentication: json_.containsKey('apiAuthentication')
            ? ApiAuthentication.fromJson(
                json_['apiAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        customHeaders:
            (json_['customHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        description: json_['description'] as core.String?,
        inputSchema: json_.containsKey('inputSchema')
            ? Schema.fromJson(
                json_['inputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        outputSchema: json_.containsKey('outputSchema')
            ? Schema.fromJson(
                json_['outputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serverAddress: json_['serverAddress'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tlsConfig: json_.containsKey('tlsConfig')
            ? TlsConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiAuthentication = this.apiAuthentication;
    final customHeaders = this.customHeaders;
    final description = this.description;
    final inputSchema = this.inputSchema;
    final name = this.name;
    final outputSchema = this.outputSchema;
    final serverAddress = this.serverAddress;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final tlsConfig = this.tlsConfig;
    return {
      'apiAuthentication': ?apiAuthentication,
      'customHeaders': ?customHeaders,
      'description': ?description,
      'inputSchema': ?inputSchema,
      'name': ?name,
      'outputSchema': ?outputSchema,
      'serverAddress': ?serverAddress,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'tlsConfig': ?tlsConfig,
    };
  }
}

/// A toolset that contains a list of tools that are offered by the MCP server.
class McpToolset {
  /// Authentication information required to access tools and execute a tool
  /// against the MCP server.
  ///
  /// For bearer token authentication, the token applies only to tool execution,
  /// not to listing tools. This requires that tools can be listed without
  /// authentication.
  ///
  /// Optional.
  ApiAuthentication? apiAuthentication;

  /// The custom headers to send in the request to the MCP server.
  ///
  /// The values must be in the format `$context.variables.` and can be set in
  /// the session variables. See
  /// https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool/open-api#openapi-injection
  /// for more details.
  ///
  /// Optional.
  core.Map<core.String, core.String>? customHeaders;

  /// The address of the MCP server, for example, "https://example.com/mcp/".
  ///
  /// If the server is built with the MCP SDK, the url should be suffixed with
  /// "/mcp/". Only Streamable HTTP transport based servers are supported. See
  /// https://modelcontextprotocol.io/specification/2025-03-26/basic/transports#streamable-http
  /// for more details.
  ///
  /// Required.
  core.String? serverAddress;

  /// Service Directory configuration for VPC-SC, used to resolve service names
  /// within a perimeter.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The TLS configuration.
  ///
  /// Includes the custom server certificates that the client should trust.
  ///
  /// Optional.
  TlsConfig? tlsConfig;

  McpToolset({
    this.apiAuthentication,
    this.customHeaders,
    this.serverAddress,
    this.serviceDirectoryConfig,
    this.tlsConfig,
  });

  McpToolset.fromJson(core.Map json_)
    : this(
        apiAuthentication: json_.containsKey('apiAuthentication')
            ? ApiAuthentication.fromJson(
                json_['apiAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        customHeaders:
            (json_['customHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        serverAddress: json_['serverAddress'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tlsConfig: json_.containsKey('tlsConfig')
            ? TlsConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiAuthentication = this.apiAuthentication;
    final customHeaders = this.customHeaders;
    final serverAddress = this.serverAddress;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final tlsConfig = this.tlsConfig;
    return {
      'apiAuthentication': ?apiAuthentication,
      'customHeaders': ?customHeaders,
      'serverAddress': ?serverAddress,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'tlsConfig': ?tlsConfig,
    };
  }
}

/// A message within a conversation.
class Message {
  /// Content of the message as a series of chunks.
  ///
  /// Optional.
  core.List<Chunk>? chunks;

  /// Timestamp when the message was sent or received.
  ///
  /// Should not be used if the message is part of an example.
  ///
  /// Optional.
  core.String? eventTime;

  /// The role within the conversation, e.g., user, agent.
  ///
  /// Optional.
  core.String? role;

  Message({this.chunks, this.eventTime, this.role});

  Message.fromJson(core.Map json_)
    : this(
        chunks: (json_['chunks'] as core.List?)
            ?.map(
              (value) =>
                  Chunk.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        eventTime: json_['eventTime'] as core.String?,
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chunks = this.chunks;
    final eventTime = this.eventTime;
    final role = this.role;
    return {'chunks': ?chunks, 'eventTime': ?eventTime, 'role': ?role};
  }
}

/// Settings to describe the conversation data collection behaviors for LLM
/// analysis metrics pipeline.
class MetricAnalysisSettings {
  /// Whether to collect conversation data for llm analysis metrics.
  ///
  /// If true, conversation data will not be collected for llm analysis metrics;
  /// otherwise, conversation data will be collected.
  ///
  /// Optional.
  core.bool? llmMetricsOptedOut;

  MetricAnalysisSettings({this.llmMetricsOptedOut});

  MetricAnalysisSettings.fromJson(core.Map json_)
    : this(llmMetricsOptedOut: json_['llmMetricsOptedOut'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final llmMetricsOptedOut = this.llmMetricsOptedOut;
    return {'llmMetricsOptedOut': ?llmMetricsOptedOut};
  }
}

/// Mock tool calls configuration for the session.
class MockConfig {
  /// All tool calls to mock for the duration of the session.
  ///
  /// Optional.
  core.List<MockedToolCall>? mockedToolCalls;

  /// Beavhior for tool calls that don't match any args patterns in
  /// mocked_tool_calls.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNMATCHED_TOOL_CALL_BEHAVIOR_UNSPECIFIED" : Default value. This value
  /// is unused.
  /// - "FAIL" : Throw an error for any tool calls that don't match a mock
  /// expected input pattern.
  /// - "PASS_THROUGH" : For unmatched tool calls, pass the tool call through to
  /// real tool.
  core.String? unmatchedToolCallBehavior;

  MockConfig({this.mockedToolCalls, this.unmatchedToolCallBehavior});

  MockConfig.fromJson(core.Map json_)
    : this(
        mockedToolCalls: (json_['mockedToolCalls'] as core.List?)
            ?.map(
              (value) => MockedToolCall.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unmatchedToolCallBehavior:
            json_['unmatchedToolCallBehavior'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mockedToolCalls = this.mockedToolCalls;
    final unmatchedToolCallBehavior = this.unmatchedToolCallBehavior;
    return {
      'mockedToolCalls': ?mockedToolCalls,
      'unmatchedToolCallBehavior': ?unmatchedToolCallBehavior,
    };
  }
}

/// A mocked tool call.
///
/// Expresses the target tool + a pattern to match against that tool's args /
/// inputs. If the pattern matches, then the mock response will be returned.
class MockedToolCall {
  /// A pattern to match against the args / inputs of all dispatched tool calls.
  ///
  /// If the tool call inputs match this pattern, then mock output will be
  /// returned.
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? expectedArgsPattern;

  /// The mock response / output to return if the tool call args / inputs match
  /// the pattern.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? mockResponse;

  /// Use tool_identifier instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? tool;

  /// The name of the tool to mock.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  ///
  /// Optional.
  core.String? toolId;

  /// The toolset to mock.
  ///
  /// Optional.
  ToolsetTool? toolset;

  MockedToolCall({
    this.expectedArgsPattern,
    this.mockResponse,
    this.tool,
    this.toolId,
    this.toolset,
  });

  MockedToolCall.fromJson(core.Map json_)
    : this(
        expectedArgsPattern: json_.containsKey('expectedArgsPattern')
            ? json_['expectedArgsPattern']
                  as core.Map<core.String, core.dynamic>
            : null,
        mockResponse: json_.containsKey('mockResponse')
            ? json_['mockResponse'] as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
        toolId: json_['toolId'] as core.String?,
        toolset: json_.containsKey('toolset')
            ? ToolsetTool.fromJson(
                json_['toolset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expectedArgsPattern = this.expectedArgsPattern;
    final mockResponse = this.mockResponse;
    final tool = this.tool;
    final toolId = this.toolId;
    final toolset = this.toolset;
    return {
      'expectedArgsPattern': ?expectedArgsPattern,
      'mockResponse': ?mockResponse,
      'tool': ?tool,
      'toolId': ?toolId,
      'toolset': ?toolset,
    };
  }
}

/// Model settings contains various configurations for the LLM model.
class ModelSettings {
  /// The LLM model that the agent should use.
  ///
  /// If not set, the agent will inherit the model from its parent agent.
  ///
  /// Optional.
  core.String? model;

  /// If set, this temperature will be used for the LLM model.
  ///
  /// Temperature controls the randomness of the model's responses. Lower
  /// temperatures produce responses that are more predictable. Higher
  /// temperatures produce responses that are more creative.
  ///
  /// Optional.
  core.double? temperature;

  ModelSettings({this.model, this.temperature});

  ModelSettings.fromJson(core.Map json_)
    : this(
        model: json_['model'] as core.String?,
        temperature: (json_['temperature'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final model = this.model;
    final temperature = this.temperature;
    return {'model': ?model, 'temperature': ?temperature};
  }
}

/// Configurations for authentication with OAuth.
class OAuthConfig {
  /// The client ID from the OAuth provider.
  ///
  /// Required.
  core.String? clientId;

  /// The name of the SecretManager secret version resource storing the client
  /// secret.
  ///
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}` Note: You
  /// should grant `roles/secretmanager.secretAccessor` role to the CES service
  /// agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Required.
  core.String? clientSecretVersion;

  /// OAuth grant types.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OAUTH_GRANT_TYPE_UNSPECIFIED" : Unspecified. Defaults to
  /// CLIENT_CREDENTIAL.
  /// - "CLIENT_CREDENTIAL" : Represents the
  /// [client credential flow](https://oauth.net/2/grant-types/client-credentials).
  core.String? oauthGrantType;

  /// The OAuth scopes to grant.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  /// The token endpoint in the OAuth provider to exchange for an access token.
  ///
  /// Required.
  core.String? tokenEndpoint;

  OAuthConfig({
    this.clientId,
    this.clientSecretVersion,
    this.oauthGrantType,
    this.scopes,
    this.tokenEndpoint,
  });

  OAuthConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecretVersion: json_['clientSecretVersion'] as core.String?,
        oauthGrantType: json_['oauthGrantType'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecretVersion = this.clientSecretVersion;
    final oauthGrantType = this.oauthGrantType;
    final scopes = this.scopes;
    final tokenEndpoint = this.tokenEndpoint;
    return {
      'clientId': ?clientId,
      'clientSecretVersion': ?clientSecretVersion,
      'oauthGrantType': ?oauthGrantType,
      'scopes': ?scopes,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }
}

/// A remote API tool defined by an OpenAPI schema.
class OpenApiTool {
  /// Authentication information required by the API.
  ///
  /// Optional.
  ApiAuthentication? apiAuthentication;

  /// The description of the tool.
  ///
  /// If not provided, the description of the tool will be derived from the
  /// OpenAPI schema, from `operation.description` or `operation.summary`.
  ///
  /// Optional.
  core.String? description;

  /// If true, the agent will ignore unknown fields in the API response.
  ///
  /// Optional.
  core.bool? ignoreUnknownFields;

  /// The name of the tool.
  ///
  /// If not provided, the name of the tool will be derived from the OpenAPI
  /// schema, from `operation.operationId`.
  ///
  /// Optional.
  core.String? name;

  /// The OpenAPI schema in JSON or YAML format.
  ///
  /// Required.
  core.String? openApiSchema;

  /// Service Directory configuration.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The TLS configuration.
  ///
  /// Includes the custom server certificates that the client will trust.
  ///
  /// Optional.
  TlsConfig? tlsConfig;

  /// The server URL of the Open API schema.
  ///
  /// This field is only set in tools in the environment dependencies during the
  /// export process if the schema contains a server url. During the import
  /// process, if this url is present in the environment dependencies and the
  /// schema has the $env_var placeholder, it will replace the placeholder in
  /// the schema.
  ///
  /// Optional.
  core.String? url;

  OpenApiTool({
    this.apiAuthentication,
    this.description,
    this.ignoreUnknownFields,
    this.name,
    this.openApiSchema,
    this.serviceDirectoryConfig,
    this.tlsConfig,
    this.url,
  });

  OpenApiTool.fromJson(core.Map json_)
    : this(
        apiAuthentication: json_.containsKey('apiAuthentication')
            ? ApiAuthentication.fromJson(
                json_['apiAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        ignoreUnknownFields: json_['ignoreUnknownFields'] as core.bool?,
        name: json_['name'] as core.String?,
        openApiSchema: json_['openApiSchema'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tlsConfig: json_.containsKey('tlsConfig')
            ? TlsConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiAuthentication = this.apiAuthentication;
    final description = this.description;
    final ignoreUnknownFields = this.ignoreUnknownFields;
    final name = this.name;
    final openApiSchema = this.openApiSchema;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final tlsConfig = this.tlsConfig;
    final url = this.url;
    return {
      'apiAuthentication': ?apiAuthentication,
      'description': ?description,
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'name': ?name,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'tlsConfig': ?tlsConfig,
      'url': ?url,
    };
  }
}

/// A toolset that contains a list of tools that are defined by an OpenAPI
/// schema.
class OpenApiToolset {
  /// Authentication information required by the API.
  ///
  /// Optional.
  ApiAuthentication? apiAuthentication;

  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  ///
  /// Optional.
  core.bool? ignoreUnknownFields;

  /// The OpenAPI schema of the toolset.
  ///
  /// Required.
  core.String? openApiSchema;

  /// Service Directory configuration.
  ///
  /// Optional.
  ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The TLS configuration.
  ///
  /// Includes the custom server certificates
  ///
  /// Optional.
  TlsConfig? tlsConfig;

  /// The server URL of the Open API schema.
  ///
  /// This field is only set in toolsets in the environment dependencies during
  /// the export process if the schema contains a server url. During the import
  /// process, if this url is present in the environment dependencies and the
  /// schema has the $env_var placeholder, it will replace the placeholder in
  /// the schema.
  ///
  /// Optional.
  core.String? url;

  OpenApiToolset({
    this.apiAuthentication,
    this.ignoreUnknownFields,
    this.openApiSchema,
    this.serviceDirectoryConfig,
    this.tlsConfig,
    this.url,
  });

  OpenApiToolset.fromJson(core.Map json_)
    : this(
        apiAuthentication: json_.containsKey('apiAuthentication')
            ? ApiAuthentication.fromJson(
                json_['apiAuthentication']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ignoreUnknownFields: json_['ignoreUnknownFields'] as core.bool?,
        openApiSchema: json_['openApiSchema'] as core.String?,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? ServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tlsConfig: json_.containsKey('tlsConfig')
            ? TlsConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiAuthentication = this.apiAuthentication;
    final ignoreUnknownFields = this.ignoreUnknownFields;
    final openApiSchema = this.openApiSchema;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final tlsConfig = this.tlsConfig;
    final url = this.url;
    return {
      'apiAuthentication': ?apiAuthentication,
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'tlsConfig': ?tlsConfig,
      'url': ?url,
    };
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

/// OutputAudioConfig configures how the CES agent should synthesize outgoing
/// audio responses.
class OutputAudioConfig {
  /// The encoding of the output audio data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Unspecified audio encoding.
  /// - "LINEAR16" : 16-bit linear PCM audio encoding.
  /// - "MULAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/mu-law.
  /// - "ALAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/A-law.
  core.String? audioEncoding;

  /// The sample rate (in Hertz) of the output audio data.
  ///
  /// Required.
  core.int? sampleRateHertz;

  OutputAudioConfig({this.audioEncoding, this.sampleRateHertz});

  OutputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final sampleRateHertz = this.sampleRateHertz;
    return {
      'audioEncoding': ?audioEncoding,
      'sampleRateHertz': ?sampleRateHertz,
    };
  }
}

/// Python code block to evaluate the condition.
class PythonCodeCondition {
  /// The python code to execute.
  ///
  /// Required.
  core.String? pythonCode;

  PythonCodeCondition({this.pythonCode});

  PythonCodeCondition.fromJson(core.Map json_)
    : this(pythonCode: json_['pythonCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final pythonCode = this.pythonCode;
    return {'pythonCode': ?pythonCode};
  }
}

/// A Python function tool.
class PythonFunction {
  /// The description of the Python function, parsed from the python code's
  /// docstring.
  ///
  /// Output only.
  core.String? description;

  /// The name of the Python function to execute.
  ///
  /// Must match a Python function name defined in the python code. Case
  /// sensitive. If the name is not provided, the first function defined in the
  /// python code will be used.
  ///
  /// Optional.
  core.String? name;

  /// The Python code to execute for the tool.
  ///
  /// Optional.
  core.String? pythonCode;

  PythonFunction({this.description, this.name, this.pythonCode});

  PythonFunction.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        pythonCode: json_['pythonCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    final pythonCode = this.pythonCode;
    return {
      'description': ?description,
      'name': ?name,
      'pythonCode': ?pythonCode,
    };
  }
}

/// Configuration to instruct how sensitive data should be handled.
class RedactionConfig {
  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name to
  /// instruct on how to de-identify content.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}`
  ///
  /// Optional.
  core.String? deidentifyTemplate;

  /// If true, redaction will be applied in various logging scenarios, including
  /// conversation history, Cloud Logging and audio recording.
  ///
  /// Optional.
  core.bool? enableRedaction;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name to
  /// configure detection of sensitive data types.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/inspectTemplates/{inspect_template}`
  ///
  /// Optional.
  core.String? inspectTemplate;

  RedactionConfig({
    this.deidentifyTemplate,
    this.enableRedaction,
    this.inspectTemplate,
  });

  RedactionConfig.fromJson(core.Map json_)
    : this(
        deidentifyTemplate: json_['deidentifyTemplate'] as core.String?,
        enableRedaction: json_['enableRedaction'] as core.bool?,
        inspectTemplate: json_['inspectTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deidentifyTemplate = this.deidentifyTemplate;
    final enableRedaction = this.enableRedaction;
    final inspectTemplate = this.inspectTemplate;
    return {
      'deidentifyTemplate': ?deidentifyTemplate,
      'enableRedaction': ?enableRedaction,
      'inspectTemplate': ?inspectTemplate,
    };
  }
}

/// Request message for AgentService.RestoreAppVersion
typedef RestoreAppVersionRequest = $Empty;

/// Request message for ToolService.RetrieveToolSchema.
class RetrieveToolSchemaRequest {
  /// The name of the tool to retrieve the schema for.
  ///
  /// Format: projects/{project}/locations/{location}/apps/{app}/tools/{tool}
  ///
  /// Optional.
  core.String? tool;

  /// The toolset tool to retrieve the schema for.
  ///
  /// Only one tool should match the predicate from the toolset. Otherwise, an
  /// error will be returned.
  ///
  /// Optional.
  ToolsetTool? toolsetTool;

  RetrieveToolSchemaRequest({this.tool, this.toolsetTool});

  RetrieveToolSchemaRequest.fromJson(core.Map json_)
    : this(
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    return {'tool': ?tool, 'toolsetTool': ?toolsetTool};
  }
}

/// Response message for ToolService.RetrieveToolSchema.
class RetrieveToolSchemaResponse {
  /// The schema of the tool input parameters.
  Schema? inputSchema;

  /// The schema of the tool output parameters.
  Schema? outputSchema;

  /// The name of the tool that the schema is for.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  core.String? tool;

  /// The toolset tool that the schema is for.
  ToolsetTool? toolsetTool;

  RetrieveToolSchemaResponse({
    this.inputSchema,
    this.outputSchema,
    this.tool,
    this.toolsetTool,
  });

  RetrieveToolSchemaResponse.fromJson(core.Map json_)
    : this(
        inputSchema: json_.containsKey('inputSchema')
            ? Schema.fromJson(
                json_['inputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputSchema: json_.containsKey('outputSchema')
            ? Schema.fromJson(
                json_['outputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputSchema = this.inputSchema;
    final outputSchema = this.outputSchema;
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    return {
      'inputSchema': ?inputSchema,
      'outputSchema': ?outputSchema,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool,
    };
  }
}

/// Request message for ToolService.RetrieveTools.
class RetrieveToolsRequest {
  /// The identifiers of the tools to retrieve from the toolset.
  ///
  /// If empty, all tools in the toolset will be returned.
  ///
  /// Optional.
  core.List<core.String>? toolIds;

  RetrieveToolsRequest({this.toolIds});

  RetrieveToolsRequest.fromJson(core.Map json_)
    : this(
        toolIds: (json_['toolIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolIds = this.toolIds;
    return {'toolIds': ?toolIds};
  }
}

/// Response message for ToolService.RetrieveTools.
class RetrieveToolsResponse {
  /// The list of tools that are included in the specified toolset.
  core.List<Tool>? tools;

  RetrieveToolsResponse({this.tools});

  RetrieveToolsResponse.fromJson(core.Map json_)
    : this(
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) =>
                  Tool.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tools = this.tools;
    return {'tools': ?tools};
  }
}

/// Request message for SessionService.RunSession.
class RunSessionRequest {
  /// The configuration for the session.
  ///
  /// Required.
  SessionConfig? config;

  /// Inputs for the session.
  ///
  /// Required.
  core.List<SessionInput>? inputs;

  RunSessionRequest({this.config, this.inputs});

  RunSessionRequest.fromJson(core.Map json_)
    : this(
        config: json_.containsKey('config')
            ? SessionConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inputs: (json_['inputs'] as core.List?)
            ?.map(
              (value) => SessionInput.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final config = this.config;
    final inputs = this.inputs;
    return {'config': ?config, 'inputs': ?inputs};
  }
}

/// Response message for SessionService.RunSession.
class RunSessionResponse {
  /// Outputs for the session.
  core.List<SessionOutput>? outputs;

  RunSessionResponse({this.outputs});

  RunSessionResponse.fromJson(core.Map json_)
    : this(
        outputs: (json_['outputs'] as core.List?)
            ?.map(
              (value) => SessionOutput.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final outputs = this.outputs;
    return {'outputs': ?outputs};
  }
}

/// Represents a select subset of an OpenAPI 3.0 schema object.
class Schema {
  /// Can either be a boolean or an object, controls the presence of additional
  /// properties.
  ///
  /// Optional.
  Schema? additionalProperties;

  /// The value should be validated against any (one or more) of the subschemas
  /// in the list.
  ///
  /// Optional.
  core.List<Schema>? anyOf;

  /// Default value of the data.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? default_;

  /// A map of definitions for use by `ref`.
  ///
  /// Only allowed at the root of the schema.
  ///
  /// Optional.
  core.Map<core.String, Schema>? defs;

  /// The description of the data.
  ///
  /// Optional.
  core.String? description;

  /// Possible values of the element of primitive type with enum format.
  ///
  /// Examples: 1. We can define direction as : {type:STRING, format:enum,
  /// enum:\["EAST", NORTH", "SOUTH", "WEST"\]} 2. We can define apartment
  /// number as : {type:INTEGER, format:enum, enum:\["101", "201", "301"\]}
  ///
  /// Optional.
  core.List<core.String>? enum_;

  /// Schema of the elements of Type.ARRAY.
  ///
  /// Optional.
  Schema? items;

  /// Maximum number of the elements for Type.ARRAY.
  ///
  /// Optional.
  core.String? maxItems;

  /// Maximum value for Type.INTEGER and Type.NUMBER.
  ///
  /// Optional.
  core.double? maximum;

  /// Minimum number of the elements for Type.ARRAY.
  ///
  /// Optional.
  core.String? minItems;

  /// Minimum value for Type.INTEGER and Type.NUMBER.
  ///
  /// Optional.
  core.double? minimum;

  /// Indicates if the value may be null.
  ///
  /// Optional.
  core.bool? nullable;

  /// Schemas of initial elements of Type.ARRAY.
  ///
  /// Optional.
  core.List<Schema>? prefixItems;

  /// Properties of Type.OBJECT.
  ///
  /// Optional.
  core.Map<core.String, Schema>? properties;

  /// Allows indirect references between schema nodes.
  ///
  /// The value should be a valid reference to a child of the root `defs`. For
  /// example, the following schema defines a reference to a schema node named
  /// "Pet": ``` type: object properties: pet: ref: #/defs/Pet defs: Pet: type:
  /// object properties: name: type: string ``` The value of the "pet" property
  /// is a reference to the schema node named "Pet". See details in
  /// https://json-schema.org/understanding-json-schema/structuring.
  ///
  /// Optional.
  core.String? ref;

  /// Required properties of Type.OBJECT.
  ///
  /// Optional.
  core.List<core.String>? required;

  /// The title of the schema.
  ///
  /// Optional.
  core.String? title;

  /// The type of the data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type unspecified.
  /// - "STRING" : String type.
  /// - "INTEGER" : Integer type.
  /// - "NUMBER" : Number type.
  /// - "BOOLEAN" : Boolean type.
  /// - "OBJECT" : Object type.
  /// - "ARRAY" : Array type.
  core.String? type;

  /// Indicate the items in the array must be unique.
  ///
  /// Only applies to TYPE.ARRAY.
  ///
  /// Optional.
  core.bool? uniqueItems;

  Schema({
    this.additionalProperties,
    this.anyOf,
    this.default_,
    this.defs,
    this.description,
    this.enum_,
    this.items,
    this.maxItems,
    this.maximum,
    this.minItems,
    this.minimum,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.required,
    this.title,
    this.type,
    this.uniqueItems,
  });

  Schema.fromJson(core.Map json_)
    : this(
        additionalProperties: json_.containsKey('additionalProperties')
            ? Schema.fromJson(
                json_['additionalProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        anyOf: (json_['anyOf'] as core.List?)
            ?.map(
              (value) =>
                  Schema.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        default_: json_['default'],
        defs: (json_['defs'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Schema.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        description: json_['description'] as core.String?,
        enum_: (json_['enum'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        items: json_.containsKey('items')
            ? Schema.fromJson(
                json_['items'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxItems: json_['maxItems'] as core.String?,
        maximum: (json_['maximum'] as core.num?)?.toDouble(),
        minItems: json_['minItems'] as core.String?,
        minimum: (json_['minimum'] as core.num?)?.toDouble(),
        nullable: json_['nullable'] as core.bool?,
        prefixItems: (json_['prefixItems'] as core.List?)
            ?.map(
              (value) =>
                  Schema.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                Schema.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        ref: json_['ref'] as core.String?,
        required: (json_['required'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
        type: json_['type'] as core.String?,
        uniqueItems: json_['uniqueItems'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalProperties = this.additionalProperties;
    final anyOf = this.anyOf;
    final default_ = this.default_;
    final defs = this.defs;
    final description = this.description;
    final enum_ = this.enum_;
    final items = this.items;
    final maxItems = this.maxItems;
    final maximum = this.maximum;
    final minItems = this.minItems;
    final minimum = this.minimum;
    final nullable = this.nullable;
    final prefixItems = this.prefixItems;
    final properties = this.properties;
    final ref = this.ref;
    final required = this.required;
    final title = this.title;
    final type = this.type;
    final uniqueItems = this.uniqueItems;
    return {
      'additionalProperties': ?additionalProperties,
      'anyOf': ?anyOf,
      'default': ?default_,
      'defs': ?defs,
      'description': ?description,
      'enum': ?enum_,
      'items': ?items,
      'maxItems': ?maxItems,
      'maximum': ?maximum,
      'minItems': ?minItems,
      'minimum': ?minimum,
      'nullable': ?nullable,
      'prefixItems': ?prefixItems,
      'properties': ?properties,
      'ref': ?ref,
      'required': ?required,
      'title': ?title,
      'type': ?type,
      'uniqueItems': ?uniqueItems,
    };
  }
}

/// Configurations for authentication using a custom service account.
class ServiceAccountAuthConfig {
  /// The OAuth scopes to grant.
  ///
  /// If not specified, the default scope
  /// `https://www.googleapis.com/auth/cloud-platform` is used.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  /// The email address of the service account used for authentication.
  ///
  /// CES uses this service account to exchange an access token and the access
  /// token is then sent in the `Authorization` header of the request. The
  /// service account must have the `roles/iam.serviceAccountTokenCreator` role
  /// granted to the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  ///
  /// Required.
  core.String? serviceAccount;

  ServiceAccountAuthConfig({this.scopes, this.serviceAccount});

  ServiceAccountAuthConfig.fromJson(core.Map json_)
    : this(
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        serviceAccount: json_['serviceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final scopes = this.scopes;
    final serviceAccount = this.serviceAccount;
    return {'scopes': ?scopes, 'serviceAccount': ?serviceAccount};
  }
}

/// Configurations for authentication with
/// [ID token](https://cloud.google.com/docs/authentication/token-types#id)
/// generated from service agent.
typedef ServiceAgentIdTokenAuthConfig = $Empty;

/// Configuration for tools using Service Directory.
class ServiceDirectoryConfig {
  /// The name of
  /// [Service Directory](https://cloud.google.com/service-directory) service.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}`.
  /// Location of the service directory must be the same as the location of the
  /// app.
  ///
  /// Required.
  core.String? service;

  ServiceDirectoryConfig({this.service});

  ServiceDirectoryConfig.fromJson(core.Map json_)
    : this(service: json_['service'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final service = this.service;
    return {'service': ?service};
  }
}

/// The configuration for the session.
class SessionConfig {
  /// The deployment of the app to use for the session.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}`
  ///
  /// Optional.
  core.String? deployment;

  /// Whether to enable streaming text outputs from the model.
  ///
  /// By default, text outputs from the model are collected before sending to
  /// the client. NOTE: This is only supported for text (non-voice) sessions via
  /// StreamRunSession or BidiRunSession.
  ///
  /// Optional.
  core.bool? enableTextStreaming;

  /// The entry agent to handle the session.
  ///
  /// If not specified, the session will be handled by the root agent of the
  /// app. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Optional.
  core.String? entryAgent;

  /// The historical context of the session, including user inputs, agent
  /// responses, and other messages.
  ///
  /// Typically, CES agent would manage session automatically so client doesn't
  /// need to explicitly populate this field. However, client can optionally
  /// override the historical contexts to force the session start from certain
  /// state.
  ///
  /// Optional.
  core.List<Message>? historicalContexts;

  /// Configuration for processing the input audio.
  ///
  /// Optional.
  InputAudioConfig? inputAudioConfig;

  /// Configuration for generating the output audio.
  ///
  /// Optional.
  OutputAudioConfig? outputAudioConfig;

  /// [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters)
  /// to send to the remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent when the session control is transferred to the remote agent.
  ///
  /// Optional.
  SessionConfigRemoteDialogflowQueryParameters? remoteDialogflowQueryParameters;

  /// The time zone of the user.
  ///
  /// If provided, the agent will use the time zone for date and time related
  /// variables. Otherwise, the agent will use the time zone specified in the
  /// App.time_zone_settings. The format is the IANA Time Zone Database time
  /// zone, e.g. "America/Los_Angeles".
  ///
  /// Optional.
  core.String? timeZone;

  /// Whether to use tool fakes for the session.
  ///
  /// If this field is set, the agent will attempt use tool fakes instead of
  /// calling the real tools.
  ///
  /// Optional.
  core.bool? useToolFakes;

  SessionConfig({
    this.deployment,
    this.enableTextStreaming,
    this.entryAgent,
    this.historicalContexts,
    this.inputAudioConfig,
    this.outputAudioConfig,
    this.remoteDialogflowQueryParameters,
    this.timeZone,
    this.useToolFakes,
  });

  SessionConfig.fromJson(core.Map json_)
    : this(
        deployment: json_['deployment'] as core.String?,
        enableTextStreaming: json_['enableTextStreaming'] as core.bool?,
        entryAgent: json_['entryAgent'] as core.String?,
        historicalContexts: (json_['historicalContexts'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        inputAudioConfig: json_.containsKey('inputAudioConfig')
            ? InputAudioConfig.fromJson(
                json_['inputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        remoteDialogflowQueryParameters:
            json_.containsKey('remoteDialogflowQueryParameters')
            ? SessionConfigRemoteDialogflowQueryParameters.fromJson(
                json_['remoteDialogflowQueryParameters']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeZone: json_['timeZone'] as core.String?,
        useToolFakes: json_['useToolFakes'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployment = this.deployment;
    final enableTextStreaming = this.enableTextStreaming;
    final entryAgent = this.entryAgent;
    final historicalContexts = this.historicalContexts;
    final inputAudioConfig = this.inputAudioConfig;
    final outputAudioConfig = this.outputAudioConfig;
    final remoteDialogflowQueryParameters =
        this.remoteDialogflowQueryParameters;
    final timeZone = this.timeZone;
    final useToolFakes = this.useToolFakes;
    return {
      'deployment': ?deployment,
      'enableTextStreaming': ?enableTextStreaming,
      'entryAgent': ?entryAgent,
      'historicalContexts': ?historicalContexts,
      'inputAudioConfig': ?inputAudioConfig,
      'outputAudioConfig': ?outputAudioConfig,
      'remoteDialogflowQueryParameters': ?remoteDialogflowQueryParameters,
      'timeZone': ?timeZone,
      'useToolFakes': ?useToolFakes,
    };
  }
}

/// [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters)
/// to send to the remote
/// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
/// agent when the session control is transferred to the remote agent.
class SessionConfigRemoteDialogflowQueryParameters {
  /// The end user metadata to be sent in
  /// [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters).
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? endUserMetadata;

  /// The payload to be sent in
  /// [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters).
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// The HTTP headers to be sent as webhook_headers in
  /// [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters).
  ///
  /// Optional.
  core.Map<core.String, core.String>? webhookHeaders;

  SessionConfigRemoteDialogflowQueryParameters({
    this.endUserMetadata,
    this.payload,
    this.webhookHeaders,
  });

  SessionConfigRemoteDialogflowQueryParameters.fromJson(core.Map json_)
    : this(
        endUserMetadata: json_.containsKey('endUserMetadata')
            ? json_['endUserMetadata'] as core.Map<core.String, core.dynamic>
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        webhookHeaders:
            (json_['webhookHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endUserMetadata = this.endUserMetadata;
    final payload = this.payload;
    final webhookHeaders = this.webhookHeaders;
    return {
      'endUserMetadata': ?endUserMetadata,
      'payload': ?payload,
      'webhookHeaders': ?webhookHeaders,
    };
  }
}

/// Input for the session.
class SessionInput {
  /// Audio data from the end user.
  ///
  /// Optional.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Blob data from the end user.
  ///
  /// Optional.
  Blob? blob;

  /// DTMF digits from the end user.
  ///
  /// Optional.
  core.String? dtmf;

  /// Event input.
  ///
  /// Optional.
  Event? event;

  /// Image data from the end user.
  ///
  /// Optional.
  Image? image;

  /// Text data from the end user.
  ///
  /// Optional.
  core.String? text;

  /// Execution results for the tool calls from the client.
  ///
  /// Optional.
  ToolResponses? toolResponses;

  /// Contextual variables for the session, keyed by name.
  ///
  /// Only variables declared in the app will be used by the CES agent.
  /// Unrecognized variables will still be sent to the Dialogflow agent as
  /// additional session parameters.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  /// A flag to indicate if the current message is a fragment of a larger input
  /// in the bidi streaming session.
  ///
  /// When set to `true`, the agent defers processing until it receives a
  /// subsequent message where `will_continue` is `false`, or until the system
  /// detects an endpoint in the audio input. NOTE: This field does not apply to
  /// audio and DTMF inputs, as they are always processed automatically based on
  /// the endpointing signal.
  ///
  /// Optional.
  core.bool? willContinue;

  SessionInput({
    this.audio,
    this.blob,
    this.dtmf,
    this.event,
    this.image,
    this.text,
    this.toolResponses,
    this.variables,
    this.willContinue,
  });

  SessionInput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        blob: json_.containsKey('blob')
            ? Blob.fromJson(
                json_['blob'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dtmf: json_['dtmf'] as core.String?,
        event: json_.containsKey('event')
            ? Event.fromJson(
                json_['event'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        image: json_.containsKey('image')
            ? Image.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_['text'] as core.String?,
        toolResponses: json_.containsKey('toolResponses')
            ? ToolResponses.fromJson(
                json_['toolResponses'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
        willContinue: json_['willContinue'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final blob = this.blob;
    final dtmf = this.dtmf;
    final event = this.event;
    final image = this.image;
    final text = this.text;
    final toolResponses = this.toolResponses;
    final variables = this.variables;
    final willContinue = this.willContinue;
    return {
      'audio': ?audio,
      'blob': ?blob,
      'dtmf': ?dtmf,
      'event': ?event,
      'image': ?image,
      'text': ?text,
      'toolResponses': ?toolResponses,
      'variables': ?variables,
      'willContinue': ?willContinue,
    };
  }
}

/// Output for the session.
class SessionOutput {
  /// Output audio from the CES agent.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Citations that provide the source information for the agent's generated
  /// text.
  Citations? citations;

  /// Diagnostic information contains execution details during the processing of
  /// the input.
  ///
  /// Only populated in the last SessionOutput (with `turn_completed=true`) for
  /// each turn.
  ///
  /// Optional.
  SessionOutputDiagnosticInfo? diagnosticInfo;

  /// Indicates the session has ended.
  EndSession? endSession;

  /// The suggestions returned from Google Search as a result of invoking the
  /// GoogleSearchTool.
  GoogleSearchSuggestions? googleSearchSuggestions;

  /// Custom payload with structured output from the CES agent.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// Output text from the CES agent.
  core.String? text;

  /// Request for the client to execute the tools.
  ToolCalls? toolCalls;

  /// If true, the CES agent has detected the end of the current conversation
  /// turn and will provide no further output for this turn.
  core.bool? turnCompleted;

  /// Indicates the sequential order of conversation turn to which this output
  /// belongs to, starting from 1.
  core.int? turnIndex;

  SessionOutput({
    this.audio,
    this.citations,
    this.diagnosticInfo,
    this.endSession,
    this.googleSearchSuggestions,
    this.payload,
    this.text,
    this.toolCalls,
    this.turnCompleted,
    this.turnIndex,
  });

  SessionOutput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        citations: json_.containsKey('citations')
            ? Citations.fromJson(
                json_['citations'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        diagnosticInfo: json_.containsKey('diagnosticInfo')
            ? SessionOutputDiagnosticInfo.fromJson(
                json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endSession: json_.containsKey('endSession')
            ? EndSession.fromJson(
                json_['endSession'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleSearchSuggestions: json_.containsKey('googleSearchSuggestions')
            ? GoogleSearchSuggestions.fromJson(
                json_['googleSearchSuggestions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
        toolCalls: json_.containsKey('toolCalls')
            ? ToolCalls.fromJson(
                json_['toolCalls'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        turnCompleted: json_['turnCompleted'] as core.bool?,
        turnIndex: json_['turnIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final citations = this.citations;
    final diagnosticInfo = this.diagnosticInfo;
    final endSession = this.endSession;
    final googleSearchSuggestions = this.googleSearchSuggestions;
    final payload = this.payload;
    final text = this.text;
    final toolCalls = this.toolCalls;
    final turnCompleted = this.turnCompleted;
    final turnIndex = this.turnIndex;
    return {
      'audio': ?audio,
      'citations': ?citations,
      'diagnosticInfo': ?diagnosticInfo,
      'endSession': ?endSession,
      'googleSearchSuggestions': ?googleSearchSuggestions,
      'payload': ?payload,
      'text': ?text,
      'toolCalls': ?toolCalls,
      'turnCompleted': ?turnCompleted,
      'turnIndex': ?turnIndex,
    };
  }
}

/// Contains execution details during the processing.
class SessionOutputDiagnosticInfo {
  /// List of the messages that happened during the processing.
  core.List<Message>? messages;

  /// A trace of the entire request processing, represented as a root span.
  ///
  /// This span can contain nested child spans for specific operations.
  Span? rootSpan;

  SessionOutputDiagnosticInfo({this.messages, this.rootSpan});

  SessionOutputDiagnosticInfo.fromJson(core.Map json_)
    : this(
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rootSpan: json_.containsKey('rootSpan')
            ? Span.fromJson(
                json_['rootSpan'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messages = this.messages;
    final rootSpan = this.rootSpan;
    return {'messages': ?messages, 'rootSpan': ?rootSpan};
  }
}

/// A span is a unit of work or a single operation during the request
/// processing.
class Span {
  /// Key-value attributes associated with the span.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? attributes;

  /// The child spans that are nested under this span.
  ///
  /// Output only.
  core.List<Span>? childSpans;

  /// The duration of the span.
  ///
  /// Output only.
  core.String? duration;

  /// The end time of the span.
  ///
  /// Output only.
  core.String? endTime;

  /// The name of the span.
  ///
  /// Output only.
  core.String? name;

  /// The start time of the span.
  ///
  /// Output only.
  core.String? startTime;

  Span({
    this.attributes,
    this.childSpans,
    this.duration,
    this.endTime,
    this.name,
    this.startTime,
  });

  Span.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? json_['attributes'] as core.Map<core.String, core.dynamic>
            : null,
        childSpans: (json_['childSpans'] as core.List?)
            ?.map(
              (value) =>
                  Span.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        duration: json_['duration'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final childSpans = this.childSpans;
    final duration = this.duration;
    final endTime = this.endTime;
    final name = this.name;
    final startTime = this.startTime;
    return {
      'attributes': ?attributes,
      'childSpans': ?childSpans,
      'duration': ?duration,
      'endTime': ?endTime,
      'name': ?name,
      'startTime': ?startTime,
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

/// Configuration for how the agent response should be synthesized.
class SynthesizeSpeechConfig {
  /// The speaking rate/speed in the range \[0.25, 2.0\].
  ///
  /// 1.0 is the normal native speed supported by the specific voice. 2.0 is
  /// twice as fast, and 0.5 is half as fast. Values outside of the range
  /// \[0.25, 2.0\] will return an error.
  ///
  /// Optional.
  core.double? speakingRate;

  /// The name of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code. For the list of available voices, please refer to
  /// [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices)
  /// from Cloud Text-to-Speech.
  ///
  /// Optional.
  core.String? voice;

  SynthesizeSpeechConfig({this.speakingRate, this.voice});

  SynthesizeSpeechConfig.fromJson(core.Map json_)
    : this(
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        voice: json_['voice'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final speakingRate = this.speakingRate;
    final voice = this.voice;
    return {'speakingRate': ?speakingRate, 'voice': ?voice};
  }
}

/// Pre-defined system tool.
class SystemTool {
  /// The description of the system tool.
  ///
  /// Output only.
  core.String? description;

  /// The name of the system tool.
  ///
  /// Required.
  core.String? name;

  SystemTool({this.description, this.name});

  SystemTool.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    return {'description': ?description, 'name': ?name};
  }
}

/// TimeZone settings of the app.
class TimeZoneSettings {
  /// The time zone of the app from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/Los_Angeles, Europe/Paris.
  ///
  /// Optional.
  core.String? timeZone;

  TimeZoneSettings({this.timeZone});

  TimeZoneSettings.fromJson(core.Map json_)
    : this(timeZone: json_['timeZone'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final timeZone = this.timeZone;
    return {'timeZone': ?timeZone};
  }
}

/// The TLS configuration.
class TlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  ///
  /// Required.
  core.List<TlsConfigCaCert>? caCerts;

  TlsConfig({this.caCerts});

  TlsConfig.fromJson(core.Map json_)
    : this(
        caCerts: (json_['caCerts'] as core.List?)
            ?.map(
              (value) => TlsConfigCaCert.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caCerts = this.caCerts;
    return {'caCerts': ?caCerts};
  }
}

/// The CA certificate.
class TlsConfigCaCert {
  /// The allowed custom CA certificates (in DER format) for HTTPS verification.
  ///
  /// This overrides the default SSL trust store. If this is empty or
  /// unspecified, CES will use Google's default trust store to verify
  /// certificates. N.B. Make sure the HTTPS server certificates are signed with
  /// "subject alt name". For instance a certificate can be self-signed using
  /// the following command: ``` openssl x509 -req -days 200 -in example.com.csr
  /// \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf
  /// "\nsubjectAltName='DNS:www.example.com'") ```
  ///
  /// Required.
  core.String? cert;
  core.List<core.int> get certAsBytes => convert.base64.decode(cert!);

  set certAsBytes(core.List<core.int> bytes_) {
    cert = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The name of the allowed custom CA certificates.
  ///
  /// This can be used to disambiguate the custom CA certificates.
  ///
  /// Required.
  core.String? displayName;

  TlsConfigCaCert({this.cert, this.displayName});

  TlsConfigCaCert.fromJson(core.Map json_)
    : this(
        cert: json_['cert'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cert = this.cert;
    final displayName = this.displayName;
    return {'cert': ?cert, 'displayName': ?displayName};
  }
}

/// A tool represents an action that the CES agent can take to achieve certain
/// goals.
class Tool {
  /// The agent tool.
  ///
  /// Optional.
  AgentTool? agentTool;

  /// The client function.
  ///
  /// Optional.
  ClientFunction? clientFunction;

  /// The Integration Connector tool.
  ///
  /// Optional.
  ConnectorTool? connectorTool;

  /// Timestamp when the tool was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The data store tool.
  ///
  /// Optional.
  DataStoreTool? dataStoreTool;

  /// The display name of the tool, derived based on the tool's type.
  ///
  /// For example, display name of a ClientFunction is derived from its `name`
  /// property.
  ///
  /// Output only.
  core.String? displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  core.String? etag;

  /// The execution type of the tool.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXECUTION_TYPE_UNSPECIFIED" : The execution type is unspecified.
  /// Defaults to `SYNCHRONOUS` if unspecified.
  /// - "SYNCHRONOUS" : The tool is executed synchronously. The session is
  /// blocked until the tool returns.
  /// - "ASYNCHRONOUS" : The tool is executed asynchronously. The session will
  /// continue while the tool is executing.
  core.String? executionType;

  /// The file search tool.
  ///
  /// Optional.
  FileSearchTool? fileSearchTool;

  /// If the tool is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  ///
  /// Output only.
  core.String? generatedSummary;

  /// The google search tool.
  ///
  /// Optional.
  GoogleSearchTool? googleSearchTool;

  /// The MCP tool.
  ///
  /// An MCP tool cannot be created or updated directly and is managed by the
  /// MCP toolset.
  ///
  /// Optional.
  McpTool? mcpTool;

  /// Identifier.
  ///
  /// The resource name of the tool. Format: *
  /// `projects/{project}/locations/{location}/apps/{app}/tools/{tool}` for
  /// standalone tools. *
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}/tools/{tool}`
  /// for tools retrieved from a toolset. These tools are dynamic and
  /// output-only; they cannot be referenced directly where a tool is expected.
  core.String? name;

  /// The open API tool.
  ///
  /// Optional.
  OpenApiTool? openApiTool;

  /// The python function tool.
  ///
  /// Optional.
  PythonFunction? pythonFunction;

  /// The system tool.
  ///
  /// Optional.
  SystemTool? systemTool;

  /// Configuration for tool behavior in fake mode.
  ///
  /// Optional.
  ToolFakeConfig? toolFakeConfig;

  /// Timestamp when the tool was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The widget tool.
  ///
  /// Optional.
  WidgetTool? widgetTool;

  Tool({
    this.agentTool,
    this.clientFunction,
    this.connectorTool,
    this.createTime,
    this.dataStoreTool,
    this.displayName,
    this.etag,
    this.executionType,
    this.fileSearchTool,
    this.generatedSummary,
    this.googleSearchTool,
    this.mcpTool,
    this.name,
    this.openApiTool,
    this.pythonFunction,
    this.systemTool,
    this.toolFakeConfig,
    this.updateTime,
    this.widgetTool,
  });

  Tool.fromJson(core.Map json_)
    : this(
        agentTool: json_.containsKey('agentTool')
            ? AgentTool.fromJson(
                json_['agentTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clientFunction: json_.containsKey('clientFunction')
            ? ClientFunction.fromJson(
                json_['clientFunction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        connectorTool: json_.containsKey('connectorTool')
            ? ConnectorTool.fromJson(
                json_['connectorTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        dataStoreTool: json_.containsKey('dataStoreTool')
            ? DataStoreTool.fromJson(
                json_['dataStoreTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        executionType: json_['executionType'] as core.String?,
        fileSearchTool: json_.containsKey('fileSearchTool')
            ? FileSearchTool.fromJson(
                json_['fileSearchTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        generatedSummary: json_['generatedSummary'] as core.String?,
        googleSearchTool: json_.containsKey('googleSearchTool')
            ? GoogleSearchTool.fromJson(
                json_['googleSearchTool']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mcpTool: json_.containsKey('mcpTool')
            ? McpTool.fromJson(
                json_['mcpTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        openApiTool: json_.containsKey('openApiTool')
            ? OpenApiTool.fromJson(
                json_['openApiTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pythonFunction: json_.containsKey('pythonFunction')
            ? PythonFunction.fromJson(
                json_['pythonFunction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        systemTool: json_.containsKey('systemTool')
            ? SystemTool.fromJson(
                json_['systemTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolFakeConfig: json_.containsKey('toolFakeConfig')
            ? ToolFakeConfig.fromJson(
                json_['toolFakeConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
        widgetTool: json_.containsKey('widgetTool')
            ? WidgetTool.fromJson(
                json_['widgetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentTool = this.agentTool;
    final clientFunction = this.clientFunction;
    final connectorTool = this.connectorTool;
    final createTime = this.createTime;
    final dataStoreTool = this.dataStoreTool;
    final displayName = this.displayName;
    final etag = this.etag;
    final executionType = this.executionType;
    final fileSearchTool = this.fileSearchTool;
    final generatedSummary = this.generatedSummary;
    final googleSearchTool = this.googleSearchTool;
    final mcpTool = this.mcpTool;
    final name = this.name;
    final openApiTool = this.openApiTool;
    final pythonFunction = this.pythonFunction;
    final systemTool = this.systemTool;
    final toolFakeConfig = this.toolFakeConfig;
    final updateTime = this.updateTime;
    final widgetTool = this.widgetTool;
    return {
      'agentTool': ?agentTool,
      'clientFunction': ?clientFunction,
      'connectorTool': ?connectorTool,
      'createTime': ?createTime,
      'dataStoreTool': ?dataStoreTool,
      'displayName': ?displayName,
      'etag': ?etag,
      'executionType': ?executionType,
      'fileSearchTool': ?fileSearchTool,
      'generatedSummary': ?generatedSummary,
      'googleSearchTool': ?googleSearchTool,
      'mcpTool': ?mcpTool,
      'name': ?name,
      'openApiTool': ?openApiTool,
      'pythonFunction': ?pythonFunction,
      'systemTool': ?systemTool,
      'toolFakeConfig': ?toolFakeConfig,
      'updateTime': ?updateTime,
      'widgetTool': ?widgetTool,
    };
  }
}

/// Request for the client or the agent to execute the specified tool.
class ToolCall {
  /// The input parameters and values for the tool in JSON object format.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? args;

  /// Display name of the tool.
  ///
  /// Output only.
  core.String? displayName;

  /// The unique identifier of the tool call.
  ///
  /// If populated, the client should return the execution result with the
  /// matching ID in ToolResponse.
  ///
  /// Optional.
  core.String? id;

  /// The name of the tool to execute.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  ///
  /// Optional.
  core.String? tool;

  /// The toolset tool to execute.
  ///
  /// Optional.
  ToolsetTool? toolsetTool;

  ToolCall({this.args, this.displayName, this.id, this.tool, this.toolsetTool});

  ToolCall.fromJson(core.Map json_)
    : this(
        args: json_.containsKey('args')
            ? json_['args'] as core.Map<core.String, core.dynamic>
            : null,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final displayName = this.displayName;
    final id = this.id;
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    return {
      'args': ?args,
      'displayName': ?displayName,
      'id': ?id,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool,
    };
  }
}

/// Request for the client to execute the tools and return the execution results
/// before continuing the session.
class ToolCalls {
  /// The list of tool calls to execute.
  ///
  /// Optional.
  core.List<ToolCall>? toolCalls;

  ToolCalls({this.toolCalls});

  ToolCalls.fromJson(core.Map json_)
    : this(
        toolCalls: (json_['toolCalls'] as core.List?)
            ?.map(
              (value) => ToolCall.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolCalls = this.toolCalls;
    return {'toolCalls': ?toolCalls};
  }
}

/// Configuration for tool behavior in fake mode.
class ToolFakeConfig {
  /// Code block which will be executed instead of a real tool call.
  ///
  /// Optional.
  CodeBlock? codeBlock;

  /// Whether the tool is using fake mode.
  ///
  /// Optional.
  core.bool? enableFakeMode;

  ToolFakeConfig({this.codeBlock, this.enableFakeMode});

  ToolFakeConfig.fromJson(core.Map json_)
    : this(
        codeBlock: json_.containsKey('codeBlock')
            ? CodeBlock.fromJson(
                json_['codeBlock'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        enableFakeMode: json_['enableFakeMode'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final codeBlock = this.codeBlock;
    final enableFakeMode = this.enableFakeMode;
    return {'codeBlock': ?codeBlock, 'enableFakeMode': ?enableFakeMode};
  }
}

/// The execution result of a specific tool from the client or the agent.
class ToolResponse {
  /// Display name of the tool.
  ///
  /// Output only.
  core.String? displayName;

  /// The matching ID of the tool call the response is for.
  ///
  /// Optional.
  core.String? id;

  /// The tool execution result in JSON object format.
  ///
  /// Use "output" key to specify tool response and "error" key to specify error
  /// details (if any). If "output" and "error" keys are not specified, then
  /// whole "response" is treated as tool execution result.
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  /// The name of the tool to execute.
  ///
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  ///
  /// Optional.
  core.String? tool;

  /// The toolset tool that got executed.
  ///
  /// Optional.
  ToolsetTool? toolsetTool;

  ToolResponse({
    this.displayName,
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  ToolResponse.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
        tool: json_['tool'] as core.String?,
        toolsetTool: json_.containsKey('toolsetTool')
            ? ToolsetTool.fromJson(
                json_['toolsetTool'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    final response = this.response;
    final tool = this.tool;
    final toolsetTool = this.toolsetTool;
    return {
      'displayName': ?displayName,
      'id': ?id,
      'response': ?response,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool,
    };
  }
}

/// Execution results for the requested tool calls from the client.
class ToolResponses {
  /// The list of tool execution results.
  ///
  /// Optional.
  core.List<ToolResponse>? toolResponses;

  ToolResponses({this.toolResponses});

  ToolResponses.fromJson(core.Map json_)
    : this(
        toolResponses: (json_['toolResponses'] as core.List?)
            ?.map(
              (value) => ToolResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolResponses = this.toolResponses;
    return {'toolResponses': ?toolResponses};
  }
}

/// A toolset represents a group of dynamically managed tools that can be used
/// by the agent.
class Toolset {
  /// A toolset that generates tools from an Integration Connectors Connection.
  ///
  /// Optional.
  ConnectorToolset? connectorToolset;

  /// Timestamp when the toolset was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the toolset.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the toolset.
  ///
  /// Must be unique within the same app.
  ///
  /// Optional.
  core.String? displayName;

  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation.
  ///
  /// If the etag is empty, the update will overwrite any concurrent changes.
  core.String? etag;

  /// The execution type of the tools in the toolset.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXECUTION_TYPE_UNSPECIFIED" : The execution type is unspecified.
  /// Defaults to `SYNCHRONOUS` if unspecified.
  /// - "SYNCHRONOUS" : The tool is executed synchronously. The session is
  /// blocked until the tool returns.
  /// - "ASYNCHRONOUS" : The tool is executed asynchronously. The session will
  /// continue while the tool is executing.
  core.String? executionType;

  /// A toolset that contains a list of tools that are offered by the MCP
  /// server.
  ///
  /// Optional.
  McpToolset? mcpToolset;

  /// Identifier.
  ///
  /// The unique identifier of the toolset. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  core.String? name;

  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  ///
  /// Optional.
  OpenApiToolset? openApiToolset;

  /// Configuration for tools behavior in fake mode.
  ///
  /// Optional.
  ToolFakeConfig? toolFakeConfig;

  /// Timestamp when the toolset was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Toolset({
    this.connectorToolset,
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.executionType,
    this.mcpToolset,
    this.name,
    this.openApiToolset,
    this.toolFakeConfig,
    this.updateTime,
  });

  Toolset.fromJson(core.Map json_)
    : this(
        connectorToolset: json_.containsKey('connectorToolset')
            ? ConnectorToolset.fromJson(
                json_['connectorToolset']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        executionType: json_['executionType'] as core.String?,
        mcpToolset: json_.containsKey('mcpToolset')
            ? McpToolset.fromJson(
                json_['mcpToolset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        openApiToolset: json_.containsKey('openApiToolset')
            ? OpenApiToolset.fromJson(
                json_['openApiToolset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolFakeConfig: json_.containsKey('toolFakeConfig')
            ? ToolFakeConfig.fromJson(
                json_['toolFakeConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectorToolset = this.connectorToolset;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final etag = this.etag;
    final executionType = this.executionType;
    final mcpToolset = this.mcpToolset;
    final name = this.name;
    final openApiToolset = this.openApiToolset;
    final toolFakeConfig = this.toolFakeConfig;
    final updateTime = this.updateTime;
    return {
      'connectorToolset': ?connectorToolset,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'executionType': ?executionType,
      'mcpToolset': ?mcpToolset,
      'name': ?name,
      'openApiToolset': ?openApiToolset,
      'toolFakeConfig': ?toolFakeConfig,
      'updateTime': ?updateTime,
    };
  }
}

/// A tool that is created from a toolset.
typedef ToolsetTool = $ToolsetTool;

/// Rule for transferring to a specific agent.
class TransferRule {
  /// The resource name of the child agent the rule applies to.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Required.
  core.String? childAgent;

  /// A rule that immediately transfers to the target agent when the condition
  /// is met.
  ///
  /// Optional.
  TransferRuleDeterministicTransfer? deterministicTransfer;

  /// The direction of the transfer.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified direction.
  /// - "PARENT_TO_CHILD" : Transfer from the parent agent to the child agent.
  /// - "CHILD_TO_PARENT" : Transfer from the child agent to the parent agent.
  core.String? direction;

  /// Rule that prevents the planner from transferring to the target agent.
  ///
  /// Optional.
  TransferRuleDisablePlannerTransfer? disablePlannerTransfer;

  TransferRule({
    this.childAgent,
    this.deterministicTransfer,
    this.direction,
    this.disablePlannerTransfer,
  });

  TransferRule.fromJson(core.Map json_)
    : this(
        childAgent: json_['childAgent'] as core.String?,
        deterministicTransfer: json_.containsKey('deterministicTransfer')
            ? TransferRuleDeterministicTransfer.fromJson(
                json_['deterministicTransfer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        direction: json_['direction'] as core.String?,
        disablePlannerTransfer: json_.containsKey('disablePlannerTransfer')
            ? TransferRuleDisablePlannerTransfer.fromJson(
                json_['disablePlannerTransfer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final childAgent = this.childAgent;
    final deterministicTransfer = this.deterministicTransfer;
    final direction = this.direction;
    final disablePlannerTransfer = this.disablePlannerTransfer;
    return {
      'childAgent': ?childAgent,
      'deterministicTransfer': ?deterministicTransfer,
      'direction': ?direction,
      'disablePlannerTransfer': ?disablePlannerTransfer,
    };
  }
}

/// Deterministic transfer rule.
///
/// When the condition evaluates to true, the transfer occurs.
class TransferRuleDeterministicTransfer {
  /// A rule that evaluates a session state condition.
  ///
  /// If the condition evaluates to true, the transfer occurs.
  ///
  /// Optional.
  ExpressionCondition? expressionCondition;

  /// A rule that uses Python code block to evaluate the conditions.
  ///
  /// If the condition evaluates to true, the transfer occurs.
  ///
  /// Optional.
  PythonCodeCondition? pythonCodeCondition;

  TransferRuleDeterministicTransfer({
    this.expressionCondition,
    this.pythonCodeCondition,
  });

  TransferRuleDeterministicTransfer.fromJson(core.Map json_)
    : this(
        expressionCondition: json_.containsKey('expressionCondition')
            ? ExpressionCondition.fromJson(
                json_['expressionCondition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pythonCodeCondition: json_.containsKey('pythonCodeCondition')
            ? PythonCodeCondition.fromJson(
                json_['pythonCodeCondition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expressionCondition = this.expressionCondition;
    final pythonCodeCondition = this.pythonCodeCondition;
    return {
      'expressionCondition': ?expressionCondition,
      'pythonCodeCondition': ?pythonCodeCondition,
    };
  }
}

/// A rule that prevents the planner from transferring to the target agent.
class TransferRuleDisablePlannerTransfer {
  /// If the condition evaluates to true, planner will not be allowed to
  /// transfer to the target agent.
  ///
  /// Required.
  ExpressionCondition? expressionCondition;

  TransferRuleDisablePlannerTransfer({this.expressionCondition});

  TransferRuleDisablePlannerTransfer.fromJson(core.Map json_)
    : this(
        expressionCondition: json_.containsKey('expressionCondition')
            ? ExpressionCondition.fromJson(
                json_['expressionCondition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expressionCondition = this.expressionCondition;
    return {'expressionCondition': ?expressionCondition};
  }
}

/// Action that is taken when a certain precondition is met.
class TriggerAction {
  /// Respond with a generative answer.
  ///
  /// Optional.
  TriggerActionGenerativeAnswer? generativeAnswer;

  /// Immediately respond with a preconfigured response.
  ///
  /// Optional.
  TriggerActionRespondImmediately? respondImmediately;

  /// Transfer the conversation to a different agent.
  ///
  /// Optional.
  TriggerActionTransferAgent? transferAgent;

  TriggerAction({
    this.generativeAnswer,
    this.respondImmediately,
    this.transferAgent,
  });

  TriggerAction.fromJson(core.Map json_)
    : this(
        generativeAnswer: json_.containsKey('generativeAnswer')
            ? TriggerActionGenerativeAnswer.fromJson(
                json_['generativeAnswer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        respondImmediately: json_.containsKey('respondImmediately')
            ? TriggerActionRespondImmediately.fromJson(
                json_['respondImmediately']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transferAgent: json_.containsKey('transferAgent')
            ? TriggerActionTransferAgent.fromJson(
                json_['transferAgent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generativeAnswer = this.generativeAnswer;
    final respondImmediately = this.respondImmediately;
    final transferAgent = this.transferAgent;
    return {
      'generativeAnswer': ?generativeAnswer,
      'respondImmediately': ?respondImmediately,
      'transferAgent': ?transferAgent,
    };
  }
}

/// The agent will immediately respond with a generative answer.
class TriggerActionGenerativeAnswer {
  /// The prompt to use for the generative answer.
  ///
  /// Required.
  core.String? prompt;

  TriggerActionGenerativeAnswer({this.prompt});

  TriggerActionGenerativeAnswer.fromJson(core.Map json_)
    : this(prompt: json_['prompt'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final prompt = this.prompt;
    return {'prompt': ?prompt};
  }
}

/// The agent will immediately respond with a preconfigured response.
class TriggerActionRespondImmediately {
  /// The canned responses for the agent to choose from.
  ///
  /// The response is chosen randomly.
  ///
  /// Required.
  core.List<TriggerActionResponse>? responses;

  TriggerActionRespondImmediately({this.responses});

  TriggerActionRespondImmediately.fromJson(core.Map json_)
    : this(
        responses: (json_['responses'] as core.List?)
            ?.map(
              (value) => TriggerActionResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final responses = this.responses;
    return {'responses': ?responses};
  }
}

/// Represents a response from the agent.
class TriggerActionResponse {
  /// Whether the response is disabled.
  ///
  /// Disabled responses are not used by the agent.
  ///
  /// Optional.
  core.bool? disabled;

  /// Text for the agent to respond with.
  ///
  /// Required.
  core.String? text;

  TriggerActionResponse({this.disabled, this.text});

  TriggerActionResponse.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabled = this.disabled;
    final text = this.text;
    return {'disabled': ?disabled, 'text': ?text};
  }
}

/// The agent will transfer the conversation to a different agent.
class TriggerActionTransferAgent {
  /// The name of the agent to transfer the conversation to.
  ///
  /// The agent must be in the same app as the current agent. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Required.
  core.String? agent;

  TriggerActionTransferAgent({this.agent});

  TriggerActionTransferAgent.fromJson(core.Map json_)
    : this(agent: json_['agent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    return {'agent': ?agent};
  }
}

/// Represents a single web search query and its associated search uri.
class WebSearchQuery {
  /// The search query text.
  core.String? query;

  /// The URI to the Google Search results page for the query.
  core.String? uri;

  WebSearchQuery({this.query, this.uri});

  WebSearchQuery.fromJson(core.Map json_)
    : this(
        query: json_['query'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final query = this.query;
    final uri = this.uri;
    return {'query': ?query, 'uri': ?uri};
  }
}

/// Represents a widget tool that the agent can invoke.
///
/// When the tool is chosen by the agent, agent will return the widget to the
/// client. The client is responsible for processing the widget and generating
/// the next user query to continue the interaction with the agent.
class WidgetTool {
  /// The mapping that defines how data from a source tool is mapped to the
  /// widget's input parameters.
  ///
  /// Optional.
  WidgetToolDataMapping? dataMapping;

  /// The description of the widget tool.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the widget tool.
  ///
  /// Required.
  core.String? name;

  /// The input parameters of the widget tool.
  ///
  /// Optional.
  Schema? parameters;

  /// Configuration for always-included text responses.
  ///
  /// Optional.
  WidgetToolTextResponseConfig? textResponseConfig;

  /// Configuration for rendering the widget.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? uiConfig;

  /// The type of the widget tool.
  ///
  /// If not specified, the default type will be CUSTOMIZED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WIDGET_TYPE_UNSPECIFIED" : Unspecified widget type.
  /// - "CUSTOM" : Custom widget type.
  /// - "PRODUCT_CAROUSEL" : Product carousel widget.
  /// - "PRODUCT_DETAILS" : Product details widget.
  /// - "QUICK_ACTIONS" : Quick actions widget.
  /// - "PRODUCT_COMPARISON" : Product comparison widget.
  /// - "ADVANCED_PRODUCT_DETAILS" : Advanced product details widget.
  /// - "SHORT_FORM" : Short form widget.
  /// - "OVERALL_SATISFACTION" : Overall satisfaction widget.
  /// - "ORDER_SUMMARY" : Order summary widget.
  /// - "APPOINTMENT_DETAILS" : Appointment details widget.
  /// - "APPOINTMENT_SCHEDULER" : Appointment scheduler widget.
  /// - "CONTACT_FORM" : Contact form widget.
  core.String? widgetType;

  WidgetTool({
    this.dataMapping,
    this.description,
    this.name,
    this.parameters,
    this.textResponseConfig,
    this.uiConfig,
    this.widgetType,
  });

  WidgetTool.fromJson(core.Map json_)
    : this(
        dataMapping: json_.containsKey('dataMapping')
            ? WidgetToolDataMapping.fromJson(
                json_['dataMapping'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? Schema.fromJson(
                json_['parameters'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textResponseConfig: json_.containsKey('textResponseConfig')
            ? WidgetToolTextResponseConfig.fromJson(
                json_['textResponseConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uiConfig: json_.containsKey('uiConfig')
            ? json_['uiConfig'] as core.Map<core.String, core.dynamic>
            : null,
        widgetType: json_['widgetType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataMapping = this.dataMapping;
    final description = this.description;
    final name = this.name;
    final parameters = this.parameters;
    final textResponseConfig = this.textResponseConfig;
    final uiConfig = this.uiConfig;
    final widgetType = this.widgetType;
    return {
      'dataMapping': ?dataMapping,
      'description': ?description,
      'name': ?name,
      'parameters': ?parameters,
      'textResponseConfig': ?textResponseConfig,
      'uiConfig': ?uiConfig,
      'widgetType': ?widgetType,
    };
  }
}

/// Configuration for mapping data from a source tool to the widget's input
/// parameters.
class WidgetToolDataMapping {
  /// A map of widget input parameter fields to the corresponding output fields
  /// of the source tool.
  ///
  /// Optional.
  core.Map<core.String, core.String>? fieldMappings;

  /// The mode of the data mapping.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified mode.
  /// - "FIELD_MAPPING" : Use the `field_mappings` map for data transformation.
  /// - "PYTHON_SCRIPT" : Use the `python_script` for data transformation.
  core.String? mode;

  /// Configuration for a Python function used to transform the source tool's
  /// output into the widget's input format.
  ///
  /// Optional.
  PythonFunction? pythonFunction;

  /// Deprecated: Use `python_function` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? pythonScript;

  /// The resource name of the tool that provides the data for the widget (e.g.,
  /// a search tool or a custom function).
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/agents/{agent}/tools/{tool}`
  ///
  /// Optional.
  core.String? sourceToolName;

  WidgetToolDataMapping({
    this.fieldMappings,
    this.mode,
    this.pythonFunction,
    this.pythonScript,
    this.sourceToolName,
  });

  WidgetToolDataMapping.fromJson(core.Map json_)
    : this(
        fieldMappings:
            (json_['fieldMappings'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        mode: json_['mode'] as core.String?,
        pythonFunction: json_.containsKey('pythonFunction')
            ? PythonFunction.fromJson(
                json_['pythonFunction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pythonScript: json_['pythonScript'] as core.String?,
        sourceToolName: json_['sourceToolName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldMappings = this.fieldMappings;
    final mode = this.mode;
    final pythonFunction = this.pythonFunction;
    final pythonScript = this.pythonScript;
    final sourceToolName = this.sourceToolName;
    return {
      'fieldMappings': ?fieldMappings,
      'mode': ?mode,
      'pythonFunction': ?pythonFunction,
      'pythonScript': ?pythonScript,
      'sourceToolName': ?sourceToolName,
    };
  }
}

/// Configuration for the text response returned with the widget.
class WidgetToolTextResponseConfig {
  /// The static text response to return when type is STATIC.
  ///
  /// Optional.
  core.String? staticText;

  /// Instruction for the LLM on how to generate the text response.
  ///
  /// Used as the description for the text response parameter if type is
  /// LLM_GENERATED.
  ///
  /// Optional.
  core.String? textResponseInstruction;

  /// The strategy for providing the text response.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "NONE" : The LLM dynamically decides whether to generate a text response
  /// alongside the widget based on the conversation context.
  /// - "LLM_GENERATED" : The LLM is explicitly required to generate a text
  /// response.
  /// - "STATIC" : A pre-defined static text response is always used.
  core.String? type;

  WidgetToolTextResponseConfig({
    this.staticText,
    this.textResponseInstruction,
    this.type,
  });

  WidgetToolTextResponseConfig.fromJson(core.Map json_)
    : this(
        staticText: json_['staticText'] as core.String?,
        textResponseInstruction:
            json_['textResponseInstruction'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final staticText = this.staticText;
    final textResponseInstruction = this.textResponseInstruction;
    final type = this.type;
    return {
      'staticText': ?staticText,
      'textResponseInstruction': ?textResponseInstruction,
      'type': ?type,
    };
  }
}
