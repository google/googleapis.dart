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

/// Dialogflow API - v3
///
/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
///
/// For more information, see <https://cloud.google.com/dialogflow/>
///
/// Create an instance of [DialogflowApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAgentsResource]
///       - [ProjectsLocationsAgentsChangelogsResource]
///       - [ProjectsLocationsAgentsEntityTypesResource]
///       - [ProjectsLocationsAgentsEnvironmentsResource]
/// - [ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource]
///         - [ProjectsLocationsAgentsEnvironmentsDeploymentsResource]
///         - [ProjectsLocationsAgentsEnvironmentsExperimentsResource]
///         - [ProjectsLocationsAgentsEnvironmentsSessionsResource]
/// - [ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentsFlowsResource]
///         - [ProjectsLocationsAgentsFlowsPagesResource]
///         - [ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource]
///         - [ProjectsLocationsAgentsFlowsVersionsResource]
///       - [ProjectsLocationsAgentsGeneratorsResource]
///       - [ProjectsLocationsAgentsIntentsResource]
///       - [ProjectsLocationsAgentsSessionsResource]
///         - [ProjectsLocationsAgentsSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentsTestCasesResource]
///         - [ProjectsLocationsAgentsTestCasesResultsResource]
///       - [ProjectsLocationsAgentsTransitionRouteGroupsResource]
///       - [ProjectsLocationsAgentsWebhooksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSecuritySettingsResource]
///   - [ProjectsOperationsResource]
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

