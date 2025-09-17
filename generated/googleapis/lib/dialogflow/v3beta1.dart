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

/// Dialogflow API - v3beta1
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
///       - [ProjectsLocationsAgentsConversationsResource]
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
///       - [ProjectsLocationsAgentsPlaybooksResource]
///         - [ProjectsLocationsAgentsPlaybooksExamplesResource]
///         - [ProjectsLocationsAgentsPlaybooksVersionsResource]
///       - [ProjectsLocationsAgentsSessionsResource]
///         - [ProjectsLocationsAgentsSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentsTestCasesResource]
///         - [ProjectsLocationsAgentsTestCasesResultsResource]
///       - [ProjectsLocationsAgentsToolsResource]
///         - [ProjectsLocationsAgentsToolsVersionsResource]
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

  DialogflowApi(
    http.Client client, {
    core.String rootUrl = 'https://dialogflow.googleapis.com/',
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsChangelogsResource get changelogs =>
      ProjectsLocationsAgentsChangelogsResource(_requester);
  ProjectsLocationsAgentsConversationsResource get conversations =>
      ProjectsLocationsAgentsConversationsResource(_requester);
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
  ProjectsLocationsAgentsPlaybooksResource get playbooks =>
      ProjectsLocationsAgentsPlaybooksResource(_requester);
  ProjectsLocationsAgentsSessionsResource get sessions =>
      ProjectsLocationsAgentsSessionsResource(_requester);
  ProjectsLocationsAgentsTestCasesResource get testCases =>
      ProjectsLocationsAgentsTestCasesResource(_requester);
  ProjectsLocationsAgentsToolsResource get tools =>
      ProjectsLocationsAgentsToolsResource(_requester);
  ProjectsLocationsAgentsTransitionRouteGroupsResource
  get transitionRouteGroups =>
      ProjectsLocationsAgentsTransitionRouteGroupsResource(_requester);
  ProjectsLocationsAgentsWebhooksResource get webhooks =>
      ProjectsLocationsAgentsWebhooksResource(_requester);

  ProjectsLocationsAgentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an agent in the specified location.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Agent> create(
    GoogleCloudDialogflowCxV3beta1Agent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ExportAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Agent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1GenerativeSettings>
  getGenerativeSettings(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1GenerativeSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1AgentValidationResult>
  getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1AgentValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListAgentsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/agents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified agent.
  ///
  /// Note: You should always train a flow prior to sending it queries. See the
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Agent> patch(
    GoogleCloudDialogflowCxV3beta1Agent request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Note: You should always train a flow prior to sending it queries. See the
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
    GoogleCloudDialogflowCxV3beta1RestoreAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1GenerativeSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1GenerativeSettings>
  updateGenerativeSettings(
    GoogleCloudDialogflowCxV3beta1GenerativeSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1GenerativeSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1AgentValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1AgentValidationResult> validate(
    GoogleCloudDialogflowCxV3beta1ValidateAgentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1AgentValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Changelog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Changelog> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Changelog.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListChangelogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListChangelogsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/changelogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListChangelogsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsConversationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation. Format:
  /// `projects//locations//agents//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/conversations/\[^/\]+$`.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation. Format:
  /// `projects//locations//agents//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Conversation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all conversations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all conversations for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter string. Supports filter by create_time,
  /// metrics.has_end_interaction, metrics.has_live_agent_handoff,
  /// intents.display_name, pages.display_name and flows.display_name.
  /// Timestamps expect an RFC-3339 formatted string (e.g.
  /// 2012-04-21T11:30:00-04:00). UTC offsets are supported. Some examples: 1.
  /// By create time: create_time \> "2022-04-21T11:30:00-04:00" 2. By intent
  /// display name: intents.display_name : "billing" 3. By end interaction
  /// signal: metrics.has_end_interaction = true
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListConversationsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEntityTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an entity type in the specified agent.
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1EntityType> create(
    GoogleCloudDialogflowCxV3beta1EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1EntityType> patch(
    GoogleCloudDialogflowCxV3beta1EntityType request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource
  get continuousTestResults =>
      ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
        _requester,
      );
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
    GoogleCloudDialogflowCxV3beta1Environment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<GoogleLongrunningOperation> deployFlow(
    GoogleCloudDialogflowCxV3beta1DeployFlowRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$environment') + ':deployFlow';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse>
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
        'v3beta1/' + core.Uri.encodeFull('$name') + ':lookupEnvironmentHistory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1Environment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest request,
    core.String environment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$environment') + ':runContinuousTest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Fetches a list of continuous test results for a given environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The environment to list results for. Format:
  /// `projects//locations//agents//environments/`.
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
  /// [GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse>
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/continuousTestResults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsDeploymentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Deployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsExperimentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsExperimentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Experiment> create(
    GoogleCloudDialogflowCxV3beta1Experiment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Experiment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListExperimentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListExperimentsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/experiments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListExperimentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified Experiment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the experiment. Format:
  /// projects//locations//agents//environments//experiments/.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/environments/\[^/\]+/experiments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Experiment> patch(
    GoogleCloudDialogflowCxV3beta1Experiment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Experiment> start(
    GoogleCloudDialogflowCxV3beta1StartExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Experiment> stop(
    GoogleCloudDialogflowCxV3beta1StopExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource
  get entityTypes =>
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
        _requester,
      );

  ProjectsLocationsAgentsEnvironmentsSessionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1FulfillIntentResponse>
  fulfillIntent(
    GoogleCloudDialogflowCxV3beta1FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1FulfillIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3beta1MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1MatchIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1DetectIntentResponse>
  serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> create(
    GoogleCloudDialogflowCxV3beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse>
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> patch(
    GoogleCloudDialogflowCxV3beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Flow> create(
    GoogleCloudDialogflowCxV3beta1Flow request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ExportFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Flow> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1FlowValidationResult>
  getValidationResult(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1FlowValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ImportFlowRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/flows:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListFlowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListFlowsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/flows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListFlowsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Flow].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Flow> patch(
    GoogleCloudDialogflowCxV3beta1Flow request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Flow.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1TrainFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':train';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1FlowValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1FlowValidationResult> validate(
    GoogleCloudDialogflowCxV3beta1ValidateFlowRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1FlowValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsPagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsPagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a page in the specified flow.
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Page> create(
    GoogleCloudDialogflowCxV3beta1Page request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified page.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Page> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListPagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListPagesResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListPagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified page.
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Page> patch(
    GoogleCloudDialogflowCxV3beta1Page request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Page.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3beta1TransitionRouteGroup request,
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse>
  list(
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/` for agent-level
  /// groups.
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3beta1TransitionRouteGroup request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// the specified flow. Format:
  /// `projects//locations//agents//flows//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/flows/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1CompareVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1CompareVersionsResponse>
  compareVersions(
    GoogleCloudDialogflowCxV3beta1CompareVersionsRequest request,
    core.String baseVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$baseVersion') + ':compareVersions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1CompareVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListVersionsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1LoadVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':load';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Version> patch(
    GoogleCloudDialogflowCxV3beta1Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Generator> create(
    GoogleCloudDialogflowCxV3beta1Generator request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Generator> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Generator> patch(
    GoogleCloudDialogflowCxV3beta1Generator request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Intent> create(
    GoogleCloudDialogflowCxV3beta1Intent request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ExportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/intents:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Intent> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ImportIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/intents:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListIntentsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Intent> patch(
    GoogleCloudDialogflowCxV3beta1Intent request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksExamplesResource get examples =>
      ProjectsLocationsAgentsPlaybooksExamplesResource(_requester);
  ProjectsLocationsAgentsPlaybooksVersionsResource get versions =>
      ProjectsLocationsAgentsPlaybooksVersionsResource(_requester);

  ProjectsLocationsAgentsPlaybooksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a playbook in a specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a playbook for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Playbook> create(
    GoogleCloudDialogflowCxV3beta1Playbook request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/playbooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a specified playbook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook to delete. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports the specified playbook to a binary file.
  ///
  /// Note that resources (e.g. examples, tools) that the playbook references
  /// will also be exported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook to export. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
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
    GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified Playbook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Playbook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Imports the specified playbook to the specified agent from a binary file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to import the playbook into. Format:
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
    GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/playbooks:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of playbooks in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list playbooks from. Format:
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/playbooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified Playbook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the playbook. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Playbook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Playbook> patch(
    GoogleCloudDialogflowCxV3beta1Playbook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksExamplesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksExamplesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an example in the specified playbook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The playbook to create an example for. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Example> create(
    GoogleCloudDialogflowCxV3beta1Example request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified example.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the example to delete. Format:
  /// `projects//locations//agents//playbooks//examples/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified example.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the example. Format:
  /// `projects//locations//agents//playbooks//examples/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Example> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of examples in the specified playbook.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The playbook to list the examples from. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language to list examples for. If not
  /// specified, list all examples under the playbook. Note: languages must be
  /// enabled in the agent before they can be used.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListExamplesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListExamplesResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/examples';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListExamplesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the specified example.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the playbook example. Format:
  /// `projects//locations//agents//playbooks//examples/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/examples/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Example].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Example> patch(
    GoogleCloudDialogflowCxV3beta1Example request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Example.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsPlaybooksVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsPlaybooksVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a version for the specified Playbook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The playbook to create a version for. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1PlaybookVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1PlaybookVersion> create(
    GoogleCloudDialogflowCxV3beta1PlaybookVersion request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified version of the Playbook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook version to delete. Format:
  /// `projects//locations//agents//playbooks//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified version of the Playbook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook version. Format:
  /// `projects//locations//agents//playbooks//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1PlaybookVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1PlaybookVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists versions for the specified Playbook.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The playbook to list versions for. Format:
  /// `projects//locations//agents//playbooks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified version of the Playbook and stores it as the
  /// current playbook draft, returning the playbook with resources updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the playbook version. Format:
  /// `projects//locations//agents//playbooks//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/playbooks/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse>
  restore(
    GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowCxV3beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1FulfillIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1FulfillIntentResponse>
  fulfillIntent(
    GoogleCloudDialogflowCxV3beta1FulfillIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$session') + ':fulfillIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1FulfillIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1MatchIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1MatchIntentResponse> matchIntent(
    GoogleCloudDialogflowCxV3beta1MatchIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$session') + ':matchIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1MatchIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1DetectIntentResponse>
  serverStreamingDetectIntent(
    GoogleCloudDialogflowCxV3beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' +
        core.Uri.encodeFull('$session') +
        ':serverStreamingDetectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1AnswerFeedback].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1AnswerFeedback>
  submitAnswerFeedback(
    GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$session') + ':submitAnswerFeedback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1AnswerFeedback.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> create(
    GoogleCloudDialogflowCxV3beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse>
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SessionEntityType> patch(
    GoogleCloudDialogflowCxV3beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [parent] - Required. Agent name. Format: `projects//locations//agents/`.
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
    GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases:batchRun';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse>
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
        'v3beta1/' +
        core.Uri.encodeFull('$agent') +
        '/testCases:calculateCoverage';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TestCase> create(
    GoogleCloudDialogflowCxV3beta1TestCase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TestCase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListTestCasesResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListTestCasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified test case.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the test case. TestCases.CreateTestCase
  /// will populate the name automatically. Otherwise use format:
  /// `projects//locations//agents//testCases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to specify which fields should be
  /// updated. The `creationTime` and `lastTestResult` cannot be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TestCase> patch(
    GoogleCloudDialogflowCxV3beta1TestCase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [name] - Required. Format of test case name to run:
  /// `projects//locations//agents//testCases/`.
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
    GoogleCloudDialogflowCxV3beta1RunTestCaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TestCaseResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TestCaseResult> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetches the list of run results for the given test case.
  ///
  /// A maximum of 100 results are kept for each test case.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The test case to list results for. Format:
  /// `projects//locations//agents//testCases/`. Specify a `-` as a wildcard for
  /// TestCase ID to list results across multiple test cases.
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
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/results';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsToolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsToolsVersionsResource get versions =>
      ProjectsLocationsAgentsToolsVersionsResource(_requester);

  ProjectsLocationsAgentsToolsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Tool in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a Tool for. Format:
  /// `projects//locations//agents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Tool> create(
    GoogleCloudDialogflowCxV3beta1Tool request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a specified Tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Tool to be deleted. Format:
  /// `projects//locations//agents//tools/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [force] - This field has no effect for Tools not being used. For Tools
  /// that are used: * If `force` is set to false, an error will be returned
  /// with message indicating the referenced resources. * If `force` is set to
  /// true, Dialogflow will remove the tool, as well as any references to the
  /// tool.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports the selected tools.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to export tools from. Format:
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
    GoogleCloudDialogflowCxV3beta1ExportToolsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/tools:export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified Tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Tool. Format:
  /// `projects//locations//agents//tools/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Tool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of Tools in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list the Tools from. Format:
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListToolsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the specified Tool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the Tool. Format:
  /// `projects//locations//agents//tools/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [updateMask] - The mask to control which fields get updated. If the mask
  /// is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Tool> patch(
    GoogleCloudDialogflowCxV3beta1Tool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsToolsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsToolsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a version for the specified Tool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The tool to create a version for. Format:
  /// `projects//locations//agents//tools/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ToolVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ToolVersion> create(
    GoogleCloudDialogflowCxV3beta1ToolVersion request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified version of the Tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tool version to delete. Format:
  /// `projects//locations//agents//tools//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [force] - Optional. This field has no effect for Tools not being used. For
  /// Tools that are used: * If `force` is set to false, an error will be
  /// returned with message indicating the referenced resources. * If `force` is
  /// set to true, Dialogflow will remove the tool, as well as any references to
  /// the tool.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified version of the Tool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tool version. Format:
  /// `projects//locations//agents//tools//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ToolVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ToolVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List versions of the specified Tool.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the tool versions. Format:
  /// `projects//locations//agents//tools/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified version of the Tool and stores it as the current
  /// tool draft, returning the tool with resources updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tool version. Format:
  /// `projects//locations//agents//tools//versions/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agents/\[^/\]+/tools/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse>
  restore(
    GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentsTransitionRouteGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentsTransitionRouteGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> create(
    GoogleCloudDialogflowCxV3beta1TransitionRouteGroup request,
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse>
  list(
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/transitionRouteGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/` for agent-level
  /// groups.
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> patch(
    GoogleCloudDialogflowCxV3beta1TransitionRouteGroup request,
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Webhook> create(
    GoogleCloudDialogflowCxV3beta1Webhook request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Webhook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1ListWebhooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListWebhooksResponse> list(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$parent') + '/webhooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListWebhooksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1Webhook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1Webhook> patch(
    GoogleCloudDialogflowCxV3beta1Webhook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SecuritySettings> create(
    GoogleCloudDialogflowCxV3beta1SecuritySettings request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SecuritySettings> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a
  /// [GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse> list(
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
        'v3beta1/' + core.Uri.encodeFull('$parent') + '/securitySettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowCxV3beta1SecuritySettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowCxV3beta1SecuritySettings> patch(
    GoogleCloudDialogflowCxV3beta1SecuritySettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v3beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Action performed by end user or Dialogflow agent in the conversation.
class GoogleCloudDialogflowCxV3beta1Action {
  /// Action performed by the agent as a message.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1AgentUtterance? agentUtterance;

  /// Timestamp of the completion of the agent action.
  ///
  /// Output only.
  core.String? completeTime;

  /// The display name of the action.
  ///
  /// Output only.
  core.String? displayName;

  /// The agent received an event from the customer or a system event is
  /// emitted.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1Event? event;

  /// Action performed on behalf of the agent by invoking a CX flow.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1FlowInvocation? flowInvocation;

  /// The state machine update in flows.
  ///
  /// Optional. Output only.
  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate? flowStateUpdate;

  /// Action performed on behalf of the agent by transitioning to a target CX
  /// flow.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1FlowTransition? flowTransition;

  /// Intent Match in flows.
  ///
  /// Optional. Output only.
  GoogleCloudDialogflowCxV3beta1ActionIntentMatch? intentMatch;

  /// LLM call performed by the agent.
  ///
  /// Optional. Output only.
  GoogleCloudDialogflowCxV3beta1LlmCall? llmCall;

  /// Action performed on behalf of the agent by invoking a child playbook.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookInvocation? playbookInvocation;

  /// Action performed on behalf of the agent by transitioning to a target
  /// playbook.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookTransition? playbookTransition;

  /// Timestamp of the start of the agent action.
  ///
  /// Output only.
  core.String? startTime;

  /// The status of the action.
  ///
  /// Optional. Output only.
  GoogleCloudDialogflowCxV3beta1Status? status;

  /// Speech-to-text action performed by the agent.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ActionSTT? stt;

  /// The detailed tracing information for sub execution steps of the action.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1Span>? subExecutionSteps;

  /// Action performed on behalf of the agent by calling a plugin tool.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolUse? toolUse;

  /// Text-to-speech action performed by the agent.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ActionTTS? tts;

  /// Agent obtained a message from the customer.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1UserUtterance? userUtterance;

  GoogleCloudDialogflowCxV3beta1Action({
    this.agentUtterance,
    this.completeTime,
    this.displayName,
    this.event,
    this.flowInvocation,
    this.flowStateUpdate,
    this.flowTransition,
    this.intentMatch,
    this.llmCall,
    this.playbookInvocation,
    this.playbookTransition,
    this.startTime,
    this.status,
    this.stt,
    this.subExecutionSteps,
    this.toolUse,
    this.tts,
    this.userUtterance,
  });

  GoogleCloudDialogflowCxV3beta1Action.fromJson(core.Map json_)
    : this(
        agentUtterance:
            json_.containsKey('agentUtterance')
                ? GoogleCloudDialogflowCxV3beta1AgentUtterance.fromJson(
                  json_['agentUtterance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        completeTime: json_['completeTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        event:
            json_.containsKey('event')
                ? GoogleCloudDialogflowCxV3beta1Event.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        flowInvocation:
            json_.containsKey('flowInvocation')
                ? GoogleCloudDialogflowCxV3beta1FlowInvocation.fromJson(
                  json_['flowInvocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        flowStateUpdate:
            json_.containsKey('flowStateUpdate')
                ? GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate.fromJson(
                  json_['flowStateUpdate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        flowTransition:
            json_.containsKey('flowTransition')
                ? GoogleCloudDialogflowCxV3beta1FlowTransition.fromJson(
                  json_['flowTransition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentMatch:
            json_.containsKey('intentMatch')
                ? GoogleCloudDialogflowCxV3beta1ActionIntentMatch.fromJson(
                  json_['intentMatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        llmCall:
            json_.containsKey('llmCall')
                ? GoogleCloudDialogflowCxV3beta1LlmCall.fromJson(
                  json_['llmCall'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookInvocation:
            json_.containsKey('playbookInvocation')
                ? GoogleCloudDialogflowCxV3beta1PlaybookInvocation.fromJson(
                  json_['playbookInvocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookTransition:
            json_.containsKey('playbookTransition')
                ? GoogleCloudDialogflowCxV3beta1PlaybookTransition.fromJson(
                  json_['playbookTransition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
        status:
            json_.containsKey('status')
                ? GoogleCloudDialogflowCxV3beta1Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stt:
            json_.containsKey('stt')
                ? GoogleCloudDialogflowCxV3beta1ActionSTT.fromJson(
                  json_['stt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subExecutionSteps:
            (json_['subExecutionSteps'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Span.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        toolUse:
            json_.containsKey('toolUse')
                ? GoogleCloudDialogflowCxV3beta1ToolUse.fromJson(
                  json_['toolUse'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tts:
            json_.containsKey('tts')
                ? GoogleCloudDialogflowCxV3beta1ActionTTS.fromJson(
                  json_['tts'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userUtterance:
            json_.containsKey('userUtterance')
                ? GoogleCloudDialogflowCxV3beta1UserUtterance.fromJson(
                  json_['userUtterance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agentUtterance != null) 'agentUtterance': agentUtterance!,
    if (completeTime != null) 'completeTime': completeTime!,
    if (displayName != null) 'displayName': displayName!,
    if (event != null) 'event': event!,
    if (flowInvocation != null) 'flowInvocation': flowInvocation!,
    if (flowStateUpdate != null) 'flowStateUpdate': flowStateUpdate!,
    if (flowTransition != null) 'flowTransition': flowTransition!,
    if (intentMatch != null) 'intentMatch': intentMatch!,
    if (llmCall != null) 'llmCall': llmCall!,
    if (playbookInvocation != null) 'playbookInvocation': playbookInvocation!,
    if (playbookTransition != null) 'playbookTransition': playbookTransition!,
    if (startTime != null) 'startTime': startTime!,
    if (status != null) 'status': status!,
    if (stt != null) 'stt': stt!,
    if (subExecutionSteps != null) 'subExecutionSteps': subExecutionSteps!,
    if (toolUse != null) 'toolUse': toolUse!,
    if (tts != null) 'tts': tts!,
    if (userUtterance != null) 'userUtterance': userUtterance!,
  };
}

/// Stores metadata of the state update action, such as a state machine
/// execution in flows.
class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate {
  /// The destination of the transition.
  ///
  /// Format: `projects//locations//agents//flows//pages/` or
  /// `projects//locations//agents//playbooks/`.
  core.String? destination;

  /// The type of the event that triggered the state update.
  core.String? eventType;

  /// The function call to execute.
  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall? functionCall;

  /// The updated page and flow state.
  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState? pageState;

  /// The updated parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? updatedParameters;

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate({
    this.destination,
    this.eventType,
    this.functionCall,
    this.pageState,
    this.updatedParameters,
  });

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate.fromJson(core.Map json_)
    : this(
        destination: json_['destination'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        functionCall:
            json_.containsKey('functionCall')
                ? GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall.fromJson(
                  json_['functionCall'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pageState:
            json_.containsKey('pageState')
                ? GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState.fromJson(
                  json_['pageState'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updatedParameters:
            json_.containsKey('updatedParameters')
                ? json_['updatedParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
    if (eventType != null) 'eventType': eventType!,
    if (functionCall != null) 'functionCall': functionCall!,
    if (pageState != null) 'pageState': pageState!,
    if (updatedParameters != null) 'updatedParameters': updatedParameters!,
  };
}

/// Stores the metadata of a function call to execute.
class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall {
  /// The name of the function call.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall({this.name});

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall.fromJson(
    core.Map json_,
  ) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Stores the state of a page and its flow.
class GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState {
  /// The display name of the page.
  core.String? displayName;

  /// The ID of the page.
  ///
  /// Format: `projects//locations//agents//flows//pages/`.
  core.String? page;

  /// The status of the page.
  core.String? status;

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState({
    this.displayName,
    this.page,
    this.status,
  });

  GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        page: json_['page'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (page != null) 'page': page!,
    if (status != null) 'status': status!,
  };
}

/// Stores metadata of the intent match action.
class GoogleCloudDialogflowCxV3beta1ActionIntentMatch {
  /// The matched intent.
  core.List<GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent>?
  matchedIntents;

  GoogleCloudDialogflowCxV3beta1ActionIntentMatch({this.matchedIntents});

  GoogleCloudDialogflowCxV3beta1ActionIntentMatch.fromJson(core.Map json_)
    : this(
        matchedIntents:
            (json_['matchedIntents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (matchedIntents != null) 'matchedIntents': matchedIntents!,
  };
}

/// Stores the matched intent, which is the result of the intent match action.
class GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent {
  /// The display name of the matched intent.
  core.String? displayName;

  /// The generative fallback response of the matched intent.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? generativeFallback;

  /// The ID of the matched intent.
  core.String? intentId;

  /// The score of the matched intent.
  core.double? score;

  GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent({
    this.displayName,
    this.generativeFallback,
    this.intentId,
    this.score,
  });

  GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent.fromJson(
    core.Map json_,
  ) : this(
        displayName: json_['displayName'] as core.String?,
        generativeFallback:
            json_.containsKey('generativeFallback')
                ? json_['generativeFallback']
                    as core.Map<core.String, core.dynamic>
                : null,
        intentId: json_['intentId'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (generativeFallback != null) 'generativeFallback': generativeFallback!,
    if (intentId != null) 'intentId': intentId!,
    if (score != null) 'score': score!,
  };
}

/// Stores metadata of the Speech-to-Text action.
typedef GoogleCloudDialogflowCxV3beta1ActionSTT = $Empty;

/// Stores metadata of the Text-to-Speech action.
typedef GoogleCloudDialogflowCxV3beta1ActionTTS = $Empty;

/// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
///
/// Settings exposed at lower level overrides the settings exposed at higher
/// level. Overriding occurs at the sub-setting level. For example, the
/// playback_interruption_settings at fulfillment level only overrides the
/// playback_interruption_settings at the agent level, leaving other settings at
/// the agent level unchanged. DTMF settings does not override each other. DTMF
/// settings set at different levels define DTMF detections running in parallel.
/// Hierarchy: Agent-\>Flow-\>Page-\>Fulfillment/Parameter.
class GoogleCloudDialogflowCxV3beta1AdvancedSettings {
  /// If present, incoming audio is exported by Dialogflow to the configured
  /// Google Cloud Storage destination.
  ///
  /// Exposed at the following levels: - Agent level - Flow level
  GoogleCloudDialogflowCxV3beta1GcsDestination? audioExportGcsDestination;

  /// Settings for DTMF.
  ///
  /// Exposed at the following levels: - Agent level - Flow level - Page level -
  /// Parameter level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings? dtmfSettings;

  /// Settings for logging.
  ///
  /// Settings for Dialogflow History, Contact Center messages, StackDriver
  /// logs, and speech logging. Exposed at the following levels: - Agent level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings?
  loggingSettings;

  /// Settings for speech to text detection.
  ///
  /// Exposed at the following levels: - Agent level - Flow level - Page level -
  /// Parameter level
  GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings? speechSettings;

  GoogleCloudDialogflowCxV3beta1AdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(core.Map json_)
    : this(
        audioExportGcsDestination:
            json_.containsKey('audioExportGcsDestination')
                ? GoogleCloudDialogflowCxV3beta1GcsDestination.fromJson(
                  json_['audioExportGcsDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dtmfSettings:
            json_.containsKey('dtmfSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings.fromJson(
                  json_['dtmfSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loggingSettings:
            json_.containsKey('loggingSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings.fromJson(
                  json_['loggingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        speechSettings:
            json_.containsKey('speechSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings.fromJson(
                  json_['speechSettings']
                      as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings =
    $AdvancedSettingsDtmfSettings;

/// Define behaviors on logging.
typedef GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings =
    $AdvancedSettingsLoggingSettings;

/// Define behaviors of speech to text detection.
typedef GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings =
    $AdvancedSettingsSpeechSettings;

/// Agents are best described as Natural Language Understanding (NLU) modules
/// that transform user requests into actionable data.
///
/// You can include agents in your app, product, or service to determine user
/// intent and respond to the user in a natural way. After you create an agent,
/// you can add Intents, Entity Types, Flows, Fulfillments, Webhooks,
/// TransitionRouteGroups and so on to manage the conversation flows.
class GoogleCloudDialogflowCxV3beta1Agent {
  /// Hierarchical advanced settings for this agent.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

  /// Answer feedback collection settings.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings?
  answerFeedbackSettings;

  /// The URI of the agent's avatar.
  ///
  /// Avatars are used throughout the Dialogflow console and in the self-hosted
  /// [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
  /// integration.
  core.String? avatarUri;

  /// The BigQuery export settings for this agent.
  ///
  /// The conversation data will be exported to BigQuery tables if it is
  /// enabled. By default, BigQuery export settings will not be exported with
  /// agent. You need to set include_bigquery_export_settings to include it in
  /// the exported agent.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1BigQueryExportSettings? bigqueryExportSettings;

  /// Settings for custom client certificates.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings?
  clientCertificateSettings;

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
  GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings?
  genAppBuilderSettings;

  /// Git integration settings for this agent.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings?
  gitIntegrationSettings;

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
  GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings?
  personalizationSettings;

  /// A read only boolean field reflecting Zone Isolation status of the agent.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzi;

  /// A read only boolean field reflecting Zone Separation status of the agent.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzs;

  /// Name of the SecuritySettings reference for the agent.
  ///
  /// Format: `projects//locations//securitySettings/`.
  core.String? securitySettings;

  /// Speech recognition related settings.
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettings? speechToTextSettings;

  /// Name of the start flow in this agent.
  ///
  /// A start flow will be automatically created when the agent is created, and
  /// can only be deleted by deleting the agent. Format:
  /// `projects//locations//agents//flows/`. Currently only the default start
  /// flow with id "00000000-0000-0000-0000-000000000000" is allowed.
  core.String? startFlow;

  /// Name of the start playbook in this agent.
  ///
  /// A start playbook will be automatically created when the agent is created,
  /// and can only be deleted by deleting the agent. Format:
  /// `projects//locations//agents//playbooks/`. Currently only the default
  /// playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  core.String? startPlaybook;

  /// The list of all languages supported by the agent (except for the
  /// `default_language_code`).
  core.List<core.String>? supportedLanguageCodes;

  /// Settings on instructing the speech synthesizer on how to generate the
  /// output audio content.
  GoogleCloudDialogflowCxV3beta1TextToSpeechSettings? textToSpeechSettings;

  /// The time zone of the agent from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// Required.
  core.String? timeZone;

  GoogleCloudDialogflowCxV3beta1Agent({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.bigqueryExportSettings,
    this.clientCertificateSettings,
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
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.startPlaybook,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    this.timeZone,
  });

  GoogleCloudDialogflowCxV3beta1Agent.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        answerFeedbackSettings:
            json_.containsKey('answerFeedbackSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings.fromJson(
                  json_['answerFeedbackSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        avatarUri: json_['avatarUri'] as core.String?,
        bigqueryExportSettings:
            json_.containsKey('bigqueryExportSettings')
                ? GoogleCloudDialogflowCxV3beta1BigQueryExportSettings.fromJson(
                  json_['bigqueryExportSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientCertificateSettings:
            json_.containsKey('clientCertificateSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings.fromJson(
                  json_['clientCertificateSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultLanguageCode: json_['defaultLanguageCode'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableMultiLanguageTraining:
            json_['enableMultiLanguageTraining'] as core.bool?,
        enableSpellCorrection: json_['enableSpellCorrection'] as core.bool?,
        enableStackdriverLogging:
            json_['enableStackdriverLogging'] as core.bool?,
        genAppBuilderSettings:
            json_.containsKey('genAppBuilderSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings.fromJson(
                  json_['genAppBuilderSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gitIntegrationSettings:
            json_.containsKey('gitIntegrationSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings.fromJson(
                  json_['gitIntegrationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        locked: json_['locked'] as core.bool?,
        name: json_['name'] as core.String?,
        personalizationSettings:
            json_.containsKey('personalizationSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings.fromJson(
                  json_['personalizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        securitySettings: json_['securitySettings'] as core.String?,
        speechToTextSettings:
            json_.containsKey('speechToTextSettings')
                ? GoogleCloudDialogflowCxV3beta1SpeechToTextSettings.fromJson(
                  json_['speechToTextSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startFlow: json_['startFlow'] as core.String?,
        startPlaybook: json_['startPlaybook'] as core.String?,
        supportedLanguageCodes:
            (json_['supportedLanguageCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        textToSpeechSettings:
            json_.containsKey('textToSpeechSettings')
                ? GoogleCloudDialogflowCxV3beta1TextToSpeechSettings.fromJson(
                  json_['textToSpeechSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedSettings != null) 'advancedSettings': advancedSettings!,
    if (answerFeedbackSettings != null)
      'answerFeedbackSettings': answerFeedbackSettings!,
    if (avatarUri != null) 'avatarUri': avatarUri!,
    if (bigqueryExportSettings != null)
      'bigqueryExportSettings': bigqueryExportSettings!,
    if (clientCertificateSettings != null)
      'clientCertificateSettings': clientCertificateSettings!,
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
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (securitySettings != null) 'securitySettings': securitySettings!,
    if (speechToTextSettings != null)
      'speechToTextSettings': speechToTextSettings!,
    if (startFlow != null) 'startFlow': startFlow!,
    if (startPlaybook != null) 'startPlaybook': startPlaybook!,
    if (supportedLanguageCodes != null)
      'supportedLanguageCodes': supportedLanguageCodes!,
    if (textToSpeechSettings != null)
      'textToSpeechSettings': textToSpeechSettings!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// Settings for answer feedback collection.
typedef GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings =
    $AgentAnswerFeedbackSettings;

/// Settings for custom client certificates.
typedef GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings =
    $AgentClientCertificateSettings;

/// Settings for Gen App Builder.
typedef GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings =
    $AgentGenAppBuilderSettings;

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings {
  /// Git connection settings.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings?
  gitConnectionSettings;

  /// GitHub settings.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings?
  githubSettings;

  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings({
    this.gitConnectionSettings,
    this.githubSettings,
  });

  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings.fromJson(
    core.Map json_,
  ) : this(
        gitConnectionSettings:
            json_.containsKey('gitConnectionSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings.fromJson(
                  json_['gitConnectionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        githubSettings:
            json_.containsKey('githubSettings')
                ? GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings.fromJson(
                  json_['githubSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gitConnectionSettings != null)
      'gitConnectionSettings': gitConnectionSettings!,
    if (githubSettings != null) 'githubSettings': githubSettings!,
  };
}

/// Integration settings for a Git service hosted on Cloud Run.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings {
  /// The name of the SecretManager secret version resource storing the git
  /// access token.
  ///
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  core.String? accessTokenSecret;

  /// List of branches configured for the repository.
  ///
  /// Optional.
  core.List<core.String>? branches;

  /// Display name for the repository
  ///
  /// Required.
  core.String? displayName;

  /// Git server reporitory URI.
  ///
  /// Required.
  core.String? repositoryUri;

  /// Default branch of the repository.
  ///
  /// Required.
  core.String? trackingBranch;

  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings({
    this.accessTokenSecret,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings.fromJson(
    core.Map json_,
  ) : this(
        accessTokenSecret: json_['accessTokenSecret'] as core.String?,
        branches:
            (json_['branches'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        repositoryUri: json_['repositoryUri'] as core.String?,
        trackingBranch: json_['trackingBranch'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessTokenSecret != null) 'accessTokenSecret': accessTokenSecret!,
    if (branches != null) 'branches': branches!,
    if (displayName != null) 'displayName': displayName!,
    if (repositoryUri != null) 'repositoryUri': repositoryUri!,
    if (trackingBranch != null) 'trackingBranch': trackingBranch!,
  };
}

/// Settings of integration with GitHub.
typedef GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings =
    $AgentGitIntegrationSettingsGithubSettings;

/// Settings for end user personalization.
typedef GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings =
    $AgentPersonalizationSettings;

/// AgentUtterance represents one message sent by the agent.
class GoogleCloudDialogflowCxV3beta1AgentUtterance {
  /// True if the agent utterance needs to be generated by the LLM.
  ///
  /// Only used in webhook response to differentiate from empty text. Revisit
  /// whether we need this field or mark `text` as optional when we expose
  /// webhook interface to customer.
  ///
  /// Optional.
  core.bool? requireGeneration;

  /// Message content in text.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3beta1AgentUtterance({
    this.requireGeneration,
    this.text,
  });

  GoogleCloudDialogflowCxV3beta1AgentUtterance.fromJson(core.Map json_)
    : this(
        requireGeneration: json_['requireGeneration'] as core.bool?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requireGeneration != null) 'requireGeneration': requireGeneration!,
    if (text != null) 'text': text!,
  };
}

/// The response message for Agents.GetAgentValidationResult.
class GoogleCloudDialogflowCxV3beta1AgentValidationResult {
  /// Contains all flow validation results.
  core.List<GoogleCloudDialogflowCxV3beta1FlowValidationResult>?
  flowValidationResults;

  /// The unique identifier of the agent validation result.
  ///
  /// Format: `projects//locations//agents//validationResult`.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1AgentValidationResult({
    this.flowValidationResults,
    this.name,
  });

  GoogleCloudDialogflowCxV3beta1AgentValidationResult.fromJson(core.Map json_)
    : this(
        flowValidationResults:
            (json_['flowValidationResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FlowValidationResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (flowValidationResults != null)
      'flowValidationResults': flowValidationResults!,
    if (name != null) 'name': name!,
  };
}

/// Stores information about feedback provided by users about a response.
class GoogleCloudDialogflowCxV3beta1AnswerFeedback {
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
  GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason? ratingReason;

  GoogleCloudDialogflowCxV3beta1AnswerFeedback({
    this.customRating,
    this.rating,
    this.ratingReason,
  });

  GoogleCloudDialogflowCxV3beta1AnswerFeedback.fromJson(core.Map json_)
    : this(
        customRating: json_['customRating'] as core.String?,
        rating: json_['rating'] as core.String?,
        ratingReason:
            json_.containsKey('ratingReason')
                ? GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason.fromJson(
                  json_['ratingReason'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customRating != null) 'customRating': customRating!,
    if (rating != null) 'rating': rating!,
    if (ratingReason != null) 'ratingReason': ratingReason!,
  };
}

/// Stores extra information about why users provided thumbs down rating.
typedef GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason =
    $AnswerFeedbackRatingReason;

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3beta1AudioInput {
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
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Instructs the speech recognizer how to process the speech audio.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1InputAudioConfig? config;

  GoogleCloudDialogflowCxV3beta1AudioInput({this.audio, this.config});

  GoogleCloudDialogflowCxV3beta1AudioInput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config:
            json_.containsKey('config')
                ? GoogleCloudDialogflowCxV3beta1InputAudioConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
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
/// phases. The durations are measured in terms of the audio length from the
/// start of the input audio. No-speech event is a response with
/// END_OF_UTTERANCE without any transcript following up.
typedef GoogleCloudDialogflowCxV3beta1BargeInConfig = $BargeInConfig;

/// The request message for TestCases.BatchDeleteTestCases.
typedef GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest =
    $BatchDeleteTestCasesRequest;

/// The request message for TestCases.BatchRunTestCases.
typedef GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest =
    $BatchRunTestCasesRequest;

/// The settings of BigQuery export.
class GoogleCloudDialogflowCxV3beta1BigQueryExportSettings {
  /// The BigQuery table to export.
  ///
  /// Format: `projects//datasets//tables/`.
  core.String? bigqueryTable;

  /// The field to indicate whether the BigQuery export is enabled.
  core.bool? enabled;

  GoogleCloudDialogflowCxV3beta1BigQueryExportSettings({
    this.bigqueryTable,
    this.enabled,
  });

  GoogleCloudDialogflowCxV3beta1BigQueryExportSettings.fromJson(core.Map json_)
    : this(
        bigqueryTable: json_['bigqueryTable'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryTable != null) 'bigqueryTable': bigqueryTable!,
    if (enabled != null) 'enabled': enabled!,
  };
}

/// Boost specification to boost certain documents.
///
/// A copy of google.cloud.discoveryengine.v1main.BoostSpec, field documentation
/// is available at
/// https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1alpha/BoostSpec
class GoogleCloudDialogflowCxV3beta1BoostSpec {
  /// Condition boost specifications.
  ///
  /// If a document matches multiple conditions in the specifications, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec>?
  conditionBoostSpecs;

  GoogleCloudDialogflowCxV3beta1BoostSpec({this.conditionBoostSpecs});

  GoogleCloudDialogflowCxV3beta1BoostSpec.fromJson(core.Map json_)
    : this(
        conditionBoostSpecs:
            (json_['conditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditionBoostSpecs != null)
      'conditionBoostSpecs': conditionBoostSpecs!,
  };
}

/// Boost applies to documents which match a condition.
class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec {
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

  /// Complex specification for custom ranking based on customer defined
  /// attribute value.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec?
  boostControlSpec;

  /// An expression which specifies a boost condition.
  ///
  /// The syntax and supported fields are the same as a filter expression.
  /// Examples: * To boost documents with document ID "doc_1" or "doc_2", and
  /// color "Red" or "Blue": * (id: ANY("doc_1", "doc_2")) AND (color:
  /// ANY("Red","Blue"))
  ///
  /// Optional.
  core.String? condition;

  GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec:
            json_.containsKey('boostControlSpec')
                ? GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec.fromJson(
                  json_['boostControlSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boost != null) 'boost': boost!,
    if (boostControlSpec != null) 'boostControlSpec': boostControlSpec!,
    if (condition != null) 'condition': condition!,
  };
}

/// Specification for custom ranking based on customer specified attribute
/// value.
///
/// It provides more controls for customized ranking than the simple (condition,
/// boost) combination above.
class GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec {
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
    GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
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

  GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints:
            (json_['controlPoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fieldName: json_['fieldName'] as core.String?,
        interpolationType: json_['interpolationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeType != null) 'attributeType': attributeType!,
    if (controlPoints != null) 'controlPoints': controlPoints!,
    if (fieldName != null) 'fieldName': fieldName!,
    if (interpolationType != null) 'interpolationType': interpolationType!,
  };
}

/// The control points used to define the curve.
///
/// The curve defined through these control points can only be monotonically
/// increasing or decreasing(constant values are acceptable).
typedef GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    $SpecControlPoint;

/// Boost specifications for data stores.
class GoogleCloudDialogflowCxV3beta1BoostSpecs {
  /// Data Stores where the boosting configuration is applied.
  ///
  /// The full names of the referenced data stores. Formats:
  /// \`projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}\`
  /// \`projects/{project}/locations/{location}/dataStores/{data_store}
  ///
  /// Optional.
  core.List<core.String>? dataStores;

  /// A list of boosting specifications.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1BoostSpec>? spec;

  GoogleCloudDialogflowCxV3beta1BoostSpecs({this.dataStores, this.spec});

  GoogleCloudDialogflowCxV3beta1BoostSpecs.fromJson(core.Map json_)
    : this(
        dataStores:
            (json_['dataStores'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        spec:
            (json_['spec'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1BoostSpec.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStores != null) 'dataStores': dataStores!,
    if (spec != null) 'spec': spec!,
  };
}

/// The response message for TestCases.CalculateCoverage.
class GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse {
  /// The agent to calculate coverage for.
  ///
  /// Format: `projects//locations//agents/`.
  core.String? agent;

  /// Intent coverage.
  GoogleCloudDialogflowCxV3beta1IntentCoverage? intentCoverage;

  /// Transition route group coverage.
  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage?
  routeGroupCoverage;

  /// Transition (excluding transition route groups) coverage.
  GoogleCloudDialogflowCxV3beta1TransitionCoverage? transitionCoverage;

  GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse({
    this.agent,
    this.intentCoverage,
    this.routeGroupCoverage,
    this.transitionCoverage,
  });

  GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse.fromJson(
    core.Map json_,
  ) : this(
        agent: json_['agent'] as core.String?,
        intentCoverage:
            json_.containsKey('intentCoverage')
                ? GoogleCloudDialogflowCxV3beta1IntentCoverage.fromJson(
                  json_['intentCoverage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        routeGroupCoverage:
            json_.containsKey('routeGroupCoverage')
                ? GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage.fromJson(
                  json_['routeGroupCoverage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitionCoverage:
            json_.containsKey('transitionCoverage')
                ? GoogleCloudDialogflowCxV3beta1TransitionCoverage.fromJson(
                  json_['transitionCoverage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agent != null) 'agent': agent!,
    if (intentCoverage != null) 'intentCoverage': intentCoverage!,
    if (routeGroupCoverage != null) 'routeGroupCoverage': routeGroupCoverage!,
    if (transitionCoverage != null) 'transitionCoverage': transitionCoverage!,
  };
}

/// Changelogs represents a change made to a given agent.
typedef GoogleCloudDialogflowCxV3beta1Changelog = $Changelog;

/// The request message for Versions.CompareVersions.
typedef GoogleCloudDialogflowCxV3beta1CompareVersionsRequest =
    $CompareVersionsRequest;

/// The response message for Versions.CompareVersions.
typedef GoogleCloudDialogflowCxV3beta1CompareVersionsResponse =
    $CompareVersionsResponse;

/// Represents a result from running a test case in an agent environment.
typedef GoogleCloudDialogflowCxV3beta1ContinuousTestResult =
    $ContinuousTestResult;

/// Represents a conversation.
class GoogleCloudDialogflowCxV3beta1Conversation {
  /// Duration of the conversation.
  core.String? duration;

  /// Environment of the conversation.
  ///
  /// Only `name` and `display_name` are filled in this message.
  GoogleCloudDialogflowCxV3beta1Environment? environment;

  /// Flow versions used in the conversation.
  core.Map<core.String, core.String>? flowVersions;

  /// All the Flow the conversation has went through.
  ///
  /// Only `name` and `display_name` are filled in this message.
  core.List<GoogleCloudDialogflowCxV3beta1Flow>? flows;

  /// All the matched Intent in the conversation.
  ///
  /// Only `name` and `display_name` are filled in this message.
  core.List<GoogleCloudDialogflowCxV3beta1Intent>? intents;

  /// Interactions of the conversation.
  ///
  /// Only populated for `GetConversation` and empty for `ListConversations`.
  core.List<GoogleCloudDialogflowCxV3beta1ConversationInteraction>?
  interactions;

  /// The language of the conversation, which is the language of the first
  /// request in the conversation.
  core.String? languageCode;

  /// Conversation metrics.
  GoogleCloudDialogflowCxV3beta1ConversationMetrics? metrics;

  /// Identifier.
  ///
  /// The identifier of the conversation. If conversation ID is reused,
  /// interactions happened later than 48 hours of the conversation's create
  /// time will be ignored. Format:
  /// `projects//locations//agents//conversations/`
  core.String? name;

  /// All the Page the conversation has went through.
  ///
  /// Only `name` and `display_name` are filled in this message.
  core.List<GoogleCloudDialogflowCxV3beta1Page>? pages;

  /// Start time of the conversation, which is the time of the first request of
  /// the conversation.
  core.String? startTime;

  /// The type of the conversation.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "AUDIO" : Audio conversation. A conversation is classified as an audio
  /// conversation if any request has STT input audio or any response has TTS
  /// output audio.
  /// - "TEXT" : Text conversation. A conversation is classified as a text
  /// conversation if any request has text input and no request has STT input
  /// audio and no response has TTS output audio.
  /// - "UNDETERMINED" : Default conversation type for a conversation. A
  /// conversation is classified as undetermined if none of the requests contain
  /// text or audio input (eg. event or intent input).
  core.String? type;

  GoogleCloudDialogflowCxV3beta1Conversation({
    this.duration,
    this.environment,
    this.flowVersions,
    this.flows,
    this.intents,
    this.interactions,
    this.languageCode,
    this.metrics,
    this.name,
    this.pages,
    this.startTime,
    this.type,
  });

  GoogleCloudDialogflowCxV3beta1Conversation.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        environment:
            json_.containsKey('environment')
                ? GoogleCloudDialogflowCxV3beta1Environment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        flowVersions: (json_['flowVersions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        flows:
            (json_['flows'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Flow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Intent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        interactions:
            (json_['interactions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ConversationInteraction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        metrics:
            json_.containsKey('metrics')
                ? GoogleCloudDialogflowCxV3beta1ConversationMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        pages:
            (json_['pages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Page.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        startTime: json_['startTime'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (duration != null) 'duration': duration!,
    if (environment != null) 'environment': environment!,
    if (flowVersions != null) 'flowVersions': flowVersions!,
    if (flows != null) 'flows': flows!,
    if (intents != null) 'intents': intents!,
    if (interactions != null) 'interactions': interactions!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (metrics != null) 'metrics': metrics!,
    if (name != null) 'name': name!,
    if (pages != null) 'pages': pages!,
    if (startTime != null) 'startTime': startTime!,
    if (type != null) 'type': type!,
  };
}

/// Represents an interaction between an end user and a Dialogflow CX agent
/// using V3 (Streaming)DetectIntent API, or an interaction between an end user
/// and a Dialogflow CX agent using V2 (Streaming)AnalyzeContent API.
class GoogleCloudDialogflowCxV3beta1ConversationInteraction {
  /// Answer feedback for the final response.
  GoogleCloudDialogflowCxV3beta1AnswerFeedback? answerFeedback;

  /// The time that the interaction was created.
  core.String? createTime;

  /// Missing transition predicted for the interaction.
  ///
  /// This field is set only if the interaction match type was no-match.
  GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition?
  missingTransition;

  /// The partial responses of the interaction.
  ///
  /// Empty if there is no partial response in the interaction. See the partial
  /// response documentation.
  core.List<GoogleCloudDialogflowCxV3beta1DetectIntentResponse>?
  partialResponses;

  /// The request of the interaction.
  GoogleCloudDialogflowCxV3beta1DetectIntentRequest? request;

  /// The input text or the transcript of the input audio in the request.
  core.String? requestUtterances;

  /// The final response of the interaction.
  GoogleCloudDialogflowCxV3beta1DetectIntentResponse? response;

  /// The output text or the transcript of the output audio in the responses.
  ///
  /// If multiple output messages are returned, they will be concatenated into
  /// one.
  core.String? responseUtterances;

  /// Metrics associated with different processing steps.
  ///
  /// Names and number of steps depend on the request and can change without a
  /// notice.
  core.List<GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics>?
  stepMetrics;

  GoogleCloudDialogflowCxV3beta1ConversationInteraction({
    this.answerFeedback,
    this.createTime,
    this.missingTransition,
    this.partialResponses,
    this.request,
    this.requestUtterances,
    this.response,
    this.responseUtterances,
    this.stepMetrics,
  });

  GoogleCloudDialogflowCxV3beta1ConversationInteraction.fromJson(core.Map json_)
    : this(
        answerFeedback:
            json_.containsKey('answerFeedback')
                ? GoogleCloudDialogflowCxV3beta1AnswerFeedback.fromJson(
                  json_['answerFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        missingTransition:
            json_.containsKey('missingTransition')
                ? GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition.fromJson(
                  json_['missingTransition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        partialResponses:
            (json_['partialResponses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        request:
            json_.containsKey('request')
                ? GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
                  json_['request'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestUtterances: json_['requestUtterances'] as core.String?,
        response:
            json_.containsKey('response')
                ? GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
                  json_['response'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseUtterances: json_['responseUtterances'] as core.String?,
        stepMetrics:
            (json_['stepMetrics'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerFeedback != null) 'answerFeedback': answerFeedback!,
    if (createTime != null) 'createTime': createTime!,
    if (missingTransition != null) 'missingTransition': missingTransition!,
    if (partialResponses != null) 'partialResponses': partialResponses!,
    if (request != null) 'request': request!,
    if (requestUtterances != null) 'requestUtterances': requestUtterances!,
    if (response != null) 'response': response!,
    if (responseUtterances != null) 'responseUtterances': responseUtterances!,
    if (stepMetrics != null) 'stepMetrics': stepMetrics!,
  };
}

/// Information collected for DF CX agents in case NLU predicted an intent that
/// was filtered out as being inactive which may indicate a missing transition
/// and/or absent functionality.
class GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition {
  /// Name of the intent that could have triggered.
  core.String? intentDisplayName;

  /// Score of the above intent.
  ///
  /// The higher it is the more likely a transition was missed on a given page.
  core.double? score;

  GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition({
    this.intentDisplayName,
    this.score,
  });

  GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition.fromJson(
    core.Map json_,
  ) : this(
        intentDisplayName: json_['intentDisplayName'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intentDisplayName != null) 'intentDisplayName': intentDisplayName!,
    if (score != null) 'score': score!,
  };
}

/// Metrics of each processing step.
class GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics {
  /// Processing latency of the step.
  core.String? latency;

  /// Name of the request processing step.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics({
    this.latency,
    this.name,
  });

  GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics.fromJson(
    core.Map json_,
  ) : this(
        latency: json_['latency'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (latency != null) 'latency': latency!,
    if (name != null) 'name': name!,
  };
}

/// Represents metrics for the conversation.
class GoogleCloudDialogflowCxV3beta1ConversationMetrics {
  /// The average confidence all of the Match in the conversation.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  core.double? averageMatchConfidence;

  /// A signal that indicates the interaction with the Dialogflow agent has
  /// ended.
  ///
  /// If any response has the ResponseMessage.end_interaction signal, this is
  /// set to true.
  core.bool? hasEndInteraction;

  /// Hands off conversation to a human agent.
  ///
  /// If any response has the ResponseMessage.live_agent_handoffsignal, this is
  /// set to true.
  core.bool? hasLiveAgentHandoff;

  /// Duration of all the input's audio in the conversation.
  core.String? inputAudioDuration;

  /// The number of interactions in the conversation.
  core.int? interactionCount;

  /// Match type counts.
  GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount?
  matchTypeCount;

  /// Maximum latency of the Webhook calls in the conversation.
  core.String? maxWebhookLatency;

  /// Duration of all the output's audio in the conversation.
  core.String? outputAudioDuration;

  /// Query input counts.
  GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount?
  queryInputCount;

  GoogleCloudDialogflowCxV3beta1ConversationMetrics({
    this.averageMatchConfidence,
    this.hasEndInteraction,
    this.hasLiveAgentHandoff,
    this.inputAudioDuration,
    this.interactionCount,
    this.matchTypeCount,
    this.maxWebhookLatency,
    this.outputAudioDuration,
    this.queryInputCount,
  });

  GoogleCloudDialogflowCxV3beta1ConversationMetrics.fromJson(core.Map json_)
    : this(
        averageMatchConfidence:
            (json_['averageMatchConfidence'] as core.num?)?.toDouble(),
        hasEndInteraction: json_['hasEndInteraction'] as core.bool?,
        hasLiveAgentHandoff: json_['hasLiveAgentHandoff'] as core.bool?,
        inputAudioDuration: json_['inputAudioDuration'] as core.String?,
        interactionCount: json_['interactionCount'] as core.int?,
        matchTypeCount:
            json_.containsKey('matchTypeCount')
                ? GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount.fromJson(
                  json_['matchTypeCount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxWebhookLatency: json_['maxWebhookLatency'] as core.String?,
        outputAudioDuration: json_['outputAudioDuration'] as core.String?,
        queryInputCount:
            json_.containsKey('queryInputCount')
                ? GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount.fromJson(
                  json_['queryInputCount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (averageMatchConfidence != null)
      'averageMatchConfidence': averageMatchConfidence!,
    if (hasEndInteraction != null) 'hasEndInteraction': hasEndInteraction!,
    if (hasLiveAgentHandoff != null)
      'hasLiveAgentHandoff': hasLiveAgentHandoff!,
    if (inputAudioDuration != null) 'inputAudioDuration': inputAudioDuration!,
    if (interactionCount != null) 'interactionCount': interactionCount!,
    if (matchTypeCount != null) 'matchTypeCount': matchTypeCount!,
    if (maxWebhookLatency != null) 'maxWebhookLatency': maxWebhookLatency!,
    if (outputAudioDuration != null)
      'outputAudioDuration': outputAudioDuration!,
    if (queryInputCount != null) 'queryInputCount': queryInputCount!,
  };
}

/// Count by Match.MatchType of the matches in the conversation.
class GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount {
  /// The number of matches with type Match.MatchType.DIRECT_INTENT.
  core.int? directIntentCount;

  /// The number of matches with type Match.MatchType.EVENT.
  core.int? eventCount;

  /// The number of matches with type Match.MatchType.INTENT.
  core.int? intentCount;

  /// The number of matches with type Match.MatchType.NO_INPUT.
  core.int? noInputCount;

  /// The number of matches with type Match.MatchType.NO_MATCH.
  core.int? noMatchCount;

  /// The number of matches with type Match.MatchType.PARAMETER_FILLING.
  core.int? parameterFillingCount;

  /// The number of matches with type Match.MatchType.MATCH_TYPE_UNSPECIFIED.
  core.int? unspecifiedCount;

  GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount({
    this.directIntentCount,
    this.eventCount,
    this.intentCount,
    this.noInputCount,
    this.noMatchCount,
    this.parameterFillingCount,
    this.unspecifiedCount,
  });

  GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount.fromJson(
    core.Map json_,
  ) : this(
        directIntentCount: json_['directIntentCount'] as core.int?,
        eventCount: json_['eventCount'] as core.int?,
        intentCount: json_['intentCount'] as core.int?,
        noInputCount: json_['noInputCount'] as core.int?,
        noMatchCount: json_['noMatchCount'] as core.int?,
        parameterFillingCount: json_['parameterFillingCount'] as core.int?,
        unspecifiedCount: json_['unspecifiedCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (directIntentCount != null) 'directIntentCount': directIntentCount!,
    if (eventCount != null) 'eventCount': eventCount!,
    if (intentCount != null) 'intentCount': intentCount!,
    if (noInputCount != null) 'noInputCount': noInputCount!,
    if (noMatchCount != null) 'noMatchCount': noMatchCount!,
    if (parameterFillingCount != null)
      'parameterFillingCount': parameterFillingCount!,
    if (unspecifiedCount != null) 'unspecifiedCount': unspecifiedCount!,
  };
}

/// Count by types of QueryInput of the requests in the conversation.
class GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount {
  /// The number of AudioInput in the conversation.
  core.int? audioCount;

  /// The number of DtmfInput in the conversation.
  core.int? dtmfCount;

  /// The number of EventInput in the conversation.
  core.int? eventCount;

  /// The number of IntentInput in the conversation.
  core.int? intentCount;

  /// The number of TextInput in the conversation.
  core.int? textCount;

  GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount({
    this.audioCount,
    this.dtmfCount,
    this.eventCount,
    this.intentCount,
    this.textCount,
  });

  GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount.fromJson(
    core.Map json_,
  ) : this(
        audioCount: json_['audioCount'] as core.int?,
        dtmfCount: json_['dtmfCount'] as core.int?,
        eventCount: json_['eventCount'] as core.int?,
        intentCount: json_['intentCount'] as core.int?,
        textCount: json_['textCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioCount != null) 'audioCount': audioCount!,
    if (dtmfCount != null) 'dtmfCount': dtmfCount!,
    if (eventCount != null) 'eventCount': eventCount!,
    if (intentCount != null) 'intentCount': intentCount!,
    if (textCount != null) 'textCount': textCount!,
  };
}

/// One interaction between a human and virtual agent.
///
/// The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3beta1ConversationTurn {
  /// The user input.
  GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput? userInput;

  /// The virtual agent output.
  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput?
  virtualAgentOutput;

  GoogleCloudDialogflowCxV3beta1ConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  GoogleCloudDialogflowCxV3beta1ConversationTurn.fromJson(core.Map json_)
    : this(
        userInput:
            json_.containsKey('userInput')
                ? GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.fromJson(
                  json_['userInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        virtualAgentOutput:
            json_.containsKey('virtualAgentOutput')
                ? GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromJson(
                  json_['virtualAgentOutput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userInput != null) 'userInput': userInput!,
    if (virtualAgentOutput != null) 'virtualAgentOutput': virtualAgentOutput!,
  };
}

/// The input from the human user.
class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput {
  /// Whether sentiment analysis is enabled.
  core.bool? enableSentimentAnalysis;

  /// Parameters that need to be injected into the conversation during intent
  /// detection.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? injectedParameters;

  /// Supports text input, event input, dtmf input in the test case.
  GoogleCloudDialogflowCxV3beta1QueryInput? input;

  /// If webhooks should be allowed to trigger in response to the user
  /// utterance.
  ///
  /// Often if parameters are injected, webhooks should not be enabled.
  core.bool? isWebhookEnabled;

  GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.fromJson(
    core.Map json_,
  ) : this(
        enableSentimentAnalysis: json_['enableSentimentAnalysis'] as core.bool?,
        injectedParameters:
            json_.containsKey('injectedParameters')
                ? json_['injectedParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        input:
            json_.containsKey('input')
                ? GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isWebhookEnabled: json_['isWebhookEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableSentimentAnalysis != null)
      'enableSentimentAnalysis': enableSentimentAnalysis!,
    if (injectedParameters != null) 'injectedParameters': injectedParameters!,
    if (input != null) 'input': input!,
    if (isWebhookEnabled != null) 'isWebhookEnabled': isWebhookEnabled!,
  };
}

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3beta1Page? currentPage;

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
  core.List<GoogleCloudDialogflowCxV3beta1TestRunDifference>? differences;

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
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessageText>? textResponses;

  /// The Intent that triggered the response.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3beta1Intent? triggeredIntent;

  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.diagnosticInfo,
    this.differences,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromJson(
    core.Map json_,
  ) : this(
        currentPage:
            json_.containsKey('currentPage')
                ? GoogleCloudDialogflowCxV3beta1Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        diagnosticInfo:
            json_.containsKey('diagnosticInfo')
                ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
                : null,
        differences:
            (json_['differences'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TestRunDifference.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sessionParameters:
            json_.containsKey('sessionParameters')
                ? json_['sessionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        status:
            json_.containsKey('status')
                ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        textResponses:
            (json_['textResponses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        triggeredIntent:
            json_.containsKey('triggeredIntent')
                ? GoogleCloudDialogflowCxV3beta1Intent.fromJson(
                  json_['triggeredIntent']
                      as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnection =
    $DataStoreConnection;

/// Data store connection feature output signals.
///
/// Might be only partially field if processing stop before the final answer.
/// Reasons for this can be, but are not limited to: empty UCS search results,
/// positive RAI check outcome, grounding failure, ...
class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals {
  /// The final compiled answer.
  ///
  /// Optional.
  core.String? answer;

  /// Diagnostic info related to the answer generation model call.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals?
  answerGenerationModelCallSignals;

  /// Answer parts with relevant citations.
  ///
  /// Concatenation of texts should add up the `answer` (not counting
  /// whitespaces).
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart>?
  answerParts;

  /// Snippets cited by the answer generation model from the most to least
  /// relevant.
  ///
  /// Optional.
  core.List<
    GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
  >?
  citedSnippets;

  /// Grounding signals.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals?
  groundingSignals;

  /// Diagnostic info related to the rewriter model call.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals?
  rewriterModelCallSignals;

  /// Rewritten string query used for search.
  ///
  /// Optional.
  core.String? rewrittenQuery;

  /// Safety check result.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals?
  safetySignals;

  /// Search snippets included in the answer generation prompt.
  ///
  /// Optional.
  core.List<
    GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
  >?
  searchSnippets;

  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals({
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

  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals.fromJson(
    core.Map json_,
  ) : this(
        answer: json_['answer'] as core.String?,
        answerGenerationModelCallSignals:
            json_.containsKey('answerGenerationModelCallSignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals.fromJson(
                  json_['answerGenerationModelCallSignals']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        answerParts:
            (json_['answerParts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        citedSnippets:
            (json_['citedSnippets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        groundingSignals:
            json_.containsKey('groundingSignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals.fromJson(
                  json_['groundingSignals']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rewriterModelCallSignals:
            json_.containsKey('rewriterModelCallSignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals.fromJson(
                  json_['rewriterModelCallSignals']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rewrittenQuery: json_['rewrittenQuery'] as core.String?,
        safetySignals:
            json_.containsKey('safetySignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals.fromJson(
                  json_['safetySignals'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchSnippets:
            (json_['searchSnippets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals =
    $ModelCallSignals;

/// Answer part with citation.
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart =
    $DataStoreConnectionSignalsAnswerPart;

/// Snippet cited by the answer generation model.
class GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet {
  /// Details of the snippet.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet?
  searchSnippet;

  /// Index of the snippet in `search_snippets` field.
  core.int? snippetIndex;

  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet({
    this.searchSnippet,
    this.snippetIndex,
  });

  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet.fromJson(
    core.Map json_,
  ) : this(
        searchSnippet:
            json_.containsKey('searchSnippet')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet.fromJson(
                  json_['searchSnippet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        snippetIndex: json_['snippetIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (searchSnippet != null) 'searchSnippet': searchSnippet!,
    if (snippetIndex != null) 'snippetIndex': snippetIndex!,
  };
}

/// Grounding signals.
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals =
    $DataStoreConnectionSignalsGroundingSignals;

/// Diagnostic info related to the rewriter model call.
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals =
    $ModelCallSignals;

/// Safety check results.
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals =
    $DataStoreConnectionSignalsSafetySignals;

/// Search snippet details.
typedef GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet =
    $DataStoreConnectionSignalsSearchSnippet;

/// The request message for Environments.DeployFlow.
typedef GoogleCloudDialogflowCxV3beta1DeployFlowRequest = $DeployFlowRequest;

/// Represents a deployment in an environment.
///
/// A deployment happens when a flow version configured to be active in the
/// environment. You can configure running pre-deployment steps, e.g. running
/// validation test cases, experiment auto-rollout, etc.
class GoogleCloudDialogflowCxV3beta1Deployment {
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
  GoogleCloudDialogflowCxV3beta1DeploymentResult? result;

  /// Start time of this deployment.
  core.String? startTime;

  /// The current state of the deployment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "RUNNING" : The deployment is running.
  /// - "SUCCEEDED" : The deployment succeeded.
  /// - "FAILED" : The deployment failed.
  core.String? state;

  GoogleCloudDialogflowCxV3beta1Deployment({
    this.endTime,
    this.flowVersion,
    this.name,
    this.result,
    this.startTime,
    this.state,
  });

  GoogleCloudDialogflowCxV3beta1Deployment.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        flowVersion: json_['flowVersion'] as core.String?,
        name: json_['name'] as core.String?,
        result:
            json_.containsKey('result')
                ? GoogleCloudDialogflowCxV3beta1DeploymentResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
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
typedef GoogleCloudDialogflowCxV3beta1DeploymentResult = $DeploymentResult;

/// The request to detect user's intent.
class GoogleCloudDialogflowCxV3beta1DetectIntentRequest {
  /// Instructs the speech synthesizer how to generate the output audio.
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig? outputAudioConfig;

  /// The input specification.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowCxV3beta1QueryParameters? queryParams;

  /// The name of the session this query is sent to.
  ///
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
  ///
  /// Required.
  core.String? session;

  GoogleCloudDialogflowCxV3beta1DetectIntentRequest({
    this.outputAudioConfig,
    this.queryInput,
    this.queryParams,
    this.session,
  });

  GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(core.Map json_)
    : this(
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryInput:
            json_.containsKey('queryInput')
                ? GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(
                  json_['queryInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryParams:
            json_.containsKey('queryParams')
                ? GoogleCloudDialogflowCxV3beta1QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        session: json_['session'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
    if (queryInput != null) 'queryInput': queryInput!,
    if (queryParams != null) 'queryParams': queryParams!,
    if (session != null) 'session': session!,
  };
}

/// The message returned from the DetectIntent method.
class GoogleCloudDialogflowCxV3beta1DetectIntentResponse {
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
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig? outputAudioConfig;

  /// The result of the conversational query.
  GoogleCloudDialogflowCxV3beta1QueryResult? queryResult;

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

  GoogleCloudDialogflowCxV3beta1DetectIntentResponse({
    this.allowCancellation,
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.responseType,
  });

  GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(core.Map json_)
    : this(
        allowCancellation: json_['allowCancellation'] as core.bool?,
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryResult:
            json_.containsKey('queryResult')
                ? GoogleCloudDialogflowCxV3beta1QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseId: json_['responseId'] as core.String?,
        responseType: json_['responseType'] as core.String?,
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
typedef GoogleCloudDialogflowCxV3beta1DtmfInput = $DtmfInput;

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
class GoogleCloudDialogflowCxV3beta1EntityType {
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
  core.List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>? entities;

  /// Collection of exceptional words and phrases that shouldn't be matched.
  ///
  /// For example, if you have a size entity type with entry `giant`(an
  /// adjective), you might consider adding `giants`(a noun) as an exclusion. If
  /// the kind of entity type is `KIND_MAP`, then the phrases specified by
  /// entities and excluded phrases should be mutually exclusive.
  core.List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>?
  excludedPhrases;

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
  /// to the entity type will be replaced by parameter name during logging.
  core.bool? redact;

  GoogleCloudDialogflowCxV3beta1EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    this.kind,
    this.name,
    this.redact,
  });

  GoogleCloudDialogflowCxV3beta1EntityType.fromJson(core.Map json_)
    : this(
        autoExpansionMode: json_['autoExpansionMode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableFuzzyExtraction: json_['enableFuzzyExtraction'] as core.bool?,
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        excludedPhrases:
            (json_['excludedPhrases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        redact: json_['redact'] as core.bool?,
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
typedef GoogleCloudDialogflowCxV3beta1EntityTypeEntity = $EntityTypeEntity01;

/// An excluded entity phrase that should not be matched.
typedef GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase =
    $EntityTypeExcludedPhrase;

/// Represents an environment for an agent.
///
/// You can create multiple versions of your agent and publish them to separate
/// environments. When you edit an agent, you are editing the draft agent. At
/// any point, you can save the draft agent as an agent version, which is an
/// immutable snapshot of your agent. When you save the draft agent, it is
/// published to the default environment. When you create agent versions, you
/// can publish them to custom environments. You can create a variety of custom
/// environments for testing, development, production, etc.
class GoogleCloudDialogflowCxV3beta1Environment {
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
  GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig? testCasesConfig;

  /// Update time of this environment.
  ///
  /// Output only.
  core.String? updateTime;

  /// A list of configurations for flow versions.
  ///
  /// You should include version configs for all flows that are reachable from
  /// `Start Flow` in the agent. Otherwise, an error will be returned.
  core.List<GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>?
  versionConfigs;

  /// The webhook configuration for this environment.
  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig? webhookConfig;

  GoogleCloudDialogflowCxV3beta1Environment({
    this.description,
    this.displayName,
    this.name,
    this.testCasesConfig,
    this.updateTime,
    this.versionConfigs,
    this.webhookConfig,
  });

  GoogleCloudDialogflowCxV3beta1Environment.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        testCasesConfig:
            json_.containsKey('testCasesConfig')
                ? GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig.fromJson(
                  json_['testCasesConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        versionConfigs:
            (json_['versionConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        webhookConfig:
            json_.containsKey('webhookConfig')
                ? GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromJson(
                  json_['webhookConfig'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig =
    $EnvironmentTestCasesConfig;

/// Configuration for the version.
typedef GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig =
    $EnvironmentVersionConfig;

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment.
  ///
  /// The webhook must exist in the agent. You can override fields in
  /// `generic_web_service` and `service_directory`.
  core.List<GoogleCloudDialogflowCxV3beta1Webhook>? webhookOverrides;

  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromJson(
    core.Map json_,
  ) : this(
        webhookOverrides:
            (json_['webhookOverrides'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (webhookOverrides != null) 'webhookOverrides': webhookOverrides!,
  };
}

/// Event represents the event sent by the customer.
class GoogleCloudDialogflowCxV3beta1Event {
  /// Name of the event.
  ///
  /// Required.
  core.String? event;

  /// Unstructured text payload of the event.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDialogflowCxV3beta1Event({this.event, this.text});

  GoogleCloudDialogflowCxV3beta1Event.fromJson(core.Map json_)
    : this(
        event: json_['event'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (event != null) 'event': event!,
    if (text != null) 'text': text!,
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
class GoogleCloudDialogflowCxV3beta1EventHandler {
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

  /// The target playbook to transition to.
  ///
  /// Format: `projects//locations//agents//playbooks/`.
  core.String? targetPlaybook;

  /// The fulfillment to call when the event occurs.
  ///
  /// Handling webhook errors with a fulfillment enabled with webhook could
  /// cause infinite loop. It is invalid to specify such fulfillment for a
  /// handler handling webhooks.
  GoogleCloudDialogflowCxV3beta1Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3beta1EventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.targetPlaybook,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(core.Map json_)
    : this(
        event: json_['event'] as core.String?,
        name: json_['name'] as core.String?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        targetPlaybook: json_['targetPlaybook'] as core.String?,
        triggerFulfillment:
            json_.containsKey('triggerFulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (event != null) 'event': event!,
    if (name != null) 'name': name!,
    if (targetFlow != null) 'targetFlow': targetFlow!,
    if (targetPage != null) 'targetPage': targetPage!,
    if (targetPlaybook != null) 'targetPlaybook': targetPlaybook!,
    if (triggerFulfillment != null) 'triggerFulfillment': triggerFulfillment!,
  };
}

/// Represents the event to trigger.
typedef GoogleCloudDialogflowCxV3beta1EventInput = $EventInput01;

/// Example represents a sample execution of the playbook in the conversation.
///
/// An example consists of a list of ordered actions performed by end user or
/// Dialogflow agent according the playbook instructions to fulfill the task.
class GoogleCloudDialogflowCxV3beta1Example {
  /// The ordered list of actions performed by the end user and the Dialogflow
  /// agent.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3beta1Action>? actions;

  /// Example's output state.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED" : Unspecified output.
  /// - "OUTPUT_STATE_OK" : Succeeded.
  /// - "OUTPUT_STATE_CANCELLED" : Cancelled.
  /// - "OUTPUT_STATE_FAILED" : Failed.
  /// - "OUTPUT_STATE_ESCALATED" : Escalated.
  /// - "OUTPUT_STATE_PENDING" : Pending.
  core.String? conversationState;

  /// The timestamp of initial example creation.
  ///
  /// Output only.
  core.String? createTime;

  /// The high level concise description of the example.
  ///
  /// The max number of characters is 200.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the example.
  ///
  /// Required.
  core.String? displayName;

  /// The language code of the example.
  ///
  /// If not specified, the agent's default language is used. Note: languages
  /// must be enabled in the agent before they can be used. Note: example's
  /// language code is not currently used in dialogflow agents.
  ///
  /// Optional.
  core.String? languageCode;

  /// The unique identifier of the playbook example.
  ///
  /// Format: `projects//locations//agents//playbooks//examples/`.
  core.String? name;

  /// The input to the playbook in the example.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookInput? playbookInput;

  /// The output of the playbook in the example.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookOutput? playbookOutput;

  /// Estimated number of tokes current example takes when sent to the LLM.
  ///
  /// Output only.
  core.String? tokenCount;

  /// Last time the example was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowCxV3beta1Example({
    this.actions,
    this.conversationState,
    this.createTime,
    this.description,
    this.displayName,
    this.languageCode,
    this.name,
    this.playbookInput,
    this.playbookOutput,
    this.tokenCount,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3beta1Example.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Action.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        conversationState: json_['conversationState'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        playbookInput:
            json_.containsKey('playbookInput')
                ? GoogleCloudDialogflowCxV3beta1PlaybookInput.fromJson(
                  json_['playbookInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookOutput:
            json_.containsKey('playbookOutput')
                ? GoogleCloudDialogflowCxV3beta1PlaybookOutput.fromJson(
                  json_['playbookOutput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokenCount: json_['tokenCount'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (conversationState != null) 'conversationState': conversationState!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (name != null) 'name': name!,
    if (playbookInput != null) 'playbookInput': playbookInput!,
    if (playbookOutput != null) 'playbookOutput': playbookOutput!,
    if (tokenCount != null) 'tokenCount': tokenCount!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Exception thrown during the execution of an action.
class GoogleCloudDialogflowCxV3beta1ExceptionDetail {
  /// The error message.
  ///
  /// Optional.
  core.String? errorMessage;

  GoogleCloudDialogflowCxV3beta1ExceptionDetail({this.errorMessage});

  GoogleCloudDialogflowCxV3beta1ExceptionDetail.fromJson(core.Map json_)
    : this(errorMessage: json_['errorMessage'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorMessage != null) 'errorMessage': errorMessage!,
  };
}

/// Represents an experiment in an environment.
class GoogleCloudDialogflowCxV3beta1Experiment {
  /// Creation time of this experiment.
  core.String? createTime;

  /// The definition of the experiment.
  GoogleCloudDialogflowCxV3beta1ExperimentDefinition? definition;

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

  /// Maximum number of days to run the experiment.
  ///
  /// If auto-rollout is not enabled, default value and maximum will be 30 days.
  /// If auto-rollout is enabled, default value and maximum will be 6 days.
  core.String? experimentLength;

  /// Last update time of this experiment.
  core.String? lastUpdateTime;

  /// The name of the experiment.
  ///
  /// Format: projects//locations//agents//environments//experiments/.
  core.String? name;

  /// Inference result of the experiment.
  GoogleCloudDialogflowCxV3beta1ExperimentResult? result;

  /// The configuration for auto rollout.
  ///
  /// If set, there should be exactly two variants in the experiment (control
  /// variant being the default version of the flow), the traffic allocation for
  /// the non-control variant will gradually increase to 100% when conditions
  /// are met, and eventually replace the control variant to become the default
  /// version of the flow.
  GoogleCloudDialogflowCxV3beta1RolloutConfig? rolloutConfig;

  /// The reason why rollout has failed.
  ///
  /// Should only be set when state is ROLLOUT_FAILED.
  core.String? rolloutFailureReason;

  /// State of the auto rollout process.
  GoogleCloudDialogflowCxV3beta1RolloutState? rolloutState;

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
  core.List<GoogleCloudDialogflowCxV3beta1VariantsHistory>? variantsHistory;

  GoogleCloudDialogflowCxV3beta1Experiment({
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

  GoogleCloudDialogflowCxV3beta1Experiment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        definition:
            json_.containsKey('definition')
                ? GoogleCloudDialogflowCxV3beta1ExperimentDefinition.fromJson(
                  json_['definition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        experimentLength: json_['experimentLength'] as core.String?,
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        name: json_['name'] as core.String?,
        result:
            json_.containsKey('result')
                ? GoogleCloudDialogflowCxV3beta1ExperimentResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rolloutConfig:
            json_.containsKey('rolloutConfig')
                ? GoogleCloudDialogflowCxV3beta1RolloutConfig.fromJson(
                  json_['rolloutConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rolloutFailureReason: json_['rolloutFailureReason'] as core.String?,
        rolloutState:
            json_.containsKey('rolloutState')
                ? GoogleCloudDialogflowCxV3beta1RolloutState.fromJson(
                  json_['rolloutState'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        variantsHistory:
            (json_['variantsHistory'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1VariantsHistory.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
class GoogleCloudDialogflowCxV3beta1ExperimentDefinition {
  /// The condition defines which subset of sessions are selected for this
  /// experiment.
  ///
  /// If not specified, all sessions are eligible. E.g.
  /// "query_input.language_code=en" See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? condition;

  /// The flow versions as the variants of this experiment.
  GoogleCloudDialogflowCxV3beta1VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3beta1ExperimentDefinition({
    this.condition,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3beta1ExperimentDefinition.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        versionVariants:
            json_.containsKey('versionVariants')
                ? GoogleCloudDialogflowCxV3beta1VersionVariants.fromJson(
                  json_['versionVariants']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (versionVariants != null) 'versionVariants': versionVariants!,
  };
}

/// The inference result which includes an objective metric to optimize and the
/// confidence interval.
class GoogleCloudDialogflowCxV3beta1ExperimentResult {
  /// The last time the experiment's stats data was updated.
  ///
  /// Will have default value if stats have never been computed for this
  /// experiment.
  core.String? lastUpdateTime;

  /// Version variants and metrics.
  core.List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>?
  versionMetrics;

  GoogleCloudDialogflowCxV3beta1ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  GoogleCloudDialogflowCxV3beta1ExperimentResult.fromJson(core.Map json_)
    : this(
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        versionMetrics:
            (json_['versionMetrics'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
    if (versionMetrics != null) 'versionMetrics': versionMetrics!,
  };
}

/// A confidence interval is a range of possible values for the experiment
/// objective you are trying to measure.
typedef GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval =
    $ExperimentResultConfidenceInterval;

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric {
  /// The probability that the treatment is better than all other treatments in
  /// the experiment
  GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval?
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

  GoogleCloudDialogflowCxV3beta1ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromJson(core.Map json_)
    : this(
        confidenceInterval:
            json_.containsKey('confidenceInterval')
                ? GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval.fromJson(
                  json_['confidenceInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        count: (json_['count'] as core.num?)?.toDouble(),
        countType: json_['countType'] as core.String?,
        ratio: (json_['ratio'] as core.num?)?.toDouble(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidenceInterval != null) 'confidenceInterval': confidenceInterval!,
    if (count != null) 'count': count!,
    if (countType != null) 'countType': countType!,
    if (ratio != null) 'ratio': ratio!,
    if (type != null) 'type': type!,
  };
}

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics {
  /// The metrics and corresponding confidence intervals in the inference
  /// result.
  core.List<GoogleCloudDialogflowCxV3beta1ExperimentResultMetric>? metrics;

  /// Number of sessions that were allocated to this version.
  core.int? sessionCount;

  /// The name of the flow Version.
  ///
  /// Format: `projects//locations//agents//flows//versions/`.
  core.String? version;

  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics.fromJson(
    core.Map json_,
  ) : this(
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sessionCount: json_['sessionCount'] as core.int?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metrics != null) 'metrics': metrics!,
    if (sessionCount != null) 'sessionCount': sessionCount!,
    if (version != null) 'version': version!,
  };
}

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowCxV3beta1ExportAgentRequest {
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
  GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination?
  gitDestination;

  /// Whether to include BigQuery Export setting.
  ///
  /// Optional.
  core.bool? includeBigqueryExportSettings;

  GoogleCloudDialogflowCxV3beta1ExportAgentRequest({
    this.agentUri,
    this.dataFormat,
    this.environment,
    this.gitDestination,
    this.includeBigqueryExportSettings,
  });

  GoogleCloudDialogflowCxV3beta1ExportAgentRequest.fromJson(core.Map json_)
    : this(
        agentUri: json_['agentUri'] as core.String?,
        dataFormat: json_['dataFormat'] as core.String?,
        environment: json_['environment'] as core.String?,
        gitDestination:
            json_.containsKey('gitDestination')
                ? GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination.fromJson(
                  json_['gitDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        includeBigqueryExportSettings:
            json_['includeBigqueryExportSettings'] as core.bool?,
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
typedef GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination =
    $ExportAgentRequestGitDestination;

/// The request message for EntityTypes.ExportEntityTypes.
typedef GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest =
    $ExportEntityTypesRequest;

/// The request message for Flows.ExportFlow.
typedef GoogleCloudDialogflowCxV3beta1ExportFlowRequest = $ExportFlowRequest;

/// The request message for Intents.ExportIntents.
typedef GoogleCloudDialogflowCxV3beta1ExportIntentsRequest =
    $ExportIntentsRequest;

/// The request message for Playbooks.ExportPlaybook.
typedef GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest =
    $ExportPlaybookRequest;

/// The request message for TestCases.ExportTestCases.
typedef GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest =
    $ExportTestCasesRequest;

/// The request message for Tools.ExportTools.
class GoogleCloudDialogflowCxV3beta1ExportToolsRequest {
  /// The data format of the exported tools.
  ///
  /// If not specified, `BLOB` is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Unspecified format. Treated as `BLOB`.
  /// - "BLOB" : Tools will be exported as raw bytes.
  core.String? dataFormat;

  /// The name of the tools to export.
  ///
  /// Format: `projects//locations//agents//tools/`.
  ///
  /// Required.
  core.List<core.String>? tools;

  /// The option to return the serialized tools inline.
  ///
  /// Optional.
  core.bool? toolsContentInline;

  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the tools to.
  ///
  /// The format of this URI must be `gs:///`. Dialogflow performs a write
  /// operation for the Cloud Storage object on the caller's behalf, so your
  /// request authentication must have write permissions for the object. For
  /// more information, see
  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  ///
  /// Optional.
  core.String? toolsUri;

  GoogleCloudDialogflowCxV3beta1ExportToolsRequest({
    this.dataFormat,
    this.tools,
    this.toolsContentInline,
    this.toolsUri,
  });

  GoogleCloudDialogflowCxV3beta1ExportToolsRequest.fromJson(core.Map json_)
    : this(
        dataFormat: json_['dataFormat'] as core.String?,
        tools:
            (json_['tools'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        toolsContentInline: json_['toolsContentInline'] as core.bool?,
        toolsUri: json_['toolsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataFormat != null) 'dataFormat': dataFormat!,
    if (tools != null) 'tools': tools!,
    if (toolsContentInline != null) 'toolsContentInline': toolsContentInline!,
    if (toolsUri != null) 'toolsUri': toolsUri!,
  };
}

/// Filter specifications for data stores.
class GoogleCloudDialogflowCxV3beta1FilterSpecs {
  /// Data Stores where the boosting configuration is applied.
  ///
  /// The full names of the referenced data stores. Formats:
  /// \`projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}\`
  /// \`projects/{project}/locations/{location}/dataStores/{data_store}
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

  GoogleCloudDialogflowCxV3beta1FilterSpecs({this.dataStores, this.filter});

  GoogleCloudDialogflowCxV3beta1FilterSpecs.fromJson(core.Map json_)
    : this(
        dataStores:
            (json_['dataStores'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filter: json_['filter'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1Flow {
  /// Hierarchical advanced settings for this flow.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

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
  core.List<GoogleCloudDialogflowCxV3beta1EventHandler>? eventHandlers;

  /// Knowledge connector configuration.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings?
  knowledgeConnectorSettings;

  /// Indicates whether the flow is locked for changes.
  ///
  /// If the flow is locked, modifications to the flow will be rejected.
  core.bool? locked;

  /// Multi-lingual agent settings for this flow.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings?
  multiLanguageSettings;

  /// The unique identifier of the flow.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? name;

  /// NLU related settings of the flow.
  GoogleCloudDialogflowCxV3beta1NluSettings? nluSettings;

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
  /// flow. TransitionRoutes are evaluated in the following order: *
  /// TransitionRoutes with intent specified. * TransitionRoutes with only
  /// condition specified. TransitionRoutes with intent specified are inherited
  /// by pages in the flow.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3beta1Flow({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.eventHandlers,
    this.knowledgeConnectorSettings,
    this.locked,
    this.multiLanguageSettings,
    this.name,
    this.nluSettings,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3beta1Flow.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        eventHandlers:
            (json_['eventHandlers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
                ? GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromJson(
                  json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        locked: json_['locked'] as core.bool?,
        multiLanguageSettings:
            json_.containsKey('multiLanguageSettings')
                ? GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings.fromJson(
                  json_['multiLanguageSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nluSettings:
            json_.containsKey('nluSettings')
                ? GoogleCloudDialogflowCxV3beta1NluSettings.fromJson(
                  json_['nluSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitionRouteGroups:
            (json_['transitionRouteGroups'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        transitionRoutes:
            (json_['transitionRoutes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedSettings != null) 'advancedSettings': advancedSettings!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (eventHandlers != null) 'eventHandlers': eventHandlers!,
    if (knowledgeConnectorSettings != null)
      'knowledgeConnectorSettings': knowledgeConnectorSettings!,
    if (locked != null) 'locked': locked!,
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
class GoogleCloudDialogflowCxV3beta1FlowImportStrategy {
  /// Global flow import strategy for resource conflict resolution.
  ///
  /// The import Import strategy for resource conflict resolution, applied
  /// globally throughout the flow. It will be applied for all display name
  /// conflicts in the imported content. If not specified, 'CREATE_NEW' is
  /// assumed.
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

  GoogleCloudDialogflowCxV3beta1FlowImportStrategy({this.globalImportStrategy});

  GoogleCloudDialogflowCxV3beta1FlowImportStrategy.fromJson(core.Map json_)
    : this(globalImportStrategy: json_['globalImportStrategy'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (globalImportStrategy != null)
      'globalImportStrategy': globalImportStrategy!,
  };
}

/// Stores metadata of the invocation of a child CX flow.
///
/// Flow invocation actions enter the child flow.
class GoogleCloudDialogflowCxV3beta1FlowInvocation {
  /// The display name of the flow.
  ///
  /// Output only.
  core.String? displayName;

  /// The unique identifier of the flow.
  ///
  /// Format: `projects//locations//agents/`.
  ///
  /// Required.
  core.String? flow;

  /// Flow invocation's output state.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED" : Unspecified output.
  /// - "OUTPUT_STATE_OK" : Succeeded.
  /// - "OUTPUT_STATE_CANCELLED" : Cancelled.
  /// - "OUTPUT_STATE_FAILED" : Failed.
  /// - "OUTPUT_STATE_ESCALATED" : Escalated.
  /// - "OUTPUT_STATE_PENDING" : Pending.
  core.String? flowState;

  /// A list of input parameters for the flow.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputActionParameters;

  /// A list of output parameters generated by the flow invocation.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputActionParameters;

  GoogleCloudDialogflowCxV3beta1FlowInvocation({
    this.displayName,
    this.flow,
    this.flowState,
    this.inputActionParameters,
    this.outputActionParameters,
  });

  GoogleCloudDialogflowCxV3beta1FlowInvocation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        flow: json_['flow'] as core.String?,
        flowState: json_['flowState'] as core.String?,
        inputActionParameters:
            json_.containsKey('inputActionParameters')
                ? json_['inputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        outputActionParameters:
            json_.containsKey('outputActionParameters')
                ? json_['outputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (flow != null) 'flow': flow!,
    if (flowState != null) 'flowState': flowState!,
    if (inputActionParameters != null)
      'inputActionParameters': inputActionParameters!,
    if (outputActionParameters != null)
      'outputActionParameters': outputActionParameters!,
  };
}

/// Settings for multi-lingual agents.
typedef GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings =
    $FlowMultiLanguageSettings;

/// Stores metadata of the transition to a target CX flow.
///
/// Flow transition actions exit the caller playbook and enter the child flow.
class GoogleCloudDialogflowCxV3beta1FlowTransition {
  /// The display name of the flow.
  ///
  /// Output only.
  core.String? displayName;

  /// The unique identifier of the flow.
  ///
  /// Format: `projects//locations//agents/`.
  ///
  /// Required.
  core.String? flow;

  /// A list of input parameters for the action.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.Object?>? inputActionParameters;

  GoogleCloudDialogflowCxV3beta1FlowTransition({
    this.displayName,
    this.flow,
    this.inputActionParameters,
  });

  GoogleCloudDialogflowCxV3beta1FlowTransition.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        flow: json_['flow'] as core.String?,
        inputActionParameters:
            json_.containsKey('inputActionParameters')
                ? json_['inputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (flow != null) 'flow': flow!,
    if (inputActionParameters != null)
      'inputActionParameters': inputActionParameters!,
  };
}

/// The response message for Flows.GetFlowValidationResult.
class GoogleCloudDialogflowCxV3beta1FlowValidationResult {
  /// The unique identifier of the flow validation result.
  ///
  /// Format: `projects//locations//agents//flows//validationResult`.
  core.String? name;

  /// Last time the flow was validated.
  core.String? updateTime;

  /// Contains all validation messages.
  core.List<GoogleCloudDialogflowCxV3beta1ValidationMessage>?
  validationMessages;

  GoogleCloudDialogflowCxV3beta1FlowValidationResult({
    this.name,
    this.updateTime,
    this.validationMessages,
  });

  GoogleCloudDialogflowCxV3beta1FlowValidationResult.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        validationMessages:
            (json_['validationMessages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ValidationMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (validationMessages != null) 'validationMessages': validationMessages!,
  };
}

/// A form is a data model that groups related parameters that can be collected
/// from the user.
///
/// The process in which the agent prompts the user and collects parameter
/// values from the user is called form filling. A form can be added to a page.
/// When form filling is done, the filled parameters will be written to the
/// session.
class GoogleCloudDialogflowCxV3beta1Form {
  /// Parameters to collect from the user.
  core.List<GoogleCloudDialogflowCxV3beta1FormParameter>? parameters;

  GoogleCloudDialogflowCxV3beta1Form({this.parameters});

  GoogleCloudDialogflowCxV3beta1Form.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FormParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
  };
}

/// Represents a form parameter.
class GoogleCloudDialogflowCxV3beta1FormParameter {
  /// Hierarchical advanced settings for this parameter.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

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
  GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior? fillBehavior;

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

  GoogleCloudDialogflowCxV3beta1FormParameter({
    this.advancedSettings,
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.fillBehavior,
    this.isList,
    this.redact,
    this.required,
  });

  GoogleCloudDialogflowCxV3beta1FormParameter.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultValue: json_['defaultValue'],
        displayName: json_['displayName'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        fillBehavior:
            json_.containsKey('fillBehavior')
                ? GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior.fromJson(
                  json_['fillBehavior'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isList: json_['isList'] as core.bool?,
        redact: json_['redact'] as core.bool?,
        required: json_['required'] as core.bool?,
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
class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior {
  /// The fulfillment to provide the initial prompt that the agent can present
  /// to the user in order to fill the parameter.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1Fulfillment? initialPromptFulfillment;

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
  core.List<GoogleCloudDialogflowCxV3beta1EventHandler>? repromptEventHandlers;

  GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior({
    this.initialPromptFulfillment,
    this.repromptEventHandlers,
  });

  GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior.fromJson(
    core.Map json_,
  ) : this(
        initialPromptFulfillment:
            json_.containsKey('initialPromptFulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['initialPromptFulfillment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        repromptEventHandlers:
            (json_['repromptEventHandlers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (initialPromptFulfillment != null)
      'initialPromptFulfillment': initialPromptFulfillment!,
    if (repromptEventHandlers != null)
      'repromptEventHandlers': repromptEventHandlers!,
  };
}

/// Request of FulfillIntent
class GoogleCloudDialogflowCxV3beta1FulfillIntentRequest {
  /// The matched intent/event to fulfill.
  GoogleCloudDialogflowCxV3beta1Match? match;

  /// Must be same as the corresponding MatchIntent request, otherwise the
  /// behavior is undefined.
  GoogleCloudDialogflowCxV3beta1MatchIntentRequest? matchIntentRequest;

  /// Instructs the speech synthesizer how to generate output audio.
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig? outputAudioConfig;

  GoogleCloudDialogflowCxV3beta1FulfillIntentRequest({
    this.match,
    this.matchIntentRequest,
    this.outputAudioConfig,
  });

  GoogleCloudDialogflowCxV3beta1FulfillIntentRequest.fromJson(core.Map json_)
    : this(
        match:
            json_.containsKey('match')
                ? GoogleCloudDialogflowCxV3beta1Match.fromJson(
                  json_['match'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matchIntentRequest:
            json_.containsKey('matchIntentRequest')
                ? GoogleCloudDialogflowCxV3beta1MatchIntentRequest.fromJson(
                  json_['matchIntentRequest']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (match != null) 'match': match!,
    if (matchIntentRequest != null) 'matchIntentRequest': matchIntentRequest!,
    if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
  };
}

/// Response of FulfillIntent
class GoogleCloudDialogflowCxV3beta1FulfillIntentResponse {
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
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig? outputAudioConfig;

  /// The result of the conversational query.
  GoogleCloudDialogflowCxV3beta1QueryResult? queryResult;

  /// The unique identifier of the response.
  ///
  /// It can be used to locate a response in the training example set or for
  /// reporting issues.
  ///
  /// Output only.
  core.String? responseId;

  GoogleCloudDialogflowCxV3beta1FulfillIntentResponse({
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
  });

  GoogleCloudDialogflowCxV3beta1FulfillIntentResponse.fromJson(core.Map json_)
    : this(
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryResult:
            json_.containsKey('queryResult')
                ? GoogleCloudDialogflowCxV3beta1QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseId: json_['responseId'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1Fulfillment {
  /// Hierarchical advanced settings for this fulfillment.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

  /// Conditional cases for this fulfillment.
  core.List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>?
  conditionalCases;

  /// If the flag is true, the agent will utilize LLM to generate a text
  /// response.
  ///
  /// If LLM generation fails, the defined responses in the fulfillment will be
  /// respected. This flag is only useful for fulfillments associated with
  /// no-match event handlers.
  core.bool? enableGenerativeFallback;

  /// A list of Generators to be called during this fulfillment.
  core.List<GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings>?
  generators;

  /// The list of rich message responses to present to the user.
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessage>? messages;

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
  core.List<GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>?
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

  GoogleCloudDialogflowCxV3beta1Fulfillment({
    this.advancedSettings,
    this.conditionalCases,
    this.enableGenerativeFallback,
    this.generators,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conditionalCases:
            (json_['conditionalCases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        enableGenerativeFallback:
            json_['enableGenerativeFallback'] as core.bool?,
        generators:
            (json_['generators'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        returnPartialResponses: json_['returnPartialResponses'] as core.bool?,
        setParameterActions:
            (json_['setParameterActions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tag: json_['tag'] as core.String?,
        webhook: json_['webhook'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedSettings != null) 'advancedSettings': advancedSettings!,
    if (conditionalCases != null) 'conditionalCases': conditionalCases!,
    if (enableGenerativeFallback != null)
      'enableGenerativeFallback': enableGenerativeFallback!,
    if (generators != null) 'generators': generators!,
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
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases {
  /// A list of cascading if-else conditions.
  core.List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>?
  cases;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases({this.cases});

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromJson(
    core.Map json_,
  ) : this(
        cases:
            (json_['cases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cases != null) 'cases': cases!,
  };
}

/// Each case has a Boolean condition.
///
/// When it is evaluated to be True, the corresponding messages will be selected
/// and evaluated recursively.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase {
  /// A list of case content.
  core.List<
    GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
  >?
  caseContent;

  /// The condition to activate and select this case.
  ///
  /// Empty means the condition is always true. The condition is evaluated
  /// against form parameters or session parameters. See the
  /// [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  core.String? condition;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase.fromJson(
    core.Map json_,
  ) : this(
        caseContent:
            (json_['caseContent'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caseContent != null) 'caseContent': caseContent!,
    if (condition != null) 'condition': condition!,
  };
}

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent {
  /// Additional cases to be evaluated.
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases? additionalCases;

  /// Returned message.
  GoogleCloudDialogflowCxV3beta1ResponseMessage? message;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent({
    this.additionalCases,
    this.message,
  });

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromJson(
    core.Map json_,
  ) : this(
        additionalCases:
            json_.containsKey('additionalCases')
                ? GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromJson(
                  json_['additionalCases']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        message:
            json_.containsKey('message')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalCases != null) 'additionalCases': additionalCases!,
    if (message != null) 'message': message!,
  };
}

/// Generator settings used by the LLM to generate a text response.
typedef GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings =
    $FulfillmentGeneratorSettings;

/// Setting a parameter value.
typedef GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction =
    $FulfillmentSetParameterAction;

/// Google Cloud Storage location for a Dialogflow operation that writes or
/// exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
typedef GoogleCloudDialogflowCxV3beta1GcsDestination = $GcsDestination03;

/// Represents the information of a query if handled by generative agent
/// resources.
class GoogleCloudDialogflowCxV3beta1GenerativeInfo {
  /// The actions performed by the generative playbook for the current agent
  /// response.
  GoogleCloudDialogflowCxV3beta1Example? actionTracingInfo;

  /// The stack of playbooks that the conversation has currently entered, with
  /// the most recent one on the top.
  core.List<core.String>? currentPlaybooks;

  GoogleCloudDialogflowCxV3beta1GenerativeInfo({
    this.actionTracingInfo,
    this.currentPlaybooks,
  });

  GoogleCloudDialogflowCxV3beta1GenerativeInfo.fromJson(core.Map json_)
    : this(
        actionTracingInfo:
            json_.containsKey('actionTracingInfo')
                ? GoogleCloudDialogflowCxV3beta1Example.fromJson(
                  json_['actionTracingInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        currentPlaybooks:
            (json_['currentPlaybooks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionTracingInfo != null) 'actionTracingInfo': actionTracingInfo!,
    if (currentPlaybooks != null) 'currentPlaybooks': currentPlaybooks!,
  };
}

/// Settings for Generative AI.
class GoogleCloudDialogflowCxV3beta1GenerativeSettings {
  /// Settings for Generative Fallback.
  GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings?
  fallbackSettings;

  /// Settings for Generative Safety.
  GoogleCloudDialogflowCxV3beta1SafetySettings? generativeSafetySettings;

  /// Settings for knowledge connector.
  GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings?
  knowledgeConnectorSettings;

  /// Language for this settings.
  core.String? languageCode;

  /// LLM model settings.
  GoogleCloudDialogflowCxV3beta1LlmModelSettings? llmModelSettings;

  /// Format: `projects//locations//agents//generativeSettings`.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1GenerativeSettings({
    this.fallbackSettings,
    this.generativeSafetySettings,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.llmModelSettings,
    this.name,
  });

  GoogleCloudDialogflowCxV3beta1GenerativeSettings.fromJson(core.Map json_)
    : this(
        fallbackSettings:
            json_.containsKey('fallbackSettings')
                ? GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings.fromJson(
                  json_['fallbackSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        generativeSafetySettings:
            json_.containsKey('generativeSafetySettings')
                ? GoogleCloudDialogflowCxV3beta1SafetySettings.fromJson(
                  json_['generativeSafetySettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
                ? GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings.fromJson(
                  json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        llmModelSettings:
            json_.containsKey('llmModelSettings')
                ? GoogleCloudDialogflowCxV3beta1LlmModelSettings.fromJson(
                  json_['llmModelSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fallbackSettings != null) 'fallbackSettings': fallbackSettings!,
    if (generativeSafetySettings != null)
      'generativeSafetySettings': generativeSafetySettings!,
    if (knowledgeConnectorSettings != null)
      'knowledgeConnectorSettings': knowledgeConnectorSettings!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (llmModelSettings != null) 'llmModelSettings': llmModelSettings!,
    if (name != null) 'name': name!,
  };
}

/// Settings for Generative Fallback.
class GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings {
  /// Stored prompts that can be selected, for example default templates like
  /// "conservative" or "chatty", or user defined ones.
  core.List<
    GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
  >?
  promptTemplates;

  /// Display name of the selected prompt.
  core.String? selectedPrompt;

  GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings({
    this.promptTemplates,
    this.selectedPrompt,
  });

  GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings.fromJson(
    core.Map json_,
  ) : this(
        promptTemplates:
            (json_['promptTemplates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        selectedPrompt: json_['selectedPrompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (promptTemplates != null) 'promptTemplates': promptTemplates!,
    if (selectedPrompt != null) 'selectedPrompt': selectedPrompt!,
  };
}

/// Prompt template.
typedef GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate =
    $GenerativeSettingsFallbackSettingsPromptTemplate;

/// Settings for knowledge connector.
///
/// These parameters are used for LLM prompt like "You are . You are a helpful
/// and verbose at , . Your task is to help humans on ".
typedef GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings =
    $GenerativeSettingsKnowledgeConnectorSettings;

/// Generators contain prompt to be sent to the LLM model to generate text.
///
/// The prompt can contain parameters which will be resolved before calling the
/// model. It can optionally contain banned phrases to ensure the model
/// responses are safe.
class GoogleCloudDialogflowCxV3beta1Generator {
  /// The human-readable name of the generator, unique within the agent.
  ///
  /// The prompt contains pre-defined parameters such as $conversation,
  /// $last-user-utterance, etc. populated by Dialogflow. It can also contain
  /// custom placeholders which will be resolved during fulfillment.
  ///
  /// Required.
  core.String? displayName;

  /// The LLM model settings.
  GoogleCloudDialogflowCxV3beta1LlmModelSettings? llmModelSettings;

  /// Parameters passed to the LLM to configure its behavior.
  GoogleCloudDialogflowCxV3beta1GeneratorModelParameter? modelParameter;

  /// The unique identifier of the generator.
  ///
  /// Must be set for the Generators.UpdateGenerator method.
  /// Generators.CreateGenerate populates the name automatically. Format:
  /// `projects//locations//agents//generators/`.
  core.String? name;

  /// List of custom placeholders in the prompt text.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder>? placeholders;

  /// Prompt for the LLM model.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1Phrase? promptText;

  GoogleCloudDialogflowCxV3beta1Generator({
    this.displayName,
    this.llmModelSettings,
    this.modelParameter,
    this.name,
    this.placeholders,
    this.promptText,
  });

  GoogleCloudDialogflowCxV3beta1Generator.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        llmModelSettings:
            json_.containsKey('llmModelSettings')
                ? GoogleCloudDialogflowCxV3beta1LlmModelSettings.fromJson(
                  json_['llmModelSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelParameter:
            json_.containsKey('modelParameter')
                ? GoogleCloudDialogflowCxV3beta1GeneratorModelParameter.fromJson(
                  json_['modelParameter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        placeholders:
            (json_['placeholders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        promptText:
            json_.containsKey('promptText')
                ? GoogleCloudDialogflowCxV3beta1Phrase.fromJson(
                  json_['promptText'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (llmModelSettings != null) 'llmModelSettings': llmModelSettings!,
    if (modelParameter != null) 'modelParameter': modelParameter!,
    if (name != null) 'name': name!,
    if (placeholders != null) 'placeholders': placeholders!,
    if (promptText != null) 'promptText': promptText!,
  };
}

/// Parameters to be passed to the LLM.
///
/// If not set, default values will be used.
typedef GoogleCloudDialogflowCxV3beta1GeneratorModelParameter =
    $GeneratorModelParameter;

/// Represents a custom placeholder in the prompt text.
typedef GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder =
    $GeneratorPlaceholder;

/// Handler can be used to define custom logic to be executed based on the
/// user-specified triggers.
class GoogleCloudDialogflowCxV3beta1Handler {
  /// A handler triggered by event.
  GoogleCloudDialogflowCxV3beta1HandlerEventHandler? eventHandler;

  /// A handler triggered during specific lifecycle of the playbook execution.
  GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler? lifecycleHandler;

  GoogleCloudDialogflowCxV3beta1Handler({
    this.eventHandler,
    this.lifecycleHandler,
  });

  GoogleCloudDialogflowCxV3beta1Handler.fromJson(core.Map json_)
    : this(
        eventHandler:
            json_.containsKey('eventHandler')
                ? GoogleCloudDialogflowCxV3beta1HandlerEventHandler.fromJson(
                  json_['eventHandler'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lifecycleHandler:
            json_.containsKey('lifecycleHandler')
                ? GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler.fromJson(
                  json_['lifecycleHandler']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventHandler != null) 'eventHandler': eventHandler!,
    if (lifecycleHandler != null) 'lifecycleHandler': lifecycleHandler!,
  };
}

/// A handler that is triggered by the specified event.
class GoogleCloudDialogflowCxV3beta1HandlerEventHandler {
  /// The condition that must be satisfied to trigger this handler.
  ///
  /// Optional.
  core.String? condition;

  /// The name of the event that triggers this handler.
  ///
  /// Required.
  core.String? event;

  /// The fulfillment to call when the event occurs.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1Fulfillment? fulfillment;

  GoogleCloudDialogflowCxV3beta1HandlerEventHandler({
    this.condition,
    this.event,
    this.fulfillment,
  });

  GoogleCloudDialogflowCxV3beta1HandlerEventHandler.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        event: json_['event'] as core.String?,
        fulfillment:
            json_.containsKey('fulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['fulfillment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (event != null) 'event': event!,
    if (fulfillment != null) 'fulfillment': fulfillment!,
  };
}

/// A handler that is triggered on the specific lifecycle_stage of the playbook
/// execution.
class GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler {
  /// The condition that must be satisfied to trigger this handler.
  ///
  /// Optional.
  core.String? condition;

  /// The fulfillment to call when this handler is triggered.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1Fulfillment? fulfillment;

  /// The name of the lifecycle stage that triggers this handler.
  ///
  /// Supported values: * `playbook-start` * `pre-action-selection` *
  /// `pre-action-execution`
  ///
  /// Required.
  core.String? lifecycleStage;

  GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler({
    this.condition,
    this.fulfillment,
    this.lifecycleStage,
  });

  GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        fulfillment:
            json_.containsKey('fulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['fulfillment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lifecycleStage: json_['lifecycleStage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (fulfillment != null) 'fulfillment': fulfillment!,
    if (lifecycleStage != null) 'lifecycleStage': lifecycleStage!,
  };
}

/// The request message for EntityTypes.ImportEntityTypes.
class GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest {
  /// Uncompressed byte content of entity types.
  GoogleCloudDialogflowCxV3beta1InlineSource? entityTypesContent;

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

  GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest({
    this.entityTypesContent,
    this.entityTypesUri,
    this.mergeOption,
    this.targetEntityType,
  });

  GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest.fromJson(
    core.Map json_,
  ) : this(
        entityTypesContent:
            json_.containsKey('entityTypesContent')
                ? GoogleCloudDialogflowCxV3beta1InlineSource.fromJson(
                  json_['entityTypesContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entityTypesUri: json_['entityTypesUri'] as core.String?,
        mergeOption: json_['mergeOption'] as core.String?,
        targetEntityType: json_['targetEntityType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityTypesContent != null) 'entityTypesContent': entityTypesContent!,
    if (entityTypesUri != null) 'entityTypesUri': entityTypesUri!,
    if (mergeOption != null) 'mergeOption': mergeOption!,
    if (targetEntityType != null) 'targetEntityType': targetEntityType!,
  };
}

/// The request message for Flows.ImportFlow.
class GoogleCloudDialogflowCxV3beta1ImportFlowRequest {
  /// Uncompressed raw byte content for flow.
  core.String? flowContent;
  core.List<core.int> get flowContentAsBytes =>
      convert.base64.decode(flowContent!);

  set flowContentAsBytes(core.List<core.int> bytes_) {
    flowContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the import strategy used when resolving resource conflicts.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1FlowImportStrategy? flowImportStrategy;

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

  GoogleCloudDialogflowCxV3beta1ImportFlowRequest({
    this.flowContent,
    this.flowImportStrategy,
    this.flowUri,
    this.importOption,
  });

  GoogleCloudDialogflowCxV3beta1ImportFlowRequest.fromJson(core.Map json_)
    : this(
        flowContent: json_['flowContent'] as core.String?,
        flowImportStrategy:
            json_.containsKey('flowImportStrategy')
                ? GoogleCloudDialogflowCxV3beta1FlowImportStrategy.fromJson(
                  json_['flowImportStrategy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        flowUri: json_['flowUri'] as core.String?,
        importOption: json_['importOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (flowContent != null) 'flowContent': flowContent!,
    if (flowImportStrategy != null) 'flowImportStrategy': flowImportStrategy!,
    if (flowUri != null) 'flowUri': flowUri!,
    if (importOption != null) 'importOption': importOption!,
  };
}

/// The request message for Intents.ImportIntents.
class GoogleCloudDialogflowCxV3beta1ImportIntentsRequest {
  /// Uncompressed byte content of intents.
  GoogleCloudDialogflowCxV3beta1InlineSource? intentsContent;

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

  GoogleCloudDialogflowCxV3beta1ImportIntentsRequest({
    this.intentsContent,
    this.intentsUri,
    this.mergeOption,
  });

  GoogleCloudDialogflowCxV3beta1ImportIntentsRequest.fromJson(core.Map json_)
    : this(
        intentsContent:
            json_.containsKey('intentsContent')
                ? GoogleCloudDialogflowCxV3beta1InlineSource.fromJson(
                  json_['intentsContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentsUri: json_['intentsUri'] as core.String?,
        mergeOption: json_['mergeOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intentsContent != null) 'intentsContent': intentsContent!,
    if (intentsUri != null) 'intentsUri': intentsUri!,
    if (mergeOption != null) 'mergeOption': mergeOption!,
  };
}

/// The request message for Playbooks.ImportPlaybook.
class GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest {
  /// Specifies the import strategy used when resolving resource conflicts.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy? importStrategy;

  /// Uncompressed raw byte content for playbook.
  core.String? playbookContent;
  core.List<core.int> get playbookContentAsBytes =>
      convert.base64.decode(playbookContent!);

  set playbookContentAsBytes(core.List<core.int> bytes_) {
    playbookContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  core.String? playbookUri;

  GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest({
    this.importStrategy,
    this.playbookContent,
    this.playbookUri,
  });

  GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest.fromJson(core.Map json_)
    : this(
        importStrategy:
            json_.containsKey('importStrategy')
                ? GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy.fromJson(
                  json_['importStrategy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookContent: json_['playbookContent'] as core.String?,
        playbookUri: json_['playbookUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (importStrategy != null) 'importStrategy': importStrategy!,
    if (playbookContent != null) 'playbookContent': playbookContent!,
    if (playbookUri != null) 'playbookUri': playbookUri!,
  };
}

/// The request message for TestCases.ImportTestCases.
typedef GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest =
    $ImportTestCasesRequest;

/// A type schema object that's specified inline.
class GoogleCloudDialogflowCxV3beta1InlineSchema {
  /// Schema of the elements if this is an ARRAY type.
  GoogleCloudDialogflowCxV3beta1TypeSchema? items;

  /// Data type of the schema.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not specified.
  /// - "STRING" : Represents any string value.
  /// - "NUMBER" : Represents any number value.
  /// - "BOOLEAN" : Represents a boolean value.
  /// - "ARRAY" : Represents a repeated value.
  core.String? type;

  GoogleCloudDialogflowCxV3beta1InlineSchema({this.items, this.type});

  GoogleCloudDialogflowCxV3beta1InlineSchema.fromJson(core.Map json_)
    : this(
        items:
            json_.containsKey('items')
                ? GoogleCloudDialogflowCxV3beta1TypeSchema.fromJson(
                  json_['items'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (type != null) 'type': type!,
  };
}

/// Inline source for a Dialogflow operation that reads or imports objects (e.g.
/// intents) into Dialogflow.
typedef GoogleCloudDialogflowCxV3beta1InlineSource = $InlineSource;

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowCxV3beta1InputAudioConfig {
  /// Audio encoding of the audio content to process.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed little-endian
  /// samples (Linear PCM). LINT: LEGACY_NAMES
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
  /// - "AUDIO_ENCODING_ALAW" : 8-bit samples that compand 13-bit audio samples
  /// using G.711 PCMU/a-law.
  core.String? audioEncoding;

  /// Configuration of barge-in behavior during the streaming of input audio.
  GoogleCloudDialogflowCxV3beta1BargeInConfig? bargeInConfig;

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

  GoogleCloudDialogflowCxV3beta1InputAudioConfig({
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

  GoogleCloudDialogflowCxV3beta1InputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        bargeInConfig:
            json_.containsKey('bargeInConfig')
                ? GoogleCloudDialogflowCxV3beta1BargeInConfig.fromJson(
                  json_['bargeInConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableWordInfo: json_['enableWordInfo'] as core.bool?,
        model: json_['model'] as core.String?,
        modelVariant: json_['modelVariant'] as core.String?,
        optOutConformerModelMigration:
            json_['optOutConformerModelMigration'] as core.bool?,
        phraseHints:
            (json_['phraseHints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        singleUtterance: json_['singleUtterance'] as core.bool?,
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
class GoogleCloudDialogflowCxV3beta1Intent {
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
  /// value. "sys-head" means the intent is a head intent. "sys-contextual"
  /// means the intent is a contextual intent.
  core.Map<core.String, core.String>? labels;

  /// The unique identifier of the intent.
  ///
  /// Required for the Intents.UpdateIntent method. Intents.CreateIntent
  /// populates the name automatically. Format:
  /// `projects//locations//agents//intents/`.
  core.String? name;

  /// The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowCxV3beta1IntentParameter>? parameters;

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
  core.List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>?
  trainingPhrases;

  GoogleCloudDialogflowCxV3beta1Intent({
    this.description,
    this.displayName,
    this.isFallback,
    this.labels,
    this.name,
    this.parameters,
    this.priority,
    this.trainingPhrases,
  });

  GoogleCloudDialogflowCxV3beta1Intent.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isFallback: json_['isFallback'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1IntentParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        priority: json_['priority'] as core.int?,
        trainingPhrases:
            (json_['trainingPhrases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
class GoogleCloudDialogflowCxV3beta1IntentCoverage {
  /// The percent of intents in the agent that are covered.
  core.double? coverageScore;

  /// The list of Intents present in the agent
  core.List<GoogleCloudDialogflowCxV3beta1IntentCoverageIntent>? intents;

  GoogleCloudDialogflowCxV3beta1IntentCoverage({
    this.coverageScore,
    this.intents,
  });

  GoogleCloudDialogflowCxV3beta1IntentCoverage.fromJson(core.Map json_)
    : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1IntentCoverageIntent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coverageScore != null) 'coverageScore': coverageScore!,
    if (intents != null) 'intents': intents!,
  };
}

/// The agent's intent.
typedef GoogleCloudDialogflowCxV3beta1IntentCoverageIntent =
    $IntentCoverageIntent;

/// Represents the intent to trigger programmatically rather than as a result of
/// natural language processing.
typedef GoogleCloudDialogflowCxV3beta1IntentInput = $IntentInput;

/// Represents an intent parameter.
typedef GoogleCloudDialogflowCxV3beta1IntentParameter = $IntentParameter01;

/// Represents an example that the agent is trained on to identify the intent.
class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase {
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
  core.List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>? parts;

  /// Indicates how many times this example was added to the intent.
  core.int? repeatCount;

  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase({
    this.id,
    this.parts,
    this.repeatCount,
  });

  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        parts:
            (json_['parts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        repeatCount: json_['repeatCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (parts != null) 'parts': parts!,
    if (repeatCount != null) 'repeatCount': repeatCount!,
  };
}

/// Represents a part of a training phrase.
typedef GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart =
    $IntentTrainingPhrasePart01;

/// The Knowledge Connector settings for this page or flow.
///
/// This includes information such as the attached Knowledge Bases, and the way
/// to execute fulfillment.
class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings {
  /// List of related data store connections.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1DataStoreConnection>?
  dataStoreConnections;

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
  GoogleCloudDialogflowCxV3beta1Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromJson(
    core.Map json_,
  ) : this(
        dataStoreConnections:
            (json_['dataStoreConnections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DataStoreConnection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        enabled: json_['enabled'] as core.bool?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        triggerFulfillment:
            json_.containsKey('triggerFulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStoreConnections != null)
      'dataStoreConnections': dataStoreConnections!,
    if (enabled != null) 'enabled': enabled!,
    if (targetFlow != null) 'targetFlow': targetFlow!,
    if (targetPage != null) 'targetPage': targetPage!,
    if (triggerFulfillment != null) 'triggerFulfillment': triggerFulfillment!,
  };
}

/// The response message for Agents.ListAgents.
class GoogleCloudDialogflowCxV3beta1ListAgentsResponse {
  /// The list of agents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Agent>? agents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListAgentsResponse.fromJson(core.Map json_)
    : this(
        agents:
            (json_['agents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Agent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agents != null) 'agents': agents!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Changelogs.ListChangelogs.
class GoogleCloudDialogflowCxV3beta1ListChangelogsResponse {
  /// The list of changelogs.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The changelogs will be ordered by timestamp.
  core.List<GoogleCloudDialogflowCxV3beta1Changelog>? changelogs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListChangelogsResponse({
    this.changelogs,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListChangelogsResponse.fromJson(core.Map json_)
    : this(
        changelogs:
            (json_['changelogs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Changelog.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (changelogs != null) 'changelogs': changelogs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Environments.ListTestCaseResults.
class GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse {
  /// The list of continuous test results.
  core.List<GoogleCloudDialogflowCxV3beta1ContinuousTestResult>?
  continuousTestResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse({
    this.continuousTestResults,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse.fromJson(
    core.Map json_,
  ) : this(
        continuousTestResults:
            (json_['continuousTestResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ContinuousTestResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (continuousTestResults != null)
      'continuousTestResults': continuousTestResults!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Conversations.ListConversations.
class GoogleCloudDialogflowCxV3beta1ListConversationsResponse {
  /// The list of conversations.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field. The returned conversations will be sorted by start_time in
  /// descending order (newest conversation first).
  core.List<GoogleCloudDialogflowCxV3beta1Conversation>? conversations;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListConversationsResponse.fromJson(
    core.Map json_,
  ) : this(
        conversations:
            (json_['conversations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1Conversation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversations != null) 'conversations': conversations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Deployments.ListDeployments.
class GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse {
  /// The list of deployments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3beta1Deployment>? deployments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse.fromJson(core.Map json_)
    : this(
        deployments:
            (json_['deployments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Deployment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deployments != null) 'deployments': deployments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse {
  /// The list of entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1EntityType>? entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        entityTypes:
            (json_['entityTypes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityTypes != null) 'entityTypes': entityTypes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Environments.ListEnvironments.
class GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse {
  /// The list of environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3beta1Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse.fromJson(
    core.Map json_,
  ) : this(
        environments:
            (json_['environments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Environment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (environments != null) 'environments': environments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Examples.ListExamples.
class GoogleCloudDialogflowCxV3beta1ListExamplesResponse {
  /// The list of examples.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Example>? examples;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListExamplesResponse({
    this.examples,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListExamplesResponse.fromJson(core.Map json_)
    : this(
        examples:
            (json_['examples'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Example.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (examples != null) 'examples': examples!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Experiments.ListExperiments.
class GoogleCloudDialogflowCxV3beta1ListExperimentsResponse {
  /// The list of experiments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3beta1Experiment>? experiments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListExperimentsResponse({
    this.experiments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListExperimentsResponse.fromJson(core.Map json_)
    : this(
        experiments:
            (json_['experiments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (experiments != null) 'experiments': experiments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Flows.ListFlows.
class GoogleCloudDialogflowCxV3beta1ListFlowsResponse {
  /// The list of flows.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Flow>? flows;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListFlowsResponse({
    this.flows,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListFlowsResponse.fromJson(core.Map json_)
    : this(
        flows:
            (json_['flows'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Flow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (flows != null) 'flows': flows!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Generators.ListGenerators.
class GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse {
  /// The list of generators.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Generator>? generators;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse({
    this.generators,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse.fromJson(core.Map json_)
    : this(
        generators:
            (json_['generators'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Generator.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generators != null) 'generators': generators!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Intents.ListIntents.
class GoogleCloudDialogflowCxV3beta1ListIntentsResponse {
  /// The list of intents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Intent>? intents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1ListIntentsResponse.fromJson(core.Map json_)
    : this(
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Intent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intents != null) 'intents': intents!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Pages.ListPages.
class GoogleCloudDialogflowCxV3beta1ListPagesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of pages.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Page>? pages;

  GoogleCloudDialogflowCxV3beta1ListPagesResponse({
    this.nextPageToken,
    this.pages,
  });

  GoogleCloudDialogflowCxV3beta1ListPagesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pages:
            (json_['pages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Page.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (pages != null) 'pages': pages!,
  };
}

/// The response message for Playbooks.ListPlaybookVersions.
class GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of playbook version.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1PlaybookVersion>? playbookVersions;

  GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse({
    this.nextPageToken,
    this.playbookVersions,
  });

  GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        playbookVersions:
            (json_['playbookVersions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (playbookVersions != null) 'playbookVersions': playbookVersions!,
  };
}

/// The response message for Playbooks.ListPlaybooks.
class GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of playbooks.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Playbook>? playbooks;

  GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse({
    this.nextPageToken,
    this.playbooks,
  });

  GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        playbooks:
            (json_['playbooks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (playbooks != null) 'playbooks': playbooks!,
  };
}

/// The response message for SecuritySettings.ListSecuritySettings.
class GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of security settings.
  core.List<GoogleCloudDialogflowCxV3beta1SecuritySettings>? securitySettings;

  GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse({
    this.nextPageToken,
    this.securitySettings,
  });

  GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securitySettings:
            (json_['securitySettings'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (securitySettings != null) 'securitySettings': securitySettings!,
  };
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of session entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1SessionEntityType>?
  sessionEntityTypes;

  GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessionEntityTypes:
            (json_['sessionEntityTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sessionEntityTypes != null) 'sessionEntityTypes': sessionEntityTypes!,
  };
}

/// The response message for TestCases.ListTestCaseResults.
class GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of test case results.
  core.List<GoogleCloudDialogflowCxV3beta1TestCaseResult>? testCaseResults;

  GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse({
    this.nextPageToken,
    this.testCaseResults,
  });

  GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        testCaseResults:
            (json_['testCaseResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (testCaseResults != null) 'testCaseResults': testCaseResults!,
  };
}

/// The response message for TestCases.ListTestCases.
class GoogleCloudDialogflowCxV3beta1ListTestCasesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of test cases.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1TestCase>? testCases;

  GoogleCloudDialogflowCxV3beta1ListTestCasesResponse({
    this.nextPageToken,
    this.testCases,
  });

  GoogleCloudDialogflowCxV3beta1ListTestCasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        testCases:
            (json_['testCases'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (testCases != null) 'testCases': testCases!,
  };
}

/// The response message for Tools.ListToolVersions.
class GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of tool versions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1ToolVersion>? toolVersions;

  GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse({
    this.nextPageToken,
    this.toolVersions,
  });

  GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        toolVersions:
            (json_['toolVersions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (toolVersions != null) 'toolVersions': toolVersions!,
  };
}

/// The response message for Tools.ListTools.
class GoogleCloudDialogflowCxV3beta1ListToolsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of Tools.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Tool>? tools;

  GoogleCloudDialogflowCxV3beta1ListToolsResponse({
    this.nextPageToken,
    this.tools,
  });

  GoogleCloudDialogflowCxV3beta1ListToolsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tools:
            (json_['tools'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Tool.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (tools != null) 'tools': tools!,
  };
}

/// The response message for TransitionRouteGroups.ListTransitionRouteGroups.
class GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of transition route groups.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionRouteGroup>?
  transitionRouteGroups;

  GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse({
    this.nextPageToken,
    this.transitionRouteGroups,
  });

  GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        transitionRouteGroups:
            (json_['transitionRouteGroups'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (transitionRouteGroups != null)
      'transitionRouteGroups': transitionRouteGroups!,
  };
}

/// The response message for Versions.ListVersions.
class GoogleCloudDialogflowCxV3beta1ListVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// A list of versions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. The list may in some cases be empty or contain fewer
  /// entries than page_size even if this isn't the last page.
  core.List<GoogleCloudDialogflowCxV3beta1Version>? versions;

  GoogleCloudDialogflowCxV3beta1ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowCxV3beta1ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Version.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (versions != null) 'versions': versions!,
  };
}

/// The response message for Webhooks.ListWebhooks.
class GoogleCloudDialogflowCxV3beta1ListWebhooksResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of webhooks.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowCxV3beta1Webhook>? webhooks;

  GoogleCloudDialogflowCxV3beta1ListWebhooksResponse({
    this.nextPageToken,
    this.webhooks,
  });

  GoogleCloudDialogflowCxV3beta1ListWebhooksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        webhooks:
            (json_['webhooks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (webhooks != null) 'webhooks': webhooks!,
  };
}

/// Stores metadata of the call of an LLM.
class GoogleCloudDialogflowCxV3beta1LlmCall {
  /// The model of the LLM call.
  core.String? model;

  /// A list of relevant examples used for the LLM prompt.
  core.List<GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample>?
  retrievedExamples;

  /// The temperature of the LLM call.
  core.double? temperature;

  /// The token counts of the LLM call.
  GoogleCloudDialogflowCxV3beta1LlmCallTokenCount? tokenCount;

  GoogleCloudDialogflowCxV3beta1LlmCall({
    this.model,
    this.retrievedExamples,
    this.temperature,
    this.tokenCount,
  });

  GoogleCloudDialogflowCxV3beta1LlmCall.fromJson(core.Map json_)
    : this(
        model: json_['model'] as core.String?,
        retrievedExamples:
            (json_['retrievedExamples'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        temperature: (json_['temperature'] as core.num?)?.toDouble(),
        tokenCount:
            json_.containsKey('tokenCount')
                ? GoogleCloudDialogflowCxV3beta1LlmCallTokenCount.fromJson(
                  json_['tokenCount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (model != null) 'model': model!,
    if (retrievedExamples != null) 'retrievedExamples': retrievedExamples!,
    if (temperature != null) 'temperature': temperature!,
    if (tokenCount != null) 'tokenCount': tokenCount!,
  };
}

/// Relevant example used for the LLM prompt.
class GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample {
  /// The display name of the example.
  core.String? exampleDisplayName;

  /// The id of the example.
  core.String? exampleId;

  /// The matched retrieval label of this LLM call.
  ///
  /// Optional.
  core.String? matchedRetrievalLabel;

  /// Retrieval strategy of the example.
  /// Possible string values are:
  /// - "RETRIEVAL_STRATEGY_UNSPECIFIED" : Not specified. `DEFAULT` will be
  /// used.
  /// - "DEFAULT" : Default retrieval strategy.
  /// - "STATIC" : Static example will always be inserted to the prompt.
  /// - "NEVER" : Example will never be inserted into the prompt.
  core.String? retrievalStrategy;

  GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample({
    this.exampleDisplayName,
    this.exampleId,
    this.matchedRetrievalLabel,
    this.retrievalStrategy,
  });

  GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample.fromJson(core.Map json_)
    : this(
        exampleDisplayName: json_['exampleDisplayName'] as core.String?,
        exampleId: json_['exampleId'] as core.String?,
        matchedRetrievalLabel: json_['matchedRetrievalLabel'] as core.String?,
        retrievalStrategy: json_['retrievalStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exampleDisplayName != null) 'exampleDisplayName': exampleDisplayName!,
    if (exampleId != null) 'exampleId': exampleId!,
    if (matchedRetrievalLabel != null)
      'matchedRetrievalLabel': matchedRetrievalLabel!,
    if (retrievalStrategy != null) 'retrievalStrategy': retrievalStrategy!,
  };
}

/// Stores token counts of the LLM call.
class GoogleCloudDialogflowCxV3beta1LlmCallTokenCount {
  /// The number of tokens used for the conversation history in the prompt.
  core.String? conversationContextTokenCount;

  /// The number of tokens used for the retrieved examples in the prompt.
  core.String? exampleTokenCount;

  /// The total number of tokens used for the input to the LLM call.
  core.String? totalInputTokenCount;

  /// The total number of tokens used for the output of the LLM call.
  core.String? totalOutputTokenCount;

  GoogleCloudDialogflowCxV3beta1LlmCallTokenCount({
    this.conversationContextTokenCount,
    this.exampleTokenCount,
    this.totalInputTokenCount,
    this.totalOutputTokenCount,
  });

  GoogleCloudDialogflowCxV3beta1LlmCallTokenCount.fromJson(core.Map json_)
    : this(
        conversationContextTokenCount:
            json_['conversationContextTokenCount'] as core.String?,
        exampleTokenCount: json_['exampleTokenCount'] as core.String?,
        totalInputTokenCount: json_['totalInputTokenCount'] as core.String?,
        totalOutputTokenCount: json_['totalOutputTokenCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationContextTokenCount != null)
      'conversationContextTokenCount': conversationContextTokenCount!,
    if (exampleTokenCount != null) 'exampleTokenCount': exampleTokenCount!,
    if (totalInputTokenCount != null)
      'totalInputTokenCount': totalInputTokenCount!,
    if (totalOutputTokenCount != null)
      'totalOutputTokenCount': totalOutputTokenCount!,
  };
}

/// Settings for LLM models.
typedef GoogleCloudDialogflowCxV3beta1LlmModelSettings = $LlmModelSettings;

/// The request message for Versions.LoadVersion.
typedef GoogleCloudDialogflowCxV3beta1LoadVersionRequest = $LoadVersionRequest;

/// The response message for Environments.LookupEnvironmentHistory.
class GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse {
  /// Represents a list of snapshots for an environment.
  ///
  /// Time of the snapshots is stored in `update_time`.
  core.List<GoogleCloudDialogflowCxV3beta1Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse.fromJson(
    core.Map json_,
  ) : this(
        environments:
            (json_['environments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Environment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (environments != null) 'environments': environments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Represents one match result of MatchIntent.
class GoogleCloudDialogflowCxV3beta1Match {
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
  GoogleCloudDialogflowCxV3beta1Intent? intent;

  /// Type of this Match.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Not specified. Should never be used.
  /// - "INTENT" : The query was matched to an intent.
  /// - "DIRECT_INTENT" : The query directly triggered an intent.
  /// - "PARAMETER_FILLING" : The query was used for parameter filling.
  /// - "NO_MATCH" : No match was found for the query.
  /// - "NO_INPUT" : Indicates an empty query.
  /// - "EVENT" : The query directly triggered an event.
  /// - "KNOWLEDGE_CONNECTOR" : The query was matched to a Knowledge Connector
  /// answer.
  /// - "PLAYBOOK" : The query was handled by a `Playbook`.
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

  GoogleCloudDialogflowCxV3beta1Match({
    this.confidence,
    this.event,
    this.intent,
    this.matchType,
    this.parameters,
    this.resolvedInput,
  });

  GoogleCloudDialogflowCxV3beta1Match.fromJson(core.Map json_)
    : this(
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        event: json_['event'] as core.String?,
        intent:
            json_.containsKey('intent')
                ? GoogleCloudDialogflowCxV3beta1Intent.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matchType: json_['matchType'] as core.String?,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        resolvedInput: json_['resolvedInput'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1MatchIntentRequest {
  /// Persist session parameter changes from `query_params`.
  core.bool? persistParameterChanges;

  /// The input specification.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowCxV3beta1QueryParameters? queryParams;

  GoogleCloudDialogflowCxV3beta1MatchIntentRequest({
    this.persistParameterChanges,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowCxV3beta1MatchIntentRequest.fromJson(core.Map json_)
    : this(
        persistParameterChanges: json_['persistParameterChanges'] as core.bool?,
        queryInput:
            json_.containsKey('queryInput')
                ? GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(
                  json_['queryInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryParams:
            json_.containsKey('queryParams')
                ? GoogleCloudDialogflowCxV3beta1QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowCxV3beta1MatchIntentResponse {
  /// The current Page.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to `name` and `display_name`.
  GoogleCloudDialogflowCxV3beta1Page? currentPage;

  /// Match results, if more than one, ordered descendingly by the confidence we
  /// have that the particular intent matches the query.
  core.List<GoogleCloudDialogflowCxV3beta1Match>? matches;

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

  GoogleCloudDialogflowCxV3beta1MatchIntentResponse({
    this.currentPage,
    this.matches,
    this.text,
    this.transcript,
    this.triggerEvent,
    this.triggerIntent,
  });

  GoogleCloudDialogflowCxV3beta1MatchIntentResponse.fromJson(core.Map json_)
    : this(
        currentPage:
            json_.containsKey('currentPage')
                ? GoogleCloudDialogflowCxV3beta1Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matches:
            (json_['matches'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Match.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        text: json_['text'] as core.String?,
        transcript: json_['transcript'] as core.String?,
        triggerEvent: json_['triggerEvent'] as core.String?,
        triggerIntent: json_['triggerIntent'] as core.String?,
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

/// A named metric is a metric with name, value and unit.
class GoogleCloudDialogflowCxV3beta1NamedMetric {
  /// The name of the metric.
  core.String? name;

  /// The unit in which this metric is reported.
  ///
  /// Follows
  /// [The Unified Code for Units of Measure](https://unitsofmeasure.org/ucum.html)
  /// standard.
  core.String? unit;

  /// The value of the metric.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  GoogleCloudDialogflowCxV3beta1NamedMetric({this.name, this.unit, this.value});

  GoogleCloudDialogflowCxV3beta1NamedMetric.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        unit: json_['unit'] as core.String?,
        value: json_['value'],
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (unit != null) 'unit': unit!,
    if (value != null) 'value': value!,
  };
}

/// Settings related to NLU.
typedef GoogleCloudDialogflowCxV3beta1NluSettings = $NluSettings;

/// Instructs the speech synthesizer how to generate the output audio content.
class GoogleCloudDialogflowCxV3beta1OutputAudioConfig {
  /// Audio encoding of the synthesized audio content.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed
  /// little-endian samples (Linear PCM). Audio content returned as LINEAR16
  /// also contains a WAV header. LINT: LEGACY_NAMES
  /// - "OUTPUT_AUDIO_ENCODING_MP3" : MP3 audio at 32kbps.
  /// - "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS" : MP3 audio at 64kbps. LINT:
  /// LEGACY_NAMES
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio wrapped in an ogg
  /// container. The result will be a file which can be played natively on
  /// Android, and in browsers (at least Chrome and Firefox). The quality of the
  /// encoding is considerably higher than MP3 while using approximately the
  /// same bitrate.
  /// - "OUTPUT_AUDIO_ENCODING_MULAW" : 8-bit samples that compand 14-bit audio
  /// samples using G.711 PCMU/mu-law.
  /// - "OUTPUT_AUDIO_ENCODING_ALAW" : 8-bit samples that compand 13-bit audio
  /// samples using G.711 PCMU/a-law.
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
  GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowCxV3beta1OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfig:
            json_.containsKey('synthesizeSpeechConfig')
                ? GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig.fromJson(
                  json_['synthesizeSpeechConfig']
                      as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowCxV3beta1Page {
  /// Hierarchical advanced settings for this page.
  ///
  /// The settings exposed at the lower level overrides the settings exposed at
  /// the higher level.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

  /// The description of the page.
  ///
  /// The maximum length is 500 characters.
  core.String? description;

  /// The human-readable name of the page, unique within the flow.
  ///
  /// Required.
  core.String? displayName;

  /// The fulfillment to call when the session is entering the page.
  GoogleCloudDialogflowCxV3beta1Fulfillment? entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors,
  /// no match or no input.
  core.List<GoogleCloudDialogflowCxV3beta1EventHandler>? eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant
  /// to the page.
  GoogleCloudDialogflowCxV3beta1Form? form;

  /// Knowledge connector configuration.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings?
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
  /// flow. When we are in a certain page, the TransitionRoutes are evaluated in
  /// the following order: * TransitionRoutes defined in the page with intent
  /// specified. * TransitionRoutes defined in the transition route groups with
  /// intent specified. * TransitionRoutes defined in flow with intent
  /// specified. * TransitionRoutes defined in the transition route groups with
  /// intent specified. * TransitionRoutes defined in the page with only
  /// condition specified. * TransitionRoutes defined in the transition route
  /// groups with only condition specified.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3beta1Page({
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

  GoogleCloudDialogflowCxV3beta1Page.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entryFulfillment:
            json_.containsKey('entryFulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['entryFulfillment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventHandlers:
            (json_['eventHandlers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        form:
            json_.containsKey('form')
                ? GoogleCloudDialogflowCxV3beta1Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeConnectorSettings:
            json_.containsKey('knowledgeConnectorSettings')
                ? GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromJson(
                  json_['knowledgeConnectorSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        transitionRouteGroups:
            (json_['transitionRouteGroups'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        transitionRoutes:
            (json_['transitionRoutes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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

/// Defines the properties of a parameter.
///
/// Used to define parameters used in the agent and the input / output
/// parameters for each fulfillment.
class GoogleCloudDialogflowCxV3beta1ParameterDefinition {
  /// Human-readable description of the parameter.
  ///
  /// Limited to 300 characters.
  core.String? description;

  /// Name of parameter.
  ///
  /// Required.
  core.String? name;

  /// Type of parameter.
  /// Possible string values are:
  /// - "PARAMETER_TYPE_UNSPECIFIED" : Not specified. No validation will be
  /// performed.
  /// - "STRING" : Represents any string value.
  /// - "NUMBER" : Represents any number value.
  /// - "BOOLEAN" : Represents a boolean value.
  /// - "NULL" : Represents a null value.
  /// - "OBJECT" : Represents any object value.
  /// - "LIST" : Represents a repeated value.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? type;

  /// Type schema of parameter.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1TypeSchema? typeSchema;

  GoogleCloudDialogflowCxV3beta1ParameterDefinition({
    this.description,
    this.name,
    this.type,
    this.typeSchema,
  });

  GoogleCloudDialogflowCxV3beta1ParameterDefinition.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        typeSchema:
            json_.containsKey('typeSchema')
                ? GoogleCloudDialogflowCxV3beta1TypeSchema.fromJson(
                  json_['typeSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
    if (typeSchema != null) 'typeSchema': typeSchema!,
  };
}

/// Text input which can be used for prompt or banned phrases.
typedef GoogleCloudDialogflowCxV3beta1Phrase = $Phrase00;

/// Playbook is the basic building block to instruct the LLM how to execute a
/// certain task.
///
/// A playbook consists of a goal to accomplish, an optional list of step by
/// step instructions (the step instruction may refers to name of the custom or
/// default plugin tools to use) to perform the task, a list of contextual input
/// data to be passed in at the beginning of the invoked, and a list of output
/// parameters to store the playbook result.
class GoogleCloudDialogflowCxV3beta1Playbook {
  /// The timestamp of initial playbook creation.
  ///
  /// Output only.
  core.String? createTime;

  /// The human-readable name of the playbook, unique within an agent.
  ///
  /// Required.
  core.String? displayName;

  /// High level description of the goal the playbook intend to accomplish.
  ///
  /// A goal should be concise since it's visible to other playbooks that may
  /// reference this playbook.
  ///
  /// Required.
  core.String? goal;

  /// A list of registered handlers to execute based on the specified triggers.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1Handler>? handlers;

  /// Defined structured input parameters for this playbook.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1ParameterDefinition>?
  inputParameterDefinitions;

  /// Instruction to accomplish target goal.
  GoogleCloudDialogflowCxV3beta1PlaybookInstruction? instruction;

  /// Llm model settings for the playbook.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1LlmModelSettings? llmModelSettings;

  /// The unique identifier of the playbook.
  ///
  /// Format: `projects//locations//agents//playbooks/`.
  core.String? name;

  /// Defined structured output parameters for this playbook.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1ParameterDefinition>?
  outputParameterDefinitions;

  /// Type of the playbook.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PLAYBOOK_TYPE_UNSPECIFIED" : Unspecified type. Default to TASK.
  /// - "TASK" : Task playbook.
  /// - "ROUTINE" : Routine playbook.
  core.String? playbookType;

  /// The resource name of flows referenced by the current playbook in the
  /// instructions.
  ///
  /// Output only.
  core.List<core.String>? referencedFlows;

  /// The resource name of other playbooks referenced by the current playbook in
  /// the instructions.
  ///
  /// Output only.
  core.List<core.String>? referencedPlaybooks;

  /// The resource name of tools referenced by the current playbook in the
  /// instructions.
  ///
  /// If not provided explicitly, they are will be implied using the tool being
  /// referenced in goal and steps.
  ///
  /// Optional.
  core.List<core.String>? referencedTools;

  /// Playbook level Settings for speech to text detection.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings? speechSettings;

  /// Estimated number of tokes current playbook takes when sent to the LLM.
  ///
  /// Output only.
  core.String? tokenCount;

  /// Last time the playbook version was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowCxV3beta1Playbook({
    this.createTime,
    this.displayName,
    this.goal,
    this.handlers,
    this.inputParameterDefinitions,
    this.instruction,
    this.llmModelSettings,
    this.name,
    this.outputParameterDefinitions,
    this.playbookType,
    this.referencedFlows,
    this.referencedPlaybooks,
    this.referencedTools,
    this.speechSettings,
    this.tokenCount,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3beta1Playbook.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        goal: json_['goal'] as core.String?,
        handlers:
            (json_['handlers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Handler.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inputParameterDefinitions:
            (json_['inputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        instruction:
            json_.containsKey('instruction')
                ? GoogleCloudDialogflowCxV3beta1PlaybookInstruction.fromJson(
                  json_['instruction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        llmModelSettings:
            json_.containsKey('llmModelSettings')
                ? GoogleCloudDialogflowCxV3beta1LlmModelSettings.fromJson(
                  json_['llmModelSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        outputParameterDefinitions:
            (json_['outputParameterDefinitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ParameterDefinition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        playbookType: json_['playbookType'] as core.String?,
        referencedFlows:
            (json_['referencedFlows'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        referencedPlaybooks:
            (json_['referencedPlaybooks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        referencedTools:
            (json_['referencedTools'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        speechSettings:
            json_.containsKey('speechSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings.fromJson(
                  json_['speechSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tokenCount: json_['tokenCount'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (goal != null) 'goal': goal!,
    if (handlers != null) 'handlers': handlers!,
    if (inputParameterDefinitions != null)
      'inputParameterDefinitions': inputParameterDefinitions!,
    if (instruction != null) 'instruction': instruction!,
    if (llmModelSettings != null) 'llmModelSettings': llmModelSettings!,
    if (name != null) 'name': name!,
    if (outputParameterDefinitions != null)
      'outputParameterDefinitions': outputParameterDefinitions!,
    if (playbookType != null) 'playbookType': playbookType!,
    if (referencedFlows != null) 'referencedFlows': referencedFlows!,
    if (referencedPlaybooks != null)
      'referencedPlaybooks': referencedPlaybooks!,
    if (referencedTools != null) 'referencedTools': referencedTools!,
    if (speechSettings != null) 'speechSettings': speechSettings!,
    if (tokenCount != null) 'tokenCount': tokenCount!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The playbook import strategy used for resource conflict resolution
/// associated with an ImportPlaybookRequest.
typedef GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy =
    $PlaybookImportStrategy;

/// Input of the playbook.
class GoogleCloudDialogflowCxV3beta1PlaybookInput {
  /// A list of input parameters for the action.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? actionParameters;

  /// Summary string of the preceding conversation for the child playbook
  /// invocation.
  ///
  /// Optional.
  core.String? precedingConversationSummary;

  GoogleCloudDialogflowCxV3beta1PlaybookInput({
    this.actionParameters,
    this.precedingConversationSummary,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookInput.fromJson(core.Map json_)
    : this(
        actionParameters:
            json_.containsKey('actionParameters')
                ? json_['actionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        precedingConversationSummary:
            json_['precedingConversationSummary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionParameters != null) 'actionParameters': actionParameters!,
    if (precedingConversationSummary != null)
      'precedingConversationSummary': precedingConversationSummary!,
  };
}

/// Message of the Instruction of the playbook.
class GoogleCloudDialogflowCxV3beta1PlaybookInstruction {
  /// General guidelines for the playbook.
  ///
  /// These are unstructured instructions that are not directly part of the
  /// goal, e.g. "Always be polite". It's valid for this text to be long and
  /// used instead of steps altogether.
  core.String? guidelines;

  /// Ordered list of step by step execution instructions to accomplish target
  /// goal.
  core.List<GoogleCloudDialogflowCxV3beta1PlaybookStep>? steps;

  GoogleCloudDialogflowCxV3beta1PlaybookInstruction({
    this.guidelines,
    this.steps,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookInstruction.fromJson(core.Map json_)
    : this(
        guidelines: json_['guidelines'] as core.String?,
        steps:
            (json_['steps'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1PlaybookStep.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (guidelines != null) 'guidelines': guidelines!,
    if (steps != null) 'steps': steps!,
  };
}

/// Stores metadata of the invocation of a child playbook.
///
/// Playbook invocation actions enter the child playbook.
class GoogleCloudDialogflowCxV3beta1PlaybookInvocation {
  /// The display name of the playbook.
  ///
  /// Output only.
  core.String? displayName;

  /// The unique identifier of the playbook.
  ///
  /// Format: `projects//locations//agents//playbooks/`.
  ///
  /// Required.
  core.String? playbook;

  /// Input of the child playbook invocation.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookInput? playbookInput;

  /// Output of the child playbook invocation.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1PlaybookOutput? playbookOutput;

  /// Playbook invocation's output state.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OUTPUT_STATE_UNSPECIFIED" : Unspecified output.
  /// - "OUTPUT_STATE_OK" : Succeeded.
  /// - "OUTPUT_STATE_CANCELLED" : Cancelled.
  /// - "OUTPUT_STATE_FAILED" : Failed.
  /// - "OUTPUT_STATE_ESCALATED" : Escalated.
  /// - "OUTPUT_STATE_PENDING" : Pending.
  core.String? playbookState;

  GoogleCloudDialogflowCxV3beta1PlaybookInvocation({
    this.displayName,
    this.playbook,
    this.playbookInput,
    this.playbookOutput,
    this.playbookState,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookInvocation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        playbook: json_['playbook'] as core.String?,
        playbookInput:
            json_.containsKey('playbookInput')
                ? GoogleCloudDialogflowCxV3beta1PlaybookInput.fromJson(
                  json_['playbookInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookOutput:
            json_.containsKey('playbookOutput')
                ? GoogleCloudDialogflowCxV3beta1PlaybookOutput.fromJson(
                  json_['playbookOutput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        playbookState: json_['playbookState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (playbook != null) 'playbook': playbook!,
    if (playbookInput != null) 'playbookInput': playbookInput!,
    if (playbookOutput != null) 'playbookOutput': playbookOutput!,
    if (playbookState != null) 'playbookState': playbookState!,
  };
}

/// Output of the playbook.
class GoogleCloudDialogflowCxV3beta1PlaybookOutput {
  /// A Struct object of output parameters for the action.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? actionParameters;

  /// Summary string of the execution result of the child playbook.
  ///
  /// Optional.
  core.String? executionSummary;

  /// End state of the playbook.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "OK" : Playbook succeeded.
  /// - "CANCELLED" : Playbook cancelled.
  /// - "FAILED" : Playbook failed.
  /// - "ESCALATED" : Playbook failed due to escalation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? state;

  GoogleCloudDialogflowCxV3beta1PlaybookOutput({
    this.actionParameters,
    this.executionSummary,
    this.state,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookOutput.fromJson(core.Map json_)
    : this(
        actionParameters:
            json_.containsKey('actionParameters')
                ? json_['actionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        executionSummary: json_['executionSummary'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionParameters != null) 'actionParameters': actionParameters!,
    if (executionSummary != null) 'executionSummary': executionSummary!,
    if (state != null) 'state': state!,
  };
}

/// Message of single step execution.
class GoogleCloudDialogflowCxV3beta1PlaybookStep {
  /// Sub-processing needed to execute the current step.
  core.List<GoogleCloudDialogflowCxV3beta1PlaybookStep>? steps;

  /// Step instruction in text format.
  core.String? text;

  GoogleCloudDialogflowCxV3beta1PlaybookStep({this.steps, this.text});

  GoogleCloudDialogflowCxV3beta1PlaybookStep.fromJson(core.Map json_)
    : this(
        steps:
            (json_['steps'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1PlaybookStep.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (steps != null) 'steps': steps!,
    if (text != null) 'text': text!,
  };
}

/// Stores metadata of the transition to another target playbook.
///
/// Playbook transition actions exit the caller playbook and enter the target
/// playbook.
class GoogleCloudDialogflowCxV3beta1PlaybookTransition {
  /// The display name of the playbook.
  ///
  /// Output only.
  core.String? displayName;

  /// A list of input parameters for the action.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.Object?>? inputActionParameters;

  /// The unique identifier of the playbook.
  ///
  /// Format: `projects//locations//agents//playbooks/`.
  ///
  /// Required.
  core.String? playbook;

  GoogleCloudDialogflowCxV3beta1PlaybookTransition({
    this.displayName,
    this.inputActionParameters,
    this.playbook,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookTransition.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        inputActionParameters:
            json_.containsKey('inputActionParameters')
                ? json_['inputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        playbook: json_['playbook'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (inputActionParameters != null)
      'inputActionParameters': inputActionParameters!,
    if (playbook != null) 'playbook': playbook!,
  };
}

/// Playbook version is a snapshot of the playbook at certain timestamp.
class GoogleCloudDialogflowCxV3beta1PlaybookVersion {
  /// The description of the playbook version.
  ///
  /// Optional.
  core.String? description;

  /// Snapshot of the examples belonging to the playbook when the playbook
  /// version is created.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowCxV3beta1Example>? examples;

  /// The unique identifier of the playbook version.
  ///
  /// Format: `projects//locations//agents//playbooks//versions/`.
  core.String? name;

  /// Snapshot of the playbook when the playbook version is created.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3beta1Playbook? playbook;

  /// Last time the playbook version was created or modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowCxV3beta1PlaybookVersion({
    this.description,
    this.examples,
    this.name,
    this.playbook,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        examples:
            (json_['examples'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1Example.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        playbook:
            json_.containsKey('playbook')
                ? GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
                  json_['playbook'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (examples != null) 'examples': examples!,
    if (name != null) 'name': name!,
    if (playbook != null) 'playbook': playbook!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents the query input.
///
/// It can contain one of: 1. A conversational query in the form of text. 2. An
/// intent query that specifies which intent to trigger. 3. Natural language
/// speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to
/// invoke an intent and fill in parameter value. 6. The results of a tool
/// executed by the client.
class GoogleCloudDialogflowCxV3beta1QueryInput {
  /// The natural language speech audio to be processed.
  GoogleCloudDialogflowCxV3beta1AudioInput? audio;

  /// The DTMF event to be handled.
  GoogleCloudDialogflowCxV3beta1DtmfInput? dtmf;

  /// The event to be triggered.
  GoogleCloudDialogflowCxV3beta1EventInput? event;

  /// The intent to be triggered.
  GoogleCloudDialogflowCxV3beta1IntentInput? intent;

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
  GoogleCloudDialogflowCxV3beta1TextInput? text;

  /// The results of a tool executed by the client.
  GoogleCloudDialogflowCxV3beta1ToolCallResult? toolCallResult;

  GoogleCloudDialogflowCxV3beta1QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    this.languageCode,
    this.text,
    this.toolCallResult,
  });

  GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(core.Map json_)
    : this(
        audio:
            json_.containsKey('audio')
                ? GoogleCloudDialogflowCxV3beta1AudioInput.fromJson(
                  json_['audio'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dtmf:
            json_.containsKey('dtmf')
                ? GoogleCloudDialogflowCxV3beta1DtmfInput.fromJson(
                  json_['dtmf'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        event:
            json_.containsKey('event')
                ? GoogleCloudDialogflowCxV3beta1EventInput.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intent:
            json_.containsKey('intent')
                ? GoogleCloudDialogflowCxV3beta1IntentInput.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        text:
            json_.containsKey('text')
                ? GoogleCloudDialogflowCxV3beta1TextInput.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolCallResult:
            json_.containsKey('toolCallResult')
                ? GoogleCloudDialogflowCxV3beta1ToolCallResult.fromJson(
                  json_['toolCallResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audio != null) 'audio': audio!,
    if (dtmf != null) 'dtmf': dtmf!,
    if (event != null) 'event': event!,
    if (intent != null) 'intent': intent!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (text != null) 'text': text!,
    if (toolCallResult != null) 'toolCallResult': toolCallResult!,
  };
}

/// Represents the parameters of a conversational query.
class GoogleCloudDialogflowCxV3beta1QueryParameters {
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

  /// The unique identifier of the playbook to start or continue the session
  /// with.
  ///
  /// If `current_playbook` is specified, the previous state of the session will
  /// be ignored by Dialogflow. Format:
  /// `projects//locations//agents//playbooks/`.
  ///
  /// Optional.
  core.String? currentPlaybook;

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

  /// Use the specified LLM model settings for processing the request.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1LlmModelSettings? llmModelSettings;

  /// Scope for the parameters.
  ///
  /// If not specified, parameters will be treated as session parameters.
  /// Parameters with custom scope will not be put into session parameters. You
  /// can reference the parameters with custom scope in the agent with the
  /// following format: $parameter-scope.params.parameter-id.
  core.String? parameterScope;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? populateDataStoreConnectionSignals;

  /// Search configuration for UCS search queries.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1SearchConfig? searchConfig;

  /// Additional session entity types to replace or extend developer entity
  /// types with.
  ///
  /// The entity synonyms apply to all languages and persist for the session of
  /// this query.
  core.List<GoogleCloudDialogflowCxV3beta1SessionEntityType>?
  sessionEntityTypes;

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

  GoogleCloudDialogflowCxV3beta1QueryParameters({
    this.analyzeQueryTextSentiment,
    this.channel,
    this.currentPage,
    this.currentPlaybook,
    this.disableWebhook,
    this.endUserMetadata,
    this.flowVersions,
    this.geoLocation,
    this.llmModelSettings,
    this.parameterScope,
    this.parameters,
    this.payload,
    this.populateDataStoreConnectionSignals,
    this.searchConfig,
    this.sessionEntityTypes,
    this.sessionTtl,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowCxV3beta1QueryParameters.fromJson(core.Map json_)
    : this(
        analyzeQueryTextSentiment:
            json_['analyzeQueryTextSentiment'] as core.bool?,
        channel: json_['channel'] as core.String?,
        currentPage: json_['currentPage'] as core.String?,
        currentPlaybook: json_['currentPlaybook'] as core.String?,
        disableWebhook: json_['disableWebhook'] as core.bool?,
        endUserMetadata:
            json_.containsKey('endUserMetadata')
                ? json_['endUserMetadata']
                    as core.Map<core.String, core.dynamic>
                : null,
        flowVersions:
            (json_['flowVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        geoLocation:
            json_.containsKey('geoLocation')
                ? GoogleTypeLatLng.fromJson(
                  json_['geoLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        llmModelSettings:
            json_.containsKey('llmModelSettings')
                ? GoogleCloudDialogflowCxV3beta1LlmModelSettings.fromJson(
                  json_['llmModelSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameterScope: json_['parameterScope'] as core.String?,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        populateDataStoreConnectionSignals:
            json_['populateDataStoreConnectionSignals'] as core.bool?,
        searchConfig:
            json_.containsKey('searchConfig')
                ? GoogleCloudDialogflowCxV3beta1SearchConfig.fromJson(
                  json_['searchConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionEntityTypes:
            (json_['sessionEntityTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sessionTtl: json_['sessionTtl'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        webhookHeaders: (json_['webhookHeaders']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analyzeQueryTextSentiment != null)
      'analyzeQueryTextSentiment': analyzeQueryTextSentiment!,
    if (channel != null) 'channel': channel!,
    if (currentPage != null) 'currentPage': currentPage!,
    if (currentPlaybook != null) 'currentPlaybook': currentPlaybook!,
    if (disableWebhook != null) 'disableWebhook': disableWebhook!,
    if (endUserMetadata != null) 'endUserMetadata': endUserMetadata!,
    if (flowVersions != null) 'flowVersions': flowVersions!,
    if (geoLocation != null) 'geoLocation': geoLocation!,
    if (llmModelSettings != null) 'llmModelSettings': llmModelSettings!,
    if (parameterScope != null) 'parameterScope': parameterScope!,
    if (parameters != null) 'parameters': parameters!,
    if (payload != null) 'payload': payload!,
    if (populateDataStoreConnectionSignals != null)
      'populateDataStoreConnectionSignals': populateDataStoreConnectionSignals!,
    if (searchConfig != null) 'searchConfig': searchConfig!,
    if (sessionEntityTypes != null) 'sessionEntityTypes': sessionEntityTypes!,
    if (sessionTtl != null) 'sessionTtl': sessionTtl!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (webhookHeaders != null) 'webhookHeaders': webhookHeaders!,
  };
}

/// Represents the result of a conversational query.
class GoogleCloudDialogflowCxV3beta1QueryResult {
  /// Returns the current advanced settings including IVR settings.
  ///
  /// Even though the operations configured by these settings are performed by
  /// Dialogflow, the client may need to perform special logic at the moment.
  /// For example, if Dialogflow exports audio to Google Cloud Storage, then the
  /// client may need to wait for the resulting object to appear in the bucket
  /// before proceeding.
  GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

  /// Indicates whether the Thumbs up/Thumbs down rating controls are need to be
  /// shown for the response in the Dialogflow Messenger widget.
  core.bool? allowAnswerFeedback;

  /// The current Flow.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to `name` and `display_name`.
  GoogleCloudDialogflowCxV3beta1Flow? currentFlow;

  /// The current Page.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to `name` and `display_name`.
  GoogleCloudDialogflowCxV3beta1Page? currentPage;

  /// Data store connection feature output signals.
  ///
  /// Filled only when data stores are involved in serving the query.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals?
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
  GoogleCloudDialogflowCxV3beta1DtmfInput? dtmf;

  /// The information of a query if handled by generative agent resources.
  GoogleCloudDialogflowCxV3beta1GenerativeInfo? generativeInfo;

  /// The Intent that matched the conversational query.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to: `name` and `display_name`. This field is deprecated, please use
  /// QueryResult.match instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDialogflowCxV3beta1Intent? intent;

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
  GoogleCloudDialogflowCxV3beta1Match? match;

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
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessage>? responseMessages;

  /// The sentiment analyss result, which depends on
  /// `analyze_query_text_sentiment`, specified in the request.
  GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult?
  sentimentAnalysisResult;

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

  /// The list of webhook display names in the order of call sequence.
  core.List<core.String>? webhookDisplayNames;

  /// The list of webhook ids in the order of call sequence.
  core.List<core.String>? webhookIds;

  /// The list of webhook latencies in the order of call sequence.
  core.List<core.String>? webhookLatencies;

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

  /// The list of webhook tags in the order of call sequence.
  core.List<core.String>? webhookTags;

  GoogleCloudDialogflowCxV3beta1QueryResult({
    this.advancedSettings,
    this.allowAnswerFeedback,
    this.currentFlow,
    this.currentPage,
    this.dataStoreConnectionSignals,
    this.diagnosticInfo,
    this.dtmf,
    this.generativeInfo,
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
    this.webhookDisplayNames,
    this.webhookIds,
    this.webhookLatencies,
    this.webhookPayloads,
    this.webhookStatuses,
    this.webhookTags,
  });

  GoogleCloudDialogflowCxV3beta1QueryResult.fromJson(core.Map json_)
    : this(
        advancedSettings:
            json_.containsKey('advancedSettings')
                ? GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
                  json_['advancedSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        allowAnswerFeedback: json_['allowAnswerFeedback'] as core.bool?,
        currentFlow:
            json_.containsKey('currentFlow')
                ? GoogleCloudDialogflowCxV3beta1Flow.fromJson(
                  json_['currentFlow'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        currentPage:
            json_.containsKey('currentPage')
                ? GoogleCloudDialogflowCxV3beta1Page.fromJson(
                  json_['currentPage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataStoreConnectionSignals:
            json_.containsKey('dataStoreConnectionSignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals.fromJson(
                  json_['dataStoreConnectionSignals']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diagnosticInfo:
            json_.containsKey('diagnosticInfo')
                ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
                : null,
        dtmf:
            json_.containsKey('dtmf')
                ? GoogleCloudDialogflowCxV3beta1DtmfInput.fromJson(
                  json_['dtmf'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        generativeInfo:
            json_.containsKey('generativeInfo')
                ? GoogleCloudDialogflowCxV3beta1GenerativeInfo.fromJson(
                  json_['generativeInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intent:
            json_.containsKey('intent')
                ? GoogleCloudDialogflowCxV3beta1Intent.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentDetectionConfidence:
            (json_['intentDetectionConfidence'] as core.num?)?.toDouble(),
        languageCode: json_['languageCode'] as core.String?,
        match:
            json_.containsKey('match')
                ? GoogleCloudDialogflowCxV3beta1Match.fromJson(
                  json_['match'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        responseMessages:
            (json_['responseMessages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sentimentAnalysisResult:
            json_.containsKey('sentimentAnalysisResult')
                ? GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult.fromJson(
                  json_['sentimentAnalysisResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
        transcript: json_['transcript'] as core.String?,
        triggerEvent: json_['triggerEvent'] as core.String?,
        triggerIntent: json_['triggerIntent'] as core.String?,
        webhookDisplayNames:
            (json_['webhookDisplayNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        webhookIds:
            (json_['webhookIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        webhookLatencies:
            (json_['webhookLatencies'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        webhookPayloads:
            (json_['webhookPayloads'] as core.List?)
                ?.map((value) => value as core.Map<core.String, core.dynamic>)
                .toList(),
        webhookStatuses:
            (json_['webhookStatuses'] as core.List?)
                ?.map(
                  (value) => GoogleRpcStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        webhookTags:
            (json_['webhookTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedSettings != null) 'advancedSettings': advancedSettings!,
    if (allowAnswerFeedback != null)
      'allowAnswerFeedback': allowAnswerFeedback!,
    if (currentFlow != null) 'currentFlow': currentFlow!,
    if (currentPage != null) 'currentPage': currentPage!,
    if (dataStoreConnectionSignals != null)
      'dataStoreConnectionSignals': dataStoreConnectionSignals!,
    if (diagnosticInfo != null) 'diagnosticInfo': diagnosticInfo!,
    if (dtmf != null) 'dtmf': dtmf!,
    if (generativeInfo != null) 'generativeInfo': generativeInfo!,
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
    if (webhookDisplayNames != null)
      'webhookDisplayNames': webhookDisplayNames!,
    if (webhookIds != null) 'webhookIds': webhookIds!,
    if (webhookLatencies != null) 'webhookLatencies': webhookLatencies!,
    if (webhookPayloads != null) 'webhookPayloads': webhookPayloads!,
    if (webhookStatuses != null) 'webhookStatuses': webhookStatuses!,
    if (webhookTags != null) 'webhookTags': webhookTags!,
  };
}

/// Resource name and display name.
typedef GoogleCloudDialogflowCxV3beta1ResourceName = $ResourceName;

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
class GoogleCloudDialogflowCxV3beta1ResponseMessage {
  /// The channel which the response is associated with.
  ///
  /// Clients can specify the channel via QueryParameters.channel, and only
  /// associated channel response will be returned.
  core.String? channel;

  /// Indicates that the conversation succeeded.
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess?
  conversationSuccess;

  /// A signal that indicates the interaction with the Dialogflow agent has
  /// ended.
  ///
  /// This message is generated by Dialogflow only when the conversation reaches
  /// `END_SESSION` page. It is not supposed to be defined by the user. It's
  /// guaranteed that there is at most one such message in each response.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction? endInteraction;

  /// Represents info card for knowledge answers, to be better rendered in
  /// Dialogflow Messenger.
  GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard?
  knowledgeInfoCard;

  /// Hands off conversation to a human agent.
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff?
  liveAgentHandoff;

  /// An audio response message composed of both the synthesized Dialogflow
  /// agent responses and responses defined via play_audio.
  ///
  /// This message is generated by Dialogflow only and not supposed to be
  /// defined by the user.
  ///
  /// Output only.
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio? mixedAudio;

  /// A text or ssml response that is preferentially used for TTS output audio
  /// synthesis, as described in the comment on the ResponseMessage message.
  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText? outputAudioText;

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
  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio? playAudio;

  /// A signal that the client should transfer the phone call connected to this
  /// agent to a third-party endpoint.
  GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall?
  telephonyTransferCall;

  /// Returns a text response.
  GoogleCloudDialogflowCxV3beta1ResponseMessageText? text;

  /// Returns the definition of a tool call that should be executed by the
  /// client.
  GoogleCloudDialogflowCxV3beta1ToolCall? toolCall;

  GoogleCloudDialogflowCxV3beta1ResponseMessage({
    this.channel,
    this.conversationSuccess,
    this.endInteraction,
    this.knowledgeInfoCard,
    this.liveAgentHandoff,
    this.mixedAudio,
    this.outputAudioText,
    this.payload,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
    this.toolCall,
  });

  GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        conversationSuccess:
            json_.containsKey('conversationSuccess')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromJson(
                  json_['conversationSuccess']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endInteraction:
            json_.containsKey('endInteraction')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction.fromJson(
                  json_['endInteraction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeInfoCard:
            json_.containsKey('knowledgeInfoCard')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard.fromJson(
                  json_['knowledgeInfoCard']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        liveAgentHandoff:
            json_.containsKey('liveAgentHandoff')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromJson(
                  json_['liveAgentHandoff']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mixedAudio:
            json_.containsKey('mixedAudio')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
                  json_['mixedAudio'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputAudioText:
            json_.containsKey('outputAudioText')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromJson(
                  json_['outputAudioText']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        playAudio:
            json_.containsKey('playAudio')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
                  json_['playAudio'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        telephonyTransferCall:
            json_.containsKey('telephonyTransferCall')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall.fromJson(
                  json_['telephonyTransferCall']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolCall:
            json_.containsKey('toolCall')
                ? GoogleCloudDialogflowCxV3beta1ToolCall.fromJson(
                  json_['toolCall'] as core.Map<core.String, core.dynamic>,
                )
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
    if (telephonyTransferCall != null)
      'telephonyTransferCall': telephonyTransferCall!,
    if (text != null) 'text': text!,
    if (toolCall != null) 'toolCall': toolCall!,
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
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess =
    $ResponseMessageConversationSuccess;

/// Indicates that interaction with the Dialogflow agent has ended.
///
/// This message is generated by Dialogflow only and not supposed to be defined
/// by the user.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction = $Empty;

/// Represents info card response.
///
/// If the response contains generative knowledge prediction, Dialogflow will
/// return a payload with Infobot Messenger compatible info card. Otherwise, the
/// info card response is skipped.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard = $Empty;

/// Indicates that the conversation should be handed off to a live agent.
///
/// Dialogflow only uses this to determine which conversations were handed off
/// to a human agent for measurement purposes. What else to do with this signal
/// is up to you and your handoff procedures. You may set this, for example: *
/// In the entry_fulfillment of a Page if entering the page indicates something
/// went extremely wrong in the conversation. * In a webhook response when you
/// determine that the customer issue can only be handled by a human.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff =
    $ResponseMessageLiveAgentHandoff;

/// Represents an audio message that is composed of both segments synthesized
/// from the Dialogflow agent prompts and ones hosted externally at the
/// specified URIs.
///
/// The external URIs are specified via play_audio. This message is generated by
/// Dialogflow only and not supposed to be defined by the user.
class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio {
  /// Segments this audio response is composed of.
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>?
  segments;

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio({this.segments});

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
    core.Map json_,
  ) : this(
        segments:
            (json_['segments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (segments != null) 'segments': segments!,
  };
}

/// Represents one segment of audio.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment =
    $ResponseMessageMixedAudioSegment;

/// A text or ssml response that is preferentially used for TTS output audio
/// synthesis, as described in the comment on the ResponseMessage message.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText =
    $ResponseMessageOutputAudioText;

/// Specifies an audio clip to be played by the client as part of the response.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio =
    $ResponseMessagePlayAudio;

/// Represents the signal that telles the client to transfer the phone call
/// connected to the agent to a third-party endpoint.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall =
    $ResponseMessageTelephonyTransferCall;

/// The text response message.
typedef GoogleCloudDialogflowCxV3beta1ResponseMessageText =
    $ResponseMessageText;

/// The request message for Agents.RestoreAgent.
class GoogleCloudDialogflowCxV3beta1RestoreAgentRequest {
  /// Uncompressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> bytes_) {
    agentContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
  GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource? gitSource;

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

  GoogleCloudDialogflowCxV3beta1RestoreAgentRequest({
    this.agentContent,
    this.agentUri,
    this.gitSource,
    this.restoreOption,
  });

  GoogleCloudDialogflowCxV3beta1RestoreAgentRequest.fromJson(core.Map json_)
    : this(
        agentContent: json_['agentContent'] as core.String?,
        agentUri: json_['agentUri'] as core.String?,
        gitSource:
            json_.containsKey('gitSource')
                ? GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource.fromJson(
                  json_['gitSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        restoreOption: json_['restoreOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agentContent != null) 'agentContent': agentContent!,
    if (agentUri != null) 'agentUri': agentUri!,
    if (gitSource != null) 'gitSource': gitSource!,
    if (restoreOption != null) 'restoreOption': restoreOption!,
  };
}

/// Settings for restoring from a git branch
typedef GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource =
    $RestoreAgentRequestGitSource;

/// The request message for Playbooks.RestorePlaybookVersion.
typedef GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest = $Empty;

/// The response message for Playbooks.RestorePlaybookVersion.
class GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse {
  /// The updated playbook.
  GoogleCloudDialogflowCxV3beta1Playbook? playbook;

  GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse({this.playbook});

  GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse.fromJson(
    core.Map json_,
  ) : this(
        playbook:
            json_.containsKey('playbook')
                ? GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
                  json_['playbook'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (playbook != null) 'playbook': playbook!,
  };
}

/// The request message for Tools.RestoreToolVersion.
typedef GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest = $Empty;

/// The response message for Tools.RestoreToolVersion.
class GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse {
  /// The updated tool.
  GoogleCloudDialogflowCxV3beta1Tool? tool;

  GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse({this.tool});

  GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse.fromJson(
    core.Map json_,
  ) : this(
        tool:
            json_.containsKey('tool')
                ? GoogleCloudDialogflowCxV3beta1Tool.fromJson(
                  json_['tool'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (tool != null) 'tool': tool!,
  };
}

/// The configuration for auto rollout.
class GoogleCloudDialogflowCxV3beta1RolloutConfig {
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
  core.List<GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>?
  rolloutSteps;

  GoogleCloudDialogflowCxV3beta1RolloutConfig({
    this.failureCondition,
    this.rolloutCondition,
    this.rolloutSteps,
  });

  GoogleCloudDialogflowCxV3beta1RolloutConfig.fromJson(core.Map json_)
    : this(
        failureCondition: json_['failureCondition'] as core.String?,
        rolloutCondition: json_['rolloutCondition'] as core.String?,
        rolloutSteps:
            (json_['rolloutSteps'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (failureCondition != null) 'failureCondition': failureCondition!,
    if (rolloutCondition != null) 'rolloutCondition': rolloutCondition!,
    if (rolloutSteps != null) 'rolloutSteps': rolloutSteps!,
  };
}

/// A single rollout step with specified traffic allocation.
typedef GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep =
    $RolloutConfigRolloutStep;

/// State of the auto-rollout process.
typedef GoogleCloudDialogflowCxV3beta1RolloutState = $RolloutState;

/// The request message for Environments.RunContinuousTest.
typedef GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest = $Empty;

/// The request message for TestCases.RunTestCase.
typedef GoogleCloudDialogflowCxV3beta1RunTestCaseRequest = $RunTestCaseRequest;

/// Settings for Generative Safety.
class GoogleCloudDialogflowCxV3beta1SafetySettings {
  /// Banned phrases for generated text.
  core.List<GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase>? bannedPhrases;

  /// Default phrase match strategy for banned phrases.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PHRASE_MATCH_STRATEGY_UNSPECIFIED" : Unspecified, defaults to
  /// PARTIAL_MATCH.
  /// - "PARTIAL_MATCH" : Text that contains the phrase as a substring will be
  /// matched, e.g. "foo" will match "afoobar".
  /// - "WORD_MATCH" : Text that contains the tokenized words of the phrase will
  /// be matched, e.g. "foo" will match "a foo bar" and "foo bar", but not
  /// "foobar".
  core.String? defaultBannedPhraseMatchStrategy;

  /// Settings for prompt security checks.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings?
  promptSecuritySettings;

  GoogleCloudDialogflowCxV3beta1SafetySettings({
    this.bannedPhrases,
    this.defaultBannedPhraseMatchStrategy,
    this.promptSecuritySettings,
  });

  GoogleCloudDialogflowCxV3beta1SafetySettings.fromJson(core.Map json_)
    : this(
        bannedPhrases:
            (json_['bannedPhrases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        defaultBannedPhraseMatchStrategy:
            json_['defaultBannedPhraseMatchStrategy'] as core.String?,
        promptSecuritySettings:
            json_.containsKey('promptSecuritySettings')
                ? GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings.fromJson(
                  json_['promptSecuritySettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bannedPhrases != null) 'bannedPhrases': bannedPhrases!,
    if (defaultBannedPhraseMatchStrategy != null)
      'defaultBannedPhraseMatchStrategy': defaultBannedPhraseMatchStrategy!,
    if (promptSecuritySettings != null)
      'promptSecuritySettings': promptSecuritySettings!,
  };
}

/// Text input which can be used for prompt or banned phrases.
typedef GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase =
    $SafetySettingsPhrase;

/// Settings for prompt security checks.
typedef GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings =
    $SafetySettingsPromptSecuritySettings;

/// Search configuration for UCS search queries.
class GoogleCloudDialogflowCxV3beta1SearchConfig {
  /// Boosting configuration for the datastores.
  ///
  /// Maps from datastore name to their boost configuration. Do not specify more
  /// than one BoostSpecs for each datastore name. If multiple BoostSpecs are
  /// provided for the same datastore name, the behavior is undefined.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1BoostSpecs>? boostSpecs;

  /// Filter configuration for the datastores.
  ///
  /// Maps from datastore name to the filter expression for that datastore. Do
  /// not specify more than one FilterSpecs for each datastore name. If multiple
  /// FilterSpecs are provided for the same datastore name, the behavior is
  /// undefined.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowCxV3beta1FilterSpecs>? filterSpecs;

  GoogleCloudDialogflowCxV3beta1SearchConfig({
    this.boostSpecs,
    this.filterSpecs,
  });

  GoogleCloudDialogflowCxV3beta1SearchConfig.fromJson(core.Map json_)
    : this(
        boostSpecs:
            (json_['boostSpecs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1BoostSpecs.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        filterSpecs:
            (json_['filterSpecs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1FilterSpecs.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
class GoogleCloudDialogflowCxV3beta1SecuritySettings {
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
  GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings?
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
  GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings?
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

  /// Retains data in interaction logging for the specified number of days.
  ///
  /// This does not apply to Cloud logging, which is owned by the user - not
  /// Dialogflow. User must set a value lower than Dialogflow's default 365d TTL
  /// (30 days for Agent Assist traffic), higher value will be ignored and use
  /// default. Setting a value higher than that has no effect. A missing value
  /// or setting to 0 also means we use default TTL. When data retention
  /// configuration is changed, it only applies to the data created after the
  /// change; the TTL of existing data created before the change stays intact.
  core.int? retentionWindowDays;

  GoogleCloudDialogflowCxV3beta1SecuritySettings({
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

  GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(core.Map json_)
    : this(
        audioExportSettings:
            json_.containsKey('audioExportSettings')
                ? GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings.fromJson(
                  json_['audioExportSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deidentifyTemplate: json_['deidentifyTemplate'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        insightsExportSettings:
            json_.containsKey('insightsExportSettings')
                ? GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings.fromJson(
                  json_['insightsExportSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inspectTemplate: json_['inspectTemplate'] as core.String?,
        name: json_['name'] as core.String?,
        purgeDataTypes:
            (json_['purgeDataTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        redactionScope: json_['redactionScope'] as core.String?,
        redactionStrategy: json_['redactionStrategy'] as core.String?,
        retentionStrategy: json_['retentionStrategy'] as core.String?,
        retentionWindowDays: json_['retentionWindowDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioExportSettings != null)
      'audioExportSettings': audioExportSettings!,
    if (deidentifyTemplate != null) 'deidentifyTemplate': deidentifyTemplate!,
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
typedef GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings =
    $SecuritySettingsAudioExportSettings;

/// Settings for exporting conversations to
/// [Insights](https://cloud.google.com/contact-center/insights/docs).
typedef GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings =
    $SecuritySettingsInsightsExportSettings;

/// The result of sentiment analysis.
///
/// Sentiment analysis inspects user input and identifies the prevailing
/// subjective opinion, especially to determine a user's attitude as positive,
/// negative, or neutral.
typedef GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult = $Shared08;

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
class GoogleCloudDialogflowCxV3beta1SessionEntityType {
  /// The collection of entities to override or supplement the custom entity
  /// type.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>? entities;

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

  GoogleCloudDialogflowCxV3beta1SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(core.Map json_)
    : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        entityOverrideMode: json_['entityOverrideMode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entities != null) 'entities': entities!,
    if (entityOverrideMode != null) 'entityOverrideMode': entityOverrideMode!,
    if (name != null) 'name': name!,
  };
}

/// A span represents a sub execution step of an action.
class GoogleCloudDialogflowCxV3beta1Span {
  /// Timestamp of the completion of the span.
  core.String? completeTime;

  /// The unordered collection of metrics in this span.
  core.List<GoogleCloudDialogflowCxV3beta1NamedMetric>? metrics;

  /// The name of the span.
  core.String? name;

  /// Timestamp of the start of the span.
  core.String? startTime;

  /// The metadata tags of the span such as span type.
  core.List<core.String>? tags;

  GoogleCloudDialogflowCxV3beta1Span({
    this.completeTime,
    this.metrics,
    this.name,
    this.startTime,
    this.tags,
  });

  GoogleCloudDialogflowCxV3beta1Span.fromJson(core.Map json_)
    : this(
        completeTime: json_['completeTime'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowCxV3beta1NamedMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (completeTime != null) 'completeTime': completeTime!,
    if (metrics != null) 'metrics': metrics!,
    if (name != null) 'name': name!,
    if (startTime != null) 'startTime': startTime!,
    if (tags != null) 'tags': tags!,
  };
}

/// Settings related to speech recognition.
typedef GoogleCloudDialogflowCxV3beta1SpeechToTextSettings =
    $SpeechToTextSettings;

/// The request message for Experiments.StartExperiment.
typedef GoogleCloudDialogflowCxV3beta1StartExperimentRequest = $Empty;

/// The status of the action.
class GoogleCloudDialogflowCxV3beta1Status {
  /// The exception thrown during the execution of the action.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ExceptionDetail? exception;

  GoogleCloudDialogflowCxV3beta1Status({this.exception});

  GoogleCloudDialogflowCxV3beta1Status.fromJson(core.Map json_)
    : this(
        exception:
            json_.containsKey('exception')
                ? GoogleCloudDialogflowCxV3beta1ExceptionDetail.fromJson(
                  json_['exception'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exception != null) 'exception': exception!,
  };
}

/// The request message for Experiments.StopExperiment.
typedef GoogleCloudDialogflowCxV3beta1StopExperimentRequest = $Empty;

/// The request to set the feedback for a bot answer.
class GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest {
  /// Feedback provided for a bot answer.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1AnswerFeedback? answerFeedback;

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

  GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest({
    this.answerFeedback,
    this.responseId,
    this.updateMask,
  });

  GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest.fromJson(
    core.Map json_,
  ) : this(
        answerFeedback:
            json_.containsKey('answerFeedback')
                ? GoogleCloudDialogflowCxV3beta1AnswerFeedback.fromJson(
                  json_['answerFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseId: json_['responseId'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerFeedback != null) 'answerFeedback': answerFeedback!,
    if (responseId != null) 'responseId': responseId!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig {
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
  GoogleCloudDialogflowCxV3beta1VoiceSelectionParams? voice;

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

  GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig.fromJson(core.Map json_)
    : this(
        effectsProfileId:
            (json_['effectsProfileId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pitch: (json_['pitch'] as core.num?)?.toDouble(),
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        voice:
            json_.containsKey('voice')
                ? GoogleCloudDialogflowCxV3beta1VoiceSelectionParams.fromJson(
                  json_['voice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
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
class GoogleCloudDialogflowCxV3beta1TestCase {
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
  GoogleCloudDialogflowCxV3beta1TestCaseResult? lastTestResult;

  /// The unique identifier of the test case.
  ///
  /// TestCases.CreateTestCase will populate the name automatically. Otherwise
  /// use format: `projects//locations//agents//testCases/`.
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
  core.List<GoogleCloudDialogflowCxV3beta1ConversationTurn>?
  testCaseConversationTurns;

  /// Config for the test case.
  GoogleCloudDialogflowCxV3beta1TestConfig? testConfig;

  GoogleCloudDialogflowCxV3beta1TestCase({
    this.creationTime,
    this.displayName,
    this.lastTestResult,
    this.name,
    this.notes,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  GoogleCloudDialogflowCxV3beta1TestCase.fromJson(core.Map json_)
    : this(
        creationTime: json_['creationTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        lastTestResult:
            json_.containsKey('lastTestResult')
                ? GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(
                  json_['lastTestResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        notes: json_['notes'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        testCaseConversationTurns:
            (json_['testCaseConversationTurns'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ConversationTurn.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        testConfig:
            json_.containsKey('testConfig')
                ? GoogleCloudDialogflowCxV3beta1TestConfig.fromJson(
                  json_['testConfig'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowCxV3beta1TestCaseResult {
  /// The conversation turns uttered during the test case replay in
  /// chronological order.
  core.List<GoogleCloudDialogflowCxV3beta1ConversationTurn>? conversationTurns;

  /// Environment where the test was run.
  ///
  /// If not set, it indicates the draft environment.
  core.String? environment;

  /// The resource name for the test case result.
  ///
  /// Format: `projects//locations//agents//testCases//results/`.
  core.String? name;

  /// Whether the test case passed in the agent environment.
  /// Possible string values are:
  /// - "TEST_RESULT_UNSPECIFIED" : Not specified. Should never be used.
  /// - "PASSED" : The test passed.
  /// - "FAILED" : The test did not pass.
  core.String? testResult;

  /// The time that the test was run.
  core.String? testTime;

  GoogleCloudDialogflowCxV3beta1TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(core.Map json_)
    : this(
        conversationTurns:
            (json_['conversationTurns'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ConversationTurn.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        environment: json_['environment'] as core.String?,
        name: json_['name'] as core.String?,
        testResult: json_['testResult'] as core.String?,
        testTime: json_['testTime'] as core.String?,
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
typedef GoogleCloudDialogflowCxV3beta1TestConfig = $TestConfig;

/// The description of differences between original and replayed agent output.
typedef GoogleCloudDialogflowCxV3beta1TestRunDifference = $TestRunDifference;

/// Represents the natural language text to be processed.
typedef GoogleCloudDialogflowCxV3beta1TextInput = $TextInput01;

/// Settings related to speech synthesizing.
class GoogleCloudDialogflowCxV3beta1TextToSpeechSettings {
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
  core.Map<core.String, GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig>?
  synthesizeSpeechConfigs;

  GoogleCloudDialogflowCxV3beta1TextToSpeechSettings({
    this.synthesizeSpeechConfigs,
  });

  GoogleCloudDialogflowCxV3beta1TextToSpeechSettings.fromJson(core.Map json_)
    : this(
        synthesizeSpeechConfigs: (json_['synthesizeSpeechConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (synthesizeSpeechConfigs != null)
      'synthesizeSpeechConfigs': synthesizeSpeechConfigs!,
  };
}

/// A tool provides a list of actions which are available to the Playbook to
/// attain its goal.
///
/// A Tool consists of a description of the tool's usage and a specification of
/// the tool which contains the schema and authentication information.
class GoogleCloudDialogflowCxV3beta1Tool {
  /// Integration connectors tool specification.
  GoogleCloudDialogflowCxV3beta1ToolConnectorTool? connectorSpec;

  /// Data store search tool specification.
  GoogleCloudDialogflowCxV3beta1ToolDataStoreTool? dataStoreSpec;

  /// High level description of the Tool and its usage.
  ///
  /// Required.
  core.String? description;

  /// The human-readable name of the Tool, unique within an agent.
  ///
  /// Required.
  core.String? displayName;

  /// Vertex extension tool specification.
  GoogleCloudDialogflowCxV3beta1ToolExtensionTool? extensionSpec;

  /// Client side executed function specification.
  GoogleCloudDialogflowCxV3beta1ToolFunctionTool? functionSpec;

  /// The unique identifier of the Tool.
  ///
  /// Format: `projects//locations//agents//tools/`.
  core.String? name;

  /// OpenAPI specification of the Tool.
  GoogleCloudDialogflowCxV3beta1ToolOpenApiTool? openApiSpec;

  /// The tool type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TOOL_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CUSTOMIZED_TOOL" : Customer provided tool.
  /// - "BUILTIN_TOOL" : First party built-in tool created by Dialogflow which
  /// cannot be modified.
  core.String? toolType;

  GoogleCloudDialogflowCxV3beta1Tool({
    this.connectorSpec,
    this.dataStoreSpec,
    this.description,
    this.displayName,
    this.extensionSpec,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.toolType,
  });

  GoogleCloudDialogflowCxV3beta1Tool.fromJson(core.Map json_)
    : this(
        connectorSpec:
            json_.containsKey('connectorSpec')
                ? GoogleCloudDialogflowCxV3beta1ToolConnectorTool.fromJson(
                  json_['connectorSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataStoreSpec:
            json_.containsKey('dataStoreSpec')
                ? GoogleCloudDialogflowCxV3beta1ToolDataStoreTool.fromJson(
                  json_['dataStoreSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        extensionSpec:
            json_.containsKey('extensionSpec')
                ? GoogleCloudDialogflowCxV3beta1ToolExtensionTool.fromJson(
                  json_['extensionSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        functionSpec:
            json_.containsKey('functionSpec')
                ? GoogleCloudDialogflowCxV3beta1ToolFunctionTool.fromJson(
                  json_['functionSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        openApiSpec:
            json_.containsKey('openApiSpec')
                ? GoogleCloudDialogflowCxV3beta1ToolOpenApiTool.fromJson(
                  json_['openApiSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolType: json_['toolType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectorSpec != null) 'connectorSpec': connectorSpec!,
    if (dataStoreSpec != null) 'dataStoreSpec': dataStoreSpec!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (extensionSpec != null) 'extensionSpec': extensionSpec!,
    if (functionSpec != null) 'functionSpec': functionSpec!,
    if (name != null) 'name': name!,
    if (openApiSpec != null) 'openApiSpec': openApiSpec!,
    if (toolType != null) 'toolType': toolType!,
  };
}

/// Authentication information required for API calls
class GoogleCloudDialogflowCxV3beta1ToolAuthentication {
  /// Config for API key auth.
  GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig? apiKeyConfig;

  /// Config for bearer token auth.
  GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  /// Config for OAuth.
  GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig? oauthConfig;

  /// Config for
  /// [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent)
  /// auth.
  GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  GoogleCloudDialogflowCxV3beta1ToolAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  GoogleCloudDialogflowCxV3beta1ToolAuthentication.fromJson(core.Map json_)
    : this(
        apiKeyConfig:
            json_.containsKey('apiKeyConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig.fromJson(
                  json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bearerTokenConfig:
            json_.containsKey('bearerTokenConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig.fromJson(
                  json_['bearerTokenConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauthConfig:
            json_.containsKey('oauthConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig.fromJson(
                  json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAgentAuthConfig:
            json_.containsKey('serviceAgentAuthConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig.fromJson(
                  json_['serviceAgentAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiKeyConfig != null) 'apiKeyConfig': apiKeyConfig!,
    if (bearerTokenConfig != null) 'bearerTokenConfig': bearerTokenConfig!,
    if (oauthConfig != null) 'oauthConfig': oauthConfig!,
    if (serviceAgentAuthConfig != null)
      'serviceAgentAuthConfig': serviceAgentAuthConfig!,
  };
}

/// Config for authentication with API key.
typedef GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig =
    $ToolAuthenticationApiKeyConfig;

/// Config for authentication using bearer token.
typedef GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig =
    $ToolAuthenticationBearerTokenConfig;

/// Config for authentication with OAuth.
typedef GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig =
    $ToolAuthenticationOAuthConfig;

/// Config for auth using
/// [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
typedef GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig =
    $ToolAuthenticationServiceAgentAuthConfig;

/// Represents a call of a specific tool's action with the specified inputs.
typedef GoogleCloudDialogflowCxV3beta1ToolCall = $ToolCall02;

/// The result of calling a tool's action that has been executed by the client.
class GoogleCloudDialogflowCxV3beta1ToolCallResult {
  /// The name of the tool's action associated with this call.
  ///
  /// Required.
  core.String? action;

  /// The tool call's error.
  GoogleCloudDialogflowCxV3beta1ToolCallResultError? error;

  /// The tool call's output parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputParameters;

  /// The tool associated with this call.
  ///
  /// Format: `projects//locations//agents//tools/`.
  ///
  /// Required.
  core.String? tool;

  GoogleCloudDialogflowCxV3beta1ToolCallResult({
    this.action,
    this.error,
    this.outputParameters,
    this.tool,
  });

  GoogleCloudDialogflowCxV3beta1ToolCallResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        error:
            json_.containsKey('error')
                ? GoogleCloudDialogflowCxV3beta1ToolCallResultError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputParameters:
            json_.containsKey('outputParameters')
                ? json_['outputParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (error != null) 'error': error!,
    if (outputParameters != null) 'outputParameters': outputParameters!,
    if (tool != null) 'tool': tool!,
  };
}

/// An error produced by the tool call.
typedef GoogleCloudDialogflowCxV3beta1ToolCallResultError =
    $ToolCallResultError;

/// A ConnectorTool enabling using Integration Connectors Connections as tools.
class GoogleCloudDialogflowCxV3beta1ToolConnectorTool {
  /// Actions for the tool to use.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction>? actions;

  /// Integration Connectors end-user authentication configuration.
  ///
  /// If configured, the end-user authentication fields will be passed in the
  /// Integration Connectors API request and override the admin, default
  /// authentication configured for the Connection. **Note**: The Connection
  /// must have authentication override enabled in order to specify an EUC
  /// configuration here - otherwise, the ConnectorTool creation will fail. See:
  /// https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig? endUserAuthConfig;

  /// The full resource name of the referenced Integration Connectors
  /// Connection.
  ///
  /// Format: `projects / * /locations / * /connections / * `
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1ToolConnectorTool({
    this.actions,
    this.endUserAuthConfig,
    this.name,
  });

  GoogleCloudDialogflowCxV3beta1ToolConnectorTool.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        endUserAuthConfig:
            json_.containsKey('endUserAuthConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig.fromJson(
                  json_['endUserAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (endUserAuthConfig != null) 'endUserAuthConfig': endUserAuthConfig!,
    if (name != null) 'name': name!,
  };
}

/// Configuration of a Connection operation for the tool to use.
class GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction {
  /// ID of a Connection action for the tool to use.
  core.String? connectionActionId;

  /// Entity operation configuration for the tool to use.
  GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation?
  entityOperation;

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

  GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction.fromJson(core.Map json_)
    : this(
        connectionActionId: json_['connectionActionId'] as core.String?,
        entityOperation:
            json_.containsKey('entityOperation')
                ? GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation.fromJson(
                  json_['entityOperation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputFields:
            (json_['inputFields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        outputFields:
            (json_['outputFields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionActionId != null) 'connectionActionId': connectionActionId!,
    if (entityOperation != null) 'entityOperation': entityOperation!,
    if (inputFields != null) 'inputFields': inputFields!,
    if (outputFields != null) 'outputFields': outputFields!,
  };
}

/// Entity CRUD operation specification.
class GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation {
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

  GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation({
    this.entityId,
    this.operation,
  });

  GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation.fromJson(
    core.Map json_,
  ) : this(
        entityId: json_['entityId'] as core.String?,
        operation: json_['operation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityId != null) 'entityId': entityId!,
    if (operation != null) 'operation': operation!,
  };
}

/// A DataStoreTool is a way to provide specifications needed to search a list
/// of data stores.
class GoogleCloudDialogflowCxV3beta1ToolDataStoreTool {
  /// List of data stores to search.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3beta1DataStoreConnection>?
  dataStoreConnections;

  /// Fallback prompt configurations to use.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt? fallbackPrompt;

  GoogleCloudDialogflowCxV3beta1ToolDataStoreTool({
    this.dataStoreConnections,
    this.fallbackPrompt,
  });

  GoogleCloudDialogflowCxV3beta1ToolDataStoreTool.fromJson(core.Map json_)
    : this(
        dataStoreConnections:
            (json_['dataStoreConnections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1DataStoreConnection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fallbackPrompt:
            json_.containsKey('fallbackPrompt')
                ? GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt.fromJson(
                  json_['fallbackPrompt']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStoreConnections != null)
      'dataStoreConnections': dataStoreConnections!,
    if (fallbackPrompt != null) 'fallbackPrompt': fallbackPrompt!,
  };
}

/// A FallbackPrompt is a way to provide specifications for the Data Store
/// fallback prompt when generating responses.
typedef GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt = $Empty;

/// End-user authentication configuration used for Connection calls.
///
/// The field values can either be hardcoded authentication values or the names
/// of
/// [session parameters](https://cloud.google.com/dialogflow/cx/docs/concept/parameter#session-ref)
/// or
/// [request parameters](https://cloud.google.com/dialogflow/cx/docs/concept/parameter#request-scoped).
/// If parameter names are provided, then those parameters can be used to pass
/// the authentication values dynamically, through `$session.params.param-id` or
/// `$request.payload.param-id`.
class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig {
  /// Oauth 2.0 Authorization Code authentication.
  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig?
  oauth2AuthCodeConfig;

  /// JWT Profile Oauth 2.0 Authorization Grant authentication.
  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig?
  oauth2JwtBearerConfig;

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig.fromJson(core.Map json_)
    : this(
        oauth2AuthCodeConfig:
            json_.containsKey('oauth2AuthCodeConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig.fromJson(
                  json_['oauth2AuthCodeConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2JwtBearerConfig:
            json_.containsKey('oauth2JwtBearerConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig.fromJson(
                  json_['oauth2JwtBearerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (oauth2AuthCodeConfig != null)
      'oauth2AuthCodeConfig': oauth2AuthCodeConfig!,
    if (oauth2JwtBearerConfig != null)
      'oauth2JwtBearerConfig': oauth2JwtBearerConfig!,
  };
}

/// Oauth 2.0 Authorization Code authentication configuration.
class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token value or parameter name to pass it through.
  ///
  /// Required.
  core.String? oauthToken;

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig({
    this.oauthToken,
  });

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig.fromJson(
    core.Map json_,
  ) : this(oauthToken: json_['oauthToken'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (oauthToken != null) 'oauthToken': oauthToken!,
  };
}

/// JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
class GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig {
  /// Client key value or parameter name to pass it through.
  ///
  /// Required.
  core.String? clientKey;

  /// Issuer value or parameter name to pass it through.
  ///
  /// Required.
  core.String? issuer;

  /// Subject value or parameter name to pass it through.
  ///
  /// Required.
  core.String? subject;

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig({
    this.clientKey,
    this.issuer,
    this.subject,
  });

  GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig.fromJson(
    core.Map json_,
  ) : this(
        clientKey: json_['clientKey'] as core.String?,
        issuer: json_['issuer'] as core.String?,
        subject: json_['subject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientKey != null) 'clientKey': clientKey!,
    if (issuer != null) 'issuer': issuer!,
    if (subject != null) 'subject': subject!,
  };
}

/// An ExtensionTool is a way to use Vertex Extensions as a tool.
class GoogleCloudDialogflowCxV3beta1ToolExtensionTool {
  /// The full name of the referenced vertex extension.
  ///
  /// Formats: `projects/{project}/locations/{location}/extensions/{extension}`
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowCxV3beta1ToolExtensionTool({this.name});

  GoogleCloudDialogflowCxV3beta1ToolExtensionTool.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// A Function tool describes the functions to be invoked on the client side.
typedef GoogleCloudDialogflowCxV3beta1ToolFunctionTool = $ToolFunctionTool;

/// An OpenAPI tool is a way to provide the Tool specifications in the Open API
/// schema format.
class GoogleCloudDialogflowCxV3beta1ToolOpenApiTool {
  /// Authentication information required by the API.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolAuthentication? authentication;

  /// Service Directory configuration.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig?
  serviceDirectoryConfig;

  /// The OpenAPI schema specified as a text.
  ///
  /// Required.
  core.String? textSchema;

  /// TLS configuration for the HTTPS verification.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolTLSConfig? tlsConfig;

  GoogleCloudDialogflowCxV3beta1ToolOpenApiTool({
    this.authentication,
    this.serviceDirectoryConfig,
    this.textSchema,
    this.tlsConfig,
  });

  GoogleCloudDialogflowCxV3beta1ToolOpenApiTool.fromJson(core.Map json_)
    : this(
        authentication:
            json_.containsKey('authentication')
                ? GoogleCloudDialogflowCxV3beta1ToolAuthentication.fromJson(
                  json_['authentication']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceDirectoryConfig:
            json_.containsKey('serviceDirectoryConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig.fromJson(
                  json_['serviceDirectoryConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textSchema: json_['textSchema'] as core.String?,
        tlsConfig:
            json_.containsKey('tlsConfig')
                ? GoogleCloudDialogflowCxV3beta1ToolTLSConfig.fromJson(
                  json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authentication != null) 'authentication': authentication!,
    if (serviceDirectoryConfig != null)
      'serviceDirectoryConfig': serviceDirectoryConfig!,
    if (textSchema != null) 'textSchema': textSchema!,
    if (tlsConfig != null) 'tlsConfig': tlsConfig!,
  };
}

/// Configuration for tools using Service Directory.
typedef GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig =
    $ToolServiceDirectoryConfig;

/// The TLS configuration.
class GoogleCloudDialogflowCxV3beta1ToolTLSConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert>? caCerts;

  GoogleCloudDialogflowCxV3beta1ToolTLSConfig({this.caCerts});

  GoogleCloudDialogflowCxV3beta1ToolTLSConfig.fromJson(core.Map json_)
    : this(
        caCerts:
            (json_['caCerts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caCerts != null) 'caCerts': caCerts!,
  };
}

/// The CA certificate.
typedef GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert =
    $ToolTLSConfigCACert;

/// Stores metadata of the invocation of an action supported by a tool.
class GoogleCloudDialogflowCxV3beta1ToolUse {
  /// Name of the action to be called during the tool use.
  ///
  /// Optional.
  core.String? action;

  /// Data store tool trace.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace? dataStoreToolTrace;

  /// The display name of the tool.
  ///
  /// Output only.
  core.String? displayName;

  /// A list of input parameters for the action.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputActionParameters;

  /// A list of output parameters generated by the action.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputActionParameters;

  /// The tool that should be used.
  ///
  /// Format: `projects//locations//agents//tools/`.
  ///
  /// Required.
  core.String? tool;

  /// Webhook tool trace.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace? webhookToolTrace;

  GoogleCloudDialogflowCxV3beta1ToolUse({
    this.action,
    this.dataStoreToolTrace,
    this.displayName,
    this.inputActionParameters,
    this.outputActionParameters,
    this.tool,
    this.webhookToolTrace,
  });

  GoogleCloudDialogflowCxV3beta1ToolUse.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        dataStoreToolTrace:
            json_.containsKey('dataStoreToolTrace')
                ? GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace.fromJson(
                  json_['dataStoreToolTrace']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        inputActionParameters:
            json_.containsKey('inputActionParameters')
                ? json_['inputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        outputActionParameters:
            json_.containsKey('outputActionParameters')
                ? json_['outputActionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        tool: json_['tool'] as core.String?,
        webhookToolTrace:
            json_.containsKey('webhookToolTrace')
                ? GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace.fromJson(
                  json_['webhookToolTrace']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (dataStoreToolTrace != null) 'dataStoreToolTrace': dataStoreToolTrace!,
    if (displayName != null) 'displayName': displayName!,
    if (inputActionParameters != null)
      'inputActionParameters': inputActionParameters!,
    if (outputActionParameters != null)
      'outputActionParameters': outputActionParameters!,
    if (tool != null) 'tool': tool!,
    if (webhookToolTrace != null) 'webhookToolTrace': webhookToolTrace!,
  };
}

/// The tracing information for the data store tool.
class GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace {
  /// Data store connection feature output signals.
  ///
  /// Optional.
  GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals?
  dataStoreConnectionSignals;

  GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace({
    this.dataStoreConnectionSignals,
  });

  GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace.fromJson(
    core.Map json_,
  ) : this(
        dataStoreConnectionSignals:
            json_.containsKey('dataStoreConnectionSignals')
                ? GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals.fromJson(
                  json_['dataStoreConnectionSignals']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStoreConnectionSignals != null)
      'dataStoreConnectionSignals': dataStoreConnectionSignals!,
  };
}

/// The tracing information for the webhook tool.
class GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace {
  /// The tag of the webhook.
  ///
  /// Optional.
  core.String? webhookTag;

  /// The url of the webhook.
  ///
  /// Optional.
  core.String? webhookUri;

  GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace({
    this.webhookTag,
    this.webhookUri,
  });

  GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace.fromJson(core.Map json_)
    : this(
        webhookTag: json_['webhookTag'] as core.String?,
        webhookUri: json_['webhookUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (webhookTag != null) 'webhookTag': webhookTag!,
    if (webhookUri != null) 'webhookUri': webhookUri!,
  };
}

/// Tool version is a snapshot of the tool at certain timestamp.
class GoogleCloudDialogflowCxV3beta1ToolVersion {
  /// Last time the tool version was created or modified.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name of the tool version.
  ///
  /// Required.
  core.String? displayName;

  /// Identifier.
  ///
  /// The unique identifier of the tool version. Format:
  /// `projects//locations//agents//tools//versions/`.
  core.String? name;

  /// Snapshot of the tool to be associated with this version.
  ///
  /// Required.
  GoogleCloudDialogflowCxV3beta1Tool? tool;

  /// Last time the tool version was created or modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowCxV3beta1ToolVersion({
    this.createTime,
    this.displayName,
    this.name,
    this.tool,
    this.updateTime,
  });

  GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        tool:
            json_.containsKey('tool')
                ? GoogleCloudDialogflowCxV3beta1Tool.fromJson(
                  json_['tool'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (tool != null) 'tool': tool!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The request message for Flows.TrainFlow.
typedef GoogleCloudDialogflowCxV3beta1TrainFlowRequest = $Empty;

/// Transition coverage represents the percentage of all possible page
/// transitions (page-level transition routes and event handlers, excluding
/// transition route groups) present within any of a parent's test cases.
class GoogleCloudDialogflowCxV3beta1TransitionCoverage {
  /// The percent of transitions in the agent that are covered.
  core.double? coverageScore;

  /// The list of Transitions present in the agent.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition>?
  transitions;

  GoogleCloudDialogflowCxV3beta1TransitionCoverage({
    this.coverageScore,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3beta1TransitionCoverage.fromJson(core.Map json_)
    : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        transitions:
            (json_['transitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coverageScore != null) 'coverageScore': coverageScore!,
    if (transitions != null) 'transitions': transitions!,
  };
}

/// A transition in a page.
class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition {
  /// Whether the transition is covered by at least one of the agent's test
  /// cases.
  core.bool? covered;

  /// Event handler.
  GoogleCloudDialogflowCxV3beta1EventHandler? eventHandler;

  /// The index of a transition in the transition list.
  ///
  /// Starting from 0.
  core.int? index;

  /// The start node of a transition.
  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode? source;

  /// The end node of a transition.
  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode? target;

  /// Intent route or condition route.
  GoogleCloudDialogflowCxV3beta1TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition({
    this.covered,
    this.eventHandler,
    this.index,
    this.source,
    this.target,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition.fromJson(
    core.Map json_,
  ) : this(
        covered: json_['covered'] as core.bool?,
        eventHandler:
            json_.containsKey('eventHandler')
                ? GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(
                  json_['eventHandler'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        index: json_['index'] as core.int?,
        source:
            json_.containsKey('source')
                ? GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        target:
            json_.containsKey('target')
                ? GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitionRoute:
            json_.containsKey('transitionRoute')
                ? GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
                  json_['transitionRoute']
                      as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode {
  /// Indicates a transition to a Flow.
  ///
  /// Only some fields such as name and displayname will be set.
  GoogleCloudDialogflowCxV3beta1Flow? flow;

  /// Indicates a transition to a Page.
  ///
  /// Only some fields such as name and displayname will be set.
  GoogleCloudDialogflowCxV3beta1Page? page;

  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode({
    this.flow,
    this.page,
  });

  GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode.fromJson(
    core.Map json_,
  ) : this(
        flow:
            json_.containsKey('flow')
                ? GoogleCloudDialogflowCxV3beta1Flow.fromJson(
                  json_['flow'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        page:
            json_.containsKey('page')
                ? GoogleCloudDialogflowCxV3beta1Page.fromJson(
                  json_['page'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowCxV3beta1TransitionRoute {
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
  GoogleCloudDialogflowCxV3beta1Fulfillment? triggerFulfillment;

  GoogleCloudDialogflowCxV3beta1TransitionRoute({
    this.condition,
    this.description,
    this.intent,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        intent: json_['intent'] as core.String?,
        name: json_['name'] as core.String?,
        targetFlow: json_['targetFlow'] as core.String?,
        targetPage: json_['targetPage'] as core.String?,
        triggerFulfillment:
            json_.containsKey('triggerFulfillment')
                ? GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
                  json_['triggerFulfillment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (description != null) 'description': description!,
    if (intent != null) 'intent': intent!,
    if (name != null) 'name': name!,
    if (targetFlow != null) 'targetFlow': targetFlow!,
    if (targetPage != null) 'targetPage': targetPage!,
    if (triggerFulfillment != null) 'triggerFulfillment': triggerFulfillment!,
  };
}

/// A TransitionRouteGroup represents a group of `TransitionRoutes` to be used
/// by a Page.
class GoogleCloudDialogflowCxV3beta1TransitionRouteGroup {
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
  /// `projects//locations//agents//flows//transitionRouteGroups/` or
  /// `projects//locations//agents//transitionRouteGroups/` for agent-level
  /// groups.
  core.String? name;

  /// Transition routes associated with the TransitionRouteGroup.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroup({
    this.displayName,
    this.name,
    this.transitionRoutes,
  });

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        transitionRoutes:
            (json_['transitionRoutes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage {
  /// The percent of transition routes in all the transition route groups that
  /// are covered.
  core.double? coverageScore;

  /// Transition route group coverages.
  core.List<GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage>?
  coverages;

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage({
    this.coverageScore,
    this.coverages,
  });

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage.fromJson(
    core.Map json_,
  ) : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        coverages:
            (json_['coverages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coverageScore != null) 'coverageScore': coverageScore!,
    if (coverages != null) 'coverages': coverages!,
  };
}

/// Coverage result message for one transition route group.
class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage {
  /// The percent of transition routes in the transition route group that are
  /// covered.
  core.double? coverageScore;

  /// Transition route group metadata.
  ///
  /// Only name and displayName will be set.
  GoogleCloudDialogflowCxV3beta1TransitionRouteGroup? routeGroup;

  /// The list of transition routes and coverage in the transition route group.
  core.List<
    GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
  >?
  transitions;

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage({
    this.coverageScore,
    this.routeGroup,
    this.transitions,
  });

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage.fromJson(
    core.Map json_,
  ) : this(
        coverageScore: (json_['coverageScore'] as core.num?)?.toDouble(),
        routeGroup:
            json_.containsKey('routeGroup')
                ? GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
                  json_['routeGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transitions:
            (json_['transitions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coverageScore != null) 'coverageScore': coverageScore!,
    if (routeGroup != null) 'routeGroup': routeGroup!,
    if (transitions != null) 'transitions': transitions!,
  };
}

/// A transition coverage in a transition route group.
class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition {
  /// Whether the transition route is covered by at least one of the agent's
  /// test cases.
  core.bool? covered;

  /// Intent route or condition route.
  GoogleCloudDialogflowCxV3beta1TransitionRoute? transitionRoute;

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition({
    this.covered,
    this.transitionRoute,
  });

  GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition.fromJson(
    core.Map json_,
  ) : this(
        covered: json_['covered'] as core.bool?,
        transitionRoute:
            json_.containsKey('transitionRoute')
                ? GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
                  json_['transitionRoute']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (covered != null) 'covered': covered!,
    if (transitionRoute != null) 'transitionRoute': transitionRoute!,
  };
}

/// Encapsulates different type schema variations: either a reference to an a
/// schema that's already defined by a tool, or an inline definition.
class GoogleCloudDialogflowCxV3beta1TypeSchema {
  /// Set if this is an inline schema definition.
  GoogleCloudDialogflowCxV3beta1InlineSchema? inlineSchema;

  /// Set if this is a schema reference.
  GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference? schemaReference;

  GoogleCloudDialogflowCxV3beta1TypeSchema({
    this.inlineSchema,
    this.schemaReference,
  });

  GoogleCloudDialogflowCxV3beta1TypeSchema.fromJson(core.Map json_)
    : this(
        inlineSchema:
            json_.containsKey('inlineSchema')
                ? GoogleCloudDialogflowCxV3beta1InlineSchema.fromJson(
                  json_['inlineSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemaReference:
            json_.containsKey('schemaReference')
                ? GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference.fromJson(
                  json_['schemaReference']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inlineSchema != null) 'inlineSchema': inlineSchema!,
    if (schemaReference != null) 'schemaReference': schemaReference!,
  };
}

/// A reference to the schema of an existing tool.
class GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference {
  /// The name of the schema.
  core.String? schema;

  /// The tool that contains this schema definition.
  ///
  /// Format: `projects//locations//agents//tools/`.
  core.String? tool;

  GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference({
    this.schema,
    this.tool,
  });

  GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference.fromJson(
    core.Map json_,
  ) : this(
        schema: json_['schema'] as core.String?,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (schema != null) 'schema': schema!,
    if (tool != null) 'tool': tool!,
  };
}

/// UserUtterance represents one message sent by the customer.
class GoogleCloudDialogflowCxV3beta1UserUtterance {
  /// Audio input.
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

  /// Tokens of the audio input.
  ///
  /// Optional.
  core.List<core.int>? audioTokens;

  /// Message content in text.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowCxV3beta1UserUtterance({
    this.audio,
    this.audioTokens,
    this.text,
  });

  GoogleCloudDialogflowCxV3beta1UserUtterance.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        audioTokens:
            (json_['audioTokens'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audio != null) 'audio': audio!,
    if (audioTokens != null) 'audioTokens': audioTokens!,
    if (text != null) 'text': text!,
  };
}

/// The request message for Agents.ValidateAgent.
typedef GoogleCloudDialogflowCxV3beta1ValidateAgentRequest = $Request07;

/// The request message for Flows.ValidateFlow.
typedef GoogleCloudDialogflowCxV3beta1ValidateFlowRequest = $Request07;

/// Agent/flow validation message.
class GoogleCloudDialogflowCxV3beta1ValidationMessage {
  /// The message detail.
  core.String? detail;

  /// The resource names of the resources where the message is found.
  core.List<GoogleCloudDialogflowCxV3beta1ResourceName>? resourceNames;

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

  GoogleCloudDialogflowCxV3beta1ValidationMessage({
    this.detail,
    this.resourceNames,
    this.resourceType,
    this.resources,
    this.severity,
  });

  GoogleCloudDialogflowCxV3beta1ValidationMessage.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1ResourceName.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        resourceType: json_['resourceType'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        severity: json_['severity'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1VariantsHistory {
  /// Update time of the variants.
  core.String? updateTime;

  /// The flow versions as the variants.
  GoogleCloudDialogflowCxV3beta1VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3beta1VariantsHistory({
    this.updateTime,
    this.versionVariants,
  });

  GoogleCloudDialogflowCxV3beta1VariantsHistory.fromJson(core.Map json_)
    : this(
        updateTime: json_['updateTime'] as core.String?,
        versionVariants:
            json_.containsKey('versionVariants')
                ? GoogleCloudDialogflowCxV3beta1VersionVariants.fromJson(
                  json_['versionVariants']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (updateTime != null) 'updateTime': updateTime!,
    if (versionVariants != null) 'versionVariants': versionVariants!,
  };
}

/// Represents a version of a flow.
class GoogleCloudDialogflowCxV3beta1Version {
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
  GoogleCloudDialogflowCxV3beta1NluSettings? nluSettings;

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

  GoogleCloudDialogflowCxV3beta1Version({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.nluSettings,
    this.state,
  });

  GoogleCloudDialogflowCxV3beta1Version.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        nluSettings:
            json_.containsKey('nluSettings')
                ? GoogleCloudDialogflowCxV3beta1NluSettings.fromJson(
                  json_['nluSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1VersionVariants {
  /// A list of flow version variants.
  core.List<GoogleCloudDialogflowCxV3beta1VersionVariantsVariant>? variants;

  GoogleCloudDialogflowCxV3beta1VersionVariants({this.variants});

  GoogleCloudDialogflowCxV3beta1VersionVariants.fromJson(core.Map json_)
    : this(
        variants:
            (json_['variants'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowCxV3beta1VersionVariantsVariant.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (variants != null) 'variants': variants!,
  };
}

/// A single flow version with specified traffic allocation.
typedef GoogleCloudDialogflowCxV3beta1VersionVariantsVariant =
    $VersionVariantsVariant;

/// Description of which voice to use for speech synthesis.
typedef GoogleCloudDialogflowCxV3beta1VoiceSelectionParams =
    $VoiceSelectionParams;

/// Webhooks host the developer's business logic.
///
/// During a session, webhooks allow the developer to use the data extracted by
/// Dialogflow's natural language processing to generate dynamic responses,
/// validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3beta1Webhook {
  /// Indicates whether the webhook is disabled.
  core.bool? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  ///
  /// Required.
  core.String? displayName;

  /// Configuration for a generic web service.
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService? genericWebService;

  /// The unique identifier of the webhook.
  ///
  /// Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook
  /// populates the name automatically. Format:
  /// `projects//locations//agents//webhooks/`.
  core.String? name;

  /// Configuration for a
  /// [Service Directory](https://cloud.google.com/service-directory) service.
  GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig? serviceDirectory;

  /// Webhook execution timeout.
  ///
  /// Execution is considered failed if Dialogflow doesn't receive a response
  /// from webhook at the end of the timeout period. Defaults to 5 seconds,
  /// maximum allowed timeout is 30 seconds.
  core.String? timeout;

  GoogleCloudDialogflowCxV3beta1Webhook({
    this.disabled,
    this.displayName,
    this.genericWebService,
    this.name,
    this.serviceDirectory,
    this.timeout,
  });

  GoogleCloudDialogflowCxV3beta1Webhook.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        genericWebService:
            json_.containsKey('genericWebService')
                ? GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromJson(
                  json_['genericWebService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        serviceDirectory:
            json_.containsKey('serviceDirectory')
                ? GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromJson(
                  json_['serviceDirectory']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeout: json_['timeout'] as core.String?,
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
class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService {
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
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig?
  oauthConfig;

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

  /// The SecretManager secret version resource storing the username:password
  /// pair for HTTP Basic authentication.
  ///
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  ///
  /// Optional.
  core.String? secretVersionForUsernamePassword;

  /// The HTTP request headers to send together with webhook requests.
  ///
  /// Header values are stored in SecretManager secret versions. When the same
  /// header name is specified in both `request_headers` and
  /// `secret_versions_for_request_headers`, the value in
  /// `secret_versions_for_request_headers` will be used.
  ///
  /// Optional.
  core.Map<
    core.String,
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
  >?
  secretVersionsForRequestHeaders;

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

  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.oauthConfig,
    this.parameterMapping,
    this.password,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.secretVersionsForRequestHeaders,
    this.serviceAgentAuth,
    this.uri,
    this.username,
    this.webhookType,
  });

  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromJson(
    core.Map json_,
  ) : this(
        allowedCaCerts:
            (json_['allowedCaCerts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        httpMethod: json_['httpMethod'] as core.String?,
        oauthConfig:
            json_.containsKey('oauthConfig')
                ? GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig.fromJson(
                  json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameterMapping: (json_['parameterMapping']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        password: json_['password'] as core.String?,
        requestBody: json_['requestBody'] as core.String?,
        requestHeaders: (json_['requestHeaders']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        secretVersionForUsernamePassword:
            json_['secretVersionForUsernamePassword'] as core.String?,
        secretVersionsForRequestHeaders: (json_['secretVersionsForRequestHeaders']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        serviceAgentAuth: json_['serviceAgentAuth'] as core.String?,
        uri: json_['uri'] as core.String?,
        username: json_['username'] as core.String?,
        webhookType: json_['webhookType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedCaCerts != null) 'allowedCaCerts': allowedCaCerts!,
    if (httpMethod != null) 'httpMethod': httpMethod!,
    if (oauthConfig != null) 'oauthConfig': oauthConfig!,
    if (parameterMapping != null) 'parameterMapping': parameterMapping!,
    if (password != null) 'password': password!,
    if (requestBody != null) 'requestBody': requestBody!,
    if (requestHeaders != null) 'requestHeaders': requestHeaders!,
    if (secretVersionForUsernamePassword != null)
      'secretVersionForUsernamePassword': secretVersionForUsernamePassword!,
    if (secretVersionsForRequestHeaders != null)
      'secretVersionsForRequestHeaders': secretVersionsForRequestHeaders!,
    if (serviceAgentAuth != null) 'serviceAgentAuth': serviceAgentAuth!,
    if (uri != null) 'uri': uri!,
    if (username != null) 'username': username!,
    if (webhookType != null) 'webhookType': webhookType!,
  };
}

/// Represents configuration of OAuth client credential flow for 3rd party API
/// authentication.
typedef GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig =
    $WebhookGenericWebServiceOAuthConfig;

/// Represents the value of an HTTP header stored in a SecretManager secret
/// version.
typedef GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue =
    $WebhookGenericWebServiceSecretVersionHeaderValue;

/// Represents configuration for a
/// [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig {
  /// Generic Service configuration of this webhook.
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService? genericWebService;

  /// The name of
  /// [Service Directory](https://cloud.google.com/service-directory) service.
  ///
  /// Format: `projects//locations//namespaces//services/`. `Location ID` of the
  /// service directory must be the same as the location of the agent.
  ///
  /// Required.
  core.String? service;

  GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig({
    this.genericWebService,
    this.service,
  });

  GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromJson(
    core.Map json_,
  ) : this(
        genericWebService:
            json_.containsKey('genericWebService')
                ? GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromJson(
                  json_['genericWebService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        service: json_['service'] as core.String?,
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
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudLocationLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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
typedef GoogleRpcStatus = $Status00;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef GoogleTypeLatLng = $LatLng;
