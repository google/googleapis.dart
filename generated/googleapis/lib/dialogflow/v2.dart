// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Dialogflow API - v2
///
/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
///
/// For more information, see <https://cloud.google.com/dialogflow/>
///
/// Create an instance of [DialogflowApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAgentResource]
///     - [ProjectsAgentEntityTypesResource]
///       - [ProjectsAgentEntityTypesEntitiesResource]
///     - [ProjectsAgentEnvironmentsResource]
///       - [ProjectsAgentEnvironmentsIntentsResource]
///       - [ProjectsAgentEnvironmentsUsersResource]
///         - [ProjectsAgentEnvironmentsUsersSessionsResource]
///           - [ProjectsAgentEnvironmentsUsersSessionsContextsResource]
///           - [ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource]
///     - [ProjectsAgentIntentsResource]
///     - [ProjectsAgentKnowledgeBasesResource]
///       - [ProjectsAgentKnowledgeBasesDocumentsResource]
///     - [ProjectsAgentSessionsResource]
///       - [ProjectsAgentSessionsContextsResource]
///       - [ProjectsAgentSessionsEntityTypesResource]
///     - [ProjectsAgentVersionsResource]
///   - [ProjectsAnswerRecordsResource]
///   - [ProjectsConversationProfilesResource]
///   - [ProjectsConversationsResource]
///     - [ProjectsConversationsMessagesResource]
///     - [ProjectsConversationsParticipantsResource]
///       - [ProjectsConversationsParticipantsSuggestionsResource]
///   - [ProjectsKnowledgeBasesResource]
///     - [ProjectsKnowledgeBasesDocumentsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAgentResource]
///       - [ProjectsLocationsAgentEntityTypesResource]
///         - [ProjectsLocationsAgentEntityTypesEntitiesResource]
///       - [ProjectsLocationsAgentEnvironmentsResource]
///         - [ProjectsLocationsAgentEnvironmentsIntentsResource]
///         - [ProjectsLocationsAgentEnvironmentsUsersResource]
///           - [ProjectsLocationsAgentEnvironmentsUsersSessionsResource]
/// - [ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource]
/// - [ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentIntentsResource]
///       - [ProjectsLocationsAgentSessionsResource]
///         - [ProjectsLocationsAgentSessionsContextsResource]
///         - [ProjectsLocationsAgentSessionsEntityTypesResource]
///       - [ProjectsLocationsAgentVersionsResource]
///     - [ProjectsLocationsAnswerRecordsResource]
///     - [ProjectsLocationsConversationProfilesResource]
///     - [ProjectsLocationsConversationsResource]
///       - [ProjectsLocationsConversationsMessagesResource]
///       - [ProjectsLocationsConversationsParticipantsResource]
///         - [ProjectsLocationsConversationsParticipantsSuggestionsResource]
///     - [ProjectsLocationsKnowledgeBasesResource]
///       - [ProjectsLocationsKnowledgeBasesDocumentsResource]
///     - [ProjectsLocationsOperationsResource]
///   - [ProjectsOperationsResource]
library dialogflow.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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

  ProjectsAgentResource get agent => ProjectsAgentResource(_requester);
  ProjectsAnswerRecordsResource get answerRecords =>
      ProjectsAnswerRecordsResource(_requester);
  ProjectsConversationProfilesResource get conversationProfiles =>
      ProjectsConversationProfilesResource(_requester);
  ProjectsConversationsResource get conversations =>
      ProjectsConversationsResource(_requester);
  ProjectsKnowledgeBasesResource get knowledgeBases =>
      ProjectsKnowledgeBasesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Agent> getAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates/updates the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of this agent. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Agent> setAgent(
    GoogleCloudDialogflowV2Agent request,
    core.String parent, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesResource get entityTypes =>
      ProjectsAgentEntityTypesResource(_requester);
  ProjectsAgentEnvironmentsResource get environments =>
      ProjectsAgentEnvironmentsResource(_requester);
  ProjectsAgentIntentsResource get intents =>
      ProjectsAgentIntentsResource(_requester);
  ProjectsAgentKnowledgeBasesResource get knowledgeBases =>
      ProjectsAgentKnowledgeBasesResource(_requester);
  ProjectsAgentSessionsResource get sessions =>
      ProjectsAgentSessionsResource(_requester);
  ProjectsAgentVersionsResource get versions =>
      ProjectsAgentVersionsResource(_requester);

  ProjectsAgentResource(commons.ApiRequester client) : _requester = client;

  /// Exports the specified agent to a ZIP file.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: ExportAgentResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to export is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    GoogleCloudDialogflowV2ExportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Format:
  /// `projects//agent/fulfillment`.
  /// Value must have pattern `^projects/\[^/\]+/agent/fulfillment$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Fulfillment> getFulfillment(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets agent validation result.
  ///
  /// Agent validation is performed during training time and is updated
  /// automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language for which you want a validation
  /// result. If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ValidationResult> getValidationResult(
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ValidationResult.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified agent from a ZIP file.
  ///
  /// Uploads new intents and entity types without deleting the existing ones.
  /// Intents and entity types with the same name are replaced with the new
  /// versions from ImportAgentRequest. After the import, the imported draft
  /// agent will be trained automatically (unless disabled in agent settings).
  /// However, once the import is done, training may not be completed yet.
  /// Please call TrainAgent and wait for the operation it returns in order to
  /// train explicitly. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// The operation only tracks when importing is complete, not when it is done
  /// training. Note: You should always train an agent prior to sending it
  /// queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to import is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    GoogleCloudDialogflowV2ImportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Restores the specified agent from a ZIP file.
  ///
  /// Replaces the current agent version with a new one. All the intents and
  /// entity types in the older version are deleted. After the restore, the
  /// restored draft agent will be trained automatically (unless disabled in
  /// agent settings). However, once the restore is done, training may not be
  /// completed yet. Please call TrainAgent and wait for the operation it
  /// returns in order to train explicitly. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// The operation only tracks when restoring is complete, not when it is done
  /// training. Note: You should always train an agent prior to sending it
  /// queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to restore is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    GoogleCloudDialogflowV2RestoreAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of agents.
  ///
  /// Since there is at most one conversational agent per project, this method
  /// is useful primarily for listing all agents across projects the caller has
  /// access to. One can achieve that with a wildcard project collection id "-".
  /// Refer to \[List
  /// Sub-Collections\](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list agents from. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchAgentsResponse> search(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Trains the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to train is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    GoogleCloudDialogflowV2TrainAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:train';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the fulfillment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the fulfillment. Supported
  /// formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment` This field is not used for
  /// Fulfillment in an Environment.
  /// Value must have pattern `^projects/\[^/\]+/agent/fulfillment$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Fulfillment> updateFulfillment(
    GoogleCloudDialogflowV2Fulfillment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResource get entities =>
      ProjectsAgentEntityTypesEntitiesResource(_requester);

  ProjectsAgentEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes entity types in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates/Creates multiple entity types in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: BatchUpdateEntityTypesResponse Note: You should always train
  /// an agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create entity
  /// types in. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an entity type in the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> create(
    GoogleCloudDialogflowV2EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Format:
  /// `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListEntityTypesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
  /// methods. Format: `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> patch(
    GoogleCloudDialogflowV2EntityType request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to create entities in.
  /// Format: `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchCreate(
    GoogleCloudDialogflowV2BatchCreateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes entities in the specified entity type.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to delete entries for.
  /// Format: `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates or creates multiple entities in the specified entity type.
  ///
  /// This method does not affect entities in the entity type that aren't
  /// explicitly specified in the request. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Format: `projects//agent/entityTypes/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsIntentsResource get intents =>
      ProjectsAgentEnvironmentsIntentsResource(_requester);
  ProjectsAgentEnvironmentsUsersResource get users =>
      ProjectsAgentEnvironmentsUsersResource(_requester);

  ProjectsAgentEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an agent environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create an environment for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [environmentId] - Required. The unique id of the new environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> create(
    GoogleCloudDialogflowV2Environment request,
    core.String parent, {
    core.String? environmentId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment to delete. / Format: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment. Supported formats: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the history of the specified environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment to retrieve history for.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2EnvironmentHistory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EnvironmentHistory> getHistory(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/history';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EnvironmentHistory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all non-default environments of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all environments from. Format: -
  /// `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListEnvironmentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified agent environment.
  ///
  /// This method allows you to deploy new agent versions into the environment.
  /// When an environment is pointed to a new agent version by setting
  /// `environment.agent_version`, the environment is temporarily set to the
  /// `LOADING` state. During that time, the environment continues serving the
  /// previous version of the agent. After the new agent version is done
  /// loading, the environment is set back to the `RUNNING` state. You can use
  /// "-" as Environment ID in environment name to update an agent version in
  /// the default environment. WARNING: this will negate all recent changes to
  /// the draft agent and can't be undone. You may want to save the draft agent
  /// to a version before calling this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent environment.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - Optional. This field is used to
  /// prevent accidental overwrite of the default environment, which is an
  /// operation that cannot be undone. To confirm that the caller desires this
  /// overwrite, this field must be explicitly set to true when updating the
  /// default environment (environment ID = `-`).
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> patch(
    GoogleCloudDialogflowV2Environment request,
    core.String name, {
    core.bool? allowLoadToDraftAndDiscardChanges,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (allowLoadToDraftAndDiscardChanges != null)
        'allowLoadToDraftAndDiscardChanges': [
          '${allowLoadToDraftAndDiscardChanges}'
        ],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEnvironmentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsIntentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent` or `projects//locations//agent`. Alternatively, you can
  /// specify the environment to list intents for. Format:
  /// `projects//agent/environments/` or
  /// `projects//locations//agent/environments/`. Note: training phrases of the
  /// intents will not be returned for non-draft environment.
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEnvironmentsUsersResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsResource get sessions =>
      ProjectsAgentEnvironmentsUsersSessionsResource(_requester);

  ProjectsAgentEnvironmentsUsersResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAgentEnvironmentsUsersSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResource get contexts =>
      ProjectsAgentEnvironmentsUsersSessionsContextsResource(_requester);
  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource get entityTypes =>
      ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource(_requester);

  ProjectsAgentEnvironmentsUsersSessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteContexts(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries. If you might use
  /// [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa) or other CCAI
  /// products now or in the future, consider using AnalyzeContent instead of
  /// `DetectIntent`. `AnalyzeContent` has additional functionality for Agent
  /// Assist and other CCAI products. Note: Always use agent versions for
  /// production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//agent/sessions/`, or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment (`Environment ID`
  /// might be referred to as environment name at some places). If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> create(
    GoogleCloudDialogflowV2Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListContextsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> patch(
    GoogleCloudDialogflowV2Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// If the specified session entity type already exists, overrides the session
  /// entity type. This method doesn't work with Google Assistant integration.
  /// Contact Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> create(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListSessionEntityTypesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of this session entity type.
  /// Format: `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> patch(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentIntentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes intents in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates/Creates multiple intents in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: BatchUpdateIntentsResponse Note: You should always train an
  /// agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create intents in.
  /// Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an intent in the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a intent for. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> create(
    GoogleCloudDialogflowV2Intent request,
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified intent and its direct or indirect followup intents.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. If this intent has
  /// direct or indirect followup intents, we also delete them. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/intents/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> get(
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent` or `projects//locations//agent`. Alternatively, you can
  /// specify the environment to list intents for. Format:
  /// `projects//agent/environments/` or
  /// `projects//locations//agent/environments/`. Note: training phrases of the
  /// intents will not be returned for non-draft environment.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified intent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this intent. Required for
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> patch(
    GoogleCloudDialogflowV2Intent request,
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentKnowledgeBasesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentKnowledgeBasesDocumentsResource get documents =>
      ProjectsAgentKnowledgeBasesDocumentsResource(_requester);

  ProjectsAgentKnowledgeBasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a knowledge base for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> create(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to delete. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - Optional. Force deletes the knowledge base. When set to true,
  /// any documents in the knowledge base are also deleted.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to retrieve. Format
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListKnowledgeBasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The knowledge base resource name. The name must be empty when
  /// creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> patch(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentKnowledgeBasesDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to create a document for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
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
    GoogleCloudDialogflowV2Document request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListDocumentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The document resource name. The name must be empty when
  /// creating a document. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
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
    GoogleCloudDialogflowV2Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to reload. Format:
  /// `projects//locations//knowledgeBases//documents/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> reload(
    GoogleCloudDialogflowV2ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResource get contexts =>
      ProjectsAgentSessionsContextsResource(_requester);
  ProjectsAgentSessionsEntityTypesResource get entityTypes =>
      ProjectsAgentSessionsEntityTypesResource(_requester);

  ProjectsAgentSessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteContexts(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries. If you might use
  /// [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa) or other CCAI
  /// products now or in the future, consider using AnalyzeContent instead of
  /// `DetectIntent`. `AnalyzeContent` has additional functionality for Agent
  /// Assist and other CCAI products. Note: Always use agent versions for
  /// production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//agent/sessions/`, or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment (`Environment ID`
  /// might be referred to as environment name at some places). If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> create(
    GoogleCloudDialogflowV2Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListContextsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> patch(
    GoogleCloudDialogflowV2Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// If the specified session entity type already exists, overrides the session
  /// entity type. This method doesn't work with Google Assistant integration.
  /// Contact Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> create(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListSessionEntityTypesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of this session entity type.
  /// Format: `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> patch(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAgentVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an agent version.
  ///
  /// The new version points to the agent instance in the "default" environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a version for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> create(
    GoogleCloudDialogflowV2Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete the specified agent version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to delete. Supported formats: -
  /// `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// Value must have pattern `^projects/\[^/\]+/agent/versions/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version. Supported formats: -
  /// `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// Value must have pattern `^projects/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all versions of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all versions from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListVersionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified agent version.
  ///
  /// Note that this method does not allow you to update the state of the agent
  /// the given version points to. It allows you to update only mutable
  /// properties of the version resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent version.
  /// Supported formats: - `projects//agent/versions/` -
  /// `projects//locations//agent/versions/`
  /// Value must have pattern `^projects/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> patch(
    GoogleCloudDialogflowV2Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsAnswerRecordsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all answer records in the specified project in reverse
  /// chronological order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all answer records for in reverse
  /// chronological order. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Required. Filters to restrict results to specific answer
  /// records. Filter on answer record type. Currently predicates on `type` is
  /// supported, valid values are `ARTICLE_ANSWER`, `FAQ_ANSWER`. For more
  /// information about filtering, see [API Filtering](https://aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of records to return in a single
  /// page. The server may return fewer records than this. If unspecified, we
  /// use 10. The maximum is 100.
  ///
  /// [pageToken] - Optional. The ListAnswerRecordsResponse.next_page_token
  /// value returned from a previous list request used to continue listing on
  /// the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListAnswerRecordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListAnswerRecordsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified answer record.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this answer record. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern `^projects/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2AnswerRecord> patch(
    GoogleCloudDialogflowV2AnswerRecord request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2AnswerRecord.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a conversation profile in the specified project.
  ///
  /// ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't
  /// populated in the response. You can retrieve them via
  /// GetConversationProfile API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a conversation profile for.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> create(
    GoogleCloudDialogflowV2ConversationProfile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified conversation profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation profile to delete. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified conversation profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversation profile. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all conversation profiles in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all conversation profiles from.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// [GoogleCloudDialogflowV2ListConversationProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationProfilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified conversation profile.
  ///
  /// ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't
  /// populated in the response. You can retrieve them via
  /// GetConversationProfile API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this conversation profile. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> patch(
    GoogleCloudDialogflowV2ConversationProfile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsMessagesResource get messages =>
      ProjectsConversationsMessagesResource(_requester);
  ProjectsConversationsParticipantsResource get participants =>
      ProjectsConversationsParticipantsResource(_requester);

  ProjectsConversationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Completes the specified conversation.
  ///
  /// Finished conversations are purged from the database after 30 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource identifier of the conversation to close.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> complete(
    GoogleCloudDialogflowV2CompleteConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':complete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new conversation.
  ///
  /// Conversations are auto-completed after 24 hours. Conversation Lifecycle:
  /// There are two stages during a conversation: Automated Agent Stage and
  /// Assist Stage. For Automated Agent Stage, there will be a dialogflow agent
  /// responding to user queries. For Assist Stage, there's no dialogflow agent
  /// responding to user queries. But we will provide suggestions which are
  /// generated from conversation. If Conversation.conversation_profile is
  /// configured for a dialogflow agent, conversation will start from `Automated
  /// Agent Stage`, otherwise, it will start from `Assist Stage`. And during
  /// `Automated Agent Stage`, once an Intent with Intent.live_agent_handoff is
  /// triggered, conversation will transfer to Assist Stage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the project creating the
  /// conversation. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [conversationId] - Optional. Identifier of the conversation. Generally
  /// it's auto generated by Google. Only set it if you cannot wait for the
  /// response to return a auto-generated one to you. The conversation ID must
  /// be compliant with the regression fomula "a-zA-Z*" with the characters
  /// length in range of \[3,64\]. If the field is provided, the caller is
  /// resposible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> create(
    GoogleCloudDialogflowV2Conversation request,
    core.String parent, {
    core.String? conversationId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (conversationId != null) 'conversationId': [conversationId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specific conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation. Format:
  /// `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all conversations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project from which to list all conversation.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters conversations listed in the
  /// response. In general, the expression must specify the field name, a
  /// comparison operator, and the value to use for filtering: - The value must
  /// be a string, a number, or a boolean. - The comparison operator must be
  /// either `=`,`!=`, `>`, or `<`. - To filter on multiple expressions,
  /// separate the expressions with `AND` or `OR` (omitting both implies `AND`).
  /// - For clarity, expressions can be enclosed in parentheses. Only
  /// `lifecycle_state` can be filtered on in this way. For example, the
  /// following expression only returns `COMPLETED` conversations:
  /// `lifecycle_state = "COMPLETED"` For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListConversationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists messages that belong to a given conversation.
  ///
  /// `messages` are ordered by `create_time` in descending order. To fetch
  /// updates without duplication, send request with filter
  /// `create_time_epoch_microseconds > [first item's create_time of previous
  /// request]` and empty page_token.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the conversation to list messages for.
  /// Format: `projects//locations//conversations/`
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter on message fields. Currently predicates on
  /// `create_time` and `create_time_epoch_microseconds` are supported.
  /// `create_time` only support milliseconds accuracy. E.g.,
  /// `create_time_epoch_microseconds > 1551790877964485` or `create_time >
  /// 2017-01-15T01:30:15.01Z`. For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListMessagesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConversationsParticipantsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsParticipantsSuggestionsResource get suggestions =>
      ProjectsConversationsParticipantsSuggestionsResource(_requester);

  ProjectsConversationsParticipantsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a text (chat, for example), or audio (phone recording, for example)
  /// message from a participant into the conversation.
  ///
  /// Note: Always use agent versions for production traffic sent to virtual
  /// agents. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [participant] - Required. The name of the participant this text comes
  /// from. Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2AnalyzeContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2AnalyzeContentResponse> analyzeContent(
    GoogleCloudDialogflowV2AnalyzeContentRequest request,
    core.String participant, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new participant in a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the conversation adding the
  /// participant. Format: `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> create(
    GoogleCloudDialogflowV2Participant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a conversation participant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the participant. Format:
  /// `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all participants in the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The conversation to list all participants from.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListParticipantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListParticipantsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified participant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this participant. Format:
  /// `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to specify which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> patch(
    GoogleCloudDialogflowV2Participant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsParticipantsSuggestionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets suggested articles for a participant based on specific historical
  /// messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestion for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestArticlesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestArticlesResponse> suggestArticles(
    GoogleCloudDialogflowV2SuggestArticlesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:suggestArticles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets suggested faq answers for a participant based on specific historical
  /// messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestion for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestFaqAnswersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestFaqAnswersResponse>
      suggestFaqAnswers(
    GoogleCloudDialogflowV2SuggestFaqAnswersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsKnowledgeBasesResource {
  final commons.ApiRequester _requester;

  ProjectsKnowledgeBasesDocumentsResource get documents =>
      ProjectsKnowledgeBasesDocumentsResource(_requester);

  ProjectsKnowledgeBasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a knowledge base for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> create(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to delete. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - Optional. Force deletes the knowledge base. When set to true,
  /// any documents in the knowledge base are also deleted.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to retrieve. Format
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListKnowledgeBasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The knowledge base resource name. The name must be empty when
  /// creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> patch(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsKnowledgeBasesDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to create a document for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
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
    GoogleCloudDialogflowV2Document request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListDocumentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The document resource name. The name must be empty when
  /// creating a document. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
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
    GoogleCloudDialogflowV2Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to reload. Format:
  /// `projects//locations//knowledgeBases//documents/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> reload(
    GoogleCloudDialogflowV2ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentResource get agent =>
      ProjectsLocationsAgentResource(_requester);
  ProjectsLocationsAnswerRecordsResource get answerRecords =>
      ProjectsLocationsAnswerRecordsResource(_requester);
  ProjectsLocationsConversationProfilesResource get conversationProfiles =>
      ProjectsLocationsConversationProfilesResource(_requester);
  ProjectsLocationsConversationsResource get conversations =>
      ProjectsLocationsConversationsResource(_requester);
  ProjectsLocationsKnowledgeBasesResource get knowledgeBases =>
      ProjectsLocationsKnowledgeBasesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Agent> getAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates/updates the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of this agent. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Agent> setAgent(
    GoogleCloudDialogflowV2Agent request,
    core.String parent, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentEntityTypesResource(_requester);
  ProjectsLocationsAgentEnvironmentsResource get environments =>
      ProjectsLocationsAgentEnvironmentsResource(_requester);
  ProjectsLocationsAgentIntentsResource get intents =>
      ProjectsLocationsAgentIntentsResource(_requester);
  ProjectsLocationsAgentSessionsResource get sessions =>
      ProjectsLocationsAgentSessionsResource(_requester);
  ProjectsLocationsAgentVersionsResource get versions =>
      ProjectsLocationsAgentVersionsResource(_requester);

  ProjectsLocationsAgentResource(commons.ApiRequester client)
      : _requester = client;

  /// Exports the specified agent to a ZIP file.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: ExportAgentResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to export is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudDialogflowV2ExportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Format:
  /// `projects//agent/fulfillment`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/fulfillment$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Fulfillment> getFulfillment(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets agent validation result.
  ///
  /// Agent validation is performed during training time and is updated
  /// automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language for which you want a validation
  /// result. If not specified, the agent's default language is used.
  /// [Many languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ValidationResult> getValidationResult(
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ValidationResult.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Imports the specified agent from a ZIP file.
  ///
  /// Uploads new intents and entity types without deleting the existing ones.
  /// Intents and entity types with the same name are replaced with the new
  /// versions from ImportAgentRequest. After the import, the imported draft
  /// agent will be trained automatically (unless disabled in agent settings).
  /// However, once the import is done, training may not be completed yet.
  /// Please call TrainAgent and wait for the operation it returns in order to
  /// train explicitly. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// The operation only tracks when importing is complete, not when it is done
  /// training. Note: You should always train an agent prior to sending it
  /// queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to import is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudDialogflowV2ImportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Restores the specified agent from a ZIP file.
  ///
  /// Replaces the current agent version with a new one. All the intents and
  /// entity types in the older version are deleted. After the restore, the
  /// restored draft agent will be trained automatically (unless disabled in
  /// agent settings). However, once the restore is done, training may not be
  /// completed yet. Please call TrainAgent and wait for the operation it
  /// returns in order to train explicitly. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// The operation only tracks when restoring is complete, not when it is done
  /// training. Note: You should always train an agent prior to sending it
  /// queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to restore is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudDialogflowV2RestoreAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of agents.
  ///
  /// Since there is at most one conversational agent per project, this method
  /// is useful primarily for listing all agents across projects the caller has
  /// access to. One can achieve that with a wildcard project collection id "-".
  /// Refer to \[List
  /// Sub-Collections\](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list agents from. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By default 100 and at most 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchAgentsResponse> search(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Trains the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to train is associated
  /// with. Format: `projects/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    GoogleCloudDialogflowV2TrainAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:train';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the fulfillment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the fulfillment. Supported
  /// formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment` This field is not used for
  /// Fulfillment in an Environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/fulfillment$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Fulfillment> updateFulfillment(
    GoogleCloudDialogflowV2Fulfillment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesEntitiesResource get entities =>
      ProjectsLocationsAgentEntityTypesEntitiesResource(_requester);

  ProjectsLocationsAgentEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes entity types in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates/Creates multiple entity types in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: BatchUpdateEntityTypesResponse Note: You should always train
  /// an agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create entity
  /// types in. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an entity type in the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> create(
    GoogleCloudDialogflowV2EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Format:
  /// `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListEntityTypesResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
  /// methods. Format: `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EntityType> patch(
    GoogleCloudDialogflowV2EntityType request,
    core.String name, {
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesEntitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to create entities in.
  /// Format: `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchCreate(
    GoogleCloudDialogflowV2BatchCreateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes entities in the specified entity type.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to delete entries for.
  /// Format: `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates or creates multiple entities in the specified entity type.
  ///
  /// This method does not affect entities in the entity type that aren't
  /// explicitly specified in the request. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Format: `projects//agent/entityTypes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsIntentsResource get intents =>
      ProjectsLocationsAgentEnvironmentsIntentsResource(_requester);
  ProjectsLocationsAgentEnvironmentsUsersResource get users =>
      ProjectsLocationsAgentEnvironmentsUsersResource(_requester);

  ProjectsLocationsAgentEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an agent environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create an environment for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [environmentId] - Required. The unique id of the new environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> create(
    GoogleCloudDialogflowV2Environment request,
    core.String parent, {
    core.String? environmentId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment to delete. / Format: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment. Supported formats: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the history of the specified environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment to retrieve history for.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2EnvironmentHistory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EnvironmentHistory> getHistory(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/history';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2EnvironmentHistory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all non-default environments of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all environments from. Format: -
  /// `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListEnvironmentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified agent environment.
  ///
  /// This method allows you to deploy new agent versions into the environment.
  /// When an environment is pointed to a new agent version by setting
  /// `environment.agent_version`, the environment is temporarily set to the
  /// `LOADING` state. During that time, the environment continues serving the
  /// previous version of the agent. After the new agent version is done
  /// loading, the environment is set back to the `RUNNING` state. You can use
  /// "-" as Environment ID in environment name to update an agent version in
  /// the default environment. WARNING: this will negate all recent changes to
  /// the draft agent and can't be undone. You may want to save the draft agent
  /// to a version before calling this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent environment.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - Optional. This field is used to
  /// prevent accidental overwrite of the default environment, which is an
  /// operation that cannot be undone. To confirm that the caller desires this
  /// overwrite, this field must be explicitly set to true when updating the
  /// default environment (environment ID = `-`).
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Environment> patch(
    GoogleCloudDialogflowV2Environment request,
    core.String name, {
    core.bool? allowLoadToDraftAndDiscardChanges,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (allowLoadToDraftAndDiscardChanges != null)
        'allowLoadToDraftAndDiscardChanges': [
          '${allowLoadToDraftAndDiscardChanges}'
        ],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEnvironmentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsIntentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent` or `projects//locations//agent`. Alternatively, you can
  /// specify the environment to list intents for. Format:
  /// `projects//agent/environments/` or
  /// `projects//locations//agent/environments/`. Note: training phrases of the
  /// intents will not be returned for non-draft environment.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEnvironmentsUsersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsResource get sessions =>
      ProjectsLocationsAgentEnvironmentsUsersSessionsResource(_requester);

  ProjectsLocationsAgentEnvironmentsUsersResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource
      get contexts =>
          ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource(
              _requester);
  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource
      get entityTypes =>
          ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource(
              _requester);

  ProjectsLocationsAgentEnvironmentsUsersSessionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteContexts(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries. If you might use
  /// [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa) or other CCAI
  /// products now or in the future, consider using AnalyzeContent instead of
  /// `DetectIntent`. `AnalyzeContent` has additional functionality for Agent
  /// Assist and other CCAI products. Note: Always use agent versions for
  /// production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//agent/sessions/`, or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment (`Environment ID`
  /// might be referred to as environment name at some places). If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> create(
    GoogleCloudDialogflowV2Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListContextsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> patch(
    GoogleCloudDialogflowV2Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// If the specified session entity type already exists, overrides the session
  /// entity type. This method doesn't work with Google Assistant integration.
  /// Contact Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> create(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListSessionEntityTypesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of this session entity type.
  /// Format: `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> patch(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentIntentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes intents in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchDelete(
    GoogleCloudDialogflowV2BatchDeleteIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates/Creates multiple intents in the specified agent.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: An empty
  /// [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
  /// - `response`: BatchUpdateIntentsResponse Note: You should always train an
  /// agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create intents in.
  /// Format: `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdate(
    GoogleCloudDialogflowV2BatchUpdateIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an intent in the specified agent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a intent for. Format:
  /// `projects//agent`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> create(
    GoogleCloudDialogflowV2Intent request,
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified intent and its direct or indirect followup intents.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. If this intent has
  /// direct or indirect followup intents, we also delete them. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/intents/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> get(
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent` or `projects//locations//agent`. Alternatively, you can
  /// specify the environment to list intents for. Format:
  /// `projects//agent/environments/` or
  /// `projects//locations//agent/environments/`. Note: training phrases of the
  /// intents will not be returned for non-draft environment.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
  /// Completes with a [GoogleCloudDialogflowV2ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListIntentsResponse> list(
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified intent.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this intent. Required for
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format:
  /// `projects//agent/intents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Intent> patch(
    GoogleCloudDialogflowV2Intent request,
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsContextsResource get contexts =>
      ProjectsLocationsAgentSessionsContextsResource(_requester);
  ProjectsLocationsAgentSessionsEntityTypesResource get entityTypes =>
      ProjectsLocationsAgentSessionsEntityTypesResource(_requester);

  ProjectsLocationsAgentSessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> deleteContexts(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries. If you might use
  /// [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa) or other CCAI
  /// products now or in the future, consider using AnalyzeContent instead of
  /// `DetectIntent`. `AnalyzeContent` has additional functionality for Agent
  /// Assist and other CCAI products. Note: Always use agent versions for
  /// production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format: `projects//agent/sessions/`, or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment (`Environment ID`
  /// might be referred to as environment name at some places). If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsContextsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> create(
    GoogleCloudDialogflowV2Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Format:
  /// `projects//agent/sessions//contexts/` or
  /// `projects//agent/environments//users//sessions//contexts/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Format:
  /// `projects//agent/sessions/` or
  /// `projects//agent/environments//users//sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListContextsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Context> patch(
    GoogleCloudDialogflowV2Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// If the specified session entity type already exists, overrides the session
  /// entity type. This method doesn't work with Google Assistant integration.
  /// Contact Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> create(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects//agent/sessions//entityTypes/` or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects//agent/sessions/` or
  /// `projects//agent/environments//users// sessions/`. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListSessionEntityTypesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of this session entity type.
  /// Format: `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SessionEntityType> patch(
    GoogleCloudDialogflowV2SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAgentVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an agent version.
  ///
  /// The new version points to the agent instance in the "default" environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a version for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> create(
    GoogleCloudDialogflowV2Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete the specified agent version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to delete. Supported formats: -
  /// `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/versions/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified agent version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version. Supported formats: -
  /// `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all versions of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all versions from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListVersionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified agent version.
  ///
  /// Note that this method does not allow you to update the state of the agent
  /// the given version points to. It allows you to update only mutable
  /// properties of the version resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent version.
  /// Supported formats: - `projects//agent/versions/` -
  /// `projects//locations//agent/versions/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Version> patch(
    GoogleCloudDialogflowV2Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnswerRecordsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all answer records in the specified project in reverse
  /// chronological order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all answer records for in reverse
  /// chronological order. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Required. Filters to restrict results to specific answer
  /// records. Filter on answer record type. Currently predicates on `type` is
  /// supported, valid values are `ARTICLE_ANSWER`, `FAQ_ANSWER`. For more
  /// information about filtering, see [API Filtering](https://aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of records to return in a single
  /// page. The server may return fewer records than this. If unspecified, we
  /// use 10. The maximum is 100.
  ///
  /// [pageToken] - Optional. The ListAnswerRecordsResponse.next_page_token
  /// value returned from a previous list request used to continue listing on
  /// the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListAnswerRecordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListAnswerRecordsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified answer record.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this answer record. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2AnswerRecord> patch(
    GoogleCloudDialogflowV2AnswerRecord request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2AnswerRecord.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a conversation profile in the specified project.
  ///
  /// ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't
  /// populated in the response. You can retrieve them via
  /// GetConversationProfile API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a conversation profile for.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> create(
    GoogleCloudDialogflowV2ConversationProfile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified conversation profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation profile to delete. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified conversation profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversation profile. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all conversation profiles in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all conversation profiles from.
  /// Format: `projects//locations/`.
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListConversationProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationProfilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified conversation profile.
  ///
  /// ConversationProfile.CreateTime and ConversationProfile.UpdateTime aren't
  /// populated in the response. You can retrieve them via
  /// GetConversationProfile API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this conversation profile. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationProfile> patch(
    GoogleCloudDialogflowV2ConversationProfile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsMessagesResource get messages =>
      ProjectsLocationsConversationsMessagesResource(_requester);
  ProjectsLocationsConversationsParticipantsResource get participants =>
      ProjectsLocationsConversationsParticipantsResource(_requester);

  ProjectsLocationsConversationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Completes the specified conversation.
  ///
  /// Finished conversations are purged from the database after 30 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource identifier of the conversation to close.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> complete(
    GoogleCloudDialogflowV2CompleteConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':complete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new conversation.
  ///
  /// Conversations are auto-completed after 24 hours. Conversation Lifecycle:
  /// There are two stages during a conversation: Automated Agent Stage and
  /// Assist Stage. For Automated Agent Stage, there will be a dialogflow agent
  /// responding to user queries. For Assist Stage, there's no dialogflow agent
  /// responding to user queries. But we will provide suggestions which are
  /// generated from conversation. If Conversation.conversation_profile is
  /// configured for a dialogflow agent, conversation will start from `Automated
  /// Agent Stage`, otherwise, it will start from `Assist Stage`. And during
  /// `Automated Agent Stage`, once an Intent with Intent.live_agent_handoff is
  /// triggered, conversation will transfer to Assist Stage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the project creating the
  /// conversation. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [conversationId] - Optional. Identifier of the conversation. Generally
  /// it's auto generated by Google. Only set it if you cannot wait for the
  /// response to return a auto-generated one to you. The conversation ID must
  /// be compliant with the regression fomula "a-zA-Z*" with the characters
  /// length in range of \[3,64\]. If the field is provided, the caller is
  /// resposible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> create(
    GoogleCloudDialogflowV2Conversation request,
    core.String parent, {
    core.String? conversationId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (conversationId != null) 'conversationId': [conversationId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specific conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversation. Format:
  /// `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Conversation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all conversations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project from which to list all conversation.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters conversations listed in the
  /// response. In general, the expression must specify the field name, a
  /// comparison operator, and the value to use for filtering: - The value must
  /// be a string, a number, or a boolean. - The comparison operator must be
  /// either `=`,`!=`, `>`, or `<`. - To filter on multiple expressions,
  /// separate the expressions with `AND` or `OR` (omitting both implies `AND`).
  /// - For clarity, expressions can be enclosed in parentheses. Only
  /// `lifecycle_state` can be filtered on in this way. For example, the
  /// following expression only returns `COMPLETED` conversations:
  /// `lifecycle_state = "COMPLETED"` For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListConversationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists messages that belong to a given conversation.
  ///
  /// `messages` are ordered by `create_time` in descending order. To fetch
  /// updates without duplication, send request with filter
  /// `create_time_epoch_microseconds > [first item's create_time of previous
  /// request]` and empty page_token.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the conversation to list messages for.
  /// Format: `projects//locations//conversations/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter on message fields. Currently predicates on
  /// `create_time` and `create_time_epoch_microseconds` are supported.
  /// `create_time` only support milliseconds accuracy. E.g.,
  /// `create_time_epoch_microseconds > 1551790877964485` or `create_time >
  /// 2017-01-15T01:30:15.01Z`. For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListMessagesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsParticipantsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsParticipantsSuggestionsResource
      get suggestions =>
          ProjectsLocationsConversationsParticipantsSuggestionsResource(
              _requester);

  ProjectsLocationsConversationsParticipantsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Adds a text (chat, for example), or audio (phone recording, for example)
  /// message from a participant into the conversation.
  ///
  /// Note: Always use agent versions for production traffic sent to virtual
  /// agents. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [participant] - Required. The name of the participant this text comes
  /// from. Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2AnalyzeContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2AnalyzeContentResponse> analyzeContent(
    GoogleCloudDialogflowV2AnalyzeContentRequest request,
    core.String participant, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new participant in a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the conversation adding the
  /// participant. Format: `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> create(
    GoogleCloudDialogflowV2Participant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a conversation participant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the participant. Format:
  /// `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all participants in the specified conversation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The conversation to list all participants from.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2ListParticipantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListParticipantsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified participant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this participant. Format:
  /// `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to specify which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Participant> patch(
    GoogleCloudDialogflowV2Participant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsParticipantsSuggestionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets suggested articles for a participant based on specific historical
  /// messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestion for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestArticlesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestArticlesResponse> suggestArticles(
    GoogleCloudDialogflowV2SuggestArticlesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:suggestArticles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets suggested faq answers for a participant based on specific historical
  /// messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestion for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestFaqAnswersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestFaqAnswersResponse>
      suggestFaqAnswers(
    GoogleCloudDialogflowV2SuggestFaqAnswersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsKnowledgeBasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKnowledgeBasesDocumentsResource get documents =>
      ProjectsLocationsKnowledgeBasesDocumentsResource(_requester);

  ProjectsLocationsKnowledgeBasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a knowledge base for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> create(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to delete. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - Optional. Force deletes the knowledge base. When set to true,
  /// any documents in the knowledge base are also deleted.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to retrieve. Format
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListKnowledgeBasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified knowledge base.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The knowledge base resource name. The name must be empty when
  /// creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2KnowledgeBase> patch(
    GoogleCloudDialogflowV2KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKnowledgeBasesDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to create a document for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
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
    GoogleCloudDialogflowV2Document request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return in a single page. By
  /// default 10 and at most 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListDocumentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The document resource name. The name must be empty when
  /// creating a document. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Not specified means `update all`. Currently, only
  /// `display_name` can be updated, an InvalidArgument will be returned for
  /// attempting to update other fields.
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
    GoogleCloudDialogflowV2Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to reload. Format:
  /// `projects//locations//knowledgeBases//documents/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> reload(
    GoogleCloudDialogflowV2ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A Dialogflow agent is a virtual agent that handles conversations with your
/// end-users.
///
/// It is a natural language understanding module that understands the nuances
/// of human language. Dialogflow translates end-user text or audio during a
/// conversation to structured data that your apps and services can understand.
/// You design and build a Dialogflow agent to handle the types of conversations
/// required for your system. For more information about agents, see the
/// [Agent guide](https://cloud.google.com/dialogflow/docs/agents-overview).
class GoogleCloudDialogflowV2Agent {
  /// API version displayed in Dialogflow console.
  ///
  /// If not specified, V2 API is assumed. Clients are free to query different
  /// service endpoints for different API versions. However, bots connectors and
  /// webhook calls will follow the specified API version.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED" : Not specified.
  /// - "API_VERSION_V1" : Legacy V1 API.
  /// - "API_VERSION_V2" : V2 API.
  /// - "API_VERSION_V2_BETA_1" : V2beta1 API.
  core.String? apiVersion;

  /// The URI of the agent's avatar.
  ///
  /// Avatars are used throughout the Dialogflow console and in the self-hosted
  /// [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
  /// integration.
  ///
  /// Optional.
  core.String? avatarUri;

  /// To filter out false positive results and still get variety in matched
  /// natural language inputs for your agent, you can tune the machine learning
  /// classification threshold.
  ///
  /// If the returned score value is less than the threshold value, then a
  /// fallback intent will be triggered or, if there are no fallback intents
  /// defined, no intent will be triggered. The score values range from 0.0
  /// (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  ///
  /// Optional.
  core.double? classificationThreshold;

  /// The default language of the agent as a language tag.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be
  /// set by the `Update` method.
  ///
  /// Required.
  core.String? defaultLanguageCode;

  /// The description of this agent.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  ///
  /// Optional.
  core.String? description;

  /// The name of this agent.
  ///
  /// Required.
  core.String? displayName;

  /// Determines whether this agent should log conversation queries.
  ///
  /// Optional.
  core.bool? enableLogging;

  /// Determines how intents are detected from user queries.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MATCH_MODE_UNSPECIFIED" : Not specified.
  /// - "MATCH_MODE_HYBRID" : Best for agents with a small number of examples in
  /// intents and/or wide use of templates syntax and composite entities.
  /// - "MATCH_MODE_ML_ONLY" : Can be used for agents with a large number of
  /// examples in intents, especially the ones using @sys.any or very large
  /// custom entities.
  core.String? matchMode;

  /// The project of this agent.
  ///
  /// Format: `projects/`.
  ///
  /// Required.
  core.String? parent;

  /// The list of all languages supported by this agent (except for the
  /// `default_language_code`).
  ///
  /// Optional.
  core.List<core.String>? supportedLanguageCodes;

  /// The agent tier.
  ///
  /// If not specified, TIER_STANDARD is assumed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "TIER_STANDARD" : Trial Edition, previously known as Standard Edition.
  /// - "TIER_ENTERPRISE" : Essentials Edition, previously known as Enterprise
  /// Essential Edition.
  /// - "TIER_ENTERPRISE_PLUS" : Essentials Edition (same as TIER_ENTERPRISE),
  /// previously known as Enterprise Plus Edition.
  core.String? tier;

  /// The time zone of this agent from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// Required.
  core.String? timeZone;

  GoogleCloudDialogflowV2Agent({
    this.apiVersion,
    this.avatarUri,
    this.classificationThreshold,
    this.defaultLanguageCode,
    this.description,
    this.displayName,
    this.enableLogging,
    this.matchMode,
    this.parent,
    this.supportedLanguageCodes,
    this.tier,
    this.timeZone,
  });

  GoogleCloudDialogflowV2Agent.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          avatarUri: _json.containsKey('avatarUri')
              ? _json['avatarUri'] as core.String
              : null,
          classificationThreshold: _json.containsKey('classificationThreshold')
              ? (_json['classificationThreshold'] as core.num).toDouble()
              : null,
          defaultLanguageCode: _json.containsKey('defaultLanguageCode')
              ? _json['defaultLanguageCode'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enableLogging: _json.containsKey('enableLogging')
              ? _json['enableLogging'] as core.bool
              : null,
          matchMode: _json.containsKey('matchMode')
              ? _json['matchMode'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          supportedLanguageCodes: _json.containsKey('supportedLanguageCodes')
              ? (_json['supportedLanguageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (avatarUri != null) 'avatarUri': avatarUri!,
        if (classificationThreshold != null)
          'classificationThreshold': classificationThreshold!,
        if (defaultLanguageCode != null)
          'defaultLanguageCode': defaultLanguageCode!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (enableLogging != null) 'enableLogging': enableLogging!,
        if (matchMode != null) 'matchMode': matchMode!,
        if (parent != null) 'parent': parent!,
        if (supportedLanguageCodes != null)
          'supportedLanguageCodes': supportedLanguageCodes!,
        if (tier != null) 'tier': tier!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Detail feedback of Agent Assist result.
class GoogleCloudDialogflowV2AgentAssistantFeedback {
  /// Whether or not the suggested answer is relevant.
  ///
  /// For example: * Query: "Can I change my mailing address?" * Suggested
  /// document says: "Items must be returned/exchanged within 60 days of the
  /// purchase date." * answer_relevance: AnswerRelevance.IRRELEVANT
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ANSWER_RELEVANCE_UNSPECIFIED" : Answer relevance unspecified.
  /// - "IRRELEVANT" : Answer is irrelevant to query.
  /// - "RELEVANT" : Answer is relevant to query.
  core.String? answerRelevance;

  /// Whether or not the information in the document is correct.
  ///
  /// For example: * Query: "Can I return the package in 2 days once received?"
  /// * Suggested document says: "Items must be returned/exchanged within 60
  /// days of the purchase date." * Ground truth: "No return or exchange is
  /// allowed." * \[document_correctness\]: INCORRECT
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DOCUMENT_CORRECTNESS_UNSPECIFIED" : Document correctness unspecified.
  /// - "INCORRECT" : Information in document is incorrect.
  /// - "CORRECT" : Information in document is correct.
  core.String? documentCorrectness;

  /// Whether or not the suggested document is efficient.
  ///
  /// For example, if the document is poorly written, hard to understand, hard
  /// to use or too long to find useful information, document_efficiency is
  /// DocumentEfficiency.INEFFICIENT.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DOCUMENT_EFFICIENCY_UNSPECIFIED" : Document efficiency unspecified.
  /// - "INEFFICIENT" : Document is inefficient.
  /// - "EFFICIENT" : Document is efficient.
  core.String? documentEfficiency;

  GoogleCloudDialogflowV2AgentAssistantFeedback({
    this.answerRelevance,
    this.documentCorrectness,
    this.documentEfficiency,
  });

  GoogleCloudDialogflowV2AgentAssistantFeedback.fromJson(core.Map _json)
      : this(
          answerRelevance: _json.containsKey('answerRelevance')
              ? _json['answerRelevance'] as core.String
              : null,
          documentCorrectness: _json.containsKey('documentCorrectness')
              ? _json['documentCorrectness'] as core.String
              : null,
          documentEfficiency: _json.containsKey('documentEfficiency')
              ? _json['documentEfficiency'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRelevance != null) 'answerRelevance': answerRelevance!,
        if (documentCorrectness != null)
          'documentCorrectness': documentCorrectness!,
        if (documentEfficiency != null)
          'documentEfficiency': documentEfficiency!,
      };
}

/// Represents a record of a human agent assist answer.
class GoogleCloudDialogflowV2AgentAssistantRecord {
  /// The article suggestion answer.
  ///
  /// Output only.
  GoogleCloudDialogflowV2ArticleAnswer? articleSuggestionAnswer;

  /// The FAQ answer.
  ///
  /// Output only.
  GoogleCloudDialogflowV2FaqAnswer? faqAnswer;

  GoogleCloudDialogflowV2AgentAssistantRecord({
    this.articleSuggestionAnswer,
    this.faqAnswer,
  });

  GoogleCloudDialogflowV2AgentAssistantRecord.fromJson(core.Map _json)
      : this(
          articleSuggestionAnswer: _json.containsKey('articleSuggestionAnswer')
              ? GoogleCloudDialogflowV2ArticleAnswer.fromJson(
                  _json['articleSuggestionAnswer']
                      as core.Map<core.String, core.dynamic>)
              : null,
          faqAnswer: _json.containsKey('faqAnswer')
              ? GoogleCloudDialogflowV2FaqAnswer.fromJson(
                  _json['faqAnswer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (articleSuggestionAnswer != null)
          'articleSuggestionAnswer': articleSuggestionAnswer!,
        if (faqAnswer != null) 'faqAnswer': faqAnswer!,
      };
}

/// The request message for Participants.AnalyzeContent.
class GoogleCloudDialogflowV2AnalyzeContentRequest {
  /// An input event to send to Dialogflow.
  GoogleCloudDialogflowV2EventInput? eventInput;

  /// Parameters for a Dialogflow virtual-agent query.
  GoogleCloudDialogflowV2QueryParameters? queryParams;

  /// Speech synthesis configuration.
  ///
  /// The speech synthesis settings for a virtual agent that may be configured
  /// for the associated conversation profile are not used when calling
  /// AnalyzeContent. If this configuration is not supplied, speech synthesis is
  /// disabled.
  GoogleCloudDialogflowV2OutputAudioConfig? replyAudioConfig;

  /// A unique identifier for this request.
  ///
  /// Restricted to 36 ASCII characters. A random UUID is recommended. This
  /// request is only idempotent if a `request_id` is provided.
  core.String? requestId;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2TextInput? textInput;

  GoogleCloudDialogflowV2AnalyzeContentRequest({
    this.eventInput,
    this.queryParams,
    this.replyAudioConfig,
    this.requestId,
    this.textInput,
  });

  GoogleCloudDialogflowV2AnalyzeContentRequest.fromJson(core.Map _json)
      : this(
          eventInput: _json.containsKey('eventInput')
              ? GoogleCloudDialogflowV2EventInput.fromJson(
                  _json['eventInput'] as core.Map<core.String, core.dynamic>)
              : null,
          queryParams: _json.containsKey('queryParams')
              ? GoogleCloudDialogflowV2QueryParameters.fromJson(
                  _json['queryParams'] as core.Map<core.String, core.dynamic>)
              : null,
          replyAudioConfig: _json.containsKey('replyAudioConfig')
              ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                  _json['replyAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          textInput: _json.containsKey('textInput')
              ? GoogleCloudDialogflowV2TextInput.fromJson(
                  _json['textInput'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventInput != null) 'eventInput': eventInput!,
        if (queryParams != null) 'queryParams': queryParams!,
        if (replyAudioConfig != null) 'replyAudioConfig': replyAudioConfig!,
        if (requestId != null) 'requestId': requestId!,
        if (textInput != null) 'textInput': textInput!,
      };
}

/// The response message for Participants.AnalyzeContent.
class GoogleCloudDialogflowV2AnalyzeContentResponse {
  /// Only set if a Dialogflow automated agent has responded.
  ///
  /// Note that: AutomatedAgentReply.detect_intent_response.output_audio and
  /// AutomatedAgentReply.detect_intent_response.output_audio_config are always
  /// empty, use reply_audio instead.
  GoogleCloudDialogflowV2AutomatedAgentReply? automatedAgentReply;

  /// Indicates the parameters of DTMF.
  GoogleCloudDialogflowV2DtmfParameters? dtmfParameters;

  /// The suggestions for end user.
  ///
  /// The order is the same as
  /// HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
  /// HumanAgentAssistantConfig.end_user_suggestion_config.
  core.List<GoogleCloudDialogflowV2SuggestionResult>? endUserSuggestionResults;

  /// The suggestions for most recent human agent.
  ///
  /// The order is the same as
  /// HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
  /// HumanAgentAssistantConfig.human_agent_suggestion_config.
  core.List<GoogleCloudDialogflowV2SuggestionResult>?
      humanAgentSuggestionResults;

  /// Message analyzed by CCAI.
  GoogleCloudDialogflowV2Message? message;

  /// The audio data bytes encoded as specified in the request.
  ///
  /// This field is set if: - `reply_audio_config` was specified in the request,
  /// or - The automated agent responded with audio to play to the user. In such
  /// case, `reply_audio.config` contains settings used to synthesize the
  /// speech. In some scenarios, multiple output audio fields may be present in
  /// the response structure. In these cases, only the top-most-level audio
  /// output has content.
  GoogleCloudDialogflowV2OutputAudio? replyAudio;

  /// The output text content.
  ///
  /// This field is set if the automated agent responded with text to show to
  /// the user.
  core.String? replyText;

  GoogleCloudDialogflowV2AnalyzeContentResponse({
    this.automatedAgentReply,
    this.dtmfParameters,
    this.endUserSuggestionResults,
    this.humanAgentSuggestionResults,
    this.message,
    this.replyAudio,
    this.replyText,
  });

  GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(core.Map _json)
      : this(
          automatedAgentReply: _json.containsKey('automatedAgentReply')
              ? GoogleCloudDialogflowV2AutomatedAgentReply.fromJson(
                  _json['automatedAgentReply']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dtmfParameters: _json.containsKey('dtmfParameters')
              ? GoogleCloudDialogflowV2DtmfParameters.fromJson(
                  _json['dtmfParameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endUserSuggestionResults:
              _json.containsKey('endUserSuggestionResults')
                  ? (_json['endUserSuggestionResults'] as core.List)
                      .map((value) =>
                          GoogleCloudDialogflowV2SuggestionResult.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          humanAgentSuggestionResults:
              _json.containsKey('humanAgentSuggestionResults')
                  ? (_json['humanAgentSuggestionResults'] as core.List)
                      .map((value) =>
                          GoogleCloudDialogflowV2SuggestionResult.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          message: _json.containsKey('message')
              ? GoogleCloudDialogflowV2Message.fromJson(
                  _json['message'] as core.Map<core.String, core.dynamic>)
              : null,
          replyAudio: _json.containsKey('replyAudio')
              ? GoogleCloudDialogflowV2OutputAudio.fromJson(
                  _json['replyAudio'] as core.Map<core.String, core.dynamic>)
              : null,
          replyText: _json.containsKey('replyText')
              ? _json['replyText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automatedAgentReply != null)
          'automatedAgentReply': automatedAgentReply!,
        if (dtmfParameters != null) 'dtmfParameters': dtmfParameters!,
        if (endUserSuggestionResults != null)
          'endUserSuggestionResults': endUserSuggestionResults!,
        if (humanAgentSuggestionResults != null)
          'humanAgentSuggestionResults': humanAgentSuggestionResults!,
        if (message != null) 'message': message!,
        if (replyAudio != null) 'replyAudio': replyAudio!,
        if (replyText != null) 'replyText': replyText!,
      };
}

/// Represents a part of a message possibly annotated with an entity.
///
/// The part can be an entity or purely a part of the message between two
/// entities or message start/end.
typedef GoogleCloudDialogflowV2AnnotatedMessagePart
    = $GoogleCloudDialogflowV2AnnotatedMessagePart;

/// Represents feedback the customer has about the quality & correctness of a
/// certain answer in a conversation.
class GoogleCloudDialogflowV2AnswerFeedback {
  /// Detail feedback of agent assist suggestions.
  GoogleCloudDialogflowV2AgentAssistantFeedback? agentAssistantDetailFeedback;

  /// Time when the answer/item was clicked.
  core.String? clickTime;

  /// Indicates whether the answer/item was clicked by the human agent or not.
  ///
  /// Default to false.
  core.bool? clicked;

  /// The correctness level of the specific answer.
  /// Possible string values are:
  /// - "CORRECTNESS_LEVEL_UNSPECIFIED" : Correctness level unspecified.
  /// - "NOT_CORRECT" : Answer is totally wrong.
  /// - "PARTIALLY_CORRECT" : Answer is partially correct.
  /// - "FULLY_CORRECT" : Answer is fully correct.
  core.String? correctnessLevel;

  /// Time when the answer/item was displayed.
  core.String? displayTime;

  /// Indicates whether the answer/item was displayed to the human agent in the
  /// agent desktop UI.
  ///
  /// Default to false.
  core.bool? displayed;

  GoogleCloudDialogflowV2AnswerFeedback({
    this.agentAssistantDetailFeedback,
    this.clickTime,
    this.clicked,
    this.correctnessLevel,
    this.displayTime,
    this.displayed,
  });

  GoogleCloudDialogflowV2AnswerFeedback.fromJson(core.Map _json)
      : this(
          agentAssistantDetailFeedback:
              _json.containsKey('agentAssistantDetailFeedback')
                  ? GoogleCloudDialogflowV2AgentAssistantFeedback.fromJson(
                      _json['agentAssistantDetailFeedback']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          clickTime: _json.containsKey('clickTime')
              ? _json['clickTime'] as core.String
              : null,
          clicked: _json.containsKey('clicked')
              ? _json['clicked'] as core.bool
              : null,
          correctnessLevel: _json.containsKey('correctnessLevel')
              ? _json['correctnessLevel'] as core.String
              : null,
          displayTime: _json.containsKey('displayTime')
              ? _json['displayTime'] as core.String
              : null,
          displayed: _json.containsKey('displayed')
              ? _json['displayed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentAssistantDetailFeedback != null)
          'agentAssistantDetailFeedback': agentAssistantDetailFeedback!,
        if (clickTime != null) 'clickTime': clickTime!,
        if (clicked != null) 'clicked': clicked!,
        if (correctnessLevel != null) 'correctnessLevel': correctnessLevel!,
        if (displayTime != null) 'displayTime': displayTime!,
        if (displayed != null) 'displayed': displayed!,
      };
}

/// Answer records are records to manage answer history and feedbacks for
/// Dialogflow.
///
/// Currently, answer record includes: - human agent assistant article
/// suggestion - human agent assistant faq article It doesn't include: -
/// `DetectIntent` intent matching - `DetectIntent` knowledge Answer records are
/// not related to the conversation history in the Dialogflow Console. A Record
/// is generated even when the end-user disables conversation history in the
/// console. Records are created when there's a human agent assistant suggestion
/// generated. A typical workflow for customers provide feedback to an answer
/// is: 1. For human agent assistant, customers get suggestion via
/// ListSuggestions API. Together with the answers, AnswerRecord.name are
/// returned to the customers. 2. The customer uses the AnswerRecord.name to
/// call the UpdateAnswerRecord method to send feedback about a specific answer
/// that they believe is wrong.
class GoogleCloudDialogflowV2AnswerRecord {
  /// The record for human agent assistant.
  ///
  /// Output only.
  GoogleCloudDialogflowV2AgentAssistantRecord? agentAssistantRecord;

  /// The AnswerFeedback for this record.
  ///
  /// You can set this with AnswerRecords.UpdateAnswerRecord in order to give us
  /// feedback about this answer.
  ///
  /// Required.
  GoogleCloudDialogflowV2AnswerFeedback? answerFeedback;

  /// The unique identifier of this answer record.
  ///
  /// Format: `projects//locations//answerRecords/`.
  core.String? name;

  GoogleCloudDialogflowV2AnswerRecord({
    this.agentAssistantRecord,
    this.answerFeedback,
    this.name,
  });

  GoogleCloudDialogflowV2AnswerRecord.fromJson(core.Map _json)
      : this(
          agentAssistantRecord: _json.containsKey('agentAssistantRecord')
              ? GoogleCloudDialogflowV2AgentAssistantRecord.fromJson(
                  _json['agentAssistantRecord']
                      as core.Map<core.String, core.dynamic>)
              : null,
          answerFeedback: _json.containsKey('answerFeedback')
              ? GoogleCloudDialogflowV2AnswerFeedback.fromJson(
                  _json['answerFeedback']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentAssistantRecord != null)
          'agentAssistantRecord': agentAssistantRecord!,
        if (answerFeedback != null) 'answerFeedback': answerFeedback!,
        if (name != null) 'name': name!,
      };
}

/// Represents article answer.
typedef GoogleCloudDialogflowV2ArticleAnswer
    = $GoogleCloudDialogflowV2ArticleAnswer;

/// Defines the Automated Agent to connect to a conversation.
class GoogleCloudDialogflowV2AutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use.
  ///
  /// This project needs to either be the same project as the conversation or
  /// you need to grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the
  /// `Dialogflow API Service Agent` role in this project. Format:
  /// `projects//locations//agent/environments/`. If environment is not
  /// specified, the default `draft` environment is used. Refer to
  /// \[DetectIntentRequest\](/dialogflow/docs/reference/rpc/google.cloud.dialogflow.v2#google.cloud.dialogflow.v2.DetectIntentRequest)
  /// for more details.
  ///
  /// Required.
  core.String? agent;

  GoogleCloudDialogflowV2AutomatedAgentConfig({
    this.agent,
  });

  GoogleCloudDialogflowV2AutomatedAgentConfig.fromJson(core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
      };
}

/// Represents a response from an automated agent.
class GoogleCloudDialogflowV2AutomatedAgentReply {
  /// Indicates whether the partial automated agent reply is interruptible when
  /// a later reply message arrives.
  ///
  /// e.g. if the agent specified some music as partial response, it can be
  /// cancelled.
  core.bool? allowCancellation;

  /// AutomatedAgentReply type.
  /// Possible string values are:
  /// - "AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED" : Not specified. This should
  /// never happen.
  /// - "PARTIAL" : Partial reply. e.g. Aggregated responses in a `Fulfillment`
  /// that enables `return_partial_response` can be returned as partial reply.
  /// WARNING: partial reply is not eligible for barge-in.
  /// - "FINAL" : Final reply.
  core.String? automatedAgentReplyType;

  /// Response of the Dialogflow Sessions.DetectIntent call.
  GoogleCloudDialogflowV2DetectIntentResponse? detectIntentResponse;

  GoogleCloudDialogflowV2AutomatedAgentReply({
    this.allowCancellation,
    this.automatedAgentReplyType,
    this.detectIntentResponse,
  });

  GoogleCloudDialogflowV2AutomatedAgentReply.fromJson(core.Map _json)
      : this(
          allowCancellation: _json.containsKey('allowCancellation')
              ? _json['allowCancellation'] as core.bool
              : null,
          automatedAgentReplyType: _json.containsKey('automatedAgentReplyType')
              ? _json['automatedAgentReplyType'] as core.String
              : null,
          detectIntentResponse: _json.containsKey('detectIntentResponse')
              ? GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
                  _json['detectIntentResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCancellation != null) 'allowCancellation': allowCancellation!,
        if (automatedAgentReplyType != null)
          'automatedAgentReplyType': automatedAgentReplyType!,
        if (detectIntentResponse != null)
          'detectIntentResponse': detectIntentResponse!,
      };
}

/// The request message for EntityTypes.BatchCreateEntities.
class GoogleCloudDialogflowV2BatchCreateEntitiesRequest {
  /// The entities to create.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest({
    this.entities,
    this.languageCode,
  });

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(core.Map _json)
      : this(
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// The request message for EntityTypes.BatchDeleteEntities.
class GoogleCloudDialogflowV2BatchDeleteEntitiesRequest {
  /// The reference `values` of the entities to delete.
  ///
  /// Note that these are not fully-qualified names, i.e. they don't start with
  /// `projects/`.
  ///
  /// Required.
  core.List<core.String>? entityValues;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest({
    this.entityValues,
    this.languageCode,
  });

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(core.Map _json)
      : this(
          entityValues: _json.containsKey('entityValues')
              ? (_json['entityValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityValues != null) 'entityValues': entityValues!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// The request message for EntityTypes.BatchDeleteEntityTypes.
class GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest {
  /// The names entity types to delete.
  ///
  /// All names must point to the same agent as `parent`.
  ///
  /// Required.
  core.List<core.String>? entityTypeNames;

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest({
    this.entityTypeNames,
  });

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(core.Map _json)
      : this(
          entityTypeNames: _json.containsKey('entityTypeNames')
              ? (_json['entityTypeNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypeNames != null) 'entityTypeNames': entityTypeNames!,
      };
}

/// The request message for Intents.BatchDeleteIntents.
class GoogleCloudDialogflowV2BatchDeleteIntentsRequest {
  /// The collection of intents to delete.
  ///
  /// Only intent `name` must be filled in.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2Intent>? intents;

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest({
    this.intents,
  });

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(core.Map _json)
      : this(
          intents: _json.containsKey('intents')
              ? (_json['intents'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Intent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intents != null) 'intents': intents!,
      };
}

/// The request message for EntityTypes.BatchUpdateEntities.
class GoogleCloudDialogflowV2BatchUpdateEntitiesRequest {
  /// The entities to update or create.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  /// The mask to control which fields get updated.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest({
    this.entities,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(core.Map _json)
      : this(
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// The request message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest {
  /// The collection of entity types to update or create.
  GoogleCloudDialogflowV2EntityTypeBatch? entityTypeBatchInline;

  /// The URI to a Google Cloud Storage file containing entity types to update
  /// or create.
  ///
  /// The file format can either be a serialized proto (of EntityBatch type) or
  /// a JSON object. Note: The URI must start with "gs://".
  core.String? entityTypeBatchUri;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  /// The mask to control which fields get updated.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest({
    this.entityTypeBatchInline,
    this.entityTypeBatchUri,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(core.Map _json)
      : this(
          entityTypeBatchInline: _json.containsKey('entityTypeBatchInline')
              ? GoogleCloudDialogflowV2EntityTypeBatch.fromJson(
                  _json['entityTypeBatchInline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          entityTypeBatchUri: _json.containsKey('entityTypeBatchUri')
              ? _json['entityTypeBatchUri'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypeBatchInline != null)
          'entityTypeBatchInline': entityTypeBatchInline!,
        if (entityTypeBatchUri != null)
          'entityTypeBatchUri': entityTypeBatchUri!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

class GoogleCloudDialogflowV2BatchUpdateIntentsRequest {
  /// The collection of intents to update or create.
  GoogleCloudDialogflowV2IntentBatch? intentBatchInline;

  /// The URI to a Google Cloud Storage file containing intents to update or
  /// create.
  ///
  /// The file format can either be a serialized proto (of IntentBatch type) or
  /// JSON object. Note: The URI must start with "gs://".
  core.String? intentBatchUri;

  /// The resource view to apply to the returned intent.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  core.String? intentView;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  /// The mask to control which fields get updated.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest({
    this.intentBatchInline,
    this.intentBatchUri,
    this.intentView,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(core.Map _json)
      : this(
          intentBatchInline: _json.containsKey('intentBatchInline')
              ? GoogleCloudDialogflowV2IntentBatch.fromJson(
                  _json['intentBatchInline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          intentBatchUri: _json.containsKey('intentBatchUri')
              ? _json['intentBatchUri'] as core.String
              : null,
          intentView: _json.containsKey('intentView')
              ? _json['intentView'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intentBatchInline != null) 'intentBatchInline': intentBatchInline!,
        if (intentBatchUri != null) 'intentBatchUri': intentBatchUri!,
        if (intentView != null) 'intentView': intentView!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// The request message for Conversations.CompleteConversation.
typedef GoogleCloudDialogflowV2CompleteConversationRequest = $Empty;

/// Dialogflow contexts are similar to natural language context.
///
/// If a person says to you "they are orange", you need context in order to
/// understand what "they" is referring to. Similarly, for Dialogflow to handle
/// an end-user expression like that, it needs to be provided with context in
/// order to correctly match an intent. Using contexts, you can control the flow
/// of a conversation. You can configure contexts for an intent by setting input
/// and output contexts, which are identified by string names. When an intent is
/// matched, any configured output contexts for that intent become active. While
/// any contexts are active, Dialogflow is more likely to match intents that are
/// configured with input contexts that correspond to the currently active
/// contexts. For more information about context, see the
/// [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
typedef GoogleCloudDialogflowV2Context = $GoogleCloudDialogflowV2Context;

/// Represents a conversation.
///
/// A conversation is an interaction between an agent, including live agents and
/// Dialogflow agents, and a support customer. Conversations can include phone
/// calls and text-based chat sessions.
class GoogleCloudDialogflowV2Conversation {
  /// The Conversation Profile to be used to configure this Conversation.
  ///
  /// This field cannot be updated. Format:
  /// `projects//locations//conversationProfiles/`.
  ///
  /// Required.
  core.String? conversationProfile;

  /// The stage of a conversation.
  ///
  /// It indicates whether the virtual agent or a human agent is handling the
  /// conversation. If the conversation is created with the conversation profile
  /// that has Dialogflow config set, defaults to
  /// ConversationStage.VIRTUAL_AGENT_STAGE; Otherwise, defaults to
  /// ConversationStage.HUMAN_ASSIST_STAGE. If the conversation is created with
  /// the conversation profile that has Dialogflow config set but explicitly
  /// sets conversation_stage to ConversationStage.HUMAN_ASSIST_STAGE, it skips
  /// ConversationStage.VIRTUAL_AGENT_STAGE stage and directly goes to
  /// ConversationStage.HUMAN_ASSIST_STAGE.
  /// Possible string values are:
  /// - "CONVERSATION_STAGE_UNSPECIFIED" : Unknown. Should never be used after a
  /// conversation is successfully created.
  /// - "VIRTUAL_AGENT_STAGE" : The conversation should return virtual agent
  /// responses into the conversation.
  /// - "HUMAN_ASSIST_STAGE" : The conversation should not provide responses,
  /// just listen and provide suggestions.
  core.String? conversationStage;

  /// The time the conversation was finished.
  ///
  /// Output only.
  core.String? endTime;

  /// The current state of the Conversation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Conversation is currently open for media analysis.
  /// - "COMPLETED" : Conversation has been completed.
  core.String? lifecycleState;

  /// The unique identifier of this conversation.
  ///
  /// Format: `projects//locations//conversations/`.
  ///
  /// Output only.
  core.String? name;

  /// It will not be empty if the conversation is to be connected over
  /// telephony.
  ///
  /// Output only.
  GoogleCloudDialogflowV2ConversationPhoneNumber? phoneNumber;

  /// The time the conversation was started.
  ///
  /// Output only.
  core.String? startTime;

  GoogleCloudDialogflowV2Conversation({
    this.conversationProfile,
    this.conversationStage,
    this.endTime,
    this.lifecycleState,
    this.name,
    this.phoneNumber,
    this.startTime,
  });

  GoogleCloudDialogflowV2Conversation.fromJson(core.Map _json)
      : this(
          conversationProfile: _json.containsKey('conversationProfile')
              ? _json['conversationProfile'] as core.String
              : null,
          conversationStage: _json.containsKey('conversationStage')
              ? _json['conversationStage'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          lifecycleState: _json.containsKey('lifecycleState')
              ? _json['lifecycleState'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? GoogleCloudDialogflowV2ConversationPhoneNumber.fromJson(
                  _json['phoneNumber'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationProfile != null)
          'conversationProfile': conversationProfile!,
        if (conversationStage != null) 'conversationStage': conversationStage!,
        if (endTime != null) 'endTime': endTime!,
        if (lifecycleState != null) 'lifecycleState': lifecycleState!,
        if (name != null) 'name': name!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents a phone number for telephony integration.
///
/// It allows for connecting a particular conversation over telephony.
class GoogleCloudDialogflowV2ConversationPhoneNumber {
  /// The phone number to connect to this conversation.
  ///
  /// Output only.
  core.String? phoneNumber;

  GoogleCloudDialogflowV2ConversationPhoneNumber({
    this.phoneNumber,
  });

  GoogleCloudDialogflowV2ConversationPhoneNumber.fromJson(core.Map _json)
      : this(
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Defines the services to connect to incoming Dialogflow conversations.
class GoogleCloudDialogflowV2ConversationProfile {
  /// Configuration for an automated agent to use with this profile.
  GoogleCloudDialogflowV2AutomatedAgentConfig? automatedAgentConfig;

  /// Create time of the conversation profile.
  ///
  /// Output only.
  core.String? createTime;

  /// Human readable name for this profile.
  ///
  /// Max length 1024 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Configuration for agent assistance to use with this profile.
  GoogleCloudDialogflowV2HumanAgentAssistantConfig? humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent.
  ///
  /// Currently, this feature is not general available, please contact Google to
  /// get access.
  GoogleCloudDialogflowV2HumanAgentHandoffConfig? humanAgentHandoffConfig;

  /// Language which represents the conversationProfile.
  ///
  /// If unspecified, the default language code en-us applies. Users need to
  /// create a ConversationProfile for each language they want to support.
  core.String? languageCode;

  /// Configuration for logging conversation lifecycle events.
  GoogleCloudDialogflowV2LoggingConfig? loggingConfig;

  /// The unique identifier of this conversation profile.
  ///
  /// Format: `projects//locations//conversationProfiles/`.
  core.String? name;

  /// Configuration for publishing new message events.
  ///
  /// Event will be sent in format of ConversationEvent
  GoogleCloudDialogflowV2NotificationConfig? newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  GoogleCloudDialogflowV2NotificationConfig? notificationConfig;

  /// Settings for speech transcription.
  GoogleCloudDialogflowV2SpeechToTextConfig? sttConfig;

  /// Update time of the conversation profile.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2ConversationProfile({
    this.automatedAgentConfig,
    this.createTime,
    this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
    this.notificationConfig,
    this.sttConfig,
    this.updateTime,
  });

  GoogleCloudDialogflowV2ConversationProfile.fromJson(core.Map _json)
      : this(
          automatedAgentConfig: _json.containsKey('automatedAgentConfig')
              ? GoogleCloudDialogflowV2AutomatedAgentConfig.fromJson(
                  _json['automatedAgentConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          humanAgentAssistantConfig:
              _json.containsKey('humanAgentAssistantConfig')
                  ? GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromJson(
                      _json['humanAgentAssistantConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          humanAgentHandoffConfig: _json.containsKey('humanAgentHandoffConfig')
              ? GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromJson(
                  _json['humanAgentHandoffConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? GoogleCloudDialogflowV2LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          newMessageEventNotificationConfig:
              _json.containsKey('newMessageEventNotificationConfig')
                  ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                      _json['newMessageEventNotificationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          notificationConfig: _json.containsKey('notificationConfig')
              ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                  _json['notificationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sttConfig: _json.containsKey('sttConfig')
              ? GoogleCloudDialogflowV2SpeechToTextConfig.fromJson(
                  _json['sttConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automatedAgentConfig != null)
          'automatedAgentConfig': automatedAgentConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (humanAgentAssistantConfig != null)
          'humanAgentAssistantConfig': humanAgentAssistantConfig!,
        if (humanAgentHandoffConfig != null)
          'humanAgentHandoffConfig': humanAgentHandoffConfig!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
        if (name != null) 'name': name!,
        if (newMessageEventNotificationConfig != null)
          'newMessageEventNotificationConfig':
              newMessageEventNotificationConfig!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
        if (sttConfig != null) 'sttConfig': sttConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The request to detect user's intent.
class GoogleCloudDialogflowV2DetectIntentRequest {
  /// The natural language speech audio to be processed.
  ///
  /// This field should be populated iff `query_input` is set to an input audio
  /// config. A single request can contain up to 1 minute of speech audio data.
  core.String? inputAudio;
  core.List<core.int> get inputAudioAsBytes =>
      convert.base64.decode(inputAudio!);

  set inputAudioAsBytes(core.List<core.int> _bytes) {
    inputAudio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Instructs the speech synthesizer how to generate the output audio.
  ///
  /// If this field is not set and agent-level speech synthesizer is not
  /// configured, no output audio is generated.
  GoogleCloudDialogflowV2OutputAudioConfig? outputAudioConfig;

  /// Mask for output_audio_config indicating which settings in this
  /// request-level config should override speech synthesizer settings defined
  /// at agent-level.
  ///
  /// If unspecified or empty, output_audio_config replaces the agent-level
  /// config in its entirety.
  core.String? outputAudioConfigMask;

  /// The input specification.
  ///
  /// It can be set to: 1. an audio config which instructs the speech recognizer
  /// how to process the speech audio, 2. a conversational query in the form of
  /// text, or 3. an event that specifies which intent to trigger.
  ///
  /// Required.
  GoogleCloudDialogflowV2QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowV2QueryParameters? queryParams;

  GoogleCloudDialogflowV2DetectIntentRequest({
    this.inputAudio,
    this.outputAudioConfig,
    this.outputAudioConfigMask,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowV2DetectIntentRequest.fromJson(core.Map _json)
      : this(
          inputAudio: _json.containsKey('inputAudio')
              ? _json['inputAudio'] as core.String
              : null,
          outputAudioConfig: _json.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                  _json['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outputAudioConfigMask: _json.containsKey('outputAudioConfigMask')
              ? _json['outputAudioConfigMask'] as core.String
              : null,
          queryInput: _json.containsKey('queryInput')
              ? GoogleCloudDialogflowV2QueryInput.fromJson(
                  _json['queryInput'] as core.Map<core.String, core.dynamic>)
              : null,
          queryParams: _json.containsKey('queryParams')
              ? GoogleCloudDialogflowV2QueryParameters.fromJson(
                  _json['queryParams'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputAudio != null) 'inputAudio': inputAudio!,
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
        if (outputAudioConfigMask != null)
          'outputAudioConfigMask': outputAudioConfigMask!,
        if (queryInput != null) 'queryInput': queryInput!,
        if (queryParams != null) 'queryParams': queryParams!,
      };
}

/// The message returned from the DetectIntent method.
class GoogleCloudDialogflowV2DetectIntentResponse {
  /// The audio data bytes encoded as specified in the request.
  ///
  /// Note: The output audio is generated based on the values of default
  /// platform text responses found in the `query_result.fulfillment_messages`
  /// field. If multiple default text responses exist, they will be concatenated
  /// when generating audio. If no default platform text responses exist, the
  /// generated audio content will be empty. In some scenarios, multiple output
  /// audio fields may be present in the response structure. In these cases,
  /// only the top-most-level audio output has content.
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> _bytes) {
    outputAudio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowV2OutputAudioConfig? outputAudioConfig;

  /// The selected results of the conversational query or event processing.
  ///
  /// See `alternative_query_results` for additional potential results.
  GoogleCloudDialogflowV2QueryResult? queryResult;

  /// The unique identifier of the response.
  ///
  /// It can be used to locate a response in the training example set or for
  /// reporting issues.
  core.String? responseId;

  /// Specifies the status of the webhook request.
  GoogleRpcStatus? webhookStatus;

  GoogleCloudDialogflowV2DetectIntentResponse({
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.webhookStatus,
  });

  GoogleCloudDialogflowV2DetectIntentResponse.fromJson(core.Map _json)
      : this(
          outputAudio: _json.containsKey('outputAudio')
              ? _json['outputAudio'] as core.String
              : null,
          outputAudioConfig: _json.containsKey('outputAudioConfig')
              ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                  _json['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          queryResult: _json.containsKey('queryResult')
              ? GoogleCloudDialogflowV2QueryResult.fromJson(
                  _json['queryResult'] as core.Map<core.String, core.dynamic>)
              : null,
          responseId: _json.containsKey('responseId')
              ? _json['responseId'] as core.String
              : null,
          webhookStatus: _json.containsKey('webhookStatus')
              ? GoogleRpcStatus.fromJson(
                  _json['webhookStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputAudio != null) 'outputAudio': outputAudio!,
        if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
        if (queryResult != null) 'queryResult': queryResult!,
        if (responseId != null) 'responseId': responseId!,
        if (webhookStatus != null) 'webhookStatus': webhookStatus!,
      };
}

/// A knowledge document to be used by a KnowledgeBase.
///
/// For more information, see the
/// [knowledge base guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases).
/// Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
/// only use `projects.knowledgeBases.documents`.
class GoogleCloudDialogflowV2Document {
  /// The URI where the file content is located.
  ///
  /// For documents stored in Google Cloud Storage, these URIs must have the
  /// form `gs:///`. NOTE: External URLs must correspond to public webpages,
  /// i.e., they must be indexed by Google Search. In particular, URLs for
  /// showing documents in Google Cloud Storage (i.e. the URL in your browser)
  /// are not supported. Instead use the `gs://` format URI described above.
  core.String? contentUri;

  /// The display name of the document.
  ///
  /// The name must be 1024 bytes or less; otherwise, the creation request
  /// fails.
  ///
  /// Required.
  core.String? displayName;

  /// If true, we try to automatically reload the document every day (at a time
  /// picked by the system).
  ///
  /// If false or unspecified, we don't try to automatically reload the
  /// document. Currently you can only enable automatic reload for documents
  /// sourced from a public url, see `source` field for the source types. Reload
  /// status can be tracked in `latest_reload_status`. If a reload fails, we
  /// will keep the document unchanged. If a reload fails with internal errors,
  /// the system will try to reload the document on the next day. If a reload
  /// fails with non-retriable errors (e.g. PERMISION_DENIED), the system will
  /// not try to reload the document anymore. You need to manually reload the
  /// document successfully by calling `ReloadDocument` and clear the errors.
  ///
  /// Optional.
  core.bool? enableAutoReload;

  /// The knowledge type of document content.
  ///
  /// Required.
  core.List<core.String>? knowledgeTypes;

  /// The time and status of the latest reload.
  ///
  /// This reload may have been triggered automatically or manually and may not
  /// have succeeded.
  ///
  /// Output only.
  GoogleCloudDialogflowV2DocumentReloadStatus? latestReloadStatus;

  /// Metadata for the document.
  ///
  /// The metadata supports arbitrary key-value pairs. Suggested use cases
  /// include storing a document's title, an external URL distinct from the
  /// document's content_uri, etc. The max size of a `key` or a `value` of the
  /// metadata is 1024 bytes.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The MIME type of this document.
  ///
  /// Required.
  core.String? mimeType;

  /// The document resource name.
  ///
  /// The name must be empty when creating a document. Format:
  /// `projects//locations//knowledgeBases//documents/`.
  ///
  /// Optional.
  core.String? name;

  /// The raw content of the document.
  ///
  /// This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  core.String? rawContent;
  core.List<core.int> get rawContentAsBytes =>
      convert.base64.decode(rawContent!);

  set rawContentAsBytes(core.List<core.int> _bytes) {
    rawContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2Document({
    this.contentUri,
    this.displayName,
    this.enableAutoReload,
    this.knowledgeTypes,
    this.latestReloadStatus,
    this.metadata,
    this.mimeType,
    this.name,
    this.rawContent,
  });

  GoogleCloudDialogflowV2Document.fromJson(core.Map _json)
      : this(
          contentUri: _json.containsKey('contentUri')
              ? _json['contentUri'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enableAutoReload: _json.containsKey('enableAutoReload')
              ? _json['enableAutoReload'] as core.bool
              : null,
          knowledgeTypes: _json.containsKey('knowledgeTypes')
              ? (_json['knowledgeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          latestReloadStatus: _json.containsKey('latestReloadStatus')
              ? GoogleCloudDialogflowV2DocumentReloadStatus.fromJson(
                  _json['latestReloadStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rawContent: _json.containsKey('rawContent')
              ? _json['rawContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUri != null) 'contentUri': contentUri!,
        if (displayName != null) 'displayName': displayName!,
        if (enableAutoReload != null) 'enableAutoReload': enableAutoReload!,
        if (knowledgeTypes != null) 'knowledgeTypes': knowledgeTypes!,
        if (latestReloadStatus != null)
          'latestReloadStatus': latestReloadStatus!,
        if (metadata != null) 'metadata': metadata!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (name != null) 'name': name!,
        if (rawContent != null) 'rawContent': rawContent!,
      };
}

/// The status of a reload attempt.
class GoogleCloudDialogflowV2DocumentReloadStatus {
  /// The status of a reload attempt or the initial load.
  GoogleRpcStatus? status;

  /// The time of a reload attempt.
  ///
  /// This reload may have been triggered automatically or manually and may not
  /// have succeeded.
  core.String? time;

  GoogleCloudDialogflowV2DocumentReloadStatus({
    this.status,
    this.time,
  });

  GoogleCloudDialogflowV2DocumentReloadStatus.fromJson(core.Map _json)
      : this(
          status: _json.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          time: _json.containsKey('time') ? _json['time'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (time != null) 'time': time!,
      };
}

/// The message in the response that indicates the parameters of DTMF.
class GoogleCloudDialogflowV2DtmfParameters {
  /// Indicates whether DTMF input can be handled in the next request.
  core.bool? acceptsDtmfInput;

  GoogleCloudDialogflowV2DtmfParameters({
    this.acceptsDtmfInput,
  });

  GoogleCloudDialogflowV2DtmfParameters.fromJson(core.Map _json)
      : this(
          acceptsDtmfInput: _json.containsKey('acceptsDtmfInput')
              ? _json['acceptsDtmfInput'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceptsDtmfInput != null) 'acceptsDtmfInput': acceptsDtmfInput!,
      };
}

/// Each intent parameter has a type, called the entity type, which dictates
/// exactly how data from an end-user expression is extracted.
///
/// Dialogflow provides predefined system entities that can match many common
/// types of data. For example, there are system entities for matching dates,
/// times, colors, email addresses, and so on. You can also create your own
/// custom entities for matching custom data. For example, you could define a
/// vegetable entity that can match the types of vegetables available for
/// purchase with a grocery store agent. For more information, see the
/// [Entity guide](https://cloud.google.com/dialogflow/docs/entities-overview).
class GoogleCloudDialogflowV2EntityType {
  /// Indicates whether the entity type can be automatically expanded.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly listed in the entity.
  core.String? autoExpansionMode;

  /// The name of the entity type.
  ///
  /// Required.
  core.String? displayName;

  /// Enables fuzzy entity extraction during classification.
  ///
  /// Optional.
  core.bool? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

  /// Indicates the kind of entity type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// reference value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to reference values. However, list entity types can contain references to
  /// other entity types (with or without aliases).
  /// - "KIND_REGEXP" : Regexp entity types allow to specify regular expressions
  /// in entries values.
  core.String? kind;

  /// The unique identifier of the entity type.
  ///
  /// Required for EntityTypes.UpdateEntityType and
  /// EntityTypes.BatchUpdateEntityTypes methods. Format:
  /// `projects//agent/entityTypes/`.
  core.String? name;

  GoogleCloudDialogflowV2EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.kind,
    this.name,
  });

  GoogleCloudDialogflowV2EntityType.fromJson(core.Map _json)
      : this(
          autoExpansionMode: _json.containsKey('autoExpansionMode')
              ? _json['autoExpansionMode'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enableFuzzyExtraction: _json.containsKey('enableFuzzyExtraction')
              ? _json['enableFuzzyExtraction'] as core.bool
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoExpansionMode != null) 'autoExpansionMode': autoExpansionMode!,
        if (displayName != null) 'displayName': displayName!,
        if (enableFuzzyExtraction != null)
          'enableFuzzyExtraction': enableFuzzyExtraction!,
        if (entities != null) 'entities': entities!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// This message is a wrapper around a collection of entity types.
class GoogleCloudDialogflowV2EntityTypeBatch {
  /// A collection of entity types.
  core.List<GoogleCloudDialogflowV2EntityType>? entityTypes;

  GoogleCloudDialogflowV2EntityTypeBatch({
    this.entityTypes,
  });

  GoogleCloudDialogflowV2EntityTypeBatch.fromJson(core.Map _json)
      : this(
          entityTypes: _json.containsKey('entityTypes')
              ? (_json['entityTypes'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2EntityType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypes != null) 'entityTypes': entityTypes!,
      };
}

/// An **entity entry** for an associated entity type.
typedef GoogleCloudDialogflowV2EntityTypeEntity = $EntityTypeEntity;

/// You can create multiple versions of your agent and publish them to separate
/// environments.
///
/// When you edit an agent, you are editing the draft agent. At any point, you
/// can save the draft agent as an agent version, which is an immutable snapshot
/// of your agent. When you save the draft agent, it is published to the default
/// environment. When you create agent versions, you can publish them to custom
/// environments. You can create a variety of custom environments for: - testing
/// - development - production - etc. For more information, see the
/// [versions and environments guide](https://cloud.google.com/dialogflow/docs/agents-versions).
class GoogleCloudDialogflowV2Environment {
  /// The agent version loaded into this environment.
  ///
  /// Supported formats: - `projects//agent/versions/` -
  /// `projects//locations//agent/versions/`
  ///
  /// Optional.
  core.String? agentVersion;

  /// The developer-provided description for this environment.
  ///
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  ///
  /// Optional.
  core.String? description;

  /// The fulfillment settings to use for this environment.
  ///
  /// Optional.
  GoogleCloudDialogflowV2Fulfillment? fulfillment;

  /// The unique identifier of this agent environment.
  ///
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  ///
  /// Output only.
  core.String? name;

  /// The state of this environment.
  ///
  /// This field is read-only, i.e., it cannot be set by create and update
  /// methods.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified. This value is not used.
  /// - "STOPPED" : Stopped.
  /// - "LOADING" : Loading.
  /// - "RUNNING" : Running.
  core.String? state;

  /// Text to speech settings for this environment.
  ///
  /// Optional.
  GoogleCloudDialogflowV2TextToSpeechSettings? textToSpeechSettings;

  /// The last update time of this environment.
  ///
  /// This field is read-only, i.e., it cannot be set by create and update
  /// methods.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2Environment({
    this.agentVersion,
    this.description,
    this.fulfillment,
    this.name,
    this.state,
    this.textToSpeechSettings,
    this.updateTime,
  });

  GoogleCloudDialogflowV2Environment.fromJson(core.Map _json)
      : this(
          agentVersion: _json.containsKey('agentVersion')
              ? _json['agentVersion'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fulfillment: _json.containsKey('fulfillment')
              ? GoogleCloudDialogflowV2Fulfillment.fromJson(
                  _json['fulfillment'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          textToSpeechSettings: _json.containsKey('textToSpeechSettings')
              ? GoogleCloudDialogflowV2TextToSpeechSettings.fromJson(
                  _json['textToSpeechSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (description != null) 'description': description!,
        if (fulfillment != null) 'fulfillment': fulfillment!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (textToSpeechSettings != null)
          'textToSpeechSettings': textToSpeechSettings!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The response message for Environments.GetEnvironmentHistory.
class GoogleCloudDialogflowV2EnvironmentHistory {
  /// The list of agent environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2EnvironmentHistoryEntry>? entries;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The name of the environment this history is for.
  ///
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/` The environment ID for the
  /// default environment is `-`.
  ///
  /// Output only.
  core.String? parent;

  GoogleCloudDialogflowV2EnvironmentHistory({
    this.entries,
    this.nextPageToken,
    this.parent,
  });

  GoogleCloudDialogflowV2EnvironmentHistory.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2EnvironmentHistoryEntry.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (parent != null) 'parent': parent!,
      };
}

/// Represents an environment history entry.
class GoogleCloudDialogflowV2EnvironmentHistoryEntry {
  /// The agent version loaded into this environment history entry.
  core.String? agentVersion;

  /// The creation time of this environment history entry.
  core.String? createTime;

  /// The developer-provided description for this environment history entry.
  core.String? description;

  GoogleCloudDialogflowV2EnvironmentHistoryEntry({
    this.agentVersion,
    this.createTime,
    this.description,
  });

  GoogleCloudDialogflowV2EnvironmentHistoryEntry.fromJson(core.Map _json)
      : this(
          agentVersion: _json.containsKey('agentVersion')
              ? _json['agentVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
      };
}

/// Events allow for matching intents by event name instead of the natural
/// language input.
///
/// For instance, input `` can trigger a personalized welcome response. The
/// parameter `name` may be used by the agent in the response: `"Hello
/// #welcome_event.name! What can I do for you today?"`.
typedef GoogleCloudDialogflowV2EventInput = $EventInput01;

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowV2ExportAgentRequest {
  /// The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
  /// export the agent to.
  ///
  /// The format of this URI must be `gs:///`. If left unspecified, the
  /// serialized agent is returned inline.
  ///
  /// Required.
  core.String? agentUri;

  GoogleCloudDialogflowV2ExportAgentRequest({
    this.agentUri,
  });

  GoogleCloudDialogflowV2ExportAgentRequest.fromJson(core.Map _json)
      : this(
          agentUri: _json.containsKey('agentUri')
              ? _json['agentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentUri != null) 'agentUri': agentUri!,
      };
}

/// Represents answer from "frequently asked questions".
typedef GoogleCloudDialogflowV2FaqAnswer = $FaqAnswer;

/// By default, your agent responds to a matched intent with a static response.
///
/// As an alternative, you can provide a more dynamic response by using
/// fulfillment. When you enable fulfillment for an intent, Dialogflow responds
/// to that intent by calling a service that you define. For example, if an
/// end-user wants to schedule a haircut on Friday, your service can check your
/// database and respond to the end-user with availability information for
/// Friday. For more information, see the
/// [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2Fulfillment {
  /// The human-readable name of the fulfillment, unique within the agent.
  ///
  /// This field is not used for Fulfillment in an Environment.
  ///
  /// Optional.
  core.String? displayName;

  /// Whether fulfillment is enabled.
  ///
  /// Optional.
  core.bool? enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2FulfillmentFeature>? features;

  /// Configuration for a generic web service.
  GoogleCloudDialogflowV2FulfillmentGenericWebService? genericWebService;

  /// The unique identifier of the fulfillment.
  ///
  /// Supported formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment` This field is not used for
  /// Fulfillment in an Environment.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2Fulfillment({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.name,
  });

  GoogleCloudDialogflowV2Fulfillment.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          features: _json.containsKey('features')
              ? (_json['features'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2FulfillmentFeature.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          genericWebService: _json.containsKey('genericWebService')
              ? GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(
                  _json['genericWebService']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enabled != null) 'enabled': enabled!,
        if (features != null) 'features': features!,
        if (genericWebService != null) 'genericWebService': genericWebService!,
        if (name != null) 'name': name!,
      };
}

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Feature type not specified.
  /// - "SMALLTALK" : Fulfillment is enabled for SmallTalk.
  core.String? type;

  GoogleCloudDialogflowV2FulfillmentFeature({
    this.type,
  });

  GoogleCloudDialogflowV2FulfillmentFeature.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Represents configuration for a generic web service.
///
/// Dialogflow supports two mechanisms for authentications: - Basic
/// authentication with username and password. - Authentication with additional
/// authentication headers. More information could be found at:
/// https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2FulfillmentGenericWebService {
  /// Indicates if generic web service is created through Cloud Functions
  /// integration.
  ///
  /// Defaults to false. is_cloud_function is deprecated. Cloud functions can be
  /// configured by its uri as a regular web service now.
  ///
  /// Optional.
  core.bool? isCloudFunction;

  /// The password for HTTP Basic authentication.
  ///
  /// Optional.
  core.String? password;

  /// The HTTP request headers to send together with fulfillment requests.
  ///
  /// Optional.
  core.Map<core.String, core.String>? requestHeaders;

  /// The fulfillment URI for receiving POST requests.
  ///
  /// It must use https protocol.
  ///
  /// Required.
  core.String? uri;

  /// The user name for HTTP Basic authentication.
  ///
  /// Optional.
  core.String? username;

  GoogleCloudDialogflowV2FulfillmentGenericWebService({
    this.isCloudFunction,
    this.password,
    this.requestHeaders,
    this.uri,
    this.username,
  });

  GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(core.Map _json)
      : this(
          isCloudFunction: _json.containsKey('isCloudFunction')
              ? _json['isCloudFunction'] as core.bool
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          requestHeaders: _json.containsKey('requestHeaders')
              ? (_json['requestHeaders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCloudFunction != null) 'isCloudFunction': isCloudFunction!,
        if (password != null) 'password': password!,
        if (requestHeaders != null) 'requestHeaders': requestHeaders!,
        if (uri != null) 'uri': uri!,
        if (username != null) 'username': username!,
      };
}

/// Defines the Human Agent Assist to connect to a conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant.
  ///
  /// Currently, this feature is not general available, please contact Google to
  /// get access.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig?
      endUserSuggestionConfig;

  /// Configuration for agent assistance of human agent participant.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig?
      humanAgentSuggestionConfig;

  /// Configuration for message analysis.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig?
      messageAnalysisConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  GoogleCloudDialogflowV2NotificationConfig? notificationConfig;

  GoogleCloudDialogflowV2HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromJson(core.Map _json)
      : this(
          endUserSuggestionConfig: _json.containsKey('endUserSuggestionConfig')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
                  .fromJson(_json['endUserSuggestionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          humanAgentSuggestionConfig: _json
                  .containsKey('humanAgentSuggestionConfig')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
                  .fromJson(_json['humanAgentSuggestionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          messageAnalysisConfig: _json.containsKey('messageAnalysisConfig')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
                  .fromJson(_json['messageAnalysisConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          notificationConfig: _json.containsKey('notificationConfig')
              ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                  _json['notificationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endUserSuggestionConfig != null)
          'endUserSuggestionConfig': endUserSuggestionConfig!,
        if (humanAgentSuggestionConfig != null)
          'humanAgentSuggestionConfig': humanAgentSuggestionConfig!,
        if (messageAnalysisConfig != null)
          'messageAnalysisConfig': messageAnalysisConfig!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
      };
}

/// Custom conversation models used in agent assist feature.
///
/// Supported feature: ARTICLE_SUGGESTION, SMART_COMPOSE, SMART_REPLY.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig {
  /// Conversation model resource name.
  ///
  /// Format: `projects//conversationModels/`.
  core.String? model;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig({
    this.model,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig.fromJson(
      core.Map _json)
      : this(
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (model != null) 'model': model!,
      };
}

/// Configuration for analyses to run on each conversation message.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig {
  /// Enable entity extraction in conversation messages on
  /// [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages).
  ///
  /// If unspecified, defaults to false. Currently, this feature is not general
  /// available, please contact Google to get access.
  core.bool? enableEntityExtraction;

  /// Enable sentiment analysis in conversation messages on
  /// [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages).
  ///
  /// If unspecified, defaults to false. Sentiment analysis inspects user input
  /// and identifies the prevailing subjective opinion, especially to determine
  /// a user's attitude as positive, negative, or neutral:
  /// https://cloud.google.com/natural-language/docs/basics#sentiment_analysis
  /// For Participants.StreamingAnalyzeContent method, result will be in
  /// StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For
  /// Participants.AnalyzeContent method, result will be in
  /// AnalyzeContentResponse.message.SentimentAnalysisResult For
  /// Conversations.ListMessages method, result will be in
  /// ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub
  /// notification is configured, result will be in
  /// ConversationEvent.new_message_payload.SentimentAnalysisResult.
  core.bool? enableSentimentAnalysis;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig({
    this.enableEntityExtraction,
    this.enableSentimentAnalysis,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig.fromJson(
      core.Map _json)
      : this(
          enableEntityExtraction: _json.containsKey('enableEntityExtraction')
              ? _json['enableEntityExtraction'] as core.bool
              : null,
          enableSentimentAnalysis: _json.containsKey('enableSentimentAnalysis')
              ? _json['enableSentimentAnalysis'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableEntityExtraction != null)
          'enableEntityExtraction': enableEntityExtraction!,
        if (enableSentimentAnalysis != null)
          'enableSentimentAnalysis': enableSentimentAnalysis!,
      };
}

/// Detail human agent assistant config.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig {
  /// Configuration of different suggestion features.
  ///
  /// One feature can have only one config.
  core.List<
          GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>?
      featureConfigs;

  /// If `group_suggestion_responses` is false, and there are multiple
  /// `feature_configs` in `event based suggestion` or StreamingAnalyzeContent,
  /// we will try to deliver suggestions to customers as soon as we get new
  /// suggestion.
  ///
  /// Different type of suggestions based on the same context will be in
  /// separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If
  /// `group_suggestion_responses` set to true. All the suggestions to the same
  /// participant based on the same context will be grouped into a single
  /// Pub/Sub event or StreamingAnalyzeContentResponse.
  core.bool? groupSuggestionResponses;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig({
    this.featureConfigs,
    this.groupSuggestionResponses,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromJson(
      core.Map _json)
      : this(
          featureConfigs: _json.containsKey('featureConfigs')
              ? (_json['featureConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          groupSuggestionResponses:
              _json.containsKey('groupSuggestionResponses')
                  ? _json['groupSuggestionResponses'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (featureConfigs != null) 'featureConfigs': featureConfigs!,
        if (groupSuggestionResponses != null)
          'groupSuggestionResponses': groupSuggestionResponses!,
      };
}

/// Config for suggestion features.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig {
  /// Configs of custom conversation model.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig?
      conversationModelConfig;

  /// Automatically iterates all participants and tries to compile suggestions.
  ///
  /// Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST.
  core.bool? enableEventBasedSuggestion;

  /// Configs of query.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig?
      queryConfig;

  /// The suggestion feature.
  GoogleCloudDialogflowV2SuggestionFeature? suggestionFeature;

  /// Settings of suggestion trigger.
  ///
  /// Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings?
      suggestionTriggerSettings;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig({
    this.conversationModelConfig,
    this.enableEventBasedSuggestion,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
      core.Map _json)
      : this(
          conversationModelConfig: _json.containsKey('conversationModelConfig')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
                  .fromJson(_json['conversationModelConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableEventBasedSuggestion:
              _json.containsKey('enableEventBasedSuggestion')
                  ? _json['enableEventBasedSuggestion'] as core.bool
                  : null,
          queryConfig: _json.containsKey('queryConfig')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
                  .fromJson(_json['queryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          suggestionFeature: _json.containsKey('suggestionFeature')
              ? GoogleCloudDialogflowV2SuggestionFeature.fromJson(
                  _json['suggestionFeature']
                      as core.Map<core.String, core.dynamic>)
              : null,
          suggestionTriggerSettings: _json
                  .containsKey('suggestionTriggerSettings')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
                  .fromJson(_json['suggestionTriggerSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationModelConfig != null)
          'conversationModelConfig': conversationModelConfig!,
        if (enableEventBasedSuggestion != null)
          'enableEventBasedSuggestion': enableEventBasedSuggestion!,
        if (queryConfig != null) 'queryConfig': queryConfig!,
        if (suggestionFeature != null) 'suggestionFeature': suggestionFeature!,
        if (suggestionTriggerSettings != null)
          'suggestionTriggerSettings': suggestionTriggerSettings!,
      };
}

/// Config for suggestion query.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig {
  /// Confidence threshold of query result.
  ///
  /// Agent Assist gives each suggestion a score in the range \[0.0, 1.0\],
  /// based on the relevance between the suggestion and the current conversation
  /// context. A score of 0.0 has no relevance, while a score of 1.0 has high
  /// relevance. Only suggestions with a score greater than or equal to the
  /// value of this field are included in the results. For a baseline model (the
  /// default), the recommended value is in the range \[0.05, 0.1\]. For a
  /// custom model, there is no recommended value. Tune this value by starting
  /// from a very low value and slowly increasing until you have desired
  /// results. If this field is not set, it defaults to 0.0, which means that
  /// all suggestions are returned. Supported features: ARTICLE_SUGGESTION.
  core.double? confidenceThreshold;

  /// Determines how recent conversation context is filtered when generating
  /// suggestions.
  ///
  /// If unspecified, no messages will be dropped.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings?
      contextFilterSettings;

  /// Query from Dialogflow agent.
  ///
  /// It is used by DIALOGFLOW_ASSIST.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource?
      dialogflowQuerySource;

  /// Query from knowledge base document.
  ///
  /// It is used by: SMART_REPLY, SMART_COMPOSE.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource?
      documentQuerySource;

  /// Query from knowledgebase.
  ///
  /// It is used by: ARTICLE_SUGGESTION, FAQ.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource?
      knowledgeBaseQuerySource;

  /// Maximum number of results to return.
  ///
  /// Currently, if unset, defaults to 10. And the max number is 20.
  core.int? maxResults;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.fromJson(
      core.Map _json)
      : this(
          confidenceThreshold: _json.containsKey('confidenceThreshold')
              ? (_json['confidenceThreshold'] as core.num).toDouble()
              : null,
          contextFilterSettings: _json.containsKey('contextFilterSettings')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
                  .fromJson(_json['contextFilterSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dialogflowQuerySource: _json.containsKey('dialogflowQuerySource')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
                  .fromJson(_json['dialogflowQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          documentQuerySource: _json.containsKey('documentQuerySource')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
                  .fromJson(_json['documentQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          knowledgeBaseQuerySource: _json
                  .containsKey('knowledgeBaseQuerySource')
              ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
                  .fromJson(_json['knowledgeBaseQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxResults: _json.containsKey('maxResults')
              ? _json['maxResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceThreshold != null)
          'confidenceThreshold': confidenceThreshold!,
        if (contextFilterSettings != null)
          'contextFilterSettings': contextFilterSettings!,
        if (dialogflowQuerySource != null)
          'dialogflowQuerySource': dialogflowQuerySource!,
        if (documentQuerySource != null)
          'documentQuerySource': documentQuerySource!,
        if (knowledgeBaseQuerySource != null)
          'knowledgeBaseQuerySource': knowledgeBaseQuerySource!,
        if (maxResults != null) 'maxResults': maxResults!,
      };
}

/// Settings that determine how to filter recent conversation context when
/// generating suggestions.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings {
  /// If set to true, the last message from virtual agent (hand off message) and
  /// the message before it (trigger message of hand off) are dropped.
  core.bool? dropHandoffMessages;

  /// If set to true, all messages from ivr stage are dropped.
  core.bool? dropIvrMessages;

  /// If set to true, all messages from virtual agent are dropped.
  core.bool? dropVirtualAgentMessages;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings({
    this.dropHandoffMessages,
    this.dropIvrMessages,
    this.dropVirtualAgentMessages,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.fromJson(
      core.Map _json)
      : this(
          dropHandoffMessages: _json.containsKey('dropHandoffMessages')
              ? _json['dropHandoffMessages'] as core.bool
              : null,
          dropIvrMessages: _json.containsKey('dropIvrMessages')
              ? _json['dropIvrMessages'] as core.bool
              : null,
          dropVirtualAgentMessages:
              _json.containsKey('dropVirtualAgentMessages')
                  ? _json['dropVirtualAgentMessages'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dropHandoffMessages != null)
          'dropHandoffMessages': dropHandoffMessages!,
        if (dropIvrMessages != null) 'dropIvrMessages': dropIvrMessages!,
        if (dropVirtualAgentMessages != null)
          'dropVirtualAgentMessages': dropVirtualAgentMessages!,
      };
}

/// Dialogflow source setting.
///
/// Supported feature: DIALOGFLOW_ASSIST.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  /// The name of a Dialogflow virtual agent used for end user side intent
  /// detection and suggestion.
  ///
  /// Format: `projects//locations//agent`. When multiple agents are allowed in
  /// the same Dialogflow project.
  ///
  /// Required.
  core.String? agent;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
    this.agent,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromJson(
      core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
      };
}

/// Document source settings.
///
/// Supported features: SMART_REPLY, SMART_COMPOSE.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource {
  /// Knowledge documents to query from.
  ///
  /// Format: `projects//locations//knowledgeBases//documents/`. Currently, at
  /// most 5 documents are supported.
  ///
  /// Required.
  core.List<core.String>? documents;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource({
    this.documents,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromJson(
      core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
      };
}

/// Knowledge base source settings.
///
/// Supported features: ARTICLE_SUGGESTION, FAQ.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource {
  /// Knowledge bases to query.
  ///
  /// Format: `projects//locations//knowledgeBases/`. Currently, at most 5
  /// knowledge bases are supported.
  ///
  /// Required.
  core.List<core.String>? knowledgeBases;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource({
    this.knowledgeBases,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromJson(
      core.Map _json)
      : this(
          knowledgeBases: _json.containsKey('knowledgeBases')
              ? (_json['knowledgeBases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (knowledgeBases != null) 'knowledgeBases': knowledgeBases!,
      };
}

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  core.bool? noSmalltalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  core.bool? onlyEndUser;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmalltalk,
    this.onlyEndUser,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromJson(
      core.Map _json)
      : this(
          noSmalltalk: _json.containsKey('noSmalltalk')
              ? _json['noSmalltalk'] as core.bool
              : null,
          onlyEndUser: _json.containsKey('onlyEndUser')
              ? _json['onlyEndUser'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (noSmalltalk != null) 'noSmalltalk': noSmalltalk!,
        if (onlyEndUser != null) 'onlyEndUser': onlyEndUser!,
      };
}

/// Defines the hand off to a live agent, typically on which external agent
/// service provider to connect to a conversation.
///
/// Currently, this feature is not general available, please contact Google to
/// get access.
class GoogleCloudDialogflowV2HumanAgentHandoffConfig {
  /// Uses LivePerson (https://www.liveperson.com).
  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig?
      livePersonConfig;

  /// Uses Salesforce Live Agent.
  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig?
      salesforceLiveAgentConfig;

  GoogleCloudDialogflowV2HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromJson(core.Map _json)
      : this(
          livePersonConfig: _json.containsKey('livePersonConfig')
              ? GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig
                  .fromJson(_json['livePersonConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          salesforceLiveAgentConfig: _json
                  .containsKey('salesforceLiveAgentConfig')
              ? GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
                  .fromJson(_json['salesforceLiveAgentConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (livePersonConfig != null) 'livePersonConfig': livePersonConfig!,
        if (salesforceLiveAgentConfig != null)
          'salesforceLiveAgentConfig': salesforceLiveAgentConfig!,
      };
}

/// Configuration specific to LivePerson (https://www.liveperson.com).
class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig {
  /// Account number of the LivePerson account to connect.
  ///
  /// This is the account number you input at the login page.
  ///
  /// Required.
  core.String? accountNumber;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig({
    this.accountNumber,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig.fromJson(
      core.Map _json)
      : this(
          accountNumber: _json.containsKey('accountNumber')
              ? _json['accountNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountNumber != null) 'accountNumber': accountNumber!,
      };
}

/// Configuration specific to Salesforce Live Agent.
class GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig {
  /// Live Agent chat button ID.
  ///
  /// Required.
  core.String? buttonId;

  /// Live Agent deployment ID.
  ///
  /// Required.
  core.String? deploymentId;

  /// Domain of the Live Agent endpoint for this agent.
  ///
  /// You can find the endpoint URL in the `Live Agent settings` page. For
  /// example if URL has the form
  /// https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in
  /// d.la4-c2-phx.salesforceliveagent.com.
  ///
  /// Required.
  core.String? endpointDomain;

  /// The organization ID of the Salesforce account.
  ///
  /// Required.
  core.String? organizationId;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig({
    this.buttonId,
    this.deploymentId,
    this.endpointDomain,
    this.organizationId,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromJson(
      core.Map _json)
      : this(
          buttonId: _json.containsKey('buttonId')
              ? _json['buttonId'] as core.String
              : null,
          deploymentId: _json.containsKey('deploymentId')
              ? _json['deploymentId'] as core.String
              : null,
          endpointDomain: _json.containsKey('endpointDomain')
              ? _json['endpointDomain'] as core.String
              : null,
          organizationId: _json.containsKey('organizationId')
              ? _json['organizationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttonId != null) 'buttonId': buttonId!,
        if (deploymentId != null) 'deploymentId': deploymentId!,
        if (endpointDomain != null) 'endpointDomain': endpointDomain!,
        if (organizationId != null) 'organizationId': organizationId!,
      };
}

/// The request message for Agents.ImportAgent.
class GoogleCloudDialogflowV2ImportAgentRequest {
  /// Zip compressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a Google Cloud Storage file containing the agent to import.
  ///
  /// Note: The URI must start with "gs://".
  core.String? agentUri;

  GoogleCloudDialogflowV2ImportAgentRequest({
    this.agentContent,
    this.agentUri,
  });

  GoogleCloudDialogflowV2ImportAgentRequest.fromJson(core.Map _json)
      : this(
          agentContent: _json.containsKey('agentContent')
              ? _json['agentContent'] as core.String
              : null,
          agentUri: _json.containsKey('agentUri')
              ? _json['agentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentContent != null) 'agentContent': agentContent!,
        if (agentUri != null) 'agentUri': agentUri!,
      };
}

/// Instructs the speech recognizer how to process the audio content.
class GoogleCloudDialogflowV2InputAudioConfig {
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

  /// Only used in Participants.AnalyzeContent and
  /// Participants.StreamingAnalyzeContent.
  ///
  /// If `false` and recognition doesn't return any result, trigger
  /// `NO_SPEECH_RECOGNIZED` event to Dialogflow agent.
  core.bool? disableNoSpeechRecognizedEvent;

  /// If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult
  /// with information about the recognized speech words, e.g. start and end
  /// time offsets.
  ///
  /// If false or unspecified, Speech doesn't return any word-level information.
  core.bool? enableWordInfo;

  /// The language of the supplied audio.
  ///
  /// Dialogflow does not do translations. See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  ///
  /// Required.
  core.String? languageCode;

  /// Which Speech model to select for the given request.
  ///
  /// Select the model best suited to your domain to get best results. If a
  /// model is not explicitly specified, then we auto-select a model based on
  /// the parameters in the InputAudioConfig. If enhanced speech model is
  /// enabled for the agent and an enhanced version of the specified model for
  /// the language does not exist, then the speech is recognized using the
  /// standard version of the specified model. Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model)
  /// for more details.
  core.String? model;

  /// Which variant of the Speech model to use.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible for enhanced models.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available. See the
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant: * If an enhanced variant
  /// does not exist for the given model and request language, Dialogflow falls
  /// back to the standard variant. The
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// describes which models have enhanced variants. * If the API caller isn't
  /// eligible for enhanced models, Dialogflow returns an error. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible.
  core.String? modelVariant;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood.
  ///
  /// See
  /// [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details. This field is deprecated. Please use
  /// \[speech_contexts\]() instead. If you specify both \[phrase_hints\]() and
  /// \[speech_contexts\](), Dialogflow will treat the \[phrase_hints\]() as a
  /// single additional \[SpeechContext\]().
  core.List<core.String>? phraseHints;

  /// Sample rate (in Hertz) of the audio content sent in the query.
  ///
  /// Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
  /// for more details.
  ///
  /// Required.
  core.int? sampleRateHertz;

  /// If `false` (default), recognition does not cease until the client closes
  /// the stream.
  ///
  /// If `true`, the recognizer will detect a single spoken utterance in input
  /// audio. Recognition ceases when it detects the audio's voice has stopped or
  /// paused. In this case, once a detected intent is received, the client
  /// should close the stream and start a new request with a new stream as
  /// needed. Note: This setting is relevant only for streaming methods. Note:
  /// When specified, InputAudioConfig.single_utterance takes precedence over
  /// StreamingDetectIntentRequest.single_utterance.
  core.bool? singleUtterance;

  /// Context information to assist speech recognition.
  ///
  /// See
  /// [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details.
  core.List<GoogleCloudDialogflowV2SpeechContext>? speechContexts;

  GoogleCloudDialogflowV2InputAudioConfig({
    this.audioEncoding,
    this.disableNoSpeechRecognizedEvent,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.modelVariant,
    this.phraseHints,
    this.sampleRateHertz,
    this.singleUtterance,
    this.speechContexts,
  });

  GoogleCloudDialogflowV2InputAudioConfig.fromJson(core.Map _json)
      : this(
          audioEncoding: _json.containsKey('audioEncoding')
              ? _json['audioEncoding'] as core.String
              : null,
          disableNoSpeechRecognizedEvent:
              _json.containsKey('disableNoSpeechRecognizedEvent')
                  ? _json['disableNoSpeechRecognizedEvent'] as core.bool
                  : null,
          enableWordInfo: _json.containsKey('enableWordInfo')
              ? _json['enableWordInfo'] as core.bool
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          modelVariant: _json.containsKey('modelVariant')
              ? _json['modelVariant'] as core.String
              : null,
          phraseHints: _json.containsKey('phraseHints')
              ? (_json['phraseHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
          singleUtterance: _json.containsKey('singleUtterance')
              ? _json['singleUtterance'] as core.bool
              : null,
          speechContexts: _json.containsKey('speechContexts')
              ? (_json['speechContexts'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2SpeechContext.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioEncoding != null) 'audioEncoding': audioEncoding!,
        if (disableNoSpeechRecognizedEvent != null)
          'disableNoSpeechRecognizedEvent': disableNoSpeechRecognizedEvent!,
        if (enableWordInfo != null) 'enableWordInfo': enableWordInfo!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (model != null) 'model': model!,
        if (modelVariant != null) 'modelVariant': modelVariant!,
        if (phraseHints != null) 'phraseHints': phraseHints!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
        if (singleUtterance != null) 'singleUtterance': singleUtterance!,
        if (speechContexts != null) 'speechContexts': speechContexts!,
      };
}

/// An intent categorizes an end-user's intention for one conversation turn.
///
/// For each agent, you define many intents, where your combined intents can
/// handle a complete conversation. When an end-user writes or says something,
/// referred to as an end-user expression or end-user input, Dialogflow matches
/// the end-user input to the best intent in your agent. Matching an intent is
/// also known as intent classification. For more information, see the
/// [intent guide](https://cloud.google.com/dialogflow/docs/intents-overview).
class GoogleCloudDialogflowV2Intent {
  /// The name of the action associated with the intent.
  ///
  /// Note: The action name must not contain whitespaces.
  ///
  /// Optional.
  core.String? action;

  /// The list of platforms for which the first responses will be copied from
  /// the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  ///
  /// Optional.
  core.List<core.String>? defaultResponsePlatforms;

  /// The name of this intent.
  ///
  /// Required.
  core.String? displayName;

  /// Indicates that this intent ends an interaction.
  ///
  /// Some integrations (e.g., Actions on Google or Dialogflow phone gateway)
  /// use this information to close interaction with an end user. Default is
  /// false.
  ///
  /// Optional.
  core.bool? endInteraction;

  /// The collection of event names that trigger the intent.
  ///
  /// If the collection of input contexts is not empty, all of the contexts must
  /// be present in the active user session for an event to trigger this intent.
  /// Event names are limited to 150 characters.
  ///
  /// Optional.
  core.List<core.String>? events;

  /// Read-only.
  ///
  /// Information about all followup intents that have this intent as a direct
  /// or indirect parent. We populate this field only in the output.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2IntentFollowupIntentInfo>?
      followupIntentInfo;

  /// The list of context names required for this intent to be triggered.
  ///
  /// Format: `projects//agent/sessions/-/contexts/`.
  ///
  /// Optional.
  core.List<core.String>? inputContextNames;

  /// Indicates whether this is a fallback intent.
  ///
  /// Optional.
  core.bool? isFallback;

  /// Indicates that a live agent should be brought in to handle the interaction
  /// with the user.
  ///
  /// In most cases, when you set this flag to true, you would also want to set
  /// end_interaction to true as well. Default is false.
  ///
  /// Optional.
  core.bool? liveAgentHandoff;

  /// The collection of rich messages corresponding to the `Response` field in
  /// the Dialogflow console.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessage>? messages;

  /// Indicates whether Machine Learning is disabled for the intent.
  ///
  /// Note: If `ml_disabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  ///
  /// Optional.
  core.bool? mlDisabled;

  /// The unique identifier of this intent.
  ///
  /// Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods.
  /// Format: `projects//agent/intents/`.
  ///
  /// Optional.
  core.String? name;

  /// The collection of contexts that are activated when the intent is matched.
  ///
  /// Context messages in this collection should not set the parameters field.
  /// Setting the `lifespan_count` to 0 will reset the context when the intent
  /// is matched. Format: `projects//agent/sessions/-/contexts/`.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2Context>? outputContexts;

  /// The collection of parameters associated with the intent.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentParameter>? parameters;

  /// Read-only after creation.
  ///
  /// The unique identifier of the parent intent in the chain of followup
  /// intents. You can set this field when creating an intent, for example with
  /// CreateIntent or BatchUpdateIntents, in order to make this intent a
  /// followup intent. It identifies the parent followup intent. Format:
  /// `projects//agent/intents/`.
  core.String? parentFollowupIntentName;

  /// The priority of this intent.
  ///
  /// Higher numbers represent higher priorities. - If the supplied value is
  /// unspecified or 0, the service translates the value to 500,000, which
  /// corresponds to the `Normal` priority in the console. - If the supplied
  /// value is negative, the intent is ignored in runtime detect intent
  /// requests.
  ///
  /// Optional.
  core.int? priority;

  /// Indicates whether to delete all contexts in the current session when this
  /// intent is matched.
  ///
  /// Optional.
  core.bool? resetContexts;

  /// Read-only.
  ///
  /// The unique identifier of the root intent in the chain of followup intents.
  /// It identifies the correct followup intents chain for this intent. We
  /// populate this field only in the output. Format:
  /// `projects//agent/intents/`.
  ///
  /// Output only.
  core.String? rootFollowupIntentName;

  /// The collection of examples that the agent is trained on.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrase>? trainingPhrases;

  /// Indicates whether webhooks are enabled for the intent.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot filling prompt is forwarded to
  /// the webhook.
  core.String? webhookState;

  GoogleCloudDialogflowV2Intent({
    this.action,
    this.defaultResponsePlatforms,
    this.displayName,
    this.endInteraction,
    this.events,
    this.followupIntentInfo,
    this.inputContextNames,
    this.isFallback,
    this.liveAgentHandoff,
    this.messages,
    this.mlDisabled,
    this.name,
    this.outputContexts,
    this.parameters,
    this.parentFollowupIntentName,
    this.priority,
    this.resetContexts,
    this.rootFollowupIntentName,
    this.trainingPhrases,
    this.webhookState,
  });

  GoogleCloudDialogflowV2Intent.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          defaultResponsePlatforms:
              _json.containsKey('defaultResponsePlatforms')
                  ? (_json['defaultResponsePlatforms'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          endInteraction: _json.containsKey('endInteraction')
              ? _json['endInteraction'] as core.bool
              : null,
          events: _json.containsKey('events')
              ? (_json['events'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          followupIntentInfo: _json.containsKey('followupIntentInfo')
              ? (_json['followupIntentInfo'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputContextNames: _json.containsKey('inputContextNames')
              ? (_json['inputContextNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          isFallback: _json.containsKey('isFallback')
              ? _json['isFallback'] as core.bool
              : null,
          liveAgentHandoff: _json.containsKey('liveAgentHandoff')
              ? _json['liveAgentHandoff'] as core.bool
              : null,
          messages: _json.containsKey('messages')
              ? (_json['messages'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2IntentMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mlDisabled: _json.containsKey('mlDisabled')
              ? _json['mlDisabled'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          outputContexts: _json.containsKey('outputContexts')
              ? (_json['outputContexts'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Context.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentParameter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentFollowupIntentName:
              _json.containsKey('parentFollowupIntentName')
                  ? _json['parentFollowupIntentName'] as core.String
                  : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.int
              : null,
          resetContexts: _json.containsKey('resetContexts')
              ? _json['resetContexts'] as core.bool
              : null,
          rootFollowupIntentName: _json.containsKey('rootFollowupIntentName')
              ? _json['rootFollowupIntentName'] as core.String
              : null,
          trainingPhrases: _json.containsKey('trainingPhrases')
              ? (_json['trainingPhrases'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          webhookState: _json.containsKey('webhookState')
              ? _json['webhookState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (defaultResponsePlatforms != null)
          'defaultResponsePlatforms': defaultResponsePlatforms!,
        if (displayName != null) 'displayName': displayName!,
        if (endInteraction != null) 'endInteraction': endInteraction!,
        if (events != null) 'events': events!,
        if (followupIntentInfo != null)
          'followupIntentInfo': followupIntentInfo!,
        if (inputContextNames != null) 'inputContextNames': inputContextNames!,
        if (isFallback != null) 'isFallback': isFallback!,
        if (liveAgentHandoff != null) 'liveAgentHandoff': liveAgentHandoff!,
        if (messages != null) 'messages': messages!,
        if (mlDisabled != null) 'mlDisabled': mlDisabled!,
        if (name != null) 'name': name!,
        if (outputContexts != null) 'outputContexts': outputContexts!,
        if (parameters != null) 'parameters': parameters!,
        if (parentFollowupIntentName != null)
          'parentFollowupIntentName': parentFollowupIntentName!,
        if (priority != null) 'priority': priority!,
        if (resetContexts != null) 'resetContexts': resetContexts!,
        if (rootFollowupIntentName != null)
          'rootFollowupIntentName': rootFollowupIntentName!,
        if (trainingPhrases != null) 'trainingPhrases': trainingPhrases!,
        if (webhookState != null) 'webhookState': webhookState!,
      };
}

/// This message is a wrapper around a collection of intents.
class GoogleCloudDialogflowV2IntentBatch {
  /// A collection of intents.
  core.List<GoogleCloudDialogflowV2Intent>? intents;

  GoogleCloudDialogflowV2IntentBatch({
    this.intents,
  });

  GoogleCloudDialogflowV2IntentBatch.fromJson(core.Map _json)
      : this(
          intents: _json.containsKey('intents')
              ? (_json['intents'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Intent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intents != null) 'intents': intents!,
      };
}

/// Represents a single followup intent in the chain.
typedef GoogleCloudDialogflowV2IntentFollowupIntentInfo
    = $IntentFollowupIntentInfo;

/// A rich response message.
///
/// Corresponds to the intent `Response` field in the Dialogflow console. For
/// more information, see
/// [Rich response messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).
class GoogleCloudDialogflowV2IntentMessage {
  /// The basic card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageBasicCard? basicCard;

  /// Browse carousel card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard? browseCarouselCard;

  /// The card response.
  GoogleCloudDialogflowV2IntentMessageCard? card;

  /// The carousel card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageCarouselSelect? carouselSelect;

  /// The image response.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// The link out suggestion chip for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion? linkOutSuggestion;

  /// The list card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageListSelect? listSelect;

  /// The media content card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageMediaContent? mediaContent;

  /// A custom platform-specific response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// The platform that this message is intended for.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Default platform.
  /// - "FACEBOOK" : Facebook.
  /// - "SLACK" : Slack.
  /// - "TELEGRAM" : Telegram.
  /// - "KIK" : Kik.
  /// - "SKYPE" : Skype.
  /// - "LINE" : Line.
  /// - "VIBER" : Viber.
  /// - "ACTIONS_ON_GOOGLE" : Google Assistant See
  /// [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  /// - "GOOGLE_HANGOUTS" : Google Hangouts.
  core.String? platform;

  /// The quick replies response.
  GoogleCloudDialogflowV2IntentMessageQuickReplies? quickReplies;

  /// The voice and text-only responses for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSimpleResponses? simpleResponses;

  /// The suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSuggestions? suggestions;

  /// Table card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageTableCard? tableCard;

  /// The text response.
  GoogleCloudDialogflowV2IntentMessageText? text;

  GoogleCloudDialogflowV2IntentMessage({
    this.basicCard,
    this.browseCarouselCard,
    this.card,
    this.carouselSelect,
    this.image,
    this.linkOutSuggestion,
    this.listSelect,
    this.mediaContent,
    this.payload,
    this.platform,
    this.quickReplies,
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
    this.text,
  });

  GoogleCloudDialogflowV2IntentMessage.fromJson(core.Map _json)
      : this(
          basicCard: _json.containsKey('basicCard')
              ? GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
                  _json['basicCard'] as core.Map<core.String, core.dynamic>)
              : null,
          browseCarouselCard: _json.containsKey('browseCarouselCard')
              ? GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
                  _json['browseCarouselCard']
                      as core.Map<core.String, core.dynamic>)
              : null,
          card: _json.containsKey('card')
              ? GoogleCloudDialogflowV2IntentMessageCard.fromJson(
                  _json['card'] as core.Map<core.String, core.dynamic>)
              : null,
          carouselSelect: _json.containsKey('carouselSelect')
              ? GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
                  _json['carouselSelect']
                      as core.Map<core.String, core.dynamic>)
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          linkOutSuggestion: _json.containsKey('linkOutSuggestion')
              ? GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
                  _json['linkOutSuggestion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          listSelect: _json.containsKey('listSelect')
              ? GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
                  _json['listSelect'] as core.Map<core.String, core.dynamic>)
              : null,
          mediaContent: _json.containsKey('mediaContent')
              ? GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
                  _json['mediaContent'] as core.Map<core.String, core.dynamic>)
              : null,
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.Map<core.String, core.dynamic>
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          quickReplies: _json.containsKey('quickReplies')
              ? GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
                  _json['quickReplies'] as core.Map<core.String, core.dynamic>)
              : null,
          simpleResponses: _json.containsKey('simpleResponses')
              ? GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
                  _json['simpleResponses']
                      as core.Map<core.String, core.dynamic>)
              : null,
          suggestions: _json.containsKey('suggestions')
              ? GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
                  _json['suggestions'] as core.Map<core.String, core.dynamic>)
              : null,
          tableCard: _json.containsKey('tableCard')
              ? GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
                  _json['tableCard'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text')
              ? GoogleCloudDialogflowV2IntentMessageText.fromJson(
                  _json['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basicCard != null) 'basicCard': basicCard!,
        if (browseCarouselCard != null)
          'browseCarouselCard': browseCarouselCard!,
        if (card != null) 'card': card!,
        if (carouselSelect != null) 'carouselSelect': carouselSelect!,
        if (image != null) 'image': image!,
        if (linkOutSuggestion != null) 'linkOutSuggestion': linkOutSuggestion!,
        if (listSelect != null) 'listSelect': listSelect!,
        if (mediaContent != null) 'mediaContent': mediaContent!,
        if (payload != null) 'payload': payload!,
        if (platform != null) 'platform': platform!,
        if (quickReplies != null) 'quickReplies': quickReplies!,
        if (simpleResponses != null) 'simpleResponses': simpleResponses!,
        if (suggestions != null) 'suggestions': suggestions!,
        if (tableCard != null) 'tableCard': tableCard!,
        if (text != null) 'text': text!,
      };
}

/// The basic card message.
///
/// Useful for displaying information.
class GoogleCloudDialogflowV2IntentMessageBasicCard {
  /// The collection of card buttons.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;

  /// Required, unless image is present.
  ///
  /// The body text of the card.
  core.String? formattedText;

  /// The image for the card.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// The subtitle of the card.
  ///
  /// Optional.
  core.String? subtitle;

  /// The title of the card.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageBasicCardButton
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          formattedText: _json.containsKey('formattedText')
              ? _json['formattedText'] as core.String
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
        if (formattedText != null) 'formattedText': formattedText!,
        if (image != null) 'image': image!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2IntentMessageBasicCardButton {
  /// Action to take when a user taps on the button.
  ///
  /// Required.
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction?
      openUriAction;

  /// The title of the button.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBasicCardButton({
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(core.Map _json)
      : this(
          openUriAction: _json.containsKey('openUriAction')
              ? GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
                  .fromJson(_json['openUriAction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (openUriAction != null) 'openUriAction': openUriAction!,
        if (title != null) 'title': title!,
      };
}

/// Opens the given URI.
typedef GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
    = $IntentMessageBasicCardButtonOpenUriAction;

/// Browse Carousel Card for Actions on Google.
///
/// https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard {
  /// Settings for displaying the image.
  ///
  /// Applies to every image in items.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED" : Fill the gaps between the image
  /// and the image container with gray bars.
  /// - "GRAY" : Fill the gaps between the image and the image container with
  /// gray bars.
  /// - "WHITE" : Fill the gaps between the image and the image container with
  /// white bars.
  /// - "CROPPED" : Image is scaled such that the image width and height match
  /// or exceed the container dimensions. This may crop the top and bottom of
  /// the image if the scaled image height is greater than the container height,
  /// or crop the left and right of the image if the scaled image width is
  /// greater than the container width. This is similar to "Zoom Mode" on a
  /// widescreen TV when playing a 4:3 video.
  /// - "BLURRED_BACKGROUND" : Pad the gaps between image and image frame with a
  /// blurred copy of the same image.
  core.String? imageDisplayOptions;

  /// List of items in the Browse Carousel Card.
  ///
  /// Minimum of two items, maximum of ten.
  ///
  /// Required.
  core.List<
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>?
      items;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard({
    this.imageDisplayOptions,
    this.items,
  });

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
      core.Map _json)
      : this(
          imageDisplayOptions: _json.containsKey('imageDisplayOptions')
              ? _json['imageDisplayOptions'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageDisplayOptions != null)
          'imageDisplayOptions': imageDisplayOptions!,
        if (items != null) 'items': items!,
      };
}

/// Browsing carousel tile
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Description of the carousel item.
  ///
  /// Maximum of four lines of text.
  ///
  /// Optional.
  core.String? description;

  /// Text that appears at the bottom of the Browse Carousel Card.
  ///
  /// Maximum of one line of text.
  ///
  /// Optional.
  core.String? footer;

  /// Hero image for the carousel item.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Action to present to the user.
  ///
  /// Required.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction?
      openUriAction;

  /// Title of the carousel item.
  ///
  /// Maximum of two lines of text.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
    this.description,
    this.footer,
    this.image,
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
      core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          footer: _json.containsKey('footer')
              ? _json['footer'] as core.String
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          openUriAction: _json.containsKey('openUriAction')
              ? GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
                  .fromJson(_json['openUriAction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (footer != null) 'footer': footer!,
        if (image != null) 'image': image!,
        if (openUriAction != null) 'openUriAction': openUriAction!,
        if (title != null) 'title': title!,
      };
}

/// Actions on Google action to open a given url.
typedef GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
    = $IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction;

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCard {
  /// The collection of card buttons.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageCardButton>? buttons;

  /// The public URI to an image file for the card.
  ///
  /// Optional.
  core.String? imageUri;

  /// The subtitle of the card.
  ///
  /// Optional.
  core.String? subtitle;

  /// The title of the card.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageCard.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// Contains information about a button.
typedef GoogleCloudDialogflowV2IntentMessageCardButton
    = $IntentMessageCardButton;

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2IntentMessageCarouselSelect {
  /// Carousel items.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>? items;

  GoogleCloudDialogflowV2IntentMessageCarouselSelect({
    this.items,
  });

  GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// An item in the carousel.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem {
  /// The body text of the card.
  ///
  /// Optional.
  core.String? description;

  /// The image to display.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Additional info about the option item.
  ///
  /// Required.
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo? info;

  /// Title of the carousel item.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
      core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          info: _json.containsKey('info')
              ? GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
                  _json['info'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (image != null) 'image': image!,
        if (info != null) 'info': info!,
        if (title != null) 'title': title!,
      };
}

/// Column properties for TableCard.
typedef GoogleCloudDialogflowV2IntentMessageColumnProperties
    = $IntentMessageColumnProperties;

/// The image response message.
typedef GoogleCloudDialogflowV2IntentMessageImage
    = $GoogleCloudDialogflowV2IntentMessageImage;

/// The suggestion chip message that allows the user to jump out to the app or
/// website associated with this agent.
typedef GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
    = $IntentMessageLinkOutSuggestion;

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelect {
  /// List items.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2IntentMessageListSelectItem>? items;

  /// Subtitle of the list.
  ///
  /// Optional.
  core.String? subtitle;

  /// The overall title of the list.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageListSelect({
    this.items,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageListSelectItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// An item in the list.
class GoogleCloudDialogflowV2IntentMessageListSelectItem {
  /// The main text describing the item.
  ///
  /// Optional.
  core.String? description;

  /// The image to display.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Additional information about this option.
  ///
  /// Required.
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo? info;

  /// The title of the list item.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageListSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          info: _json.containsKey('info')
              ? GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
                  _json['info'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (image != null) 'image': image!,
        if (info != null) 'info': info!,
        if (title != null) 'title': title!,
      };
}

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageMediaContent {
  /// List of media objects.
  ///
  /// Required.
  core.List<
          GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>?
      mediaObjects;

  /// What type of media is the content (ie "audio").
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESPONSE_MEDIA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "AUDIO" : Response media type is audio.
  core.String? mediaType;

  GoogleCloudDialogflowV2IntentMessageMediaContent({
    this.mediaObjects,
    this.mediaType,
  });

  GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(core.Map _json)
      : this(
          mediaObjects: _json.containsKey('mediaObjects')
              ? (_json['mediaObjects'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mediaType: _json.containsKey('mediaType')
              ? _json['mediaType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mediaObjects != null) 'mediaObjects': mediaObjects!,
        if (mediaType != null) 'mediaType': mediaType!,
      };
}

/// Response media object for media content card.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject {
  /// Url where the media is stored.
  ///
  /// Required.
  core.String? contentUrl;

  /// Description of media card.
  ///
  /// Optional.
  core.String? description;

  /// Icon to display above media content.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? icon;

  /// Image to display above media content.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? largeImage;

  /// Name of media card.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject({
    this.contentUrl,
    this.description,
    this.icon,
    this.largeImage,
    this.name,
  });

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromJson(
      core.Map _json)
      : this(
          contentUrl: _json.containsKey('contentUrl')
              ? _json['contentUrl'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          icon: _json.containsKey('icon')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['icon'] as core.Map<core.String, core.dynamic>)
              : null,
          largeImage: _json.containsKey('largeImage')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['largeImage'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUrl != null) 'contentUrl': contentUrl!,
        if (description != null) 'description': description!,
        if (icon != null) 'icon': icon!,
        if (largeImage != null) 'largeImage': largeImage!,
        if (name != null) 'name': name!,
      };
}

/// The quick replies response message.
typedef GoogleCloudDialogflowV2IntentMessageQuickReplies
    = $IntentMessageQuickReplies;

/// Additional info about the select item for when it is triggered in a dialog.
typedef GoogleCloudDialogflowV2IntentMessageSelectItemInfo
    = $IntentMessageSelectItemInfo;

/// The simple response message containing speech or text.
typedef GoogleCloudDialogflowV2IntentMessageSimpleResponse
    = $IntentMessageSimpleResponse;

/// The collection of simple response candidates.
///
/// This message in `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponses {
  /// The list of simple responses.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2IntentMessageSimpleResponse>?
      simpleResponses;

  GoogleCloudDialogflowV2IntentMessageSimpleResponses({
    this.simpleResponses,
  });

  GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(core.Map _json)
      : this(
          simpleResponses: _json.containsKey('simpleResponses')
              ? (_json['simpleResponses'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageSimpleResponse
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (simpleResponses != null) 'simpleResponses': simpleResponses!,
      };
}

/// The suggestion chip message that the user can tap to quickly post a reply to
/// the conversation.
typedef GoogleCloudDialogflowV2IntentMessageSuggestion
    = $IntentMessageSuggestion;

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestions {
  /// The list of suggested replies.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2IntentMessageSuggestion>? suggestions;

  GoogleCloudDialogflowV2IntentMessageSuggestions({
    this.suggestions,
  });

  GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(core.Map _json)
      : this(
          suggestions: _json.containsKey('suggestions')
              ? (_json['suggestions'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (suggestions != null) 'suggestions': suggestions!,
      };
}

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCard {
  /// List of buttons for the card.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;

  /// Display properties for the columns in this table.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageColumnProperties>?
      columnProperties;

  /// Image which should be displayed on the card.
  ///
  /// Optional.
  GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Rows in this table of data.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardRow>? rows;

  /// Subtitle to the title.
  ///
  /// Optional.
  core.String? subtitle;

  /// Title of the card.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(core.Map _json)
      : this(
          buttons: _json.containsKey('buttons')
              ? (_json['buttons'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageBasicCardButton
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          columnProperties: _json.containsKey('columnProperties')
              ? (_json['columnProperties'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageColumnProperties
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subtitle: _json.containsKey('subtitle')
              ? _json['subtitle'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttons != null) 'buttons': buttons!,
        if (columnProperties != null) 'columnProperties': columnProperties!,
        if (image != null) 'image': image!,
        if (rows != null) 'rows': rows!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (title != null) 'title': title!,
      };
}

/// Cell of TableCardRow.
typedef GoogleCloudDialogflowV2IntentMessageTableCardCell
    = $IntentMessageTableCardCell;

/// Row of TableCard.
class GoogleCloudDialogflowV2IntentMessageTableCardRow {
  /// List of cells that make up this row.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardCell>? cells;

  /// Whether to add a visual divider after this row.
  ///
  /// Optional.
  core.bool? dividerAfter;

  GoogleCloudDialogflowV2IntentMessageTableCardRow({
    this.cells,
    this.dividerAfter,
  });

  GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentMessageTableCardCell
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dividerAfter: _json.containsKey('dividerAfter')
              ? _json['dividerAfter'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
        if (dividerAfter != null) 'dividerAfter': dividerAfter!,
      };
}

/// The text response message.
typedef GoogleCloudDialogflowV2IntentMessageText = $IntentMessageText;

/// Represents intent parameters.
typedef GoogleCloudDialogflowV2IntentParameter = $IntentParameter01;

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2IntentTrainingPhrase {
  /// The unique identifier of this training phrase.
  ///
  /// Output only.
  core.String? name;

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
  /// the `entity_type`, `alias`, and `user_defined` fields are all set.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrasePart>? parts;

  /// Indicates how many times this example was added to the intent.
  ///
  /// Each time a developer adds an existing sample by editing an intent or
  /// training, this counter is increased.
  ///
  /// Optional.
  core.int? timesAddedCount;

  /// The type of the training phrase.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "EXAMPLE" : Examples do not contain @-prefixed entity type names, but
  /// example parts can be annotated with entity types.
  /// - "TEMPLATE" : Templates are not annotated with entity types, but they can
  /// contain @-prefixed entity type names as substrings. Template mode has been
  /// deprecated. Example mode is the only supported way to create new training
  /// phrases. If you have existing training phrases that you've created in
  /// template mode, those will continue to work.
  core.String? type;

  GoogleCloudDialogflowV2IntentTrainingPhrase({
    this.name,
    this.parts,
    this.timesAddedCount,
    this.type,
  });

  GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parts: _json.containsKey('parts')
              ? (_json['parts'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timesAddedCount: _json.containsKey('timesAddedCount')
              ? _json['timesAddedCount'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parts != null) 'parts': parts!,
        if (timesAddedCount != null) 'timesAddedCount': timesAddedCount!,
        if (type != null) 'type': type!,
      };
}

/// Represents a part of a training phrase.
typedef GoogleCloudDialogflowV2IntentTrainingPhrasePart
    = $IntentTrainingPhrasePart01;

/// A knowledge base represents a collection of knowledge documents that you
/// provide to Dialogflow.
///
/// Your knowledge documents contain information that may be useful during
/// conversations with end-users. Some Dialogflow features use knowledge bases
/// when looking for a response to an end-user input. For more information, see
/// the
/// [knowledge base guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases).
/// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
/// `projects.knowledgeBases`.
class GoogleCloudDialogflowV2KnowledgeBase {
  /// The display name of the knowledge base.
  ///
  /// The name must be 1024 bytes or less; otherwise, the creation request
  /// fails.
  ///
  /// Required.
  core.String? displayName;

  /// Language which represents the KnowledgeBase.
  ///
  /// When the KnowledgeBase is created/updated, expect this to be present for
  /// non en-us languages. When unspecified, the default language code en-us
  /// applies.
  core.String? languageCode;

  /// The knowledge base resource name.
  ///
  /// The name must be empty when creating a knowledge base. Format:
  /// `projects//locations//knowledgeBases/`.
  core.String? name;

  GoogleCloudDialogflowV2KnowledgeBase({
    this.displayName,
    this.languageCode,
    this.name,
  });

  GoogleCloudDialogflowV2KnowledgeBase.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
      };
}

/// Response message for AnswerRecords.ListAnswerRecords.
class GoogleCloudDialogflowV2ListAnswerRecordsResponse {
  /// The list of answer records.
  core.List<GoogleCloudDialogflowV2AnswerRecord>? answerRecords;

  /// A token to retrieve next page of results.
  ///
  /// Or empty if there are no more results. Pass this value in the
  /// ListAnswerRecordsRequest.page_token field in the subsequent call to
  /// `ListAnswerRecords` method to retrieve the next page of results.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListAnswerRecordsResponse({
    this.answerRecords,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(core.Map _json)
      : this(
          answerRecords: _json.containsKey('answerRecords')
              ? (_json['answerRecords'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2AnswerRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRecords != null) 'answerRecords': answerRecords!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Contexts.ListContexts.
class GoogleCloudDialogflowV2ListContextsResponse {
  /// The list of contexts.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Context>? contexts;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListContextsResponse({
    this.contexts,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListContextsResponse.fromJson(core.Map _json)
      : this(
          contexts: _json.containsKey('contexts')
              ? (_json['contexts'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Context.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contexts != null) 'contexts': contexts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for ConversationProfiles.ListConversationProfiles.
class GoogleCloudDialogflowV2ListConversationProfilesResponse {
  /// The list of project conversation profiles.
  ///
  /// There is a maximum number of items returned based on the page_size field
  /// in the request.
  core.List<GoogleCloudDialogflowV2ConversationProfile>? conversationProfiles;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationProfilesResponse({
    this.conversationProfiles,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
      core.Map _json)
      : this(
          conversationProfiles: _json.containsKey('conversationProfiles')
              ? (_json['conversationProfiles'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2ConversationProfile.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversationProfiles != null)
          'conversationProfiles': conversationProfiles!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Conversations.ListConversations.
class GoogleCloudDialogflowV2ListConversationsResponse {
  /// The list of conversations.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Conversation>? conversations;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationsResponse.fromJson(core.Map _json)
      : this(
          conversations: _json.containsKey('conversations')
              ? (_json['conversations'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Conversation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversations != null) 'conversations': conversations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for Documents.ListDocuments.
class GoogleCloudDialogflowV2ListDocumentsResponse {
  /// The list of documents.
  core.List<GoogleCloudDialogflowV2Document>? documents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Document.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowV2ListEntityTypesResponse {
  /// The list of agent entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2EntityType>? entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(core.Map _json)
      : this(
          entityTypes: _json.containsKey('entityTypes')
              ? (_json['entityTypes'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2EntityType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityTypes != null) 'entityTypes': entityTypes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Environments.ListEnvironments.
class GoogleCloudDialogflowV2ListEnvironmentsResponse {
  /// The list of agent environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(core.Map _json)
      : this(
          environments: _json.containsKey('environments')
              ? (_json['environments'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Intents.ListIntents.
class GoogleCloudDialogflowV2ListIntentsResponse {
  /// The list of agent intents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Intent>? intents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListIntentsResponse.fromJson(core.Map _json)
      : this(
          intents: _json.containsKey('intents')
              ? (_json['intents'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Intent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intents != null) 'intents': intents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for KnowledgeBases.ListKnowledgeBases.
class GoogleCloudDialogflowV2ListKnowledgeBasesResponse {
  /// The list of knowledge bases.
  core.List<GoogleCloudDialogflowV2KnowledgeBase>? knowledgeBases;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListKnowledgeBasesResponse({
    this.knowledgeBases,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(core.Map _json)
      : this(
          knowledgeBases: _json.containsKey('knowledgeBases')
              ? (_json['knowledgeBases'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2KnowledgeBase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (knowledgeBases != null) 'knowledgeBases': knowledgeBases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Conversations.ListMessages.
class GoogleCloudDialogflowV2ListMessagesResponse {
  /// The list of messages.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. `messages` is sorted by `create_time` in descending
  /// order.
  core.List<GoogleCloudDialogflowV2Message>? messages;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListMessagesResponse({
    this.messages,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListMessagesResponse.fromJson(core.Map _json)
      : this(
          messages: _json.containsKey('messages')
              ? (_json['messages'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Message.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messages != null) 'messages': messages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Participants.ListParticipants.
class GoogleCloudDialogflowV2ListParticipantsResponse {
  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of participants.
  ///
  /// There is a maximum number of items returned based on the page_size field
  /// in the request.
  core.List<GoogleCloudDialogflowV2Participant>? participants;

  GoogleCloudDialogflowV2ListParticipantsResponse({
    this.nextPageToken,
    this.participants,
  });

  GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          participants: _json.containsKey('participants')
              ? (_json['participants'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Participant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (participants != null) 'participants': participants!,
      };
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowV2ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of session entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2SessionEntityType>? sessionEntityTypes;

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sessionEntityTypes: _json.containsKey('sessionEntityTypes')
              ? (_json['sessionEntityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2SessionEntityType.fromJson(
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

/// The response message for Versions.ListVersions.
class GoogleCloudDialogflowV2ListVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of agent versions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Version>? versions;

  GoogleCloudDialogflowV2ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowV2ListVersionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// Defines logging behavior for conversation lifecycle events.
class GoogleCloudDialogflowV2LoggingConfig {
  /// Whether to log conversation events like CONVERSATION_STARTED to
  /// Stackdriver in the conversation project as JSON format ConversationEvent
  /// protos.
  core.bool? enableStackdriverLogging;

  GoogleCloudDialogflowV2LoggingConfig({
    this.enableStackdriverLogging,
  });

  GoogleCloudDialogflowV2LoggingConfig.fromJson(core.Map _json)
      : this(
          enableStackdriverLogging:
              _json.containsKey('enableStackdriverLogging')
                  ? _json['enableStackdriverLogging'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableStackdriverLogging != null)
          'enableStackdriverLogging': enableStackdriverLogging!,
      };
}

/// Represents a message posted into a conversation.
class GoogleCloudDialogflowV2Message {
  /// The message content.
  ///
  /// Required.
  core.String? content;

  /// The time when the message was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The message language.
  ///
  /// This should be a \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
  /// language tag. Example: "en-US".
  ///
  /// Optional.
  core.String? languageCode;

  /// The annotation for the message.
  ///
  /// Output only.
  GoogleCloudDialogflowV2MessageAnnotation? messageAnnotation;

  /// The unique identifier of the message.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? name;

  /// The participant that sends this message.
  ///
  /// Output only.
  core.String? participant;

  /// The role of the participant.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant role not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent, such as a
  /// Dialogflow agent.
  /// - "END_USER" : Participant is an end user that has called or chatted with
  /// Dialogflow services.
  core.String? participantRole;

  GoogleCloudDialogflowV2Message({
    this.content,
    this.createTime,
    this.languageCode,
    this.messageAnnotation,
    this.name,
    this.participant,
    this.participantRole,
  });

  GoogleCloudDialogflowV2Message.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          messageAnnotation: _json.containsKey('messageAnnotation')
              ? GoogleCloudDialogflowV2MessageAnnotation.fromJson(
                  _json['messageAnnotation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          participant: _json.containsKey('participant')
              ? _json['participant'] as core.String
              : null,
          participantRole: _json.containsKey('participantRole')
              ? _json['participantRole'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (createTime != null) 'createTime': createTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (messageAnnotation != null) 'messageAnnotation': messageAnnotation!,
        if (name != null) 'name': name!,
        if (participant != null) 'participant': participant!,
        if (participantRole != null) 'participantRole': participantRole!,
      };
}

/// Represents the result of annotation for the message.
class GoogleCloudDialogflowV2MessageAnnotation {
  /// Indicates whether the text message contains entities.
  core.bool? containEntities;

  /// The collection of annotated message parts ordered by their position in the
  /// message.
  ///
  /// You can recover the annotated message by concatenating
  /// \[AnnotatedMessagePart.text\].
  core.List<GoogleCloudDialogflowV2AnnotatedMessagePart>? parts;

  GoogleCloudDialogflowV2MessageAnnotation({
    this.containEntities,
    this.parts,
  });

  GoogleCloudDialogflowV2MessageAnnotation.fromJson(core.Map _json)
      : this(
          containEntities: _json.containsKey('containEntities')
              ? _json['containEntities'] as core.bool
              : null,
          parts: _json.containsKey('parts')
              ? (_json['parts'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containEntities != null) 'containEntities': containEntities!,
        if (parts != null) 'parts': parts!,
      };
}

/// Defines notification behavior.
class GoogleCloudDialogflowV2NotificationConfig {
  /// Format of message.
  /// Possible string values are:
  /// - "MESSAGE_FORMAT_UNSPECIFIED" : If it is unspeified, PROTO will be used.
  /// - "PROTO" : Pubsub message will be serialized proto.
  /// - "JSON" : Pubsub message will be json.
  core.String? messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events like
  /// CONVERSATION_STARTED as serialized ConversationEvent protos.
  ///
  /// Notification works for phone calls, if this topic either is in the same
  /// project as the conversation or you grant
  /// `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow
  /// Service Agent` role in the topic project. Format:
  /// `projects//locations//topics/`.
  core.String? topic;

  GoogleCloudDialogflowV2NotificationConfig({
    this.messageFormat,
    this.topic,
  });

  GoogleCloudDialogflowV2NotificationConfig.fromJson(core.Map _json)
      : this(
          messageFormat: _json.containsKey('messageFormat')
              ? _json['messageFormat'] as core.String
              : null,
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageFormat != null) 'messageFormat': messageFormat!,
        if (topic != null) 'topic': topic!,
      };
}

/// Represents the natural language speech audio to be played to the end user.
class GoogleCloudDialogflowV2OutputAudio {
  /// The natural language speech audio.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> _bytes) {
    audio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Instructs the speech synthesizer how to generate the speech audio.
  GoogleCloudDialogflowV2OutputAudioConfig? config;

  GoogleCloudDialogflowV2OutputAudio({
    this.audio,
    this.config,
  });

  GoogleCloudDialogflowV2OutputAudio.fromJson(core.Map _json)
      : this(
          audio:
              _json.containsKey('audio') ? _json['audio'] as core.String : null,
          config: _json.containsKey('config')
              ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audio != null) 'audio': audio!,
        if (config != null) 'config': config!,
      };
}

/// Instructs the speech synthesizer on how to generate the output audio
/// content.
///
/// If this audio config is supplied in a request, it overrides all existing
/// text-to-speech settings applied to the agent.
class GoogleCloudDialogflowV2OutputAudioConfig {
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
  core.int? sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  GoogleCloudDialogflowV2SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowV2OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowV2OutputAudioConfig.fromJson(core.Map _json)
      : this(
          audioEncoding: _json.containsKey('audioEncoding')
              ? _json['audioEncoding'] as core.String
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
          synthesizeSpeechConfig: _json.containsKey('synthesizeSpeechConfig')
              ? GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
                  _json['synthesizeSpeechConfig']
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

/// Represents a conversation participant (human agent, virtual agent,
/// end-user).
class GoogleCloudDialogflowV2Participant {
  /// The unique identifier of this participant.
  ///
  /// Format: `projects//locations//conversations//participants/`.
  ///
  /// Optional.
  core.String? name;

  /// The role this participant plays in the conversation.
  ///
  /// This field must be set during participant creation and is then immutable.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant role not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent, such as a
  /// Dialogflow agent.
  /// - "END_USER" : Participant is an end user that has called or chatted with
  /// Dialogflow services.
  core.String? role;

  /// Label applied to streams representing this participant in SIPREC XML
  /// metadata and SDP.
  ///
  /// This is used to assign transcriptions from that media stream to this
  /// participant. This field can be updated.
  ///
  /// Optional.
  core.String? sipRecordingMediaLabel;

  GoogleCloudDialogflowV2Participant({
    this.name,
    this.role,
    this.sipRecordingMediaLabel,
  });

  GoogleCloudDialogflowV2Participant.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          sipRecordingMediaLabel: _json.containsKey('sipRecordingMediaLabel')
              ? _json['sipRecordingMediaLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (role != null) 'role': role!,
        if (sipRecordingMediaLabel != null)
          'sipRecordingMediaLabel': sipRecordingMediaLabel!,
      };
}

/// Represents the query input.
///
/// It can contain either: 1. An audio config which instructs the speech
/// recognizer how to process the speech audio. 2. A conversational query in the
/// form of text,. 3. An event that specifies which intent to trigger.
class GoogleCloudDialogflowV2QueryInput {
  /// Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowV2InputAudioConfig? audioConfig;

  /// The event to be processed.
  GoogleCloudDialogflowV2EventInput? event;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2TextInput? text;

  GoogleCloudDialogflowV2QueryInput({
    this.audioConfig,
    this.event,
    this.text,
  });

  GoogleCloudDialogflowV2QueryInput.fromJson(core.Map _json)
      : this(
          audioConfig: _json.containsKey('audioConfig')
              ? GoogleCloudDialogflowV2InputAudioConfig.fromJson(
                  _json['audioConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          event: _json.containsKey('event')
              ? GoogleCloudDialogflowV2EventInput.fromJson(
                  _json['event'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text')
              ? GoogleCloudDialogflowV2TextInput.fromJson(
                  _json['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioConfig != null) 'audioConfig': audioConfig!,
        if (event != null) 'event': event!,
        if (text != null) 'text': text!,
      };
}

/// Represents the parameters of the conversational query.
class GoogleCloudDialogflowV2QueryParameters {
  /// The collection of contexts to be activated before this query is executed.
  core.List<GoogleCloudDialogflowV2Context>? contexts;

  /// The geo location of this conversational query.
  GoogleTypeLatLng? geoLocation;

  /// This field can be used to pass custom data to your webhook.
  ///
  /// Arbitrary JSON objects are supported. If supplied, the value is used to
  /// populate the `WebhookRequest.original_detect_intent_request.payload` field
  /// sent to your webhook.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// Specifies whether to delete all contexts in the current session before the
  /// new ones are activated.
  core.bool? resetContexts;

  /// Configures the type of sentiment analysis to perform.
  ///
  /// If not provided, sentiment analysis is not performed.
  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig?
      sentimentAnalysisRequestConfig;

  /// Additional session entity types to replace or extend developer entity
  /// types with.
  ///
  /// The entity synonyms apply to all languages and persist for the session of
  /// this query.
  core.List<GoogleCloudDialogflowV2SessionEntityType>? sessionEntityTypes;

  /// The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// If not provided, the time zone specified in agent settings is used.
  core.String? timeZone;

  /// This field can be used to pass HTTP headers for a webhook call.
  ///
  /// These headers will be sent to webhook along with the headers that have
  /// been configured through the Dialogflow web console. The headers defined
  /// within this field will overwrite the headers configured through the
  /// Dialogflow console if there is a conflict. Header names are
  /// case-insensitive. Google's specified headers are not allowed. Including:
  /// "Host", "Content-Length", "Connection", "From", "User-Agent",
  /// "Accept-Encoding", "If-Modified-Since", "If-None-Match",
  /// "X-Forwarded-For", etc.
  core.Map<core.String, core.String>? webhookHeaders;

  GoogleCloudDialogflowV2QueryParameters({
    this.contexts,
    this.geoLocation,
    this.payload,
    this.resetContexts,
    this.sentimentAnalysisRequestConfig,
    this.sessionEntityTypes,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowV2QueryParameters.fromJson(core.Map _json)
      : this(
          contexts: _json.containsKey('contexts')
              ? (_json['contexts'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Context.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          geoLocation: _json.containsKey('geoLocation')
              ? GoogleTypeLatLng.fromJson(
                  _json['geoLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.Map<core.String, core.dynamic>
              : null,
          resetContexts: _json.containsKey('resetContexts')
              ? _json['resetContexts'] as core.bool
              : null,
          sentimentAnalysisRequestConfig: _json
                  .containsKey('sentimentAnalysisRequestConfig')
              ? GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
                  _json['sentimentAnalysisRequestConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sessionEntityTypes: _json.containsKey('sessionEntityTypes')
              ? (_json['sessionEntityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2SessionEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          webhookHeaders: _json.containsKey('webhookHeaders')
              ? (_json['webhookHeaders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contexts != null) 'contexts': contexts!,
        if (geoLocation != null) 'geoLocation': geoLocation!,
        if (payload != null) 'payload': payload!,
        if (resetContexts != null) 'resetContexts': resetContexts!,
        if (sentimentAnalysisRequestConfig != null)
          'sentimentAnalysisRequestConfig': sentimentAnalysisRequestConfig!,
        if (sessionEntityTypes != null)
          'sessionEntityTypes': sessionEntityTypes!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (webhookHeaders != null) 'webhookHeaders': webhookHeaders!,
      };
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2QueryResult {
  /// The action name from the matched intent.
  core.String? action;

  /// This field is set to: - `false` if the matched intent has required
  /// parameters and not all of the required parameter values have been
  /// collected.
  ///
  /// - `true` if all required parameter values have been collected, or if the
  /// matched intent doesn't contain any required parameters.
  core.bool? allRequiredParamsPresent;

  /// Indicates whether the conversational query triggers a cancellation for
  /// slot filling.
  core.bool? cancelsSlotFilling;

  /// Free-form diagnostic information for the associated detect intent request.
  ///
  /// The fields of this data can change without notice, so you should not write
  /// code that depends on its structure. The data may contain: - webhook call
  /// latency - webhook errors
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<GoogleCloudDialogflowV2IntentMessage>? fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen.
  ///
  /// Note: This is a legacy field, `fulfillment_messages` should be preferred.
  core.String? fulfillmentText;

  /// The intent that matched the conversational query.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to: `name`, `display_name`, `end_interaction` and `is_fallback`.
  GoogleCloudDialogflowV2Intent? intent;

  /// The intent detection confidence.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// This value is for informational purpose only and is only used to help
  /// match the best intent within the classification threshold. This value may
  /// change for the same end-user expression at any time due to a model
  /// retraining or change in implementation. If there are `multiple
  /// knowledge_answers` messages, this value is set to the greatest
  /// `knowledgeAnswers.match_confidence` value in the list.
  core.double? intentDetectionConfidence;

  /// The language that was triggered during intent detection.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  core.String? languageCode;

  /// The collection of output contexts.
  ///
  /// If applicable, `output_contexts.parameters` contains entries with name
  /// `.original` containing the original parameter values before the query.
  core.List<GoogleCloudDialogflowV2Context>? outputContexts;

  /// The collection of extracted parameters.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: depending on parameter value type, could be
  /// one of string, number, boolean, null, list or map - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// The original conversational query text: - If natural language text was
  /// provided as input, `query_text` contains a copy of the input.
  ///
  /// - If natural language speech audio was provided as input, `query_text`
  /// contains the speech recognition result. If speech recognizer produced
  /// multiple alternatives, a particular one is picked. - If automatic spell
  /// correction is enabled, `query_text` will contain the corrected user input.
  core.String? queryText;

  /// The sentiment analysis result, which depends on the
  /// `sentiment_analysis_request_config` specified in the request.
  GoogleCloudDialogflowV2SentimentAnalysisResult? sentimentAnalysisResult;

  /// The Speech recognition confidence between 0.0 and 1.0.
  ///
  /// A higher number indicates an estimated greater likelihood that the
  /// recognized words are correct. The default of 0.0 is a sentinel value
  /// indicating that confidence was not set. This field is not guaranteed to be
  /// accurate or set. In particular this field isn't set for
  /// StreamingDetectIntent since the streaming endpoint has separate confidence
  /// estimates per portion of the audio in StreamingRecognitionResult.
  core.double? speechRecognitionConfidence;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `payload` field returned in the webhook response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? webhookPayload;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `source` field returned in the webhook response.
  core.String? webhookSource;

  GoogleCloudDialogflowV2QueryResult({
    this.action,
    this.allRequiredParamsPresent,
    this.cancelsSlotFilling,
    this.diagnosticInfo,
    this.fulfillmentMessages,
    this.fulfillmentText,
    this.intent,
    this.intentDetectionConfidence,
    this.languageCode,
    this.outputContexts,
    this.parameters,
    this.queryText,
    this.sentimentAnalysisResult,
    this.speechRecognitionConfidence,
    this.webhookPayload,
    this.webhookSource,
  });

  GoogleCloudDialogflowV2QueryResult.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          allRequiredParamsPresent:
              _json.containsKey('allRequiredParamsPresent')
                  ? _json['allRequiredParamsPresent'] as core.bool
                  : null,
          cancelsSlotFilling: _json.containsKey('cancelsSlotFilling')
              ? _json['cancelsSlotFilling'] as core.bool
              : null,
          diagnosticInfo: _json.containsKey('diagnosticInfo')
              ? _json['diagnosticInfo'] as core.Map<core.String, core.dynamic>
              : null,
          fulfillmentMessages: _json.containsKey('fulfillmentMessages')
              ? (_json['fulfillmentMessages'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2IntentMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fulfillmentText: _json.containsKey('fulfillmentText')
              ? _json['fulfillmentText'] as core.String
              : null,
          intent: _json.containsKey('intent')
              ? GoogleCloudDialogflowV2Intent.fromJson(
                  _json['intent'] as core.Map<core.String, core.dynamic>)
              : null,
          intentDetectionConfidence:
              _json.containsKey('intentDetectionConfidence')
                  ? (_json['intentDetectionConfidence'] as core.num).toDouble()
                  : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          outputContexts: _json.containsKey('outputContexts')
              ? (_json['outputContexts'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Context.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
          queryText: _json.containsKey('queryText')
              ? _json['queryText'] as core.String
              : null,
          sentimentAnalysisResult: _json.containsKey('sentimentAnalysisResult')
              ? GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
                  _json['sentimentAnalysisResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          speechRecognitionConfidence: _json
                  .containsKey('speechRecognitionConfidence')
              ? (_json['speechRecognitionConfidence'] as core.num).toDouble()
              : null,
          webhookPayload: _json.containsKey('webhookPayload')
              ? _json['webhookPayload'] as core.Map<core.String, core.dynamic>
              : null,
          webhookSource: _json.containsKey('webhookSource')
              ? _json['webhookSource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (allRequiredParamsPresent != null)
          'allRequiredParamsPresent': allRequiredParamsPresent!,
        if (cancelsSlotFilling != null)
          'cancelsSlotFilling': cancelsSlotFilling!,
        if (diagnosticInfo != null) 'diagnosticInfo': diagnosticInfo!,
        if (fulfillmentMessages != null)
          'fulfillmentMessages': fulfillmentMessages!,
        if (fulfillmentText != null) 'fulfillmentText': fulfillmentText!,
        if (intent != null) 'intent': intent!,
        if (intentDetectionConfidence != null)
          'intentDetectionConfidence': intentDetectionConfidence!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (outputContexts != null) 'outputContexts': outputContexts!,
        if (parameters != null) 'parameters': parameters!,
        if (queryText != null) 'queryText': queryText!,
        if (sentimentAnalysisResult != null)
          'sentimentAnalysisResult': sentimentAnalysisResult!,
        if (speechRecognitionConfidence != null)
          'speechRecognitionConfidence': speechRecognitionConfidence!,
        if (webhookPayload != null) 'webhookPayload': webhookPayload!,
        if (webhookSource != null) 'webhookSource': webhookSource!,
      };
}

/// Request message for Documents.ReloadDocument.
class GoogleCloudDialogflowV2ReloadDocumentRequest {
  /// The path of gcs source file for reloading document content.
  ///
  /// For now, only gcs uri is supported. For documents stored in Google Cloud
  /// Storage, these URIs must have the form `gs:///`.
  ///
  /// Optional.
  core.String? contentUri;

  GoogleCloudDialogflowV2ReloadDocumentRequest({
    this.contentUri,
  });

  GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(core.Map _json)
      : this(
          contentUri: _json.containsKey('contentUri')
              ? _json['contentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUri != null) 'contentUri': contentUri!,
      };
}

/// The request message for Agents.RestoreAgent.
class GoogleCloudDialogflowV2RestoreAgentRequest {
  /// Zip compressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a Google Cloud Storage file containing the agent to restore.
  ///
  /// Note: The URI must start with "gs://".
  core.String? agentUri;

  GoogleCloudDialogflowV2RestoreAgentRequest({
    this.agentContent,
    this.agentUri,
  });

  GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(core.Map _json)
      : this(
          agentContent: _json.containsKey('agentContent')
              ? _json['agentContent'] as core.String
              : null,
          agentUri: _json.containsKey('agentUri')
              ? _json['agentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentContent != null) 'agentContent': agentContent!,
        if (agentUri != null) 'agentUri': agentUri!,
      };
}

/// The response message for Agents.SearchAgents.
class GoogleCloudDialogflowV2SearchAgentsResponse {
  /// The list of agents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2Agent>? agents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2SearchAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(core.Map _json)
      : this(
          agents: _json.containsKey('agents')
              ? (_json['agents'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2Agent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agents != null) 'agents': agents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
typedef GoogleCloudDialogflowV2Sentiment = $Shared00;

/// Configures the types of sentiment analysis to perform.
class GoogleCloudDialogflowV2SentimentAnalysisRequestConfig {
  /// Instructs the service to perform sentiment analysis on `query_text`.
  ///
  /// If not provided, sentiment analysis is not performed on `query_text`.
  core.bool? analyzeQueryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig({
    this.analyzeQueryTextSentiment,
  });

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(core.Map _json)
      : this(
          analyzeQueryTextSentiment:
              _json.containsKey('analyzeQueryTextSentiment')
                  ? _json['analyzeQueryTextSentiment'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzeQueryTextSentiment != null)
          'analyzeQueryTextSentiment': analyzeQueryTextSentiment!,
      };
}

/// The result of sentiment analysis.
///
/// Sentiment analysis inspects user input and identifies the prevailing
/// subjective opinion, especially to determine a user's attitude as positive,
/// negative, or neutral. For Participants.DetectIntent, it needs to be
/// configured in DetectIntentRequest.query_params. For
/// Participants.StreamingDetectIntent, it needs to be configured in
/// StreamingDetectIntentRequest.query_params. And for
/// Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it
/// needs to be configured in ConversationProfile.human_agent_assistant_config
class GoogleCloudDialogflowV2SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2Sentiment? queryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisResult({
    this.queryTextSentiment,
  });

  GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(core.Map _json)
      : this(
          queryTextSentiment: _json.containsKey('queryTextSentiment')
              ? GoogleCloudDialogflowV2Sentiment.fromJson(
                  _json['queryTextSentiment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryTextSentiment != null)
          'queryTextSentiment': queryTextSentiment!,
      };
}

/// A session represents a conversation between a Dialogflow agent and an
/// end-user.
///
/// You can create special entities, called session entities, during a session.
/// Session entities can extend or replace custom entity types and only exist
/// during the session that they were created for. All session data, including
/// session entities, is stored by Dialogflow for 20 minutes. For more
/// information, see the
/// [session entity guide](https://cloud.google.com/dialogflow/docs/entities-session).
class GoogleCloudDialogflowV2SessionEntityType {
  /// The collection of entities associated with this session entity type.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

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

  /// The unique identifier of this session entity type.
  ///
  /// Format: `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowV2SessionEntityType.fromJson(core.Map _json)
      : this(
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityOverrideMode: _json.containsKey('entityOverrideMode')
              ? _json['entityOverrideMode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (entityOverrideMode != null)
          'entityOverrideMode': entityOverrideMode!,
        if (name != null) 'name': name!,
      };
}

/// Hints for the speech recognizer to help with recognition in a specific
/// conversation state.
class GoogleCloudDialogflowV2SpeechContext {
  /// Boost for this context compared to other contexts: * If the boost is
  /// positive, Dialogflow will increase the probability that the phrases in
  /// this context are recognized over similar sounding phrases.
  ///
  /// * If the boost is unspecified or non-positive, Dialogflow will not apply
  /// any boost. Dialogflow recommends that you use boosts in the range (0, 20\]
  /// and that you find a value that fits your use case with binary search.
  ///
  /// Optional.
  core.double? boost;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood.
  ///
  /// This list can be used to: * improve accuracy for words and phrases you
  /// expect the user to say, e.g. typical commands for your Dialogflow agent *
  /// add additional words to the speech recognizer vocabulary * ... See the
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/quotas)
  /// for usage limits.
  ///
  /// Optional.
  core.List<core.String>? phrases;

  GoogleCloudDialogflowV2SpeechContext({
    this.boost,
    this.phrases,
  });

  GoogleCloudDialogflowV2SpeechContext.fromJson(core.Map _json)
      : this(
          boost: _json.containsKey('boost')
              ? (_json['boost'] as core.num).toDouble()
              : null,
          phrases: _json.containsKey('phrases')
              ? (_json['phrases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boost != null) 'boost': boost!,
        if (phrases != null) 'phrases': phrases!,
      };
}

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2SpeechToTextConfig {
  /// The speech model used in speech to text.
  ///
  /// `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated
  /// as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and
  /// StreamingAnalyzeContentRequest request.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible for enhanced models.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available. See the
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant: * If an enhanced variant
  /// does not exist for the given model and request language, Dialogflow falls
  /// back to the standard variant. The
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// describes which models have enhanced variants. * If the API caller isn't
  /// eligible for enhanced models, Dialogflow returns an error. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible.
  core.String? speechModelVariant;

  GoogleCloudDialogflowV2SpeechToTextConfig({
    this.speechModelVariant,
  });

  GoogleCloudDialogflowV2SpeechToTextConfig.fromJson(core.Map _json)
      : this(
          speechModelVariant: _json.containsKey('speechModelVariant')
              ? _json['speechModelVariant'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (speechModelVariant != null)
          'speechModelVariant': speechModelVariant!,
      };
}

/// The request message for Participants.SuggestArticles.
class GoogleCloudDialogflowV2SuggestArticlesRequest {
  /// Max number of messages prior to and including latest_message to use as
  /// context when compiling the suggestion.
  ///
  /// By default 20 and at most 50.
  core.int? contextSize;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestArticlesRequest({
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestArticlesRequest.fromJson(core.Map _json)
      : this(
          contextSize: _json.containsKey('contextSize')
              ? _json['contextSize'] as core.int
              : null,
          latestMessage: _json.containsKey('latestMessage')
              ? _json['latestMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contextSize != null) 'contextSize': contextSize!,
        if (latestMessage != null) 'latestMessage': latestMessage!,
      };
}

/// The response message for Participants.SuggestArticles.
class GoogleCloudDialogflowV2SuggestArticlesResponse {
  /// Articles ordered by score in descending order.
  core.List<GoogleCloudDialogflowV2ArticleAnswer>? articleAnswers;

  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestArticlesRequest.context_size field in
  /// the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestArticlesResponse({
    this.articleAnswers,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(core.Map _json)
      : this(
          articleAnswers: _json.containsKey('articleAnswers')
              ? (_json['articleAnswers'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2ArticleAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          contextSize: _json.containsKey('contextSize')
              ? _json['contextSize'] as core.int
              : null,
          latestMessage: _json.containsKey('latestMessage')
              ? _json['latestMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (articleAnswers != null) 'articleAnswers': articleAnswers!,
        if (contextSize != null) 'contextSize': contextSize!,
        if (latestMessage != null) 'latestMessage': latestMessage!,
      };
}

/// The request message for Participants.SuggestFaqAnswers.
class GoogleCloudDialogflowV2SuggestFaqAnswersRequest {
  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// By default 20 and at most 50.
  core.int? contextSize;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestFaqAnswersRequest({
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestFaqAnswersRequest.fromJson(core.Map _json)
      : this(
          contextSize: _json.containsKey('contextSize')
              ? _json['contextSize'] as core.int
              : null,
          latestMessage: _json.containsKey('latestMessage')
              ? _json['latestMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contextSize != null) 'contextSize': contextSize!,
        if (latestMessage != null) 'latestMessage': latestMessage!,
      };
}

/// The request message for Participants.SuggestFaqAnswers.
class GoogleCloudDialogflowV2SuggestFaqAnswersResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestFaqAnswersRequest.context_size field in
  /// the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// Answers extracted from FAQ documents.
  core.List<GoogleCloudDialogflowV2FaqAnswer>? faqAnswers;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestFaqAnswersResponse({
    this.contextSize,
    this.faqAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(core.Map _json)
      : this(
          contextSize: _json.containsKey('contextSize')
              ? _json['contextSize'] as core.int
              : null,
          faqAnswers: _json.containsKey('faqAnswers')
              ? (_json['faqAnswers'] as core.List)
                  .map((value) => GoogleCloudDialogflowV2FaqAnswer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          latestMessage: _json.containsKey('latestMessage')
              ? _json['latestMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contextSize != null) 'contextSize': contextSize!,
        if (faqAnswers != null) 'faqAnswers': faqAnswers!,
        if (latestMessage != null) 'latestMessage': latestMessage!,
      };
}

/// The type of Human Agent Assistant API suggestion to perform, and the maximum
/// number of results to return for that type.
///
/// Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2SuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified feature type.
  /// - "ARTICLE_SUGGESTION" : Run article suggestion model.
  /// - "FAQ" : Run FAQ model.
  core.String? type;

  GoogleCloudDialogflowV2SuggestionFeature({
    this.type,
  });

  GoogleCloudDialogflowV2SuggestionFeature.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// One response of different type of suggestion response which is used in the
/// response of Participants.AnalyzeContent and Participants.AnalyzeContent, as
/// well as HumanAgentAssistantEvent.
class GoogleCloudDialogflowV2SuggestionResult {
  /// Error status if the request failed.
  GoogleRpcStatus? error;

  /// SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.
  GoogleCloudDialogflowV2SuggestArticlesResponse? suggestArticlesResponse;

  /// SuggestFaqAnswersResponse if request is for FAQ_ANSWER.
  GoogleCloudDialogflowV2SuggestFaqAnswersResponse? suggestFaqAnswersResponse;

  GoogleCloudDialogflowV2SuggestionResult({
    this.error,
    this.suggestArticlesResponse,
    this.suggestFaqAnswersResponse,
  });

  GoogleCloudDialogflowV2SuggestionResult.fromJson(core.Map _json)
      : this(
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          suggestArticlesResponse: _json.containsKey('suggestArticlesResponse')
              ? GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
                  _json['suggestArticlesResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          suggestFaqAnswersResponse:
              _json.containsKey('suggestFaqAnswersResponse')
                  ? GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
                      _json['suggestFaqAnswersResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (suggestArticlesResponse != null)
          'suggestArticlesResponse': suggestArticlesResponse!,
        if (suggestFaqAnswersResponse != null)
          'suggestFaqAnswersResponse': suggestFaqAnswersResponse!,
      };
}

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2SynthesizeSpeechConfig {
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
  GoogleCloudDialogflowV2VoiceSelectionParams? voice;

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

  GoogleCloudDialogflowV2SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(core.Map _json)
      : this(
          effectsProfileId: _json.containsKey('effectsProfileId')
              ? (_json['effectsProfileId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pitch: _json.containsKey('pitch')
              ? (_json['pitch'] as core.num).toDouble()
              : null,
          speakingRate: _json.containsKey('speakingRate')
              ? (_json['speakingRate'] as core.num).toDouble()
              : null,
          voice: _json.containsKey('voice')
              ? GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
                  _json['voice'] as core.Map<core.String, core.dynamic>)
              : null,
          volumeGainDb: _json.containsKey('volumeGainDb')
              ? (_json['volumeGainDb'] as core.num).toDouble()
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

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowV2TextInput {
  /// The language of this conversational query.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  ///
  /// Required.
  core.String? languageCode;

  /// The UTF-8 encoded natural language text to be processed.
  ///
  /// Text length must not exceed 256 characters.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowV2TextInput({
    this.languageCode,
    this.text,
  });

  GoogleCloudDialogflowV2TextInput.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
}

/// Instructs the speech synthesizer on how to generate the output audio
/// content.
class GoogleCloudDialogflowV2TextToSpeechSettings {
  /// Indicates whether text to speech is enabled.
  ///
  /// Even when this field is false, other settings in this proto are still
  /// retained.
  ///
  /// Optional.
  core.bool? enableTextToSpeech;

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
  core.String? outputAudioEncoding;

  /// The synthesis sample rate (in hertz) for this audio.
  ///
  /// If not provided, then the synthesizer will use the default sample rate
  /// based on the audio encoding. If this is different from the voice's natural
  /// sample rate, then the synthesizer will honor this request by converting to
  /// the desired sample rate (which might result in worse audio quality).
  ///
  /// Optional.
  core.int? sampleRateHertz;

  /// Configuration of how speech should be synthesized, mapping from language
  /// (https://cloud.google.com/dialogflow/docs/reference/language) to
  /// SynthesizeSpeechConfig.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudDialogflowV2SynthesizeSpeechConfig>?
      synthesizeSpeechConfigs;

  GoogleCloudDialogflowV2TextToSpeechSettings({
    this.enableTextToSpeech,
    this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  GoogleCloudDialogflowV2TextToSpeechSettings.fromJson(core.Map _json)
      : this(
          enableTextToSpeech: _json.containsKey('enableTextToSpeech')
              ? _json['enableTextToSpeech'] as core.bool
              : null,
          outputAudioEncoding: _json.containsKey('outputAudioEncoding')
              ? _json['outputAudioEncoding'] as core.String
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
          synthesizeSpeechConfigs: _json.containsKey('synthesizeSpeechConfigs')
              ? (_json['synthesizeSpeechConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableTextToSpeech != null)
          'enableTextToSpeech': enableTextToSpeech!,
        if (outputAudioEncoding != null)
          'outputAudioEncoding': outputAudioEncoding!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
        if (synthesizeSpeechConfigs != null)
          'synthesizeSpeechConfigs': synthesizeSpeechConfigs!,
      };
}

/// The request message for Agents.TrainAgent.
typedef GoogleCloudDialogflowV2TrainAgentRequest = $Empty;

/// Represents a single validation error.
class GoogleCloudDialogflowV2ValidationError {
  /// The names of the entries that the error is associated with.
  ///
  /// Format: - "projects//agent", if the error is associated with the entire
  /// agent. - "projects//agent/intents/", if the error is associated with
  /// certain intents. - "projects//agent/intents//trainingPhrases/", if the
  /// error is associated with certain intent training phrases. -
  /// "projects//agent/intents//parameters/", if the error is associated with
  /// certain intent parameters. - "projects//agent/entities/", if the error is
  /// associated with certain entities.
  core.List<core.String>? entries;

  /// The detailed error message.
  core.String? errorMessage;

  /// The severity of the error.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "INFO" : The agent doesn't follow Dialogflow best practices.
  /// - "WARNING" : The agent may not behave as expected.
  /// - "ERROR" : The agent may experience partial failures.
  /// - "CRITICAL" : The agent may completely fail.
  core.String? severity;

  GoogleCloudDialogflowV2ValidationError({
    this.entries,
    this.errorMessage,
    this.severity,
  });

  GoogleCloudDialogflowV2ValidationError.fromJson(core.Map _json)
      : this(
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (severity != null) 'severity': severity!,
      };
}

/// Represents the output of agent validation.
class GoogleCloudDialogflowV2ValidationResult {
  /// Contains all validation errors.
  core.List<GoogleCloudDialogflowV2ValidationError>? validationErrors;

  GoogleCloudDialogflowV2ValidationResult({
    this.validationErrors,
  });

  GoogleCloudDialogflowV2ValidationResult.fromJson(core.Map _json)
      : this(
          validationErrors: _json.containsKey('validationErrors')
              ? (_json['validationErrors'] as core.List)
                  .map((value) =>
                      GoogleCloudDialogflowV2ValidationError.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (validationErrors != null) 'validationErrors': validationErrors!,
      };
}

/// You can create multiple versions of your agent and publish them to separate
/// environments.
///
/// When you edit an agent, you are editing the draft agent. At any point, you
/// can save the draft agent as an agent version, which is an immutable snapshot
/// of your agent. When you save the draft agent, it is published to the default
/// environment. When you create agent versions, you can publish them to custom
/// environments. You can create a variety of custom environments for: - testing
/// - development - production - etc. For more information, see the
/// [versions and environments guide](https://cloud.google.com/dialogflow/docs/agents-versions).
class GoogleCloudDialogflowV2Version {
  /// The creation time of this version.
  ///
  /// This field is read-only, i.e., it cannot be set by create and update
  /// methods.
  ///
  /// Output only.
  core.String? createTime;

  /// The developer-provided description of this version.
  ///
  /// Optional.
  core.String? description;

  /// The unique identifier of this agent version.
  ///
  /// Supported formats: - `projects//agent/versions/` -
  /// `projects//locations//agent/versions/`
  ///
  /// Output only.
  core.String? name;

  /// The status of this version.
  ///
  /// This field is read-only and cannot be set by create and update methods.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VERSION_STATUS_UNSPECIFIED" : Not specified. This value is not used.
  /// - "IN_PROGRESS" : Version is not ready to serve (e.g. training is in
  /// progress).
  /// - "READY" : Version is ready to serve.
  /// - "FAILED" : Version training failed.
  core.String? status;

  /// The sequential number of this version.
  ///
  /// This field is read-only which means it cannot be set by create and update
  /// methods.
  ///
  /// Output only.
  core.int? versionNumber;

  GoogleCloudDialogflowV2Version({
    this.createTime,
    this.description,
    this.name,
    this.status,
    this.versionNumber,
  });

  GoogleCloudDialogflowV2Version.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          versionNumber: _json.containsKey('versionNumber')
              ? _json['versionNumber'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (versionNumber != null) 'versionNumber': versionNumber!,
      };
}

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2VoiceSelectionParams {
  /// The name of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and ssml_gender.
  ///
  /// Optional.
  core.String? name;

  /// The preferred gender of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and name. Note that this is only a preference, not
  /// requirement. If a voice of the appropriate gender is not available, the
  /// synthesizer should substitute a voice with a different gender rather than
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

  GoogleCloudDialogflowV2VoiceSelectionParams({
    this.name,
    this.ssmlGender,
  });

  GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ssmlGender: _json.containsKey('ssmlGender')
              ? _json['ssmlGender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (ssmlGender != null) 'ssmlGender': ssmlGender!,
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

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents Google Cloud Platform location.
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

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

  /// The normal response of the operation in case of success.
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

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
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