/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
class DialogflowApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View, manage and query your Dialogflow agents
  static const dialogflowScope = 'https://www.googleapis.com/auth/dialogflow';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DialogflowApi(http.Client client,
      {core.String rootUrl = 'https://dialogflow.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsResource get agents =>
      ProjectsLocationsAgentsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSecuritySettingsResource get securitySettings =>
      ProjectsLocationsSecuritySettingsResource(_requester);

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
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsChangelogsResource get changelogs =>
      ProjectsLocationsAgentsChangelogsResource(_requester);
  ProjectsLocationsAgentsEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentsEntityTypesResource(_requester);
  ProjectsLocationsAgentsEnvironmentsResource get environments =>
      ProjectsLocationsAgentsEnvironmentsResource(_requester);
  ProjectsLocationsAgentsFlowsResource get flows =>
      ProjectsLocationsAgentsFlowsResource(_requester);
  ProjectsLocationsAgentsGeneratorsResource get generators =>
      ProjectsLocationsAgentsGeneratorsResource(_requester);
  ProjectsLocationsAgentsIntentsResource get intents =>
      ProjectsLocationsAgentsIntentsResource(_requester);
  ProjectsLocationsAgentsSessionsResource get sessions =>
      ProjectsLocationsAgentsSessionsResource(_requester);
  ProjectsLocationsAgentsTestCasesResource get testCases =>
      ProjectsLocationsAgentsTestCasesResource(_requester);
  ProjectsLocationsAgentsTransitionRouteGroupsResource
      get transitionRouteGroups =>
          ProjectsLocationsAgentsTransitionRouteGroupsResource(_requester);
  ProjectsLocationsAgentsWebhooksResource get webhooks =>
      ProjectsLocationsAgentsWebhooksResource(_requester);

  ProjectsLocationsAgentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an agent in the specified location.
  ///
  /// Note: You should always train flows prior to sending them queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to create a agent for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> create(
    GoogleCloudDialogflowCxV3Agent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent to delete. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the specified agent to a binary file.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: ExportAgentResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent to export. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowCxV3ExportAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the generative settings for the agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects//locations//agents//generativeSettings`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generativeSettings$`.
  ///
  /// [languageCode] - Required. Language code of the generative settings.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3GenerativeSettings>
      getGenerativeSettings(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest agent validation result.
  ///
  /// Agent validation is performed when ValidateAgent is called.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The agent name. Format:
  /// `projects//locations//agents//validationResult`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/validationResult$`.
  ///
  /// [languageCode] - If not specified, the agent's default language is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AgentValidationResult>
      getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all agents in the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to list all agents for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListAgentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified agent.
  ///
  /// Note: You should always train flows prior to sending them queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the agent. Required for the
  /// Agents.UpdateAgent method. Agents.CreateAgent populates the name
  /// automatically. Format: `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Agent> patch(
    GoogleCloudDialogflowCxV3Agent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Agent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores the specified agent from a binary file.
  ///
  /// Replaces the current agent with a new one. Note that all existing
  /// resources in agent (e.g. intents, entity types, flows) will be removed.
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train flows prior to sending them queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent to restore into. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> restore(
    GoogleCloudDialogflowCxV3RestoreAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the generative settings for the agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Format: `projects//locations//agents//generativeSettings`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generativeSettings$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3GenerativeSettings>
      updateGenerativeSettings(
    GoogleCloudDialogflowCxV3GenerativeSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates the specified agent and creates or updates validation results.
  ///
  /// The agent in draft version is validated. Please call this API after the
  /// training is completed to get the complete validation results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The agent to validate. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AgentValidationResult> validate(
    GoogleCloudDialogflowCxV3ValidateAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsChangelogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsChangelogsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves the specified Changelog.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the changelog to get. Format:
  /// `projects//locations//agents//changelogs/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/changelogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Changelog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Changelog> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Changelog.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of Changelogs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent containing the changelogs. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [filter] - The filter string. Supports filter by user_email, resource,
  /// type and create_time. Some examples: 1. By user email: user_email =
  /// "someone@google.com" 2. By resource name: resource =
  /// "projects/123/locations/global/agents/456/flows/789" 3. By resource
  /// display name: display_name = "my agent" 4. By action: action = "Create" 5.
  /// By type: type = "flows" 6. By create time. Currently predicates on
  /// `create_time` and `create_time_epoch_seconds` are supported:
  /// create_time_epoch_seconds \> 1551790877 AND create_time \<=
  /// 2017-01-15T01:30:15.01Z 7. Combination of above filters: resource =
  /// "projects/123/locations/global/agents/456/flows/789" AND user_email =
  /// "someone@google.com" AND create_time \<= 2017-01-15T01:30:15.01Z
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListChangelogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListChangelogsResponse> list(
    core.String parent, {
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/changelogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListChangelogsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an entity type in the specified agent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `entity_type`: *
  /// `EntityType.entities.value` * `EntityType.entities.synonyms` *
  /// `EntityType.excluded_phrases.value` If not specified, the agent's default
  /// language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> create(
    GoogleCloudDialogflowCxV3EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified entity type.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//locations//agents//entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for entity type not being used. For
  /// entity types that are used by intents or pages: * If `force` is set to
  /// false, an error will be returned with message indicating the referencing
  /// resources. * If `force` is set to true, Dialogflow will remove the entity
  /// type, as well as any references to the entity type (i.e. Page parameter of
  /// the entity type will be changed to '@sys.any' and intent parameter of the
  /// entity type will be removed).
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the selected entity types.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent agent to export entity types.
  /// Format: `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowCxV3ExportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Format:
  /// `projects//locations//agents//entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the entity type for. The
  /// following fields are language dependent: * `EntityType.entities.value` *
  /// `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If
  /// not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified entitytypes into the agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to import the entity types into. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowCxV3ImportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list entity types for. The following
  /// fields are language dependent: * `EntityType.entities.value` *
  /// `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If
  /// not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListEntityTypesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified entity type.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType. Format:
  /// `projects//locations//agents//entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `entity_type`: *
  /// `EntityType.entities.value` * `EntityType.entities.synonyms` *
  /// `EntityType.excluded_phrases.value` If not specified, the agent's default
  /// language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3EntityType> patch(
    GoogleCloudDialogflowCxV3EntityType request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3EntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource
      get continuousTestResults =>
          ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
              _requester);
  ProjectsLocationsAgentsEnvironmentsDeploymentsResource get deployments =>
      ProjectsLocationsAgentsEnvironmentsDeploymentsResource(_requester);
  ProjectsLocationsAgentsEnvironmentsExperimentsResource get experiments =>
      ProjectsLocationsAgentsEnvironmentsExperimentsResource(_requester);
  ProjectsLocationsAgentsEnvironmentsSessionsResource get sessions =>
      ProjectsLocationsAgentsEnvironmentsSessionsResource(_requester);

  ProjectsLocationsAgentsEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Environment in the specified Agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: Environment
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Agent to create an Environment for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDialogflowCxV3Environment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Environment to delete. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deploys a flow to the specified Environment.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: DeployFlowMetadata - `response`: DeployFlowResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - Required. The environment to deploy the flow to. Format:
  /// `projects//locations//agents// environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> deployFlow(
    GoogleCloudDialogflowCxV3DeployFlowRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$environment') + ':deployFlow';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Environment. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all environments in the specified Agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Agent to list all environments for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListEnvironmentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up the history of the specified Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the environment to look up the history
  /// for. Format: `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse>
      lookupEnvironmentHistory(
    core.String name, {
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
        'v3/' + core.Uri.encodeFull('$name') + ':lookupEnvironmentHistory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Environment.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: Environment
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the environment. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDialogflowCxV3Environment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Kicks off a continuous test under the specified Environment.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: RunContinuousTestMetadata - `response`:
  /// RunContinuousTestResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [environment] - Required. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> runContinuousTest(
    GoogleCloudDialogflowCxV3RunContinuousTestRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$environment') + ':runContinuousTest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Fetches a list of continuous test results for a given environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The environment to list results for. Format:
  /// `projects//locations//agents// environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse> list(
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
        'v3/' + core.Uri.encodeFull('$parent') + '/continuousTestResults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsDeploymentsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves the specified Deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Deployment. Format:
  /// `projects//locations//agents//environments//deployments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Deployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Deployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all deployments in the specified Environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Environment to list all environments for. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListDeploymentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListDeploymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsExperimentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsExperimentsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates an Experiment in the specified Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Agent to create an Environment for. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> create(
    GoogleCloudDialogflowCxV3Experiment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Experiment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Environment to delete. Format:
  /// `projects//locations//agents//environments//experiments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified Experiment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Environment. Format:
  /// `projects//locations//agents//environments//experiments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all experiments in the specified Environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Environment to list all environments for. Format:
  /// `projects//locations//agents//environments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListExperimentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListExperimentsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Experiment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the experiment. Format:
  /// projects//locations//agents//environments//experiments/..
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> patch(
    GoogleCloudDialogflowCxV3Experiment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts the specified Experiment.
  ///
  /// This rpc only changes the state of experiment from PENDING to RUNNING.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the experiment to start. Format:
  /// `projects//locations//agents//environments//experiments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> start(
    GoogleCloudDialogflowCxV3StartExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops the specified Experiment.
  ///
  /// This rpc only changes the state of experiment from RUNNING to DONE.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the experiment to stop. Format:
  /// `projects//locations//agents//environments//experiments/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Experiment> stop(
    GoogleCloudDialogflowCxV3StopExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Experiment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource
      get entityTypes =>
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
              _requester);

  ProjectsLocationsAgentsEnvironmentsSessionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause session entity types
  /// to be updated, which in turn might affect results of future queries. Note:
  /// Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fulfills a matched intent returned by MatchIntent.
  ///
  /// Must be called after MatchIntent, with input from MatchIntentResponse.
  /// Otherwise, the behavior is undefined.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FulfillIntentResponse> fulfillIntent(
    GoogleCloudDialogflowCxV3FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns preliminary intent match results, doesn't change the session
  /// status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result through server-side streaming.
  ///
  /// Server-side streaming allows Dialogflow to send
  /// [partial responses](https://cloud.google.com/dialogflow/cx/docs/concept/fulfillment#partial-response)
  /// earlier in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse>
      serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> create(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type to delete. Format:
  /// `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the session entity type.
  /// Format: `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> patch(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsFlowsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsPagesResource get pages =>
      ProjectsLocationsAgentsFlowsPagesResource(_requester);
  ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource
      get transitionRouteGroups =>
          ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource(_requester);
  ProjectsLocationsAgentsFlowsVersionsResource get versions =>
      ProjectsLocationsAgentsFlowsVersionsResource(_requester);

  ProjectsLocationsAgentsFlowsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a flow in the specified agent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a flow for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `flow`: *
  /// `Flow.event_handlers.trigger_fulfillment.messages` *
  /// `Flow.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Flow.transition_routes.trigger_fulfillment.messages` *
  /// `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> create(
    GoogleCloudDialogflowCxV3Flow request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specified flow.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the flow to delete. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for flows with no incoming transitions.
  /// For flows with incoming transitions: * If `force` is set to false, an
  /// error will be returned with message indicating the incoming transitions. *
  /// If `force` is set to true, Dialogflow will remove the flow, as well as any
  /// transitions to the flow (i.e. Target flow in event handlers or Target flow
  /// in transition routes that point to this flow will be cleared).
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the specified flow to a binary file.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: ExportFlowResponse Note that resources (e.g. intents,
  /// entities, webhooks) that the flow references will also be exported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the flow to export. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowCxV3ExportFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified flow.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the flow to get. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the flow for. The following
  /// fields are language dependent: *
  /// `Flow.event_handlers.trigger_fulfillment.messages` *
  /// `Flow.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Flow.transition_routes.trigger_fulfillment.messages` *
  /// `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest flow validation result.
  ///
  /// Flow validation is performed when ValidateFlow is called.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The flow name. Format:
  /// `projects//locations//agents//flows//validationResult`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/validationResult$`.
  ///
  /// [languageCode] - If not specified, the agent's default language is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FlowValidationResult>
      getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified flow to the specified agent from a binary file.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: ImportFlowResponse Note: You should always train a flow
  /// prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to import the flow into. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowCxV3ImportFlowRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all flows in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent containing the flows. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list flows for. The following fields are
  /// language dependent: * `Flow.event_handlers.trigger_fulfillment.messages` *
  /// `Flow.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Flow.transition_routes.trigger_fulfillment.messages` *
  /// `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListFlowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListFlowsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified flow.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the flow. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `flow`: *
  /// `Flow.event_handlers.trigger_fulfillment.messages` *
  /// `Flow.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Flow.transition_routes.trigger_fulfillment.messages` *
  /// `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Flow> patch(
    GoogleCloudDialogflowCxV3Flow request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Flow.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Trains the specified flow.
  ///
  /// Note that only the flow in 'draft' environment is trained. This method is
  /// a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The flow to train. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> train(
    GoogleCloudDialogflowCxV3TrainFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':train';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates the specified flow and creates or updates validation results.
  ///
  /// Please call this API after the training is completed to get the complete
  /// validation results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The flow to validate. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FlowValidationResult> validate(
    GoogleCloudDialogflowCxV3ValidateFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsFlowsPagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsPagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a page in the specified flow.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to create a page for. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `page`: *
  /// `Page.entry_fulfillment.messages` *
  /// `Page.entry_fulfillment.conditional_cases` *
  /// `Page.event_handlers.trigger_fulfillment.messages` *
  /// `Page.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases`
  /// * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` *
  /// `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases`
  /// * `Page.transition_routes.trigger_fulfillment.messages` *
  /// `Page.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> create(
    GoogleCloudDialogflowCxV3Page request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified page.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the page to delete. Format:
  /// `projects//locations//agents//Flows//pages/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for pages with no incoming transitions.
  /// For pages with incoming transitions: * If `force` is set to false, an
  /// error will be returned with message indicating the incoming transitions. *
  /// If `force` is set to true, Dialogflow will remove the page, as well as any
  /// transitions to the page (i.e. Target page in event handlers or Target page
  /// in transition routes that point to this page will be cleared).
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified page.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the page. Format:
  /// `projects//locations//agents//flows//pages/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the page for. The following
  /// fields are language dependent: * `Page.entry_fulfillment.messages` *
  /// `Page.entry_fulfillment.conditional_cases` *
  /// `Page.event_handlers.trigger_fulfillment.messages` *
  /// `Page.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases`
  /// * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` *
  /// `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases`
  /// * `Page.transition_routes.trigger_fulfillment.messages` *
  /// `Page.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all pages in the specified flow.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to list all pages for. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list pages for. The following fields are
  /// language dependent: * `Page.entry_fulfillment.messages` *
  /// `Page.entry_fulfillment.conditional_cases` *
  /// `Page.event_handlers.trigger_fulfillment.messages` *
  /// `Page.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases`
  /// * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` *
  /// `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases`
  /// * `Page.transition_routes.trigger_fulfillment.messages` *
  /// `Page.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListPagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListPagesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified page.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the page. Required for the
  /// Pages.UpdatePage method. Pages.CreatePage populates the name
  /// automatically. Format: `projects//locations//agents//flows//pages/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/pages/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `page`: *
  /// `Page.entry_fulfillment.messages` *
  /// `Page.entry_fulfillment.conditional_cases` *
  /// `Page.event_handlers.trigger_fulfillment.messages` *
  /// `Page.event_handlers.trigger_fulfillment.conditional_cases` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` *
  /// `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases`
  /// * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` *
  /// `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases`
  /// * `Page.transition_routes.trigger_fulfillment.messages` *
  /// `Page.transition_routes.trigger_fulfillment.conditional_cases` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Page> patch(
    GoogleCloudDialogflowCxV3Page request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Page.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates an TransitionRouteGroup in the specified flow.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to create an TransitionRouteGroup for.
  /// Format: `projects//locations//agents//flows/` or
  /// `projects//locations//agents/` for agent-level groups.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in
  /// `TransitionRouteGroup`: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified TransitionRouteGroup.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TransitionRouteGroup to delete. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for transition route group that no page
  /// is using. If the transition route group is referenced by any page: * If
  /// `force` is set to false, an error will be returned with message indicating
  /// pages that reference the transition route group. * If `force` is set to
  /// true, Dialogflow will remove the transition route group, as well as any
  /// reference to it.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified TransitionRouteGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TransitionRouteGroup. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the transition route group for.
  /// The following fields are language dependent: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all transition route groups in the specified flow.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to list all transition route groups for.
  /// Format: \`projects//locations//agents//flows/\` or
  /// \`projects//locations//agents/.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list transition route groups for. The
  /// following fields are language dependent: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified TransitionRouteGroup.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the transition route group.
  /// TransitionRouteGroups.CreateTransitionRouteGroup populates the name
  /// automatically. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in
  /// `TransitionRouteGroup`: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsFlowsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Compares the specified base version with target version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [baseVersion] - Required. Name of the base flow version to compare with
  /// the target version. Use version ID `0` to indicate the draft version of
  /// the specified flow. Format: `projects//locations//agents/
  /// /flows//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3CompareVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3CompareVersionsResponse>
      compareVersions(
    GoogleCloudDialogflowCxV3CompareVersionsRequest request,
    core.String baseVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$baseVersion') + ':compareVersions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3CompareVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Version in the specified Flow.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: CreateVersionOperationMetadata - `response`: Version
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Flow to create an Version for. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDialogflowCxV3Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Version to delete. Format:
  /// `projects//locations//agents//flows//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified Version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Version. Format:
  /// `projects//locations//agents//flows//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Version.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all versions in the specified Flow.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Flow to list all versions for. Format:
  /// `projects//locations//agents//flows/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListVersionsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Loads resources in the specified version to the draft flow.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Version to be loaded to draft flow. Format:
  /// `projects//locations//agents//flows//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> load(
    GoogleCloudDialogflowCxV3LoadVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':load';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Format: projects//locations//agents//flows//versions/. Version ID
  /// is a self-increasing number generated by Dialogflow upon version creation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  /// Currently only `description` and `display_name` can be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Version> patch(
    GoogleCloudDialogflowCxV3Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Version.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsGeneratorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsGeneratorsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a generator in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a generator for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to create generators for the following
  /// fields: * `Generator.prompt_text.text` If not specified, the agent's
  /// default language is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> create(
    GoogleCloudDialogflowCxV3Generator request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified generators.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the generator to delete. Format:
  /// `projects//locations//agents//generators/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for generators not being used. For
  /// generators that are used by pages/flows/transition route groups: * If
  /// `force` is set to false, an error will be returned with message indicating
  /// the referenced resources. * If `force` is set to true, Dialogflow will
  /// remove the generator, as well as any references to the generator (i.e.
  /// Generator) in fulfillments.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified generator.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the generator. Format:
  /// `projects//locations//agents//generators/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list generators for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all generators in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all generators for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list generators for.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListGeneratorsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListGeneratorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the specified generator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the generator. Must be set for the
  /// Generators.UpdateGenerator method. Generators.CreateGenerate populates the
  /// name automatically. Format: `projects//locations//agents//generators/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list generators for.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Generator> patch(
    GoogleCloudDialogflowCxV3Generator request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Generator.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsIntentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an intent in the specified agent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create an intent for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `intent`: *
  /// `Intent.training_phrases.parts.text` If not specified, the agent's default
  /// language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> create(
    GoogleCloudDialogflowCxV3Intent request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified intent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. Format:
  /// `projects//locations//agents//intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the selected intents.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ExportIntentsMetadata - `response`: ExportIntentsResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent agent to export intents.
  /// Format: `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowCxV3ExportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Format:
  /// `projects//locations//agents//intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the intent for. The following
  /// fields are language dependent: * `Intent.training_phrases.parts.text` If
  /// not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified intents into the agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ImportIntentsMetadata - `response`: ImportIntentsResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to import the intents into. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowCxV3ImportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [intentView] - The resource view to apply to the returned intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Not specified. Treated as INTENT_VIEW_FULL.
  /// - "INTENT_VIEW_PARTIAL" : Training phrases field is not populated in the
  /// response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - The language to list intents for. The following fields
  /// are language dependent: * `Intent.training_phrases.parts.text` If not
  /// specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified intent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the intent. Required for the
  /// Intents.UpdateIntent method. Intents.CreateIntent populates the name
  /// automatically. Format: `projects//locations//agents//intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/intents/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in `intent`: *
  /// `Intent.training_phrases.parts.text` If not specified, the agent's default
  /// language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Intent> patch(
    GoogleCloudDialogflowCxV3Intent request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Intent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsSessionsEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentsSessionsEntityTypesResource(_requester);

  ProjectsLocationsAgentsSessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause session entity types
  /// to be updated, which in turn might affect results of future queries. Note:
  /// Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fulfills a matched intent returned by MatchIntent.
  ///
  /// Must be called after MatchIntent, with input from MatchIntentResponse.
  /// Otherwise, the behavior is undefined.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3FulfillIntentResponse> fulfillIntent(
    GoogleCloudDialogflowCxV3FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns preliminary intent match results, doesn't change the session
  /// status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result through server-side streaming.
  ///
  /// Server-side streaming allows Dialogflow to send
  /// [partial responses](https://cloud.google.com/dialogflow/cx/docs/concept/fulfillment#partial-response)
  /// earlier in a single request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment. It's up to
  /// the API caller to choose an appropriate `Session ID`. It can be a random
  /// number or some type of session identifiers (preferably hashed). The length
  /// of the `Session ID` must not exceed 36 characters. For more information,
  /// see the
  /// [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3DetectIntentResponse>
      serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the feedback received from the user for a single turn of the bot
  /// response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session the feedback was sent to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3AnswerFeedback].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3AnswerFeedback> submitAnswerFeedback(
    GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$session') + ':submitAnswerFeedback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsSessionsEntityTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> create(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type to delete. Format:
  /// `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/`. If `Environment
  /// ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the session entity type.
  /// Format: `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SessionEntityType> patch(
    GoogleCloudDialogflowCxV3SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsTestCasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTestCasesResultsResource get results =>
      ProjectsLocationsAgentsTestCasesResultsResource(_requester);

  ProjectsLocationsAgentsTestCasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Batch deletes test cases.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to delete test cases from. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/testCases:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Kicks off a batch run of test cases.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: BatchRunTestCasesMetadata - `response`:
  /// BatchRunTestCasesResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Agent name. Format: `projects//locations//agents/ `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> batchRun(
    GoogleCloudDialogflowCxV3BatchRunTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:batchRun';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Calculates the test coverage for an agent.
  ///
  /// Request parameters:
  ///
  /// [agent] - Required. The agent to calculate coverage for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [type] - Required. The type of coverage requested.
  /// Possible string values are:
  /// - "COVERAGE_TYPE_UNSPECIFIED" : Should never be used.
  /// - "INTENT" : Intent coverage.
  /// - "PAGE_TRANSITION" : Page transition coverage.
  /// - "TRANSITION_ROUTE_GROUP" : Transition route group coverage.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3CalculateCoverageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3CalculateCoverageResponse>
      calculateCoverage(
    core.String agent, {
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$agent') + '/testCases:calculateCoverage';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a test case for the given agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create the test case for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> create(
    GoogleCloudDialogflowCxV3TestCase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports the test cases under the agent to a Cloud Storage bucket or a
  /// local file.
  ///
  /// Filter can be applied to export a subset of test cases. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ExportTestCasesMetadata - `response`: ExportTestCasesResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent where to export test cases from. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowCxV3ExportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a test case.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the testcase. Format:
  /// `projects//locations//agents//testCases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the test cases from a Cloud Storage bucket or a local file.
  ///
  /// It always creates new test cases and won't overwrite any existing ones.
  /// The provided ID in the imported test case is neglected. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ImportTestCasesMetadata - `response`: ImportTestCasesResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to import test cases to. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowCxV3ImportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches a list of test cases for a given agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all pages for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20. Note that when TestCaseView = FULL, the maximum page size
  /// allowed is 20. When TestCaseView = BASIC, the maximum page size allowed is
  /// 500.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [view] - Specifies whether response should include all fields or just the
  /// metadata.
  /// Possible string values are:
  /// - "TEST_CASE_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include basic metadata about the test case, but not the
  /// conversation turns. This is the default value.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTestCasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified test case.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the test case. TestCases.CreateTestCase
  /// will populate the name automatically. Otherwise use format:
  /// `projects//locations//agents/ /testCases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to specify which fields should be
  /// updated. The `creationTime` and `lastTestResult` cannot be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCase> patch(
    GoogleCloudDialogflowCxV3TestCase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCase.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Kicks off a test case run.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: RunTestCaseMetadata - `response`: RunTestCaseResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format of test case name to run: `projects//locations/
  /// /agents//testCases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> run(
    GoogleCloudDialogflowCxV3RunTestCaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsTestCasesResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTestCasesResultsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a test case result.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the testcase. Format:
  /// `projects//locations//agents//testCases//results/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+/results/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TestCaseResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TestCaseResult> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches the list of run results for the given test case.
  ///
  /// A maximum of 100 results are kept for each test case.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The test case to list results for. Format:
  /// `projects//locations//agents// testCases/`. Specify a `-` as a wildcard
  /// for TestCase ID to list results across multiple test cases.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter test case results. See
  /// [API Filtering](https://aip.dev/160). The expression is case insensitive.
  /// Only 'AND' is supported for logical operators. The supported syntax is
  /// listed below in detail: \[AND \] ... \[AND latest\] The supported fields
  /// and operators are: field operator `environment` `=`, `IN` (Use value
  /// `draft` for draft environment) `test_time` `>`, `<` `latest` only returns
  /// the latest test result in all results for each test case. Examples: *
  /// "environment=draft AND latest" matches the latest test result for each
  /// test case in the draft environment. * "environment IN (e1,e2)" matches any
  /// test case results with an environment resource name of either "e1" or
  /// "e2". * "test_time \> 1602540713" matches any test case results with test
  /// time later than a unix timestamp in seconds 1602540713.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListTestCaseResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTestCaseResultsResponse> list(
    core.String parent, {
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/results';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTransitionRouteGroupsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates an TransitionRouteGroup in the specified flow.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to create an TransitionRouteGroup for.
  /// Format: `projects//locations//agents//flows/` or
  /// `projects//locations//agents/` for agent-level groups.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in
  /// `TransitionRouteGroup`: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified TransitionRouteGroup.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TransitionRouteGroup to delete. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for transition route group that no page
  /// is using. If the transition route group is referenced by any page: * If
  /// `force` is set to false, an error will be returned with message indicating
  /// pages that reference the transition route group. * If `force` is set to
  /// true, Dialogflow will remove the transition route group, as well as any
  /// reference to it.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified TransitionRouteGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TransitionRouteGroup. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - The language to retrieve the transition route group for.
  /// The following fields are language dependent: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all transition route groups in the specified flow.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The flow to list all transition route groups for.
  /// Format: \`projects//locations//agents//flows/\` or
  /// \`projects//locations//agents/.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [languageCode] - The language to list transition route groups for. The
  /// following fields are language dependent: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified TransitionRouteGroup.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the transition route group.
  /// TransitionRouteGroups.CreateTransitionRouteGroup populates the name
  /// automatically. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/transitionRouteGroups/\[^/\]+$`.
  ///
  /// [languageCode] - The language of the following fields in
  /// `TransitionRouteGroup`: *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` *
  /// `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [updateMask] - The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3TransitionRouteGroup request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentsWebhooksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsWebhooksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a webhook in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a webhook for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> create(
    GoogleCloudDialogflowCxV3Webhook request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified webhook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the webhook to delete. Format:
  /// `projects//locations//agents//webhooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for webhook not being used. For
  /// webhooks that are used by pages/flows/transition route groups: * If
  /// `force` is set to false, an error will be returned with message indicating
  /// the referenced resources. * If `force` is set to true, Dialogflow will
  /// remove the webhook, as well as any references to the webhook (i.e. Webhook
  /// and tagin fulfillments that point to this webhook will be removed).
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified webhook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the webhook. Format:
  /// `projects//locations//agents//webhooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all webhooks in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all webhooks for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListWebhooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListWebhooksResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified webhook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the webhook. Required for the
  /// Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name
  /// automatically. Format: `projects//locations//agents//webhooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/webhooks/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3Webhook> patch(
    GoogleCloudDialogflowCxV3Webhook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3Webhook.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSecuritySettingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecuritySettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create security settings in the specified location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to create an SecuritySettings for.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> create(
    GoogleCloudDialogflowCxV3SecuritySettings request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified SecuritySettings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecuritySettings to delete. Format:
  /// `projects//locations//securitySettings/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified SecuritySettings.
  ///
  /// The returned settings may be stale by up to 1 minute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the settings. Format:
  /// `projects//locations//securitySettings/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all security settings in the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to list all security settings for.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 20 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3ListSecuritySettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3ListSecuritySettingsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified SecuritySettings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the settings. Required for the
  /// SecuritySettingsService.UpdateSecuritySettings method.
  /// SecuritySettingsService.CreateSecuritySettings populates the name
  /// automatically. Format: `projects//locations//securitySettings/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/securitySettings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3SecuritySettings> patch(
    GoogleCloudDialogflowCxV3SecuritySettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
///
/// Settings exposed at lower level overrides the settings exposed at higher
/// level. Overriding occurs at the sub-setting level. For example, the
/// playback_interruption_settings at fulfillment level only overrides the
/// playback_interruption_settings at the agent level, leaving other settings at
/// the agent level unchanged. DTMF settings does not override each other. DTMF
/// settings set at different levels define DTMF detections running in parallel.
/// Hierarchy: Agent-\>Flow-\>Page-\>Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3AdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured
  /// Google Cloud Storage destination.
  ///
  /// Exposed at the following levels: - Agent level - Flow level
  GoogleCloudDialogflowCxV3GcsDestination? audioExportGcsDestination;

  /// Settings for DTMF.
  ///
  /// Exposed at the following levels: - Agent level - Flow level - Page level -
  /// Parameter level.
  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings? dtmfSettings;

  /// Settings for logging.
  ///
  /// Settings for Dialogflow History, Contact Center messages, StackDriver
  /// logs, and speech logging. Exposed at the following levels: - Agent level.
  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings? loggingSettings;

  /// Settings for speech to text detection.
  ///
  /// Exposed at the following levels: - Agent level - Flow level - Page level -
  /// Parameter level
  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings? speechSettings;

  GoogleCloudDialogflowCxV3AdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(core.Map json_)
      : this(
          audioExportGcsDestination:
              json_.containsKey('audioExportGcsDestination')
                  ? GoogleCloudDialogflowCxV3GcsDestination.fromJson(
                      json_['audioExportGcsDestination']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dtmfSettings: json_.containsKey('dtmfSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromJson(
                  json_['dtmfSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          loggingSettings: json_.containsKey('loggingSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
                  .fromJson(json_['loggingSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          speechSettings: json_.containsKey('speechSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings
                  .fromJson(json_['speechSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioExportGcsDestination != null)
          'audioExportGcsDestination': audioExportGcsDestination!,
        if (dtmfSettings != null) 'dtmfSettings': dtmfSettings!,
        if (loggingSettings != null) 'loggingSettings': loggingSettings!,
        if (speechSettings != null) 'speechSettings': speechSettings!,
      };
}

/// Define behaviors for DTMF (dual tone multi frequency).
class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequency)
  /// events.
  ///
  /// For example, if the caller presses a button on their telephone keypad and
  /// DTMF processing is enabled, Dialogflow will detect the event (e.g. a "3"
  /// was pressed) in the incoming audio and pass the event to the bot to drive
  /// business logic (e.g. when 3 is pressed, return the account balance).
  core.bool? enabled;

  /// The digit that terminates a DTMF digit sequence.
  core.String? finishDigit;

  /// Max length of DTMF digits.
  core.int? maxDigits;

  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings({
    this.enabled,
    this.finishDigit,
    this.maxDigits,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          finishDigit: json_.containsKey('finishDigit')
              ? json_['finishDigit'] as core.String
              : null,
          maxDigits: json_.containsKey('maxDigits')
              ? json_['maxDigits'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (finishDigit != null) 'finishDigit': finishDigit!,
        if (maxDigits != null) 'maxDigits': maxDigits!,
      };
}

/// Define behaviors on logging.
class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings {
  /// If true, DF Interaction logging is currently enabled.
  core.bool? enableInteractionLogging;

  /// If true, StackDriver logging is currently enabled.
  core.bool? enableStackdriverLogging;

  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings({
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromJson(
      core.Map json_)
      : this(
          enableInteractionLogging:
              json_.containsKey('enableInteractionLogging')
                  ? json_['enableInteractionLogging'] as core.bool
                  : null,
          enableStackdriverLogging:
              json_.containsKey('enableStackdriverLogging')
                  ? json_['enableStackdriverLogging'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableInteractionLogging != null)
          'enableInteractionLogging': enableInteractionLogging!,
        if (enableStackdriverLogging != null)
          'enableStackdriverLogging': enableStackdriverLogging!,
      };
}

/// Define behaviors of speech to text detection.
class GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings {
  /// Sensitivity of the speech model that detects the end of speech.
  ///
  /// Scale from 0 to 100.
  core.int? endpointerSensitivity;

  /// Mapping from language to Speech-to-Text model.
  ///
  /// The mapped Speech-to-Text model will be selected for requests from its
  /// corresponding language. For more information, see
  /// [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  core.Map<core.String, core.String>? models;

  /// Timeout before detecting no speech.
  core.String? noSpeechTimeout;

  /// Use timeout based endpointing, interpreting endpointer sensitivy as
  /// seconds of timeout value.
  core.bool? useTimeoutBasedEndpointing;

  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  GoogleCloudDialogflowCxV3AdvancedSettingsSpeechSettings.fromJson(
      core.Map json_)
      : this(
          endpointerSensitivity: json_.containsKey('endpointerSensitivity')
              ? json_['endpointerSensitivity'] as core.int
              : null,
          models: json_.containsKey('models')
              ? (json_['models'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          noSpeechTimeout: json_.containsKey('noSpeechTimeout')
              ? json_['noSpeechTimeout'] as core.String
              : null,
          useTimeoutBasedEndpointing:
              json_.containsKey('useTimeoutBasedEndpointing')
                  ? json_['useTimeoutBasedEndpointing'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointerSensitivity != null)
          'endpointerSensitivity': endpointerSensitivity!,
        if (models != null) 'models': models!,
        if (noSpeechTimeout != null) 'noSpeechTimeout': noSpeechTimeout!,
        if (useTimeoutBasedEndpointing != null)
          'useTimeoutBasedEndpointing': useTimeoutBasedEndpointing!,
      };
}

/// Agents are best described as Natural Language Understanding (NLU) modules
/// that transform user requests into actionable data.
///
/// You can include agents in your app, product, or service to determine user
/// intent and respond to the user in a natural way. After you create an agent,
/// you can add Intents, Entity Types, Flows, Fulfillments, Webhooks,
/// TransitionRouteGroups and so on to manage the conversation flows.
class GoogleCloudDialogflowCxV3Agent {
  /// Hierarchical advanced settings for this agent.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// Answer feedback collection settings.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings? answerFeedbackSettings;

  /// The URI of the agent's avatar.
  ///
  /// Avatars are used throughout the Dialogflow console and in the self-hosted
  /// [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
  /// integration.
  core.String? avatarUri;

  /// The default language of the agent as a language tag.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be
  /// set by the Agents.UpdateAgent method.
  ///
  /// Required. Immutable.
  core.String? defaultLanguageCode;

  /// The description of the agent.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  core.String? description;

  /// The human-readable name of the agent, unique within the location.
  ///
  /// Required.
  core.String? displayName;

  /// Enable training multi-lingual models for this agent.
  ///
  /// These models will be trained on all the languages supported by the agent.
  ///
  /// Optional.
  core.bool? enableMultiLanguageTraining;

  /// Indicates if automatic spell correction is enabled in detect intent
  /// requests.
  core.bool? enableSpellCorrection;

  /// Indicates if stackdriver logging is enabled for the agent.
  ///
  /// Please use agent.advanced_settings instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings? genAppBuilderSettings;

  /// Git integration settings for this agent.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings? gitIntegrationSettings;

  /// Indicates whether the agent is locked for changes.
  ///
  /// If the agent is locked, modifications to the agent will be rejected except
  /// for RestoreAgent.
  core.bool? locked;

  /// The unique identifier of the agent.
  ///
  /// Required for the Agents.UpdateAgent method. Agents.CreateAgent populates
  /// the name automatically. Format: `projects//locations//agents/`.
  core.String? name;

  /// Settings for end user personalization.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3AgentPersonalizationSettings?
      personalizationSettings;

  /// Name of the SecuritySettings reference for the agent.
  ///
  /// Format: `projects//locations//securitySettings/`.
  core.String? securitySettings;

  /// Speech recognition related settings.
  GoogleCloudDialogflowCxV3SpeechToTextSettings? speechToTextSettings;

  /// Name of the start flow in this agent.
  ///
  /// A start flow will be automatically created when the agent is created, and
  /// can only be deleted by deleting the agent. Format:
  /// `projects//locations//agents//flows/`.
  ///
  /// Immutable.
  core.String? startFlow;

  /// The list of all languages supported by the agent (except for the
  /// `default_language_code`).
  core.List<core.String>? supportedLanguageCodes;

  /// Settings on instructing the speech synthesizer on how to generate the
  /// output audio content.
  GoogleCloudDialogflowCxV3TextToSpeechSettings? textToSpeechSettings;

  /// The time zone of the agent from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// Required.
  core.String? timeZone;

  GoogleCloudDialogflowCxV3Agent({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.defaultLanguageCode,
    this.description,
    this.displayName,
    this.enableMultiLanguageTraining,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    this.locked,
    this.name,
    this.personalizationSettings,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    this.timeZone,
  });

  GoogleCloudDialogflowCxV3Agent.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          answerFeedbackSettings: json_.containsKey('answerFeedbackSettings')
              ? GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromJson(
                  json_['answerFeedbackSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          avatarUri: json_.containsKey('avatarUri')
              ? json_['avatarUri'] as core.String
              : null,
          defaultLanguageCode: json_.containsKey('defaultLanguageCode')
              ? json_['defaultLanguageCode'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enableMultiLanguageTraining:
              json_.containsKey('enableMultiLanguageTraining')
                  ? json_['enableMultiLanguageTraining'] as core.bool
                  : null,
          enableSpellCorrection: json_.containsKey('enableSpellCorrection')
              ? json_['enableSpellCorrection'] as core.bool
              : null,
          enableStackdriverLogging:
              json_.containsKey('enableStackdriverLogging')
                  ? json_['enableStackdriverLogging'] as core.bool
                  : null,
          genAppBuilderSettings: json_.containsKey('genAppBuilderSettings')
              ? GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromJson(
                  json_['genAppBuilderSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gitIntegrationSettings: json_.containsKey('gitIntegrationSettings')
              ? GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromJson(
                  json_['gitIntegrationSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locked:
              json_.containsKey('locked') ? json_['locked'] as core.bool : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          personalizationSettings: json_.containsKey('personalizationSettings')
              ? GoogleCloudDialogflowCxV3AgentPersonalizationSettings.fromJson(
                  json_['personalizationSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          securitySettings: json_.containsKey('securitySettings')
              ? json_['securitySettings'] as core.String
              : null,
          speechToTextSettings: json_.containsKey('speechToTextSettings')
              ? GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(
                  json_['speechToTextSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          startFlow: json_.containsKey('startFlow')
              ? json_['startFlow'] as core.String
              : null,
          supportedLanguageCodes: json_.containsKey('supportedLanguageCodes')
              ? (json_['supportedLanguageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          textToSpeechSettings: json_.containsKey('textToSpeechSettings')
              ? GoogleCloudDialogflowCxV3TextToSpeechSettings.fromJson(
                  json_['textToSpeechSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (answerFeedbackSettings != null)
          'answerFeedbackSettings': answerFeedbackSettings!,
        if (avatarUri != null) 'avatarUri': avatarUri!,
        if (defaultLanguageCode != null)
          'defaultLanguageCode': defaultLanguageCode!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (enableMultiLanguageTraining != null)
          'enableMultiLanguageTraining': enableMultiLanguageTraining!,
        if (enableSpellCorrection != null)
          'enableSpellCorrection': enableSpellCorrection!,
        if (enableStackdriverLogging != null)
          'enableStackdriverLogging': enableStackdriverLogging!,
        if (genAppBuilderSettings != null)
          'genAppBuilderSettings': genAppBuilderSettings!,
        if (gitIntegrationSettings != null)
          'gitIntegrationSettings': gitIntegrationSettings!,
        if (locked != null) 'locked': locked!,
        if (name != null) 'name': name!,
        if (personalizationSettings != null)
          'personalizationSettings': personalizationSettings!,
        if (securitySettings != null) 'securitySettings': securitySettings!,
        if (speechToTextSettings != null)
          'speechToTextSettings': speechToTextSettings!,
        if (startFlow != null) 'startFlow': startFlow!,
        if (supportedLanguageCodes != null)
          'supportedLanguageCodes': supportedLanguageCodes!,
        if (textToSpeechSettings != null)
          'textToSpeechSettings': textToSpeechSettings!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Settings for answer feedback collection.
class GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings {
  /// If enabled, end users will be able to provide answer feedback to
  /// Dialogflow responses.
  ///
  /// Feature works only if interaction logging is enabled in the Dialogflow
  /// agent.
  ///
  /// Optional.
  core.bool? enableAnswerFeedback;

  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings({
    this.enableAnswerFeedback,
  });

  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromJson(core.Map json_)
      : this(
          enableAnswerFeedback: json_.containsKey('enableAnswerFeedback')
              ? json_['enableAnswerFeedback'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableAnswerFeedback != null)
          'enableAnswerFeedback': enableAnswerFeedback!,
      };
}

/// Settings for Gen App Builder.
class GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings {
  /// The full name of the Gen App Builder engine related to this agent if there
  /// is one.
  ///
  /// Format: `projects/{Project ID}/locations/{Location
  /// ID}/collections/{Collection ID}/engines/{Engine ID}`
  ///
  /// Required.
  core.String? engine;

  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings({
    this.engine,
  });

  GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromJson(core.Map json_)
      : this(
          engine: json_.containsKey('engine')
              ? json_['engine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (engine != null) 'engine': engine!,
      };
}

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettings {
  /// GitHub settings.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings?
      githubSettings;

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings({
    this.githubSettings,
  });

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromJson(core.Map json_)
      : this(
          githubSettings: json_.containsKey('githubSettings')
              ? GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings
                  .fromJson(json_['githubSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (githubSettings != null) 'githubSettings': githubSettings!,
      };
}

/// Settings of integration with GitHub.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings {
  /// The access token used to authenticate the access to the GitHub repository.
  core.String? accessToken;

  /// A list of branches configured to be used from Dialogflow.
  core.List<core.String>? branches;

  /// The unique repository display name for the GitHub repository.
  core.String? displayName;

  /// The GitHub repository URI related to the agent.
  core.String? repositoryUri;

  /// The branch of the GitHub repository tracked for this agent.
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings.fromJson(
      core.Map json_)
      : this(
          accessToken: json_.containsKey('accessToken')
              ? json_['accessToken'] as core.String
              : null,
          branches: json_.containsKey('branches')
              ? (json_['branches'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          repositoryUri: json_.containsKey('repositoryUri')
              ? json_['repositoryUri'] as core.String
              : null,
          trackingBranch: json_.containsKey('trackingBranch')
              ? json_['trackingBranch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (branches != null) 'branches': branches!,
        if (displayName != null) 'displayName': displayName!,
        if (repositoryUri != null) 'repositoryUri': repositoryUri!,
        if (trackingBranch != null) 'trackingBranch': trackingBranch!,
      };
}

/// Settings for end user personalization.
class GoogleCloudDialogflowCxV3AgentPersonalizationSettings {
  /// Default end user metadata, used when processing DetectIntent requests.
  ///
  /// Recommended to be filled as a template instead of hard-coded value, for
  /// example { "age": "$session.params.age" }. The data will be merged with the
  /// QueryParameters.end_user_metadata in DetectIntentRequest.query_params
  /// during query processing.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? defaultEndUserMetadata;

  GoogleCloudDialogflowCxV3AgentPersonalizationSettings({
    this.defaultEndUserMetadata,
  });

  GoogleCloudDialogflowCxV3AgentPersonalizationSettings.fromJson(core.Map json_)
      : this(
          defaultEndUserMetadata: json_.containsKey('defaultEndUserMetadata')
              ? json_['defaultEndUserMetadata']
                  as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultEndUserMetadata != null)
          'defaultEndUserMetadata': defaultEndUserMetadata!,
      };
}

/// The response message for Agents.GetAgentValidationResult.
class GoogleCloudDialogflowCxV3AgentValidationResult {
  /// Contains all flow validation results.
  core.List<GoogleCloudDialogflowCxV3FlowValidationResult>?
      flowValidationResults;

  /// The unique identifier of the agent validation result.
  ///
  /// Format: `projects//locations//agents//validationResult`.
  core.String? name;

  GoogleCloudDialogflowCxV3AgentValidationResult({
    this.flowValidationResults,
    this.name,
  });

  GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(core.Map json_)
      : this(
          flowValidationResults: json_.containsKey('flowValidationResults')
              ? (json_['flowValidationResults'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flowValidationResults != null)
          'flowValidationResults': flowValidationResults!,
        if (name != null) 'name': name!,
      };
}

/// Stores information about feedback provided by users about a response.
class GoogleCloudDialogflowCxV3AnswerFeedback {
  /// Custom rating from the user about the provided answer, with maximum length
  /// of 1024 characters.
  ///
  /// For example, client could use a customized JSON object to indicate the
  /// rating.
  ///
  /// Optional.
  core.String? customRating;

  /// Rating from user for the specific Dialogflow response.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RATING_UNSPECIFIED" : Rating not specified.
  /// - "THUMBS_UP" : Thumbs up feedback from user.
  /// - "THUMBS_DOWN" : Thumbs down feedback from user.
  core.String? rating;

  /// In case of thumbs down rating provided, users can optionally provide
  /// context about the rating.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason? ratingReason;

  GoogleCloudDialogflowCxV3AnswerFeedback({
    this.customRating,
    this.rating,
    this.ratingReason,
  });

  GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(core.Map json_)
      : this(
          customRating: json_.containsKey('customRating')
              ? json_['customRating'] as core.String
              : null,
          rating: json_.containsKey('rating')
              ? json_['rating'] as core.String
              : null,
          ratingReason: json_.containsKey('ratingReason')
              ? GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.fromJson(
                  json_['ratingReason'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customRating != null) 'customRating': customRating!,
        if (rating != null) 'rating': rating!,
        if (ratingReason != null) 'ratingReason': ratingReason!,
      };
}

/// Stores extra information about why users provided thumbs down rating.
class GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason {
  /// Additional feedback about the rating.
  ///
  /// This field can be populated without choosing a predefined `reason`.
  ///
  /// Optional.
  core.String? feedback;

  /// Custom reason labels for thumbs down rating provided by the user.
  ///
  /// The maximum number of labels allowed is 10 and the maximum length of a
  /// single label is 128 characters.
  ///
  /// Optional.
  core.List<core.String>? reasonLabels;

  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason({
    this.feedback,
    this.reasonLabels,
  });

  GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.fromJson(core.Map json_)
      : this(
          feedback: json_.containsKey('feedback')
              ? json_['feedback'] as core.String
              : null,
          reasonLabels: json_.containsKey('reasonLabels')
              ? (json_['reasonLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedback != null) 'feedback': feedback!,
        if (reasonLabels != null) 'reasonLabels': reasonLabels!,
      };
}

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3AudioInput {
  /// The natural language speech audio to be processed.
  ///
  /// A single request can contain up to 2 minutes of speech audio data. The
  /// transcribed text cannot contain more than 256 bytes. For non-streaming
  /// audio detect intent, both `config` and `audio` must be provided. For
  /// streaming audio detect intent, `config` must be provided in the first
  /// request and `audio` must be provided in all following requests.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Instructs the speech recognizer how to process the speech audio.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3InputAudioConfig? config;

  GoogleCloudDialogflowCxV3AudioInput({
    this.audio,
    this.config,
  });

  GoogleCloudDialogflowCxV3AudioInput.fromJson(core.Map json_)
      : this(
          audio:
              json_.containsKey('audio') ? json_['audio'] as core.String : null,
          config: json_.containsKey('config')
              ? GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audio != null) 'audio': audio!,
        if (config != null) 'config': config!,
      };
}

/// Configuration of the barge-in behavior.
///
/// Barge-in instructs the API to return a detected utterance at a proper time
/// while the client is playing back the response audio from a previous request.
/// When the client sees the utterance, it should stop the playback and
/// immediately get ready for receiving the responses for the current request.
/// The barge-in handling requires the client to start streaming audio input as
/// soon as it starts playing back the audio from the previous response. The
/// playback is modeled into two phases: * No barge-in phase: which goes first
/// and during which speech detection should not be carried out. * Barge-in
/// phase: which follows the no barge-in phase and during which the API starts
/// speech detection and may inform the client that an utterance has been
/// detected. Note that no-speech event is not expected in this phase. The
/// client provides this configuration in terms of the durations of those two
/// phases. The durations are measured in terms of the audio length from the the
/// start of the input audio. No-speech event is a response with
/// END_OF_UTTERANCE without any transcript following up.
class GoogleCloudDialogflowCxV3BargeInConfig {
  /// Duration that is not eligible for barge-in at the beginning of the input
  /// audio.
  core.String? noBargeInDuration;

  /// Total duration for the playback at the beginning of the input audio.
  core.String? totalDuration;

  GoogleCloudDialogflowCxV3BargeInConfig({
    this.noBargeInDuration,
    this.totalDuration,
  });

  GoogleCloudDialogflowCxV3BargeInConfig.fromJson(core.Map json_)
      : this(
          noBargeInDuration: json_.containsKey('noBargeInDuration')
              ? json_['noBargeInDuration'] as core.String
              : null,
          totalDuration: json_.containsKey('totalDuration')
              ? json_['totalDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (noBargeInDuration != null) 'noBargeInDuration': noBargeInDuration!,
        if (totalDuration != null) 'totalDuration': totalDuration!,
      };
}

/// The request message for TestCases.BatchDeleteTestCases.
class GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest {
  /// Format of test case names: `projects//locations/ /agents//testCases/`.
  ///
  /// Required.
  core.List<core.String>? names;

  GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest({
    this.names,
  });

  GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The request message for TestCases.BatchRunTestCases.
class GoogleCloudDialogflowCxV3BatchRunTestCasesRequest {
  /// If not set, draft environment is assumed.
  ///
  /// Format: `projects//locations//agents//environments/`.
  ///
  /// Optional.
  core.String? environment;

  /// Format: `projects//locations//agents//testCases/`.
  ///
  /// Required.
  core.List<core.String>? testCases;

  GoogleCloudDialogflowCxV3BatchRunTestCasesRequest({
    this.environment,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
          testCases: json_.containsKey('testCases')
              ? (json_['testCases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (testCases != null) 'testCases': testCases!,
      };
}

/// Boost specification to boost certain documents.
///
/// A copy of google.cloud.discoveryengine.v1main.BoostSpec, field documentation
/// is available at
/// https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1alpha/BoostSpec
class GoogleCloudDialogflowCxV3BoostSpec {
  /// Condition boost specifications.
  ///
  /// If a document matches multiple conditions in the specifictions, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec>?
      conditionBoostSpecs;

  GoogleCloudDialogflowCxV3BoostSpec({
    this.conditionBoostSpecs,
  });

  GoogleCloudDialogflowCxV3BoostSpec.fromJson(core.Map json_)
      : this(
          conditionBoostSpecs: json_.containsKey('conditionBoostSpecs')
              ? (json_['conditionBoostSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditionBoostSpecs != null)
          'conditionBoostSpecs': conditionBoostSpecs!,
      };
}

/// Boost applies to documents which match a condition.
class GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec {
  /// Strength of the condition boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the
  /// document a big promotion. However, it does not necessarily mean that the
  /// boosted document will be the top result at all times, nor that other
  /// documents will be excluded. Results could still be shown even when none of
  /// them matches the condition. And results that are significantly more
  /// relevant to the search query can still trump your heavily favored but
  /// irrelevant documents. Setting to -1.0 gives the document a big demotion.
  /// However, results that are deeply relevant might still be shown. The
  /// document will have an upstream battle to get a fairly high ranking, but it
  /// is not blocked out completely. Setting to 0.0 means no boost applied. The
  /// boosting condition is ignored.
  ///
  /// Optional.
  core.double? boost;

  /// An expression which specifies a boost condition.
  ///
  /// The syntax and supported fields are the same as a filter expression.
  /// Examples: * To boost documents with document ID "doc_1" or "doc_2", and
  /// color "Red" or "Blue": * (id: ANY("doc_1", "doc_2")) AND (color:
  /// ANY("Red","Blue"))
  ///
  /// Optional.
  core.String? condition;

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec({
    this.boost,
    this.condition,
  });

  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec.fromJson(core.Map json_)
      : this(
          boost: json_.containsKey('boost')
              ? (json_['boost'] as core.num).toDouble()
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boost != null) 'boost': boost!,
        if (condition != null) 'condition': condition!,
      };
}

/// Boost specifications for data stores.
class GoogleCloudDialogflowCxV3BoostSpecs {
  /// Data Stores where the boosting configuration is applied.
  ///
  /// The full names of the referenced data stores. Formats:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
  /// `projects/{project}/locations/{location}/dataStores/{data_store}`
  ///
  /// Optional.
  core.List<core.String>? dataStores;

  /// A list of boosting specifications.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3BoostSpec>? spec;

  GoogleCloudDialogflowCxV3BoostSpecs({
    this.dataStores,
    this.spec,
  });

  GoogleCloudDialogflowCxV3BoostSpecs.fromJson(core.Map json_)
      : this(
          dataStores: json_.containsKey('dataStores')
              ? (json_['dataStores'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spec: json_.containsKey('spec')
              ? (json_['spec'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3BoostSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStores != null) 'dataStores': dataStores!,
        if (spec != null) 'spec': spec!,
      };
}

/// The response message for TestCases.CalculateCoverage.
class GoogleCloudDialogflowCxV3CalculateCoverageResponse {
  /// The agent to calculate coverage for.
  ///
  /// Format: `projects//locations//agents/`.
  core.String? agent;

  /// Intent coverage.
  GoogleCloudDialogflowCxV3IntentCoverage? intentCoverage;

  /// Transition route group coverage.
  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage? routeGroupCoverage;

  /// Transition (excluding transition route groups) coverage.
  GoogleCloudDialogflowCxV3TransitionCoverage? transitionCoverage;

  GoogleCloudDialogflowCxV3CalculateCoverageResponse({
    this.agent,
    this.intentCoverage,
    this.routeGroupCoverage,
    this.transitionCoverage,
  });

  GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(core.Map json_)
      : this(
          agent:
              json_.containsKey('agent') ? json_['agent'] as core.String : null,
          intentCoverage: json_.containsKey('intentCoverage')
              ? GoogleCloudDialogflowCxV3IntentCoverage.fromJson(
                  json_['intentCoverage']
                      as core.Map<core.String, core.dynamic>)
              : null,
          routeGroupCoverage: json_.containsKey('routeGroupCoverage')
              ? GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(
                  json_['routeGroupCoverage']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transitionCoverage: json_.containsKey('transitionCoverage')
              ? GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(
                  json_['transitionCoverage']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (intentCoverage != null) 'intentCoverage': intentCoverage!,
        if (routeGroupCoverage != null)
          'routeGroupCoverage': routeGroupCoverage!,
        if (transitionCoverage != null)
          'transitionCoverage': transitionCoverage!,
      };
}

/// Changelogs represents a change made to a given agent.
class GoogleCloudDialogflowCxV3Changelog {
  /// The action of the change.
  core.String? action;

  /// The timestamp of the change.
  core.String? createTime;

  /// The affected resource display name of the change.
  core.String? displayName;

  /// The affected language code of the change.
  core.String? languageCode;

  /// The unique identifier of the changelog.
  ///
  /// Format: `projects//locations//agents//changelogs/`.
  core.String? name;

  /// The affected resource name of the change.
  core.String? resource;

  /// The affected resource type.
  core.String? type;

  /// Email address of the authenticated user.
  core.String? userEmail;

  GoogleCloudDialogflowCxV3Changelog({
    this.action,
    this.createTime,
    this.displayName,
    this.languageCode,
    this.name,
    this.resource,
    this.type,
    this.userEmail,
  });

  GoogleCloudDialogflowCxV3Changelog.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          userEmail: json_.containsKey('userEmail')
              ? json_['userEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (resource != null) 'resource': resource!,
        if (type != null) 'type': type!,
        if (userEmail != null) 'userEmail': userEmail!,
      };
}

/// The request message for Versions.CompareVersions.
class GoogleCloudDialogflowCxV3CompareVersionsRequest {
  /// The language to compare the flow versions for.
  ///
  /// If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  core.String? languageCode;

  /// Name of the target flow version to compare with the base version.
  ///
  /// Use version ID `0` to indicate the draft version of the specified flow.
  /// Format: `projects//locations//agents//flows//versions/`.
  ///
  /// Required.
  core.String? targetVersion;

  GoogleCloudDialogflowCxV3CompareVersionsRequest({
    this.languageCode,
    this.targetVersion,
  });

  GoogleCloudDialogflowCxV3CompareVersionsRequest.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          targetVersion: json_.containsKey('targetVersion')
              ? json_['targetVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (targetVersion != null) 'targetVersion': targetVersion!,
      };
}

/// The response message for Versions.CompareVersions.
class GoogleCloudDialogflowCxV3CompareVersionsResponse {
  /// JSON representation of the base version content.
  core.String? baseVersionContentJson;

  /// The timestamp when the two version compares.
  core.String? compareTime;

  /// JSON representation of the target version content.
  core.String? targetVersionContentJson;

  GoogleCloudDialogflowCxV3CompareVersionsResponse({
    this.baseVersionContentJson,
    this.compareTime,
    this.targetVersionContentJson,
  });

  GoogleCloudDialogflowCxV3CompareVersionsResponse.fromJson(core.Map json_)
      : this(
          baseVersionContentJson: json_.containsKey('baseVersionContentJson')
              ? json_['baseVersionContentJson'] as core.String
              : null,
          compareTime: json_.containsKey('compareTime')
              ? json_['compareTime'] as core.String
              : null,
          targetVersionContentJson:
              json_.containsKey('targetVersionContentJson')
                  ? json_['targetVersionContentJson'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseVersionContentJson != null)
          'baseVersionContentJson': baseVersionContentJson!,
        if (compareTime != null) 'compareTime': compareTime!,
        if (targetVersionContentJson != null)
          'targetVersionContentJson': targetVersionContentJson!,
      };
}

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3ContinuousTestResult {
  /// The resource name for the continuous test result.
  ///
  /// Format:
  /// `projects//locations//agents//environments//continuousTestResults/`.
  core.String? name;

  /// The result of this continuous test run, i.e. whether all the tests in this
  /// continuous test run pass or not.
  /// Possible string values are:
  /// - "AGGREGATED_TEST_RESULT_UNSPECIFIED" : Not specified. Should never be
  /// used.
  /// - "PASSED" : All the tests passed.
  /// - "FAILED" : At least one test did not pass.
  core.String? result;

  /// Time when the continuous testing run starts.
  core.String? runTime;

  /// A list of individual test case results names in this continuous test run.
  core.List<core.String>? testCaseResults;

  GoogleCloudDialogflowCxV3ContinuousTestResult({
    this.name,
    this.result,
    this.runTime,
    this.testCaseResults,
  });

  GoogleCloudDialogflowCxV3ContinuousTestResult.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
          runTime: json_.containsKey('runTime')
              ? json_['runTime'] as core.String
              : null,
          testCaseResults: json_.containsKey('testCaseResults')
              ? (json_['testCaseResults'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (runTime != null) 'runTime': runTime!,
        if (testCaseResults != null) 'testCaseResults': testCaseResults!,
      };
}

/// One interaction between a human and virtual agent.
///
/// The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3ConversationTurn {
  /// The user input.
  GoogleCloudDialogflowCxV3ConversationTurnUserInput? userInput;

  /// The virtual agent output.
  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput?
      virtualAgentOutput;

  GoogleCloudDialogflowCxV3ConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  GoogleCloudDialogflowCxV3ConversationTurn.fromJson(core.Map json_)
      : this(
          userInput: json_.containsKey('userInput')
              ? GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(
                  json_['userInput'] as core.Map<core.String, core.dynamic>)
              : null,
          virtualAgentOutput: json_.containsKey('virtualAgentOutput')
              ? GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
                  .fromJson(json_['virtualAgentOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userInput != null) 'userInput': userInput!,
        if (virtualAgentOutput != null)
          'virtualAgentOutput': virtualAgentOutput!,
      };
}

/// The input from the human user.
class GoogleCloudDialogflowCxV3ConversationTurnUserInput {
  /// Whether sentiment analysis is enabled.
  core.bool? enableSentimentAnalysis;

  /// Parameters that need to be injected into the conversation during intent
  /// detection.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? injectedParameters;

  /// Supports text input, event input, dtmf input in the test case.
  GoogleCloudDialogflowCxV3QueryInput? input;

  /// If webhooks should be allowed to trigger in response to the user
  /// utterance.
  ///
  /// Often if parameters are injected, webhooks should not be enabled.
  core.bool? isWebhookEnabled;

  GoogleCloudDialogflowCxV3ConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(core.Map json_)
      : this(
          enableSentimentAnalysis: json_.containsKey('enableSentimentAnalysis')
              ? json_['enableSentimentAnalysis'] as core.bool
              : null,
          injectedParameters: json_.containsKey('injectedParameters')
              ? json_['injectedParameters']
                  as core.Map<core.String, core.dynamic>
              : null,
          input: json_.containsKey('input')
              ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>)
              : null,
          isWebhookEnabled: json_.containsKey('isWebhookEnabled')
              ? json_['isWebhookEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableSentimentAnalysis != null)
          'enableSentimentAnalysis': enableSentimentAnalysis!,
        if (injectedParameters != null)
          'injectedParameters': injectedParameters!,
        if (input != null) 'input': input!,
        if (isWebhookEnabled != null) 'isWebhookEnabled': isWebhookEnabled!,
      };
}

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3Page? currentPage;

  /// Input only.
  ///
  /// The diagnostic info output for the turn. Required to calculate the testing
  /// coverage.
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;

  /// If this is part of a result conversation turn, the list of differences
  /// between the original run and the replay for this output, if any.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowCxV3TestRunDifference>? differences;

  /// The session parameters available to the bot at this point.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? sessionParameters;

  /// Response error from the agent in the test result.
  ///
  /// If set, other output is empty.
  GoogleRpcStatus? status;

  /// The text responses from the agent for the turn.
  core.List<GoogleCloudDialogflowCxV3ResponseMessageText>? textResponses;

  /// The Intent that triggered the response.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3Intent? triggeredIntent;

  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.diagnosticInfo,
    this.differences,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromJson(
      core.Map json_)
      : this(
          currentPage: json_.containsKey('currentPage')
              ? GoogleCloudDialogflowCxV3Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>)
              : null,
          diagnosticInfo: json_.containsKey('diagnosticInfo')
              ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
              : null,
          differences: json_.containsKey('differences')
              ? (json_['differences'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TestRunDifference.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sessionParameters: json_.containsKey('sessionParameters')
              ? json_['sessionParameters']
                  as core.Map<core.String, core.dynamic>
              : null,
          status: json_.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          textResponses: json_.containsKey('textResponses')
              ? (json_['textResponses'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          triggeredIntent: json_.containsKey('triggeredIntent')
              ? GoogleCloudDialogflowCxV3Intent.fromJson(
                  json_['triggeredIntent']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentPage != null) 'currentPage': currentPage!,
        if (diagnosticInfo != null) 'diagnosticInfo': diagnosticInfo!,
        if (differences != null) 'differences': differences!,
        if (sessionParameters != null) 'sessionParameters': sessionParameters!,
        if (status != null) 'status': status!,
        if (textResponses != null) 'textResponses': textResponses!,
        if (triggeredIntent != null) 'triggeredIntent': triggeredIntent!,
      };
}

/// A data store connection.
///
/// It represents a data store in Discovery Engine and the type of the contents
/// it contains.
class GoogleCloudDialogflowCxV3DataStoreConnection {
  /// The full name of the referenced data store.
  ///
  /// Formats:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
  /// `projects/{project}/locations/{location}/dataStores/{data_store}`
  core.String? dataStore;

  /// The type of the connected data store.
  /// Possible string values are:
  /// - "DATA_STORE_TYPE_UNSPECIFIED" : Not specified. This value indicates that
  /// the data store type is not specified, so it will not be used during
  /// search.
  /// - "PUBLIC_WEB" : A data store that contains public web content.
  /// - "UNSTRUCTURED" : A data store that contains unstructured private data.
  /// - "STRUCTURED" : A data store that contains structured data (for example
  /// FAQ).
  core.String? dataStoreType;

  GoogleCloudDialogflowCxV3DataStoreConnection({
    this.dataStore,
    this.dataStoreType,
  });

  GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(core.Map json_)
      : this(
          dataStore: json_.containsKey('dataStore')
              ? json_['dataStore'] as core.String
              : null,
          dataStoreType: json_.containsKey('dataStoreType')
              ? json_['dataStoreType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStore != null) 'dataStore': dataStore!,
        if (dataStoreType != null) 'dataStoreType': dataStoreType!,
      };
}

/// Data store connection feature output signals.
///
/// Might be only partially field if processing stop before the final answer.
/// Reasons for this can be, but are not limited to: empty UCS search results,
/// positive RAI check outcome, grounding failure, ...
class GoogleCloudDialogflowCxV3DataStoreConnectionSignals {
  /// The final compiled answer.
  ///
  /// Optional.
  core.String? answer;

  /// Diagnostic info related to the answer generation model call.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals?
      answerGenerationModelCallSignals;

  /// Answer parts with relevant citations.
  ///
  /// Concatenation of texts should add up the `answer` (not counting
  /// whitespaces).
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart>?
      answerParts;

  /// Snippets cited by the answer generation model from the most to least
  /// relevant.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet>?
      citedSnippets;

  /// Grounding signals.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals?
      groundingSignals;

  /// Diagnostic info related to the rewriter model call.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals?
      rewriterModelCallSignals;

  /// Rewritten string query used for search.
  ///
  /// Optional.
  core.String? rewrittenQuery;

  /// Safety check result.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals?
      safetySignals;

  /// Search snippets included in the answer generation prompt.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet>?
      searchSnippets;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignals({
    this.answer,
    this.answerGenerationModelCallSignals,
    this.answerParts,
    this.citedSnippets,
    this.groundingSignals,
    this.rewriterModelCallSignals,
    this.rewrittenQuery,
    this.safetySignals,
    this.searchSnippets,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignals.fromJson(core.Map json_)
      : this(
          answer: json_.containsKey('answer')
              ? json_['answer'] as core.String
              : null,
          answerGenerationModelCallSignals: json_
                  .containsKey('answerGenerationModelCallSignals')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
                  .fromJson(json_['answerGenerationModelCallSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          answerParts: json_.containsKey('answerParts')
              ? (json_['answerParts'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          citedSnippets: json_.containsKey('citedSnippets')
              ? (json_['citedSnippets'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          groundingSignals: json_.containsKey('groundingSignals')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals
                  .fromJson(json_['groundingSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rewriterModelCallSignals: json_
                  .containsKey('rewriterModelCallSignals')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
                  .fromJson(json_['rewriterModelCallSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rewrittenQuery: json_.containsKey('rewrittenQuery')
              ? json_['rewrittenQuery'] as core.String
              : null,
          safetySignals: json_.containsKey('safetySignals')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals
                  .fromJson(json_['safetySignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          searchSnippets: json_.containsKey('searchSnippets')
              ? (json_['searchSnippets'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
        if (answerGenerationModelCallSignals != null)
          'answerGenerationModelCallSignals': answerGenerationModelCallSignals!,
        if (answerParts != null) 'answerParts': answerParts!,
        if (citedSnippets != null) 'citedSnippets': citedSnippets!,
        if (groundingSignals != null) 'groundingSignals': groundingSignals!,
        if (rewriterModelCallSignals != null)
          'rewriterModelCallSignals': rewriterModelCallSignals!,
        if (rewrittenQuery != null) 'rewrittenQuery': rewrittenQuery!,
        if (safetySignals != null) 'safetySignals': safetySignals!,
        if (searchSnippets != null) 'searchSnippets': searchSnippets!,
      };
}

/// Diagnostic info related to the answer generation model call.
typedef GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
    = $ModelCallSignals;

/// Answer part with citation.
class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart {
  /// Citations for this answer part.
  ///
  /// Indices of `search_snippets`.
  core.List<core.int>? supportingIndices;

  /// Substring of the answer.
  core.String? text;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart({
    this.supportingIndices,
    this.text,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart.fromJson(
      core.Map json_)
      : this(
          supportingIndices: json_.containsKey('supportingIndices')
              ? (json_['supportingIndices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (supportingIndices != null) 'supportingIndices': supportingIndices!,
        if (text != null) 'text': text!,
      };
}

/// Snippet cited by the answer generation model.
class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet {
  /// Details of the snippet.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet?
      searchSnippet;

  /// Index of the snippet in `search_snippets` field.
  core.int? snippetIndex;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet({
    this.searchSnippet,
    this.snippetIndex,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet.fromJson(
      core.Map json_)
      : this(
          searchSnippet: json_.containsKey('searchSnippet')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet
                  .fromJson(json_['searchSnippet']
                      as core.Map<core.String, core.dynamic>)
              : null,
          snippetIndex: json_.containsKey('snippetIndex')
              ? json_['snippetIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (searchSnippet != null) 'searchSnippet': searchSnippet!,
        if (snippetIndex != null) 'snippetIndex': snippetIndex!,
      };
}

/// Grounding signals.
class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals {
  /// Represents the decision of the grounding check.
  /// Possible string values are:
  /// - "GROUNDING_DECISION_UNSPECIFIED" : Decision not specified.
  /// - "ACCEPTED_BY_GROUNDING" : Grounding have accepted the answer.
  /// - "REJECTED_BY_GROUNDING" : Grounding have rejected the answer.
  core.String? decision;

  /// Grounding score bucket setting.
  /// Possible string values are:
  /// - "GROUNDING_SCORE_BUCKET_UNSPECIFIED" : Score not specified.
  /// - "VERY_LOW" : We have very low confidence that the answer is grounded.
  /// - "LOW" : We have low confidence that the answer is grounded.
  /// - "MEDIUM" : We have medium confidence that the answer is grounded.
  /// - "HIGH" : We have high confidence that the answer is grounded.
  /// - "VERY_HIGH" : We have very high confidence that the answer is grounded.
  core.String? score;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals({
    this.decision,
    this.score,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals.fromJson(
      core.Map json_)
      : this(
          decision: json_.containsKey('decision')
              ? json_['decision'] as core.String
              : null,
          score:
              json_.containsKey('score') ? json_['score'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (decision != null) 'decision': decision!,
        if (score != null) 'score': score!,
      };
}

/// Diagnostic info related to the rewriter model call.
typedef GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
    = $ModelCallSignals;

/// Safety check results.
class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals {
  /// Specifies banned phrase match subject.
  /// Possible string values are:
  /// - "BANNED_PHRASE_MATCH_UNSPECIFIED" : No banned phrase check was executed.
  /// - "BANNED_PHRASE_MATCH_NONE" : All banned phrase checks led to no match.
  /// - "BANNED_PHRASE_MATCH_QUERY" : A banned phrase matched the query.
  /// - "BANNED_PHRASE_MATCH_RESPONSE" : A banned phrase matched the response.
  core.String? bannedPhraseMatch;

  /// Safety decision.
  /// Possible string values are:
  /// - "SAFETY_DECISION_UNSPECIFIED" : Decision not specified.
  /// - "ACCEPTED_BY_SAFETY_CHECK" : No manual or automatic safety check fired.
  /// - "REJECTED_BY_SAFETY_CHECK" : One ore more safety checks fired.
  core.String? decision;

  /// The matched banned phrase if there was a match.
  core.String? matchedBannedPhrase;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals({
    this.bannedPhraseMatch,
    this.decision,
    this.matchedBannedPhrase,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals.fromJson(
      core.Map json_)
      : this(
          bannedPhraseMatch: json_.containsKey('bannedPhraseMatch')
              ? json_['bannedPhraseMatch'] as core.String
              : null,
          decision: json_.containsKey('decision')
              ? json_['decision'] as core.String
              : null,
          matchedBannedPhrase: json_.containsKey('matchedBannedPhrase')
              ? json_['matchedBannedPhrase'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bannedPhraseMatch != null) 'bannedPhraseMatch': bannedPhraseMatch!,
        if (decision != null) 'decision': decision!,
        if (matchedBannedPhrase != null)
          'matchedBannedPhrase': matchedBannedPhrase!,
      };
}

/// Search snippet details.
class GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet {
  /// Title of the enclosing document.
  core.String? documentTitle;

  /// Uri for the document.
  ///
  /// Present if specified for the document.
  core.String? documentUri;

  /// Text included in the prompt.
  core.String? text;

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet({
    this.documentTitle,
    this.documentUri,
    this.text,
  });

  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.fromJson(
      core.Map json_)
      : this(
          documentTitle: json_.containsKey('documentTitle')
              ? json_['documentTitle'] as core.String
              : null,
          documentUri: json_.containsKey('documentUri')
              ? json_['documentUri'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentTitle != null) 'documentTitle': documentTitle!,
        if (documentUri != null) 'documentUri': documentUri!,
        if (text != null) 'text': text!,
      };
}

/// The request message for Environments.DeployFlow.
class GoogleCloudDialogflowCxV3DeployFlowRequest {
  /// The flow version to deploy.
  ///
  /// Format: `projects//locations//agents// flows//versions/`.
  ///
  /// Required.
  core.String? flowVersion;

  GoogleCloudDialogflowCxV3DeployFlowRequest({
    this.flowVersion,
  });

  GoogleCloudDialogflowCxV3DeployFlowRequest.fromJson(core.Map json_)
      : this(
          flowVersion: json_.containsKey('flowVersion')
              ? json_['flowVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flowVersion != null) 'flowVersion': flowVersion!,
      };
}

/// Represents a deployment in an environment.
///
/// A deployment happens when a flow version configured to be active in the
/// environment. You can configure running pre-deployment steps, e.g. running
/// validation test cases, experiment auto-rollout, etc.
class GoogleCloudDialogflowCxV3Deployment {
  /// End time of this deployment.
  core.String? endTime;

  /// The name of the flow version for this deployment.
  ///
  /// Format: projects//locations//agents//flows//versions/.
  core.String? flowVersion;

  /// The name of the deployment.
  ///
  /// Format: projects//locations//agents//environments//deployments/.
  core.String? name;

  /// Result of the deployment.
  GoogleCloudDialogflowCxV3DeploymentResult? result;

  /// Start time of this deployment.
  core.String? startTime;

  /// The current state of the deployment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "RUNNING" : The deployment is running.
  /// - "SUCCEEDED" : The deployment succeeded.
  /// - "FAILED" : The deployment failed.
  core.String? state;

  GoogleCloudDialogflowCxV3Deployment({
    this.endTime,
    this.flowVersion,
    this.name,
    this.result,
    this.startTime,
    this.state,
  });

  GoogleCloudDialogflowCxV3Deployment.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          flowVersion: json_.containsKey('flowVersion')
              ? json_['flowVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          result: json_.containsKey('result')
              ? GoogleCloudDialogflowCxV3DeploymentResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (flowVersion != null) 'flowVersion': flowVersion!,
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Result of the deployment.
class GoogleCloudDialogflowCxV3DeploymentResult {
  /// Results of test cases running before the deployment.
  ///
  /// Format: `projects//locations//agents//testCases//results/`.
  core.List<core.String>? deploymentTestResults;

  /// The name of the experiment triggered by this deployment.
  ///
  /// Format: projects//locations//agents//environments//experiments/.
  core.String? experiment;

  GoogleCloudDialogflowCxV3DeploymentResult({
    this.deploymentTestResults,
    this.experiment,
  });

  GoogleCloudDialogflowCxV3DeploymentResult.fromJson(core.Map json_)
      : this(
          deploymentTestResults: json_.containsKey('deploymentTestResults')
              ? (json_['deploymentTestResults'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          experiment: json_.containsKey('experiment')
              ? json_['experiment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentTestResults != null)
          'deploymentTestResults': deploymentTestResults!,
        if (experiment != null) 'experiment': experiment!,
      };
}

/// The request to detect user's intent.
class GoogleCloudDialogflowCxV3DetectIntentRequest {
  /// Instructs the speech synthesizer how to generate the output audio.
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;

  /// The input specification.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowCxV3QueryParameters? queryParams;

  GoogleCloudDialogflowCxV3DetectIntentRequest({
    this.outputAudioConfig,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(core.Map json_)
      : this(
          outputAudioConfig: json_.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          queryInput: json_.containsKey('queryInput')
              ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                  json_['queryInput'] as core.Map<core.String, core.dynamic>)
              : null,
          queryParams: json_.containsKey('queryParams')
              ? GoogleCloudDialogflowCxV3QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
        if (queryInput != null) 'queryInput': queryInput!,
        if (queryParams != null) 'queryParams': queryParams!,
      };
}

/// The message returned from the DetectIntent method.
class GoogleCloudDialogflowCxV3DetectIntentResponse {
  /// Indicates whether the partial response can be cancelled when a later
  /// response arrives.
  ///
  /// e.g. if the agent specified some music as partial response, it can be
  /// cancelled.
  core.bool? allowCancellation;

  /// The audio data bytes encoded as specified in the request.
  ///
  /// Note: The output audio is generated based on the values of default
  /// platform text responses found in the `query_result.response_messages`
  /// field. If multiple default text responses exist, they will be concatenated
  /// when generating audio. If no default platform text responses exist, the
  /// generated audio content will be empty. In some scenarios, multiple output
  /// audio fields may be present in the response structure. In these cases,
  /// only the top-most-level audio output has content.
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;

  /// The result of the conversational query.
  GoogleCloudDialogflowCxV3QueryResult? queryResult;

  /// The unique identifier of the response.
  ///
  /// It can be used to locate a response in the training example set or for
  /// reporting issues.
  ///
  /// Output only.
  core.String? responseId;

  /// Response type.
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED" : Not specified. This should never happen.
  /// - "PARTIAL" : Partial response. e.g. Aggregated responses in a Fulfillment
  /// that enables `return_partial_response` can be returned as partial
  /// response. WARNING: partial response is not eligible for barge-in.
  /// - "FINAL" : Final response.
  core.String? responseType;

  GoogleCloudDialogflowCxV3DetectIntentResponse({
    this.allowCancellation,
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.responseType,
  });

  GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(core.Map json_)
      : this(
          allowCancellation: json_.containsKey('allowCancellation')
              ? json_['allowCancellation'] as core.bool
              : null,
          outputAudio: json_.containsKey('outputAudio')
              ? json_['outputAudio'] as core.String
              : null,
          outputAudioConfig: json_.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          queryResult: json_.containsKey('queryResult')
              ? GoogleCloudDialogflowCxV3QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>)
              : null,
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
          responseType: json_.containsKey('responseType')
              ? json_['responseType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCancellation != null) 'allowCancellation': allowCancellation!,
        if (outputAudio != null) 'outputAudio': outputAudio!,
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
        if (queryResult != null) 'queryResult': queryResult!,
        if (responseId != null) 'responseId': responseId!,
        if (responseType != null) 'responseType': responseType!,
      };
}

/// Represents the input for dtmf event.
class GoogleCloudDialogflowCxV3DtmfInput {
  /// The dtmf digits.
  core.String? digits;

  /// The finish digit (if any).
  core.String? finishDigit;

  GoogleCloudDialogflowCxV3DtmfInput({
    this.digits,
    this.finishDigit,
  });

  GoogleCloudDialogflowCxV3DtmfInput.fromJson(core.Map json_)
      : this(
          digits: json_.containsKey('digits')
              ? json_['digits'] as core.String
              : null,
          finishDigit: json_.containsKey('finishDigit')
              ? json_['finishDigit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digits != null) 'digits': digits!,
        if (finishDigit != null) 'finishDigit': finishDigit!,
      };
}

/// Entities are extracted from user input and represent parameters that are
/// meaningful to your application.
///
/// For example, a date range, a proper name such as a geographic location or
/// landmark, and so on. Entities represent actionable data for your
/// application. When you define an entity, you can also include synonyms that
/// all map to that entity. For example, "soft drink", "soda", "pop", and so on.
/// There are three types of entities: * **System** - entities that are defined
/// by the Dialogflow API for common data types such as date, time, currency,
/// and so on. A system entity is represented by the `EntityType` type. *
/// **Custom** - entities that are defined by you that represent actionable data
/// that is meaningful to your application. For example, you could define a
/// `pizza.sauce` entity for red or white pizza sauce, a `pizza.cheese` entity
/// for the different types of cheese on a pizza, a `pizza.topping` entity for
/// different toppings, and so on. A custom entity is represented by the
/// `EntityType` type. * **User** - entities that are built for an individual
/// user such as favorites, preferences, playlists, and so on. A user entity is
/// represented by the SessionEntityType type. For more information about entity
/// types, see the
/// [Dialogflow documentation](https://cloud.google.com/dialogflow/docs/entities-overview).
class GoogleCloudDialogflowCxV3EntityType {
  /// Indicates whether the entity type can be automatically expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly listed in the entity.
  core.String? autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  ///
  /// Required.
  core.String? displayName;

  /// Enables fuzzy entity extraction during classification.
  core.bool? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  core.List<GoogleCloudDialogflowCxV3EntityTypeEntity>? entities;

  /// Collection of exceptional words and phrases that shouldn't be matched.
  ///
  /// For example, if you have a size entity type with entry `giant`(an
  /// adjective), you might consider adding `giants`(a noun) as an exclusion. If
  /// the kind of entity type is `KIND_MAP`, then the phrases specified by
  /// entities and excluded phrases should be mutually exclusive.
  core.List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>? excludedPhrases;

  /// Indicates the kind of entity type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// canonical value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to canonical values. However, list entity types can contain references to
  /// other entity types (with or without aliases).
  /// - "KIND_REGEXP" : Regexp entity types allow to specify regular expressions
  /// in entries values.
  core.String? kind;

  /// The unique identifier of the entity type.
  ///
  /// Required for EntityTypes.UpdateEntityType. Format:
  /// `projects//locations//agents//entityTypes/`.
  core.String? name;

  /// Indicates whether parameters of the entity type should be redacted in log.
  ///
  /// If redaction is enabled, page parameters and intent parameters referring
  /// to the entity type will be replaced by parameter name when logging.
  core.bool? redact;

  GoogleCloudDialogflowCxV3EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    this.kind,
    this.name,
    this.redact,
  });

  GoogleCloudDialogflowCxV3EntityType.fromJson(core.Map json_)
      : this(
          autoExpansionMode: json_.containsKey('autoExpansionMode')
              ? json_['autoExpansionMode'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enableFuzzyExtraction: json_.containsKey('enableFuzzyExtraction')
              ? json_['enableFuzzyExtraction'] as core.bool
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          excludedPhrases: json_.containsKey('excludedPhrases')
              ? (json_['excludedPhrases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          redact:
              json_.containsKey('redact') ? json_['redact'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoExpansionMode != null) 'autoExpansionMode': autoExpansionMode!,
        if (displayName != null) 'displayName': displayName!,
        if (enableFuzzyExtraction != null)
          'enableFuzzyExtraction': enableFuzzyExtraction!,
        if (entities != null) 'entities': entities!,
        if (excludedPhrases != null) 'excludedPhrases': excludedPhrases!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (redact != null) 'redact': redact!,
      };
}

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowCxV3EntityTypeEntity {
  /// A collection of value synonyms.
  ///
  /// For example, if the entity type is *vegetable*, and `value` is
  /// *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity
  /// types: * This collection must contain exactly one synonym equal to
  /// `value`.
  ///
  /// Required.
  core.List<core.String>? synonyms;

  /// The primary value associated with this entity entry.
  ///
  /// For example, if the entity type is *vegetable*, the value could be
  /// *scallions*. For `KIND_MAP` entity types: * A canonical value to be used
  /// in place of synonyms. For `KIND_LIST` entity types: * A string that can
  /// contain references to other entity types (with or without aliases).
  ///
  /// Required.
  core.String? value;

  GoogleCloudDialogflowCxV3EntityTypeEntity({
    this.synonyms,
    this.value,
  });

  GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(core.Map json_)
      : this(
          synonyms: json_.containsKey('synonyms')
              ? (json_['synonyms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (synonyms != null) 'synonyms': synonyms!,
        if (value != null) 'value': value!,
      };
}

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase {
  /// The word or phrase to be excluded.
  ///
  /// Required.
  core.String? value;

  GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase({
    this.value,
  });

  GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Represents an environment for an agent.
///
/// You can create multiple versions of your agent and publish them to separate
/// environments. When you edit an agent, you are editing the draft agent. At
/// any point, you can save the draft agent as an agent version, which is an
/// immutable snapshot of your agent. When you save the draft agent, it is
/// published to the default environment. When you create agent versions, you
/// can publish them to custom environments. You can create a variety of custom
/// environments for testing, development, production, etc.
class GoogleCloudDialogflowCxV3Environment {
  /// The human-readable description of the environment.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  core.String? description;

  /// The human-readable name of the environment (unique in an agent).
  ///
  /// Limit of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The name of the environment.
  ///
  /// Format: `projects//locations//agents//environments/`.
  core.String? name;

  /// The test cases config for continuous tests of this environment.
  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig? testCasesConfig;

  /// Update time of this environment.
  ///
  /// Output only.
  core.String? updateTime;

  /// A list of configurations for flow versions.
  ///
  /// You should include version configs for all flows that are reachable from
  /// `Start Flow` in the agent. Otherwise, an error will be returned.
  core.List<GoogleCloudDialogflowCxV3EnvironmentVersionConfig>? versionConfigs;

  /// The webhook configuration for this environment.
  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig? webhookConfig;

  GoogleCloudDialogflowCxV3Environment({
    this.description,
    this.displayName,
    this.name,
    this.testCasesConfig,
    this.updateTime,
    this.versionConfigs,
    this.webhookConfig,
  });

  GoogleCloudDialogflowCxV3Environment.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          testCasesConfig: json_.containsKey('testCasesConfig')
              ? GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromJson(
                  json_['testCasesConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionConfigs: json_.containsKey('versionConfigs')
              ? (json_['versionConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EnvironmentVersionConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          webhookConfig: json_.containsKey('webhookConfig')
              ? GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromJson(
                  json_['webhookConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (testCasesConfig != null) 'testCasesConfig': testCasesConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionConfigs != null) 'versionConfigs': versionConfigs!,
        if (webhookConfig != null) 'webhookConfig': webhookConfig!,
      };
}

/// The configuration for continuous tests.
class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig {
  /// Whether to run test cases in TestCasesConfig.test_cases periodically.
  ///
  /// Default false. If set to true, run once a day.
  core.bool? enableContinuousRun;

  /// Whether to run test cases in TestCasesConfig.test_cases before deploying a
  /// flow version to the environment.
  ///
  /// Default false.
  core.bool? enablePredeploymentRun;

  /// A list of test case names to run.
  ///
  /// They should be under the same agent. Format of each test case name:
  /// `projects//locations/ /agents//testCases/`
  core.List<core.String>? testCases;

  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig({
    this.enableContinuousRun,
    this.enablePredeploymentRun,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromJson(core.Map json_)
      : this(
          enableContinuousRun: json_.containsKey('enableContinuousRun')
              ? json_['enableContinuousRun'] as core.bool
              : null,
          enablePredeploymentRun: json_.containsKey('enablePredeploymentRun')
              ? json_['enablePredeploymentRun'] as core.bool
              : null,
          testCases: json_.containsKey('testCases')
              ? (json_['testCases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableContinuousRun != null)
          'enableContinuousRun': enableContinuousRun!,
        if (enablePredeploymentRun != null)
          'enablePredeploymentRun': enablePredeploymentRun!,
        if (testCases != null) 'testCases': testCases!,
      };
}

/// Configuration for the version.
class GoogleCloudDialogflowCxV3EnvironmentVersionConfig {
  /// Format: projects//locations//agents//flows//versions/.
  ///
  /// Required.
  core.String? version;

  GoogleCloudDialogflowCxV3EnvironmentVersionConfig({
    this.version,
  });

  GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromJson(core.Map json_)
      : this(
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (version != null) 'version': version!,
      };
}

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment.
  ///
  /// The webhook must exist in the agent. You can override fields in
  /// `generic_web_service` and `service_directory`.
  core.List<GoogleCloudDialogflowCxV3Webhook>? webhookOverrides;

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromJson(core.Map json_)
      : this(
          webhookOverrides: json_.containsKey('webhookOverrides')
              ? (json_['webhookOverrides'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Webhook.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (webhookOverrides != null) 'webhookOverrides': webhookOverrides!,
      };
}

/// An event handler specifies an event that can be handled during a session.
///
/// When the specified event happens, the following actions are taken in order:
/// * If there is a `trigger_fulfillment` associated with the event, it will be
/// called. * If there is a `target_page` associated with the event, the session
/// will transition into the specified page. * If there is a `target_flow`
/// associated with the event, the session will transition into the specified
/// flow.
class GoogleCloudDialogflowCxV3EventHandler {
  /// The name of the event to handle.
  ///
  /// Required.
  core.String? event;

  /// The unique identifier of this event handler.
  ///
  /// Output only.
  core.String? name;

  /// The target flow to transition to.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? targetFlow;

  /// The target page to transition to.
  ///
  /// Format: `projects//locations//agents//flows//pages/`.
  core.String? targetPage;

  /// The fulfillment to call when the event occurs.
  ///
  /// Handling webhook errors with a fulfillment enabled with webhook could
  /// cause infinite loop. It is invalid to specify such fulfillment for a
  /// handler handling webhooks.
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3EventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3EventHandler.fromJson(core.Map json_)
      : this(
          event:
              json_.containsKey('event') ? json_['event'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          targetFlow: json_.containsKey('targetFlow')
              ? json_['targetFlow'] as core.String
              : null,
          targetPage: json_.containsKey('targetPage')
              ? json_['targetPage'] as core.String
              : null,
          triggerFulfillment: json_.containsKey('triggerFulfillment')
              ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
        if (name != null) 'name': name!,
        if (targetFlow != null) 'targetFlow': targetFlow!,
        if (targetPage != null) 'targetPage': targetPage!,
        if (triggerFulfillment != null)
          'triggerFulfillment': triggerFulfillment!,
      };
}

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3EventInput {
  /// Name of the event.
  core.String? event;

  GoogleCloudDialogflowCxV3EventInput({
    this.event,
  });

  GoogleCloudDialogflowCxV3EventInput.fromJson(core.Map json_)
      : this(
          event:
              json_.containsKey('event') ? json_['event'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
      };
}

/// Represents an experiment in an environment.
class GoogleCloudDialogflowCxV3Experiment {
  /// Creation time of this experiment.
  core.String? createTime;

  /// The definition of the experiment.
  GoogleCloudDialogflowCxV3ExperimentDefinition? definition;

  /// The human-readable description of the experiment.
  core.String? description;

  /// The human-readable name of the experiment (unique in an environment).
  ///
  /// Limit of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// End time of this experiment.
  core.String? endTime;

  /// Maximum number of days to run the experiment/rollout.
  ///
  /// If auto-rollout is not enabled, default value and maximum will be 30 days.
  /// If auto-rollout is enabled, default value and maximum will be 6 days.
  core.String? experimentLength;

  /// Last update time of this experiment.
  core.String? lastUpdateTime;

  /// The name of the experiment.
  ///
  /// Format: projects//locations//agents//environments//experiments/..
  core.String? name;

  /// Inference result of the experiment.
  GoogleCloudDialogflowCxV3ExperimentResult? result;

  /// The configuration for auto rollout.
  ///
  /// If set, there should be exactly two variants in the experiment (control
  /// variant being the default version of the flow), the traffic allocation for
  /// the non-control variant will gradually increase to 100% when conditions
  /// are met, and eventually replace the control variant to become the default
  /// version of the flow.
  GoogleCloudDialogflowCxV3RolloutConfig? rolloutConfig;

  /// The reason why rollout has failed.
  ///
  /// Should only be set when state is ROLLOUT_FAILED.
  core.String? rolloutFailureReason;

  /// State of the auto rollout process.
  GoogleCloudDialogflowCxV3RolloutState? rolloutState;

  /// Start time of this experiment.
  core.String? startTime;

  /// The current state of the experiment.
  ///
  /// Transition triggered by Experiments.StartExperiment: DRAFT-\>RUNNING.
  /// Transition triggered by Experiments.CancelExperiment: DRAFT-\>DONE or
  /// RUNNING-\>DONE.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "DRAFT" : The experiment is created but not started yet.
  /// - "RUNNING" : The experiment is running.
  /// - "DONE" : The experiment is done.
  /// - "ROLLOUT_FAILED" : The experiment with auto-rollout enabled has failed.
  core.String? state;

  /// The history of updates to the experiment variants.
  core.List<GoogleCloudDialogflowCxV3VariantsHistory>? variantsHistory;

  GoogleCloudDialogflowCxV3Experiment({
    this.createTime,
    this.definition,
    this.description,
    this.displayName,
    this.endTime,
    this.experimentLength,
    this.lastUpdateTime,
    this.name,
    this.result,
    this.rolloutConfig,
    this.rolloutFailureReason,
    this.rolloutState,
    this.startTime,
    this.state,
    this.variantsHistory,
  });

  GoogleCloudDialogflowCxV3Experiment.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          definition: json_.containsKey('definition')
              ? GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(
                  json_['definition'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          experimentLength: json_.containsKey('experimentLength')
              ? json_['experimentLength'] as core.String
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          result: json_.containsKey('result')
              ? GoogleCloudDialogflowCxV3ExperimentResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
          rolloutConfig: json_.containsKey('rolloutConfig')
              ? GoogleCloudDialogflowCxV3RolloutConfig.fromJson(
                  json_['rolloutConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          rolloutFailureReason: json_.containsKey('rolloutFailureReason')
              ? json_['rolloutFailureReason'] as core.String
              : null,
          rolloutState: json_.containsKey('rolloutState')
              ? GoogleCloudDialogflowCxV3RolloutState.fromJson(
                  json_['rolloutState'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          variantsHistory: json_.containsKey('variantsHistory')
              ? (json_['variantsHistory'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3VariantsHistory.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (definition != null) 'definition': definition!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (endTime != null) 'endTime': endTime!,
        if (experimentLength != null) 'experimentLength': experimentLength!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (rolloutConfig != null) 'rolloutConfig': rolloutConfig!,
        if (rolloutFailureReason != null)
          'rolloutFailureReason': rolloutFailureReason!,
        if (rolloutState != null) 'rolloutState': rolloutState!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (variantsHistory != null) 'variantsHistory': variantsHistory!,
      };
}

/// Definition of the experiment.
class GoogleCloudDialogflowCxV3ExperimentDefinition {
  /// The condition defines which subset of sessions are selected for this
  /// experiment.
  ///
  /// If not specified, all sessions are eligible. E.g.
  /// "query_input.language_code=en" See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? condition;

  /// The flow versions as the variants of this experiment.
  GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3ExperimentDefinition({
    this.condition,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          versionVariants: json_.containsKey('versionVariants')
              ? GoogleCloudDialogflowCxV3VersionVariants.fromJson(
                  json_['versionVariants']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (versionVariants != null) 'versionVariants': versionVariants!,
      };
}

/// The inference result which includes an objective metric to optimize and the
/// confidence interval.
class GoogleCloudDialogflowCxV3ExperimentResult {
  /// The last time the experiment's stats data was updated.
  ///
  /// Will have default value if stats have never been computed for this
  /// experiment.
  core.String? lastUpdateTime;

  /// Version variants and metrics.
  core.List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>?
      versionMetrics;

  GoogleCloudDialogflowCxV3ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  GoogleCloudDialogflowCxV3ExperimentResult.fromJson(core.Map json_)
      : this(
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          versionMetrics: json_.containsKey('versionMetrics')
              ? (json_['versionMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (versionMetrics != null) 'versionMetrics': versionMetrics!,
      };
}

/// A confidence interval is a range of possible values for the experiment
/// objective you are trying to measure.
class GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval {
  /// The confidence level used to construct the interval, i.e. there is X%
  /// chance that the true value is within this interval.
  core.double? confidenceLevel;

  /// Lower bound of the interval.
  core.double? lowerBound;

  /// The percent change between an experiment metric's value and the value for
  /// its control.
  core.double? ratio;

  /// Upper bound of the interval.
  core.double? upperBound;

  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval({
    this.confidenceLevel,
    this.lowerBound,
    this.ratio,
    this.upperBound,
  });

  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.fromJson(
      core.Map json_)
      : this(
          confidenceLevel: json_.containsKey('confidenceLevel')
              ? (json_['confidenceLevel'] as core.num).toDouble()
              : null,
          lowerBound: json_.containsKey('lowerBound')
              ? (json_['lowerBound'] as core.num).toDouble()
              : null,
          ratio: json_.containsKey('ratio')
              ? (json_['ratio'] as core.num).toDouble()
              : null,
          upperBound: json_.containsKey('upperBound')
              ? (json_['upperBound'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceLevel != null) 'confidenceLevel': confidenceLevel!,
        if (lowerBound != null) 'lowerBound': lowerBound!,
        if (ratio != null) 'ratio': ratio!,
        if (upperBound != null) 'upperBound': upperBound!,
      };
}

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3ExperimentResultMetric {
  /// The probability that the treatment is better than all other treatments in
  /// the experiment
  GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval?
      confidenceInterval;

  /// Count value of a metric.
  core.double? count;

  /// Count-based metric type.
  ///
  /// Only one of type or count_type is specified in each Metric.
  /// Possible string values are:
  /// - "COUNT_TYPE_UNSPECIFIED" : Count type unspecified.
  /// - "TOTAL_NO_MATCH_COUNT" : Total number of occurrences of a 'NO_MATCH'.
  /// - "TOTAL_TURN_COUNT" : Total number of turn counts.
  /// - "AVERAGE_TURN_COUNT" : Average turn count in a session.
  core.String? countType;

  /// Ratio value of a metric.
  core.double? ratio;

  /// Ratio-based metric type.
  ///
  /// Only one of type or count_type is specified in each Metric.
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED" : Metric unspecified.
  /// - "CONTAINED_SESSION_NO_CALLBACK_RATE" : Percentage of contained sessions
  /// without user calling back in 24 hours.
  /// - "LIVE_AGENT_HANDOFF_RATE" : Percentage of sessions that were handed to a
  /// human agent.
  /// - "CALLBACK_SESSION_RATE" : Percentage of sessions with the same user
  /// calling back.
  /// - "ABANDONED_SESSION_RATE" : Percentage of sessions where user hung up.
  /// - "SESSION_END_RATE" : Percentage of sessions reached Dialogflow
  /// 'END_PAGE' or 'END_SESSION'.
  core.String? type;

  GoogleCloudDialogflowCxV3ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(core.Map json_)
      : this(
          confidenceInterval: json_.containsKey('confidenceInterval')
              ? GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
                  .fromJson(json_['confidenceInterval']
                      as core.Map<core.String, core.dynamic>)
              : null,
          count: json_.containsKey('count')
              ? (json_['count'] as core.num).toDouble()
              : null,
          countType: json_.containsKey('countType')
              ? json_['countType'] as core.String
              : null,
          ratio: json_.containsKey('ratio')
              ? (json_['ratio'] as core.num).toDouble()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceInterval != null)
          'confidenceInterval': confidenceInterval!,
        if (count != null) 'count': count!,
        if (countType != null) 'countType': countType!,
        if (ratio != null) 'ratio': ratio!,
        if (type != null) 'type': type!,
      };
}

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics {
  /// The metrics and corresponding confidence intervals in the inference
  /// result.
  core.List<GoogleCloudDialogflowCxV3ExperimentResultMetric>? metrics;

  /// Number of sessions that were allocated to this version.
  core.int? sessionCount;

  /// The name of the flow Version.
  ///
  /// Format: `projects//locations//agents//flows//versions/`.
  core.String? version;

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromJson(
      core.Map json_)
      : this(
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sessionCount: json_.containsKey('sessionCount')
              ? json_['sessionCount'] as core.int
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (sessionCount != null) 'sessionCount': sessionCount!,
        if (version != null) 'version': version!,
      };
}

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowCxV3ExportAgentRequest {
  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the agent to.
  ///
  /// The format of this URI must be `gs:///`. If left unspecified, the
  /// serialized agent is returned inline. Dialogflow performs a write operation
  /// for the Cloud Storage object on the caller's behalf, so your request
  /// authentication must have write permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  ///
  /// Optional.
  core.String? agentUri;

  /// The data format of the exported agent.
  ///
  /// If not specified, `BLOB` is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Unspecified format.
  /// - "BLOB" : Agent content will be exported as raw bytes.
  /// - "JSON_PACKAGE" : Agent content will be exported in JSON Package format.
  core.String? dataFormat;

  /// Environment name.
  ///
  /// If not set, draft environment is assumed. Format:
  /// `projects//locations//agents//environments/`.
  ///
  /// Optional.
  core.String? environment;

  /// The Git branch to export the agent to.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination? gitDestination;

  /// Whether to include BigQuery Export setting.
  ///
  /// Optional.
  core.bool? includeBigqueryExportSettings;

  GoogleCloudDialogflowCxV3ExportAgentRequest({
    this.agentUri,
    this.dataFormat,
    this.environment,
    this.gitDestination,
    this.includeBigqueryExportSettings,
  });

  GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(core.Map json_)
      : this(
          agentUri: json_.containsKey('agentUri')
              ? json_['agentUri'] as core.String
              : null,
          dataFormat: json_.containsKey('dataFormat')
              ? json_['dataFormat'] as core.String
              : null,
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
          gitDestination: json_.containsKey('gitDestination')
              ? GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination
                  .fromJson(json_['gitDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          includeBigqueryExportSettings:
              json_.containsKey('includeBigqueryExportSettings')
                  ? json_['includeBigqueryExportSettings'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUri != null) 'agentUri': agentUri!,
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (environment != null) 'environment': environment!,
        if (gitDestination != null) 'gitDestination': gitDestination!,
        if (includeBigqueryExportSettings != null)
          'includeBigqueryExportSettings': includeBigqueryExportSettings!,
      };
}

/// Settings for exporting to a git branch.
class GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination {
  /// Commit message for the git push.
  core.String? commitMessage;

  /// Tracking branch for the git push.
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination({
    this.commitMessage,
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination.fromJson(
      core.Map json_)
      : this(
          commitMessage: json_.containsKey('commitMessage')
              ? json_['commitMessage'] as core.String
              : null,
          trackingBranch: json_.containsKey('trackingBranch')
              ? json_['trackingBranch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitMessage != null) 'commitMessage': commitMessage!,
        if (trackingBranch != null) 'trackingBranch': trackingBranch!,
      };
}

/// The request message for EntityTypes.ExportEntityTypes.
class GoogleCloudDialogflowCxV3ExportEntityTypesRequest {
  /// The data format of the exported entity types.
  ///
  /// If not specified, `BLOB` is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Unspecified format. Treated as `BLOB`.
  /// - "BLOB" : EntityTypes will be exported as raw bytes.
  /// - "JSON_PACKAGE" : EntityTypes will be exported in JSON Package format.
  core.String? dataFormat;

  /// The name of the entity types to export.
  ///
  /// Format: `projects//locations//agents//entityTypes/`.
  ///
  /// Required.
  core.List<core.String>? entityTypes;

  /// The option to return the serialized entity types inline.
  ///
  /// Optional.
  core.bool? entityTypesContentInline;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the entity types to.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a write
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have write permissions for the object. For
  /// more information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  ///
  /// Optional.
  core.String? entityTypesUri;

  /// The language to retrieve the entity type for.
  ///
  /// The following fields are language dependent: * `EntityType.entities.value`
  /// * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If
  /// not specified, all language dependent fields will be retrieved.
  /// [Many languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// Optional.
  core.String? languageCode;

  GoogleCloudDialogflowCxV3ExportEntityTypesRequest({
    this.dataFormat,
    this.entityTypes,
    this.entityTypesContentInline,
    this.entityTypesUri,
    this.languageCode,
  });

  GoogleCloudDialogflowCxV3ExportEntityTypesRequest.fromJson(core.Map json_)
      : this(
          dataFormat: json_.containsKey('dataFormat')
              ? json_['dataFormat'] as core.String
              : null,
          entityTypes: json_.containsKey('entityTypes')
              ? (json_['entityTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          entityTypesContentInline:
              json_.containsKey('entityTypesContentInline')
                  ? json_['entityTypesContentInline'] as core.bool
                  : null,
          entityTypesUri: json_.containsKey('entityTypesUri')
              ? json_['entityTypesUri'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (entityTypes != null) 'entityTypes': entityTypes!,
        if (entityTypesContentInline != null)
          'entityTypesContentInline': entityTypesContentInline!,
        if (entityTypesUri != null) 'entityTypesUri': entityTypesUri!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// The request message for Flows.ExportFlow.
class GoogleCloudDialogflowCxV3ExportFlowRequest {
  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the flow to.
  ///
  /// The format of this URI must be `gs:///`. If left unspecified, the
  /// serialized flow is returned inline. Dialogflow performs a write operation
  /// for the Cloud Storage object on the caller's behalf, so your request
  /// authentication must have write permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  ///
  /// Optional.
  core.String? flowUri;

  /// Whether to export flows referenced by the specified flow.
  ///
  /// Optional.
  core.bool? includeReferencedFlows;

  GoogleCloudDialogflowCxV3ExportFlowRequest({
    this.flowUri,
    this.includeReferencedFlows,
  });

  GoogleCloudDialogflowCxV3ExportFlowRequest.fromJson(core.Map json_)
      : this(
          flowUri: json_.containsKey('flowUri')
              ? json_['flowUri'] as core.String
              : null,
          includeReferencedFlows: json_.containsKey('includeReferencedFlows')
              ? json_['includeReferencedFlows'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flowUri != null) 'flowUri': flowUri!,
        if (includeReferencedFlows != null)
          'includeReferencedFlows': includeReferencedFlows!,
      };
}

/// The request message for Intents.ExportIntents.
class GoogleCloudDialogflowCxV3ExportIntentsRequest {
  /// The data format of the exported intents.
  ///
  /// If not specified, `BLOB` is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Unspecified format. Treated as `BLOB`.
  /// - "BLOB" : Intents will be exported as raw bytes.
  /// - "JSON" : Intents will be exported in JSON format.
  /// - "CSV" : Intents will be exported in CSV format.
  core.String? dataFormat;

  /// The name of the intents to export.
  ///
  /// Format: `projects//locations//agents//intents/`.
  ///
  /// Required.
  core.List<core.String>? intents;

  /// The option to return the serialized intents inline.
  ///
  /// Optional.
  core.bool? intentsContentInline;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the intents to.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a write
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have write permissions for the object. For
  /// more information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  ///
  /// Optional.
  core.String? intentsUri;

  GoogleCloudDialogflowCxV3ExportIntentsRequest({
    this.dataFormat,
    this.intents,
    this.intentsContentInline,
    this.intentsUri,
  });

  GoogleCloudDialogflowCxV3ExportIntentsRequest.fromJson(core.Map json_)
      : this(
          dataFormat: json_.containsKey('dataFormat')
              ? json_['dataFormat'] as core.String
              : null,
          intents: json_.containsKey('intents')
              ? (json_['intents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          intentsContentInline: json_.containsKey('intentsContentInline')
              ? json_['intentsContentInline'] as core.bool
              : null,
          intentsUri: json_.containsKey('intentsUri')
              ? json_['intentsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (intents != null) 'intents': intents!,
        if (intentsContentInline != null)
          'intentsContentInline': intentsContentInline!,
        if (intentsUri != null) 'intentsUri': intentsUri!,
      };
}

/// The request message for TestCases.ExportTestCases.
class GoogleCloudDialogflowCxV3ExportTestCasesRequest {
  /// The data format of the exported test cases.
  ///
  /// If not specified, `BLOB` is assumed.
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Unspecified format.
  /// - "BLOB" : Raw bytes.
  /// - "JSON" : JSON format.
  core.String? dataFormat;

  /// The filter expression used to filter exported test cases, see
  /// [API Filtering](https://aip.dev/160).
  ///
  /// The expression is case insensitive and supports the following syntax: name
  /// = \[OR name = \] ... For example: * "name = t1 OR name = t2" matches the
  /// test case with the exact resource name "t1" or "t2".
  core.String? filter;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the test cases to.
  ///
  /// The format of this URI must be `gs:///`. If unspecified, the serialized
  /// test cases is returned inline. Dialogflow performs a write operation for
  /// the Cloud Storage object on the caller's behalf, so your request
  /// authentication must have write permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? gcsUri;

  GoogleCloudDialogflowCxV3ExportTestCasesRequest({
    this.dataFormat,
    this.filter,
    this.gcsUri,
  });

  GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(core.Map json_)
      : this(
          dataFormat: json_.containsKey('dataFormat')
              ? json_['dataFormat'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (filter != null) 'filter': filter!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// Filter specifications for data stores.
class GoogleCloudDialogflowCxV3FilterSpecs {
  /// Data Stores where the boosting configuration is applied.
  ///
  /// The full names of the referenced data stores. Formats:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
  /// `projects/{project}/locations/{location}/dataStores/{data_store}`
  ///
  /// Optional.
  core.List<core.String>? dataStores;

  /// The filter expression to be applied.
  ///
  /// Expression syntax is documented at
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata#filter-expression-syntax
  ///
  /// Optional.
  core.String? filter;

  GoogleCloudDialogflowCxV3FilterSpecs({
    this.dataStores,
    this.filter,
  });

  GoogleCloudDialogflowCxV3FilterSpecs.fromJson(core.Map json_)
      : this(
          dataStores: json_.containsKey('dataStores')
              ? (json_['dataStores'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStores != null) 'dataStores': dataStores!,
        if (filter != null) 'filter': filter!,
      };
}

/// Flows represents the conversation flows when you build your chatbot agent.
///
/// A flow consists of many pages connected by the transition routes.
/// Conversations always start with the built-in Start Flow (with an all-0 ID).
/// Transition routes can direct the conversation session from the current flow
/// (parent flow) to another flow (sub flow). When the sub flow is finished,
/// Dialogflow will bring the session back to the parent flow, where the sub
/// flow is started. Usually, when a transition route is followed by a matched
/// intent, the intent will be "consumed". This means the intent won't activate
/// more transition routes. However, when the followed transition route moves
/// the conversation session into a different flow, the matched intent can be
/// carried over and to be consumed in the target flow.
class GoogleCloudDialogflowCxV3Flow {
  /// Hierarchical advanced settings for this flow.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// The description of the flow.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  core.String? description;

  /// The human-readable name of the flow.
  ///
  /// Required.
  core.String? displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for
  /// handling events (e.g. no match, webhook errors) in the flow.
  ///
  /// * They are inherited by every page's event handlers, which can be used to
  /// handle common events regardless of the current page. Event handlers
  /// defined in the page have higher priority than those defined in the flow.
  /// Unlike transition_routes, these handlers are evaluated on a first-match
  /// basis. The first one that matches the event get executed, with the rest
  /// being ignored.
  core.List<GoogleCloudDialogflowCxV3EventHandler>? eventHandlers;

  /// Knowledge connector configuration.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings?
      knowledgeConnectorSettings;

  /// Multi-lingual agent settings for this flow.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings? multiLanguageSettings;

  /// The unique identifier of the flow.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? name;

  /// NLU related settings of the flow.
  GoogleCloudDialogflowCxV3NluSettings? nluSettings;

  /// A flow's transition route group serve two purposes: * They are responsible
  /// for matching the user's first utterances in the flow.
  ///
  /// * They are inherited by every page's transition route groups. Transition
  /// route groups defined in the page have higher priority than those defined
  /// in the flow.
  /// Format:`projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/` for agent-level
  /// groups.
  core.List<core.String>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for
  /// matching the user's first utterances in the flow.
  ///
  /// * They are inherited by every page's transition routes and can support use
  /// cases such as the user saying "help" or "can I talk to a human?", which
  /// can be handled in a common way regardless of the current page. Transition
  /// routes defined in the page have higher priority than those defined in the
  /// flow. TransitionRoutes are evalauted in the following order: *
  /// TransitionRoutes with intent specified. * TransitionRoutes with only
  /// condition specified. TransitionRoutes with intent specified are inherited
  /// by pages in the flow.
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3Flow({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.eventHandlers,
    this.knowledgeConnectorSettings,
    this.multiLanguageSettings,
    this.name,
    this.nluSettings,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3Flow.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          eventHandlers: json_.containsKey('eventHandlers')
              ? (json_['eventHandlers'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EventHandler.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          knowledgeConnectorSettings: json_
                  .containsKey('knowledgeConnectorSettings')
              ? GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(
                  json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          multiLanguageSettings: json_.containsKey('multiLanguageSettings')
              ? GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.fromJson(
                  json_['multiLanguageSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nluSettings: json_.containsKey('nluSettings')
              ? GoogleCloudDialogflowCxV3NluSettings.fromJson(
                  json_['nluSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          transitionRouteGroups: json_.containsKey('transitionRouteGroups')
              ? (json_['transitionRouteGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transitionRoutes: json_.containsKey('transitionRoutes')
              ? (json_['transitionRoutes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (eventHandlers != null) 'eventHandlers': eventHandlers!,
        if (knowledgeConnectorSettings != null)
          'knowledgeConnectorSettings': knowledgeConnectorSettings!,
        if (multiLanguageSettings != null)
          'multiLanguageSettings': multiLanguageSettings!,
        if (name != null) 'name': name!,
        if (nluSettings != null) 'nluSettings': nluSettings!,
        if (transitionRouteGroups != null)
          'transitionRouteGroups': transitionRouteGroups!,
        if (transitionRoutes != null) 'transitionRoutes': transitionRoutes!,
      };
}

/// The flow import strategy used for resource conflict resolution associated
/// with an ImportFlowRequest.
class GoogleCloudDialogflowCxV3FlowImportStrategy {
  /// Import strategy for resource conflict resolution, applied globally
  /// throughout the flow.
  ///
  /// It will be applied for all display name conflicts in the imported content.
  /// If not specified, 'CREATE_NEW' is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "IMPORT_STRATEGY_UNSPECIFIED" : Unspecified. Treated as 'CREATE_NEW'.
  /// - "IMPORT_STRATEGY_CREATE_NEW" : Create a new resource with a numeric
  /// suffix appended to the end of the existing display name.
  /// - "IMPORT_STRATEGY_REPLACE" : Replace existing resource with incoming
  /// resource in the content to be imported.
  /// - "IMPORT_STRATEGY_KEEP" : Keep existing resource and discard incoming
  /// resource in the content to be imported.
  /// - "IMPORT_STRATEGY_MERGE" : Combine existing and incoming resources when a
  /// conflict is encountered.
  /// - "IMPORT_STRATEGY_THROW_ERROR" : Throw error if a conflict is
  /// encountered.
  core.String? globalImportStrategy;

  GoogleCloudDialogflowCxV3FlowImportStrategy({
    this.globalImportStrategy,
  });

  GoogleCloudDialogflowCxV3FlowImportStrategy.fromJson(core.Map json_)
      : this(
          globalImportStrategy: json_.containsKey('globalImportStrategy')
              ? json_['globalImportStrategy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (globalImportStrategy != null)
          'globalImportStrategy': globalImportStrategy!,
      };
}

/// Settings for multi-lingual agents.
class GoogleCloudDialogflowCxV3FlowMultiLanguageSettings {
  /// Enable multi-language detection for this flow.
  ///
  /// This can be set only if agent level multi language setting is enabled.
  ///
  /// Optional.
  core.bool? enableMultiLanguageDetection;

  /// Agent will respond in the detected language if the detected language code
  /// is in the supported resolved languages for this flow.
  ///
  /// This will be used only if multi-language training is enabled in the agent
  /// and multi-language detection is enabled in the flow. The supported
  /// languages must be a subset of the languages supported by the agent.
  ///
  /// Optional.
  core.List<core.String>? supportedResponseLanguageCodes;

  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings({
    this.enableMultiLanguageDetection,
    this.supportedResponseLanguageCodes,
  });

  GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.fromJson(core.Map json_)
      : this(
          enableMultiLanguageDetection:
              json_.containsKey('enableMultiLanguageDetection')
                  ? json_['enableMultiLanguageDetection'] as core.bool
                  : null,
          supportedResponseLanguageCodes:
              json_.containsKey('supportedResponseLanguageCodes')
                  ? (json_['supportedResponseLanguageCodes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableMultiLanguageDetection != null)
          'enableMultiLanguageDetection': enableMultiLanguageDetection!,
        if (supportedResponseLanguageCodes != null)
          'supportedResponseLanguageCodes': supportedResponseLanguageCodes!,
      };
}

/// The response message for Flows.GetFlowValidationResult.
class GoogleCloudDialogflowCxV3FlowValidationResult {
  /// The unique identifier of the flow validation result.
  ///
  /// Format: `projects//locations//agents//flows//validationResult`.
  core.String? name;

  /// Last time the flow was validated.
  core.String? updateTime;

  /// Contains all validation messages.
  core.List<GoogleCloudDialogflowCxV3ValidationMessage>? validationMessages;

  GoogleCloudDialogflowCxV3FlowValidationResult({
    this.name,
    this.updateTime,
    this.validationMessages,
  });

  GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          validationMessages: json_.containsKey('validationMessages')
              ? (json_['validationMessages'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ValidationMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (validationMessages != null)
          'validationMessages': validationMessages!,
      };
}

/// A form is a data model that groups related parameters that can be collected
/// from the user.
///
/// The process in which the agent prompts the user and collects parameter
/// values from the user is called form filling. A form can be added to a page.
/// When form filling is done, the filled parameters will be written to the
/// session.
class GoogleCloudDialogflowCxV3Form {
  /// Parameters to collect from the user.
  core.List<GoogleCloudDialogflowCxV3FormParameter>? parameters;

  GoogleCloudDialogflowCxV3Form({
    this.parameters,
  });

  GoogleCloudDialogflowCxV3Form.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FormParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Represents a form parameter.
class GoogleCloudDialogflowCxV3FormParameter {
  /// Hierarchical advanced settings for this parameter.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// The default value of an optional parameter.
  ///
  /// If the parameter is required, the default value will be ignored.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// The human-readable name of the parameter, unique within the form.
  ///
  /// Required.
  core.String? displayName;

  /// The entity type of the parameter.
  ///
  /// Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity
  /// types (for example,
  /// `projects/-/locations/-/agents/-/entityTypes/sys.date`), or
  /// `projects//locations//agents//entityTypes/` for developer entity types.
  ///
  /// Required.
  core.String? entityType;

  /// Defines fill behavior for the parameter.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3FormParameterFillBehavior? fillBehavior;

  /// Indicates whether the parameter represents a list of values.
  core.bool? isList;

  /// Indicates whether the parameter content should be redacted in log.
  ///
  /// If redaction is enabled, the parameter content will be replaced by
  /// parameter name during logging. Note: the parameter content is subject to
  /// redaction if either parameter level redaction or entity type level
  /// redaction is enabled.
  core.bool? redact;

  /// Indicates whether the parameter is required.
  ///
  /// Optional parameters will not trigger prompts; however, they are filled if
  /// the user specifies them. Required parameters must be filled before form
  /// filling concludes.
  core.bool? required;

  GoogleCloudDialogflowCxV3FormParameter({
    this.advancedSettings,
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  GoogleCloudDialogflowCxV3FormParameter.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          defaultValue:
              json_.containsKey('defaultValue') ? json_['defaultValue'] : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          fillBehavior: json_.containsKey('fillBehavior')
              ? GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(
                  json_['fillBehavior'] as core.Map<core.String, core.dynamic>)
              : null,
          isList:
              json_.containsKey('isList') ? json_['isList'] as core.bool : null,
          redact:
              json_.containsKey('redact') ? json_['redact'] as core.bool : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (displayName != null) 'displayName': displayName!,
        if (entityType != null) 'entityType': entityType!,
        if (fillBehavior != null) 'fillBehavior': fillBehavior!,
        if (isList != null) 'isList': isList!,
        if (redact != null) 'redact': redact!,
        if (required != null) 'required': required!,
      };
}

/// Configuration for how the filling of a parameter should be handled.
class GoogleCloudDialogflowCxV3FormParameterFillBehavior {
  /// The fulfillment to provide the initial prompt that the agent can present
  /// to the user in order to fill the parameter.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3Fulfillment? initialPromptFulfillment;

  /// The handlers for parameter-level events, used to provide reprompt for the
  /// parameter or transition to a different page/flow.
  ///
  /// The supported events are: * `sys.no-match-`, where N can be from 1 to 6 *
  /// `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 *
  /// `sys.no-input-default` * `sys.invalid-parameter`
  /// `initial_prompt_fulfillment` provides the first prompt for the parameter.
  /// If the user's response does not fill the parameter, a no-match/no-input
  /// event will be triggered, and the fulfillment associated with the
  /// `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to
  /// provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if
  /// defined) will respond to the next no-match/no-input event, and so on. A
  /// `sys.no-match-default` or `sys.no-input-default` handler will be used to
  /// handle all following no-match/no-input events after all numbered
  /// no-match/no-input handlers for the parameter are consumed. A
  /// `sys.invalid-parameter` handler can be defined to handle the case where
  /// the parameter values have been `invalidated` by webhook. For example, if
  /// the user's response fill the parameter, however the parameter was
  /// invalidated by webhook, the fulfillment associated with the
  /// `sys.invalid-parameter` handler (if defined) will be called to provide a
  /// prompt. If the event handler for the corresponding event can't be found on
  /// the parameter, `initial_prompt_fulfillment` will be re-prompted.
  core.List<GoogleCloudDialogflowCxV3EventHandler>? repromptEventHandlers;

  GoogleCloudDialogflowCxV3FormParameterFillBehavior({
    this.initialPromptFulfillment,
    this.repromptEventHandlers,
  });

  GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(core.Map json_)
      : this(
          initialPromptFulfillment:
              json_.containsKey('initialPromptFulfillment')
                  ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                      json_['initialPromptFulfillment']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          repromptEventHandlers: json_.containsKey('repromptEventHandlers')
              ? (json_['repromptEventHandlers'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EventHandler.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (initialPromptFulfillment != null)
          'initialPromptFulfillment': initialPromptFulfillment!,
        if (repromptEventHandlers != null)
          'repromptEventHandlers': repromptEventHandlers!,
      };
}

/// Request of FulfillIntent
class GoogleCloudDialogflowCxV3FulfillIntentRequest {
  /// The matched intent/event to fulfill.
  GoogleCloudDialogflowCxV3Match? match;

  /// Must be same as the corresponding MatchIntent request, otherwise the
  /// behavior is undefined.
  GoogleCloudDialogflowCxV3MatchIntentRequest? matchIntentRequest;

  /// Instructs the speech synthesizer how to generate output audio.
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;

  GoogleCloudDialogflowCxV3FulfillIntentRequest({
    this.match,
    this.matchIntentRequest,
    this.outputAudioConfig,
  });

  GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(core.Map json_)
      : this(
          match: json_.containsKey('match')
              ? GoogleCloudDialogflowCxV3Match.fromJson(
                  json_['match'] as core.Map<core.String, core.dynamic>)
              : null,
          matchIntentRequest: json_.containsKey('matchIntentRequest')
              ? GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
                  json_['matchIntentRequest']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outputAudioConfig: json_.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (match != null) 'match': match!,
        if (matchIntentRequest != null)
          'matchIntentRequest': matchIntentRequest!,
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
      };
}

/// Response of FulfillIntent
class GoogleCloudDialogflowCxV3FulfillIntentResponse {
  /// The audio data bytes encoded as specified in the request.
  ///
  /// Note: The output audio is generated based on the values of default
  /// platform text responses found in the `query_result.response_messages`
  /// field. If multiple default text responses exist, they will be concatenated
  /// when generating audio. If no default platform text responses exist, the
  /// generated audio content will be empty. In some scenarios, multiple output
  /// audio fields may be present in the response structure. In these cases,
  /// only the top-most-level audio output has content.
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowCxV3OutputAudioConfig? outputAudioConfig;

  /// The result of the conversational query.
  GoogleCloudDialogflowCxV3QueryResult? queryResult;

  /// The unique identifier of the response.
  ///
  /// It can be used to locate a response in the training example set or for
  /// reporting issues.
  ///
  /// Output only.
  core.String? responseId;

  GoogleCloudDialogflowCxV3FulfillIntentResponse({
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
  });

  GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(core.Map json_)
      : this(
          outputAudio: json_.containsKey('outputAudio')
              ? json_['outputAudio'] as core.String
              : null,
          outputAudioConfig: json_.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          queryResult: json_.containsKey('queryResult')
              ? GoogleCloudDialogflowCxV3QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>)
              : null,
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputAudio != null) 'outputAudio': outputAudio!,
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
        if (queryResult != null) 'queryResult': queryResult!,
        if (responseId != null) 'responseId': responseId!,
      };
}

/// A fulfillment can do one or more of the following actions at the same time:
/// * Generate rich message responses.
///
/// * Set parameter values. * Call the webhook. Fulfillments can be called at
/// various stages in the Page or Form lifecycle. For example, when a
/// DetectIntentRequest drives a session to enter a new page, the page's entry
/// fulfillment can add a static response to the QueryResult in the returning
/// DetectIntentResponse, call the webhook (for example, to load user data from
/// a database), or both.
class GoogleCloudDialogflowCxV3Fulfillment {
  /// Hierarchical advanced settings for this fulfillment.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// Conditional cases for this fulfillment.
  core.List<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>?
      conditionalCases;

  /// If the flag is true, the agent will utilize LLM to generate a text
  /// response.
  ///
  /// If LLM generation fails, the defined responses in the fulfillment will be
  /// respected. This flag is only useful for fulfillments associated with
  /// no-match event handlers.
  core.bool? enableGenerativeFallback;

  /// The list of rich message responses to present to the user.
  core.List<GoogleCloudDialogflowCxV3ResponseMessage>? messages;

  /// Whether Dialogflow should return currently queued fulfillment response
  /// messages in streaming APIs.
  ///
  /// If a webhook is specified, it happens before Dialogflow invokes webhook.
  /// Warning: 1) This flag only affects streaming API. Responses are still
  /// queued and returned once in non-streaming API. 2) The flag can be enabled
  /// in any fulfillment but only the first 3 partial responses will be
  /// returned. You may only want to apply it to fulfillments that have slow
  /// webhooks.
  core.bool? returnPartialResponses;

  /// Set parameter values before executing the webhook.
  core.List<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>?
      setParameterActions;

  /// The value of this field will be populated in the WebhookRequest
  /// `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is
  /// called.
  ///
  /// The tag is typically used by the webhook service to identify which
  /// fulfillment is being called, but it could be used for other purposes. This
  /// field is required if `webhook` is specified.
  core.String? tag;

  /// The webhook to call.
  ///
  /// Format: `projects//locations//agents//webhooks/`.
  core.String? webhook;

  GoogleCloudDialogflowCxV3Fulfillment({
    this.advancedSettings,
    this.conditionalCases,
    this.enableGenerativeFallback,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  GoogleCloudDialogflowCxV3Fulfillment.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          conditionalCases: json_.containsKey('conditionalCases')
              ? (json_['conditionalCases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FulfillmentConditionalCases
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enableGenerativeFallback:
              json_.containsKey('enableGenerativeFallback')
                  ? json_['enableGenerativeFallback'] as core.bool
                  : null,
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          returnPartialResponses: json_.containsKey('returnPartialResponses')
              ? json_['returnPartialResponses'] as core.bool
              : null,
          setParameterActions: json_.containsKey('setParameterActions')
              ? (json_['setParameterActions'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
          webhook: json_.containsKey('webhook')
              ? json_['webhook'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (conditionalCases != null) 'conditionalCases': conditionalCases!,
        if (enableGenerativeFallback != null)
          'enableGenerativeFallback': enableGenerativeFallback!,
        if (messages != null) 'messages': messages!,
        if (returnPartialResponses != null)
          'returnPartialResponses': returnPartialResponses!,
        if (setParameterActions != null)
          'setParameterActions': setParameterActions!,
        if (tag != null) 'tag': tag!,
        if (webhook != null) 'webhook': webhook!,
      };
}

/// A list of cascading if-else conditions.
///
/// Cases are mutually exclusive. The first one with a matching condition is
/// selected, all the rest ignored.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCases {
  /// A list of cascading if-else conditions.
  core.List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>? cases;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCases({
    this.cases,
  });

  GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(core.Map json_)
      : this(
          cases: json_.containsKey('cases')
              ? (json_['cases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cases != null) 'cases': cases!,
      };
}

/// Each case has a Boolean condition.
///
/// When it is evaluated to be True, the corresponding messages will be selected
/// and evaluated recursively.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase {
  /// A list of case content.
  core.List<
          GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>?
      caseContent;

  /// The condition to activate and select this case.
  ///
  /// Empty means the condition is always true. The condition is evaluated
  /// against form parameters or session parameters. See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? condition;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromJson(
      core.Map json_)
      : this(
          caseContent: json_.containsKey('caseContent')
              ? (json_['caseContent'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseContent != null) 'caseContent': caseContent!,
        if (condition != null) 'condition': condition!,
      };
}

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent {
  /// Additional cases to be evaluated.
  GoogleCloudDialogflowCxV3FulfillmentConditionalCases? additionalCases;

  /// Returned message.
  GoogleCloudDialogflowCxV3ResponseMessage? message;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent({
    this.additionalCases,
    this.message,
  });

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent.fromJson(
      core.Map json_)
      : this(
          additionalCases: json_.containsKey('additionalCases')
              ? GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(
                  json_['additionalCases']
                      as core.Map<core.String, core.dynamic>)
              : null,
          message: json_.containsKey('message')
              ? GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalCases != null) 'additionalCases': additionalCases!,
        if (message != null) 'message': message!,
      };
}

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction {
  /// Display name of the parameter.
  core.String? parameter;

  /// The new value of the parameter.
  ///
  /// A null value clears the parameter.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromJson(
      core.Map json_)
      : this(
          parameter: json_.containsKey('parameter')
              ? json_['parameter'] as core.String
              : null,
          value: json_.containsKey('value') ? json_['value'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameter != null) 'parameter': parameter!,
        if (value != null) 'value': value!,
      };
}

/// Google Cloud Storage location for a Dialogflow operation that writes or
/// exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
class GoogleCloudDialogflowCxV3GcsDestination {
  /// The Google Cloud Storage URI for the exported objects.
  ///
  /// A URI is of the form: `gs://bucket/object-name-or-prefix` Whether a full
  /// object name, or just a prefix, its usage depends on the Dialogflow
  /// operation.
  ///
  /// Required.
  core.String? uri;

  GoogleCloudDialogflowCxV3GcsDestination({
    this.uri,
  });

  GoogleCloudDialogflowCxV3GcsDestination.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Settings for Generative AI.
class GoogleCloudDialogflowCxV3GenerativeSettings {
  /// Settings for Generative Fallback.
  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings? fallbackSettings;

  /// Settings for Generative Safety.
  GoogleCloudDialogflowCxV3SafetySettings? generativeSafetySettings;

  /// Settings for knowledge connector.
  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings?
      knowledgeConnectorSettings;

  /// Language for this settings.
  core.String? languageCode;

  /// Format: `projects//locations//agents//generativeSettings`.
  core.String? name;

  GoogleCloudDialogflowCxV3GenerativeSettings({
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.name,
  });

  GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(core.Map json_)
      : this(
          fallbackSettings: json_.containsKey('fallbackSettings')
              ? GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings
                  .fromJson(json_['fallbackSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          generativeSafetySettings:
              json_.containsKey('generativeSafetySettings')
                  ? GoogleCloudDialogflowCxV3SafetySettings.fromJson(
                      json_['generativeSafetySettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          knowledgeConnectorSettings: json_
                  .containsKey('knowledgeConnectorSettings')
              ? GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings
                  .fromJson(json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fallbackSettings != null) 'fallbackSettings': fallbackSettings!,
        if (generativeSafetySettings != null)
          'generativeSafetySettings': generativeSafetySettings!,
        if (knowledgeConnectorSettings != null)
          'knowledgeConnectorSettings': knowledgeConnectorSettings!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
      };
}

/// Settings for Generative Fallback.
class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings {
  /// Stored prompts that can be selected, for example default templates like
  /// "conservative" or "chatty", or user defined ones.
  core.List<
          GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate>?
      promptTemplates;

  /// Display name of the selected prompt.
  core.String? selectedPrompt;

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings({
    this.promptTemplates,
    this.selectedPrompt,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings.fromJson(
      core.Map json_)
      : this(
          promptTemplates: json_.containsKey('promptTemplates')
              ? (json_['promptTemplates'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selectedPrompt: json_.containsKey('selectedPrompt')
              ? json_['selectedPrompt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (promptTemplates != null) 'promptTemplates': promptTemplates!,
        if (selectedPrompt != null) 'selectedPrompt': selectedPrompt!,
      };
}

/// Prompt template.
class GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate {
  /// Prompt name.
  core.String? displayName;

  /// If the flag is true, the prompt is frozen and cannot be modified by users.
  core.bool? frozen;

  /// Prompt text that is sent to a LLM on no-match default, placeholders are
  /// filled downstream.
  ///
  /// For example: "Here is a conversation $conversation, a response is: "
  core.String? promptText;

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate.fromJson(
      core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          frozen:
              json_.containsKey('frozen') ? json_['frozen'] as core.bool : null,
          promptText: json_.containsKey('promptText')
              ? json_['promptText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (frozen != null) 'frozen': frozen!,
        if (promptText != null) 'promptText': promptText!,
      };
}

/// Settings for knowledge connector.
///
/// These parameters are used for LLM prompt like "You are . You are a helpful
/// and verbose at , . Your task is to help humans on ".
class GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings {
  /// Name of the virtual agent.
  ///
  /// Used for LLM prompt. Can be left empty.
  core.String? agent;

  /// Identity of the agent, e.g. "virtual agent", "AI assistant".
  core.String? agentIdentity;

  /// Agent scope, e.g. "Example company website", "internal Example company
  /// website for employees", "manual of car owner".
  core.String? agentScope;

  /// Name of the company, organization or other entity that the agent
  /// represents.
  ///
  /// Used for knowledge connector LLM prompt and for knowledge search.
  core.String? business;

  /// Company description, used for LLM prompt, e.g. "a family company selling
  /// freshly roasted coffee beans".
  core.String? businessDescription;

  /// Whether to disable fallback to Data Store search results (in case the LLM
  /// couldn't pick a proper answer).
  ///
  /// Per default the feature is enabled.
  core.bool? disableDataStoreFallback;

  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings({
    this.agent,
    this.agentIdentity,
    this.agentScope,
    this.business,
    this.businessDescription,
    this.disableDataStoreFallback,
  });

  GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings.fromJson(
      core.Map json_)
      : this(
          agent:
              json_.containsKey('agent') ? json_['agent'] as core.String : null,
          agentIdentity: json_.containsKey('agentIdentity')
              ? json_['agentIdentity'] as core.String
              : null,
          agentScope: json_.containsKey('agentScope')
              ? json_['agentScope'] as core.String
              : null,
          business: json_.containsKey('business')
              ? json_['business'] as core.String
              : null,
          businessDescription: json_.containsKey('businessDescription')
              ? json_['businessDescription'] as core.String
              : null,
          disableDataStoreFallback:
              json_.containsKey('disableDataStoreFallback')
                  ? json_['disableDataStoreFallback'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (agentIdentity != null) 'agentIdentity': agentIdentity!,
        if (agentScope != null) 'agentScope': agentScope!,
        if (business != null) 'business': business!,
        if (businessDescription != null)
          'businessDescription': businessDescription!,
        if (disableDataStoreFallback != null)
          'disableDataStoreFallback': disableDataStoreFallback!,
      };
}

/// Generators contain prompt to be sent to the LLM model to generate text.
///
/// The prompt can contain parameters which will be resolved before calling the
/// model. It can optionally contain banned phrases to ensure the model
/// responses are safe.
class GoogleCloudDialogflowCxV3Generator {
  /// The human-readable name of the generator, unique within the agent.
  ///
  /// The prompt contains pre-defined parameters such as $conversation,
  /// $last-user-utterance, etc. populated by Dialogflow. It can also contain
  /// custom placeholders which will be resolved during fulfillment.
  ///
  /// Required.
  core.String? displayName;

  /// The unique identifier of the generator.
  ///
  /// Must be set for the Generators.UpdateGenerator method.
  /// Generators.CreateGenerate populates the name automatically. Format:
  /// `projects//locations//agents//generators/`.
  core.String? name;

  /// List of custom placeholders in the prompt text.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3GeneratorPlaceholder>? placeholders;

  /// Prompt for the LLM model.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3Phrase? promptText;

  GoogleCloudDialogflowCxV3Generator({
    this.displayName,
    this.name,
    this.placeholders,
    this.promptText,
  });

  GoogleCloudDialogflowCxV3Generator.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          placeholders: json_.containsKey('placeholders')
              ? (json_['placeholders'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3GeneratorPlaceholder.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          promptText: json_.containsKey('promptText')
              ? GoogleCloudDialogflowCxV3Phrase.fromJson(
                  json_['promptText'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (placeholders != null) 'placeholders': placeholders!,
        if (promptText != null) 'promptText': promptText!,
      };
}

/// Represents a custom placeholder in the prompt text.
class GoogleCloudDialogflowCxV3GeneratorPlaceholder {
  /// Unique ID used to map custom placeholder to parameters in fulfillment.
  core.String? id;

  /// Custom placeholder value in the prompt text.
  core.String? name;

  GoogleCloudDialogflowCxV3GeneratorPlaceholder({
    this.id,
    this.name,
  });

  GoogleCloudDialogflowCxV3GeneratorPlaceholder.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// The request message for EntityTypes.ImportEntityTypes.
class GoogleCloudDialogflowCxV3ImportEntityTypesRequest {
  /// Uncompressed byte content of entity types.
  GoogleCloudDialogflowCxV3InlineSource? entityTypesContent;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// import entity types from.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a read
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have read permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? entityTypesUri;

  /// Merge option for importing entity types.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MERGE_OPTION_UNSPECIFIED" : Unspecified. If used, system uses
  /// REPORT_CONFLICT as default.
  /// - "REPLACE" : Replace the original entity type in the agent with the new
  /// entity type when display name conflicts exist.
  /// - "MERGE" : Merge the original entity type with the new entity type when
  /// display name conflicts exist.
  /// - "RENAME" : Create new entity types with new display names to
  /// differentiate them from the existing entity types when display name
  /// conflicts exist.
  /// - "REPORT_CONFLICT" : Report conflict information if display names
  /// conflict is detected. Otherwise, import entity types.
  /// - "KEEP" : Keep the original entity type and discard the conflicting new
  /// entity type when display name conflicts exist.
  core.String? mergeOption;

  /// The target entity type to import into.
  ///
  /// Format: `projects//locations//agents//entity_types/`. If set, there should
  /// be only one entity type included in entity_types, of which the type should
  /// match the type of the target entity type. All entities in the imported
  /// entity type will be added to the target entity type.
  ///
  /// Optional.
  core.String? targetEntityType;

  GoogleCloudDialogflowCxV3ImportEntityTypesRequest({
    this.entityTypesContent,
    this.entityTypesUri,
    this.mergeOption,
    this.targetEntityType,
  });

  GoogleCloudDialogflowCxV3ImportEntityTypesRequest.fromJson(core.Map json_)
      : this(
          entityTypesContent: json_.containsKey('entityTypesContent')
              ? GoogleCloudDialogflowCxV3InlineSource.fromJson(
                  json_['entityTypesContent']
                      as core.Map<core.String, core.dynamic>)
              : null,
          entityTypesUri: json_.containsKey('entityTypesUri')
              ? json_['entityTypesUri'] as core.String
              : null,
          mergeOption: json_.containsKey('mergeOption')
              ? json_['mergeOption'] as core.String
              : null,
          targetEntityType: json_.containsKey('targetEntityType')
              ? json_['targetEntityType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypesContent != null)
          'entityTypesContent': entityTypesContent!,
        if (entityTypesUri != null) 'entityTypesUri': entityTypesUri!,
        if (mergeOption != null) 'mergeOption': mergeOption!,
        if (targetEntityType != null) 'targetEntityType': targetEntityType!,
      };
}

/// The request message for Flows.ImportFlow.
class GoogleCloudDialogflowCxV3ImportFlowRequest {
  /// Uncompressed raw byte content for flow.
  core.String? flowContent;
  core.List<core.int> get flowContentAsBytes =>
      convert.base64.decode(flowContent!);

  set flowContentAsBytes(core.List<core.int> bytes_) {
    flowContent =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the import strategy used when resolving resource conflicts.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3FlowImportStrategy? flowImportStrategy;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// import flow from.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a read
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have read permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? flowUri;

  /// Flow import mode.
  ///
  /// If not specified, `KEEP` is assumed.
  /// Possible string values are:
  /// - "IMPORT_OPTION_UNSPECIFIED" : Unspecified. Treated as `KEEP`.
  /// - "KEEP" : Always respect settings in exported flow content. It may cause
  /// a import failure if some settings (e.g. custom NLU) are not supported in
  /// the agent to import into.
  /// - "FALLBACK" : Fallback to default settings if some settings are not
  /// supported in the agent to import into. E.g. Standard NLU will be used if
  /// custom NLU is not available.
  core.String? importOption;

  GoogleCloudDialogflowCxV3ImportFlowRequest({
    this.flowContent,
    this.flowImportStrategy,
    this.flowUri,
    this.importOption,
  });

  GoogleCloudDialogflowCxV3ImportFlowRequest.fromJson(core.Map json_)
      : this(
          flowContent: json_.containsKey('flowContent')
              ? json_['flowContent'] as core.String
              : null,
          flowImportStrategy: json_.containsKey('flowImportStrategy')
              ? GoogleCloudDialogflowCxV3FlowImportStrategy.fromJson(
                  json_['flowImportStrategy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          flowUri: json_.containsKey('flowUri')
              ? json_['flowUri'] as core.String
              : null,
          importOption: json_.containsKey('importOption')
              ? json_['importOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flowContent != null) 'flowContent': flowContent!,
        if (flowImportStrategy != null)
          'flowImportStrategy': flowImportStrategy!,
        if (flowUri != null) 'flowUri': flowUri!,
        if (importOption != null) 'importOption': importOption!,
      };
}

/// The request message for Intents.ImportIntents.
class GoogleCloudDialogflowCxV3ImportIntentsRequest {
  /// Uncompressed byte content of intents.
  GoogleCloudDialogflowCxV3InlineSource? intentsContent;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// import intents from.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a read
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have read permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? intentsUri;

  /// Merge option for importing intents.
  ///
  /// If not specified, `REJECT` is assumed.
  /// Possible string values are:
  /// - "MERGE_OPTION_UNSPECIFIED" : Unspecified. Should not be used.
  /// - "REJECT" : DEPRECATED: Please use REPORT_CONFLICT instead. Fail the
  /// request if there are intents whose display names conflict with the display
  /// names of intents in the agent.
  /// - "REPLACE" : Replace the original intent in the agent with the new intent
  /// when display name conflicts exist.
  /// - "MERGE" : Merge the original intent with the new intent when display
  /// name conflicts exist.
  /// - "RENAME" : Create new intents with new display names to differentiate
  /// them from the existing intents when display name conflicts exist.
  /// - "REPORT_CONFLICT" : Report conflict information if display names
  /// conflict is detected. Otherwise, import intents.
  /// - "KEEP" : Keep the original intent and discard the conflicting new intent
  /// when display name conflicts exist.
  core.String? mergeOption;

  GoogleCloudDialogflowCxV3ImportIntentsRequest({
    this.intentsContent,
    this.intentsUri,
    this.mergeOption,
  });

  GoogleCloudDialogflowCxV3ImportIntentsRequest.fromJson(core.Map json_)
      : this(
          intentsContent: json_.containsKey('intentsContent')
              ? GoogleCloudDialogflowCxV3InlineSource.fromJson(
                  json_['intentsContent']
                      as core.Map<core.String, core.dynamic>)
              : null,
          intentsUri: json_.containsKey('intentsUri')
              ? json_['intentsUri'] as core.String
              : null,
          mergeOption: json_.containsKey('mergeOption')
              ? json_['mergeOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intentsContent != null) 'intentsContent': intentsContent!,
        if (intentsUri != null) 'intentsUri': intentsUri!,
        if (mergeOption != null) 'mergeOption': mergeOption!,
      };
}

/// The request message for TestCases.ImportTestCases.
class GoogleCloudDialogflowCxV3ImportTestCasesRequest {
  /// Uncompressed raw byte content for test cases.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// import test cases from.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a read
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have read permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? gcsUri;

  GoogleCloudDialogflowCxV3ImportTestCasesRequest({
    this.content,
    this.gcsUri,
  });

  GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// Inline source for a Dialogflow operation that reads or imports objects (e.g.
/// intents) into Dialogflow.
class GoogleCloudDialogflowCxV3InlineSource {
  /// The uncompressed byte content for the objects.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudDialogflowCxV3InlineSource({
    this.content,
  });

  GoogleCloudDialogflowCxV3InlineSource.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
      };
}

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowCxV3InputAudioConfig {
  /// Audio encoding of the audio content to process.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed little-endian
  /// samples (Linear PCM).
  /// - "AUDIO_ENCODING_FLAC" :
  /// \[`FLAC`\](https://xiph.org/flac/documentation.html) (Free Lossless Audio
  /// Codec) is the recommended encoding because it is lossless (therefore
  /// recognition is not compromised) and requires only about half the bandwidth
  /// of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples,
  /// however, not all fields in `STREAMINFO` are supported.
  /// - "AUDIO_ENCODING_MULAW" : 8-bit samples that compand 14-bit audio samples
  /// using G.711 PCMU/mu-law.
  /// - "AUDIO_ENCODING_AMR" : Adaptive Multi-Rate Narrowband codec.
  /// `sample_rate_hertz` must be 8000.
  /// - "AUDIO_ENCODING_AMR_WB" : Adaptive Multi-Rate Wideband codec.
  /// `sample_rate_hertz` must be 16000.
  /// - "AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio frames in Ogg container
  /// ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be
  /// 16000.
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" : Although the use of lossy
  /// encodings is not recommended, if a very low bitrate encoding is required,
  /// `OGG_OPUS` is highly preferred over Speex encoding. The
  /// [Speex](https://speex.org/) encoding supported by Dialogflow API has a
  /// header byte in each block, as in MIME type
  /// `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex
  /// encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The
  /// stream is a sequence of blocks, one block per RTP packet. Each block
  /// starts with a byte containing the length of the block, in bytes, followed
  /// by one or more frames of Speex data, padded to an integral number of bytes
  /// (octets) as specified in RFC 5574. In other words, each RTP header is
  /// replaced with a single byte containing the block length. Only Speex
  /// wideband is supported. `sample_rate_hertz` must be 16000.
  core.String? audioEncoding;

  /// Configuration of barge-in behavior during the streaming of input audio.
  GoogleCloudDialogflowCxV3BargeInConfig? bargeInConfig;

  /// If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult
  /// with information about the recognized speech words, e.g. start and end
  /// time offsets.
  ///
  /// If false or unspecified, Speech doesn't return any word-level information.
  ///
  /// Optional.
  core.bool? enableWordInfo;

  /// Which Speech model to select for the given request.
  ///
  /// For more information, see
  /// [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  ///
  /// Optional.
  core.String? model;

  /// Which variant of the Speech model to use.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available. See the
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant: * If an enhanced variant
  /// does not exist for the given model and request language, Dialogflow falls
  /// back to the standard variant. The
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// describes which models have enhanced variants.
  core.String? modelVariant;

  /// If `true`, the request will opt out for STT conformer model migration.
  ///
  /// This field will be deprecated once force migration takes place in June
  /// 2024. Please refer to
  /// [Dialogflow CX Speech model migration](https://cloud.google.com/dialogflow/cx/docs/concept/speech-model-migration).
  core.bool? optOutConformerModelMigration;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood.
  ///
  /// See
  /// [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details.
  ///
  /// Optional.
  core.List<core.String>? phraseHints;

  /// Sample rate (in Hertz) of the audio content sent in the query.
  ///
  /// Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
  /// for more details.
  core.int? sampleRateHertz;

  /// If `false` (default), recognition does not cease until the client closes
  /// the stream.
  ///
  /// If `true`, the recognizer will detect a single spoken utterance in input
  /// audio. Recognition ceases when it detects the audio's voice has stopped or
  /// paused. In this case, once a detected intent is received, the client
  /// should close the stream and start a new request with a new stream as
  /// needed. Note: This setting is relevant only for streaming methods.
  ///
  /// Optional.
  core.bool? singleUtterance;

  GoogleCloudDialogflowCxV3InputAudioConfig({
    this.audioEncoding,
    this.bargeInConfig,
    this.enableWordInfo,
    this.model,
    this.modelVariant,
    this.optOutConformerModelMigration,
    this.phraseHints,
    this.sampleRateHertz,
    this.singleUtterance,
  });

  GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(core.Map json_)
      : this(
          audioEncoding: json_.containsKey('audioEncoding')
              ? json_['audioEncoding'] as core.String
              : null,
          bargeInConfig: json_.containsKey('bargeInConfig')
              ? GoogleCloudDialogflowCxV3BargeInConfig.fromJson(
                  json_['bargeInConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          enableWordInfo: json_.containsKey('enableWordInfo')
              ? json_['enableWordInfo'] as core.bool
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          modelVariant: json_.containsKey('modelVariant')
              ? json_['modelVariant'] as core.String
              : null,
          optOutConformerModelMigration:
              json_.containsKey('optOutConformerModelMigration')
                  ? json_['optOutConformerModelMigration'] as core.bool
                  : null,
          phraseHints: json_.containsKey('phraseHints')
              ? (json_['phraseHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sampleRateHertz: json_.containsKey('sampleRateHertz')
              ? json_['sampleRateHertz'] as core.int
              : null,
          singleUtterance: json_.containsKey('singleUtterance')
              ? json_['singleUtterance'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioEncoding != null) 'audioEncoding': audioEncoding!,
        if (bargeInConfig != null) 'bargeInConfig': bargeInConfig!,
        if (enableWordInfo != null) 'enableWordInfo': enableWordInfo!,
        if (model != null) 'model': model!,
        if (modelVariant != null) 'modelVariant': modelVariant!,
        if (optOutConformerModelMigration != null)
          'optOutConformerModelMigration': optOutConformerModelMigration!,
        if (phraseHints != null) 'phraseHints': phraseHints!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
        if (singleUtterance != null) 'singleUtterance': singleUtterance!,
      };
}

/// An intent represents a user's intent to interact with a conversational
/// agent.
///
/// You can provide information for the Dialogflow API to use to match user
/// input to an intent by adding training phrases (i.e., examples of user input)
/// to your intent.
class GoogleCloudDialogflowCxV3Intent {
  /// Human readable description for better understanding an intent like its
  /// scope, content, result etc.
  ///
  /// Maximum character limit: 140 characters.
  core.String? description;

  /// The human-readable name of the intent, unique within the agent.
  ///
  /// Required.
  core.String? displayName;

  /// Indicates whether this is a fallback intent.
  ///
  /// Currently only default fallback intent is allowed in the agent, which is
  /// added upon agent creation. Adding training phrases to fallback intent is
  /// useful in the case of requests that are mistakenly matched, since training
  /// phrases assigned to fallback intents act as negative examples that
  /// triggers no-match event.
  core.bool? isFallback;

  /// The key/value metadata to label an intent.
  ///
  /// Labels can contain lowercase letters, digits and the symbols '-' and '_'.
  /// International characters are allowed, including letters from unicase
  /// alphabets. Keys must start with a letter. Keys and values can be no longer
  /// than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved
  /// for Dialogflow defined labels. Currently allowed Dialogflow defined labels
  /// include: * sys-head * sys-contextual The above labels do not require
  /// value. "sys-head" means the intent is a head intent. "sys.contextual"
  /// means the intent is a contextual intent.
  core.Map<core.String, core.String>? labels;

  /// The unique identifier of the intent.
  ///
  /// Required for the Intents.UpdateIntent method. Intents.CreateIntent
  /// populates the name automatically. Format:
  /// `projects//locations//agents//intents/`.
  core.String? name;

  /// The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowCxV3IntentParameter>? parameters;

  /// The priority of this intent.
  ///
  /// Higher numbers represent higher priorities. - If the supplied value is
  /// unspecified or 0, the service translates the value to 500,000, which
  /// corresponds to the `Normal` priority in the console. - If the supplied
  /// value is negative, the intent is ignored in runtime detect intent
  /// requests.
  core.int? priority;

  /// The collection of training phrases the agent is trained on to identify the
  /// intent.
  core.List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>? trainingPhrases;

  GoogleCloudDialogflowCxV3Intent({
    this.description,
    this.displayName,
    this.isFallback,
    this.labels,
    this.name,
    this.parameters,
    this.priority,
    this.trainingPhrases,
  });

  GoogleCloudDialogflowCxV3Intent.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          isFallback: json_.containsKey('isFallback')
              ? json_['isFallback'] as core.bool
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3IntentParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
          trainingPhrases: json_.containsKey('trainingPhrases')
              ? (json_['trainingPhrases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (isFallback != null) 'isFallback': isFallback!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
        if (priority != null) 'priority': priority!,
        if (trainingPhrases != null) 'trainingPhrases': trainingPhrases!,
      };
}

/// Intent coverage represents the percentage of all possible intents in the
/// agent that are triggered in any of a parent's test cases.
class GoogleCloudDialogflowCxV3IntentCoverage {
  /// The percent of intents in the agent that are covered.
  core.double? coverageScore;

  /// The list of Intents present in the agent
  core.List<GoogleCloudDialogflowCxV3IntentCoverageIntent>? intents;

  GoogleCloudDialogflowCxV3IntentCoverage({
    this.coverageScore,
    this.intents,
  });

  GoogleCloudDialogflowCxV3IntentCoverage.fromJson(core.Map json_)
      : this(
          coverageScore: json_.containsKey('coverageScore')
              ? (json_['coverageScore'] as core.num).toDouble()
              : null,
          intents: json_.containsKey('intents')
              ? (json_['intents'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverageScore != null) 'coverageScore': coverageScore!,
        if (intents != null) 'intents': intents!,
      };
}

/// The agent's intent.
class GoogleCloudDialogflowCxV3IntentCoverageIntent {
  /// Whether the intent is covered by at least one of the agent's test cases.
  core.bool? covered;

  /// The intent full resource name
  core.String? intent;

  GoogleCloudDialogflowCxV3IntentCoverageIntent({
    this.covered,
    this.intent,
  });

  GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(core.Map json_)
      : this(
          covered: json_.containsKey('covered')
              ? json_['covered'] as core.bool
              : null,
          intent: json_.containsKey('intent')
              ? json_['intent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (covered != null) 'covered': covered!,
        if (intent != null) 'intent': intent!,
      };
}

/// Represents the intent to trigger programmatically rather than as a result of
/// natural language processing.
class GoogleCloudDialogflowCxV3IntentInput {
  /// The unique identifier of the intent.
  ///
  /// Format: `projects//locations//agents//intents/`.
  ///
  /// Required.
  core.String? intent;

  GoogleCloudDialogflowCxV3IntentInput({
    this.intent,
  });

  GoogleCloudDialogflowCxV3IntentInput.fromJson(core.Map json_)
      : this(
          intent: json_.containsKey('intent')
              ? json_['intent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intent != null) 'intent': intent!,
      };
}

/// Represents an intent parameter.
class GoogleCloudDialogflowCxV3IntentParameter {
  /// The entity type of the parameter.
  ///
  /// Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity
  /// types (for example,
  /// `projects/-/locations/-/agents/-/entityTypes/sys.date`), or
  /// `projects//locations//agents//entityTypes/` for developer entity types.
  ///
  /// Required.
  core.String? entityType;

  /// The unique identifier of the parameter.
  ///
  /// This field is used by training phrases to annotate their parts.
  ///
  /// Required.
  core.String? id;

  /// Indicates whether the parameter represents a list of values.
  core.bool? isList;

  /// Indicates whether the parameter content should be redacted in log.
  ///
  /// If redaction is enabled, the parameter content will be replaced by
  /// parameter name during logging. Note: the parameter content is subject to
  /// redaction if either parameter level redaction or entity type level
  /// redaction is enabled.
  core.bool? redact;

  GoogleCloudDialogflowCxV3IntentParameter({
    this.entityType,
    this.id,
    this.isList,
    this.redact,
  });

  GoogleCloudDialogflowCxV3IntentParameter.fromJson(core.Map json_)
      : this(
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isList:
              json_.containsKey('isList') ? json_['isList'] as core.bool : null,
          redact:
              json_.containsKey('redact') ? json_['redact'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityType != null) 'entityType': entityType!,
        if (id != null) 'id': id!,
        if (isList != null) 'isList': isList!,
        if (redact != null) 'redact': redact!,
      };
}

/// Represents an example that the agent is trained on to identify the intent.
class GoogleCloudDialogflowCxV3IntentTrainingPhrase {
  /// The unique identifier of the training phrase.
  ///
  /// Output only.
  core.String? id;

  /// The ordered list of training phrase parts.
  ///
  /// The parts are concatenated in order to form the training phrase. Note: The
  /// API does not automatically annotate training phrases like the Dialogflow
  /// Console does. Note: Do not forget to include whitespace at part
  /// boundaries, so the training phrase is well formatted when the parts are
  /// concatenated. If the training phrase does not need to be annotated with
  /// parameters, you just need a single part with only the Part.text field set.
  /// If you want to annotate the training phrase, you must create multiple
  /// parts, where the fields of each part are populated in one of two ways: -
  /// `Part.text` is set to a part of the phrase that has no parameters. -
  /// `Part.text` is set to a part of the phrase that you want to annotate, and
  /// the `parameter_id` field is set.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>? parts;

  /// Indicates how many times this example was added to the intent.
  core.int? repeatCount;

  GoogleCloudDialogflowCxV3IntentTrainingPhrase({
    this.id,
    this.parts,
    this.repeatCount,
  });

  GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          parts: json_.containsKey('parts')
              ? (json_['parts'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          repeatCount: json_.containsKey('repeatCount')
              ? json_['repeatCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parts != null) 'parts': parts!,
        if (repeatCount != null) 'repeatCount': repeatCount!,
      };
}

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase.
  ///
  /// This field is required for annotated parts of the training phrase.
  core.String? parameterId;

  /// The text for this part.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart({
    this.parameterId,
    this.text,
  });

  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromJson(core.Map json_)
      : this(
          parameterId: json_.containsKey('parameterId')
              ? json_['parameterId'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameterId != null) 'parameterId': parameterId!,
        if (text != null) 'text': text!,
      };
}

/// The Knowledge Connector settings for this page or flow.
///
/// This includes information such as the attached Knowledge Bases, and the way
/// to execute fulfillment.
class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings {
  /// List of related data store connections.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3DataStoreConnection>? dataStoreConnections;

  /// Whether Knowledge Connector is enabled or not.
  core.bool? enabled;

  /// The target flow to transition to.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? targetFlow;

  /// The target page to transition to.
  ///
  /// Format: `projects//locations//agents//flows//pages/`.
  core.String? targetPage;

  /// The fulfillment to be triggered.
  ///
  /// When the answers from the Knowledge Connector are selected by Dialogflow,
  /// you can utitlize the request scoped parameter `$request.knowledge.answers`
  /// (contains up to the 5 highest confidence answers) and
  /// `$request.knowledge.questions` (contains the corresponding questions) to
  /// construct the fulfillment.
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(core.Map json_)
      : this(
          dataStoreConnections: json_.containsKey('dataStoreConnections')
              ? (json_['dataStoreConnections'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          targetFlow: json_.containsKey('targetFlow')
              ? json_['targetFlow'] as core.String
              : null,
          targetPage: json_.containsKey('targetPage')
              ? json_['targetPage'] as core.String
              : null,
          triggerFulfillment: json_.containsKey('triggerFulfillment')
              ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStoreConnections != null)
          'dataStoreConnections': dataStoreConnections!,
        if (enabled != null) 'enabled': enabled!,
        if (targetFlow != null) 'targetFlow': targetFlow!,
        if (targetPage != null) 'targetPage': targetPage!,
        if (triggerFulfillment != null)
          'triggerFulfillment': triggerFulfillment!,
      };
}

/// The response message for Agents.ListAgents.
class GoogleCloudDialogflowCxV3ListAgentsResponse {
  /// The list of agents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Agent>? agents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(core.Map json_)
      : this(
          agents: json_.containsKey('agents')
              ? (json_['agents'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Agent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agents != null) 'agents': agents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Changelogs.ListChangelogs.
class GoogleCloudDialogflowCxV3ListChangelogsResponse {
  /// The list of changelogs.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The changelogs will be ordered by timestamp.
  core.List<GoogleCloudDialogflowCxV3Changelog>? changelogs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListChangelogsResponse({
    this.changelogs,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListChangelogsResponse.fromJson(core.Map json_)
      : this(
          changelogs: json_.containsKey('changelogs')
              ? (json_['changelogs'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Changelog.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changelogs != null) 'changelogs': changelogs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Environments.ListTestCaseResults.
class GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse {
  /// The list of continuous test results.
  core.List<GoogleCloudDialogflowCxV3ContinuousTestResult>?
      continuousTestResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse({
    this.continuousTestResults,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse.fromJson(
      core.Map json_)
      : this(
          continuousTestResults: json_.containsKey('continuousTestResults')
              ? (json_['continuousTestResults'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ContinuousTestResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (continuousTestResults != null)
          'continuousTestResults': continuousTestResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Deployments.ListDeployments.
class GoogleCloudDialogflowCxV3ListDeploymentsResponse {
  /// The list of deployments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3Deployment>? deployments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListDeploymentsResponse.fromJson(core.Map json_)
      : this(
          deployments: json_.containsKey('deployments')
              ? (json_['deployments'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Deployment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployments != null) 'deployments': deployments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowCxV3ListEntityTypesResponse {
  /// The list of entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3EntityType>? entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(core.Map json_)
      : this(
          entityTypes: json_.containsKey('entityTypes')
              ? (json_['entityTypes'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3EntityType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypes != null) 'entityTypes': entityTypes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Environments.ListEnvironments.
class GoogleCloudDialogflowCxV3ListEnvironmentsResponse {
  /// The list of environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(core.Map json_)
      : this(
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Experiments.ListExperiments.
class GoogleCloudDialogflowCxV3ListExperimentsResponse {
  /// The list of experiments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3Experiment>? experiments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListExperimentsResponse({
    this.experiments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(core.Map json_)
      : this(
          experiments: json_.containsKey('experiments')
              ? (json_['experiments'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Experiment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (experiments != null) 'experiments': experiments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Flows.ListFlows.
class GoogleCloudDialogflowCxV3ListFlowsResponse {
  /// The list of flows.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Flow>? flows;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListFlowsResponse({
    this.flows,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(core.Map json_)
      : this(
          flows: json_.containsKey('flows')
              ? (json_['flows'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Flow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flows != null) 'flows': flows!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Generators.ListGenerators.
class GoogleCloudDialogflowCxV3ListGeneratorsResponse {
  /// The list of generators.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Generator>? generators;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListGeneratorsResponse({
    this.generators,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListGeneratorsResponse.fromJson(core.Map json_)
      : this(
          generators: json_.containsKey('generators')
              ? (json_['generators'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Generator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (generators != null) 'generators': generators!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Intents.ListIntents.
class GoogleCloudDialogflowCxV3ListIntentsResponse {
  /// The list of intents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Intent>? intents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(core.Map json_)
      : this(
          intents: json_.containsKey('intents')
              ? (json_['intents'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Intent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intents != null) 'intents': intents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Pages.ListPages.
class GoogleCloudDialogflowCxV3ListPagesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of pages.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Page>? pages;

  GoogleCloudDialogflowCxV3ListPagesResponse({
    this.nextPageToken,
    this.pages,
  });

  GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pages != null) 'pages': pages!,
      };
}

/// The response message for SecuritySettings.ListSecuritySettings.
class GoogleCloudDialogflowCxV3ListSecuritySettingsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of security settings.
  core.List<GoogleCloudDialogflowCxV3SecuritySettings>? securitySettings;

  GoogleCloudDialogflowCxV3ListSecuritySettingsResponse({
    this.nextPageToken,
    this.securitySettings,
  });

  GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          securitySettings: json_.containsKey('securitySettings')
              ? (json_['securitySettings'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (securitySettings != null) 'securitySettings': securitySettings!,
      };
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of session entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3SessionEntityType>? sessionEntityTypes;

  GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sessionEntityTypes: json_.containsKey('sessionEntityTypes')
              ? (json_['sessionEntityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sessionEntityTypes != null)
          'sessionEntityTypes': sessionEntityTypes!,
      };
}

/// The response message for TestCases.ListTestCaseResults.
class GoogleCloudDialogflowCxV3ListTestCaseResultsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of test case results.
  core.List<GoogleCloudDialogflowCxV3TestCaseResult>? testCaseResults;

  GoogleCloudDialogflowCxV3ListTestCaseResultsResponse({
    this.nextPageToken,
    this.testCaseResults,
  });

  GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          testCaseResults: json_.containsKey('testCaseResults')
              ? (json_['testCaseResults'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testCaseResults != null) 'testCaseResults': testCaseResults!,
      };
}

/// The response message for TestCases.ListTestCases.
class GoogleCloudDialogflowCxV3ListTestCasesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of test cases.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3TestCase>? testCases;

  GoogleCloudDialogflowCxV3ListTestCasesResponse({
    this.nextPageToken,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          testCases: json_.containsKey('testCases')
              ? (json_['testCases'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3TestCase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testCases != null) 'testCases': testCases!,
      };
}

/// The response message for TransitionRouteGroups.ListTransitionRouteGroups.
class GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of transition route groups.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3TransitionRouteGroup>?
      transitionRouteGroups;

  GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse({
    this.nextPageToken,
    this.transitionRouteGroups,
  });

  GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          transitionRouteGroups: json_.containsKey('transitionRouteGroups')
              ? (json_['transitionRouteGroups'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transitionRouteGroups != null)
          'transitionRouteGroups': transitionRouteGroups!,
      };
}

/// The response message for Versions.ListVersions.
class GoogleCloudDialogflowCxV3ListVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// A list of versions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3Version>? versions;

  GoogleCloudDialogflowCxV3ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// The response message for Webhooks.ListWebhooks.
class GoogleCloudDialogflowCxV3ListWebhooksResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of webhooks.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3Webhook>? webhooks;

  GoogleCloudDialogflowCxV3ListWebhooksResponse({
    this.nextPageToken,
    this.webhooks,
  });

  GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          webhooks: json_.containsKey('webhooks')
              ? (json_['webhooks'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Webhook.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (webhooks != null) 'webhooks': webhooks!,
      };
}

/// The request message for Versions.LoadVersion.
class GoogleCloudDialogflowCxV3LoadVersionRequest {
  /// This field is used to prevent accidental overwrite of other agent
  /// resources, which can potentially impact other flow's behavior.
  ///
  /// If `allow_override_agent_resources` is false, conflicted agent-level
  /// resources will not be overridden (i.e. intents, entities, webhooks).
  core.bool? allowOverrideAgentResources;

  GoogleCloudDialogflowCxV3LoadVersionRequest({
    this.allowOverrideAgentResources,
  });

  GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(core.Map json_)
      : this(
          allowOverrideAgentResources:
              json_.containsKey('allowOverrideAgentResources')
                  ? json_['allowOverrideAgentResources'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOverrideAgentResources != null)
          'allowOverrideAgentResources': allowOverrideAgentResources!,
      };
}

/// The response message for Environments.LookupEnvironmentHistory.
class GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse {
  /// Represents a list of snapshots for an environment.
  ///
  /// Time of the snapshots is stored in `update_time`.
  core.List<GoogleCloudDialogflowCxV3Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse.fromJson(
      core.Map json_)
      : this(
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents one match result of MatchIntent.
class GoogleCloudDialogflowCxV3Match {
  /// The confidence of this match.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// This value is for informational purpose only and is only used to help
  /// match the best intent within the classification threshold. This value may
  /// change for the same end-user expression at any time due to a model
  /// retraining or change in implementation.
  core.double? confidence;

  /// The event that matched the query.
  ///
  /// Filled for `EVENT`, `NO_MATCH` and `NO_INPUT` match types.
  core.String? event;

  /// The Intent that matched the query.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to: `name` and `display_name`. Only filled for `INTENT` match type.
  GoogleCloudDialogflowCxV3Intent? intent;

  /// Type of this Match.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Not specified. Should never be used.
  /// - "INTENT" : The query was matched to an intent.
  /// - "DIRECT_INTENT" : The query directly triggered an intent.
  /// - "PARAMETER_FILLING" : The query was used for parameter filling.
  /// - "NO_MATCH" : No match was found for the query.
  /// - "NO_INPUT" : Indicates an empty query.
  /// - "EVENT" : The query directly triggered an event.
  core.String? matchType;

  /// The collection of parameters extracted from the query.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey
  /// value: parameter name * MapValue type: If parameter's entity type is a
  /// composite entity then use map, otherwise, depending on the parameter value
  /// type, it could be one of string, number, boolean, null, list or map. *
  /// MapValue value: If parameter's entity type is a composite entity then use
  /// map from composite entity property names to property values, otherwise,
  /// use parameter value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// Final text input which was matched during MatchIntent.
  ///
  /// This value can be different from original input sent in request because of
  /// spelling correction or other processing.
  core.String? resolvedInput;

  GoogleCloudDialogflowCxV3Match({
    this.confidence,
    this.event,
    this.intent,
    this.matchType,
    this.parameters,
    this.resolvedInput,
  });

  GoogleCloudDialogflowCxV3Match.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          event:
              json_.containsKey('event') ? json_['event'] as core.String : null,
          intent: json_.containsKey('intent')
              ? GoogleCloudDialogflowCxV3Intent.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>)
              : null,
          matchType: json_.containsKey('matchType')
              ? json_['matchType'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
          resolvedInput: json_.containsKey('resolvedInput')
              ? json_['resolvedInput'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (event != null) 'event': event!,
        if (intent != null) 'intent': intent!,
        if (matchType != null) 'matchType': matchType!,
        if (parameters != null) 'parameters': parameters!,
        if (resolvedInput != null) 'resolvedInput': resolvedInput!,
      };
}

/// Request of MatchIntent.
class GoogleCloudDialogflowCxV3MatchIntentRequest {
  /// Persist session parameter changes from `query_params`.
  core.bool? persistParameterChanges;

  /// The input specification.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowCxV3QueryParameters? queryParams;

  GoogleCloudDialogflowCxV3MatchIntentRequest({
    this.persistParameterChanges,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(core.Map json_)
      : this(
          persistParameterChanges: json_.containsKey('persistParameterChanges')
              ? json_['persistParameterChanges'] as core.bool
              : null,
          queryInput: json_.containsKey('queryInput')
              ? GoogleCloudDialogflowCxV3QueryInput.fromJson(
                  json_['queryInput'] as core.Map<core.String, core.dynamic>)
              : null,
          queryParams: json_.containsKey('queryParams')
              ? GoogleCloudDialogflowCxV3QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (persistParameterChanges != null)
          'persistParameterChanges': persistParameterChanges!,
        if (queryInput != null) 'queryInput': queryInput!,
        if (queryParams != null) 'queryParams': queryParams!,
      };
}

/// Response of MatchIntent.
class GoogleCloudDialogflowCxV3MatchIntentResponse {
  /// The current Page.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to `name` and `display_name`.
  GoogleCloudDialogflowCxV3Page? currentPage;

  /// Match results, if more than one, ordered descendingly by the confidence we
  /// have that the particular intent matches the query.
  core.List<GoogleCloudDialogflowCxV3Match>? matches;

  /// If natural language text was provided as input, this field will contain a
  /// copy of the text.
  core.String? text;

  /// If natural language speech audio was provided as input, this field will
  /// contain the transcript for the audio.
  core.String? transcript;

  /// If an event was provided as input, this field will contain a copy of the
  /// event name.
  core.String? triggerEvent;

  /// If an intent was provided as input, this field will contain a copy of the
  /// intent identifier.
  ///
  /// Format: `projects//locations//agents//intents/`.
  core.String? triggerIntent;

  GoogleCloudDialogflowCxV3MatchIntentResponse({
    this.currentPage,
    this.matches,
    this.text,
    this.transcript,
    this.triggerEvent,
    this.triggerIntent,
  });

  GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(core.Map json_)
      : this(
          currentPage: json_.containsKey('currentPage')
              ? GoogleCloudDialogflowCxV3Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3Match.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          transcript: json_.containsKey('transcript')
              ? json_['transcript'] as core.String
              : null,
          triggerEvent: json_.containsKey('triggerEvent')
              ? json_['triggerEvent'] as core.String
              : null,
          triggerIntent: json_.containsKey('triggerIntent')
              ? json_['triggerIntent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentPage != null) 'currentPage': currentPage!,
        if (matches != null) 'matches': matches!,
        if (text != null) 'text': text!,
        if (transcript != null) 'transcript': transcript!,
        if (triggerEvent != null) 'triggerEvent': triggerEvent!,
        if (triggerIntent != null) 'triggerIntent': triggerIntent!,
      };
}

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3NluSettings {
  /// To filter out false positive results and still get variety in matched
  /// natural language inputs for your agent, you can tune the machine learning
  /// classification threshold.
  ///
  /// If the returned score value is less than the threshold value, then a
  /// no-match event will be triggered. The score values range from 0.0
  /// (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  core.double? classificationThreshold;

  /// Indicates NLU model training mode.
  /// Possible string values are:
  /// - "MODEL_TRAINING_MODE_UNSPECIFIED" : Not specified.
  /// `MODEL_TRAINING_MODE_AUTOMATIC` will be used.
  /// - "MODEL_TRAINING_MODE_AUTOMATIC" : NLU model training is automatically
  /// triggered when a flow gets modified. User can also manually trigger model
  /// training in this mode.
  /// - "MODEL_TRAINING_MODE_MANUAL" : User needs to manually trigger NLU model
  /// training. Best for large flows whose models take long time to train.
  core.String? modelTrainingMode;

  /// Indicates the type of NLU model.
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED" : Not specified. `MODEL_TYPE_STANDARD` will be
  /// used.
  /// - "MODEL_TYPE_STANDARD" : Use standard NLU model.
  /// - "MODEL_TYPE_ADVANCED" : Use advanced NLU model.
  core.String? modelType;

  GoogleCloudDialogflowCxV3NluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  GoogleCloudDialogflowCxV3NluSettings.fromJson(core.Map json_)
      : this(
          classificationThreshold: json_.containsKey('classificationThreshold')
              ? (json_['classificationThreshold'] as core.num).toDouble()
              : null,
          modelTrainingMode: json_.containsKey('modelTrainingMode')
              ? json_['modelTrainingMode'] as core.String
              : null,
          modelType: json_.containsKey('modelType')
              ? json_['modelType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classificationThreshold != null)
          'classificationThreshold': classificationThreshold!,
        if (modelTrainingMode != null) 'modelTrainingMode': modelTrainingMode!,
        if (modelType != null) 'modelType': modelType!,
      };
}

/// Instructs the speech synthesizer how to generate the output audio content.
class GoogleCloudDialogflowCxV3OutputAudioConfig {
  /// Audio encoding of the synthesized audio content.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed
  /// little-endian samples (Linear PCM). Audio content returned as LINEAR16
  /// also contains a WAV header.
  /// - "OUTPUT_AUDIO_ENCODING_MP3" : MP3 audio at 32kbps.
  /// - "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS" : MP3 audio at 64kbps.
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio wrapped in an ogg
  /// container. The result will be a file which can be played natively on
  /// Android, and in browsers (at least Chrome and Firefox). The quality of the
  /// encoding is considerably higher than MP3 while using approximately the
  /// same bitrate.
  /// - "OUTPUT_AUDIO_ENCODING_MULAW" : 8-bit samples that compand 14-bit audio
  /// samples using G.711 PCMU/mu-law.
  core.String? audioEncoding;

  /// The synthesis sample rate (in hertz) for this audio.
  ///
  /// If not provided, then the synthesizer will use the default sample rate
  /// based on the audio encoding. If this is different from the voice's natural
  /// sample rate, then the synthesizer will honor this request by converting to
  /// the desired sample rate (which might result in worse audio quality).
  ///
  /// Optional.
  core.int? sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  ///
  /// If not specified, Agent.text_to_speech_settings is applied.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowCxV3OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(core.Map json_)
      : this(
          audioEncoding: json_.containsKey('audioEncoding')
              ? json_['audioEncoding'] as core.String
              : null,
          sampleRateHertz: json_.containsKey('sampleRateHertz')
              ? json_['sampleRateHertz'] as core.int
              : null,
          synthesizeSpeechConfig: json_.containsKey('synthesizeSpeechConfig')
              ? GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
                  json_['synthesizeSpeechConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioEncoding != null) 'audioEncoding': audioEncoding!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
        if (synthesizeSpeechConfig != null)
          'synthesizeSpeechConfig': synthesizeSpeechConfig!,
      };
}

/// A Dialogflow CX conversation (session) can be described and visualized as a
/// state machine.
///
/// The states of a CX session are represented by pages. For each flow, you
/// define many pages, where your combined pages can handle a complete
/// conversation on the topics the flow is designed for. At any given moment,
/// exactly one page is the current page, the current page is considered active,
/// and the flow associated with that page is considered active. Every flow has
/// a special start page. When a flow initially becomes active, the start page
/// page becomes the current page. For each conversational turn, the current
/// page will either stay the same or transition to another page. You configure
/// each page to collect information from the end-user that is relevant for the
/// conversational state represented by the page. For more information, see the
/// [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).
class GoogleCloudDialogflowCxV3Page {
  /// Hierarchical advanced settings for this page.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// The description of the page.
  ///
  /// The maximum length is 500 characters.
  core.String? description;

  /// The human-readable name of the page, unique within the flow.
  ///
  /// Required.
  core.String? displayName;

  /// The fulfillment to call when the session is entering the page.
  GoogleCloudDialogflowCxV3Fulfillment? entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors,
  /// no match or no input.
  core.List<GoogleCloudDialogflowCxV3EventHandler>? eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant
  /// to the page.
  GoogleCloudDialogflowCxV3Form? form;

  /// Knowledge connector configuration.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings?
      knowledgeConnectorSettings;

  /// The unique identifier of the page.
  ///
  /// Required for the Pages.UpdatePage method. Pages.CreatePage populates the
  /// name automatically. Format: `projects//locations//agents//flows//pages/`.
  core.String? name;

  /// Ordered list of `TransitionRouteGroups` added to the page.
  ///
  /// Transition route groups must be unique within a page. If the page links
  /// both flow-level transition route groups and agent-level transition route
  /// groups, the flow-level ones will have higher priority and will be put
  /// before the agent-level ones. * If multiple transition routes within a page
  /// scope refer to the same intent, then the precedence order is: page's
  /// transition route -\> page's transition route group -\> flow's transition
  /// routes. * If multiple transition route groups within a page contain the
  /// same intent, then the first group in the ordered list takes precedence.
  /// Format:`projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/` for agent-level
  /// groups.
  core.List<core.String>? transitionRouteGroups;

  /// A list of transitions for the transition rules of this page.
  ///
  /// They route the conversation to another page in the same flow, or another
  /// flow. When we are in a certain page, the TransitionRoutes are evalauted in
  /// the following order: * TransitionRoutes defined in the page with intent
  /// specified. * TransitionRoutes defined in the transition route groups with
  /// intent specified. * TransitionRoutes defined in flow with intent
  /// specified. * TransitionRoutes defined in the transition route groups with
  /// intent specified. * TransitionRoutes defined in the page with only
  /// condition specified. * TransitionRoutes defined in the transition route
  /// groups with only condition specified.
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3Page({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.name,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3Page.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entryFulfillment: json_.containsKey('entryFulfillment')
              ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                  json_['entryFulfillment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          eventHandlers: json_.containsKey('eventHandlers')
              ? (json_['eventHandlers'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EventHandler.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          form: json_.containsKey('form')
              ? GoogleCloudDialogflowCxV3Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          knowledgeConnectorSettings: json_
                  .containsKey('knowledgeConnectorSettings')
              ? GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(
                  json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          transitionRouteGroups: json_.containsKey('transitionRouteGroups')
              ? (json_['transitionRouteGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transitionRoutes: json_.containsKey('transitionRoutes')
              ? (json_['transitionRoutes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (entryFulfillment != null) 'entryFulfillment': entryFulfillment!,
        if (eventHandlers != null) 'eventHandlers': eventHandlers!,
        if (form != null) 'form': form!,
        if (knowledgeConnectorSettings != null)
          'knowledgeConnectorSettings': knowledgeConnectorSettings!,
        if (name != null) 'name': name!,
        if (transitionRouteGroups != null)
          'transitionRouteGroups': transitionRouteGroups!,
        if (transitionRoutes != null) 'transitionRoutes': transitionRoutes!,
      };
}

/// Text input which can be used for prompt or banned phrases.
class GoogleCloudDialogflowCxV3Phrase {
  /// Text input which can be used for prompt or banned phrases.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3Phrase({
    this.text,
  });

  GoogleCloudDialogflowCxV3Phrase.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Represents the query input.
///
/// It can contain one of: 1. A conversational query in the form of text. 2. An
/// intent query that specifies which intent to trigger. 3. Natural language
/// speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to
/// invoke an intent and fill in parameter value. 6. The results of a tool
/// executed by the client.
class GoogleCloudDialogflowCxV3QueryInput {
  /// The natural language speech audio to be processed.
  GoogleCloudDialogflowCxV3AudioInput? audio;

  /// The DTMF event to be handled.
  GoogleCloudDialogflowCxV3DtmfInput? dtmf;

  /// The event to be triggered.
  GoogleCloudDialogflowCxV3EventInput? event;

  /// The intent to be triggered.
  GoogleCloudDialogflowCxV3IntentInput? intent;

  /// The language of the input.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  ///
  /// Required.
  core.String? languageCode;

  /// The natural language text to be processed.
  GoogleCloudDialogflowCxV3TextInput? text;

  GoogleCloudDialogflowCxV3QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    this.languageCode,
    this.text,
  });

  GoogleCloudDialogflowCxV3QueryInput.fromJson(core.Map json_)
      : this(
          audio: json_.containsKey('audio')
              ? GoogleCloudDialogflowCxV3AudioInput.fromJson(
                  json_['audio'] as core.Map<core.String, core.dynamic>)
              : null,
          dtmf: json_.containsKey('dtmf')
              ? GoogleCloudDialogflowCxV3DtmfInput.fromJson(
                  json_['dtmf'] as core.Map<core.String, core.dynamic>)
              : null,
          event: json_.containsKey('event')
              ? GoogleCloudDialogflowCxV3EventInput.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>)
              : null,
          intent: json_.containsKey('intent')
              ? GoogleCloudDialogflowCxV3IntentInput.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          text: json_.containsKey('text')
              ? GoogleCloudDialogflowCxV3TextInput.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audio != null) 'audio': audio!,
        if (dtmf != null) 'dtmf': dtmf!,
        if (event != null) 'event': event!,
        if (intent != null) 'intent': intent!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
}

/// Represents the parameters of a conversational query.
class GoogleCloudDialogflowCxV3QueryParameters {
  /// Configures whether sentiment analysis should be performed.
  ///
  /// If not provided, sentiment analysis is not performed.
  core.bool? analyzeQueryTextSentiment;

  /// The channel which this query is for.
  ///
  /// If specified, only the ResponseMessage associated with the channel will be
  /// returned. If no ResponseMessage is associated with the channel, it falls
  /// back to the ResponseMessage with unspecified channel. If unspecified, the
  /// ResponseMessage with unspecified channel will be returned.
  core.String? channel;

  /// The unique identifier of the page to override the current page in the
  /// session.
  ///
  /// Format: `projects//locations//agents//flows//pages/`. If `current_page` is
  /// specified, the previous state of the session will be ignored by
  /// Dialogflow, including the previous page and the previous session
  /// parameters. In most cases, current_page and parameters should be
  /// configured together to direct a session to a specific state.
  core.String? currentPage;

  /// Whether to disable webhook calls for this request.
  core.bool? disableWebhook;

  /// Information about the end-user to improve the relevance and accuracy of
  /// generative answers.
  ///
  /// This will be interpreted and used by a language model, so, for good
  /// results, the data should be self-descriptive, and in a simple structure.
  /// Example: ```json { "subscription plan": "Business Premium Plus", "devices
  /// owned": [ {"model": "Google Pixel 7"}, {"model": "Google Pixel Tablet"} ]
  /// } ```
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? endUserMetadata;

  /// A list of flow versions to override for the request.
  ///
  /// Format: `projects//locations//agents//flows//versions/`. If version 1 of
  /// flow X is included in this list, the traffic of flow X will go through
  /// version 1 regardless of the version configuration in the environment. Each
  /// flow can have at most one version specified in this list.
  core.List<core.String>? flowVersions;

  /// The geo location of this conversational query.
  GoogleTypeLatLng? geoLocation;

  /// Additional parameters to be put into session parameters.
  ///
  /// To remove a parameter from the session, clients should explicitly set the
  /// parameter value to null. You can reference the session parameters in the
  /// agent with the following format: $session.params.parameter-id. Depending
  /// on your protocol or client library language, this is a map, associative
  /// array, symbol table, dictionary, or JSON object composed of a collection
  /// of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value:
  /// parameter name * MapValue type: If parameter's entity type is a composite
  /// entity then use map, otherwise, depending on the parameter value type, it
  /// could be one of string, number, boolean, null, list or map. * MapValue
  /// value: If parameter's entity type is a composite entity then use map from
  /// composite entity property names to property values, otherwise, use
  /// parameter value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// This field can be used to pass custom data into the webhook associated
  /// with the agent.
  ///
  /// Arbitrary JSON objects are supported. Some integrations that query a
  /// Dialogflow agent may provide additional information in the payload. In
  /// particular, for the Dialogflow Phone Gateway integration, this field has
  /// the form: ``` { "telephony": { "caller_id": "+18558363987" } } ```
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// If set to true and data stores are involved in serving the request then
  /// DetectIntentResponse.query_result.data_store_connection_signals will be
  /// filled with data that can help evaluations.
  ///
  /// Optional.
  core.bool? populateDataStoreConnectionSignals;

  /// Search configuration for UCS search queries.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3SearchConfig? searchConfig;

  /// Additional session entity types to replace or extend developer entity
  /// types with.
  ///
  /// The entity synonyms apply to all languages and persist for the session of
  /// this query.
  core.List<GoogleCloudDialogflowCxV3SessionEntityType>? sessionEntityTypes;

  /// Configure lifetime of the Dialogflow session.
  ///
  /// By default, a Dialogflow session remains active and its data is stored for
  /// 30 minutes after the last request is sent for the session. This value
  /// should be no longer than 1 day.
  ///
  /// Optional.
  core.String? sessionTtl;

  /// The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// If not provided, the time zone specified in the agent is used.
  core.String? timeZone;

  /// This field can be used to pass HTTP headers for a webhook call.
  ///
  /// These headers will be sent to webhook along with the headers that have
  /// been configured through Dialogflow web console. The headers defined within
  /// this field will overwrite the headers configured through Dialogflow
  /// console if there is a conflict. Header names are case-insensitive.
  /// Google's specified headers are not allowed. Including: "Host",
  /// "Content-Length", "Connection", "From", "User-Agent", "Accept-Encoding",
  /// "If-Modified-Since", "If-None-Match", "X-Forwarded-For", etc.
  core.Map<core.String, core.String>? webhookHeaders;

  GoogleCloudDialogflowCxV3QueryParameters({
    this.analyzeQueryTextSentiment,
    this.channel,
    this.currentPage,
    this.disableWebhook,
    this.endUserMetadata,
    this.flowVersions,
    this.geoLocation,
    this.parameters,
    this.payload,
    this.populateDataStoreConnectionSignals,
    this.searchConfig,
    this.sessionEntityTypes,
    this.sessionTtl,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowCxV3QueryParameters.fromJson(core.Map json_)
      : this(
          analyzeQueryTextSentiment:
              json_.containsKey('analyzeQueryTextSentiment')
                  ? json_['analyzeQueryTextSentiment'] as core.bool
                  : null,
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
              : null,
          currentPage: json_.containsKey('currentPage')
              ? json_['currentPage'] as core.String
              : null,
          disableWebhook: json_.containsKey('disableWebhook')
              ? json_['disableWebhook'] as core.bool
              : null,
          endUserMetadata: json_.containsKey('endUserMetadata')
              ? json_['endUserMetadata'] as core.Map<core.String, core.dynamic>
              : null,
          flowVersions: json_.containsKey('flowVersions')
              ? (json_['flowVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          geoLocation: json_.containsKey('geoLocation')
              ? GoogleTypeLatLng.fromJson(
                  json_['geoLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.Map<core.String, core.dynamic>
              : null,
          populateDataStoreConnectionSignals:
              json_.containsKey('populateDataStoreConnectionSignals')
                  ? json_['populateDataStoreConnectionSignals'] as core.bool
                  : null,
          searchConfig: json_.containsKey('searchConfig')
              ? GoogleCloudDialogflowCxV3SearchConfig.fromJson(
                  json_['searchConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          sessionEntityTypes: json_.containsKey('sessionEntityTypes')
              ? (json_['sessionEntityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sessionTtl: json_.containsKey('sessionTtl')
              ? json_['sessionTtl'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          webhookHeaders: json_.containsKey('webhookHeaders')
              ? (json_['webhookHeaders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzeQueryTextSentiment != null)
          'analyzeQueryTextSentiment': analyzeQueryTextSentiment!,
        if (channel != null) 'channel': channel!,
        if (currentPage != null) 'currentPage': currentPage!,
        if (disableWebhook != null) 'disableWebhook': disableWebhook!,
        if (endUserMetadata != null) 'endUserMetadata': endUserMetadata!,
        if (flowVersions != null) 'flowVersions': flowVersions!,
        if (geoLocation != null) 'geoLocation': geoLocation!,
        if (parameters != null) 'parameters': parameters!,
        if (payload != null) 'payload': payload!,
        if (populateDataStoreConnectionSignals != null)
          'populateDataStoreConnectionSignals':
              populateDataStoreConnectionSignals!,
        if (searchConfig != null) 'searchConfig': searchConfig!,
        if (sessionEntityTypes != null)
          'sessionEntityTypes': sessionEntityTypes!,
        if (sessionTtl != null) 'sessionTtl': sessionTtl!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (webhookHeaders != null) 'webhookHeaders': webhookHeaders!,
      };
}

/// Represents the result of a conversational query.
class GoogleCloudDialogflowCxV3QueryResult {
  /// Returns the current advanced settings including IVR settings.
  ///
  /// Even though the operations configured by these settings are performed by
  /// Dialogflow, the client may need to perform special logic at the moment.
  /// For example, if Dialogflow exports audio to Google Cloud Storage, then the
  /// client may need to wait for the resulting object to appear in the bucket
  /// before proceeding.
  GoogleCloudDialogflowCxV3AdvancedSettings? advancedSettings;

  /// Indicates whether the Thumbs up/Thumbs down rating controls are need to be
  /// shown for the response in the Dialogflow Messenger widget.
  core.bool? allowAnswerFeedback;

  /// The current Page.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to `name` and `display_name`.
  GoogleCloudDialogflowCxV3Page? currentPage;

  /// Data store connection feature output signals.
  ///
  /// Filled only when data stores are involved in serving the query and
  /// DetectIntentRequest.populate data_store_connection_quality_signals is set
  /// to true in the request.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3DataStoreConnectionSignals?
      dataStoreConnectionSignals;

  /// The free-form diagnostic info.
  ///
  /// For example, this field could contain webhook call latency. The fields of
  /// this data can change without notice, so you should not write code that
  /// depends on its structure. One of the fields is called "Alternative Matched
  /// Intents", which may aid with debugging. The following describes these
  /// intent results: - The list is empty if no intent was matched to end-user
  /// input. - Only intents that are referenced in the currently active flow are
  /// included. - The matched intent is included. - Other intents that could
  /// have matched end-user input, but did not match because they are referenced
  /// by intent routes that are out of
  /// [scope](https://cloud.google.com/dialogflow/cx/docs/concept/handler#scope),
  /// are included. - Other intents referenced by intent routes in scope that
  /// matched end-user input, but had a lower confidence score.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;

  /// If a DTMF was provided as input, this field will contain a copy of the
  /// DtmfInput.
  GoogleCloudDialogflowCxV3DtmfInput? dtmf;

  /// The Intent that matched the conversational query.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to: `name` and `display_name`. This field is deprecated, please use
  /// QueryResult.match instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDialogflowCxV3Intent? intent;

  /// The intent detection confidence.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// This value is for informational purpose only and is only used to help
  /// match the best intent within the classification threshold. This value may
  /// change for the same end-user expression at any time due to a model
  /// retraining or change in implementation. This field is deprecated, please
  /// use QueryResult.match instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.double? intentDetectionConfidence;

  /// The language that was triggered during intent detection.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes.
  core.String? languageCode;

  /// Intent match result, could be an intent or an event.
  GoogleCloudDialogflowCxV3Match? match;

  /// The collected session parameters.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey
  /// value: parameter name * MapValue type: If parameter's entity type is a
  /// composite entity then use map, otherwise, depending on the parameter value
  /// type, it could be one of string, number, boolean, null, list or map. *
  /// MapValue value: If parameter's entity type is a composite entity then use
  /// map from composite entity property names to property values, otherwise,
  /// use parameter value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// The list of rich messages returned to the client.
  ///
  /// Responses vary from simple text messages to more sophisticated, structured
  /// payloads used to drive complex logic.
  core.List<GoogleCloudDialogflowCxV3ResponseMessage>? responseMessages;

  /// The sentiment analyss result, which depends on
  /// `analyze_query_text_sentiment`, specified in the request.
  GoogleCloudDialogflowCxV3SentimentAnalysisResult? sentimentAnalysisResult;

  /// If natural language text was provided as input, this field will contain a
  /// copy of the text.
  core.String? text;

  /// If natural language speech audio was provided as input, this field will
  /// contain the transcript for the audio.
  core.String? transcript;

  /// If an event was provided as input, this field will contain the name of the
  /// event.
  core.String? triggerEvent;

  /// If an intent was provided as input, this field will contain a copy of the
  /// intent identifier.
  ///
  /// Format: `projects//locations//agents//intents/`.
  core.String? triggerIntent;

  /// The list of webhook payload in WebhookResponse.payload, in the order of
  /// call sequence.
  ///
  /// If some webhook call fails or doesn't return any payload, an empty
  /// `Struct` would be used instead.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? webhookPayloads;

  /// The list of webhook call status in the order of call sequence.
  core.List<GoogleRpcStatus>? webhookStatuses;

  GoogleCloudDialogflowCxV3QueryResult({
    this.advancedSettings,
    this.allowAnswerFeedback,
    this.currentPage,
    this.dataStoreConnectionSignals,
    this.diagnosticInfo,
    this.dtmf,
    this.intent,
    this.intentDetectionConfidence,
    this.languageCode,
    this.match,
    this.parameters,
    this.responseMessages,
    this.sentimentAnalysisResult,
    this.text,
    this.transcript,
    this.triggerEvent,
    this.triggerIntent,
    this.webhookPayloads,
    this.webhookStatuses,
  });

  GoogleCloudDialogflowCxV3QueryResult.fromJson(core.Map json_)
      : this(
          advancedSettings: json_.containsKey('advancedSettings')
              ? GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          allowAnswerFeedback: json_.containsKey('allowAnswerFeedback')
              ? json_['allowAnswerFeedback'] as core.bool
              : null,
          currentPage: json_.containsKey('currentPage')
              ? GoogleCloudDialogflowCxV3Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>)
              : null,
          dataStoreConnectionSignals: json_
                  .containsKey('dataStoreConnectionSignals')
              ? GoogleCloudDialogflowCxV3DataStoreConnectionSignals.fromJson(
                  json_['dataStoreConnectionSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          diagnosticInfo: json_.containsKey('diagnosticInfo')
              ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
              : null,
          dtmf: json_.containsKey('dtmf')
              ? GoogleCloudDialogflowCxV3DtmfInput.fromJson(
                  json_['dtmf'] as core.Map<core.String, core.dynamic>)
              : null,
          intent: json_.containsKey('intent')
              ? GoogleCloudDialogflowCxV3Intent.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>)
              : null,
          intentDetectionConfidence:
              json_.containsKey('intentDetectionConfidence')
                  ? (json_['intentDetectionConfidence'] as core.num).toDouble()
                  : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          match: json_.containsKey('match')
              ? GoogleCloudDialogflowCxV3Match.fromJson(
                  json_['match'] as core.Map<core.String, core.dynamic>)
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
          responseMessages: json_.containsKey('responseMessages')
              ? (json_['responseMessages'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sentimentAnalysisResult: json_.containsKey('sentimentAnalysisResult')
              ? GoogleCloudDialogflowCxV3SentimentAnalysisResult.fromJson(
                  json_['sentimentAnalysisResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          transcript: json_.containsKey('transcript')
              ? json_['transcript'] as core.String
              : null,
          triggerEvent: json_.containsKey('triggerEvent')
              ? json_['triggerEvent'] as core.String
              : null,
          triggerIntent: json_.containsKey('triggerIntent')
              ? json_['triggerIntent'] as core.String
              : null,
          webhookPayloads: json_.containsKey('webhookPayloads')
              ? (json_['webhookPayloads'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          webhookStatuses: json_.containsKey('webhookStatuses')
              ? (json_['webhookStatuses'] as core.List)
                  .map((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedSettings != null) 'advancedSettings': advancedSettings!,
        if (allowAnswerFeedback != null)
          'allowAnswerFeedback': allowAnswerFeedback!,
        if (currentPage != null) 'currentPage': currentPage!,
        if (dataStoreConnectionSignals != null)
          'dataStoreConnectionSignals': dataStoreConnectionSignals!,
        if (diagnosticInfo != null) 'diagnosticInfo': diagnosticInfo!,
        if (dtmf != null) 'dtmf': dtmf!,
        if (intent != null) 'intent': intent!,
        if (intentDetectionConfidence != null)
          'intentDetectionConfidence': intentDetectionConfidence!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (match != null) 'match': match!,
        if (parameters != null) 'parameters': parameters!,
        if (responseMessages != null) 'responseMessages': responseMessages!,
        if (sentimentAnalysisResult != null)
          'sentimentAnalysisResult': sentimentAnalysisResult!,
        if (text != null) 'text': text!,
        if (transcript != null) 'transcript': transcript!,
        if (triggerEvent != null) 'triggerEvent': triggerEvent!,
        if (triggerIntent != null) 'triggerIntent': triggerIntent!,
        if (webhookPayloads != null) 'webhookPayloads': webhookPayloads!,
        if (webhookStatuses != null) 'webhookStatuses': webhookStatuses!,
      };
}

/// Resource name and display name.
class GoogleCloudDialogflowCxV3ResourceName {
  /// Display name.
  core.String? displayName;

  /// Name.
  core.String? name;

  GoogleCloudDialogflowCxV3ResourceName({
    this.displayName,
    this.name,
  });

  GoogleCloudDialogflowCxV3ResourceName.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Represents a response message that can be returned by a conversational
/// agent.
///
/// Response messages are also used for output audio synthesis. The approach is
/// as follows: * If at least one OutputAudioText response is present, then all
/// OutputAudioText responses are linearly concatenated, and the result is used
/// for output audio synthesis. * If the OutputAudioText responses are a mixture
/// of text and SSML, then the concatenated result is treated as SSML;
/// otherwise, the result is treated as either text or SSML as appropriate. The
/// agent designer should ideally use either text or SSML consistently
/// throughout the bot design. * Otherwise, all Text responses are linearly
/// concatenated, and the result is used for output audio synthesis. This
/// approach allows for more sophisticated user experience scenarios, where the
/// text displayed to the user may differ from what is heard.
class GoogleCloudDialogflowCxV3ResponseMessage {
  /// The channel which the response is associated with.
  ///
  /// Clients can specify the channel via QueryParameters.channel, and only
  /// associated channel response will be returned.
  core.String? channel;

  /// Indicates that the conversation succeeded.
  GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess?
      conversationSuccess;

  /// A signal that indicates the interaction with the Dialogflow agent has
  /// ended.
  ///
  /// This message is generated by Dialogflow only when the conversation reaches
  /// `END_SESSION` page. It is not supposed to be defined by the user. It's
  /// guaranteed that there is at most one such message in each response.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3ResponseMessageEndInteraction? endInteraction;

  /// Represents info card for knowledge answers, to be better rendered in
  /// Dialogflow Messenger.
  GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard? knowledgeInfoCard;

  /// Hands off conversation to a human agent.
  GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff? liveAgentHandoff;

  /// An audio response message composed of both the synthesized Dialogflow
  /// agent responses and responses defined via play_audio.
  ///
  /// This message is generated by Dialogflow only and not supposed to be
  /// defined by the user.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio? mixedAudio;

  /// A text or ssml response that is preferentially used for TTS output audio
  /// synthesis, as described in the comment on the ResponseMessage message.
  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText? outputAudioText;

  /// Returns a response containing a custom, platform-specific payload.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// Signal that the client should play an audio clip hosted at a
  /// client-specific URI.
  ///
  /// Dialogflow uses this to construct mixed_audio. However, Dialogflow itself
  /// does not try to read or process the URI in any way.
  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio? playAudio;

  /// Response type.
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED" : Not specified.
  /// - "ENTRY_PROMPT" : The response is from an entry prompt in the page.
  /// - "PARAMETER_PROMPT" : The response is from form-filling prompt in the
  /// page.
  /// - "HANDLER_PROMPT" : The response is from a transition route or an event
  /// handler in the page or flow or transition route group.
  core.String? responseType;

  /// A signal that the client should transfer the phone call connected to this
  /// agent to a third-party endpoint.
  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall?
      telephonyTransferCall;

  /// Returns a text response.
  GoogleCloudDialogflowCxV3ResponseMessageText? text;

  GoogleCloudDialogflowCxV3ResponseMessage({
    this.channel,
    this.conversationSuccess,
    this.endInteraction,
    this.knowledgeInfoCard,
    this.liveAgentHandoff,
    this.mixedAudio,
    this.outputAudioText,
    this.payload,
    this.playAudio,
    this.responseType,
    this.telephonyTransferCall,
    this.text,
  });

  GoogleCloudDialogflowCxV3ResponseMessage.fromJson(core.Map json_)
      : this(
          channel: json_.containsKey('channel')
              ? json_['channel'] as core.String
              : null,
          conversationSuccess: json_.containsKey('conversationSuccess')
              ? GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
                  .fromJson(json_['conversationSuccess']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endInteraction: json_.containsKey('endInteraction')
              ? GoogleCloudDialogflowCxV3ResponseMessageEndInteraction.fromJson(
                  json_['endInteraction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          knowledgeInfoCard: json_.containsKey('knowledgeInfoCard')
              ? GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
                  .fromJson(json_['knowledgeInfoCard']
                      as core.Map<core.String, core.dynamic>)
              : null,
          liveAgentHandoff: json_.containsKey('liveAgentHandoff')
              ? GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
                  .fromJson(json_['liveAgentHandoff']
                      as core.Map<core.String, core.dynamic>)
              : null,
          mixedAudio: json_.containsKey('mixedAudio')
              ? GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(
                  json_['mixedAudio'] as core.Map<core.String, core.dynamic>)
              : null,
          outputAudioText: json_.containsKey('outputAudioText')
              ? GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
                  .fromJson(json_['outputAudioText']
                      as core.Map<core.String, core.dynamic>)
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.Map<core.String, core.dynamic>
              : null,
          playAudio: json_.containsKey('playAudio')
              ? GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(
                  json_['playAudio'] as core.Map<core.String, core.dynamic>)
              : null,
          responseType: json_.containsKey('responseType')
              ? json_['responseType'] as core.String
              : null,
          telephonyTransferCall: json_.containsKey('telephonyTransferCall')
              ? GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
                  .fromJson(json_['telephonyTransferCall']
                      as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (conversationSuccess != null)
          'conversationSuccess': conversationSuccess!,
        if (endInteraction != null) 'endInteraction': endInteraction!,
        if (knowledgeInfoCard != null) 'knowledgeInfoCard': knowledgeInfoCard!,
        if (liveAgentHandoff != null) 'liveAgentHandoff': liveAgentHandoff!,
        if (mixedAudio != null) 'mixedAudio': mixedAudio!,
        if (outputAudioText != null) 'outputAudioText': outputAudioText!,
        if (payload != null) 'payload': payload!,
        if (playAudio != null) 'playAudio': playAudio!,
        if (responseType != null) 'responseType': responseType!,
        if (telephonyTransferCall != null)
          'telephonyTransferCall': telephonyTransferCall!,
        if (text != null) 'text': text!,
      };
}

/// Indicates that the conversation succeeded, i.e., the bot handled the issue
/// that the customer talked to it about.
///
/// Dialogflow only uses this to determine which conversations should be counted
/// as successful and doesn't process the metadata in this message in any way.
/// Note that Dialogflow also considers conversations that get to the
/// conversation end page as successful even if they don't return
/// ConversationSuccess. You may set this, for example: * In the
/// entry_fulfillment of a Page if entering the page indicates that the
/// conversation succeeded. * In a webhook response when you determine that you
/// handled the customer issue.
class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess {
  /// Custom metadata.
  ///
  /// Dialogflow doesn't impose any structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess({
    this.metadata,
  });

  GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess.fromJson(
      core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Indicates that interaction with the Dialogflow agent has ended.
///
/// This message is generated by Dialogflow only and not supposed to be defined
/// by the user.
typedef GoogleCloudDialogflowCxV3ResponseMessageEndInteraction = $Empty;

/// Represents info card response.
///
/// If the response contains generative knowledge prediction, Dialogflow will
/// return a payload with Infobot Messenger compatible info card. Otherwise, the
/// info card response is skipped.
typedef GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard = $Empty;

/// Indicates that the conversation should be handed off to a live agent.
///
/// Dialogflow only uses this to determine which conversations were handed off
/// to a human agent for measurement purposes. What else to do with this signal
/// is up to you and your handoff procedures. You may set this, for example: *
/// In the entry_fulfillment of a Page if entering the page indicates something
/// went extremely wrong in the conversation. * In a webhook response when you
/// determine that the customer issue can only be handled by a human.
class GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff {
  /// Custom metadata for your handoff procedure.
  ///
  /// Dialogflow doesn't impose any structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff({
    this.metadata,
  });

  GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff.fromJson(
      core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Represents an audio message that is composed of both segments synthesized
/// from the Dialogflow agent prompts and ones hosted externally at the
/// specified URIs.
///
/// The external URIs are specified via play_audio. This message is generated by
/// Dialogflow only and not supposed to be defined by the user.
class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio {
  /// Segments this audio response is composed of.
  core.List<GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>?
      segments;

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio({
    this.segments,
  });

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(core.Map json_)
      : this(
          segments: json_.containsKey('segments')
              ? (json_['segments'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (segments != null) 'segments': segments!,
      };
}

/// Represents one segment of audio.
class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment {
  /// Whether the playback of this segment can be interrupted by the end user's
  /// speech and the client should then start the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the
  /// output config specified in the request.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Client-specific URI that points to an audio clip accessible to the client.
  ///
  /// Dialogflow does not impose any validation on it.
  core.String? uri;

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment.fromJson(
      core.Map json_)
      : this(
          allowPlaybackInterruption:
              json_.containsKey('allowPlaybackInterruption')
                  ? json_['allowPlaybackInterruption'] as core.bool
                  : null,
          audio:
              json_.containsKey('audio') ? json_['audio'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (audio != null) 'audio': audio!,
        if (uri != null) 'uri': uri!,
      };
}

/// A text or ssml response that is preferentially used for TTS output audio
/// synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// The SSML text to be synthesized.
  ///
  /// For more information, see \[SSML\](/speech/text-to-speech/docs/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromJson(
      core.Map json_)
      : this(
          allowPlaybackInterruption:
              json_.containsKey('allowPlaybackInterruption')
                  ? json_['allowPlaybackInterruption'] as core.bool
                  : null,
          ssml: json_.containsKey('ssml') ? json_['ssml'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (ssml != null) 'ssml': ssml!,
        if (text != null) 'text': text!,
      };
}

/// Specifies an audio clip to be played by the client as part of the response.
class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// URI of the audio clip.
  ///
  /// Dialogflow does not impose any validation on this value. It is specific to
  /// the client that reads it.
  ///
  /// Required.
  core.String? audioUri;

  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio({
    this.allowPlaybackInterruption,
    this.audioUri,
  });

  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(core.Map json_)
      : this(
          allowPlaybackInterruption:
              json_.containsKey('allowPlaybackInterruption')
                  ? json_['allowPlaybackInterruption'] as core.bool
                  : null,
          audioUri: json_.containsKey('audioUri')
              ? json_['audioUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (audioUri != null) 'audioUri': audioUri!,
      };
}

/// Represents the signal that telles the client to transfer the phone call
/// connected to the agent to a third-party endpoint.
class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in
  /// [E.164 format](https://en.wikipedia.org/wiki/E.164).
  core.String? phoneNumber;

  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall({
    this.phoneNumber,
  });

  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall.fromJson(
      core.Map json_)
      : this(
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// The text response message.
class GoogleCloudDialogflowCxV3ResponseMessageText {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// A collection of text responses.
  ///
  /// Required.
  core.List<core.String>? text;

  GoogleCloudDialogflowCxV3ResponseMessageText({
    this.allowPlaybackInterruption,
    this.text,
  });

  GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(core.Map json_)
      : this(
          allowPlaybackInterruption:
              json_.containsKey('allowPlaybackInterruption')
                  ? json_['allowPlaybackInterruption'] as core.bool
                  : null,
          text: json_.containsKey('text')
              ? (json_['text'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (text != null) 'text': text!,
      };
}

/// The request message for Agents.RestoreAgent.
class GoogleCloudDialogflowCxV3RestoreAgentRequest {
  /// Uncompressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> bytes_) {
    agentContent =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// restore agent from.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a read
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have read permissions for the object. For more
  /// information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? agentUri;

  /// Setting for restoring from a git branch
  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource? gitSource;

  /// Agent restore mode.
  ///
  /// If not specified, `KEEP` is assumed.
  /// Possible string values are:
  /// - "RESTORE_OPTION_UNSPECIFIED" : Unspecified. Treated as KEEP.
  /// - "KEEP" : Always respect the settings from the exported agent file. It
  /// may cause a restoration failure if some settings (e.g. model type) are not
  /// supported in the target agent.
  /// - "FALLBACK" : Fallback to default settings if some settings are not
  /// supported in the target agent.
  core.String? restoreOption;

  GoogleCloudDialogflowCxV3RestoreAgentRequest({
    this.agentContent,
    this.agentUri,
    this.gitSource,
    this.restoreOption,
  });

  GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(core.Map json_)
      : this(
          agentContent: json_.containsKey('agentContent')
              ? json_['agentContent'] as core.String
              : null,
          agentUri: json_.containsKey('agentUri')
              ? json_['agentUri'] as core.String
              : null,
          gitSource: json_.containsKey('gitSource')
              ? GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource.fromJson(
                  json_['gitSource'] as core.Map<core.String, core.dynamic>)
              : null,
          restoreOption: json_.containsKey('restoreOption')
              ? json_['restoreOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentContent != null) 'agentContent': agentContent!,
        if (agentUri != null) 'agentUri': agentUri!,
        if (gitSource != null) 'gitSource': gitSource!,
        if (restoreOption != null) 'restoreOption': restoreOption!,
      };
}

/// Settings for restoring from a git branch
class GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource {
  /// tracking branch for the git pull
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource({
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource.fromJson(core.Map json_)
      : this(
          trackingBranch: json_.containsKey('trackingBranch')
              ? json_['trackingBranch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trackingBranch != null) 'trackingBranch': trackingBranch!,
      };
}

/// The configuration for auto rollout.
class GoogleCloudDialogflowCxV3RolloutConfig {
  /// The conditions that are used to evaluate the failure of a rollout step.
  ///
  /// If not specified, no rollout steps will fail. E.g. "containment_rate \<
  /// 10% OR average_turn_count \< 3". See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? failureCondition;

  /// The conditions that are used to evaluate the success of a rollout step.
  ///
  /// If not specified, all rollout steps will proceed to the next one unless
  /// failure conditions are met. E.g. "containment_rate \> 60% AND
  /// callback_rate \< 20%". See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? rolloutCondition;

  /// Steps to roll out a flow version.
  ///
  /// Steps should be sorted by percentage in ascending order.
  core.List<GoogleCloudDialogflowCxV3RolloutConfigRolloutStep>? rolloutSteps;

  GoogleCloudDialogflowCxV3RolloutConfig({
    this.failureCondition,
    this.rolloutCondition,
    this.rolloutSteps,
  });

  GoogleCloudDialogflowCxV3RolloutConfig.fromJson(core.Map json_)
      : this(
          failureCondition: json_.containsKey('failureCondition')
              ? json_['failureCondition'] as core.String
              : null,
          rolloutCondition: json_.containsKey('rolloutCondition')
              ? json_['rolloutCondition'] as core.String
              : null,
          rolloutSteps: json_.containsKey('rolloutSteps')
              ? (json_['rolloutSteps'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3RolloutConfigRolloutStep
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureCondition != null) 'failureCondition': failureCondition!,
        if (rolloutCondition != null) 'rolloutCondition': rolloutCondition!,
        if (rolloutSteps != null) 'rolloutSteps': rolloutSteps!,
      };
}

/// A single rollout step with specified traffic allocation.
class GoogleCloudDialogflowCxV3RolloutConfigRolloutStep {
  /// The name of the rollout step;
  core.String? displayName;

  /// The minimum time that this step should last.
  ///
  /// Should be longer than 1 hour. If not set, the default minimum duration for
  /// each step will be 1 hour.
  core.String? minDuration;

  /// The percentage of traffic allocated to the flow version of this rollout
  /// step.
  ///
  /// (0%, 100%\].
  core.int? trafficPercent;

  GoogleCloudDialogflowCxV3RolloutConfigRolloutStep({
    this.displayName,
    this.minDuration,
    this.trafficPercent,
  });

  GoogleCloudDialogflowCxV3RolloutConfigRolloutStep.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          minDuration: json_.containsKey('minDuration')
              ? json_['minDuration'] as core.String
              : null,
          trafficPercent: json_.containsKey('trafficPercent')
              ? json_['trafficPercent'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (minDuration != null) 'minDuration': minDuration!,
        if (trafficPercent != null) 'trafficPercent': trafficPercent!,
      };
}

/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3RolloutState {
  /// Start time of the current step.
  core.String? startTime;

  /// Display name of the current auto rollout step.
  core.String? step;

  /// Index of the current step in the auto rollout steps list.
  core.int? stepIndex;

  GoogleCloudDialogflowCxV3RolloutState({
    this.startTime,
    this.step,
    this.stepIndex,
  });

  GoogleCloudDialogflowCxV3RolloutState.fromJson(core.Map json_)
      : this(
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          step: json_.containsKey('step') ? json_['step'] as core.String : null,
          stepIndex: json_.containsKey('stepIndex')
              ? json_['stepIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
        if (step != null) 'step': step!,
        if (stepIndex != null) 'stepIndex': stepIndex!,
      };
}

/// The request message for Environments.RunContinuousTest.
typedef GoogleCloudDialogflowCxV3RunContinuousTestRequest = $Empty;

/// The request message for TestCases.RunTestCase.
class GoogleCloudDialogflowCxV3RunTestCaseRequest {
  /// Environment name.
  ///
  /// If not set, draft environment is assumed. Format:
  /// `projects//locations//agents//environments/`.
  ///
  /// Optional.
  core.String? environment;

  GoogleCloudDialogflowCxV3RunTestCaseRequest({
    this.environment,
  });

  GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
      };
}

/// Settings for Generative Safety.
class GoogleCloudDialogflowCxV3SafetySettings {
  /// Banned phrases for generated text.
  core.List<GoogleCloudDialogflowCxV3SafetySettingsPhrase>? bannedPhrases;

  GoogleCloudDialogflowCxV3SafetySettings({
    this.bannedPhrases,
  });

  GoogleCloudDialogflowCxV3SafetySettings.fromJson(core.Map json_)
      : this(
          bannedPhrases: json_.containsKey('bannedPhrases')
              ? (json_['bannedPhrases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3SafetySettingsPhrase.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bannedPhrases != null) 'bannedPhrases': bannedPhrases!,
      };
}

/// Text input which can be used for prompt or banned phrases.
class GoogleCloudDialogflowCxV3SafetySettingsPhrase {
  /// Language code of the phrase.
  ///
  /// Required.
  core.String? languageCode;

  /// Text input which can be used for prompt or banned phrases.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3SafetySettingsPhrase({
    this.languageCode,
    this.text,
  });

  GoogleCloudDialogflowCxV3SafetySettingsPhrase.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
}

/// Search configuration for UCS search queries.
class GoogleCloudDialogflowCxV3SearchConfig {
  /// Boosting configuration for the datastores.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3BoostSpecs>? boostSpecs;

  /// Filter configuration for the datastores.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3FilterSpecs>? filterSpecs;

  GoogleCloudDialogflowCxV3SearchConfig({
    this.boostSpecs,
    this.filterSpecs,
  });

  GoogleCloudDialogflowCxV3SearchConfig.fromJson(core.Map json_)
      : this(
          boostSpecs: json_.containsKey('boostSpecs')
              ? (json_['boostSpecs'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3BoostSpecs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => GoogleCloudDialogflowCxV3FilterSpecs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boostSpecs != null) 'boostSpecs': boostSpecs!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
      };
}

/// Represents the settings related to security issues, such as data redaction
/// and data retention.
///
/// It may take hours for updates on the settings to propagate to all the
/// related components and take effect.
class GoogleCloudDialogflowCxV3SecuritySettings {
  /// Controls audio export settings for post-conversation analytics when
  /// ingesting audio to conversations via Participants.AnalyzeContent or
  /// Participants.StreamingAnalyzeContent.
  ///
  /// If retention_strategy is set to REMOVE_AFTER_CONVERSATION or
  /// audio_export_settings.gcs_bucket is empty, audio export is disabled. If
  /// audio export is enabled, audio is recorded and saved to
  /// audio_export_settings.gcs_bucket, subject to retention policy of
  /// audio_export_settings.gcs_bucket. This setting won't effect audio input
  /// for implicit sessions via Sessions.DetectIntent or
  /// Sessions.StreamingDetectIntent.
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings?
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name.
  ///
  /// Use this template to define de-identification configuration for the
  /// content. The `DLP De-identify Templates Reader` role is needed on the
  /// Dialogflow service identity service account (has the form
  /// `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for
  /// your agent's project. If empty, Dialogflow replaces sensitive info with
  /// `[redacted]` text. The template name will have one of the following
  /// formats: `projects//locations//deidentifyTemplates/` OR
  /// `organizations//locations//deidentifyTemplates/` Note:
  /// `deidentify_template` must be located in the same region as the
  /// `SecuritySettings`.
  core.String? deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the
  /// location.
  ///
  /// Required.
  core.String? displayName;

  /// Controls conversation exporting settings to Insights after conversation is
  /// completed.
  ///
  /// If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export
  /// is disabled no matter what you configure here.
  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings?
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name.
  ///
  /// Use this template to define inspect base settings. The `DLP Inspect
  /// Templates Reader` role is needed on the Dialogflow service identity
  /// service account (has the form
  /// `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for
  /// your agent's project. If empty, we use the default DLP inspect config. The
  /// template name will have one of the following formats:
  /// `projects//locations//inspectTemplates/` OR
  /// `organizations//locations//inspectTemplates/` Note: `inspect_template`
  /// must be located in the same region as the `SecuritySettings`.
  core.String? inspectTemplate;

  /// Resource name of the settings.
  ///
  /// Required for the SecuritySettingsService.UpdateSecuritySettings method.
  /// SecuritySettingsService.CreateSecuritySettings populates the name
  /// automatically. Format: `projects//locations//securitySettings/`.
  core.String? name;

  /// List of types of data to remove when retention settings triggers purge.
  core.List<core.String>? purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction.
  ///
  /// Dialogflow does not redact data that it does not have access to – for
  /// example, Cloud logging.
  /// Possible string values are:
  /// - "REDACTION_SCOPE_UNSPECIFIED" : Don't redact any kind of data.
  /// - "REDACT_DISK_STORAGE" : On data to be written to disk or similar devices
  /// that are capable of holding data even if power is disconnected. This
  /// includes data that are temporarily saved on disk.
  core.String? redactionScope;

  /// Strategy that defines how we do redaction.
  /// Possible string values are:
  /// - "REDACTION_STRATEGY_UNSPECIFIED" : Do not redact.
  /// - "REDACT_WITH_SERVICE" : Call redaction service to clean up the data to
  /// be persisted.
  core.String? redactionStrategy;

  /// Specifies the retention behavior defined by
  /// SecuritySettings.RetentionStrategy.
  /// Possible string values are:
  /// - "RETENTION_STRATEGY_UNSPECIFIED" : Retains the persisted data with
  /// Dialogflow's internal default 365d TTLs.
  /// - "REMOVE_AFTER_CONVERSATION" : Removes data when the conversation ends.
  /// If there is no Conversation explicitly established, a default conversation
  /// ends when the corresponding Dialogflow session ends.
  core.String? retentionStrategy;

  /// Retains the data for the specified number of days.
  ///
  /// User must set a value lower than Dialogflow's default 365d TTL (30 days
  /// for Agent Assist traffic), higher value will be ignored and use default.
  /// Setting a value higher than that has no effect. A missing value or setting
  /// to 0 also means we use default TTL. When data retention configuration is
  /// changed, it only applies to the data created after the change; the TTL of
  /// existing data created before the change stays intact.
  core.int? retentionWindowDays;

  GoogleCloudDialogflowCxV3SecuritySettings({
    this.audioExportSettings,
    this.deidentifyTemplate,
    this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    this.name,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  GoogleCloudDialogflowCxV3SecuritySettings.fromJson(core.Map json_)
      : this(
          audioExportSettings: json_.containsKey('audioExportSettings')
              ? GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
                  .fromJson(json_['audioExportSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deidentifyTemplate: json_.containsKey('deidentifyTemplate')
              ? json_['deidentifyTemplate'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          insightsExportSettings: json_.containsKey('insightsExportSettings')
              ? GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
                  .fromJson(json_['insightsExportSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplate: json_.containsKey('inspectTemplate')
              ? json_['inspectTemplate'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          purgeDataTypes: json_.containsKey('purgeDataTypes')
              ? (json_['purgeDataTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          redactionScope: json_.containsKey('redactionScope')
              ? json_['redactionScope'] as core.String
              : null,
          redactionStrategy: json_.containsKey('redactionStrategy')
              ? json_['redactionStrategy'] as core.String
              : null,
          retentionStrategy: json_.containsKey('retentionStrategy')
              ? json_['retentionStrategy'] as core.String
              : null,
          retentionWindowDays: json_.containsKey('retentionWindowDays')
              ? json_['retentionWindowDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioExportSettings != null)
          'audioExportSettings': audioExportSettings!,
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (displayName != null) 'displayName': displayName!,
        if (insightsExportSettings != null)
          'insightsExportSettings': insightsExportSettings!,
        if (inspectTemplate != null) 'inspectTemplate': inspectTemplate!,
        if (name != null) 'name': name!,
        if (purgeDataTypes != null) 'purgeDataTypes': purgeDataTypes!,
        if (redactionScope != null) 'redactionScope': redactionScope!,
        if (redactionStrategy != null) 'redactionStrategy': redactionStrategy!,
        if (retentionStrategy != null) 'retentionStrategy': retentionStrategy!,
        if (retentionWindowDays != null)
          'retentionWindowDays': retentionWindowDays!,
      };
}

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings {
  /// Filename pattern for exported audio.
  core.String? audioExportPattern;

  /// File format for exported audio file.
  ///
  /// Currently only in telephony recordings.
  /// Possible string values are:
  /// - "AUDIO_FORMAT_UNSPECIFIED" : Unspecified. Do not use.
  /// - "MULAW" : G.711 mu-law PCM with 8kHz sample rate.
  /// - "MP3" : MP3 file format.
  /// - "OGG" : OGG Vorbis.
  core.String? audioFormat;

  /// Enable audio redaction if it is true.
  ///
  /// Note that this only redacts end-user audio data; Synthesised audio from
  /// the virtual agent is not redacted.
  core.bool? enableAudioRedaction;

  /// Cloud Storage bucket to export audio record to.
  ///
  /// Setting this field would grant the Storage Object Creator role to the
  /// Dialogflow Service Agent. API caller that tries to modify this field
  /// should have the permission of storage.buckets.setIamPolicy.
  core.String? gcsBucket;

  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromJson(
      core.Map json_)
      : this(
          audioExportPattern: json_.containsKey('audioExportPattern')
              ? json_['audioExportPattern'] as core.String
              : null,
          audioFormat: json_.containsKey('audioFormat')
              ? json_['audioFormat'] as core.String
              : null,
          enableAudioRedaction: json_.containsKey('enableAudioRedaction')
              ? json_['enableAudioRedaction'] as core.bool
              : null,
          gcsBucket: json_.containsKey('gcsBucket')
              ? json_['gcsBucket'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioExportPattern != null)
          'audioExportPattern': audioExportPattern!,
        if (audioFormat != null) 'audioFormat': audioFormat!,
        if (enableAudioRedaction != null)
          'enableAudioRedaction': enableAudioRedaction!,
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
      };
}

/// Settings for exporting conversations to
/// [Insights](https://cloud.google.com/contact-center/insights/docs).
class GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings {
  /// If enabled, we will automatically exports conversations to Insights and
  /// Insights runs its analyzers.
  core.bool? enableInsightsExport;

  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings({
    this.enableInsightsExport,
  });

  GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings.fromJson(
      core.Map json_)
      : this(
          enableInsightsExport: json_.containsKey('enableInsightsExport')
              ? json_['enableInsightsExport'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableInsightsExport != null)
          'enableInsightsExport': enableInsightsExport!,
      };
}

/// The result of sentiment analysis.
///
/// Sentiment analysis inspects user input and identifies the prevailing
/// subjective opinion, especially to determine a user's attitude as positive,
/// negative, or neutral.
typedef GoogleCloudDialogflowCxV3SentimentAnalysisResult = $Shared08;

/// Session entity types are referred to as **User** entity types and are
/// entities that are built for an individual user such as favorites,
/// preferences, playlists, and so on.
///
/// You can redefine a session entity type at the session level to extend or
/// replace a custom entity type at the user session level (we refer to the
/// entity types defined at the agent level as "custom entity types"). Note:
/// session entity types apply to all queries, regardless of the language. For
/// more information about entity types, see the
/// [Dialogflow documentation](https://cloud.google.com/dialogflow/docs/entities-overview).
class GoogleCloudDialogflowCxV3SessionEntityType {
  /// The collection of entities to override or supplement the custom entity
  /// type.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3EntityTypeEntity>? entities;

  /// Indicates whether the additional data should override or supplement the
  /// custom entity type definition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_OVERRIDE_MODE_UNSPECIFIED" : Not specified. This value should be
  /// never used.
  /// - "ENTITY_OVERRIDE_MODE_OVERRIDE" : The collection of session entities
  /// overrides the collection of entities in the corresponding custom entity
  /// type.
  /// - "ENTITY_OVERRIDE_MODE_SUPPLEMENT" : The collection of session entities
  /// extends the collection of entities in the corresponding custom entity
  /// type. Note: Even in this override mode calls to `ListSessionEntityTypes`,
  /// `GetSessionEntityType`, `CreateSessionEntityType` and
  /// `UpdateSessionEntityType` only return the additional entities added in
  /// this session entity type. If you want to get the supplemented list, please
  /// call EntityTypes.GetEntityType on the custom entity type and merge.
  core.String? entityOverrideMode;

  /// The unique identifier of the session entity type.
  ///
  /// Format: `projects//locations//agents//sessions//entityTypes/` or
  /// `projects//locations//agents//environments//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowCxV3SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowCxV3SessionEntityType.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityOverrideMode: json_.containsKey('entityOverrideMode')
              ? json_['entityOverrideMode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (entityOverrideMode != null)
          'entityOverrideMode': entityOverrideMode!,
        if (name != null) 'name': name!,
      };
}

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3SpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  core.bool? enableSpeechAdaptation;

  GoogleCloudDialogflowCxV3SpeechToTextSettings({
    this.enableSpeechAdaptation,
  });

  GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(core.Map json_)
      : this(
          enableSpeechAdaptation: json_.containsKey('enableSpeechAdaptation')
              ? json_['enableSpeechAdaptation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableSpeechAdaptation != null)
          'enableSpeechAdaptation': enableSpeechAdaptation!,
      };
}

/// The request message for Experiments.StartExperiment.
typedef GoogleCloudDialogflowCxV3StartExperimentRequest = $Empty;

/// The request message for Experiments.StopExperiment.
typedef GoogleCloudDialogflowCxV3StopExperimentRequest = $Empty;

/// The request to set the feedback for a bot answer.
class GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest {
  /// Feedback provided for a bot answer.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3AnswerFeedback? answerFeedback;

  /// ID of the response to update its feedback.
  ///
  /// This is the same as DetectIntentResponse.response_id.
  ///
  /// Required.
  core.String? responseId;

  /// The mask to control which fields to update.
  ///
  /// If the mask is not present, all fields will be updated.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest({
    this.answerFeedback,
    this.responseId,
    this.updateMask,
  });

  GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest.fromJson(core.Map json_)
      : this(
          answerFeedback: json_.containsKey('answerFeedback')
              ? GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(
                  json_['answerFeedback']
                      as core.Map<core.String, core.dynamic>)
              : null,
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerFeedback != null) 'answerFeedback': answerFeedback!,
        if (responseId != null) 'responseId': responseId!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowCxV3SynthesizeSpeechConfig {
  /// An identifier which selects 'audio effects' profiles that are applied on
  /// (post synthesized) text to speech.
  ///
  /// Effects are applied on top of each other in the order they are given.
  ///
  /// Optional.
  core.List<core.String>? effectsProfileId;

  /// Speaking pitch, in the range \[-20.0, 20.0\].
  ///
  /// 20 means increase 20 semitones from the original pitch. -20 means decrease
  /// 20 semitones from the original pitch.
  ///
  /// Optional.
  core.double? pitch;

  /// Speaking rate/speed, in the range \[0.25, 4.0\].
  ///
  /// 1.0 is the normal native speed supported by the specific voice. 2.0 is
  /// twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the
  /// native 1.0 speed. Any other values \< 0.25 or \> 4.0 will return an error.
  ///
  /// Optional.
  core.double? speakingRate;

  /// The desired voice of the synthesized audio.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3VoiceSelectionParams? voice;

  /// Volume gain (in dB) of the normal native volume supported by the specific
  /// voice, in the range \[-96.0, 16.0\].
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

  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(core.Map json_)
      : this(
          effectsProfileId: json_.containsKey('effectsProfileId')
              ? (json_['effectsProfileId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pitch: json_.containsKey('pitch')
              ? (json_['pitch'] as core.num).toDouble()
              : null,
          speakingRate: json_.containsKey('speakingRate')
              ? (json_['speakingRate'] as core.num).toDouble()
              : null,
          voice: json_.containsKey('voice')
              ? GoogleCloudDialogflowCxV3VoiceSelectionParams.fromJson(
                  json_['voice'] as core.Map<core.String, core.dynamic>)
              : null,
          volumeGainDb: json_.containsKey('volumeGainDb')
              ? (json_['volumeGainDb'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectsProfileId != null) 'effectsProfileId': effectsProfileId!,
        if (pitch != null) 'pitch': pitch!,
        if (speakingRate != null) 'speakingRate': speakingRate!,
        if (voice != null) 'voice': voice!,
        if (volumeGainDb != null) 'volumeGainDb': volumeGainDb!,
      };
}

/// Represents a test case.
class GoogleCloudDialogflowCxV3TestCase {
  /// When the test was created.
  ///
  /// Output only.
  core.String? creationTime;

  /// The human-readable name of the test case, unique within the agent.
  ///
  /// Limit of 200 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The latest test result.
  GoogleCloudDialogflowCxV3TestCaseResult? lastTestResult;

  /// The unique identifier of the test case.
  ///
  /// TestCases.CreateTestCase will populate the name automatically. Otherwise
  /// use format: `projects//locations//agents/ /testCases/`.
  core.String? name;

  /// Additional freeform notes about the test case.
  ///
  /// Limit of 400 characters.
  core.String? notes;

  /// Tags are short descriptions that users may apply to test cases for
  /// organizational and filtering purposes.
  ///
  /// Each tag should start with "#" and has a limit of 30 characters.
  core.List<core.String>? tags;

  /// The conversation turns uttered when the test case was created, in
  /// chronological order.
  ///
  /// These include the canonical set of agent utterances that should occur when
  /// the agent is working properly.
  core.List<GoogleCloudDialogflowCxV3ConversationTurn>?
      testCaseConversationTurns;

  /// Config for the test case.
  GoogleCloudDialogflowCxV3TestConfig? testConfig;

  GoogleCloudDialogflowCxV3TestCase({
    this.creationTime,
    this.displayName,
    this.lastTestResult,
    this.name,
    this.notes,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  GoogleCloudDialogflowCxV3TestCase.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          lastTestResult: json_.containsKey('lastTestResult')
              ? GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
                  json_['lastTestResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          testCaseConversationTurns:
              json_.containsKey('testCaseConversationTurns')
                  ? (json_['testCaseConversationTurns'] as core.List)
                      .map((value) =>
                          GoogleCloudDialogflowCxV3ConversationTurn.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          testConfig: json_.containsKey('testConfig')
              ? GoogleCloudDialogflowCxV3TestConfig.fromJson(
                  json_['testConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (displayName != null) 'displayName': displayName!,
        if (lastTestResult != null) 'lastTestResult': lastTestResult!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (tags != null) 'tags': tags!,
        if (testCaseConversationTurns != null)
          'testCaseConversationTurns': testCaseConversationTurns!,
        if (testConfig != null) 'testConfig': testConfig!,
      };
}

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3TestCaseResult {
  /// The conversation turns uttered during the test case replay in
  /// chronological order.
  core.List<GoogleCloudDialogflowCxV3ConversationTurn>? conversationTurns;

  /// Environment where the test was run.
  ///
  /// If not set, it indicates the draft environment.
  core.String? environment;

  /// The resource name for the test case result.
  ///
  /// Format: `projects//locations//agents//testCases/ /results/`.
  core.String? name;

  /// Whether the test case passed in the agent environment.
  /// Possible string values are:
  /// - "TEST_RESULT_UNSPECIFIED" : Not specified. Should never be used.
  /// - "PASSED" : The test passed.
  /// - "FAILED" : The test did not pass.
  core.String? testResult;

  /// The time that the test was run.
  core.String? testTime;

  GoogleCloudDialogflowCxV3TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  GoogleCloudDialogflowCxV3TestCaseResult.fromJson(core.Map json_)
      : this(
          conversationTurns: json_.containsKey('conversationTurns')
              ? (json_['conversationTurns'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ConversationTurn.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          testResult: json_.containsKey('testResult')
              ? json_['testResult'] as core.String
              : null,
          testTime: json_.containsKey('testTime')
              ? json_['testTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationTurns != null) 'conversationTurns': conversationTurns!,
        if (environment != null) 'environment': environment!,
        if (name != null) 'name': name!,
        if (testResult != null) 'testResult': testResult!,
        if (testTime != null) 'testTime': testTime!,
      };
}

/// Represents configurations for a test case.
class GoogleCloudDialogflowCxV3TestConfig {
  /// Flow name to start the test case with.
  ///
  /// Format: `projects//locations//agents//flows/`. Only one of `flow` and
  /// `page` should be set to indicate the starting point of the test case. If
  /// both are set, `page` takes precedence over `flow`. If neither is set, the
  /// test case will start with start page on the default start flow.
  core.String? flow;

  /// The page to start the test case with.
  ///
  /// Format: `projects//locations//agents//flows//pages/`. Only one of `flow`
  /// and `page` should be set to indicate the starting point of the test case.
  /// If both are set, `page` takes precedence over `flow`. If neither is set,
  /// the test case will start with start page on the default start flow.
  core.String? page;

  /// Session parameters to be compared when calculating differences.
  core.List<core.String>? trackingParameters;

  GoogleCloudDialogflowCxV3TestConfig({
    this.flow,
    this.page,
    this.trackingParameters,
  });

  GoogleCloudDialogflowCxV3TestConfig.fromJson(core.Map json_)
      : this(
          flow: json_.containsKey('flow') ? json_['flow'] as core.String : null,
          page: json_.containsKey('page') ? json_['page'] as core.String : null,
          trackingParameters: json_.containsKey('trackingParameters')
              ? (json_['trackingParameters'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flow != null) 'flow': flow!,
        if (page != null) 'page': page!,
        if (trackingParameters != null)
          'trackingParameters': trackingParameters!,
      };
}

/// The description of differences between original and replayed agent output.
class GoogleCloudDialogflowCxV3TestRunDifference {
  /// A human readable description of the diff, showing the actual output vs
  /// expected output.
  core.String? description;

  /// The type of diff.
  /// Possible string values are:
  /// - "DIFF_TYPE_UNSPECIFIED" : Should never be used.
  /// - "INTENT" : The intent.
  /// - "PAGE" : The page.
  /// - "PARAMETERS" : The parameters.
  /// - "UTTERANCE" : The message utterance.
  /// - "FLOW" : The flow.
  core.String? type;

  GoogleCloudDialogflowCxV3TestRunDifference({
    this.description,
    this.type,
  });

  GoogleCloudDialogflowCxV3TestRunDifference.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (type != null) 'type': type!,
      };
}

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowCxV3TextInput {
  /// The UTF-8 encoded natural language text to be processed.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3TextInput({
    this.text,
  });

  GoogleCloudDialogflowCxV3TextInput.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Settings related to speech synthesizing.
class GoogleCloudDialogflowCxV3TextToSpeechSettings {
  /// Configuration of how speech should be synthesized, mapping from language
  /// (https://cloud.google.com/dialogflow/cx/docs/reference/language) to
  /// SynthesizeSpeechConfig.
  ///
  /// These settings affect: - The
  /// [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway)
  /// synthesize configuration set via Agent.text_to_speech_settings. - How
  /// speech is synthesized when invoking session APIs.
  /// Agent.text_to_speech_settings only applies if
  /// OutputAudioConfig.synthesize_speech_config is not specified.
  core.Map<core.String, GoogleCloudDialogflowCxV3SynthesizeSpeechConfig>?
      synthesizeSpeechConfigs;

  GoogleCloudDialogflowCxV3TextToSpeechSettings({
    this.synthesizeSpeechConfigs,
  });

  GoogleCloudDialogflowCxV3TextToSpeechSettings.fromJson(core.Map json_)
      : this(
          synthesizeSpeechConfigs: json_.containsKey('synthesizeSpeechConfigs')
              ? (json_['synthesizeSpeechConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (synthesizeSpeechConfigs != null)
          'synthesizeSpeechConfigs': synthesizeSpeechConfigs!,
      };
}

/// The request message for Flows.TrainFlow.
typedef GoogleCloudDialogflowCxV3TrainFlowRequest = $Empty;

/// Transition coverage represents the percentage of all possible page
/// transitions (page-level transition routes and event handlers, excluding
/// transition route groups) present within any of a parent's test cases.
class GoogleCloudDialogflowCxV3TransitionCoverage {
  /// The percent of transitions in the agent that are covered.
  core.double? coverageScore;

  /// The list of Transitions present in the agent.
  core.List<GoogleCloudDialogflowCxV3TransitionCoverageTransition>? transitions;

  GoogleCloudDialogflowCxV3TransitionCoverage({
    this.coverageScore,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(core.Map json_)
      : this(
          coverageScore: json_.containsKey('coverageScore')
              ? (json_['coverageScore'] as core.num).toDouble()
              : null,
          transitions: json_.containsKey('transitions')
              ? (json_['transitions'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionCoverageTransition
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverageScore != null) 'coverageScore': coverageScore!,
        if (transitions != null) 'transitions': transitions!,
      };
}

/// A transition in a page.
class GoogleCloudDialogflowCxV3TransitionCoverageTransition {
  /// Whether the transition is covered by at least one of the agent's test
  /// cases.
  core.bool? covered;

  /// Event handler.
  GoogleCloudDialogflowCxV3EventHandler? eventHandler;

  /// The index of a transition in the transition list.
  ///
  /// Starting from 0.
  core.int? index;

  /// The start node of a transition.
  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode? source;

  /// The end node of a transition.
  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode? target;

  /// Intent route or condition route.
  GoogleCloudDialogflowCxV3TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3TransitionCoverageTransition({
    this.covered,
    this.eventHandler,
    this.index,
    this.source,
    this.target,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3TransitionCoverageTransition.fromJson(core.Map json_)
      : this(
          covered: json_.containsKey('covered')
              ? json_['covered'] as core.bool
              : null,
          eventHandler: json_.containsKey('eventHandler')
              ? GoogleCloudDialogflowCxV3EventHandler.fromJson(
                  json_['eventHandler'] as core.Map<core.String, core.dynamic>)
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          source: json_.containsKey('source')
              ? GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
                  .fromJson(
                      json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
                  .fromJson(
                      json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
          transitionRoute: json_.containsKey('transitionRoute')
              ? GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                  json_['transitionRoute']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (covered != null) 'covered': covered!,
        if (eventHandler != null) 'eventHandler': eventHandler!,
        if (index != null) 'index': index!,
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
        if (transitionRoute != null) 'transitionRoute': transitionRoute!,
      };
}

/// The source or target of a transition.
class GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode {
  /// Indicates a transition to a Flow.
  ///
  /// Only some fields such as name and displayname will be set.
  GoogleCloudDialogflowCxV3Flow? flow;

  /// Indicates a transition to a Page.
  ///
  /// Only some fields such as name and displayname will be set.
  GoogleCloudDialogflowCxV3Page? page;

  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode({
    this.flow,
    this.page,
  });

  GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.fromJson(
      core.Map json_)
      : this(
          flow: json_.containsKey('flow')
              ? GoogleCloudDialogflowCxV3Flow.fromJson(
                  json_['flow'] as core.Map<core.String, core.dynamic>)
              : null,
          page: json_.containsKey('page')
              ? GoogleCloudDialogflowCxV3Page.fromJson(
                  json_['page'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flow != null) 'flow': flow!,
        if (page != null) 'page': page!,
      };
}

/// A transition route specifies a intent that can be matched and/or a data
/// condition that can be evaluated during a session.
///
/// When a specified transition is matched, the following actions are taken in
/// order: * If there is a `trigger_fulfillment` associated with the transition,
/// it will be called. * If there is a `target_page` associated with the
/// transition, the session will transition into the specified page. * If there
/// is a `target_flow` associated with the transition, the session will
/// transition into the specified flow.
class GoogleCloudDialogflowCxV3TransitionRoute {
  /// The condition to evaluate against form parameters or session parameters.
  ///
  /// See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// At least one of `intent` or `condition` must be specified. When both
  /// `intent` and `condition` are specified, the transition can only happen
  /// when both are fulfilled.
  core.String? condition;

  /// The description of the transition route.
  ///
  /// The maximum length is 500 characters.
  ///
  /// Optional.
  core.String? description;

  /// The unique identifier of an Intent.
  ///
  /// Format: `projects//locations//agents//intents/`. Indicates that the
  /// transition can only happen when the given intent is matched. At least one
  /// of `intent` or `condition` must be specified. When both `intent` and
  /// `condition` are specified, the transition can only happen when both are
  /// fulfilled.
  core.String? intent;

  /// The unique identifier of this transition route.
  ///
  /// Output only.
  core.String? name;

  /// The target flow to transition to.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? targetFlow;

  /// The target page to transition to.
  ///
  /// Format: `projects//locations//agents//flows//pages/`.
  core.String? targetPage;

  /// The fulfillment to call when the condition is satisfied.
  ///
  /// At least one of `trigger_fulfillment` and `target` must be specified. When
  /// both are defined, `trigger_fulfillment` is executed first.
  GoogleCloudDialogflowCxV3Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3TransitionRoute({
    this.condition,
    this.description,
    this.intent,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3TransitionRoute.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          intent: json_.containsKey('intent')
              ? json_['intent'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          targetFlow: json_.containsKey('targetFlow')
              ? json_['targetFlow'] as core.String
              : null,
          targetPage: json_.containsKey('targetPage')
              ? json_['targetPage'] as core.String
              : null,
          triggerFulfillment: json_.containsKey('triggerFulfillment')
              ? GoogleCloudDialogflowCxV3Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (description != null) 'description': description!,
        if (intent != null) 'intent': intent!,
        if (name != null) 'name': name!,
        if (targetFlow != null) 'targetFlow': targetFlow!,
        if (targetPage != null) 'targetPage': targetPage!,
        if (triggerFulfillment != null)
          'triggerFulfillment': triggerFulfillment!,
      };
}

/// A TransitionRouteGroup represents a group of `TransitionRoutes` to be used
/// by a Page.
class GoogleCloudDialogflowCxV3TransitionRouteGroup {
  /// The human-readable name of the transition route group, unique within the
  /// flow.
  ///
  /// The display name can be no longer than 30 characters.
  ///
  /// Required.
  core.String? displayName;

  /// The unique identifier of the transition route group.
  ///
  /// TransitionRouteGroups.CreateTransitionRouteGroup populates the name
  /// automatically. Format:
  /// `projects//locations//agents//flows//transitionRouteGroups/` .
  core.String? name;

  /// Transition routes associated with the TransitionRouteGroup.
  core.List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3TransitionRouteGroup({
    this.displayName,
    this.name,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          transitionRoutes: json_.containsKey('transitionRoutes')
              ? (json_['transitionRoutes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (transitionRoutes != null) 'transitionRoutes': transitionRoutes!,
      };
}

/// Transition route group coverage represents the percentage of all possible
/// transition routes present within any of a parent's test cases.
///
/// The results are grouped by the transition route group.
class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage {
  /// The percent of transition routes in all the transition route groups that
  /// are covered.
  core.double? coverageScore;

  /// Transition route group coverages.
  core.List<GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>?
      coverages;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage({
    this.coverageScore,
    this.coverages,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(core.Map json_)
      : this(
          coverageScore: json_.containsKey('coverageScore')
              ? (json_['coverageScore'] as core.num).toDouble()
              : null,
          coverages: json_.containsKey('coverages')
              ? (json_['coverages'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverageScore != null) 'coverageScore': coverageScore!,
        if (coverages != null) 'coverages': coverages!,
      };
}

/// Coverage result message for one transition route group.
class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage {
  /// The percent of transition routes in the transition route group that are
  /// covered.
  core.double? coverageScore;

  /// Transition route group metadata.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3TransitionRouteGroup? routeGroup;

  /// The list of transition routes and coverage in the transition route group.
  core.List<
          GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>?
      transitions;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage({
    this.coverageScore,
    this.routeGroup,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage.fromJson(
      core.Map json_)
      : this(
          coverageScore: json_.containsKey('coverageScore')
              ? (json_['coverageScore'] as core.num).toDouble()
              : null,
          routeGroup: json_.containsKey('routeGroup')
              ? GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
                  json_['routeGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          transitions: json_.containsKey('transitions')
              ? (json_['transitions'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverageScore != null) 'coverageScore': coverageScore!,
        if (routeGroup != null) 'routeGroup': routeGroup!,
        if (transitions != null) 'transitions': transitions!,
      };
}

/// A transition coverage in a transition route group.
class GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition {
  /// Whether the transition route is covered by at least one of the agent's
  /// test cases.
  core.bool? covered;

  /// Intent route or condition route.
  GoogleCloudDialogflowCxV3TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition({
    this.covered,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition.fromJson(
      core.Map json_)
      : this(
          covered: json_.containsKey('covered')
              ? json_['covered'] as core.bool
              : null,
          transitionRoute: json_.containsKey('transitionRoute')
              ? GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
                  json_['transitionRoute']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (covered != null) 'covered': covered!,
        if (transitionRoute != null) 'transitionRoute': transitionRoute!,
      };
}

/// The request message for Agents.ValidateAgent.
typedef GoogleCloudDialogflowCxV3ValidateAgentRequest = $Request08;

/// The request message for Flows.ValidateFlow.
typedef GoogleCloudDialogflowCxV3ValidateFlowRequest = $Request08;

/// Agent/flow validation message.
class GoogleCloudDialogflowCxV3ValidationMessage {
  /// The message detail.
  core.String? detail;

  /// The resource names of the resources where the message is found.
  core.List<GoogleCloudDialogflowCxV3ResourceName>? resourceNames;

  /// The type of the resources where the message is found.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Unspecified.
  /// - "AGENT" : Agent.
  /// - "INTENT" : Intent.
  /// - "INTENT_TRAINING_PHRASE" : Intent training phrase.
  /// - "INTENT_PARAMETER" : Intent parameter.
  /// - "INTENTS" : Multiple intents.
  /// - "INTENT_TRAINING_PHRASES" : Multiple training phrases.
  /// - "ENTITY_TYPE" : Entity type.
  /// - "ENTITY_TYPES" : Multiple entity types.
  /// - "WEBHOOK" : Webhook.
  /// - "FLOW" : Flow.
  /// - "PAGE" : Page.
  /// - "PAGES" : Multiple pages.
  /// - "TRANSITION_ROUTE_GROUP" : Transition route group.
  /// - "AGENT_TRANSITION_ROUTE_GROUP" : Agent transition route group.
  core.String? resourceType;

  /// The names of the resources where the message is found.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? resources;

  /// Indicates the severity of the message.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified.
  /// - "INFO" : The agent doesn't follow Dialogflow best practices.
  /// - "WARNING" : The agent may not behave as expected.
  /// - "ERROR" : The agent may experience failures.
  core.String? severity;

  GoogleCloudDialogflowCxV3ValidationMessage({
    this.detail,
    this.resourceNames,
    this.resourceType,
    this.resources,
    this.severity,
  });

  GoogleCloudDialogflowCxV3ValidationMessage.fromJson(core.Map json_)
      : this(
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
          resourceNames: json_.containsKey('resourceNames')
              ? (json_['resourceNames'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3ResourceName.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (resourceNames != null) 'resourceNames': resourceNames!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (resources != null) 'resources': resources!,
        if (severity != null) 'severity': severity!,
      };
}

/// The history of variants update.
class GoogleCloudDialogflowCxV3VariantsHistory {
  /// Update time of the variants.
  core.String? updateTime;

  /// The flow versions as the variants.
  GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3VariantsHistory({
    this.updateTime,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3VariantsHistory.fromJson(core.Map json_)
      : this(
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionVariants: json_.containsKey('versionVariants')
              ? GoogleCloudDialogflowCxV3VersionVariants.fromJson(
                  json_['versionVariants']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionVariants != null) 'versionVariants': versionVariants!,
      };
}

/// Represents a version of a flow.
class GoogleCloudDialogflowCxV3Version {
  /// Create time of the version.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the version.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  core.String? description;

  /// The human-readable name of the version.
  ///
  /// Limit of 64 characters.
  ///
  /// Required.
  core.String? displayName;

  /// Format: projects//locations//agents//flows//versions/.
  ///
  /// Version ID is a self-increasing number generated by Dialogflow upon
  /// version creation.
  core.String? name;

  /// The NLU settings of the flow at version creation.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3NluSettings? nluSettings;

  /// The state of this version.
  ///
  /// This field is read-only and cannot be set by create and update methods.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified. This value is not used.
  /// - "RUNNING" : Version is not ready to serve (e.g. training is running).
  /// - "SUCCEEDED" : Training has succeeded and this version is ready to serve.
  /// - "FAILED" : Version training failed.
  core.String? state;

  GoogleCloudDialogflowCxV3Version({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.nluSettings,
    this.state,
  });

  GoogleCloudDialogflowCxV3Version.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nluSettings: json_.containsKey('nluSettings')
              ? GoogleCloudDialogflowCxV3NluSettings.fromJson(
                  json_['nluSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (nluSettings != null) 'nluSettings': nluSettings!,
        if (state != null) 'state': state!,
      };
}

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3VersionVariants {
  /// A list of flow version variants.
  core.List<GoogleCloudDialogflowCxV3VersionVariantsVariant>? variants;

  GoogleCloudDialogflowCxV3VersionVariants({
    this.variants,
  });

  GoogleCloudDialogflowCxV3VersionVariants.fromJson(core.Map json_)
      : this(
          variants: json_.containsKey('variants')
              ? (json_['variants'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variants != null) 'variants': variants!,
      };
}

/// A single flow version with specified traffic allocation.
class GoogleCloudDialogflowCxV3VersionVariantsVariant {
  /// Whether the variant is for the control group.
  core.bool? isControlGroup;

  /// Percentage of the traffic which should be routed to this version of flow.
  ///
  /// Traffic allocation for a single flow must sum up to 1.0.
  core.double? trafficAllocation;

  /// The name of the flow version.
  ///
  /// Format: `projects//locations//agents//flows//versions/`.
  core.String? version;

  GoogleCloudDialogflowCxV3VersionVariantsVariant({
    this.isControlGroup,
    this.trafficAllocation,
    this.version,
  });

  GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(core.Map json_)
      : this(
          isControlGroup: json_.containsKey('isControlGroup')
              ? json_['isControlGroup'] as core.bool
              : null,
          trafficAllocation: json_.containsKey('trafficAllocation')
              ? (json_['trafficAllocation'] as core.num).toDouble()
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isControlGroup != null) 'isControlGroup': isControlGroup!,
        if (trafficAllocation != null) 'trafficAllocation': trafficAllocation!,
        if (version != null) 'version': version!,
      };
}

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowCxV3VoiceSelectionParams {
  /// The name of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and ssml_gender. For the list of available voices,
  /// please refer to
  /// [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).
  ///
  /// Optional.
  core.String? name;

  /// The preferred gender of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and name. Note that this is only a preference, not
  /// requirement. If a voice of the appropriate gender is not available, the
  /// synthesizer substitutes a voice with a different gender rather than
  /// failing the request.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender, which means
  /// that the client doesn't care which gender the selected voice will have.
  /// - "SSML_VOICE_GENDER_MALE" : A male voice.
  /// - "SSML_VOICE_GENDER_FEMALE" : A female voice.
  /// - "SSML_VOICE_GENDER_NEUTRAL" : A gender-neutral voice.
  core.String? ssmlGender;

  GoogleCloudDialogflowCxV3VoiceSelectionParams({
    this.name,
    this.ssmlGender,
  });

  GoogleCloudDialogflowCxV3VoiceSelectionParams.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ssmlGender: json_.containsKey('ssmlGender')
              ? json_['ssmlGender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (ssmlGender != null) 'ssmlGender': ssmlGender!,
      };
}

/// Webhooks host the developer's business logic.
///
/// During a session, webhooks allow the developer to use the data extracted by
/// Dialogflow's natural language processing to generate dynamic responses,
/// validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3Webhook {
  /// Indicates whether the webhook is disabled.
  core.bool? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  ///
  /// Required.
  core.String? displayName;

  /// Configuration for a generic web service.
  GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;

  /// The unique identifier of the webhook.
  ///
  /// Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook
  /// populates the name automatically. Format:
  /// `projects//locations//agents//webhooks/`.
  core.String? name;

  /// Configuration for a
  /// [Service Directory](https://cloud.google.com/service-directory) service.
  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig? serviceDirectory;

  /// Webhook execution timeout.
  ///
  /// Execution is considered failed if Dialogflow doesn't receive a response
  /// from webhook at the end of the timeout period. Defaults to 5 seconds,
  /// maximum allowed timeout is 30 seconds.
  core.String? timeout;

  GoogleCloudDialogflowCxV3Webhook({
    this.disabled,
    this.displayName,
    this.genericWebService,
    this.name,
    this.serviceDirectory,
    this.timeout,
  });

  GoogleCloudDialogflowCxV3Webhook.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          genericWebService: json_.containsKey('genericWebService')
              ? GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
                  json_['genericWebService']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceDirectory: json_.containsKey('serviceDirectory')
              ? GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromJson(
                  json_['serviceDirectory']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (genericWebService != null) 'genericWebService': genericWebService!,
        if (name != null) 'name': name!,
        if (serviceDirectory != null) 'serviceDirectory': serviceDirectory!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Represents configuration for a generic web service.
class GoogleCloudDialogflowCxV3WebhookGenericWebService {
  /// Specifies a list of allowed custom CA certificates (in DER format) for
  /// HTTPS verification.
  ///
  /// This overrides the default SSL trust store. If this is empty or
  /// unspecified, Dialogflow will use Google's default trust store to verify
  /// certificates. N.B. Make sure the HTTPS server certificates are signed with
  /// "subject alt name". For instance a certificate can be self-signed using
  /// the following command, ``` openssl x509 -req -days 200 -in example.com.csr
  /// \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf
  /// "\nsubjectAltName='DNS:www.example.com'") ```
  ///
  /// Optional.
  core.List<core.String>? allowedCaCerts;

  /// HTTP method for the flexible webhook calls.
  ///
  /// Standard webhook always uses POST.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method not specified.
  /// - "POST" : HTTP POST Method.
  /// - "GET" : HTTP GET Method.
  /// - "HEAD" : HTTP HEAD Method.
  /// - "PUT" : HTTP PUT Method.
  /// - "DELETE" : HTTP DELETE Method.
  /// - "PATCH" : HTTP PATCH Method.
  /// - "OPTIONS" : HTTP OPTIONS Method.
  core.String? httpMethod;

  /// The OAuth configuration of the webhook.
  ///
  /// If specified, Dialogflow will initiate the OAuth client credential flow to
  /// exchange an access token from the 3rd party platform and put it in the
  /// auth header.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig? oauthConfig;

  /// Maps the values extracted from specific fields of the flexible webhook
  /// response into session parameters.
  ///
  /// - Key: session parameter name - Value: field path in the webhook response
  ///
  /// Optional.
  core.Map<core.String, core.String>? parameterMapping;

  /// The password for HTTP Basic authentication.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? password;

  /// Defines a custom JSON object as request body to send to flexible webhook.
  ///
  /// Optional.
  core.String? requestBody;

  /// The HTTP request headers to send together with webhook requests.
  core.Map<core.String, core.String>? requestHeaders;

  /// Indicate the auth token type generated from the
  /// [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
  ///
  /// The generated token is sent in the Authorization header.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SERVICE_AGENT_AUTH_UNSPECIFIED" : Service agent auth type unspecified.
  /// Default to ID_TOKEN.
  /// - "NONE" : No token used.
  /// - "ID_TOKEN" : Use
  /// [ID token](https://cloud.google.com/docs/authentication/token-types#id)
  /// generated from service agent. This can be used to access Cloud Function
  /// and Cloud Run after you grant Invoker role to
  /// `service-@gcp-sa-dialogflow.iam.gserviceaccount.com`.
  /// - "ACCESS_TOKEN" : Use
  /// [access token](https://cloud.google.com/docs/authentication/token-types#access)
  /// generated from service agent. This can be used to access other Google
  /// Cloud APIs after you grant required roles to
  /// `service-@gcp-sa-dialogflow.iam.gserviceaccount.com`.
  core.String? serviceAgentAuth;

  /// The webhook URI for receiving POST requests.
  ///
  /// It must use https protocol.
  ///
  /// Required.
  core.String? uri;

  /// The user name for HTTP Basic authentication.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? username;

  /// Type of the webhook.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WEBHOOK_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "STANDARD" : Represents a standard webhook.
  /// - "FLEXIBLE" : Represents a flexible webhook.
  core.String? webhookType;

  GoogleCloudDialogflowCxV3WebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.oauthConfig,
    this.parameterMapping,
    this.password,
    this.requestBody,
    this.requestHeaders,
    this.serviceAgentAuth,
    this.uri,
    this.username,
    this.webhookType,
  });

  GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(core.Map json_)
      : this(
          allowedCaCerts: json_.containsKey('allowedCaCerts')
              ? (json_['allowedCaCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          oauthConfig: json_.containsKey('oauthConfig')
              ? GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig
                  .fromJson(json_['oauthConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          parameterMapping: json_.containsKey('parameterMapping')
              ? (json_['parameterMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          requestBody: json_.containsKey('requestBody')
              ? json_['requestBody'] as core.String
              : null,
          requestHeaders: json_.containsKey('requestHeaders')
              ? (json_['requestHeaders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          serviceAgentAuth: json_.containsKey('serviceAgentAuth')
              ? json_['serviceAgentAuth'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          webhookType: json_.containsKey('webhookType')
              ? json_['webhookType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedCaCerts != null) 'allowedCaCerts': allowedCaCerts!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (oauthConfig != null) 'oauthConfig': oauthConfig!,
        if (parameterMapping != null) 'parameterMapping': parameterMapping!,
        if (password != null) 'password': password!,
        if (requestBody != null) 'requestBody': requestBody!,
        if (requestHeaders != null) 'requestHeaders': requestHeaders!,
        if (serviceAgentAuth != null) 'serviceAgentAuth': serviceAgentAuth!,
        if (uri != null) 'uri': uri!,
        if (username != null) 'username': username!,
        if (webhookType != null) 'webhookType': webhookType!,
      };
}

/// Represents configuration of OAuth client credential flow for 3rd party API
/// authentication.
class GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig {
  /// The client ID provided by the 3rd party platform.
  ///
  /// Required.
  core.String? clientId;

  /// The client secret provided by the 3rd party platform.
  ///
  /// Required.
  core.String? clientSecret;

  /// The OAuth scopes to grant.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  /// The token endpoint provided by the 3rd party platform to exchange an
  /// access token.
  ///
  /// Required.
  core.String? tokenEndpoint;

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig({
    this.clientId,
    this.clientSecret,
    this.scopes,
    this.tokenEndpoint,
  });

  GoogleCloudDialogflowCxV3WebhookGenericWebServiceOAuthConfig.fromJson(
      core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tokenEndpoint: json_.containsKey('tokenEndpoint')
              ? json_['tokenEndpoint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (scopes != null) 'scopes': scopes!,
        if (tokenEndpoint != null) 'tokenEndpoint': tokenEndpoint!,
      };
}

/// Represents configuration for a
/// [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig {
  /// Generic Service configuration of this webhook.
  GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;

  /// The name of
  /// [Service Directory](https://cloud.google.com/service-directory) service.
  ///
  /// Format: `projects//locations//namespaces//services/`. `Location ID` of the
  /// service directory must be the same as the location of the agent.
  ///
  /// Required.
  core.String? service;

  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig({
    this.genericWebService,
    this.service,
  });

  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromJson(
      core.Map json_)
      : this(
          genericWebService: json_.containsKey('genericWebService')
              ? GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
                  json_['genericWebService']
                      as core.Map<core.String, core.dynamic>)
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (genericWebService != null) 'genericWebService': genericWebService!,
        if (service != null) 'service': service!,
      };
}

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef GoogleTypeLatLng = $LatLng;
