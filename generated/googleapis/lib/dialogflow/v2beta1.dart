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

/// Dialogflow API - v2beta1
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
///     - [ProjectsConversationsSuggestionsResource]
///   - [ProjectsGeneratorsResource]
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
///       - [ProjectsLocationsConversationsSuggestionsResource]
///     - [ProjectsLocationsEncryptionSpecResource]
///     - [ProjectsLocationsGeneratorsResource]
///     - [ProjectsLocationsKnowledgeBasesResource]
///       - [ProjectsLocationsKnowledgeBasesDocumentsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPhoneNumbersResource]
///     - [ProjectsLocationsSipTrunksResource]
///     - [ProjectsLocationsStatelessSuggestionResource]
///     - [ProjectsLocationsSuggestionsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsPhoneNumbersResource]
///   - [ProjectsSuggestionsResource]
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

  ProjectsAgentResource get agent => ProjectsAgentResource(_requester);
  ProjectsAnswerRecordsResource get answerRecords =>
      ProjectsAnswerRecordsResource(_requester);
  ProjectsConversationProfilesResource get conversationProfiles =>
      ProjectsConversationProfilesResource(_requester);
  ProjectsConversationsResource get conversations =>
      ProjectsConversationsResource(_requester);
  ProjectsGeneratorsResource get generators =>
      ProjectsGeneratorsResource(_requester);
  ProjectsKnowledgeBasesResource get knowledgeBases =>
      ProjectsKnowledgeBasesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsPhoneNumbersResource get phoneNumbers =>
      ProjectsPhoneNumbersResource(_requester);
  ProjectsSuggestionsResource get suggestions =>
      ProjectsSuggestionsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/` or `projects//locations/`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Agent> getAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [parent] - Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Agent> setAgent(
    GoogleCloudDialogflowV2beta1Agent request,
    core.String parent, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1ExportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:export';

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

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Supported formats: -
  /// `projects//agent/fulfillment` - `projects//locations//agent/fulfillment`
  /// Value must have pattern `^projects/\[^/\]+/agent/fulfillment$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Fulfillment> getFulfillment(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets agent validation result.
  ///
  /// Agent validation is performed during training time and is updated
  /// automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/` or `projects//locations/`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ValidationResult>
  getValidationResult(
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1ImportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:import';

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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1RestoreAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:restore';

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
  /// [parent] - Required. The project to list agents from. Format: `projects/`
  /// or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchAgentsResponse> search(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1TrainAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:train';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Fulfillment> updateFulfillment(
    GoogleCloudDialogflowV2beta1Fulfillment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// for. Supported formats: - `projects//agent`, -
  /// `projects//locations//agent`.
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
    GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/entityTypes:batchDelete';

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
  /// types in. Supported formats: - `projects//agent` -
  /// `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/entityTypes:batchUpdate';

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
  /// [parent] - Required. The agent to create a entity type for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> create(
    GoogleCloudDialogflowV2beta1EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Supported formats: -
  /// `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// methods. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> patch(
    GoogleCloudDialogflowV2beta1EntityType request,
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

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
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

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

  /// Updates or creates multiple entities in the specified entity type.
  ///
  /// This method does not affect entities in the entity type that aren't
  /// explicitly specified in the request. Note: You should always train an
  /// agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
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
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> create(
    GoogleCloudDialogflowV2beta1Environment request,
    core.String parent, {
    core.String? environmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment to delete. / Format: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment. Supported formats: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the history of the specified environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment to retrieve history for.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EnvironmentHistory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EnvironmentHistory> getHistory(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EnvironmentHistory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all non-draft environments of the specified agent.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListEnvironmentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified agent environment.
  ///
  /// This method allows you to deploy new agent versions into the environment.
  /// When an environment is pointed to a new agent version by setting
  /// `environment.agent_version`, the environment is temporarily set to the
  /// `LOADING` state. During that time, the environment keeps on serving the
  /// previous version of the agent. After the new agent version is done
  /// loading, the environment is set back to the `RUNNING` state. You can use
  /// "-" as Environment ID in environment name to update version in "draft"
  /// environment. WARNING: this will negate all recent changes to draft and
  /// can't be undone. You may want to save the draft to a version before
  /// calling this function.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent environment.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - Optional. This field is used to
  /// prevent accidental overwrite of the draft environment, which is an
  /// operation that cannot be undone. To confirm that the caller desires this
  /// overwrite, this field must be explicitly set to true when updating the
  /// draft environment (environment ID = `-`).
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> patch(
    GoogleCloudDialogflowV2beta1Environment request,
    core.String name, {
    core.bool? allowLoadToDraftAndDiscardChanges,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowLoadToDraftAndDiscardChanges != null)
        'allowLoadToDraftAndDiscardChanges': [
          '${allowLoadToDraftAndDiscardChanges}',
        ],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListIntentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified we assume default 'draft' environment.
  /// If \`User ID\` is not specified, we assume default '-' user.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft' environment
  /// (\`Environment ID\` might be referred to as environment name at some
  /// places). If \`User ID\` is not specified, we are using "-". It's up to the
  /// API caller to choose an appropriate \`Session ID\` and \`User Id\`. They
  /// can be a random number or some type of user and session identifiers
  /// (preferably hashed). The length of the \`Session ID\` and \`User ID\` must
  /// not exceed 36 characters. For more information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> create(
    GoogleCloudDialogflowV2beta1Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListContextsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Supported
  /// formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user. The following context names are
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> patch(
    GoogleCloudDialogflowV2beta1Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> create(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Supported formats:
  /// - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> patch(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// for. Supported formats: - `projects//agent` - `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

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
  /// Supported formats: - `projects//agent` - `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

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
  /// [parent] - Required. The agent to create a intent for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> create(
    GoogleCloudDialogflowV2beta1Intent request,
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// direct or indirect followup intents, we also delete them. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Supported formats: -
  /// `projects//agent/intents/` - `projects//locations//agent/intents/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> get(
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListIntentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> patch(
    GoogleCloudDialogflowV2beta1Intent request,
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> create(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [filter] - The filter expression used to filter knowledge bases returned
  /// by the list method. The expression has the following syntax: \[AND \] ...
  /// The following fields and operators are supported: * display_name with
  /// has(:) operator * language_code with equals(=) operator Examples: *
  /// 'language_code=en-us' matches knowledge bases with en-us language code. *
  /// 'display_name:articles' matches knowledge bases whose display name
  /// contains "articles". * 'display_name:"Best Articles"' matches knowledge
  /// bases whose display name contains "Best Articles". * 'language_code=en-gb
  /// AND display_name=articles' matches all knowledge bases whose display name
  /// contains "articles" and whose language code is "en-gb". Note: An empty
  /// filter string (i.e. "") is a no-op and will result in no filtering. For
  /// more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse> list(
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

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> patch(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to create a document for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [importGcsCustomMetadata] - Whether to import custom metadata from Google
  /// Cloud Storage. Only valid when the document source is Google Cloud Storage
  /// URI.
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String parent, {
    core.bool? importGcsCustomMetadata,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importGcsCustomMetadata != null)
        'importGcsCustomMetadata': ['${importGcsCustomMetadata}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified document.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter documents returned by the
  /// list method. The expression has the following syntax: \[AND \] ... The
  /// following fields and operators are supported: * knowledge_types with
  /// has(:) operator * display_name with has(:) operator * state with equals(=)
  /// operator Examples: * "knowledge_types:FAQ" matches documents with FAQ
  /// knowledge type. * "display_name:customer" matches documents whose display
  /// name contains "customer". * "state=ACTIVE" matches documents with ACTIVE
  /// state. * "knowledge_types:FAQ AND state=ACTIVE" matches all active FAQ
  /// documents. For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListDocumentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. Note: If the document
  /// source is Google Cloud Storage URI, its metadata will be replaced with the
  /// custom metadata from Google Cloud Storage if the
  /// `import_gcs_custom_metadata` field is set to true in the request. This
  /// method is a \[long-running
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
    GoogleCloudDialogflowV2beta1ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':reload';

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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified we assume default 'draft' environment.
  /// If \`User ID\` is not specified, we assume default '-' user.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft' environment
  /// (\`Environment ID\` might be referred to as environment name at some
  /// places). If \`User ID\` is not specified, we are using "-". It's up to the
  /// API caller to choose an appropriate \`Session ID\` and \`User Id\`. They
  /// can be a random number or some type of user and session identifiers
  /// (preferably hashed). The length of the \`Session ID\` and \`User ID\` must
  /// not exceed 36 characters. For more information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> create(
    GoogleCloudDialogflowV2beta1Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListContextsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Supported
  /// formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user. The following context names are
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> patch(
    GoogleCloudDialogflowV2beta1Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> create(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Supported formats:
  /// - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> patch(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> create(
    GoogleCloudDialogflowV2beta1Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListVersionsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> patch(
    GoogleCloudDialogflowV2beta1Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsAnswerRecordsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a specific answer record.
  ///
  /// Deprecated.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the answer record to retrieve. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern `^projects/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleCloudDialogflowV2beta1AnswerRecord> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all answer records in the specified project in reverse
  /// chronological order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all answer records for in reverse
  /// chronological order. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters to restrict results to specific answer
  /// records. The expression has the following syntax: \[AND \] ... The
  /// following fields and operators are supported: * conversation_id with
  /// equals(=) operator Examples: * "conversation_id=bar" matches answer
  /// records in the projects/foo/locations/global/conversations/bar
  /// conversation (assuming the parent is projects/foo/locations/global). For
  /// more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified answer record.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this answer record. Required for
  /// AnswerRecords.UpdateAnswerRecord method. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern `^projects/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1AnswerRecord> patch(
    GoogleCloudDialogflowV2beta1AnswerRecord request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Clears a suggestion feature from a conversation profile for the given
  /// participant role.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ClearSuggestionFeatureConfigOperationMetadata - `response`:
  /// ConversationProfile
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - Required. The Conversation Profile to add or
  /// update the suggestion feature config. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> clearSuggestionFeatureConfig(
    GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversationProfile') +
        ':clearSuggestionFeatureConfig';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> create(
    GoogleCloudDialogflowV2beta1ConversationProfile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowV2beta1ListConversationProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListConversationProfilesResponse>
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
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListConversationProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> patch(
    GoogleCloudDialogflowV2beta1ConversationProfile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Adds or updates a suggestion feature in a conversation profile.
  ///
  /// If the conversation profile contains the type of suggestion feature for
  /// the participant role, it will update it. Otherwise it will insert the
  /// suggestion feature. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: SetSuggestionFeatureConfigOperationMetadata - `response`:
  /// ConversationProfile If a long running operation to add or update
  /// suggestion feature config for the same conversation profile, participant
  /// role and suggestion feature type exists, please cancel the existing long
  /// running operation before sending such request, otherwise the request will
  /// be rejected.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - Required. The Conversation Profile to add or
  /// update the suggestion feature config. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> setSuggestionFeatureConfig(
    GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversationProfile') +
        ':setSuggestionFeatureConfig';

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

class ProjectsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsMessagesResource get messages =>
      ProjectsConversationsMessagesResource(_requester);
  ProjectsConversationsParticipantsResource get participants =>
      ProjectsConversationsParticipantsResource(_requester);
  ProjectsConversationsSuggestionsResource get suggestions =>
      ProjectsConversationsSuggestionsResource(_requester);

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> complete(
    GoogleCloudDialogflowV2beta1CompleteConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':complete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// be compliant with the regression formula `a-zA-Z*` with the characters
  /// length in range of \[3,64\]. If the field is provided, the caller is
  /// responsible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> create(
    GoogleCloudDialogflowV2beta1Conversation request,
    core.String parent, {
    core.String? conversationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conversationId != null) 'conversationId': [conversationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all conversations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project from which to list all conversation.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters conversations listed
  /// in the response. Only `lifecycle_state` can be filtered on in this way.
  /// For example, the following expression only returns `COMPLETED`
  /// conversations: `lifecycle_state = "COMPLETED"` For more information about
  /// filtering, see [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListConversationsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsMessagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Batch ingests messages to conversation.
  ///
  /// Customers can use this RPC to ingest historical messages to conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the conversation to create
  /// message. Format: `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse>
  batchCreate(
    GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/messages:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

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
  /// "2017-01-15T01:30:15.01Z"`. For more information about filtering, see
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListMessagesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListMessagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1AnalyzeContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1AnalyzeContentResponse>
  analyzeContent(
    GoogleCloudDialogflowV2beta1AnalyzeContentRequest request,
    core.String participant, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnalyzeContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> create(
    GoogleCloudDialogflowV2beta1Participant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListParticipantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListParticipantsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListParticipantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> patch(
    GoogleCloudDialogflowV2beta1Participant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsParticipantsSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// use SuggestArticles and SuggestFaqAnswers instead.
  ///
  /// Gets suggestions for a participant based on specific historical messages.
  /// Note that ListSuggestions will only list the auto-generated suggestions,
  /// while CompileSuggestion will try to compile suggestion based on the
  /// provided conversation context in the real time.
  ///
  /// Deprecated.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1CompileSuggestionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleCloudDialogflowV2beta1CompileSuggestionResponse> compile(
    GoogleCloudDialogflowV2beta1CompileSuggestionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/suggestions:compile';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1CompileSuggestionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use inline suggestion, event based suggestion or Suggestion*
  /// API instead.
  ///
  /// See HumanAgentAssistantConfig.name for more details. Removal Date:
  /// 2020-09-01. Retrieves suggestions for live agents. This method should be
  /// used by human agent client software to fetch auto generated suggestions in
  /// real-time, while the conversation with an end user is in progress. The
  /// functionality is implemented in terms of the
  /// [list pagination](https://cloud.google.com/apis/design/design_patterns#list_pagination)
  /// design pattern. The client app should use the `next_page_token` field to
  /// fetch the next batch of suggestions. `suggestions` are sorted by
  /// `create_time` in descending order. To fetch latest suggestion, just set
  /// `page_size` to 1. To fetch new suggestions without duplication, send
  /// request with filter `create_time_epoch_microseconds > [first item's
  /// create_time of previous request]` and empty page_token.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestions for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter on suggestions fields. Currently predicates on
  /// `create_time` and `create_time_epoch_microseconds` are supported.
  /// `create_time` only support milliseconds accuracy. E.g.,
  /// `create_time_epoch_microseconds > 1551790877964485` or `create_time >
  /// "2017-01-15T01:30:15.01Z"` For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. The default value is 100; the maximum value is 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1ListSuggestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleCloudDialogflowV2beta1ListSuggestionsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/suggestions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSuggestionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets suggested articles for a participant based on specific historical
  /// messages.
  ///
  /// Note that ListSuggestions will only list the auto-generated suggestions,
  /// while CompileSuggestion will try to compile suggestion based on the
  /// provided conversation context in the real time.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SuggestArticlesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestArticlesResponse>
  suggestArticles(
    GoogleCloudDialogflowV2beta1SuggestArticlesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestArticles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestArticlesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse>
  suggestFaqAnswers(
    GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets knowledge assist suggestions based on historical messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestions for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse>
  suggestKnowledgeAssist(
    GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestKnowledgeAssist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets smart replies for a participant based on specific historical
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse>
  suggestSmartReplies(
    GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestSmartReplies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates all the suggestions using generators configured in the
  /// conversation profile.
  ///
  /// A generator is used only if its trigger event is matched.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Required. The conversation for which the suggestions are
  /// generated. Format: `projects//locations//conversations/`. The conversation
  /// must be created with a conversation profile which has generators
  /// configured in it to be able to get suggestions.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse>
  generate(
    GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get answers for the given query based on knowledge documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Optional. The conversation (between human agent and end
  /// user) where the search request is triggered. Format:
  /// `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchKnowledgeResponse>
  searchKnowledge(
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Suggest summary for a conversation based on specific historical messages.
  ///
  /// The range of the messages to be used for summary can be specified in the
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Required. The conversation to fetch suggestion for.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse>
  suggestConversationSummary(
    GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:suggestConversationSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsGeneratorsResource {
  final commons.ApiRequester _requester;

  ProjectsGeneratorsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a generator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project/location to create generator for. Format:
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [generatorId] - Optional. The ID to use for the generator, which will
  /// become the final component of the generator's resource name. The generator
  /// ID must be compliant with the regression formula `a-zA-Z*` with the
  /// characters length in range of \[3,64\]. If the field is not provided, an
  /// Id will be auto-generated. If the field is provided, the caller is
  /// responsible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Generator> create(
    GoogleCloudDialogflowV2beta1Generator request,
    core.String parent, {
    core.String? generatorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generatorId != null) 'generatorId': [generatorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists generators.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project/location to list generators for. Format:
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of conversation models to return in
  /// a single page. Default to 10.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListGeneratorsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListGeneratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> create(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter knowledge bases returned
  /// by the list method. The expression has the following syntax: \[AND \] ...
  /// The following fields and operators are supported: * display_name with
  /// has(:) operator * language_code with equals(=) operator Examples: *
  /// 'language_code=en-us' matches knowledge bases with en-us language code. *
  /// 'display_name:articles' matches knowledge bases whose display name
  /// contains "articles". * 'display_name:"Best Articles"' matches knowledge
  /// bases whose display name contains "Best Articles". * 'language_code=en-gb
  /// AND display_name=articles' matches all knowledge bases whose display name
  /// contains "articles" and whose language code is "en-gb". Note: An empty
  /// filter string (i.e. "") is a no-op and will result in no filtering. For
  /// more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse> list(
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

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> patch(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to create a document for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [importGcsCustomMetadata] - Whether to import custom metadata from Google
  /// Cloud Storage. Only valid when the document source is Google Cloud Storage
  /// URI.
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String parent, {
    core.bool? importGcsCustomMetadata,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importGcsCustomMetadata != null)
        'importGcsCustomMetadata': ['${importGcsCustomMetadata}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified document.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create documents by importing data from external sources.
  ///
  /// Dialogflow supports up to 350 documents in each request. If you try to
  /// import more, Dialogflow will return an error. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`:
  /// ImportDocumentsResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to import documents into. Format:
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowV2beta1ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter documents returned by the
  /// list method. The expression has the following syntax: \[AND \] ... The
  /// following fields and operators are supported: * knowledge_types with
  /// has(:) operator * display_name with has(:) operator * state with equals(=)
  /// operator Examples: * "knowledge_types:FAQ" matches documents with FAQ
  /// knowledge type. * "display_name:customer" matches documents whose display
  /// name contains "customer". * "state=ACTIVE" matches documents with ACTIVE
  /// state. * "knowledge_types:FAQ AND state=ACTIVE" matches all active FAQ
  /// documents. For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListDocumentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. Note: If the document
  /// source is Google Cloud Storage URI, its metadata will be replaced with the
  /// custom metadata from Google Cloud Storage if the
  /// `import_gcs_custom_metadata` field is set to true in the request. This
  /// method is a \[long-running
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
    GoogleCloudDialogflowV2beta1ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':reload';

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
  ProjectsLocationsEncryptionSpecResource get encryptionSpec =>
      ProjectsLocationsEncryptionSpecResource(_requester);
  ProjectsLocationsGeneratorsResource get generators =>
      ProjectsLocationsGeneratorsResource(_requester);
  ProjectsLocationsKnowledgeBasesResource get knowledgeBases =>
      ProjectsLocationsKnowledgeBasesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPhoneNumbersResource get phoneNumbers =>
      ProjectsLocationsPhoneNumbersResource(_requester);
  ProjectsLocationsSipTrunksResource get sipTrunks =>
      ProjectsLocationsSipTrunksResource(_requester);
  ProjectsLocationsStatelessSuggestionResource get statelessSuggestion =>
      ProjectsLocationsStatelessSuggestionResource(_requester);
  ProjectsLocationsSuggestionsResource get suggestions =>
      ProjectsLocationsSuggestionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/` or `projects//locations/`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Agent> getAgent(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets location-level encryption key specification.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the encryption spec resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/encryptionSpec$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1EncryptionSpec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EncryptionSpec> getEncryptionSpec(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EncryptionSpec.fromJson(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [parent] - Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Agent> setAgent(
    GoogleCloudDialogflowV2beta1Agent request,
    core.String parent, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1ExportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:export';

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

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Supported formats: -
  /// `projects//agent/fulfillment` - `projects//locations//agent/fulfillment`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/fulfillment$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Fulfillment> getFulfillment(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets agent validation result.
  ///
  /// Agent validation is performed during training time and is updated
  /// automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/` or `projects//locations/`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ValidationResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ValidationResult>
  getValidationResult(
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1ImportAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:import';

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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1RestoreAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:restore';

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
  /// [parent] - Required. The project to list agents from. Format: `projects/`
  /// or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchAgentsResponse> search(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with. Format: `projects/` or `projects//locations/`.
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
    GoogleCloudDialogflowV2beta1TrainAgentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/agent:train';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Fulfillment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Fulfillment> updateFulfillment(
    GoogleCloudDialogflowV2beta1Fulfillment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// for. Supported formats: - `projects//agent`, -
  /// `projects//locations//agent`.
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
    GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/entityTypes:batchDelete';

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
  /// types in. Supported formats: - `projects//agent` -
  /// `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/entityTypes:batchUpdate';

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
  /// [parent] - Required. The agent to create a entity type for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> create(
    GoogleCloudDialogflowV2beta1EntityType request,
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified entity type.
  ///
  /// Note: You should always train an agent prior to sending it queries. See
  /// the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Supported formats: -
  /// `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// methods. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EntityType> patch(
    GoogleCloudDialogflowV2beta1EntityType request,
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

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
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

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

  /// Updates or creates multiple entities in the specified entity type.
  ///
  /// This method does not affect entities in the entity type that aren't
  /// explicitly specified in the request. Note: You should always train an
  /// agent prior to sending it queries. See the
  /// [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
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
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
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
    GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> create(
    GoogleCloudDialogflowV2beta1Environment request,
    core.String parent, {
    core.String? environmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment to delete. / Format: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified agent environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the environment. Supported formats: -
  /// `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the history of the specified environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the environment to retrieve history for.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1EnvironmentHistory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1EnvironmentHistory> getHistory(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1EnvironmentHistory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all non-draft environments of the specified agent.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListEnvironmentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified agent environment.
  ///
  /// This method allows you to deploy new agent versions into the environment.
  /// When an environment is pointed to a new agent version by setting
  /// `environment.agent_version`, the environment is temporarily set to the
  /// `LOADING` state. During that time, the environment keeps on serving the
  /// previous version of the agent. After the new agent version is done
  /// loading, the environment is set back to the `RUNNING` state. You can use
  /// "-" as Environment ID in environment name to update version in "draft"
  /// environment. WARNING: this will negate all recent changes to draft and
  /// can't be undone. You may want to save the draft to a version before
  /// calling this function.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique identifier of this agent environment.
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - Optional. This field is used to
  /// prevent accidental overwrite of the draft environment, which is an
  /// operation that cannot be undone. To confirm that the caller desires this
  /// overwrite, this field must be explicitly set to true when updating the
  /// draft environment (environment ID = `-`).
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Environment> patch(
    GoogleCloudDialogflowV2beta1Environment request,
    core.String name, {
    core.bool? allowLoadToDraftAndDiscardChanges,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowLoadToDraftAndDiscardChanges != null)
        'allowLoadToDraftAndDiscardChanges': [
          '${allowLoadToDraftAndDiscardChanges}',
        ],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListIntentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
        _requester,
      );
  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource
  get entityTypes =>
      ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource(
        _requester,
      );

  ProjectsLocationsAgentEnvironmentsUsersSessionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified we assume default 'draft' environment.
  /// If \`User ID\` is not specified, we assume default '-' user.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft' environment
  /// (\`Environment ID\` might be referred to as environment name at some
  /// places). If \`User ID\` is not specified, we are using "-". It's up to the
  /// API caller to choose an appropriate \`Session ID\` and \`User Id\`. They
  /// can be a random number or some type of user and session identifiers
  /// (preferably hashed). The length of the \`Session ID\` and \`User ID\` must
  /// not exceed 36 characters. For more information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> create(
    GoogleCloudDialogflowV2beta1Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListContextsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Supported
  /// formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user. The following context names are
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> patch(
    GoogleCloudDialogflowV2beta1Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> create(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Supported formats:
  /// - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> patch(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// for. Supported formats: - `projects//agent` - `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

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
  /// Supported formats: - `projects//agent` - `projects//locations//agent`
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
    GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

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
  /// [parent] - Required. The agent to create a intent for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> create(
    GoogleCloudDialogflowV2beta1Intent request,
    core.String parent, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// direct or indirect followup intents, we also delete them. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Supported formats: -
  /// `projects//agent/intents/` - `projects//locations//agent/intents/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> get(
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListIntentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Intent> patch(
    GoogleCloudDialogflowV2beta1Intent request,
    core.String name, {
    core.String? intentView,
    core.String? languageCode,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (intentView != null) 'intentView': [intentView],
      if (languageCode != null) 'languageCode': [languageCode],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified we assume default 'draft' environment.
  /// If \`User ID\` is not specified, we assume default '-' user.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft' environment
  /// (\`Environment ID\` might be referred to as environment name at some
  /// places). If \`User ID\` is not specified, we are using "-". It's up to the
  /// API caller to choose an appropriate \`Session ID\` and \`User Id\`. They
  /// can be a random number or some type of user and session identifiers
  /// (preferably hashed). The length of the \`Session ID\` and \`User ID\` must
  /// not exceed 36 characters. For more information, see the
  /// [API interactions guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Note: Always use agent versions for production traffic. See
  /// [Versions and environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1DetectIntentResponse> detectIntent(
    GoogleCloudDialogflowV2beta1DetectIntentRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> create(
    GoogleCloudDialogflowV2beta1Context request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, If
  /// `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListContextsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Supported
  /// formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user. The following context names are
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Context> patch(
    GoogleCloudDialogflowV2beta1Context request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> create(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified session entity type.
  ///
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Supported formats:
  /// - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - \`projects//agent/sessions/, -
  /// \`projects//locations//agent/sessions/\`, -
  /// \`projects//agent/environments//users//sessions/\`, -
  /// \`projects//locations//agent/environments//users//sessions/\`, If
  /// \`Location ID\` is not specified we assume default 'us' location. If
  /// \`Environment ID\` is not specified, we assume default 'draft'
  /// environment. If \`User ID\` is not specified, we assume default '-' user.
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Supported formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SessionEntityType> patch(
    GoogleCloudDialogflowV2beta1SessionEntityType request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> create(
    GoogleCloudDialogflowV2beta1Version request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListVersionsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Version> patch(
    GoogleCloudDialogflowV2beta1Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnswerRecordsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a specific answer record.
  ///
  /// Deprecated.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the answer record to retrieve. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GoogleCloudDialogflowV2beta1AnswerRecord> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all answer records in the specified project in reverse
  /// chronological order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all answer records for in reverse
  /// chronological order. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters to restrict results to specific answer
  /// records. The expression has the following syntax: \[AND \] ... The
  /// following fields and operators are supported: * conversation_id with
  /// equals(=) operator Examples: * "conversation_id=bar" matches answer
  /// records in the projects/foo/locations/global/conversations/bar
  /// conversation (assuming the parent is projects/foo/locations/global). For
  /// more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified answer record.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this answer record. Required for
  /// AnswerRecords.UpdateAnswerRecord method. Format:
  /// `projects//locations//answerRecords/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1AnswerRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1AnswerRecord> patch(
    GoogleCloudDialogflowV2beta1AnswerRecord request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Clears a suggestion feature from a conversation profile for the given
  /// participant role.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: ClearSuggestionFeatureConfigOperationMetadata - `response`:
  /// ConversationProfile
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - Required. The Conversation Profile to add or
  /// update the suggestion feature config. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> clearSuggestionFeatureConfig(
    GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversationProfile') +
        ':clearSuggestionFeatureConfig';

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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> create(
    GoogleCloudDialogflowV2beta1ConversationProfile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [GoogleCloudDialogflowV2beta1ListConversationProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListConversationProfilesResponse>
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
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListConversationProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ConversationProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ConversationProfile> patch(
    GoogleCloudDialogflowV2beta1ConversationProfile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Adds or updates a suggestion feature in a conversation profile.
  ///
  /// If the conversation profile contains the type of suggestion feature for
  /// the participant role, it will update it. Otherwise it will insert the
  /// suggestion feature. This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: SetSuggestionFeatureConfigOperationMetadata - `response`:
  /// ConversationProfile If a long running operation to add or update
  /// suggestion feature config for the same conversation profile, participant
  /// role and suggestion feature type exists, please cancel the existing long
  /// running operation before sending such request, otherwise the request will
  /// be rejected.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - Required. The Conversation Profile to add or
  /// update the suggestion feature config. Format:
  /// `projects//locations//conversationProfiles/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> setSuggestionFeatureConfig(
    GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversationProfile') +
        ':setSuggestionFeatureConfig';

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

class ProjectsLocationsConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsMessagesResource get messages =>
      ProjectsLocationsConversationsMessagesResource(_requester);
  ProjectsLocationsConversationsParticipantsResource get participants =>
      ProjectsLocationsConversationsParticipantsResource(_requester);
  ProjectsLocationsConversationsSuggestionsResource get suggestions =>
      ProjectsLocationsConversationsSuggestionsResource(_requester);

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
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> complete(
    GoogleCloudDialogflowV2beta1CompleteConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':complete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// be compliant with the regression formula `a-zA-Z*` with the characters
  /// length in range of \[3,64\]. If the field is provided, the caller is
  /// responsible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> create(
    GoogleCloudDialogflowV2beta1Conversation request,
    core.String parent, {
    core.String? conversationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conversationId != null) 'conversationId': [conversationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Conversation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Data ingestion API.
  ///
  /// Ingests context references for an existing conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Required. Resource identifier of the conversation to
  /// ingest context information for. Format:
  /// `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1IngestContextReferencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1IngestContextReferencesResponse>
  ingestContextReferences(
    GoogleCloudDialogflowV2beta1IngestContextReferencesRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        ':ingestContextReferences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1IngestContextReferencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all conversations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project from which to list all conversation.
  /// Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters conversations listed
  /// in the response. Only `lifecycle_state` can be filtered on in this way.
  /// For example, the following expression only returns `COMPLETED`
  /// conversations: `lifecycle_state = "COMPLETED"` For more information about
  /// filtering, see [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListConversationsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsMessagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Batch ingests messages to conversation.
  ///
  /// Customers can use this RPC to ingest historical messages to conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource identifier of the conversation to create
  /// message. Format: `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse>
  batchCreate(
    GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/messages:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

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
  /// "2017-01-15T01:30:15.01Z"`. For more information about filtering, see
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListMessagesResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListMessagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsParticipantsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsParticipantsSuggestionsResource
  get suggestions =>
      ProjectsLocationsConversationsParticipantsSuggestionsResource(_requester);

  ProjectsLocationsConversationsParticipantsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDialogflowV2beta1AnalyzeContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1AnalyzeContentResponse>
  analyzeContent(
    GoogleCloudDialogflowV2beta1AnalyzeContentRequest request,
    core.String participant, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1AnalyzeContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> create(
    GoogleCloudDialogflowV2beta1Participant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListParticipantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListParticipantsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListParticipantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Participant> patch(
    GoogleCloudDialogflowV2beta1Participant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsParticipantsSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets suggested articles for a participant based on specific historical
  /// messages.
  ///
  /// Note that ListSuggestions will only list the auto-generated suggestions,
  /// while CompileSuggestion will try to compile suggestion based on the
  /// provided conversation context in the real time.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SuggestArticlesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestArticlesResponse>
  suggestArticles(
    GoogleCloudDialogflowV2beta1SuggestArticlesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestArticles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestArticlesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse>
  suggestFaqAnswers(
    GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets knowledge assist suggestions based on historical messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the participant to fetch suggestions for.
  /// Format: `projects//locations//conversations//participants/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse>
  suggestKnowledgeAssist(
    GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestKnowledgeAssist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets smart replies for a participant based on specific historical
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
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse>
  suggestSmartReplies(
    GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestSmartReplies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates all the suggestions using generators configured in the
  /// conversation profile.
  ///
  /// A generator is used only if its trigger event is matched.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Required. The conversation for which the suggestions are
  /// generated. Format: `projects//locations//conversations/`. The conversation
  /// must be created with a conversation profile which has generators
  /// configured in it to be able to get suggestions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse>
  generate(
    GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get answers for the given query based on knowledge documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Optional. The conversation (between human agent and end
  /// user) where the search request is triggered. Format:
  /// `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchKnowledgeResponse>
  searchKnowledge(
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Suggest summary for a conversation based on specific historical messages.
  ///
  /// The range of the messages to be used for summary can be specified in the
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - Required. The conversation to fetch suggestion for.
  /// Format: `projects//locations//conversations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse>
  suggestConversationSummary(
    GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:suggestConversationSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsEncryptionSpecResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEncryptionSpecResource(commons.ApiRequester client)
    : _requester = client;

  /// Initializes a location-level encryption key specification.
  ///
  /// An error will be thrown if the location has resources already created
  /// before the initialization. Once the encryption specification is
  /// initialized at a location, it is immutable and all newly created resources
  /// under the location will be encrypted with the existing specification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the encryption key specification
  /// resource. Format: projects/{project}/locations/{location}/encryptionSpec
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/encryptionSpec$`.
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
  async.Future<GoogleLongrunningOperation> initialize(
    GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':initialize';

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

class ProjectsLocationsGeneratorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGeneratorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a generator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project/location to create generator for. Format:
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [generatorId] - Optional. The ID to use for the generator, which will
  /// become the final component of the generator's resource name. The generator
  /// ID must be compliant with the regression formula `a-zA-Z*` with the
  /// characters length in range of \[3,64\]. If the field is not provided, an
  /// Id will be auto-generated. If the field is provided, the caller is
  /// responsible for 1. the uniqueness of the ID, otherwise the request will be
  /// rejected. 2. the consistency for whether to use custom ID or not under a
  /// project to better ensure uniqueness.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Generator> create(
    GoogleCloudDialogflowV2beta1Generator request,
    core.String parent, {
    core.String? generatorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (generatorId != null) 'generatorId': [generatorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a generator.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The generator resource name to delete. Format:
  /// `projects//locations//generators/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a generator.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The generator resource name to retrieve. Format:
  /// \`projects//locations/\`/generators/\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Generator> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists generators.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project/location to list generators for. Format:
  /// `projects//locations/`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of conversation models to return in
  /// a single page. Default to 10.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListGeneratorsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListGeneratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a generator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the generator.
  /// Format: `projects//locations//generators/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Generator> patch(
    GoogleCloudDialogflowV2beta1Generator request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> create(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all knowledge bases of the specified agent.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter knowledge bases returned
  /// by the list method. The expression has the following syntax: \[AND \] ...
  /// The following fields and operators are supported: * display_name with
  /// has(:) operator * language_code with equals(=) operator Examples: *
  /// 'language_code=en-us' matches knowledge bases with en-us language code. *
  /// 'display_name:articles' matches knowledge bases whose display name
  /// contains "articles". * 'display_name:"Best Articles"' matches knowledge
  /// bases whose display name contains "Best Articles". * 'language_code=en-gb
  /// AND display_name=articles' matches all knowledge bases whose display name
  /// contains "articles" and whose language code is "en-gb". Note: An empty
  /// filter string (i.e. "") is a no-op and will result in no filtering. For
  /// more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse> list(
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

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1KnowledgeBase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1KnowledgeBase> patch(
    GoogleCloudDialogflowV2beta1KnowledgeBase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
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
  /// [importGcsCustomMetadata] - Whether to import custom metadata from Google
  /// Cloud Storage. Only valid when the document source is Google Cloud Storage
  /// URI.
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String parent, {
    core.bool? importGcsCustomMetadata,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importGcsCustomMetadata != null)
        'importGcsCustomMetadata': ['${importGcsCustomMetadata}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Deletes the specified document.
  ///
  /// This method is a \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`: An
  /// [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified document.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1Document> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create documents by importing data from external sources.
  ///
  /// Dialogflow supports up to 350 documents in each request. If you try to
  /// import more, Dialogflow will return an error. This method is a
  /// \[long-running
  /// operation\](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
  /// The returned `Operation` type has the following method-specific fields: -
  /// `metadata`: KnowledgeOperationMetadata - `response`:
  /// ImportDocumentsResponse
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to import documents into. Format:
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudDialogflowV2beta1ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Returns the list of all documents of the knowledge base.
  ///
  /// Note: The `projects.agent.knowledgeBases.documents` resource is
  /// deprecated; only use `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//locations//knowledgeBases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - The filter expression used to filter documents returned by the
  /// list method. The expression has the following syntax: \[AND \] ... The
  /// following fields and operators are supported: * knowledge_types with
  /// has(:) operator * display_name with has(:) operator * state with equals(=)
  /// operator Examples: * "knowledge_types:FAQ" matches documents with FAQ
  /// knowledge type. * "display_name:customer" matches documents whose display
  /// name contains "customer". * "state=ACTIVE" matches documents with ACTIVE
  /// state. * "knowledge_types:FAQ AND state=ACTIVE" matches all active FAQ
  /// documents. For more information about filtering, see
  /// [API Filtering](https://aip.dev/160).
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListDocumentsResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified document.
  ///
  /// This method is a \[long-running
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
    GoogleCloudDialogflowV2beta1Document request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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

  /// Reloads the specified document from its specified source, content_uri or
  /// content.
  ///
  /// The previously loaded content of the document will be deleted. Note: Even
  /// when the content of the document has not changed, there still may be side
  /// effects because of internal implementation changes. Note: If the document
  /// source is Google Cloud Storage URI, its metadata will be replaced with the
  /// custom metadata from Google Cloud Storage if the
  /// `import_gcs_custom_metadata` field is set to true in the request. This
  /// method is a \[long-running
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
    GoogleCloudDialogflowV2beta1ReloadDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':reload';

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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsPhoneNumbersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPhoneNumbersResource(commons.ApiRequester client)
    : _requester = client;

  /// Requests deletion of a `PhoneNumber`.
  ///
  /// The `PhoneNumber` is moved into the DELETE_REQUESTED state immediately,
  /// and is deleted approximately 30 days later. This method may only be called
  /// on a `PhoneNumber` in the ACTIVE state.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the `PhoneNumber` to delete.
  /// Format: `projects//phoneNumbers/`. Format:
  /// `projects//locations//phoneNumbers/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all phone numbers in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all `PhoneNumber` resources from.
  /// Format: `projects/`. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. The default value is 100. The maximum value is 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [showDeleted] - Optional. Controls whether `PhoneNumber` resources in the
  /// DELETE_REQUESTED state should be returned. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/phoneNumbers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified `PhoneNumber`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this phone number. Required
  /// for PhoneNumbers.UpdatePhoneNumber method. Format:
  /// `projects//phoneNumbers/`. Format: `projects//locations//phoneNumbers/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> patch(
    GoogleCloudDialogflowV2beta1PhoneNumber request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Cancels the deletion request for a `PhoneNumber`.
  ///
  /// This method may only be called on a `PhoneNumber` in the DELETE_REQUESTED
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the `PhoneNumber` to delete.
  /// Format: `projects//phoneNumbers/`. Format:
  /// `projects//locations//phoneNumbers/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> undelete(
    GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSipTrunksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSipTrunksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a SipTrunk for a specified location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to create a SIP trunk for. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SipTrunk> create(
    GoogleCloudDialogflowV2beta1SipTrunk request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/sipTrunks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a specified SipTrunk.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SIP trunk to delete. Format:
  /// `projects//locations//sipTrunks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sipTrunks/\[^/\]+$`.
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the specified SipTrunk.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SIP trunk to delete. Format:
  /// `projects//locations//sipTrunks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sipTrunks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SipTrunk> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of SipTrunks in the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to list SIP trunks from. Format:
  /// `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudDialogflowV2beta1ListSipTrunksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListSipTrunksResponse> list(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/sipTrunks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListSipTrunksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified SipTrunk.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique identifier of the SIP trunk. Format:
  /// `projects//locations//sipTrunks/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sipTrunks/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated. If
  /// the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SipTrunk> patch(
    GoogleCloudDialogflowV2beta1SipTrunk request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsStatelessSuggestionResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStatelessSuggestionResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates and returns a suggestion for a conversation that does not have a
  /// resource created for it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to charge for the Suggestion's
  /// generation. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse>
  generate(
    GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/statelessSuggestion:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates and returns a summary for a conversation that does not have a
  /// resource created for it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to charge for the Summary's
  /// generation. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse>
  generateStatelessSummary(
    GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:generateStatelessSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get answers for the given query based on knowledge documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource contains the conversation profile
  /// Format: 'projects/' or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchKnowledgeResponse>
  searchKnowledge(
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchKnowledgeResponse.fromJson(
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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsPhoneNumbersResource {
  final commons.ApiRequester _requester;

  ProjectsPhoneNumbersResource(commons.ApiRequester client)
    : _requester = client;

  /// Requests deletion of a `PhoneNumber`.
  ///
  /// The `PhoneNumber` is moved into the DELETE_REQUESTED state immediately,
  /// and is deleted approximately 30 days later. This method may only be called
  /// on a `PhoneNumber` in the ACTIVE state.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the `PhoneNumber` to delete.
  /// Format: `projects//phoneNumbers/`. Format:
  /// `projects//locations//phoneNumbers/`.
  /// Value must have pattern `^projects/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all phone numbers in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list all `PhoneNumber` resources from.
  /// Format: `projects/`. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. The default value is 100. The maximum value is 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [showDeleted] - Optional. Controls whether `PhoneNumber` resources in the
  /// DELETE_REQUESTED state should be returned. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/phoneNumbers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified `PhoneNumber`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this phone number. Required
  /// for PhoneNumbers.UpdatePhoneNumber method. Format:
  /// `projects//phoneNumbers/`. Format: `projects//locations//phoneNumbers/`.
  /// Value must have pattern `^projects/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> patch(
    GoogleCloudDialogflowV2beta1PhoneNumber request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Cancels the deletion request for a `PhoneNumber`.
  ///
  /// This method may only be called on a `PhoneNumber` in the DELETE_REQUESTED
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the `PhoneNumber` to delete.
  /// Format: `projects//phoneNumbers/`. Format:
  /// `projects//locations//phoneNumbers/`.
  /// Value must have pattern `^projects/\[^/\]+/phoneNumbers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1PhoneNumber> undelete(
    GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates and returns a summary for a conversation that does not have a
  /// resource created for it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to charge for the Summary's
  /// generation. Format: `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse>
  generateStatelessSummary(
    GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:generateStatelessSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get answers for the given query based on knowledge documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource contains the conversation profile
  /// Format: 'projects/' or `projects//locations/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2beta1SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2beta1SearchKnowledgeResponse>
  searchKnowledge(
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2beta1SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
class GoogleCloudDialogflowV2beta1Agent {
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? matchMode;

  /// The project of this agent.
  ///
  /// Format: `projects/` or `projects//locations/`
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

  GoogleCloudDialogflowV2beta1Agent({
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

  GoogleCloudDialogflowV2beta1Agent.fromJson(core.Map json_)
    : this(
        apiVersion: json_['apiVersion'] as core.String?,
        avatarUri: json_['avatarUri'] as core.String?,
        classificationThreshold:
            (json_['classificationThreshold'] as core.num?)?.toDouble(),
        defaultLanguageCode: json_['defaultLanguageCode'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableLogging: json_['enableLogging'] as core.bool?,
        matchMode: json_['matchMode'] as core.String?,
        parent: json_['parent'] as core.String?,
        supportedLanguageCodes:
            (json_['supportedLanguageCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tier: json_['tier'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
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

/// Detail feedback of Agent Assistant result.
class GoogleCloudDialogflowV2beta1AgentAssistantFeedback {
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
  /// allowed." * document_correctness: INCORRECT
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

  /// Feedback for knowledge assist.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeAssistFeedback?
  knowledgeAssistFeedback;

  /// Feedback for knowledge search.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeSearchFeedback?
  knowledgeSearchFeedback;

  /// Feedback for conversation summarization.
  GoogleCloudDialogflowV2beta1AgentAssistantFeedbackSummarizationFeedback?
  summarizationFeedback;

  GoogleCloudDialogflowV2beta1AgentAssistantFeedback({
    this.answerRelevance,
    this.documentCorrectness,
    this.documentEfficiency,
    this.knowledgeAssistFeedback,
    this.knowledgeSearchFeedback,
    this.summarizationFeedback,
  });

  GoogleCloudDialogflowV2beta1AgentAssistantFeedback.fromJson(core.Map json_)
    : this(
        answerRelevance: json_['answerRelevance'] as core.String?,
        documentCorrectness: json_['documentCorrectness'] as core.String?,
        documentEfficiency: json_['documentEfficiency'] as core.String?,
        knowledgeAssistFeedback:
            json_.containsKey('knowledgeAssistFeedback')
                ? GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeAssistFeedback.fromJson(
                  json_['knowledgeAssistFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeSearchFeedback:
            json_.containsKey('knowledgeSearchFeedback')
                ? GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeSearchFeedback.fromJson(
                  json_['knowledgeSearchFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        summarizationFeedback:
            json_.containsKey('summarizationFeedback')
                ? GoogleCloudDialogflowV2beta1AgentAssistantFeedbackSummarizationFeedback.fromJson(
                  json_['summarizationFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRelevance != null) 'answerRelevance': answerRelevance!,
    if (documentCorrectness != null)
      'documentCorrectness': documentCorrectness!,
    if (documentEfficiency != null) 'documentEfficiency': documentEfficiency!,
    if (knowledgeAssistFeedback != null)
      'knowledgeAssistFeedback': knowledgeAssistFeedback!,
    if (knowledgeSearchFeedback != null)
      'knowledgeSearchFeedback': knowledgeSearchFeedback!,
    if (summarizationFeedback != null)
      'summarizationFeedback': summarizationFeedback!,
  };
}

/// Feedback for knowledge assist.
typedef GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeAssistFeedback =
    $AgentAssistantFeedbackKnowledgeAssistFeedback;

/// Feedback for knowledge search.
typedef GoogleCloudDialogflowV2beta1AgentAssistantFeedbackKnowledgeSearchFeedback =
    $AgentAssistantFeedbackKnowledgeSearchFeedback;

/// Feedback for conversation summarization.
class GoogleCloudDialogflowV2beta1AgentAssistantFeedbackSummarizationFeedback {
  /// Timestamp when composing of the summary starts.
  core.String? startTimestamp;

  /// Timestamp when the summary was submitted.
  core.String? submitTimestamp;

  /// Text of actual submitted summary.
  core.String? summaryText;

  /// Actual text sections of submitted summary.
  ///
  /// Optional.
  core.Map<core.String, core.String>? textSections;

  GoogleCloudDialogflowV2beta1AgentAssistantFeedbackSummarizationFeedback({
    this.startTimestamp,
    this.submitTimestamp,
    this.summaryText,
    this.textSections,
  });

  GoogleCloudDialogflowV2beta1AgentAssistantFeedbackSummarizationFeedback.fromJson(
    core.Map json_,
  ) : this(
        startTimestamp: json_['startTimestamp'] as core.String?,
        submitTimestamp: json_['submitTimestamp'] as core.String?,
        summaryText: json_['summaryText'] as core.String?,
        textSections: (json_['textSections']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (startTimestamp != null) 'startTimestamp': startTimestamp!,
    if (submitTimestamp != null) 'submitTimestamp': submitTimestamp!,
    if (summaryText != null) 'summaryText': summaryText!,
    if (textSections != null) 'textSections': textSections!,
  };
}

/// Represents a record of a human agent assistant answer.
class GoogleCloudDialogflowV2beta1AgentAssistantRecord {
  /// The article suggestion answer.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1ArticleAnswer? articleSuggestionAnswer;

  /// The Dialogflow assist answer.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1DialogflowAssistAnswer? dialogflowAssistAnswer;

  /// The FAQ answer.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1FaqAnswer? faqAnswer;

  GoogleCloudDialogflowV2beta1AgentAssistantRecord({
    this.articleSuggestionAnswer,
    this.dialogflowAssistAnswer,
    this.faqAnswer,
  });

  GoogleCloudDialogflowV2beta1AgentAssistantRecord.fromJson(core.Map json_)
    : this(
        articleSuggestionAnswer:
            json_.containsKey('articleSuggestionAnswer')
                ? GoogleCloudDialogflowV2beta1ArticleAnswer.fromJson(
                  json_['articleSuggestionAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dialogflowAssistAnswer:
            json_.containsKey('dialogflowAssistAnswer')
                ? GoogleCloudDialogflowV2beta1DialogflowAssistAnswer.fromJson(
                  json_['dialogflowAssistAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        faqAnswer:
            json_.containsKey('faqAnswer')
                ? GoogleCloudDialogflowV2beta1FaqAnswer.fromJson(
                  json_['faqAnswer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (articleSuggestionAnswer != null)
      'articleSuggestionAnswer': articleSuggestionAnswer!,
    if (dialogflowAssistAnswer != null)
      'dialogflowAssistAnswer': dialogflowAssistAnswer!,
    if (faqAnswer != null) 'faqAnswer': faqAnswer!,
  };
}

/// The request message for Participants.AnalyzeContent.
class GoogleCloudDialogflowV2beta1AnalyzeContentRequest {
  /// Parameters for a human assist query.
  GoogleCloudDialogflowV2beta1AssistQueryParameters? assistQueryParams;

  /// The natural language speech audio to be processed.
  GoogleCloudDialogflowV2beta1AudioInput? audioInput;

  /// The unique identifier of the Dialogflow CX page to override the
  /// `current_page` in the session.
  ///
  /// Format: `projects//locations//agents//flows//pages/`. If `cx_current_page`
  /// is specified, the previous state of the session will be ignored by
  /// Dialogflow CX, including the previous page and the previous session
  /// parameters. In most cases, `cx_current_page` and `cx_parameters` should be
  /// configured together to direct a session to a specific state. Note: this
  /// field should only be used if you are connecting to a Dialogflow CX agent.
  core.String? cxCurrentPage;

  /// Additional parameters to be put into Dialogflow CX session parameters.
  ///
  /// To remove a parameter from the session, clients should explicitly set the
  /// parameter value to null. Note: this field should only be used if you are
  /// connecting to a Dialogflow CX agent.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? cxParameters;

  /// An input event to send to Dialogflow.
  GoogleCloudDialogflowV2beta1EventInput? eventInput;

  /// The intent to be triggered on V3 agent.
  GoogleCloudDialogflowV2beta1IntentInput? intentInput;

  /// The send time of the message from end user or human agent's perspective.
  ///
  /// It is used for identifying the same message under one participant. For
  /// BatchCreateMessages API only: Given two messages under the same
  /// participant: * If send time are different regardless of whether the
  /// content of the messages are exactly the same, the conversation will regard
  /// them as two distinct messages sent by the participant. * If send time is
  /// the same regardless of whether the content of the messages are exactly the
  /// same, the conversation will regard them as same message, and ignore the
  /// message received later. If the value is not provided, a new request will
  /// always be regarded as a new message without any de-duplication.
  ///
  /// Optional.
  core.String? messageSendTime;

  /// Parameters for a Dialogflow virtual-agent query.
  GoogleCloudDialogflowV2beta1QueryParameters? queryParams;

  /// Speech synthesis configuration.
  ///
  /// The speech synthesis settings for a virtual agent that may be configured
  /// for the associated conversation profile are not used when calling
  /// AnalyzeContent. If this configuration is not supplied, speech synthesis is
  /// disabled.
  GoogleCloudDialogflowV2beta1OutputAudioConfig? replyAudioConfig;

  /// A unique identifier for this request.
  ///
  /// Restricted to 36 ASCII characters. A random UUID is recommended. This
  /// request is only idempotent if a `request_id` is provided.
  core.String? requestId;

  /// An input representing the selection of a suggestion.
  GoogleCloudDialogflowV2beta1SuggestionInput? suggestionInput;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2beta1TextInput? textInput;

  GoogleCloudDialogflowV2beta1AnalyzeContentRequest({
    this.assistQueryParams,
    this.audioInput,
    this.cxCurrentPage,
    this.cxParameters,
    this.eventInput,
    this.intentInput,
    this.messageSendTime,
    this.queryParams,
    this.replyAudioConfig,
    this.requestId,
    this.suggestionInput,
    this.textInput,
  });

  GoogleCloudDialogflowV2beta1AnalyzeContentRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams:
            json_.containsKey('assistQueryParams')
                ? GoogleCloudDialogflowV2beta1AssistQueryParameters.fromJson(
                  json_['assistQueryParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audioInput:
            json_.containsKey('audioInput')
                ? GoogleCloudDialogflowV2beta1AudioInput.fromJson(
                  json_['audioInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cxCurrentPage: json_['cxCurrentPage'] as core.String?,
        cxParameters:
            json_.containsKey('cxParameters')
                ? json_['cxParameters'] as core.Map<core.String, core.dynamic>
                : null,
        eventInput:
            json_.containsKey('eventInput')
                ? GoogleCloudDialogflowV2beta1EventInput.fromJson(
                  json_['eventInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentInput:
            json_.containsKey('intentInput')
                ? GoogleCloudDialogflowV2beta1IntentInput.fromJson(
                  json_['intentInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        messageSendTime: json_['messageSendTime'] as core.String?,
        queryParams:
            json_.containsKey('queryParams')
                ? GoogleCloudDialogflowV2beta1QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        replyAudioConfig:
            json_.containsKey('replyAudioConfig')
                ? GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
                  json_['replyAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
        suggestionInput:
            json_.containsKey('suggestionInput')
                ? GoogleCloudDialogflowV2beta1SuggestionInput.fromJson(
                  json_['suggestionInput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textInput:
            json_.containsKey('textInput')
                ? GoogleCloudDialogflowV2beta1TextInput.fromJson(
                  json_['textInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assistQueryParams != null) 'assistQueryParams': assistQueryParams!,
    if (audioInput != null) 'audioInput': audioInput!,
    if (cxCurrentPage != null) 'cxCurrentPage': cxCurrentPage!,
    if (cxParameters != null) 'cxParameters': cxParameters!,
    if (eventInput != null) 'eventInput': eventInput!,
    if (intentInput != null) 'intentInput': intentInput!,
    if (messageSendTime != null) 'messageSendTime': messageSendTime!,
    if (queryParams != null) 'queryParams': queryParams!,
    if (replyAudioConfig != null) 'replyAudioConfig': replyAudioConfig!,
    if (requestId != null) 'requestId': requestId!,
    if (suggestionInput != null) 'suggestionInput': suggestionInput!,
    if (textInput != null) 'textInput': textInput!,
  };
}

/// The response message for Participants.AnalyzeContent.
class GoogleCloudDialogflowV2beta1AnalyzeContentResponse {
  /// Only set if a Dialogflow automated agent has responded.
  ///
  /// Note that: AutomatedAgentReply.detect_intent_response.output_audio and
  /// AutomatedAgentReply.detect_intent_response.output_audio_config are always
  /// empty, use reply_audio instead.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AutomatedAgentReply? automatedAgentReply;

  /// Indicates the parameters of DTMF.
  GoogleCloudDialogflowV2beta1DtmfParameters? dtmfParameters;

  /// The suggestions for end user.
  ///
  /// The order is the same as
  /// HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
  /// HumanAgentAssistantConfig.end_user_suggestion_config. Same as
  /// human_agent_suggestion_results, any failure of Agent Assist features will
  /// not lead to the overall failure of an AnalyzeContent API call. Instead,
  /// the features will fail silently with the error field set in the
  /// corresponding SuggestionResult.
  core.List<GoogleCloudDialogflowV2beta1SuggestionResult>?
  endUserSuggestionResults;

  /// The suggestions for most recent human agent.
  ///
  /// The order is the same as
  /// HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
  /// HumanAgentAssistantConfig.human_agent_suggestion_config. Note that any
  /// failure of Agent Assist features will not lead to the overall failure of
  /// an AnalyzeContent API call. Instead, the features will fail silently with
  /// the error field set in the corresponding SuggestionResult.
  core.List<GoogleCloudDialogflowV2beta1SuggestionResult>?
  humanAgentSuggestionResults;

  /// Message analyzed by CCAI.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1Message? message;

  /// The audio data bytes encoded as specified in the request.
  ///
  /// This field is set if: - `reply_audio_config` was specified in the request,
  /// or - The automated agent responded with audio to play to the user. In such
  /// case, `reply_audio.config` contains settings used to synthesize the
  /// speech. In some scenarios, multiple output audio fields may be present in
  /// the response structure. In these cases, only the top-most-level audio
  /// output has content.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1OutputAudio? replyAudio;

  /// The output text content.
  ///
  /// This field is set if the automated agent responded with text to show to
  /// the user.
  ///
  /// Output only.
  core.String? replyText;

  GoogleCloudDialogflowV2beta1AnalyzeContentResponse({
    this.automatedAgentReply,
    this.dtmfParameters,
    this.endUserSuggestionResults,
    this.humanAgentSuggestionResults,
    this.message,
    this.replyAudio,
    this.replyText,
  });

  GoogleCloudDialogflowV2beta1AnalyzeContentResponse.fromJson(core.Map json_)
    : this(
        automatedAgentReply:
            json_.containsKey('automatedAgentReply')
                ? GoogleCloudDialogflowV2beta1AutomatedAgentReply.fromJson(
                  json_['automatedAgentReply']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dtmfParameters:
            json_.containsKey('dtmfParameters')
                ? GoogleCloudDialogflowV2beta1DtmfParameters.fromJson(
                  json_['dtmfParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endUserSuggestionResults:
            (json_['endUserSuggestionResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SuggestionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        humanAgentSuggestionResults:
            (json_['humanAgentSuggestionResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SuggestionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        message:
            json_.containsKey('message')
                ? GoogleCloudDialogflowV2beta1Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        replyAudio:
            json_.containsKey('replyAudio')
                ? GoogleCloudDialogflowV2beta1OutputAudio.fromJson(
                  json_['replyAudio'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        replyText: json_['replyText'] as core.String?,
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
class GoogleCloudDialogflowV2beta1AnnotatedMessagePart {
  /// The
  /// [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// If this is empty, Dialogflow could not annotate the phrase part with a
  /// system entity.
  ///
  /// Optional.
  core.String? entityType;

  /// The
  /// [Dialogflow system entity formatted value ](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// For example for a system entity of type `@sys.unit-currency`, this may
  /// contain: { "amount": 5, "currency": "USD" }
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? formattedValue;

  /// A part of a message possibly annotated with an entity.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowV2beta1AnnotatedMessagePart({
    this.entityType,
    this.formattedValue,
    this.text,
  });

  GoogleCloudDialogflowV2beta1AnnotatedMessagePart.fromJson(core.Map json_)
    : this(
        entityType: json_['entityType'] as core.String?,
        formattedValue: json_['formattedValue'],
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityType != null) 'entityType': entityType!,
    if (formattedValue != null) 'formattedValue': formattedValue!,
    if (text != null) 'text': text!,
  };
}

/// Represents feedback the customer has about the quality & correctness of a
/// certain answer in a conversation.
class GoogleCloudDialogflowV2beta1AnswerFeedback {
  /// Detail feedback of agent assistant suggestions.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AgentAssistantFeedback?
  agentAssistantDetailFeedback;

  /// Time when the answer/item was clicked.
  core.String? clickTime;

  /// Indicates whether the answer/item was clicked by the human agent or not.
  ///
  /// Default to false. For knowledge search, the answer record is considered to
  /// be clicked if the answer was copied or any URI was clicked.
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

  GoogleCloudDialogflowV2beta1AnswerFeedback({
    this.agentAssistantDetailFeedback,
    this.clickTime,
    this.clicked,
    this.correctnessLevel,
    this.displayTime,
    this.displayed,
  });

  GoogleCloudDialogflowV2beta1AnswerFeedback.fromJson(core.Map json_)
    : this(
        agentAssistantDetailFeedback:
            json_.containsKey('agentAssistantDetailFeedback')
                ? GoogleCloudDialogflowV2beta1AgentAssistantFeedback.fromJson(
                  json_['agentAssistantDetailFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clickTime: json_['clickTime'] as core.String?,
        clicked: json_['clicked'] as core.bool?,
        correctnessLevel: json_['correctnessLevel'] as core.String?,
        displayTime: json_['displayTime'] as core.String?,
        displayed: json_['displayed'] as core.bool?,
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
class GoogleCloudDialogflowV2beta1AnswerRecord {
  /// The record for human agent assistant.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1AgentAssistantRecord? agentAssistantRecord;

  /// The AnswerFeedback for this record.
  ///
  /// You can set this with AnswerRecords.UpdateAnswerRecord in order to give us
  /// feedback about this answer.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AnswerFeedback? answerFeedback;

  /// The unique identifier of this answer record.
  ///
  /// Required for AnswerRecords.UpdateAnswerRecord method. Format:
  /// `projects//locations//answerRecords/`.
  core.String? name;

  GoogleCloudDialogflowV2beta1AnswerRecord({
    this.agentAssistantRecord,
    this.answerFeedback,
    this.name,
  });

  GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(core.Map json_)
    : this(
        agentAssistantRecord:
            json_.containsKey('agentAssistantRecord')
                ? GoogleCloudDialogflowV2beta1AgentAssistantRecord.fromJson(
                  json_['agentAssistantRecord']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        answerFeedback:
            json_.containsKey('answerFeedback')
                ? GoogleCloudDialogflowV2beta1AnswerFeedback.fromJson(
                  json_['answerFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agentAssistantRecord != null)
      'agentAssistantRecord': agentAssistantRecord!,
    if (answerFeedback != null) 'answerFeedback': answerFeedback!,
    if (name != null) 'name': name!,
  };
}

/// Represents article answer.
class GoogleCloudDialogflowV2beta1ArticleAnswer {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  core.Map<core.String, core.String>? metadata;

  /// Article snippets.
  ///
  /// Output only.
  core.List<core.String>? snippets;

  /// The article title.
  core.String? title;

  /// The article URI.
  core.String? uri;

  GoogleCloudDialogflowV2beta1ArticleAnswer({
    this.answerRecord,
    this.metadata,
    this.snippets,
    this.title,
    this.uri,
  });

  GoogleCloudDialogflowV2beta1ArticleAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        snippets:
            (json_['snippets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (metadata != null) 'metadata': metadata!,
    if (snippets != null) 'snippets': snippets!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Represents the parameters of human assist query.
typedef GoogleCloudDialogflowV2beta1AssistQueryParameters =
    $AssistQueryParameters;

/// Represents the natural language speech audio to be processed.
class GoogleCloudDialogflowV2beta1AudioInput {
  /// The natural language speech audio to be processed.
  ///
  /// A single request can contain up to 2 minutes of speech audio data. The
  /// transcribed text cannot contain more than 256 bytes for virtual agent
  /// interactions.
  ///
  /// Required.
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
  GoogleCloudDialogflowV2beta1InputAudioConfig? config;

  GoogleCloudDialogflowV2beta1AudioInput({this.audio, this.config});

  GoogleCloudDialogflowV2beta1AudioInput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config:
            json_.containsKey('config')
                ? GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audio != null) 'audio': audio!,
    if (config != null) 'config': config!,
  };
}

/// Defines the Automated Agent to connect to a conversation.
class GoogleCloudDialogflowV2beta1AutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use.
  ///
  /// This project needs to either be the same project as the conversation or
  /// you need to grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the
  /// `Dialogflow API Service Agent` role in this project. - For ES agents, use
  /// format: `projects//locations//agent/environments/`. If environment is not
  /// specified, the default `draft` environment is used. Refer to
  /// \[DetectIntentRequest\](/dialogflow/docs/reference/rpc/google.cloud.dialogflow.v2beta1#google.cloud.dialogflow.v2beta1.DetectIntentRequest)
  /// for more details. - For CX agents, use format
  /// `projects//locations//agents//environments/`. If environment is not
  /// specified, the default `draft` environment is used.
  ///
  /// Required.
  core.String? agent;

  /// Configure lifetime of the Dialogflow session.
  ///
  /// By default, a Dialogflow CX session remains active and its data is stored
  /// for 30 minutes after the last request is sent for the session. This value
  /// should be no longer than 1 day.
  ///
  /// Optional.
  core.String? sessionTtl;

  GoogleCloudDialogflowV2beta1AutomatedAgentConfig({
    this.agent,
    this.sessionTtl,
  });

  GoogleCloudDialogflowV2beta1AutomatedAgentConfig.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        sessionTtl: json_['sessionTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agent != null) 'agent': agent!,
    if (sessionTtl != null) 'sessionTtl': sessionTtl!,
  };
}

/// Represents a response from an automated agent.
class GoogleCloudDialogflowV2beta1AutomatedAgentReply {
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

  /// The auth code for accessing Call Companion UI.
  core.String? callCompanionAuthCode;
  core.List<core.int> get callCompanionAuthCodeAsBytes =>
      convert.base64.decode(callCompanionAuthCode!);

  set callCompanionAuthCodeAsBytes(core.List<core.int> bytes_) {
    callCompanionAuthCode = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The unique identifier of the current Dialogflow CX conversation page.
  ///
  /// Format: `projects//locations//agents//flows//pages/`.
  core.String? cxCurrentPage;

  /// The collection of current Dialogflow CX agent session parameters at the
  /// time of this response.
  ///
  /// Deprecated: Use `parameters` instead.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.Object?>? cxSessionParameters;

  /// Response of the Dialogflow Sessions.DetectIntent call.
  GoogleCloudDialogflowV2beta1DetectIntentResponse? detectIntentResponse;

  /// Event name if an event is triggered for the query.
  core.String? event;

  /// Name of the intent if an intent is matched for the query.
  ///
  /// For a V2 query, the value format is `projects//locations/
  /// /agent/intents/`. For a V3 query, the value format is
  /// `projects//locations/ /agents//intents/`.
  core.String? intent;

  /// The confidence of the match.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// This value is for informational purpose only and is only used to help
  /// match the best intent within the classification threshold. This value may
  /// change for the same end-user expression at any time due to a model
  /// retraining or change in implementation.
  core.double? matchConfidence;

  /// The collection of current parameters at the time of this response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// Response messages from the automated agent.
  core.List<GoogleCloudDialogflowV2beta1ResponseMessage>? responseMessages;

  GoogleCloudDialogflowV2beta1AutomatedAgentReply({
    this.allowCancellation,
    this.automatedAgentReplyType,
    this.callCompanionAuthCode,
    this.cxCurrentPage,
    this.cxSessionParameters,
    this.detectIntentResponse,
    this.event,
    this.intent,
    this.matchConfidence,
    this.parameters,
    this.responseMessages,
  });

  GoogleCloudDialogflowV2beta1AutomatedAgentReply.fromJson(core.Map json_)
    : this(
        allowCancellation: json_['allowCancellation'] as core.bool?,
        automatedAgentReplyType:
            json_['automatedAgentReplyType'] as core.String?,
        callCompanionAuthCode: json_['callCompanionAuthCode'] as core.String?,
        cxCurrentPage: json_['cxCurrentPage'] as core.String?,
        cxSessionParameters:
            json_.containsKey('cxSessionParameters')
                ? json_['cxSessionParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        detectIntentResponse:
            json_.containsKey('detectIntentResponse')
                ? GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
                  json_['detectIntentResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        event: json_['event'] as core.String?,
        intent: json_['intent'] as core.String?,
        matchConfidence: (json_['matchConfidence'] as core.num?)?.toDouble(),
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        responseMessages:
            (json_['responseMessages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ResponseMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowCancellation != null) 'allowCancellation': allowCancellation!,
    if (automatedAgentReplyType != null)
      'automatedAgentReplyType': automatedAgentReplyType!,
    if (callCompanionAuthCode != null)
      'callCompanionAuthCode': callCompanionAuthCode!,
    if (cxCurrentPage != null) 'cxCurrentPage': cxCurrentPage!,
    if (cxSessionParameters != null)
      'cxSessionParameters': cxSessionParameters!,
    if (detectIntentResponse != null)
      'detectIntentResponse': detectIntentResponse!,
    if (event != null) 'event': event!,
    if (intent != null) 'intent': intent!,
    if (matchConfidence != null) 'matchConfidence': matchConfidence!,
    if (parameters != null) 'parameters': parameters!,
    if (responseMessages != null) 'responseMessages': responseMessages!,
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
/// start of the input audio. The flow goes like below: ``` --> Time without
/// speech detection | utterance only | utterance or no-speech event | |
/// +-------------+ | +------------+ | +---------------+ ----------+ no barge-in
/// +-|-+ barge-in +-|-+ normal period +----------- +-------------+ |
/// +------------+ | +---------------+ ``` No-speech event is a response with
/// END_OF_UTTERANCE without any transcript following up.
typedef GoogleCloudDialogflowV2beta1BargeInConfig = $BargeInConfig;

/// The request message for EntityTypes.BatchCreateEntities.
class GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest {
  /// The entities to create.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity>? entities;

  /// The language used to access language-specific data.
  ///
  /// If not specified, the agent's default language is used. For more
  /// information, see
  /// [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  ///
  /// Optional.
  core.String? languageCode;

  GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest({
    this.entities,
    this.languageCode,
  });

  GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest.fromJson(
    core.Map json_,
  ) : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entities != null) 'entities': entities!,
    if (languageCode != null) 'languageCode': languageCode!,
  };
}

/// The request message for Conversations.BatchCreateMessagesRequest.
class GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest {
  /// A maximum of 300 messages can be created in a batch.
  ///
  /// CreateMessageRequest.message.send_time is required. All created messages
  /// will have identical Message.create_time.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1CreateMessageRequest>? requests;

  GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest({this.requests});

  GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1CreateMessageRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// The request message for Conversations.BatchCreateMessagesResponse.
class GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse {
  /// Messages created.
  core.List<GoogleCloudDialogflowV2beta1Message>? messages;

  GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse({this.messages});

  GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse.fromJson(
    core.Map json_,
  ) : this(
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Message.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messages != null) 'messages': messages!,
  };
}

/// The request message for EntityTypes.BatchDeleteEntities.
typedef GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest =
    $BatchDeleteEntitiesRequest;

/// The request message for EntityTypes.BatchDeleteEntityTypes.
typedef GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest =
    $BatchDeleteEntityTypesRequest;

/// The request message for Intents.BatchDeleteIntents.
class GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest {
  /// The collection of intents to delete.
  ///
  /// Only intent `name` must be filled in.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1Intent>? intents;

  GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest({this.intents});

  GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest.fromJson(core.Map json_)
    : this(
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intents != null) 'intents': intents!,
  };
}

/// The request message for EntityTypes.BatchUpdateEntities.
class GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest {
  /// The entities to update or create.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity>? entities;

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

  GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest({
    this.entities,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest.fromJson(
    core.Map json_,
  ) : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entities != null) 'entities': entities!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The request message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest {
  /// The collection of entity types to update or create.
  GoogleCloudDialogflowV2beta1EntityTypeBatch? entityTypeBatchInline;

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

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest({
    this.entityTypeBatchInline,
    this.entityTypeBatchUri,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest.fromJson(
    core.Map json_,
  ) : this(
        entityTypeBatchInline:
            json_.containsKey('entityTypeBatchInline')
                ? GoogleCloudDialogflowV2beta1EntityTypeBatch.fromJson(
                  json_['entityTypeBatchInline']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entityTypeBatchUri: json_['entityTypeBatchUri'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityTypeBatchInline != null)
      'entityTypeBatchInline': entityTypeBatchInline!,
    if (entityTypeBatchUri != null) 'entityTypeBatchUri': entityTypeBatchUri!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The request message for Intents.BatchUpdateIntents.
class GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest {
  /// The collection of intents to update or create.
  GoogleCloudDialogflowV2beta1IntentBatch? intentBatchInline;

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

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest({
    this.intentBatchInline,
    this.intentBatchUri,
    this.intentView,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest.fromJson(core.Map json_)
    : this(
        intentBatchInline:
            json_.containsKey('intentBatchInline')
                ? GoogleCloudDialogflowV2beta1IntentBatch.fromJson(
                  json_['intentBatchInline']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentBatchUri: json_['intentBatchUri'] as core.String?,
        intentView: json_['intentView'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intentBatchInline != null) 'intentBatchInline': intentBatchInline!,
    if (intentBatchUri != null) 'intentBatchUri': intentBatchUri!,
    if (intentView != null) 'intentView': intentView!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The request message for ConversationProfiles.ClearFeature.
class GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest {
  /// The participant role to remove the suggestion feature config.
  ///
  /// Only HUMAN_AGENT or END_USER can be used.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant role not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent, such as a
  /// Dialogflow agent.
  /// - "END_USER" : Participant is an end user that has called or chatted with
  /// Dialogflow services.
  core.String? participantRole;

  /// The type of the suggestion feature to remove.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified feature type.
  /// - "ARTICLE_SUGGESTION" : Run article suggestion model for chat.
  /// - "FAQ" : Run FAQ model.
  /// - "SMART_REPLY" : Run smart reply model for chat.
  /// - "DIALOGFLOW_ASSIST" : Run Dialogflow assist model for chat, which will
  /// return automated agent response as suggestion.
  /// - "CONVERSATION_SUMMARIZATION" : Run conversation summarization model for
  /// chat.
  /// - "KNOWLEDGE_SEARCH" : Run knowledge search with text input from agent or
  /// text generated query.
  /// - "KNOWLEDGE_ASSIST" : Run knowledge assist with automatic query
  /// generation.
  core.String? suggestionFeatureType;

  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest({
    this.participantRole,
    this.suggestionFeatureType,
  });

  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        participantRole: json_['participantRole'] as core.String?,
        suggestionFeatureType: json_['suggestionFeatureType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (participantRole != null) 'participantRole': participantRole!,
    if (suggestionFeatureType != null)
      'suggestionFeatureType': suggestionFeatureType!,
  };
}

/// The request message for Participants.CompileSuggestion.
class GoogleCloudDialogflowV2beta1CompileSuggestionRequest {
  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// If zero or less than zero, 20 is used.
  ///
  /// Optional.
  core.int? contextSize;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  ///
  /// Optional.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1CompileSuggestionRequest({
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1CompileSuggestionRequest.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The response message for Participants.CompileSuggestion.
class GoogleCloudDialogflowV2beta1CompileSuggestionResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the CompileSuggestionRequest.context_size field in
  /// the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  /// The compiled suggestion.
  GoogleCloudDialogflowV2beta1Suggestion? suggestion;

  GoogleCloudDialogflowV2beta1CompileSuggestionResponse({
    this.contextSize,
    this.latestMessage,
    this.suggestion,
  });

  GoogleCloudDialogflowV2beta1CompileSuggestionResponse.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        suggestion:
            json_.containsKey('suggestion')
                ? GoogleCloudDialogflowV2beta1Suggestion.fromJson(
                  json_['suggestion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (suggestion != null) 'suggestion': suggestion!,
  };
}

/// The request message for Conversations.CompleteConversation.
typedef GoogleCloudDialogflowV2beta1CompleteConversationRequest = $Empty;

/// Represents a connection for SIP Trunk.
class GoogleCloudDialogflowV2beta1Connection {
  /// The unique identifier of the SIP Trunk connection.
  ///
  /// Output only.
  core.String? connectionId;

  /// The error details for the connection.
  ///
  /// Only populated when authentication errors occur.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1ConnectionErrorDetails? errorDetails;

  /// State of the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : SIP Trunk connection state is Not specified.
  /// - "CONNECTED" : SIP Trunk connection is connected.
  /// - "DISCONNECTED" : SIP Trunk connection is disconnected.
  /// - "AUTHENTICATION_FAILED" : SIP Trunk connection has authentication error.
  /// - "KEEPALIVE" : SIP Trunk connection is keepalive.
  core.String? state;

  /// When the connection status changed.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2beta1Connection({
    this.connectionId,
    this.errorDetails,
    this.state,
    this.updateTime,
  });

  GoogleCloudDialogflowV2beta1Connection.fromJson(core.Map json_)
    : this(
        connectionId: json_['connectionId'] as core.String?,
        errorDetails:
            json_.containsKey('errorDetails')
                ? GoogleCloudDialogflowV2beta1ConnectionErrorDetails.fromJson(
                  json_['errorDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionId != null) 'connectionId': connectionId!,
    if (errorDetails != null) 'errorDetails': errorDetails!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The error details of Sip Trunk connection authentication.
typedef GoogleCloudDialogflowV2beta1ConnectionErrorDetails =
    $ConnectionErrorDetails;

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
class GoogleCloudDialogflowV2beta1Context {
  /// The number of conversational query requests after which the context
  /// expires.
  ///
  /// The default is `0`. If set to `0`, the context expires immediately.
  /// Contexts expire automatically after 20 minutes if there are no matching
  /// queries.
  ///
  /// Optional.
  core.int? lifespanCount;

  /// The unique identifier of the context.
  ///
  /// Supported formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  ///
  /// Required.
  core.String? name;

  /// The collection of parameters associated with this context.
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
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GoogleCloudDialogflowV2beta1Context({
    this.lifespanCount,
    this.name,
    this.parameters,
  });

  GoogleCloudDialogflowV2beta1Context.fromJson(core.Map json_)
    : this(
        lifespanCount: json_['lifespanCount'] as core.int?,
        name: json_['name'] as core.String?,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lifespanCount != null) 'lifespanCount': lifespanCount!,
    if (name != null) 'name': name!,
    if (parameters != null) 'parameters': parameters!,
  };
}

/// Represents a conversation.
///
/// A conversation is an interaction between an agent, including live agents and
/// Dialogflow agents, and a support customer. Conversations can include phone
/// calls and text-based chat sessions.
class GoogleCloudDialogflowV2beta1Conversation {
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
  ///
  /// Optional.
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

  /// The context reference updates provided by external systems.
  ///
  /// Output only.
  core.Map<
    core.String,
    GoogleCloudDialogflowV2beta1ConversationContextReference
  >?
  ingestedContextReferences;

  /// The current state of the Conversation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Conversation is currently open for media analysis.
  /// - "COMPLETED" : Conversation has been completed.
  core.String? lifecycleState;

  /// Identifier.
  ///
  /// The unique identifier of this conversation. Format:
  /// `projects//locations//conversations/`.
  ///
  /// Output only.
  core.String? name;

  /// Required if the conversation is to be connected over telephony.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1ConversationPhoneNumber? phoneNumber;

  /// The time the conversation was started.
  ///
  /// Output only.
  core.String? startTime;

  /// The telephony connection information.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfo?
  telephonyConnectionInfo;

  GoogleCloudDialogflowV2beta1Conversation({
    this.conversationProfile,
    this.conversationStage,
    this.endTime,
    this.ingestedContextReferences,
    this.lifecycleState,
    this.name,
    this.phoneNumber,
    this.startTime,
    this.telephonyConnectionInfo,
  });

  GoogleCloudDialogflowV2beta1Conversation.fromJson(core.Map json_)
    : this(
        conversationProfile: json_['conversationProfile'] as core.String?,
        conversationStage: json_['conversationStage'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        ingestedContextReferences: (json_['ingestedContextReferences']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowV2beta1ConversationContextReference.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        lifecycleState: json_['lifecycleState'] as core.String?,
        name: json_['name'] as core.String?,
        phoneNumber:
            json_.containsKey('phoneNumber')
                ? GoogleCloudDialogflowV2beta1ConversationPhoneNumber.fromJson(
                  json_['phoneNumber'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
        telephonyConnectionInfo:
            json_.containsKey('telephonyConnectionInfo')
                ? GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfo.fromJson(
                  json_['telephonyConnectionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationProfile != null)
      'conversationProfile': conversationProfile!,
    if (conversationStage != null) 'conversationStage': conversationStage!,
    if (endTime != null) 'endTime': endTime!,
    if (ingestedContextReferences != null)
      'ingestedContextReferences': ingestedContextReferences!,
    if (lifecycleState != null) 'lifecycleState': lifecycleState!,
    if (name != null) 'name': name!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (startTime != null) 'startTime': startTime!,
    if (telephonyConnectionInfo != null)
      'telephonyConnectionInfo': telephonyConnectionInfo!,
  };
}

/// Context of the conversation, including transcripts.
class GoogleCloudDialogflowV2beta1ConversationContext {
  /// List of message transcripts in the conversation.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1MessageEntry>? messageEntries;

  GoogleCloudDialogflowV2beta1ConversationContext({this.messageEntries});

  GoogleCloudDialogflowV2beta1ConversationContext.fromJson(core.Map json_)
    : this(
        messageEntries:
            (json_['messageEntries'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1MessageEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messageEntries != null) 'messageEntries': messageEntries!,
  };
}

/// Represents a piece of ingested context information.
class GoogleCloudDialogflowV2beta1ConversationContextReference {
  /// The list of content updates for a context reference.
  ///
  /// Required.
  core.List<
    GoogleCloudDialogflowV2beta1ConversationContextReferenceContextContent
  >?
  contextContents;

  /// The time the context reference was first created.
  ///
  /// Output only.
  core.String? createTime;

  /// The language of the information ingested, defaults to "en-US" if not set.
  ///
  /// Optional.
  core.String? languageCode;

  /// The mode in which context reference contents are updated.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UPDATE_MODE_UNSPECIFIED" : Unspecified update mode.
  /// - "APPEND" : Context content updates are applied in append mode.
  /// - "OVERWRITE" : Context content updates are applied in overwrite mode.
  core.String? updateMode;

  GoogleCloudDialogflowV2beta1ConversationContextReference({
    this.contextContents,
    this.createTime,
    this.languageCode,
    this.updateMode,
  });

  GoogleCloudDialogflowV2beta1ConversationContextReference.fromJson(
    core.Map json_,
  ) : this(
        contextContents:
            (json_['contextContents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ConversationContextReferenceContextContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMode: json_['updateMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextContents != null) 'contextContents': contextContents!,
    if (createTime != null) 'createTime': createTime!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (updateMode != null) 'updateMode': updateMode!,
  };
}

/// Contents ingested.
typedef GoogleCloudDialogflowV2beta1ConversationContextReferenceContextContent =
    $ConversationContextReferenceContextContent;

/// Represents a phone number for telephony integration.
///
/// It allows for connecting a particular conversation over telephony.
typedef GoogleCloudDialogflowV2beta1ConversationPhoneNumber =
    $ConversationPhoneNumber;

/// Defines the services to connect to incoming Dialogflow conversations.
class GoogleCloudDialogflowV2beta1ConversationProfile {
  /// Configuration for an automated agent to use with this profile.
  GoogleCloudDialogflowV2beta1AutomatedAgentConfig? automatedAgentConfig;

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
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig?
  humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent.
  ///
  /// Currently, this feature is not general available, please contact Google to
  /// get access.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig? humanAgentHandoffConfig;

  /// Language code for the conversation profile.
  ///
  /// If not specified, the language is en-US. Language at ConversationProfile
  /// should be set for all non en-us languages. This should be a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Example: "en-US".
  core.String? languageCode;

  /// Configuration for logging conversation lifecycle events.
  GoogleCloudDialogflowV2beta1LoggingConfig? loggingConfig;

  /// The unique identifier of this conversation profile.
  ///
  /// Format: `projects//locations//conversationProfiles/`.
  core.String? name;

  /// Configuration for publishing new message events.
  ///
  /// Event will be sent in format of ConversationEvent
  GoogleCloudDialogflowV2beta1NotificationConfig?
  newMessageEventNotificationConfig;

  /// Configuration for publishing transcription intermediate results.
  ///
  /// Event will be sent in format of ConversationEvent. If configured, the
  /// following information will be populated as ConversationEvent Pub/Sub
  /// message attributes: - "participant_id" - "participant_role" - "message_id"
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1NotificationConfig?
  newRecognitionResultNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  GoogleCloudDialogflowV2beta1NotificationConfig? notificationConfig;

  /// Name of the CX SecuritySettings reference for the agent.
  ///
  /// Format: `projects//locations//securitySettings/`.
  core.String? securitySettings;

  /// Settings for speech transcription.
  GoogleCloudDialogflowV2beta1SpeechToTextConfig? sttConfig;

  /// The time zone of this conversational profile from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// Defaults to America/New_York.
  core.String? timeZone;

  /// Configuration for Text-to-Speech synthesization.
  ///
  /// Used by Phone Gateway to specify synthesization options. If agent defines
  /// synthesization options as well, agent settings overrides the option here.
  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig? ttsConfig;

  /// Update time of the conversation profile.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2beta1ConversationProfile({
    this.automatedAgentConfig,
    this.createTime,
    this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
    this.newRecognitionResultNotificationConfig,
    this.notificationConfig,
    this.securitySettings,
    this.sttConfig,
    this.timeZone,
    this.ttsConfig,
    this.updateTime,
  });

  GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(core.Map json_)
    : this(
        automatedAgentConfig:
            json_.containsKey('automatedAgentConfig')
                ? GoogleCloudDialogflowV2beta1AutomatedAgentConfig.fromJson(
                  json_['automatedAgentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        humanAgentAssistantConfig:
            json_.containsKey('humanAgentAssistantConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromJson(
                  json_['humanAgentAssistantConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        humanAgentHandoffConfig:
            json_.containsKey('humanAgentHandoffConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromJson(
                  json_['humanAgentHandoffConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? GoogleCloudDialogflowV2beta1LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        newMessageEventNotificationConfig:
            json_.containsKey('newMessageEventNotificationConfig')
                ? GoogleCloudDialogflowV2beta1NotificationConfig.fromJson(
                  json_['newMessageEventNotificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        newRecognitionResultNotificationConfig:
            json_.containsKey('newRecognitionResultNotificationConfig')
                ? GoogleCloudDialogflowV2beta1NotificationConfig.fromJson(
                  json_['newRecognitionResultNotificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        notificationConfig:
            json_.containsKey('notificationConfig')
                ? GoogleCloudDialogflowV2beta1NotificationConfig.fromJson(
                  json_['notificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        securitySettings: json_['securitySettings'] as core.String?,
        sttConfig:
            json_.containsKey('sttConfig')
                ? GoogleCloudDialogflowV2beta1SpeechToTextConfig.fromJson(
                  json_['sttConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeZone: json_['timeZone'] as core.String?,
        ttsConfig:
            json_.containsKey('ttsConfig')
                ? GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(
                  json_['ttsConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
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
      'newMessageEventNotificationConfig': newMessageEventNotificationConfig!,
    if (newRecognitionResultNotificationConfig != null)
      'newRecognitionResultNotificationConfig':
          newRecognitionResultNotificationConfig!,
    if (notificationConfig != null) 'notificationConfig': notificationConfig!,
    if (securitySettings != null) 'securitySettings': securitySettings!,
    if (sttConfig != null) 'sttConfig': sttConfig!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (ttsConfig != null) 'ttsConfig': ttsConfig!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The information about phone calls connected via phone gateway to the
/// conversation.
class GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfo {
  /// The number dialed to connect this call in E.164 format.
  ///
  /// Output only.
  core.String? dialedNumber;

  /// The mime content from the initial SIP INVITE.
  ///
  /// Output only.
  core.List<
    GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoMimeContent
  >?
  extraMimeContents;

  /// SDP of the call.
  ///
  /// It's initially the SDP answer to the incoming call, but maybe later
  /// updated for the purpose of making the link active, etc.
  ///
  /// Optional.
  core.String? sdp;

  /// The SIP headers from the initial SIP INVITE.
  ///
  /// Output only.
  core.List<
    GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoSipHeader
  >?
  sipHeaders;

  GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfo({
    this.dialedNumber,
    this.extraMimeContents,
    this.sdp,
    this.sipHeaders,
  });

  GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfo.fromJson(
    core.Map json_,
  ) : this(
        dialedNumber: json_['dialedNumber'] as core.String?,
        extraMimeContents:
            (json_['extraMimeContents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoMimeContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sdp: json_['sdp'] as core.String?,
        sipHeaders:
            (json_['sipHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoSipHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dialedNumber != null) 'dialedNumber': dialedNumber!,
    if (extraMimeContents != null) 'extraMimeContents': extraMimeContents!,
    if (sdp != null) 'sdp': sdp!,
    if (sipHeaders != null) 'sipHeaders': sipHeaders!,
  };
}

/// The mime content from the initial SIP INVITE.
typedef GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoMimeContent =
    $ConversationTelephonyConnectionInfoMimeContent;

/// The SIP headers from the initial SIP INVITE.
typedef GoogleCloudDialogflowV2beta1ConversationTelephonyConnectionInfoSipHeader =
    $ConversationTelephonyConnectionInfoSipHeader;

/// The request message to create one Message.
///
/// Currently it is only used in BatchCreateMessagesRequest.
class GoogleCloudDialogflowV2beta1CreateMessageRequest {
  /// The message to create.
  ///
  /// Message.participant is required.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1Message? message;

  /// Resource identifier of the conversation to create message.
  ///
  /// Format: `projects//locations//conversations/`.
  ///
  /// Required.
  core.String? parent;

  GoogleCloudDialogflowV2beta1CreateMessageRequest({this.message, this.parent});

  GoogleCloudDialogflowV2beta1CreateMessageRequest.fromJson(core.Map json_)
    : this(
        message:
            json_.containsKey('message')
                ? GoogleCloudDialogflowV2beta1Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
    if (parent != null) 'parent': parent!,
  };
}

/// Pronunciation customization for a phrase.
typedef GoogleCloudDialogflowV2beta1CustomPronunciationParams =
    $CustomPronunciationParams00;

/// The request to detect user's intent.
class GoogleCloudDialogflowV2beta1DetectIntentRequest {
  /// The natural language speech audio to be processed.
  ///
  /// This field should be populated iff `query_input` is set to an input audio
  /// config. A single request can contain up to 1 minute of speech audio data.
  core.String? inputAudio;
  core.List<core.int> get inputAudioAsBytes =>
      convert.base64.decode(inputAudio!);

  set inputAudioAsBytes(core.List<core.int> bytes_) {
    inputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Instructs the speech synthesizer how to generate the output audio.
  ///
  /// If this field is not set and agent-level speech synthesizer is not
  /// configured, no output audio is generated.
  GoogleCloudDialogflowV2beta1OutputAudioConfig? outputAudioConfig;

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
  GoogleCloudDialogflowV2beta1QueryInput? queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowV2beta1QueryParameters? queryParams;

  GoogleCloudDialogflowV2beta1DetectIntentRequest({
    this.inputAudio,
    this.outputAudioConfig,
    this.outputAudioConfigMask,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowV2beta1DetectIntentRequest.fromJson(core.Map json_)
    : this(
        inputAudio: json_['inputAudio'] as core.String?,
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputAudioConfigMask: json_['outputAudioConfigMask'] as core.String?,
        queryInput:
            json_.containsKey('queryInput')
                ? GoogleCloudDialogflowV2beta1QueryInput.fromJson(
                  json_['queryInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryParams:
            json_.containsKey('queryParams')
                ? GoogleCloudDialogflowV2beta1QueryParameters.fromJson(
                  json_['queryParams'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDialogflowV2beta1DetectIntentResponse {
  /// If Knowledge Connectors are enabled, there could be more than one result
  /// returned for a given query or event, and this field will contain all
  /// results except for the top one, which is captured in query_result.
  ///
  /// The alternative results are ordered by decreasing
  /// `QueryResult.intent_detection_confidence`. If Knowledge Connectors are
  /// disabled, this field will be empty until multiple responses for regular
  /// intents are supported, at which point those additional results will be
  /// surfaced here.
  core.List<GoogleCloudDialogflowV2beta1QueryResult>? alternativeQueryResults;

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

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowV2beta1OutputAudioConfig? outputAudioConfig;

  /// The selected results of the conversational query or event processing.
  ///
  /// See `alternative_query_results` for additional potential results.
  GoogleCloudDialogflowV2beta1QueryResult? queryResult;

  /// The unique identifier of the response.
  ///
  /// It can be used to locate a response in the training example set or for
  /// reporting issues.
  core.String? responseId;

  /// Specifies the status of the webhook request.
  GoogleRpcStatus? webhookStatus;

  GoogleCloudDialogflowV2beta1DetectIntentResponse({
    this.alternativeQueryResults,
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.webhookStatus,
  });

  GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(core.Map json_)
    : this(
        alternativeQueryResults:
            (json_['alternativeQueryResults'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1QueryResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig:
            json_.containsKey('outputAudioConfig')
                ? GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
                  json_['outputAudioConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryResult:
            json_.containsKey('queryResult')
                ? GoogleCloudDialogflowV2beta1QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseId: json_['responseId'] as core.String?,
        webhookStatus:
            json_.containsKey('webhookStatus')
                ? GoogleRpcStatus.fromJson(
                  json_['webhookStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alternativeQueryResults != null)
      'alternativeQueryResults': alternativeQueryResults!,
    if (outputAudio != null) 'outputAudio': outputAudio!,
    if (outputAudioConfig != null) 'outputAudioConfig': outputAudioConfig!,
    if (queryResult != null) 'queryResult': queryResult!,
    if (responseId != null) 'responseId': responseId!,
    if (webhookStatus != null) 'webhookStatus': webhookStatus!,
  };
}

/// Represents a Dialogflow assist answer.
class GoogleCloudDialogflowV2beta1DialogflowAssistAnswer {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// An intent suggestion generated from conversation.
  GoogleCloudDialogflowV2beta1IntentSuggestion? intentSuggestion;

  /// Result from v2 agent.
  GoogleCloudDialogflowV2beta1QueryResult? queryResult;

  GoogleCloudDialogflowV2beta1DialogflowAssistAnswer({
    this.answerRecord,
    this.intentSuggestion,
    this.queryResult,
  });

  GoogleCloudDialogflowV2beta1DialogflowAssistAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        intentSuggestion:
            json_.containsKey('intentSuggestion')
                ? GoogleCloudDialogflowV2beta1IntentSuggestion.fromJson(
                  json_['intentSuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryResult:
            json_.containsKey('queryResult')
                ? GoogleCloudDialogflowV2beta1QueryResult.fromJson(
                  json_['queryResult'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (intentSuggestion != null) 'intentSuggestion': intentSuggestion!,
    if (queryResult != null) 'queryResult': queryResult!,
  };
}

/// A knowledge document to be used by a KnowledgeBase.
///
/// For more information, see the
/// [knowledge base guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases).
/// Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
/// only use `projects.knowledgeBases.documents`.
class GoogleCloudDialogflowV2beta1Document {
  /// The raw content of the document.
  ///
  /// This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  /// Note: This field is in the process of being deprecated, please use
  /// raw_content instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? content;

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
  /// fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will
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
  GoogleCloudDialogflowV2beta1DocumentReloadStatus? latestReloadStatus;

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

  set rawContentAsBytes(core.List<core.int> bytes_) {
    rawContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The current state of the document.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The document state is unspecified.
  /// - "CREATING" : The document creation is in progress.
  /// - "ACTIVE" : The document is active and ready to use.
  /// - "UPDATING" : The document updation is in progress.
  /// - "RELOADING" : The document is reloading.
  /// - "DELETING" : The document deletion is in progress.
  core.String? state;

  GoogleCloudDialogflowV2beta1Document({
    this.content,
    this.contentUri,
    this.displayName,
    this.enableAutoReload,
    this.knowledgeTypes,
    this.latestReloadStatus,
    this.metadata,
    this.mimeType,
    this.name,
    this.rawContent,
    this.state,
  });

  GoogleCloudDialogflowV2beta1Document.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        contentUri: json_['contentUri'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableAutoReload: json_['enableAutoReload'] as core.bool?,
        knowledgeTypes:
            (json_['knowledgeTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        latestReloadStatus:
            json_.containsKey('latestReloadStatus')
                ? GoogleCloudDialogflowV2beta1DocumentReloadStatus.fromJson(
                  json_['latestReloadStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        mimeType: json_['mimeType'] as core.String?,
        name: json_['name'] as core.String?,
        rawContent: json_['rawContent'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (contentUri != null) 'contentUri': contentUri!,
    if (displayName != null) 'displayName': displayName!,
    if (enableAutoReload != null) 'enableAutoReload': enableAutoReload!,
    if (knowledgeTypes != null) 'knowledgeTypes': knowledgeTypes!,
    if (latestReloadStatus != null) 'latestReloadStatus': latestReloadStatus!,
    if (metadata != null) 'metadata': metadata!,
    if (mimeType != null) 'mimeType': mimeType!,
    if (name != null) 'name': name!,
    if (rawContent != null) 'rawContent': rawContent!,
    if (state != null) 'state': state!,
  };
}

/// The status of a reload attempt.
class GoogleCloudDialogflowV2beta1DocumentReloadStatus {
  /// The status of a reload attempt or the initial load.
  ///
  /// Output only.
  GoogleRpcStatus? status;

  /// The time of a reload attempt.
  ///
  /// This reload may have been triggered automatically or manually and may not
  /// have succeeded.
  ///
  /// Output only.
  core.String? time;

  GoogleCloudDialogflowV2beta1DocumentReloadStatus({this.status, this.time});

  GoogleCloudDialogflowV2beta1DocumentReloadStatus.fromJson(core.Map json_)
    : this(
        status:
            json_.containsKey('status')
                ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        time: json_['time'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
    if (time != null) 'time': time!,
  };
}

/// The message in the response that indicates the parameters of DTMF.
typedef GoogleCloudDialogflowV2beta1DtmfParameters = $DtmfParameters;

/// A customer-managed encryption key specification that can be applied to all
/// created resources (e.g. Conversation).
typedef GoogleCloudDialogflowV2beta1EncryptionSpec = $EncryptionSpec01;

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
class GoogleCloudDialogflowV2beta1EntityType {
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
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity>? entities;

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
  /// EntityTypes.BatchUpdateEntityTypes methods. Supported formats: -
  /// `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  core.String? name;

  GoogleCloudDialogflowV2beta1EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.kind,
    this.name,
  });

  GoogleCloudDialogflowV2beta1EntityType.fromJson(core.Map json_)
    : this(
        autoExpansionMode: json_['autoExpansionMode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableFuzzyExtraction: json_['enableFuzzyExtraction'] as core.bool?,
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
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
class GoogleCloudDialogflowV2beta1EntityTypeBatch {
  /// A collection of entity types.
  core.List<GoogleCloudDialogflowV2beta1EntityType>? entityTypes;

  GoogleCloudDialogflowV2beta1EntityTypeBatch({this.entityTypes});

  GoogleCloudDialogflowV2beta1EntityTypeBatch.fromJson(core.Map json_)
    : this(
        entityTypes:
            (json_['entityTypes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1EntityType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityTypes != null) 'entityTypes': entityTypes!,
  };
}

/// An **entity entry** for an associated entity type.
typedef GoogleCloudDialogflowV2beta1EntityTypeEntity = $EntityTypeEntity00;

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
class GoogleCloudDialogflowV2beta1Environment {
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
  GoogleCloudDialogflowV2beta1Fulfillment? fulfillment;

  /// The unique identifier of this agent environment.
  ///
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
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
  GoogleCloudDialogflowV2beta1TextToSpeechSettings? textToSpeechSettings;

  /// The last update time of this environment.
  ///
  /// This field is read-only, i.e., it cannot be set by create and update
  /// methods.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2beta1Environment({
    this.agentVersion,
    this.description,
    this.fulfillment,
    this.name,
    this.state,
    this.textToSpeechSettings,
    this.updateTime,
  });

  GoogleCloudDialogflowV2beta1Environment.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        description: json_['description'] as core.String?,
        fulfillment:
            json_.containsKey('fulfillment')
                ? GoogleCloudDialogflowV2beta1Fulfillment.fromJson(
                  json_['fulfillment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        textToSpeechSettings:
            json_.containsKey('textToSpeechSettings')
                ? GoogleCloudDialogflowV2beta1TextToSpeechSettings.fromJson(
                  json_['textToSpeechSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
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
class GoogleCloudDialogflowV2beta1EnvironmentHistory {
  /// The list of agent environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1EnvironmentHistoryEntry>? entries;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The name of the environment this history is for.
  ///
  /// Supported formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  ///
  /// Output only.
  core.String? parent;

  GoogleCloudDialogflowV2beta1EnvironmentHistory({
    this.entries,
    this.nextPageToken,
    this.parent,
  });

  GoogleCloudDialogflowV2beta1EnvironmentHistory.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1EnvironmentHistoryEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (parent != null) 'parent': parent!,
  };
}

/// Represents an environment history entry.
typedef GoogleCloudDialogflowV2beta1EnvironmentHistoryEntry =
    $EnvironmentHistoryEntry;

/// Events allow for matching intents by event name instead of the natural
/// language input.
///
/// For instance, input `` can trigger a personalized welcome response. The
/// parameter `name` may be used by the agent in the response: `"Hello
/// #welcome_event.name! What can I do for you today?"`.
typedef GoogleCloudDialogflowV2beta1EventInput = $EventInput00;

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowV2beta1ExportAgentRequest {
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

  GoogleCloudDialogflowV2beta1ExportAgentRequest({this.agentUri});

  GoogleCloudDialogflowV2beta1ExportAgentRequest.fromJson(core.Map json_)
    : this(agentUri: json_['agentUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (agentUri != null) 'agentUri': agentUri!,
  };
}

/// Represents answer from "frequently asked questions".
typedef GoogleCloudDialogflowV2beta1FaqAnswer = $FaqAnswer;

/// Providing examples in the generator (i.e. building a few-shot generator)
/// helps convey the desired format of the LLM response.
class GoogleCloudDialogflowV2beta1FewShotExample {
  /// Conversation transcripts.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1ConversationContext? conversationContext;

  /// Key is the placeholder field name in input, value is the value of the
  /// placeholder.
  ///
  /// E.g. instruction contains "@price", and ingested data has \<"price",
  /// "10"\>
  ///
  /// Optional.
  core.Map<core.String, core.String>? extraInfo;

  /// Example output of the model.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1GeneratorSuggestion? output;

  /// Summarization sections.
  GoogleCloudDialogflowV2beta1SummarizationSectionList?
  summarizationSectionList;

  GoogleCloudDialogflowV2beta1FewShotExample({
    this.conversationContext,
    this.extraInfo,
    this.output,
    this.summarizationSectionList,
  });

  GoogleCloudDialogflowV2beta1FewShotExample.fromJson(core.Map json_)
    : this(
        conversationContext:
            json_.containsKey('conversationContext')
                ? GoogleCloudDialogflowV2beta1ConversationContext.fromJson(
                  json_['conversationContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        extraInfo: (json_['extraInfo'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        output:
            json_.containsKey('output')
                ? GoogleCloudDialogflowV2beta1GeneratorSuggestion.fromJson(
                  json_['output'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        summarizationSectionList:
            json_.containsKey('summarizationSectionList')
                ? GoogleCloudDialogflowV2beta1SummarizationSectionList.fromJson(
                  json_['summarizationSectionList']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationContext != null)
      'conversationContext': conversationContext!,
    if (extraInfo != null) 'extraInfo': extraInfo!,
    if (output != null) 'output': output!,
    if (summarizationSectionList != null)
      'summarizationSectionList': summarizationSectionList!,
  };
}

/// Free form generator context that customer can configure.
typedef GoogleCloudDialogflowV2beta1FreeFormContext = $FreeFormContext;

/// Suggestion generated using free form generator.
typedef GoogleCloudDialogflowV2beta1FreeFormSuggestion = $FreeFormSuggestion;

/// By default, your agent responds to a matched intent with a static response.
///
/// As an alternative, you can provide a more dynamic response by using
/// fulfillment. When you enable fulfillment for an intent, Dialogflow responds
/// to that intent by calling a service that you define. For example, if an
/// end-user wants to schedule a haircut on Friday, your service can check your
/// database and respond to the end-user with availability information for
/// Friday. For more information, see the
/// [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2beta1Fulfillment {
  /// The human-readable name of the fulfillment, unique within the agent.
  ///
  /// This field is not used for Fulfillment in an Environment.
  core.String? displayName;

  /// Whether fulfillment is enabled.
  core.bool? enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  core.List<GoogleCloudDialogflowV2beta1FulfillmentFeature>? features;

  /// Configuration for a generic web service.
  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService? genericWebService;

  /// The unique identifier of the fulfillment.
  ///
  /// Supported formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment` This field is not used for
  /// Fulfillment in an Environment.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2beta1Fulfillment({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.name,
  });

  GoogleCloudDialogflowV2beta1Fulfillment.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        features:
            (json_['features'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1FulfillmentFeature.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        genericWebService:
            json_.containsKey('genericWebService')
                ? GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromJson(
                  json_['genericWebService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
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
typedef GoogleCloudDialogflowV2beta1FulfillmentFeature = $FulfillmentFeature;

/// Represents configuration for a generic web service.
///
/// Dialogflow supports two mechanisms for authentications: - Basic
/// authentication with username and password. - Authentication with additional
/// authentication headers. More information could be found at:
/// https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2beta1FulfillmentGenericWebService {
  /// Indicates if generic web service is created through Cloud Functions
  /// integration.
  ///
  /// Defaults to false. is_cloud_function is deprecated. Cloud functions can be
  /// configured by its uri as a regular web service now.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isCloudFunction;

  /// The password for HTTP Basic authentication.
  core.String? password;

  /// The HTTP request headers to send together with fulfillment requests.
  core.Map<core.String, core.String>? requestHeaders;

  /// The fulfillment URI for receiving POST requests.
  ///
  /// It must use https protocol.
  ///
  /// Required.
  core.String? uri;

  /// The user name for HTTP Basic authentication.
  core.String? username;

  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService({
    this.isCloudFunction,
    this.password,
    this.requestHeaders,
    this.uri,
    this.username,
  });

  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromJson(
    core.Map json_,
  ) : this(
        isCloudFunction: json_['isCloudFunction'] as core.bool?,
        password: json_['password'] as core.String?,
        requestHeaders: (json_['requestHeaders']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        uri: json_['uri'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (isCloudFunction != null) 'isCloudFunction': isCloudFunction!,
    if (password != null) 'password': password!,
    if (requestHeaders != null) 'requestHeaders': requestHeaders!,
    if (uri != null) 'uri': uri!,
    if (username != null) 'username': username!,
  };
}

/// Google Cloud Storage location for single input.
class GoogleCloudDialogflowV2beta1GcsSource {
  /// The Google Cloud Storage URIs for the inputs.
  ///
  /// A URI is of the form: `gs://bucket/object-prefix-or-name` Whether a prefix
  /// or name is used depends on the use case.
  ///
  /// Required.
  core.String? uri;

  GoogleCloudDialogflowV2beta1GcsSource({this.uri});

  GoogleCloudDialogflowV2beta1GcsSource.fromJson(core.Map json_)
    : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
  };
}

/// Google Cloud Storage locations for the inputs.
typedef GoogleCloudDialogflowV2beta1GcsSources = $GcsSources;

/// The request message for Conversations.GenerateStatelessSuggestion.
class GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest {
  /// A section of ingested context information.
  ///
  /// The key is the name of the context reference and the value contains the
  /// contents of the context reference. The key is used to incorporate ingested
  /// context references to enhance the generator.
  ///
  /// Optional.
  core.Map<
    core.String,
    GoogleCloudDialogflowV2beta1ConversationContextReference
  >?
  contextReferences;

  /// Context of the conversation, including transcripts.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1ConversationContext? conversationContext;

  /// Uncreated generator.
  ///
  /// It should be a complete generator that includes all information about the
  /// generator.
  GoogleCloudDialogflowV2beta1Generator? generator;

  /// The resource name of the existing created generator.
  ///
  /// Format: `projects//locations//generators/`
  core.String? generatorName;

  /// Name of the CX SecuritySettings which is used to redact generated
  /// response.
  ///
  /// If this field is empty, try to fetch v2 security_settings, which is a
  /// project level setting. If this field is empty and no v2 security_settings
  /// set up in this project, no redaction will be done. Format:
  /// `projects//locations//securitySettings/`.
  ///
  /// Optional.
  core.String? securitySettings;

  /// A list of trigger events.
  ///
  /// Generator will be triggered only if it's trigger event is included here.
  ///
  /// Optional.
  core.List<core.String>? triggerEvents;

  GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest({
    this.contextReferences,
    this.conversationContext,
    this.generator,
    this.generatorName,
    this.securitySettings,
    this.triggerEvents,
  });

  GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest.fromJson(
    core.Map json_,
  ) : this(
        contextReferences: (json_['contextReferences']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowV2beta1ConversationContextReference.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        conversationContext:
            json_.containsKey('conversationContext')
                ? GoogleCloudDialogflowV2beta1ConversationContext.fromJson(
                  json_['conversationContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        generator:
            json_.containsKey('generator')
                ? GoogleCloudDialogflowV2beta1Generator.fromJson(
                  json_['generator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        generatorName: json_['generatorName'] as core.String?,
        securitySettings: json_['securitySettings'] as core.String?,
        triggerEvents:
            (json_['triggerEvents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextReferences != null) 'contextReferences': contextReferences!,
    if (conversationContext != null)
      'conversationContext': conversationContext!,
    if (generator != null) 'generator': generator!,
    if (generatorName != null) 'generatorName': generatorName!,
    if (securitySettings != null) 'securitySettings': securitySettings!,
    if (triggerEvents != null) 'triggerEvents': triggerEvents!,
  };
}

/// The response message for Conversations.GenerateStatelessSuggestion.
class GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse {
  /// Generated suggestion for a conversation.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1GeneratorSuggestion? generatorSuggestion;

  GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse({
    this.generatorSuggestion,
  });

  GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse.fromJson(
    core.Map json_,
  ) : this(
        generatorSuggestion:
            json_.containsKey('generatorSuggestion')
                ? GoogleCloudDialogflowV2beta1GeneratorSuggestion.fromJson(
                  json_['generatorSuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generatorSuggestion != null)
      'generatorSuggestion': generatorSuggestion!,
  };
}

/// The request message for Conversations.GenerateStatelessSummary.
class GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest {
  /// A ConversationProfile containing information required for Summary
  /// generation.
  ///
  /// Required fields: {language_code, security_settings} Optional fields:
  /// {agent_assistant_config}
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1ConversationProfile? conversationProfile;

  /// The name of the latest conversation message used as context for generating
  /// a Summary.
  ///
  /// If empty, the latest message of the conversation will be used. The format
  /// is specific to the user and the names of the messages provided.
  ///
  /// Optional.
  core.String? latestMessage;

  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// By default 500 and at most 1000.
  ///
  /// Optional.
  core.int? maxContextSize;

  /// The conversation to suggest a summary for.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequestMinimalConversation?
  statelessConversation;

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest({
    this.conversationProfile,
    this.latestMessage,
    this.maxContextSize,
    this.statelessConversation,
  });

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest.fromJson(
    core.Map json_,
  ) : this(
        conversationProfile:
            json_.containsKey('conversationProfile')
                ? GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
                  json_['conversationProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        latestMessage: json_['latestMessage'] as core.String?,
        maxContextSize: json_['maxContextSize'] as core.int?,
        statelessConversation:
            json_.containsKey('statelessConversation')
                ? GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequestMinimalConversation.fromJson(
                  json_['statelessConversation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationProfile != null)
      'conversationProfile': conversationProfile!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (maxContextSize != null) 'maxContextSize': maxContextSize!,
    if (statelessConversation != null)
      'statelessConversation': statelessConversation!,
  };
}

/// The minimum amount of information required to generate a Summary without
/// having a Conversation resource created.
class GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequestMinimalConversation {
  /// The messages that the Summary will be generated from.
  ///
  /// It is expected that this message content is already redacted and does not
  /// contain any PII. Required fields: {content, language_code, participant,
  /// participant_role} Optional fields: {send_time} If send_time is not
  /// provided, then the messages must be provided in chronological order.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1Message>? messages;

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequestMinimalConversation({
    this.messages,
  });

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequestMinimalConversation.fromJson(
    core.Map json_,
  ) : this(
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Message.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messages != null) 'messages': messages!,
  };
}

/// The response message for Conversations.GenerateStatelessSummary.
class GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse {
  /// Number of messages prior to and including last_conversation_message used
  /// to compile the suggestion.
  ///
  /// It may be smaller than the GenerateStatelessSummaryRequest.context_size
  /// field in the request if there weren't that many messages in the
  /// conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used as context for compiling
  /// suggestion.
  ///
  /// The format is specific to the user and the names of the messages provided.
  core.String? latestMessage;

  /// Generated summary.
  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponseSummary? summary;

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse({
    this.contextSize,
    this.latestMessage,
    this.summary,
  });

  GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        summary:
            json_.containsKey('summary')
                ? GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponseSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (summary != null) 'summary': summary!,
  };
}

/// Generated summary for a conversation.
typedef GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponseSummary =
    $GenerateStatelessSummaryResponseSummary;

/// The request message for Conversations.GenerateSuggestions.
typedef GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest =
    $GenerateSuggestionsRequest;

/// The response message for Conversations.GenerateSuggestions.
class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse {
  /// The answers generated for the conversation based on context.
  core.List<
    GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer
  >?
  generatorSuggestionAnswers;

  /// The name of the latest conversation message used as context for compiling
  /// suggestion.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse({
    this.generatorSuggestionAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse.fromJson(
    core.Map json_,
  ) : this(
        generatorSuggestionAnswers:
            (json_['generatorSuggestionAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generatorSuggestionAnswers != null)
      'generatorSuggestionAnswers': generatorSuggestionAnswers!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// A GeneratorSuggestion answer.
class GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer {
  /// Answer record that uniquely identifies the suggestion.
  ///
  /// This can be used to provide suggestion feedback.
  core.String? answerRecord;

  /// Suggestion details.
  GoogleCloudDialogflowV2beta1GeneratorSuggestion? generatorSuggestion;

  /// The name of the generator used to generate this suggestion.
  ///
  /// Format: `projects//locations//generators/`.
  core.String? sourceGenerator;

  GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer({
    this.answerRecord,
    this.generatorSuggestion,
    this.sourceGenerator,
  });

  GoogleCloudDialogflowV2beta1GenerateSuggestionsResponseGeneratorSuggestionAnswer.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        generatorSuggestion:
            json_.containsKey('generatorSuggestion')
                ? GoogleCloudDialogflowV2beta1GeneratorSuggestion.fromJson(
                  json_['generatorSuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceGenerator: json_['sourceGenerator'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (generatorSuggestion != null)
      'generatorSuggestion': generatorSuggestion!,
    if (sourceGenerator != null) 'sourceGenerator': sourceGenerator!,
  };
}

/// LLM generator.
class GoogleCloudDialogflowV2beta1Generator {
  /// Creation time of this generator.
  ///
  /// Output only.
  core.String? createTime;

  /// Human readable description of the generator.
  ///
  /// Optional.
  core.String? description;

  /// Input of free from generator to LLM.
  GoogleCloudDialogflowV2beta1FreeFormContext? freeFormContext;

  /// Inference parameters for this generator.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1InferenceParameter? inferenceParameter;

  /// Identifier.
  ///
  /// The resource name of the generator. Format:
  /// `projects//locations//generators/`
  ///
  /// Output only.
  core.String? name;

  /// The published Large Language Model name.
  ///
  /// * To use the latest model version, specify the model name without version
  /// number. Example: `text-bison` * To use a stable model version, specify the
  /// version number as well. Example: `text-bison@002`.
  ///
  /// Optional.
  core.String? publishedModel;

  /// Input of Summarization feature.
  GoogleCloudDialogflowV2beta1SummarizationContext? summarizationContext;

  /// Resource names of the tools that the generator can choose from.
  ///
  /// Format: `projects//locations//tools/`.
  ///
  /// Optional.
  core.List<core.String>? tools;

  /// The trigger event of the generator.
  ///
  /// It defines when the generator is triggered in a conversation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRIGGER_EVENT_UNSPECIFIED" : Default value for TriggerEvent.
  /// - "END_OF_UTTERANCE" : Triggers when each chat message or voice utterance
  /// ends.
  /// - "MANUAL_CALL" : Triggers on the conversation manually by API calls, such
  /// as Conversations.GenerateStatelessSuggestion and
  /// Conversations.GenerateSuggestions.
  /// - "CUSTOMER_MESSAGE" : Triggers after each customer message only.
  /// - "AGENT_MESSAGE" : Triggers after each agent message only.
  core.String? triggerEvent;

  /// Update time of this generator.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDialogflowV2beta1Generator({
    this.createTime,
    this.description,
    this.freeFormContext,
    this.inferenceParameter,
    this.name,
    this.publishedModel,
    this.summarizationContext,
    this.tools,
    this.triggerEvent,
    this.updateTime,
  });

  GoogleCloudDialogflowV2beta1Generator.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        freeFormContext:
            json_.containsKey('freeFormContext')
                ? GoogleCloudDialogflowV2beta1FreeFormContext.fromJson(
                  json_['freeFormContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inferenceParameter:
            json_.containsKey('inferenceParameter')
                ? GoogleCloudDialogflowV2beta1InferenceParameter.fromJson(
                  json_['inferenceParameter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        publishedModel: json_['publishedModel'] as core.String?,
        summarizationContext:
            json_.containsKey('summarizationContext')
                ? GoogleCloudDialogflowV2beta1SummarizationContext.fromJson(
                  json_['summarizationContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tools:
            (json_['tools'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        triggerEvent: json_['triggerEvent'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (freeFormContext != null) 'freeFormContext': freeFormContext!,
    if (inferenceParameter != null) 'inferenceParameter': inferenceParameter!,
    if (name != null) 'name': name!,
    if (publishedModel != null) 'publishedModel': publishedModel!,
    if (summarizationContext != null)
      'summarizationContext': summarizationContext!,
    if (tools != null) 'tools': tools!,
    if (triggerEvent != null) 'triggerEvent': triggerEvent!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Suggestion generated using a Generator.
class GoogleCloudDialogflowV2beta1GeneratorSuggestion {
  /// Free form suggestion.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1FreeFormSuggestion? freeFormSuggestion;

  /// Suggested summary.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1SummarySuggestion? summarySuggestion;

  /// List of request and response for tool calls executed.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo>?
  toolCallInfo;

  GoogleCloudDialogflowV2beta1GeneratorSuggestion({
    this.freeFormSuggestion,
    this.summarySuggestion,
    this.toolCallInfo,
  });

  GoogleCloudDialogflowV2beta1GeneratorSuggestion.fromJson(core.Map json_)
    : this(
        freeFormSuggestion:
            json_.containsKey('freeFormSuggestion')
                ? GoogleCloudDialogflowV2beta1FreeFormSuggestion.fromJson(
                  json_['freeFormSuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        summarySuggestion:
            json_.containsKey('summarySuggestion')
                ? GoogleCloudDialogflowV2beta1SummarySuggestion.fromJson(
                  json_['summarySuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolCallInfo:
            (json_['toolCallInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freeFormSuggestion != null) 'freeFormSuggestion': freeFormSuggestion!,
    if (summarySuggestion != null) 'summarySuggestion': summarySuggestion!,
    if (toolCallInfo != null) 'toolCallInfo': toolCallInfo!,
  };
}

/// Request and response for a tool call.
class GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo {
  /// Request for a tool call.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1ToolCall? toolCall;

  /// Response for a tool call.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1ToolCallResult? toolCallResult;

  GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo({
    this.toolCall,
    this.toolCallResult,
  });

  GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo.fromJson(
    core.Map json_,
  ) : this(
        toolCall:
            json_.containsKey('toolCall')
                ? GoogleCloudDialogflowV2beta1ToolCall.fromJson(
                  json_['toolCall'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolCallResult:
            json_.containsKey('toolCallResult')
                ? GoogleCloudDialogflowV2beta1ToolCallResult.fromJson(
                  json_['toolCallResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (toolCall != null) 'toolCall': toolCall!,
    if (toolCallResult != null) 'toolCallResult': toolCallResult!,
  };
}

/// Defines the Human Agent Assistant to connect to a conversation.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant.
  ///
  /// Currently, this feature is not general available, please contact Google to
  /// get access.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig?
  endUserSuggestionConfig;

  /// Configuration for agent assistance of human agent participant.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig?
  humanAgentSuggestionConfig;

  /// Configuration for message analysis.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig?
  messageAnalysisConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  GoogleCloudDialogflowV2beta1NotificationConfig? notificationConfig;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromJson(core.Map json_)
    : this(
        endUserSuggestionConfig:
            json_.containsKey('endUserSuggestionConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromJson(
                  json_['endUserSuggestionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        humanAgentSuggestionConfig:
            json_.containsKey('humanAgentSuggestionConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromJson(
                  json_['humanAgentSuggestionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        messageAnalysisConfig:
            json_.containsKey('messageAnalysisConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig.fromJson(
                  json_['messageAnalysisConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        notificationConfig:
            json_.containsKey('notificationConfig')
                ? GoogleCloudDialogflowV2beta1NotificationConfig.fromJson(
                  json_['notificationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endUserSuggestionConfig != null)
      'endUserSuggestionConfig': endUserSuggestionConfig!,
    if (humanAgentSuggestionConfig != null)
      'humanAgentSuggestionConfig': humanAgentSuggestionConfig!,
    if (messageAnalysisConfig != null)
      'messageAnalysisConfig': messageAnalysisConfig!,
    if (notificationConfig != null) 'notificationConfig': notificationConfig!,
  };
}

/// Custom conversation models used in agent assist feature.
///
/// Supported feature: ARTICLE_SUGGESTION, SMART_COMPOSE, SMART_REPLY,
/// CONVERSATION_SUMMARIZATION.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig =
    $HumanAgentAssistantConfigConversationModelConfig;

/// Config to process conversation.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig =
    $HumanAgentAssistantConfigConversationProcessConfig;

/// Configuration for analyses to run on each conversation message.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig =
    $HumanAgentAssistantConfigMessageAnalysisConfig;

/// Detail human agent assistant config.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig {
  /// When disable_high_latency_features_sync_delivery is true and using the
  /// AnalyzeContent API, we will not deliver the responses from high latency
  /// features in the API response.
  ///
  /// The human_agent_assistant_config.notification_config must be configured
  /// and enable_event_based_suggestion must be set to true to receive the
  /// responses from high latency features in Pub/Sub. High latency feature(s):
  /// KNOWLEDGE_ASSIST
  ///
  /// Optional.
  core.bool? disableHighLatencyFeaturesSyncDelivery;

  /// Configuration of different suggestion features.
  ///
  /// One feature can have only one config.
  core.List<
    GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig
  >?
  featureConfigs;

  /// List of various generator resource names used in the conversation profile.
  ///
  /// Optional.
  core.List<core.String>? generators;

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

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.featureConfigs,
    this.generators,
    this.groupSuggestionResponses,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromJson(
    core.Map json_,
  ) : this(
        disableHighLatencyFeaturesSyncDelivery:
            json_['disableHighLatencyFeaturesSyncDelivery'] as core.bool?,
        featureConfigs:
            (json_['featureConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        generators:
            (json_['generators'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        groupSuggestionResponses:
            json_['groupSuggestionResponses'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disableHighLatencyFeaturesSyncDelivery != null)
      'disableHighLatencyFeaturesSyncDelivery':
          disableHighLatencyFeaturesSyncDelivery!,
    if (featureConfigs != null) 'featureConfigs': featureConfigs!,
    if (generators != null) 'generators': generators!,
    if (groupSuggestionResponses != null)
      'groupSuggestionResponses': groupSuggestionResponses!,
  };
}

/// Config for suggestion features.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig {
  /// Configs of custom conversation model.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig?
  conversationModelConfig;

  /// Configs for processing conversation.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig?
  conversationProcessConfig;

  /// Disable the logging of search queries sent by human agents.
  ///
  /// It can prevent those queries from being stored at answer records.
  /// Supported features: KNOWLEDGE_SEARCH.
  ///
  /// Optional.
  core.bool? disableAgentQueryLogging;

  /// Enable including conversation context during query answer generation.
  ///
  /// Supported features: KNOWLEDGE_SEARCH.
  ///
  /// Optional.
  core.bool? enableConversationAugmentedQuery;

  /// Automatically iterates all participants and tries to compile suggestions.
  ///
  /// Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST,
  /// ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  core.bool? enableEventBasedSuggestion;

  /// Enable query suggestion only.
  ///
  /// Supported features: KNOWLEDGE_ASSIST
  ///
  /// Optional.
  core.bool? enableQuerySuggestionOnly;

  /// Enable query suggestion even if we can't find its answer.
  ///
  /// By default, queries are suggested only if we find its answer. Supported
  /// features: KNOWLEDGE_ASSIST
  ///
  /// Optional.
  core.bool? enableQuerySuggestionWhenNoAnswer;

  /// Configs of query.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig?
  queryConfig;

  /// The suggestion feature.
  GoogleCloudDialogflowV2beta1SuggestionFeature? suggestionFeature;

  /// Settings of suggestion trigger.
  ///
  /// Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use
  /// this field.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings?
  suggestionTriggerSettings;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
    core.Map json_,
  ) : this(
        conversationModelConfig:
            json_.containsKey('conversationModelConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig.fromJson(
                  json_['conversationModelConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversationProcessConfig:
            json_.containsKey('conversationProcessConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig.fromJson(
                  json_['conversationProcessConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableAgentQueryLogging:
            json_['disableAgentQueryLogging'] as core.bool?,
        enableConversationAugmentedQuery:
            json_['enableConversationAugmentedQuery'] as core.bool?,
        enableEventBasedSuggestion:
            json_['enableEventBasedSuggestion'] as core.bool?,
        enableQuerySuggestionOnly:
            json_['enableQuerySuggestionOnly'] as core.bool?,
        enableQuerySuggestionWhenNoAnswer:
            json_['enableQuerySuggestionWhenNoAnswer'] as core.bool?,
        queryConfig:
            json_.containsKey('queryConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig.fromJson(
                  json_['queryConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestionFeature:
            json_.containsKey('suggestionFeature')
                ? GoogleCloudDialogflowV2beta1SuggestionFeature.fromJson(
                  json_['suggestionFeature']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestionTriggerSettings:
            json_.containsKey('suggestionTriggerSettings')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings.fromJson(
                  json_['suggestionTriggerSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationModelConfig != null)
      'conversationModelConfig': conversationModelConfig!,
    if (conversationProcessConfig != null)
      'conversationProcessConfig': conversationProcessConfig!,
    if (disableAgentQueryLogging != null)
      'disableAgentQueryLogging': disableAgentQueryLogging!,
    if (enableConversationAugmentedQuery != null)
      'enableConversationAugmentedQuery': enableConversationAugmentedQuery!,
    if (enableEventBasedSuggestion != null)
      'enableEventBasedSuggestion': enableEventBasedSuggestion!,
    if (enableQuerySuggestionOnly != null)
      'enableQuerySuggestionOnly': enableQuerySuggestionOnly!,
    if (enableQuerySuggestionWhenNoAnswer != null)
      'enableQuerySuggestionWhenNoAnswer': enableQuerySuggestionWhenNoAnswer!,
    if (queryConfig != null) 'queryConfig': queryConfig!,
    if (suggestionFeature != null) 'suggestionFeature': suggestionFeature!,
    if (suggestionTriggerSettings != null)
      'suggestionTriggerSettings': suggestionTriggerSettings!,
  };
}

/// Config for suggestion query.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig {
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
  /// results. If this field is not set, it is default to 0.0, which means that
  /// all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ,
  /// SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST,
  /// ENTITY_EXTRACTION.
  core.double? confidenceThreshold;

  /// Determines how recent conversation context is filtered when generating
  /// suggestions.
  ///
  /// If unspecified, no messages will be dropped.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings?
  contextFilterSettings;

  /// The number of recent messages to include in the context.
  ///
  /// Supported features: KNOWLEDGE_ASSIST.
  ///
  /// Optional.
  core.int? contextSize;

  /// Query from Dialogflow agent.
  ///
  /// It is used by DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource?
  dialogflowQuerySource;

  /// Query from knowledge base document.
  ///
  /// It is used by: SMART_REPLY, SMART_COMPOSE.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource?
  documentQuerySource;

  /// Query from knowledgebase.
  ///
  /// It is used by: ARTICLE_SUGGESTION, FAQ.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource?
  knowledgeBaseQuerySource;

  /// Maximum number of results to return.
  ///
  /// Currently, if unset, defaults to 10. And the max number is 20.
  core.int? maxResults;

  /// The customized sections chosen to return when requesting a summary of a
  /// conversation.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigSections?
  sections;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.contextSize,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
    this.sections,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig.fromJson(
    core.Map json_,
  ) : this(
        confidenceThreshold:
            (json_['confidenceThreshold'] as core.num?)?.toDouble(),
        contextFilterSettings:
            json_.containsKey('contextFilterSettings')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.fromJson(
                  json_['contextFilterSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        contextSize: json_['contextSize'] as core.int?,
        dialogflowQuerySource:
            json_.containsKey('dialogflowQuerySource')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromJson(
                  json_['dialogflowQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        documentQuerySource:
            json_.containsKey('documentQuerySource')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromJson(
                  json_['documentQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeBaseQuerySource:
            json_.containsKey('knowledgeBaseQuerySource')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromJson(
                  json_['knowledgeBaseQuerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxResults: json_['maxResults'] as core.int?,
        sections:
            json_.containsKey('sections')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigSections.fromJson(
                  json_['sections'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidenceThreshold != null)
      'confidenceThreshold': confidenceThreshold!,
    if (contextFilterSettings != null)
      'contextFilterSettings': contextFilterSettings!,
    if (contextSize != null) 'contextSize': contextSize!,
    if (dialogflowQuerySource != null)
      'dialogflowQuerySource': dialogflowQuerySource!,
    if (documentQuerySource != null)
      'documentQuerySource': documentQuerySource!,
    if (knowledgeBaseQuerySource != null)
      'knowledgeBaseQuerySource': knowledgeBaseQuerySource!,
    if (maxResults != null) 'maxResults': maxResults!,
    if (sections != null) 'sections': sections!,
  };
}

/// Settings that determine how to filter recent conversation context when
/// generating suggestions.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings =
    $HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings;

/// Dialogflow source setting.
///
/// Supported feature: DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  /// The name of a dialogflow virtual agent used for end user side intent
  /// detection and suggestion.
  ///
  /// Format: `projects//locations//agent`. When multiple agents are allowed in
  /// the same Dialogflow project.
  ///
  /// Required.
  core.String? agent;

  /// The Dialogflow assist configuration for human agent.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig?
  humanAgentSideConfig;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
    this.agent,
    this.humanAgentSideConfig,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromJson(
    core.Map json_,
  ) : this(
        agent: json_['agent'] as core.String?,
        humanAgentSideConfig:
            json_.containsKey('humanAgentSideConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromJson(
                  json_['humanAgentSideConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agent != null) 'agent': agent!,
    if (humanAgentSideConfig != null)
      'humanAgentSideConfig': humanAgentSideConfig!,
  };
}

/// The configuration used for human agent side Dialogflow assist suggestion.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig =
    $HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig;

/// Document source settings.
///
/// Supported features: SMART_REPLY, SMART_COMPOSE.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource {
  /// Knowledge documents to query from.
  ///
  /// Format: `projects//locations//knowledgeBases//documents/`. Currently, only
  /// one document is supported.
  ///
  /// Required.
  core.List<core.String>? documents;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource({
    this.documents,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromJson(
    core.Map json_,
  ) : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
  };
}

/// Knowledge base source settings.
///
/// Supported features: ARTICLE_SUGGESTION, FAQ.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource {
  /// Knowledge bases to query.
  ///
  /// Format: `projects//locations//knowledgeBases/`. Currently, only one
  /// knowledge base is supported.
  ///
  /// Required.
  core.List<core.String>? knowledgeBases;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource({
    this.knowledgeBases,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromJson(
    core.Map json_,
  ) : this(
        knowledgeBases:
            (json_['knowledgeBases'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (knowledgeBases != null) 'knowledgeBases': knowledgeBases!,
  };
}

/// Custom sections to return when requesting a summary of a conversation.
///
/// This is only supported when `baseline_model_version` == '2.0'. Supported
/// features: CONVERSATION_SUMMARIZATION, CONVERSATION_SUMMARIZATION_VOICE.
typedef GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigSections =
    $HumanAgentAssistantConfigSuggestionQueryConfigSections;

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  core.bool? noSmallTalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  core.bool? onlyEndUser;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmallTalk,
    this.onlyEndUser,
  });

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings.fromJson(
    core.Map json_,
  ) : this(
        noSmallTalk: json_['noSmallTalk'] as core.bool?,
        onlyEndUser: json_['onlyEndUser'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (noSmallTalk != null) 'noSmallTalk': noSmallTalk!,
    if (onlyEndUser != null) 'onlyEndUser': onlyEndUser!,
  };
}

/// Defines the hand off to a live agent, typically on which external agent
/// service provider to connect to a conversation.
///
/// Currently, this feature is not general available, please contact Google to
/// get access.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig {
  /// Uses [LivePerson](https://www.liveperson.com).
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig?
  livePersonConfig;

  /// Uses Salesforce Live Agent.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig?
  salesforceLiveAgentConfig;

  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromJson(core.Map json_)
    : this(
        livePersonConfig:
            json_.containsKey('livePersonConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig.fromJson(
                  json_['livePersonConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        salesforceLiveAgentConfig:
            json_.containsKey('salesforceLiveAgentConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromJson(
                  json_['salesforceLiveAgentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (livePersonConfig != null) 'livePersonConfig': livePersonConfig!,
    if (salesforceLiveAgentConfig != null)
      'salesforceLiveAgentConfig': salesforceLiveAgentConfig!,
  };
}

/// Configuration specific to [LivePerson](https://www.liveperson.com).
typedef GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig =
    $HumanAgentHandoffConfigLivePersonConfig;

/// Configuration specific to Salesforce Live Agent.
typedef GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig =
    $HumanAgentHandoffConfigSalesforceLiveAgentConfig;

/// The request message for Agents.ImportAgent.
typedef GoogleCloudDialogflowV2beta1ImportAgentRequest = $ImportAgentRequest;

/// The template used for importing documents.
class GoogleCloudDialogflowV2beta1ImportDocumentTemplate {
  /// The knowledge type of document content.
  ///
  /// Required.
  core.List<core.String>? knowledgeTypes;

  /// Metadata for the document.
  ///
  /// The metadata supports arbitrary key-value pairs. Suggested use cases
  /// include storing a document's title, an external URL distinct from the
  /// document's content_uri, etc. The max size of a `key` or a `value` of the
  /// metadata is 1024 bytes.
  core.Map<core.String, core.String>? metadata;

  /// The MIME type of the document.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDialogflowV2beta1ImportDocumentTemplate({
    this.knowledgeTypes,
    this.metadata,
    this.mimeType,
  });

  GoogleCloudDialogflowV2beta1ImportDocumentTemplate.fromJson(core.Map json_)
    : this(
        knowledgeTypes:
            (json_['knowledgeTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (knowledgeTypes != null) 'knowledgeTypes': knowledgeTypes!,
    if (metadata != null) 'metadata': metadata!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Request message for Documents.ImportDocuments.
class GoogleCloudDialogflowV2beta1ImportDocumentsRequest {
  /// Document template used for importing all the documents.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1ImportDocumentTemplate? documentTemplate;

  /// The Google Cloud Storage location for the documents.
  ///
  /// The path can include a wildcard. These URIs may have the forms `gs:///`.
  /// `gs:/// / * .`.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1GcsSources? gcsSource;

  /// Whether to import custom metadata from Google Cloud Storage.
  ///
  /// Only valid when the document source is Google Cloud Storage URI.
  core.bool? importGcsCustomMetadata;

  GoogleCloudDialogflowV2beta1ImportDocumentsRequest({
    this.documentTemplate,
    this.gcsSource,
    this.importGcsCustomMetadata,
  });

  GoogleCloudDialogflowV2beta1ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        documentTemplate:
            json_.containsKey('documentTemplate')
                ? GoogleCloudDialogflowV2beta1ImportDocumentTemplate.fromJson(
                  json_['documentTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDialogflowV2beta1GcsSources.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        importGcsCustomMetadata: json_['importGcsCustomMetadata'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentTemplate != null) 'documentTemplate': documentTemplate!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (importGcsCustomMetadata != null)
      'importGcsCustomMetadata': importGcsCustomMetadata!,
  };
}

/// The parameters of inference.
typedef GoogleCloudDialogflowV2beta1InferenceParameter = $InferenceParameter;

/// The request message for ConversationsService.IngestContextReferences.
class GoogleCloudDialogflowV2beta1IngestContextReferencesRequest {
  /// The context references to ingest.
  ///
  /// The key is the name of the context reference and the value contains the
  /// contents of the context reference. The key is used to incorporate ingested
  /// context references to enhance the generator.
  ///
  /// Required.
  core.Map<
    core.String,
    GoogleCloudDialogflowV2beta1ConversationContextReference
  >?
  contextReferences;

  GoogleCloudDialogflowV2beta1IngestContextReferencesRequest({
    this.contextReferences,
  });

  GoogleCloudDialogflowV2beta1IngestContextReferencesRequest.fromJson(
    core.Map json_,
  ) : this(
        contextReferences: (json_['contextReferences']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowV2beta1ConversationContextReference.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextReferences != null) 'contextReferences': contextReferences!,
  };
}

/// The response message for ConversationsService.IngestContextReferences.
class GoogleCloudDialogflowV2beta1IngestContextReferencesResponse {
  /// All context references ingested.
  core.Map<
    core.String,
    GoogleCloudDialogflowV2beta1ConversationContextReference
  >?
  ingestedContextReferences;

  GoogleCloudDialogflowV2beta1IngestContextReferencesResponse({
    this.ingestedContextReferences,
  });

  GoogleCloudDialogflowV2beta1IngestContextReferencesResponse.fromJson(
    core.Map json_,
  ) : this(
        ingestedContextReferences: (json_['ingestedContextReferences']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowV2beta1ConversationContextReference.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ingestedContextReferences != null)
      'ingestedContextReferences': ingestedContextReferences!,
  };
}

/// The request to initialize a location-level encryption specification.
class GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest {
  /// The encryption spec used for CMEK encryption.
  ///
  /// It is required that the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if encryption is
  /// available. If the kms_key_name is left empty, no encryption will be
  /// enforced.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1EncryptionSpec? encryptionSpec;

  GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest({
    this.encryptionSpec,
  });

  GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest.fromJson(
    core.Map json_,
  ) : this(
        encryptionSpec:
            json_.containsKey('encryptionSpec')
                ? GoogleCloudDialogflowV2beta1EncryptionSpec.fromJson(
                  json_['encryptionSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptionSpec != null) 'encryptionSpec': encryptionSpec!,
  };
}

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowV2beta1InputAudioConfig {
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
  GoogleCloudDialogflowV2beta1BargeInConfig? bargeInConfig;

  /// If set, use this no-speech timeout when the agent does not provide a
  /// no-speech timeout itself.
  core.String? defaultNoSpeechTimeout;

  /// Only used in Participants.AnalyzeContent and
  /// Participants.StreamingAnalyzeContent.
  ///
  /// If `false` and recognition doesn't return any result, trigger
  /// `NO_SPEECH_RECOGNIZED` event to Dialogflow agent.
  core.bool? disableNoSpeechRecognizedEvent;

  /// Enable automatic punctuation option at the speech backend.
  core.bool? enableAutomaticPunctuation;

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
  /// the same session do not necessarily need to specify the same language. If
  /// not set, the language is inferred from the ConversationProfile.stt_config.
  ///
  /// Required.
  core.String? languageCode;

  /// Which Speech model to select for the given request.
  ///
  /// For more information, see
  /// [Speech models](https://cloud.google.com/dialogflow/es/docs/speech-models).
  ///
  /// Optional.
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

  /// If `true`, the request will opt out for STT conformer model migration.
  ///
  /// This field will be deprecated once force migration takes place in June
  /// 2024. Please refer to
  /// [Dialogflow ES Speech model migration](https://cloud.google.com/dialogflow/es/docs/speech-model-migration).
  core.bool? optOutConformerModelMigration;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood.
  ///
  /// See
  /// [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details. This field is deprecated. Please use
  /// \[`speech_contexts`\]() instead. If you specify both \[`phrase_hints`\]()
  /// and \[`speech_contexts`\](), Dialogflow will treat the
  /// \[`phrase_hints`\]() as a single additional \[`SpeechContext`\]().
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? phraseHints;

  /// A collection of phrase set resources to use for speech adaptation.
  core.List<core.String>? phraseSets;

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
  core.List<GoogleCloudDialogflowV2beta1SpeechContext>? speechContexts;

  GoogleCloudDialogflowV2beta1InputAudioConfig({
    this.audioEncoding,
    this.bargeInConfig,
    this.defaultNoSpeechTimeout,
    this.disableNoSpeechRecognizedEvent,
    this.enableAutomaticPunctuation,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.modelVariant,
    this.optOutConformerModelMigration,
    this.phraseHints,
    this.phraseSets,
    this.sampleRateHertz,
    this.singleUtterance,
    this.speechContexts,
  });

  GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        bargeInConfig:
            json_.containsKey('bargeInConfig')
                ? GoogleCloudDialogflowV2beta1BargeInConfig.fromJson(
                  json_['bargeInConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultNoSpeechTimeout: json_['defaultNoSpeechTimeout'] as core.String?,
        disableNoSpeechRecognizedEvent:
            json_['disableNoSpeechRecognizedEvent'] as core.bool?,
        enableAutomaticPunctuation:
            json_['enableAutomaticPunctuation'] as core.bool?,
        enableWordInfo: json_['enableWordInfo'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        model: json_['model'] as core.String?,
        modelVariant: json_['modelVariant'] as core.String?,
        optOutConformerModelMigration:
            json_['optOutConformerModelMigration'] as core.bool?,
        phraseHints:
            (json_['phraseHints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        phraseSets:
            (json_['phraseSets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        singleUtterance: json_['singleUtterance'] as core.bool?,
        speechContexts:
            (json_['speechContexts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1SpeechContext.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioEncoding != null) 'audioEncoding': audioEncoding!,
    if (bargeInConfig != null) 'bargeInConfig': bargeInConfig!,
    if (defaultNoSpeechTimeout != null)
      'defaultNoSpeechTimeout': defaultNoSpeechTimeout!,
    if (disableNoSpeechRecognizedEvent != null)
      'disableNoSpeechRecognizedEvent': disableNoSpeechRecognizedEvent!,
    if (enableAutomaticPunctuation != null)
      'enableAutomaticPunctuation': enableAutomaticPunctuation!,
    if (enableWordInfo != null) 'enableWordInfo': enableWordInfo!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (model != null) 'model': model!,
    if (modelVariant != null) 'modelVariant': modelVariant!,
    if (optOutConformerModelMigration != null)
      'optOutConformerModelMigration': optOutConformerModelMigration!,
    if (phraseHints != null) 'phraseHints': phraseHints!,
    if (phraseSets != null) 'phraseSets': phraseSets!,
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
class GoogleCloudDialogflowV2beta1Intent {
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

  /// Information about all followup intents that have this intent as a direct
  /// or indirect parent.
  ///
  /// We populate this field only in the output.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>?
  followupIntentInfo;

  /// The list of context names required for this intent to be triggered.
  ///
  /// Formats: - `projects//agent/sessions/-/contexts/` -
  /// `projects//locations//agent/sessions/-/contexts/`
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
  core.List<GoogleCloudDialogflowV2beta1IntentMessage>? messages;

  /// Indicates whether Machine Learning is disabled for the intent.
  ///
  /// Note: If `ml_disabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  ///
  /// Optional.
  core.bool? mlDisabled;

  /// Indicates whether Machine Learning is enabled for the intent.
  ///
  /// Note: If `ml_enabled` setting is set to false, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled`
  /// field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not
  /// set or false, then the default value is determined as follows: - Before
  /// April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true.
  /// - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled =
  /// false.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? mlEnabled;

  /// The unique identifier of this intent.
  ///
  /// Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods.
  /// Supported formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
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
  core.List<GoogleCloudDialogflowV2beta1Context>? outputContexts;

  /// The collection of parameters associated with the intent.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentParameter>? parameters;

  /// The unique identifier of the parent intent in the chain of followup
  /// intents.
  ///
  /// You can set this field when creating an intent, for example with
  /// CreateIntent or BatchUpdateIntents, in order to make this intent a
  /// followup intent. It identifies the parent followup intent. Format:
  /// `projects//agent/intents/`.
  ///
  /// Optional.
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

  /// The unique identifier of the root intent in the chain of followup intents.
  ///
  /// It identifies the correct followup intents chain for this intent. Format:
  /// `projects//agent/intents/`.
  ///
  /// Output only.
  core.String? rootFollowupIntentName;

  /// The collection of examples that the agent is trained on.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>? trainingPhrases;

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

  GoogleCloudDialogflowV2beta1Intent({
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
    this.mlEnabled,
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

  GoogleCloudDialogflowV2beta1Intent.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        defaultResponsePlatforms:
            (json_['defaultResponsePlatforms'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        endInteraction: json_['endInteraction'] as core.bool?,
        events:
            (json_['events'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        followupIntentInfo:
            (json_['followupIntentInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        inputContextNames:
            (json_['inputContextNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        isFallback: json_['isFallback'] as core.bool?,
        liveAgentHandoff: json_['liveAgentHandoff'] as core.bool?,
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1IntentMessage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        mlDisabled: json_['mlDisabled'] as core.bool?,
        mlEnabled: json_['mlEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
        outputContexts:
            (json_['outputContexts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Context.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        parentFollowupIntentName:
            json_['parentFollowupIntentName'] as core.String?,
        priority: json_['priority'] as core.int?,
        resetContexts: json_['resetContexts'] as core.bool?,
        rootFollowupIntentName: json_['rootFollowupIntentName'] as core.String?,
        trainingPhrases:
            (json_['trainingPhrases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        webhookState: json_['webhookState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (defaultResponsePlatforms != null)
      'defaultResponsePlatforms': defaultResponsePlatforms!,
    if (displayName != null) 'displayName': displayName!,
    if (endInteraction != null) 'endInteraction': endInteraction!,
    if (events != null) 'events': events!,
    if (followupIntentInfo != null) 'followupIntentInfo': followupIntentInfo!,
    if (inputContextNames != null) 'inputContextNames': inputContextNames!,
    if (isFallback != null) 'isFallback': isFallback!,
    if (liveAgentHandoff != null) 'liveAgentHandoff': liveAgentHandoff!,
    if (messages != null) 'messages': messages!,
    if (mlDisabled != null) 'mlDisabled': mlDisabled!,
    if (mlEnabled != null) 'mlEnabled': mlEnabled!,
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
class GoogleCloudDialogflowV2beta1IntentBatch {
  /// A collection of intents.
  core.List<GoogleCloudDialogflowV2beta1Intent>? intents;

  GoogleCloudDialogflowV2beta1IntentBatch({this.intents});

  GoogleCloudDialogflowV2beta1IntentBatch.fromJson(core.Map json_)
    : this(
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intents != null) 'intents': intents!,
  };
}

/// Represents a single followup intent in the chain.
typedef GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo =
    $IntentFollowupIntentInfo;

/// Represents the intent to trigger programmatically rather than as a result of
/// natural language processing.
///
/// The intent input is only used for V3 agent.
class GoogleCloudDialogflowV2beta1IntentInput {
  /// The unique identifier of the intent in V3 agent.
  ///
  /// Format: `projects//locations//locations//agents//intents/`.
  ///
  /// Required.
  core.String? intent;

  /// The language of this conversational query.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  ///
  /// Required.
  core.String? languageCode;

  GoogleCloudDialogflowV2beta1IntentInput({this.intent, this.languageCode});

  GoogleCloudDialogflowV2beta1IntentInput.fromJson(core.Map json_)
    : this(
        intent: json_['intent'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intent != null) 'intent': intent!,
    if (languageCode != null) 'languageCode': languageCode!,
  };
}

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessage {
  /// Displays a basic card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard? basicCard;

  /// Browse carousel card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard?
  browseCarouselCard;

  /// Displays a card.
  GoogleCloudDialogflowV2beta1IntentMessageCard? card;

  /// Displays a carousel card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect? carouselSelect;

  /// Displays an image.
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Displays a link out suggestion chip for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion? linkOutSuggestion;

  /// Displays a list card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageListSelect? listSelect;

  /// The media content card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent? mediaContent;

  /// A custom platform-specific response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// The platform that this message is intended for.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Not specified.
  /// - "FACEBOOK" : Facebook.
  /// - "SLACK" : Slack.
  /// - "TELEGRAM" : Telegram.
  /// - "KIK" : Kik.
  /// - "SKYPE" : Skype.
  /// - "LINE" : Line.
  /// - "VIBER" : Viber.
  /// - "ACTIONS_ON_GOOGLE" : Google Assistant See
  /// [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  /// - "TELEPHONY" : Telephony Gateway.
  /// - "GOOGLE_HANGOUTS" : Google Hangouts.
  core.String? platform;

  /// Displays quick replies.
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies? quickReplies;

  /// Rich Business Messaging (RBM) carousel rich card response.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard? rbmCarouselRichCard;

  /// Standalone Rich Business Messaging (RBM) rich card response.
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard?
  rbmStandaloneRichCard;

  /// Rich Business Messaging (RBM) text response.
  ///
  /// RBM allows businesses to send enriched and branded versions of SMS. See
  /// https://jibe.google.com/business-messaging.
  GoogleCloudDialogflowV2beta1IntentMessageRbmText? rbmText;

  /// Returns a voice or text-only response for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses? simpleResponses;

  /// Displays suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions? suggestions;

  /// Table card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageTableCard? tableCard;

  /// Plays audio from a file in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio?
  telephonyPlayAudio;

  /// Synthesizes speech in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech?
  telephonySynthesizeSpeech;

  /// Transfers the call in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall?
  telephonyTransferCall;

  /// Returns a text response.
  GoogleCloudDialogflowV2beta1IntentMessageText? text;

  GoogleCloudDialogflowV2beta1IntentMessage({
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
    this.rbmCarouselRichCard,
    this.rbmStandaloneRichCard,
    this.rbmText,
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
    this.telephonyPlayAudio,
    this.telephonySynthesizeSpeech,
    this.telephonyTransferCall,
    this.text,
  });

  GoogleCloudDialogflowV2beta1IntentMessage.fromJson(core.Map json_)
    : this(
        basicCard:
            json_.containsKey('basicCard')
                ? GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
                  json_['basicCard'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        browseCarouselCard:
            json_.containsKey('browseCarouselCard')
                ? GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromJson(
                  json_['browseCarouselCard']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        card:
            json_.containsKey('card')
                ? GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(
                  json_['card'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        carouselSelect:
            json_.containsKey('carouselSelect')
                ? GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
                  json_['carouselSelect']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkOutSuggestion:
            json_.containsKey('linkOutSuggestion')
                ? GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
                  json_['linkOutSuggestion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        listSelect:
            json_.containsKey('listSelect')
                ? GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
                  json_['listSelect'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mediaContent:
            json_.containsKey('mediaContent')
                ? GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(
                  json_['mediaContent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        platform: json_['platform'] as core.String?,
        quickReplies:
            json_.containsKey('quickReplies')
                ? GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
                  json_['quickReplies'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rbmCarouselRichCard:
            json_.containsKey('rbmCarouselRichCard')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
                  json_['rbmCarouselRichCard']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rbmStandaloneRichCard:
            json_.containsKey('rbmStandaloneRichCard')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
                  json_['rbmStandaloneRichCard']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rbmText:
            json_.containsKey('rbmText')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
                  json_['rbmText'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        simpleResponses:
            json_.containsKey('simpleResponses')
                ? GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
                  json_['simpleResponses']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestions:
            json_.containsKey('suggestions')
                ? GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
                  json_['suggestions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tableCard:
            json_.containsKey('tableCard')
                ? GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(
                  json_['tableCard'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        telephonyPlayAudio:
            json_.containsKey('telephonyPlayAudio')
                ? GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
                  json_['telephonyPlayAudio']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        telephonySynthesizeSpeech:
            json_.containsKey('telephonySynthesizeSpeech')
                ? GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
                  json_['telephonySynthesizeSpeech']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        telephonyTransferCall:
            json_.containsKey('telephonyTransferCall')
                ? GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
                  json_['telephonyTransferCall']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (basicCard != null) 'basicCard': basicCard!,
    if (browseCarouselCard != null) 'browseCarouselCard': browseCarouselCard!,
    if (card != null) 'card': card!,
    if (carouselSelect != null) 'carouselSelect': carouselSelect!,
    if (image != null) 'image': image!,
    if (linkOutSuggestion != null) 'linkOutSuggestion': linkOutSuggestion!,
    if (listSelect != null) 'listSelect': listSelect!,
    if (mediaContent != null) 'mediaContent': mediaContent!,
    if (payload != null) 'payload': payload!,
    if (platform != null) 'platform': platform!,
    if (quickReplies != null) 'quickReplies': quickReplies!,
    if (rbmCarouselRichCard != null)
      'rbmCarouselRichCard': rbmCarouselRichCard!,
    if (rbmStandaloneRichCard != null)
      'rbmStandaloneRichCard': rbmStandaloneRichCard!,
    if (rbmText != null) 'rbmText': rbmText!,
    if (simpleResponses != null) 'simpleResponses': simpleResponses!,
    if (suggestions != null) 'suggestions': suggestions!,
    if (tableCard != null) 'tableCard': tableCard!,
    if (telephonyPlayAudio != null) 'telephonyPlayAudio': telephonyPlayAudio!,
    if (telephonySynthesizeSpeech != null)
      'telephonySynthesizeSpeech': telephonySynthesizeSpeech!,
    if (telephonyTransferCall != null)
      'telephonyTransferCall': telephonyTransferCall!,
    if (text != null) 'text': text!,
  };
}

/// The basic card message.
///
/// Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCard {
  /// The collection of card buttons.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>? buttons;

  /// Required, unless image is present.
  ///
  /// The body text of the card.
  core.String? formattedText;

  /// The image for the card.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// The subtitle of the card.
  ///
  /// Optional.
  core.String? subtitle;

  /// The title of the card.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(core.Map json_)
    : this(
        buttons:
            (json_['buttons'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        formattedText: json_['formattedText'] as core.String?,
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
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
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton {
  /// Action to take when a user taps on the button.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction?
  openUriAction;

  /// The title of the button.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton({
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
    core.Map json_,
  ) : this(
        openUriAction:
            json_.containsKey('openUriAction')
                ? GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction.fromJson(
                  json_['openUriAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (openUriAction != null) 'openUriAction': openUriAction!,
    if (title != null) 'title': title!,
  };
}

/// Opens the given URI.
typedef GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction =
    $IntentMessageBasicCardButtonOpenUriAction;

/// Browse Carousel Card for Actions on Google.
///
/// https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard {
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
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
  >?
  items;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard({
    this.imageDisplayOptions,
    this.items,
  });

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromJson(
    core.Map json_,
  ) : this(
        imageDisplayOptions: json_['imageDisplayOptions'] as core.String?,
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageDisplayOptions != null)
      'imageDisplayOptions': imageDisplayOptions!,
    if (items != null) 'items': items!,
  };
}

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
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
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Action to present to the user.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction?
  openUriAction;

  /// Title of the carousel item.
  ///
  /// Maximum of two lines of text.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
    this.description,
    this.footer,
    this.image,
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        footer: json_['footer'] as core.String?,
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        openUriAction:
            json_.containsKey('openUriAction')
                ? GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
                  json_['openUriAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
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
typedef GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    $IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction;

/// The card response message.
class GoogleCloudDialogflowV2beta1IntentMessageCard {
  /// The collection of card buttons.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageCardButton>? buttons;

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

  GoogleCloudDialogflowV2beta1IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(core.Map json_)
    : this(
        buttons:
            (json_['buttons'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        imageUri: json_['imageUri'] as core.String?,
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buttons != null) 'buttons': buttons!,
    if (imageUri != null) 'imageUri': imageUri!,
    if (subtitle != null) 'subtitle': subtitle!,
    if (title != null) 'title': title!,
  };
}

/// Contains information about a button.
///
/// Optional.
typedef GoogleCloudDialogflowV2beta1IntentMessageCardButton =
    $IntentMessageCardButton;

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect {
  /// Carousel items.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>? items;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect({this.items});

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
    core.Map json_,
  ) : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
  };
}

/// An item in the carousel.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem {
  /// The body text of the card.
  ///
  /// Optional.
  core.String? description;

  /// The image to display.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Additional info about the option item.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo? info;

  /// Title of the carousel item.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        info:
            json_.containsKey('info')
                ? GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (image != null) 'image': image!,
    if (info != null) 'info': info!,
    if (title != null) 'title': title!,
  };
}

/// Column properties for TableCard.
typedef GoogleCloudDialogflowV2beta1IntentMessageColumnProperties =
    $IntentMessageColumnProperties;

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen
  /// readers.
  ///
  /// Required if image_uri is set for CarouselSelect.
  core.String? accessibilityText;

  /// The public URI to an image file.
  ///
  /// Optional.
  core.String? imageUri;

  GoogleCloudDialogflowV2beta1IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(core.Map json_)
    : this(
        accessibilityText: json_['accessibilityText'] as core.String?,
        imageUri: json_['imageUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessibilityText != null) 'accessibilityText': accessibilityText!,
    if (imageUri != null) 'imageUri': imageUri!,
  };
}

/// The suggestion chip message that allows the user to jump out to the app or
/// website associated with this agent.
typedef GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion =
    $IntentMessageLinkOutSuggestion;

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelect {
  /// List items.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>? items;

  /// Subtitle of the list.
  ///
  /// Optional.
  core.String? subtitle;

  /// The overall title of the list.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelect({
    this.items,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (subtitle != null) 'subtitle': subtitle!,
    if (title != null) 'title': title!,
  };
}

/// An item in the list.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem {
  /// The main text describing the item.
  ///
  /// Optional.
  core.String? description;

  /// The image to display.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Additional information about this option.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo? info;

  /// The title of the list item.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        info:
            json_.containsKey('info')
                ? GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (image != null) 'image': image!,
    if (info != null) 'info': info!,
    if (title != null) 'title': title!,
  };
}

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContent {
  /// List of media objects.
  ///
  /// Required.
  core.List<
    GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
  >?
  mediaObjects;

  /// What type of media is the content (ie "audio").
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESPONSE_MEDIA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "AUDIO" : Response media type is audio.
  core.String? mediaType;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContent({
    this.mediaObjects,
    this.mediaType,
  });

  GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(core.Map json_)
    : this(
        mediaObjects:
            (json_['mediaObjects'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        mediaType: json_['mediaType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mediaObjects != null) 'mediaObjects': mediaObjects!,
    if (mediaType != null) 'mediaType': mediaType!,
  };
}

/// Response media object for media content card.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject {
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
  GoogleCloudDialogflowV2beta1IntentMessageImage? icon;

  /// Image to display above media content.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageImage? largeImage;

  /// Name of media card.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject({
    this.contentUrl,
    this.description,
    this.icon,
    this.largeImage,
    this.name,
  });

  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject.fromJson(
    core.Map json_,
  ) : this(
        contentUrl: json_['contentUrl'] as core.String?,
        description: json_['description'] as core.String?,
        icon:
            json_.containsKey('icon')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['icon'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        largeImage:
            json_.containsKey('largeImage')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['largeImage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
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
typedef GoogleCloudDialogflowV2beta1IntentMessageQuickReplies =
    $IntentMessageQuickReplies;

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent {
  /// Description of the card (at most 2000 bytes).
  ///
  /// At least one of the title, description or media must be set.
  ///
  /// Optional.
  core.String? description;

  /// However at least one of the title, description or media must be set.
  ///
  /// Media (image, GIF or a video) to include in the card.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia? media;

  /// List of suggestions to include in the card.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>?
  suggestions;

  /// Title of the card (at most 200 bytes).
  ///
  /// At least one of the title, description or media must be set.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent({
    this.description,
    this.media,
    this.suggestions,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        media:
            json_.containsKey('media')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
                  json_['media'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestions:
            (json_['suggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (media != null) 'media': media!,
    if (suggestions != null) 'suggestions': suggestions!,
    if (title != null) 'title': title!,
  };
}

/// Rich Business Messaging (RBM) Media displayed in Cards The following
/// media-types are currently supported: Image Types * image/jpeg * image/jpg' *
/// image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 *
/// video/mpeg * video/mpeg4 * video/webm
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia {
  /// Publicly reachable URI of the file.
  ///
  /// The RBM platform determines the MIME type of the file from the
  /// content-type field in the HTTP headers when the platform fetches the file.
  /// The content-type field must be present and accurate in the HTTP response
  /// from the URL.
  ///
  /// Required.
  core.String? fileUri;

  /// Required for cards with vertical orientation.
  ///
  /// The height of the media within a rich card with a vertical layout. For a
  /// standalone card with horizontal layout, height is not customizable, and
  /// this field is ignored.
  /// Possible string values are:
  /// - "HEIGHT_UNSPECIFIED" : Not specified.
  /// - "SHORT" : 112 DP.
  /// - "MEDIUM" : 168 DP.
  /// - "TALL" : 264 DP. Not available for rich card carousels when the card
  /// width is set to small.
  core.String? height;

  /// Publicly reachable URI of the thumbnail.If you don't provide a thumbnail
  /// URI, the RBM platform displays a blank placeholder thumbnail until the
  /// user's device downloads the file.
  ///
  /// Depending on the user's setting, the file may not download automatically
  /// and may require the user to tap a download button.
  ///
  /// Optional.
  core.String? thumbnailUri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia({
    this.fileUri,
    this.height,
    this.thumbnailUri,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
    core.Map json_,
  ) : this(
        fileUri: json_['fileUri'] as core.String?,
        height: json_['height'] as core.String?,
        thumbnailUri: json_['thumbnailUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileUri != null) 'fileUri': fileUri!,
    if (height != null) 'height': height!,
    if (thumbnailUri != null) 'thumbnailUri': thumbnailUri!,
  };
}

/// Carousel Rich Business Messaging (RBM) rich card.
///
/// Rich cards allow you to respond to users with more vivid content, e.g. with
/// media and suggestions. If you want to show a single card with more control
/// over the layout, please use RbmStandaloneCard instead.
class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard {
  /// The cards in the carousel.
  ///
  /// A carousel must have at least 2 cards and at most 10.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>?
  cardContents;

  /// The width of the cards in the carousel.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CARD_WIDTH_UNSPECIFIED" : Not specified.
  /// - "SMALL" : 120 DP. Note that tall media cannot be used.
  /// - "MEDIUM" : 232 DP.
  core.String? cardWidth;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard({
    this.cardContents,
    this.cardWidth,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
    core.Map json_,
  ) : this(
        cardContents:
            (json_['cardContents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cardWidth: json_['cardWidth'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cardContents != null) 'cardContents': cardContents!,
    if (cardWidth != null) 'cardWidth': cardWidth!,
  };
}

/// Standalone Rich Business Messaging (RBM) rich card.
///
/// Rich cards allow you to respond to users with more vivid content, e.g. with
/// media and suggestions. You can group multiple rich cards into one using
/// RbmCarouselCard but carousel cards will give you less control over the card
/// layout.
class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard {
  /// Card content.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent? cardContent;

  /// Orientation of the card.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CARD_ORIENTATION_UNSPECIFIED" : Not specified.
  /// - "HORIZONTAL" : Horizontal layout.
  /// - "VERTICAL" : Vertical layout.
  core.String? cardOrientation;

  /// Required if orientation is horizontal.
  ///
  /// Image preview alignment for standalone cards with horizontal layout.
  /// Possible string values are:
  /// - "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED" : Not specified.
  /// - "LEFT" : Thumbnail preview is left-aligned.
  /// - "RIGHT" : Thumbnail preview is right-aligned.
  core.String? thumbnailImageAlignment;

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard({
    this.cardContent,
    this.cardOrientation,
    this.thumbnailImageAlignment,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
    core.Map json_,
  ) : this(
        cardContent:
            json_.containsKey('cardContent')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
                  json_['cardContent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cardOrientation: json_['cardOrientation'] as core.String?,
        thumbnailImageAlignment:
            json_['thumbnailImageAlignment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cardContent != null) 'cardContent': cardContent!,
    if (cardOrientation != null) 'cardOrientation': cardOrientation!,
    if (thumbnailImageAlignment != null)
      'thumbnailImageAlignment': thumbnailImageAlignment!,
  };
}

/// Rich Business Messaging (RBM) suggested client-side action that the user can
/// choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction {
  /// Suggested client side action: Dial a phone number
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial?
  dial;

  /// Suggested client side action: Open a URI on device
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri?
  openUrl;

  /// Opaque payload that the Dialogflow receives in a user event when the user
  /// taps the suggested action.
  ///
  /// This data will be also forwarded to webhook to allow performing custom
  /// business logic.
  core.String? postbackData;

  /// Suggested client side action: Share user location
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation?
  shareLocation;

  /// Text to display alongside the action.
  core.String? text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction({
    this.dial,
    this.openUrl,
    this.postbackData,
    this.shareLocation,
    this.text,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
    core.Map json_,
  ) : this(
        dial:
            json_.containsKey('dial')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
                  json_['dial'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        openUrl:
            json_.containsKey('openUrl')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
                  json_['openUrl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        postbackData: json_['postbackData'] as core.String?,
        shareLocation:
            json_.containsKey('shareLocation')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation.fromJson(
                  json_['shareLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dial != null) 'dial': dial!,
    if (openUrl != null) 'openUrl': openUrl!,
    if (postbackData != null) 'postbackData': postbackData!,
    if (shareLocation != null) 'shareLocation': shareLocation!,
    if (text != null) 'text': text!,
  };
}

/// Opens the user's default dialer app with the specified phone number but does
/// not dial automatically.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial {
  /// The phone number to fill in the default dialer app.
  ///
  /// This field should be in [E.164](https://en.wikipedia.org/wiki/E.164)
  /// format. An example of a correctly formatted phone number: +15556767888.
  ///
  /// Required.
  core.String? phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial({
    this.phoneNumber,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
    core.Map json_,
  ) : this(phoneNumber: json_['phoneNumber'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
  };
}

/// Opens the user's default web browser app to the specified uri If the user
/// has an app installed that is registered as the default handler for the URL,
/// then this app will be opened instead, and its icon will be used in the
/// suggested action UI.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri {
  /// The uri to open on the user device
  ///
  /// Required.
  core.String? uri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri({
    this.uri,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
    core.Map json_,
  ) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
  };
}

/// Opens the device's location chooser so the user can pick a location to send
/// back to the agent.
typedef GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation =
    $Empty;

/// Rich Business Messaging (RBM) suggested reply that the user can click
/// instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event when the user
  /// taps the suggested reply.
  ///
  /// This data will be also forwarded to webhook to allow performing custom
  /// business logic.
  core.String? postbackData;

  /// Suggested reply text.
  core.String? text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply({
    this.postbackData,
    this.text,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
    core.Map json_,
  ) : this(
        postbackData: json_['postbackData'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (postbackData != null) 'postbackData': postbackData!,
    if (text != null) 'text': text!,
  };
}

/// Rich Business Messaging (RBM) suggestion.
///
/// Suggestions allow user to easily select/click a predefined response or
/// perform an action (like opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion {
  /// Predefined client side actions that user can choose
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction? action;

  /// Predefined replies for user to select instead of typing
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply? reply;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion({
    this.action,
    this.reply,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
    core.Map json_,
  ) : this(
        action:
            json_.containsKey('action')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reply:
            json_.containsKey('reply')
                ? GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
                  json_['reply'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (reply != null) 'reply': reply!,
  };
}

/// Rich Business Messaging (RBM) text response with suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageRbmText {
  /// One or more suggestions to show to the user.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>?
  rbmSuggestion;

  /// Text sent and displayed to the user.
  ///
  /// Required.
  core.String? text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmText({
    this.rbmSuggestion,
    this.text,
  });

  GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(core.Map json_)
    : this(
        rbmSuggestion:
            (json_['rbmSuggestion'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rbmSuggestion != null) 'rbmSuggestion': rbmSuggestion!,
    if (text != null) 'text': text!,
  };
}

/// Additional info about the select item for when it is triggered in a dialog.
typedef GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
    $IntentMessageSelectItemInfo;

/// The simple response message containing speech or text.
typedef GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
    $IntentMessageSimpleResponse;

/// The collection of simple response candidates.
///
/// This message in `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses {
  /// The list of simple responses.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>?
  simpleResponses;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses({
    this.simpleResponses,
  });

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
    core.Map json_,
  ) : this(
        simpleResponses:
            (json_['simpleResponses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (simpleResponses != null) 'simpleResponses': simpleResponses!,
  };
}

/// The suggestion chip message that the user can tap to quickly post a reply to
/// the conversation.
typedef GoogleCloudDialogflowV2beta1IntentMessageSuggestion =
    $IntentMessageSuggestion;

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestions {
  /// The list of suggested replies.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>? suggestions;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestions({this.suggestions});

  GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(core.Map json_)
    : this(
        suggestions:
            (json_['suggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (suggestions != null) 'suggestions': suggestions!,
  };
}

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageTableCard {
  /// List of buttons for the card.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>? buttons;

  /// Display properties for the columns in this table.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>?
  columnProperties;

  /// Image which should be displayed on the card.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Rows in this table of data.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>? rows;

  /// Subtitle to the title.
  ///
  /// Optional.
  core.String? subtitle;

  /// Title of the card.
  ///
  /// Required.
  core.String? title;

  GoogleCloudDialogflowV2beta1IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(core.Map json_)
    : this(
        buttons:
            (json_['buttons'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        columnProperties:
            (json_['columnProperties'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        image:
            json_.containsKey('image')
                ? GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
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
typedef GoogleCloudDialogflowV2beta1IntentMessageTableCardCell =
    $IntentMessageTableCardCell;

/// Row of TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow {
  /// List of cells that make up this row.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>? cells;

  /// Whether to add a visual divider after this row.
  ///
  /// Optional.
  core.bool? dividerAfter;

  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow({
    this.cells,
    this.dividerAfter,
  });

  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(core.Map json_)
    : this(
        cells:
            (json_['cells'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        dividerAfter: json_['dividerAfter'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cells != null) 'cells': cells!,
    if (dividerAfter != null) 'dividerAfter': dividerAfter!,
  };
}

/// Plays audio from a file in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio {
  /// URI to a Google Cloud Storage object containing the audio to play, e.g.,
  /// "gs://bucket/object".
  ///
  /// The object must contain a single channel (mono) of linear PCM audio (2
  /// bytes / sample) at 8kHz. This object must be readable by the
  /// `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` service account where
  /// is the number of the Telephony Gateway project (usually the same as the
  /// Dialogflow agent project). If the Google Cloud Storage bucket is in the
  /// Telephony Gateway project, this permission is added by default when
  /// enabling the Dialogflow V2 API. For audio from other sources, consider
  /// using the `TelephonySynthesizeSpeech` message with SSML.
  ///
  /// Required.
  core.String? audioUri;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio({this.audioUri});

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
    core.Map json_,
  ) : this(audioUri: json_['audioUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioUri != null) 'audioUri': audioUri!,
  };
}

/// Synthesizes speech and plays back the synthesized audio to the caller in
/// Telephony Gateway.
///
/// Telephony Gateway takes the synthesizer settings from
/// `DetectIntentResponse.output_audio_config` which can either be set at
/// request-level or can come from the agent-level synthesizer config.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech {
  /// The SSML to be synthesized.
  ///
  /// For more information, see
  /// [SSML](https://developers.google.com/actions/reference/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech({
    this.ssml,
    this.text,
  });

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
    core.Map json_,
  ) : this(
        ssml: json_['ssml'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ssml != null) 'ssml': ssml!,
    if (text != null) 'text': text!,
  };
}

/// Transfers the call in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall {
  /// The phone number to transfer the call to in
  /// [E.164 format](https://en.wikipedia.org/wiki/E.164).
  ///
  /// We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  ///
  /// Required.
  core.String? phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall({
    this.phoneNumber,
  });

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
    core.Map json_,
  ) : this(phoneNumber: json_['phoneNumber'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
  };
}

/// The text response message.
typedef GoogleCloudDialogflowV2beta1IntentMessageText = $IntentMessageText;

/// Represents intent parameters.
typedef GoogleCloudDialogflowV2beta1IntentParameter = $IntentParameter00;

/// Represents an intent suggestion.
typedef GoogleCloudDialogflowV2beta1IntentSuggestion = $IntentSuggestion;

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrase {
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
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>? parts;

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
  /// contain @-prefixed entity type names as substrings. Note: Template mode
  /// has been deprecated. Example mode is the only supported way to create new
  /// training phrases. If you have existing training phrases in template mode,
  /// they will be removed during training and it can cause a drop in agent
  /// performance.
  core.String? type;

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase({
    this.name,
    this.parts,
    this.timesAddedCount,
    this.type,
  });

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        parts:
            (json_['parts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        timesAddedCount: json_['timesAddedCount'] as core.int?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (parts != null) 'parts': parts!,
    if (timesAddedCount != null) 'timesAddedCount': timesAddedCount!,
    if (type != null) 'type': type!,
  };
}

/// Represents a part of a training phrase.
typedef GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart =
    $IntentTrainingPhrasePart00;

/// Represents the result of querying a Knowledge base.
class GoogleCloudDialogflowV2beta1KnowledgeAnswers {
  /// A list of answers from Knowledge Connector.
  core.List<GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>? answers;

  GoogleCloudDialogflowV2beta1KnowledgeAnswers({this.answers});

  GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(core.Map json_)
    : this(
        answers:
            (json_['answers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answers != null) 'answers': answers!,
  };
}

/// An answer from Knowledge Connector.
class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer {
  /// The piece of text from the `source` knowledge base document that answers
  /// this conversational query.
  core.String? answer;

  /// The corresponding FAQ question if the answer was extracted from a FAQ
  /// Document, empty otherwise.
  core.String? faqQuestion;

  /// The system's confidence score that this Knowledge answer is a good match
  /// for this conversational query.
  ///
  /// The range is from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// Note: The confidence score is likely to vary somewhat (possibly even for
  /// identical requests), as the underlying model is under constant
  /// improvement. It may be deprecated in the future. We recommend using
  /// `match_confidence_level` which should be generally more stable.
  core.double? matchConfidence;

  /// The system's confidence level that this knowledge answer is a good match
  /// for this conversational query.
  ///
  /// NOTE: The confidence level for a given `` pair may change without notice,
  /// as it depends on models that are constantly being improved. However, it
  /// will change less frequently than the confidence score below, and should be
  /// preferred for referencing the quality of an answer.
  /// Possible string values are:
  /// - "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" : Not specified.
  /// - "LOW" : Indicates that the confidence is low.
  /// - "MEDIUM" : Indicates our confidence is medium.
  /// - "HIGH" : Indicates our confidence is high.
  core.String? matchConfidenceLevel;

  /// Indicates which Knowledge Document this answer was extracted from.
  ///
  /// Format: `projects//knowledgeBases//documents/`.
  core.String? source;

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer({
    this.answer,
    this.faqQuestion,
    this.matchConfidence,
    this.matchConfidenceLevel,
    this.source,
  });

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        faqQuestion: json_['faqQuestion'] as core.String?,
        matchConfidence: (json_['matchConfidence'] as core.num?)?.toDouble(),
        matchConfidenceLevel: json_['matchConfidenceLevel'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (faqQuestion != null) 'faqQuestion': faqQuestion!,
    if (matchConfidence != null) 'matchConfidence': matchConfidence!,
    if (matchConfidenceLevel != null)
      'matchConfidenceLevel': matchConfidenceLevel!,
    if (source != null) 'source': source!,
  };
}

/// Represents a Knowledge Assist answer.
class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer {
  /// The name of the answer record.
  ///
  /// Format: `projects//locations//answer Records/`.
  core.String? answerRecord;

  /// The query suggested based on the context.
  ///
  /// Suggestion is made only if it is different from the previous suggestion.
  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery?
  suggestedQuery;

  /// The answer generated for the suggested query.
  ///
  /// Whether or not an answer is generated depends on how confident we are
  /// about the generated query.
  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer?
  suggestedQueryAnswer;

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer({
    this.answerRecord,
    this.suggestedQuery,
    this.suggestedQueryAnswer,
  });

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        suggestedQuery:
            json_.containsKey('suggestedQuery')
                ? GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery.fromJson(
                  json_['suggestedQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestedQueryAnswer:
            json_.containsKey('suggestedQueryAnswer')
                ? GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer.fromJson(
                  json_['suggestedQueryAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (suggestedQuery != null) 'suggestedQuery': suggestedQuery!,
    if (suggestedQueryAnswer != null)
      'suggestedQueryAnswer': suggestedQueryAnswer!,
  };
}

/// Represents an answer from Knowledge.
///
/// Currently supports FAQ and Generative answers.
class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer {
  /// The piece of text from the `source` that answers this suggested query.
  core.String? answerText;

  /// Populated if the prediction came from FAQ.
  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource?
  faqSource;

  /// Populated if the prediction was Generative.
  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource?
  generativeSource;

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer({
    this.answerText,
    this.faqSource,
    this.generativeSource,
  });

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswer.fromJson(
    core.Map json_,
  ) : this(
        answerText: json_['answerText'] as core.String?,
        faqSource:
            json_.containsKey('faqSource')
                ? GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource.fromJson(
                  json_['faqSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        generativeSource:
            json_.containsKey('generativeSource')
                ? GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource.fromJson(
                  json_['generativeSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerText != null) 'answerText': answerText!,
    if (faqSource != null) 'faqSource': faqSource!,
    if (generativeSource != null) 'generativeSource': generativeSource!,
  };
}

/// Details about source of FAQ answer.
typedef GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerFaqSource =
    $KnowledgeAssistAnswerKnowledgeAnswerFaqSource;

/// Details about source of Generative answer.
class GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource {
  /// All snippets used for this Generative Prediction, with their source URI
  /// and data.
  core.List<
    GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
  >?
  snippets;

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource({
    this.snippets,
  });

  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource.fromJson(
    core.Map json_,
  ) : this(
        snippets:
            (json_['snippets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (snippets != null) 'snippets': snippets!,
  };
}

/// Snippet Source for a Generative Prediction.
typedef GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet =
    $KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet;

/// Represents a suggested query.
typedef GoogleCloudDialogflowV2beta1KnowledgeAssistAnswerSuggestedQuery =
    $KnowledgeAssistAnswerSuggestedQuery;

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
class GoogleCloudDialogflowV2beta1KnowledgeBase {
  /// The display name of the knowledge base.
  ///
  /// The name must be 1024 bytes or less; otherwise, the creation request
  /// fails.
  ///
  /// Required.
  core.String? displayName;

  /// Language which represents the KnowledgeBase.
  ///
  /// When the KnowledgeBase is created/updated, this is populated for all non
  /// en-us languages. If not populated, the default language en-us applies.
  core.String? languageCode;

  /// The knowledge base resource name.
  ///
  /// The name must be empty when creating a knowledge base. Format:
  /// `projects//locations//knowledgeBases/`.
  core.String? name;

  GoogleCloudDialogflowV2beta1KnowledgeBase({
    this.displayName,
    this.languageCode,
    this.name,
  });

  GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (name != null) 'name': name!,
  };
}

/// Response message for AnswerRecords.ListAnswerRecords.
class GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse {
  /// The list of answer records.
  core.List<GoogleCloudDialogflowV2beta1AnswerRecord>? answerRecords;

  /// A token to retrieve next page of results.
  ///
  /// Or empty if there are no more results. Pass this value in the
  /// ListAnswerRecordsRequest.page_token field in the subsequent call to
  /// `ListAnswerRecords` method to retrieve the next page of results.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse({
    this.answerRecords,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse.fromJson(core.Map json_)
    : this(
        answerRecords:
            (json_['answerRecords'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1AnswerRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecords != null) 'answerRecords': answerRecords!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Contexts.ListContexts.
class GoogleCloudDialogflowV2beta1ListContextsResponse {
  /// The list of contexts.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Context>? contexts;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListContextsResponse({
    this.contexts,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(core.Map json_)
    : this(
        contexts:
            (json_['contexts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Context.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contexts != null) 'contexts': contexts!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for ConversationProfiles.ListConversationProfiles.
class GoogleCloudDialogflowV2beta1ListConversationProfilesResponse {
  /// The list of project conversation profiles.
  ///
  /// There is a maximum number of items returned based on the page_size field
  /// in the request.
  core.List<GoogleCloudDialogflowV2beta1ConversationProfile>?
  conversationProfiles;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListConversationProfilesResponse({
    this.conversationProfiles,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListConversationProfilesResponse.fromJson(
    core.Map json_,
  ) : this(
        conversationProfiles:
            (json_['conversationProfiles'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ConversationProfile.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationProfiles != null)
      'conversationProfiles': conversationProfiles!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Conversations.ListConversations.
class GoogleCloudDialogflowV2beta1ListConversationsResponse {
  /// The list of conversations.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Conversation>? conversations;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListConversationsResponse.fromJson(core.Map json_)
    : this(
        conversations:
            (json_['conversations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Conversation.fromJson(
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

/// Response message for Documents.ListDocuments.
class GoogleCloudDialogflowV2beta1ListDocumentsResponse {
  /// The list of documents.
  core.List<GoogleCloudDialogflowV2beta1Document>? documents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Document.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowV2beta1ListEntityTypesResponse {
  /// The list of agent entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1EntityType>? entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        entityTypes:
            (json_['entityTypes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1EntityType.fromJson(
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
class GoogleCloudDialogflowV2beta1ListEnvironmentsResponse {
  /// The list of agent environments.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(core.Map json_)
    : this(
        environments:
            (json_['environments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Environment.fromJson(
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

/// Response of ListGenerators.
class GoogleCloudDialogflowV2beta1ListGeneratorsResponse {
  /// List of generators retrieved.
  core.List<GoogleCloudDialogflowV2beta1Generator>? generators;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListGeneratorsResponse({
    this.generators,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListGeneratorsResponse.fromJson(core.Map json_)
    : this(
        generators:
            (json_['generators'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Generator.fromJson(
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
class GoogleCloudDialogflowV2beta1ListIntentsResponse {
  /// The list of agent intents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Intent>? intents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(core.Map json_)
    : this(
        intents:
            (json_['intents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(
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

/// Response message for KnowledgeBases.ListKnowledgeBases.
class GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse {
  /// The list of knowledge bases.
  core.List<GoogleCloudDialogflowV2beta1KnowledgeBase>? knowledgeBases;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse({
    this.knowledgeBases,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
    core.Map json_,
  ) : this(
        knowledgeBases:
            (json_['knowledgeBases'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (knowledgeBases != null) 'knowledgeBases': knowledgeBases!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Conversations.ListMessages.
class GoogleCloudDialogflowV2beta1ListMessagesResponse {
  /// The list of messages.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. `messages` is sorted by `create_time` in descending
  /// order.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1Message>? messages;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  ///
  /// Optional.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1ListMessagesResponse({
    this.messages,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1ListMessagesResponse.fromJson(core.Map json_)
    : this(
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Message.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messages != null) 'messages': messages!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Participants.ListParticipants.
class GoogleCloudDialogflowV2beta1ListParticipantsResponse {
  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of participants.
  ///
  /// There is a maximum number of items returned based on the page_size field
  /// in the request.
  core.List<GoogleCloudDialogflowV2beta1Participant>? participants;

  GoogleCloudDialogflowV2beta1ListParticipantsResponse({
    this.nextPageToken,
    this.participants,
  });

  GoogleCloudDialogflowV2beta1ListParticipantsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        participants:
            (json_['participants'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Participant.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (participants != null) 'participants': participants!,
  };
}

/// The response message for PhoneNumbers.ListPhoneNumbers.
class GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of `PhoneNumber` resources.
  ///
  /// There is a maximum number of items returned based on the page_size field
  /// in the request.
  core.List<GoogleCloudDialogflowV2beta1PhoneNumber>? phoneNumbers;

  GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse({
    this.nextPageToken,
    this.phoneNumbers,
  });

  GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        phoneNumbers:
            (json_['phoneNumbers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (phoneNumbers != null) 'phoneNumbers': phoneNumbers!,
  };
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of session entity types.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1SessionEntityType>? sessionEntityTypes;

  GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessionEntityTypes:
            (json_['sessionEntityTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
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

/// The response message for SipTrunks.ListSipTrunks.
class GoogleCloudDialogflowV2beta1ListSipTrunksResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of SIP trunks.
  core.List<GoogleCloudDialogflowV2beta1SipTrunk>? sipTrunks;

  GoogleCloudDialogflowV2beta1ListSipTrunksResponse({
    this.nextPageToken,
    this.sipTrunks,
  });

  GoogleCloudDialogflowV2beta1ListSipTrunksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sipTrunks:
            (json_['sipTrunks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1SipTrunk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sipTrunks != null) 'sipTrunks': sipTrunks!,
  };
}

/// The response message for Participants.ListSuggestions.
class GoogleCloudDialogflowV2beta1ListSuggestionsResponse {
  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The list of suggestions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request. `suggestions` is sorted by `create_time` in
  /// descending order.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1Suggestion>? suggestions;

  GoogleCloudDialogflowV2beta1ListSuggestionsResponse({
    this.nextPageToken,
    this.suggestions,
  });

  GoogleCloudDialogflowV2beta1ListSuggestionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        suggestions:
            (json_['suggestions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Suggestion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (suggestions != null) 'suggestions': suggestions!,
  };
}

/// The response message for Versions.ListVersions.
class GoogleCloudDialogflowV2beta1ListVersionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of agent versions.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Version>? versions;

  GoogleCloudDialogflowV2beta1ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowV2beta1ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Version.fromJson(
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

/// Defines logging behavior for conversation lifecycle events.
typedef GoogleCloudDialogflowV2beta1LoggingConfig = $LoggingConfig01;

/// Represents a message posted into a conversation.
class GoogleCloudDialogflowV2beta1Message {
  /// The message content.
  ///
  /// Required.
  core.String? content;

  /// The time when the message was created in Contact Center AI.
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
  GoogleCloudDialogflowV2beta1MessageAnnotation? messageAnnotation;

  /// The unique identifier of the message.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  ///
  /// Optional.
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

  /// Automated agent responses.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1ResponseMessage>? responseMessages;

  /// The time when the message was sent.
  ///
  /// For voice messages, this is the time when an utterance started.
  ///
  /// Optional.
  core.String? sendTime;

  /// The sentiment analysis result for the message.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult? sentimentAnalysis;

  GoogleCloudDialogflowV2beta1Message({
    this.content,
    this.createTime,
    this.languageCode,
    this.messageAnnotation,
    this.name,
    this.participant,
    this.participantRole,
    this.responseMessages,
    this.sendTime,
    this.sentimentAnalysis,
  });

  GoogleCloudDialogflowV2beta1Message.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        messageAnnotation:
            json_.containsKey('messageAnnotation')
                ? GoogleCloudDialogflowV2beta1MessageAnnotation.fromJson(
                  json_['messageAnnotation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        participant: json_['participant'] as core.String?,
        participantRole: json_['participantRole'] as core.String?,
        responseMessages:
            (json_['responseMessages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ResponseMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sendTime: json_['sendTime'] as core.String?,
        sentimentAnalysis:
            json_.containsKey('sentimentAnalysis')
                ? GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
                  json_['sentimentAnalysis']
                      as core.Map<core.String, core.dynamic>,
                )
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
    if (responseMessages != null) 'responseMessages': responseMessages!,
    if (sendTime != null) 'sendTime': sendTime!,
    if (sentimentAnalysis != null) 'sentimentAnalysis': sentimentAnalysis!,
  };
}

/// Represents the result of annotation for the message.
class GoogleCloudDialogflowV2beta1MessageAnnotation {
  /// Indicates whether the text message contains entities.
  ///
  /// Required.
  core.bool? containEntities;

  /// The collection of annotated message parts ordered by their position in the
  /// message.
  ///
  /// You can recover the annotated message by concatenating
  /// \[AnnotatedMessagePart.text\].
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1AnnotatedMessagePart>? parts;

  GoogleCloudDialogflowV2beta1MessageAnnotation({
    this.containEntities,
    this.parts,
  });

  GoogleCloudDialogflowV2beta1MessageAnnotation.fromJson(core.Map json_)
    : this(
        containEntities: json_['containEntities'] as core.bool?,
        parts:
            (json_['parts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1AnnotatedMessagePart.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (containEntities != null) 'containEntities': containEntities!,
    if (parts != null) 'parts': parts!,
  };
}

/// Represents a message entry of a conversation.
typedef GoogleCloudDialogflowV2beta1MessageEntry = $MessageEntry;

/// Defines notification behavior.
typedef GoogleCloudDialogflowV2beta1NotificationConfig = $NotificationConfig00;

/// Represents the natural language speech audio to be played to the end user.
class GoogleCloudDialogflowV2beta1OutputAudio {
  /// The natural language speech audio.
  ///
  /// Required.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Instructs the speech synthesizer how to generate the speech audio.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1OutputAudioConfig? config;

  GoogleCloudDialogflowV2beta1OutputAudio({this.audio, this.config});

  GoogleCloudDialogflowV2beta1OutputAudio.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config:
            json_.containsKey('config')
                ? GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audio != null) 'audio': audio!,
    if (config != null) 'config': config!,
  };
}

/// Instructs the speech synthesizer how to generate the output audio content.
///
/// If this audio config is supplied in a request, it overrides all existing
/// text-to-speech settings applied to the agent.
class GoogleCloudDialogflowV2beta1OutputAudioConfig {
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
  core.int? sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowV2beta1OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfig:
            json_.containsKey('synthesizeSpeechConfig')
                ? GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(
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

/// Represents a conversation participant (human agent, virtual agent,
/// end-user).
class GoogleCloudDialogflowV2beta1Participant {
  /// Key-value filters on the metadata of documents returned by article
  /// suggestion.
  ///
  /// If specified, article suggestion only returns suggested documents that
  /// match all filters in their Document.metadata. Multiple values for a
  /// metadata key should be concatenated by comma. For example, filters to
  /// match all documents that have 'US' or 'CA' in their market metadata values
  /// and 'agent' in their user metadata values will be ```
  /// documents_metadata_filters { key: "market" value: "US,CA" }
  /// documents_metadata_filters { key: "user" value: "agent" } ```
  ///
  /// Optional.
  core.Map<core.String, core.String>? documentsMetadataFilters;

  /// The unique identifier of this participant.
  ///
  /// Format: `projects//locations//conversations//participants/`.
  ///
  /// Optional.
  core.String? name;

  /// Obfuscated user id that should be associated with the created participant.
  ///
  /// You can specify a user id as follows: 1. If you set this field in
  /// CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the
  /// obfuscated user id with the participant. 2. If you set this field in
  /// AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update
  /// Participant.obfuscated_external_user_id. Dialogflow uses this user id for
  /// billing and measurement. If a user with the same
  /// obfuscated_external_user_id is created in a later conversation, Dialogflow
  /// will know it's the same user. Dialogflow also uses this user id for Agent
  /// Assist suggestion personalization. For example, Dialogflow can use it to
  /// provide personalized smart reply suggestions for this user. Note: * Please
  /// never pass raw user ids to Dialogflow. Always obfuscate your user id
  /// first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex
  /// digest of a hash function like SHA-512. * The length of the user id must
  /// be \<= 256 characters.
  ///
  /// Optional.
  core.String? obfuscatedExternalUserId;

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

  GoogleCloudDialogflowV2beta1Participant({
    this.documentsMetadataFilters,
    this.name,
    this.obfuscatedExternalUserId,
    this.role,
  });

  GoogleCloudDialogflowV2beta1Participant.fromJson(core.Map json_)
    : this(
        documentsMetadataFilters: (json_['documentsMetadataFilters']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        obfuscatedExternalUserId:
            json_['obfuscatedExternalUserId'] as core.String?,
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentsMetadataFilters != null)
      'documentsMetadataFilters': documentsMetadataFilters!,
    if (name != null) 'name': name!,
    if (obfuscatedExternalUserId != null)
      'obfuscatedExternalUserId': obfuscatedExternalUserId!,
    if (role != null) 'role': role!,
  };
}

/// Represents a phone number.
///
/// `PhoneNumber` resources enable phone calls to be answered by Dialogflow
/// services and are added to a project through a PhoneNumberOrder.
class GoogleCloudDialogflowV2beta1PhoneNumber {
  /// The conversation profile calls to this `PhoneNumber` should use.
  ///
  /// The project ID here should be the same as the one in name. Format:
  /// `projects//conversationProfiles/`. Format:
  /// `projects//locations//conversationProfiles/`.
  ///
  /// Optional.
  core.String? conversationProfile;

  /// The state of the `PhoneNumber`.
  ///
  /// Defaults to `ACTIVE`. `PhoneNumber` objects set to `DELETE_REQUESTED`
  /// always decline incoming calls and can be removed completely within 30
  /// days.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : This value is never used.
  /// - "ACTIVE" : Number is active and can receive phone calls.
  /// - "DELETE_REQUESTED" : Number is pending deletion, and cannot receive
  /// calls.
  core.String? lifecycleState;

  /// The unique identifier of this phone number.
  ///
  /// Required for PhoneNumbers.UpdatePhoneNumber method. Format:
  /// `projects//phoneNumbers/`. Format: `projects//locations//phoneNumbers/`.
  ///
  /// Optional.
  core.String? name;

  /// Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.
  ///
  /// An example of a correctly formatted phone number: +15556767888.
  ///
  /// Output only.
  core.String? phoneNumber;

  GoogleCloudDialogflowV2beta1PhoneNumber({
    this.conversationProfile,
    this.lifecycleState,
    this.name,
    this.phoneNumber,
  });

  GoogleCloudDialogflowV2beta1PhoneNumber.fromJson(core.Map json_)
    : this(
        conversationProfile: json_['conversationProfile'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        name: json_['name'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversationProfile != null)
      'conversationProfile': conversationProfile!,
    if (lifecycleState != null) 'lifecycleState': lifecycleState!,
    if (name != null) 'name': name!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
  };
}

/// Represents the query input.
///
/// It can contain either: 1. An audio config which instructs the speech
/// recognizer how to process the speech audio. 2. A conversational query in the
/// form of text. 3. An event that specifies which intent to trigger.
class GoogleCloudDialogflowV2beta1QueryInput {
  /// Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowV2beta1InputAudioConfig? audioConfig;

  /// The DTMF digits used to invoke intent and fill in parameter value.
  GoogleCloudDialogflowV2beta1TelephonyDtmfEvents? dtmf;

  /// The event to be processed.
  GoogleCloudDialogflowV2beta1EventInput? event;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2beta1TextInput? text;

  GoogleCloudDialogflowV2beta1QueryInput({
    this.audioConfig,
    this.dtmf,
    this.event,
    this.text,
  });

  GoogleCloudDialogflowV2beta1QueryInput.fromJson(core.Map json_)
    : this(
        audioConfig:
            json_.containsKey('audioConfig')
                ? GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(
                  json_['audioConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dtmf:
            json_.containsKey('dtmf')
                ? GoogleCloudDialogflowV2beta1TelephonyDtmfEvents.fromJson(
                  json_['dtmf'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        event:
            json_.containsKey('event')
                ? GoogleCloudDialogflowV2beta1EventInput.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? GoogleCloudDialogflowV2beta1TextInput.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioConfig != null) 'audioConfig': audioConfig!,
    if (dtmf != null) 'dtmf': dtmf!,
    if (event != null) 'event': event!,
    if (text != null) 'text': text!,
  };
}

/// Represents the parameters of the conversational query.
class GoogleCloudDialogflowV2beta1QueryParameters {
  /// The collection of contexts to be activated before this query is executed.
  core.List<GoogleCloudDialogflowV2beta1Context>? contexts;

  /// The geo location of this conversational query.
  GoogleTypeLatLng? geoLocation;

  /// KnowledgeBases to get alternative results from.
  ///
  /// If not set, the KnowledgeBases enabled in the agent (through UI) will be
  /// used. Format: `projects//knowledgeBases/`.
  core.List<core.String>? knowledgeBaseNames;

  /// This field can be used to pass custom data to your webhook.
  ///
  /// Arbitrary JSON objects are supported. If supplied, the value is used to
  /// populate the `WebhookRequest.original_detect_intent_request.payload` field
  /// sent to your webhook.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// The platform of the virtual agent response messages.
  ///
  /// If not empty, only emits messages from this platform in the response.
  /// Valid values are the enum names of platform.
  core.String? platform;

  /// Specifies whether to delete all contexts in the current session before the
  /// new ones are activated.
  core.bool? resetContexts;

  /// Configures the type of sentiment analysis to perform.
  ///
  /// If not provided, sentiment analysis is not performed. Note: Sentiment
  /// Analysis is only currently available for Essentials Edition agents.
  GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig?
  sentimentAnalysisRequestConfig;

  /// Additional session entity types to replace or extend developer entity
  /// types with.
  ///
  /// The entity synonyms apply to all languages and persist for the session of
  /// this query.
  core.List<GoogleCloudDialogflowV2beta1SessionEntityType>? sessionEntityTypes;

  /// For mega agent query, directly specify which sub agents to query.
  ///
  /// If any specified sub agent is not linked to the mega agent, an error will
  /// be returned. If empty, Dialogflow will decide which sub agents to query.
  /// If specified for a non-mega-agent query, will be silently ignored.
  core.List<GoogleCloudDialogflowV2beta1SubAgent>? subAgents;

  /// The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  ///
  /// If not provided, the time zone specified in agent settings is used.
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

  GoogleCloudDialogflowV2beta1QueryParameters({
    this.contexts,
    this.geoLocation,
    this.knowledgeBaseNames,
    this.payload,
    this.platform,
    this.resetContexts,
    this.sentimentAnalysisRequestConfig,
    this.sessionEntityTypes,
    this.subAgents,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowV2beta1QueryParameters.fromJson(core.Map json_)
    : this(
        contexts:
            (json_['contexts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Context.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        geoLocation:
            json_.containsKey('geoLocation')
                ? GoogleTypeLatLng.fromJson(
                  json_['geoLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        knowledgeBaseNames:
            (json_['knowledgeBaseNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        platform: json_['platform'] as core.String?,
        resetContexts: json_['resetContexts'] as core.bool?,
        sentimentAnalysisRequestConfig:
            json_.containsKey('sentimentAnalysisRequestConfig')
                ? GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig.fromJson(
                  json_['sentimentAnalysisRequestConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionEntityTypes:
            (json_['sessionEntityTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        subAgents:
            (json_['subAgents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1SubAgent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeZone: json_['timeZone'] as core.String?,
        webhookHeaders: (json_['webhookHeaders']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contexts != null) 'contexts': contexts!,
    if (geoLocation != null) 'geoLocation': geoLocation!,
    if (knowledgeBaseNames != null) 'knowledgeBaseNames': knowledgeBaseNames!,
    if (payload != null) 'payload': payload!,
    if (platform != null) 'platform': platform!,
    if (resetContexts != null) 'resetContexts': resetContexts!,
    if (sentimentAnalysisRequestConfig != null)
      'sentimentAnalysisRequestConfig': sentimentAnalysisRequestConfig!,
    if (sessionEntityTypes != null) 'sessionEntityTypes': sessionEntityTypes!,
    if (subAgents != null) 'subAgents': subAgents!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (webhookHeaders != null) 'webhookHeaders': webhookHeaders!,
  };
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2beta1QueryResult {
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
  ///
  /// For more information, see the
  /// [cancel slot filling documentation](https://cloud.google.com/dialogflow/es/docs/intents-actions-parameters#cancel).
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
  core.List<GoogleCloudDialogflowV2beta1IntentMessage>? fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen.
  ///
  /// Note: This is a legacy field, `fulfillment_messages` should be preferred.
  core.String? fulfillmentText;

  /// The intent that matched the conversational query.
  ///
  /// Some, not all fields are filled in this message, including but not limited
  /// to: `name`, `display_name`, `end_interaction` and `is_fallback`.
  GoogleCloudDialogflowV2beta1Intent? intent;

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

  /// The result from Knowledge Connector (if any), ordered by decreasing
  /// `KnowledgeAnswers.match_confidence`.
  GoogleCloudDialogflowV2beta1KnowledgeAnswers? knowledgeAnswers;

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
  core.List<GoogleCloudDialogflowV2beta1Context>? outputContexts;

  /// The collection of extracted parameters.
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
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult? sentimentAnalysisResult;

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

  GoogleCloudDialogflowV2beta1QueryResult({
    this.action,
    this.allRequiredParamsPresent,
    this.cancelsSlotFilling,
    this.diagnosticInfo,
    this.fulfillmentMessages,
    this.fulfillmentText,
    this.intent,
    this.intentDetectionConfidence,
    this.knowledgeAnswers,
    this.languageCode,
    this.outputContexts,
    this.parameters,
    this.queryText,
    this.sentimentAnalysisResult,
    this.speechRecognitionConfidence,
    this.webhookPayload,
    this.webhookSource,
  });

  GoogleCloudDialogflowV2beta1QueryResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        allRequiredParamsPresent:
            json_['allRequiredParamsPresent'] as core.bool?,
        cancelsSlotFilling: json_['cancelsSlotFilling'] as core.bool?,
        diagnosticInfo:
            json_.containsKey('diagnosticInfo')
                ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
                : null,
        fulfillmentMessages:
            (json_['fulfillmentMessages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1IntentMessage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        fulfillmentText: json_['fulfillmentText'] as core.String?,
        intent:
            json_.containsKey('intent')
                ? GoogleCloudDialogflowV2beta1Intent.fromJson(
                  json_['intent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intentDetectionConfidence:
            (json_['intentDetectionConfidence'] as core.num?)?.toDouble(),
        knowledgeAnswers:
            json_.containsKey('knowledgeAnswers')
                ? GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(
                  json_['knowledgeAnswers']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        outputContexts:
            (json_['outputContexts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Context.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        queryText: json_['queryText'] as core.String?,
        sentimentAnalysisResult:
            json_.containsKey('sentimentAnalysisResult')
                ? GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
                  json_['sentimentAnalysisResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        speechRecognitionConfidence:
            (json_['speechRecognitionConfidence'] as core.num?)?.toDouble(),
        webhookPayload:
            json_.containsKey('webhookPayload')
                ? json_['webhookPayload'] as core.Map<core.String, core.dynamic>
                : null,
        webhookSource: json_['webhookSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (allRequiredParamsPresent != null)
      'allRequiredParamsPresent': allRequiredParamsPresent!,
    if (cancelsSlotFilling != null) 'cancelsSlotFilling': cancelsSlotFilling!,
    if (diagnosticInfo != null) 'diagnosticInfo': diagnosticInfo!,
    if (fulfillmentMessages != null)
      'fulfillmentMessages': fulfillmentMessages!,
    if (fulfillmentText != null) 'fulfillmentText': fulfillmentText!,
    if (intent != null) 'intent': intent!,
    if (intentDetectionConfidence != null)
      'intentDetectionConfidence': intentDetectionConfidence!,
    if (knowledgeAnswers != null) 'knowledgeAnswers': knowledgeAnswers!,
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
class GoogleCloudDialogflowV2beta1ReloadDocumentRequest {
  /// The path for a Cloud Storage source file for reloading document content.
  ///
  /// If not provided, the Document's existing source will be reloaded.
  GoogleCloudDialogflowV2beta1GcsSource? gcsSource;

  /// Whether to import custom metadata from Google Cloud Storage.
  ///
  /// Only valid when the document source is Google Cloud Storage URI.
  core.bool? importGcsCustomMetadata;

  GoogleCloudDialogflowV2beta1ReloadDocumentRequest({
    this.gcsSource,
    this.importGcsCustomMetadata,
  });

  GoogleCloudDialogflowV2beta1ReloadDocumentRequest.fromJson(core.Map json_)
    : this(
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDialogflowV2beta1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        importGcsCustomMetadata: json_['importGcsCustomMetadata'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (importGcsCustomMetadata != null)
      'importGcsCustomMetadata': importGcsCustomMetadata!,
  };
}

/// Response messages from an automated agent.
class GoogleCloudDialogflowV2beta1ResponseMessage {
  /// A signal that indicates the interaction with the Dialogflow agent has
  /// ended.
  GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction? endInteraction;

  /// Hands off conversation to a live agent.
  GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff? liveAgentHandoff;

  /// An audio response message composed of both the synthesized Dialogflow
  /// agent responses and the audios hosted in places known to the client.
  GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio? mixedAudio;

  /// Returns a response containing a custom, platform-specific payload.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// A signal that the client should transfer the phone call connected to this
  /// agent to a third-party endpoint.
  GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall?
  telephonyTransferCall;

  /// Returns a text response.
  GoogleCloudDialogflowV2beta1ResponseMessageText? text;

  GoogleCloudDialogflowV2beta1ResponseMessage({
    this.endInteraction,
    this.liveAgentHandoff,
    this.mixedAudio,
    this.payload,
    this.telephonyTransferCall,
    this.text,
  });

  GoogleCloudDialogflowV2beta1ResponseMessage.fromJson(core.Map json_)
    : this(
        endInteraction:
            json_.containsKey('endInteraction')
                ? GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction.fromJson(
                  json_['endInteraction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        liveAgentHandoff:
            json_.containsKey('liveAgentHandoff')
                ? GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff.fromJson(
                  json_['liveAgentHandoff']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mixedAudio:
            json_.containsKey('mixedAudio')
                ? GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio.fromJson(
                  json_['mixedAudio'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        telephonyTransferCall:
            json_.containsKey('telephonyTransferCall')
                ? GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall.fromJson(
                  json_['telephonyTransferCall']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? GoogleCloudDialogflowV2beta1ResponseMessageText.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endInteraction != null) 'endInteraction': endInteraction!,
    if (liveAgentHandoff != null) 'liveAgentHandoff': liveAgentHandoff!,
    if (mixedAudio != null) 'mixedAudio': mixedAudio!,
    if (payload != null) 'payload': payload!,
    if (telephonyTransferCall != null)
      'telephonyTransferCall': telephonyTransferCall!,
    if (text != null) 'text': text!,
  };
}

/// Indicates that interaction with the Dialogflow agent has ended.
typedef GoogleCloudDialogflowV2beta1ResponseMessageEndInteraction = $Empty;

/// Indicates that the conversation should be handed off to a human agent.
///
/// Dialogflow only uses this to determine which conversations were handed off
/// to a human agent for measurement purposes. What else to do with this signal
/// is up to you and your handoff procedures. You may set this, for example: *
/// In the entry fulfillment of a Dialogflow CX Page if entering the page
/// indicates something went extremely wrong in the conversation. * In a webhook
/// response when you determine that the customer issue can only be handled by a
/// human.
typedef GoogleCloudDialogflowV2beta1ResponseMessageLiveAgentHandoff =
    $ResponseMessageLiveAgentHandoff;

/// Represents an audio message that is composed of both segments synthesized
/// from the Dialogflow agent prompts and ones hosted externally at the
/// specified URIs.
class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio {
  /// Segments this audio response is composed of.
  core.List<GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment>?
  segments;

  GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio({this.segments});

  GoogleCloudDialogflowV2beta1ResponseMessageMixedAudio.fromJson(core.Map json_)
    : this(
        segments:
            (json_['segments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment.fromJson(
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
class GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment {
  /// Whether the playback of this segment can be interrupted by the end user's
  /// speech and the client should then start the next Dialogflow request.
  core.bool? allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the
  /// output config specified in the request.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Client-specific URI that points to an audio clip accessible to the client.
  core.String? uri;

  GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment.fromJson(
    core.Map json_,
  ) : this(
        allowPlaybackInterruption:
            json_['allowPlaybackInterruption'] as core.bool?,
        audio: json_['audio'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowPlaybackInterruption != null)
      'allowPlaybackInterruption': allowPlaybackInterruption!,
    if (audio != null) 'audio': audio!,
    if (uri != null) 'uri': uri!,
  };
}

/// Represents the signal that telles the client to transfer the phone call
/// connected to the agent to a third-party endpoint.
class GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in
  /// [E.164 format](https://en.wikipedia.org/wiki/E.164).
  core.String? phoneNumber;

  /// Transfer the call to a SIP endpoint.
  core.String? sipUri;

  GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall({
    this.phoneNumber,
    this.sipUri,
  });

  GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall.fromJson(
    core.Map json_,
  ) : this(
        phoneNumber: json_['phoneNumber'] as core.String?,
        sipUri: json_['sipUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
    if (sipUri != null) 'sipUri': sipUri!,
  };
}

/// The text response message.
class GoogleCloudDialogflowV2beta1ResponseMessageText {
  /// A collection of text response variants.
  ///
  /// If multiple variants are defined, only one text response variant is
  /// returned at runtime.
  core.List<core.String>? text;

  GoogleCloudDialogflowV2beta1ResponseMessageText({this.text});

  GoogleCloudDialogflowV2beta1ResponseMessageText.fromJson(core.Map json_)
    : this(
        text:
            (json_['text'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (text != null) 'text': text!,
  };
}

/// The request message for Agents.RestoreAgent.
typedef GoogleCloudDialogflowV2beta1RestoreAgentRequest = $RestoreAgentRequest;

/// The response message for Agents.SearchAgents.
class GoogleCloudDialogflowV2beta1SearchAgentsResponse {
  /// The list of agents.
  ///
  /// There will be a maximum number of items returned based on the page_size
  /// field in the request.
  core.List<GoogleCloudDialogflowV2beta1Agent>? agents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDialogflowV2beta1SearchAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(core.Map json_)
    : this(
        agents:
            (json_['agents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Agent.fromJson(
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

/// Represents a SearchKnowledge answer.
class GoogleCloudDialogflowV2beta1SearchKnowledgeAnswer {
  /// The piece of text from the knowledge base documents that answers the
  /// search query
  core.String? answer;

  /// The name of the answer record.
  ///
  /// Format: `projects//locations//answer Records/`
  core.String? answerRecord;

  /// All sources used to generate the answer.
  core.List<GoogleCloudDialogflowV2beta1SearchKnowledgeAnswerAnswerSource>?
  answerSources;

  /// The type of the answer.
  /// Possible string values are:
  /// - "ANSWER_TYPE_UNSPECIFIED" : The answer has a unspecified type.
  /// - "FAQ" : The answer is from FAQ documents.
  /// - "GENERATIVE" : The answer is from generative model.
  /// - "INTENT" : The answer is from intent matching.
  core.String? answerType;

  GoogleCloudDialogflowV2beta1SearchKnowledgeAnswer({
    this.answer,
    this.answerRecord,
    this.answerSources,
    this.answerType,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        answerSources:
            (json_['answerSources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeAnswerAnswerSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        answerType: json_['answerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (answerSources != null) 'answerSources': answerSources!,
    if (answerType != null) 'answerType': answerType!,
  };
}

/// The sources of the answers.
typedef GoogleCloudDialogflowV2beta1SearchKnowledgeAnswerAnswerSource =
    $SearchKnowledgeAnswerAnswerSource;

/// The request message for Conversations.SearchKnowledge.
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequest {
  /// The conversation (between human agent and end user) where the search
  /// request is triggered.
  ///
  /// Format: `projects//locations//conversations/`.
  ///
  /// Optional.
  core.String? conversation;

  /// The conversation profile used to configure the search.
  ///
  /// Format: `projects//locations//conversationProfiles/`.
  ///
  /// Required.
  core.String? conversationProfile;

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

  /// Whether to search the query exactly without query rewrite.
  ///
  /// Optional.
  core.bool? exactSearch;

  /// The name of the latest conversation message when the request is triggered.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  ///
  /// Optional.
  core.String? latestMessage;

  /// The parent resource contains the conversation profile Format: 'projects/'
  /// or `projects//locations/`.
  ///
  /// Required.
  core.String? parent;

  /// The natural language text query for knowledge search.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1TextInput? query;

  /// The source of the query in the request.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "QUERY_SOURCE_UNSPECIFIED" : Unknown query source.
  /// - "AGENT_QUERY" : The query is from agents.
  /// - "SUGGESTED_QUERY" : The query is a suggested query from
  /// Participants.SuggestKnowledgeAssist.
  core.String? querySource;

  /// Configuration specific to search queries with data stores.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfig? searchConfig;

  /// The ID of the search session.
  ///
  /// The session_id can be combined with Dialogflow V3 Agent ID retrieved from
  /// conversation profile or on its own to identify a search session. The
  /// search history of the same session will impact the search result. It's up
  /// to the API caller to choose an appropriate `Session ID`. It can be a
  /// random number or some type of session identifiers (preferably hashed). The
  /// length must not exceed 36 characters.
  ///
  /// Required.
  core.String? sessionId;

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequest({
    this.conversation,
    this.conversationProfile,
    this.endUserMetadata,
    this.exactSearch,
    this.latestMessage,
    this.parent,
    this.query,
    this.querySource,
    this.searchConfig,
    this.sessionId,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequest.fromJson(core.Map json_)
    : this(
        conversation: json_['conversation'] as core.String?,
        conversationProfile: json_['conversationProfile'] as core.String?,
        endUserMetadata:
            json_.containsKey('endUserMetadata')
                ? json_['endUserMetadata']
                    as core.Map<core.String, core.dynamic>
                : null,
        exactSearch: json_['exactSearch'] as core.bool?,
        latestMessage: json_['latestMessage'] as core.String?,
        parent: json_['parent'] as core.String?,
        query:
            json_.containsKey('query')
                ? GoogleCloudDialogflowV2beta1TextInput.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        querySource: json_['querySource'] as core.String?,
        searchConfig:
            json_.containsKey('searchConfig')
                ? GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfig.fromJson(
                  json_['searchConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionId: json_['sessionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversation != null) 'conversation': conversation!,
    if (conversationProfile != null)
      'conversationProfile': conversationProfile!,
    if (endUserMetadata != null) 'endUserMetadata': endUserMetadata!,
    if (exactSearch != null) 'exactSearch': exactSearch!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (parent != null) 'parent': parent!,
    if (query != null) 'query': query!,
    if (querySource != null) 'querySource': querySource!,
    if (searchConfig != null) 'searchConfig': searchConfig!,
    if (sessionId != null) 'sessionId': sessionId!,
  };
}

/// Configuration specific to search queries with data stores.
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfig {
  /// Boost specifications for data stores.
  ///
  /// Optional.
  core.List<
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecs
  >?
  boostSpecs;

  /// Filter specification for data store queries.
  ///
  /// Maps from datastore name to the filter expression for that datastore. Do
  /// not specify more than one FilterSpecs for each datastore name. If multiple
  /// FilterSpecs are provided for the same datastore name, the behavior is
  /// undefined.
  ///
  /// Optional.
  core.List<
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigFilterSpecs
  >?
  filterSpecs;

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfig({
    this.boostSpecs,
    this.filterSpecs,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfig.fromJson(
    core.Map json_,
  ) : this(
        boostSpecs:
            (json_['boostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecs.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        filterSpecs:
            (json_['filterSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigFilterSpecs.fromJson(
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

/// Boost specifications for data stores.
///
/// Maps from datastore name to their boost configuration. Do not specify more
/// than one BoostSpecs for each datastore name. If multiple BoostSpecs are
/// provided for the same datastore name, the behavior is undefined.
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecs {
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
  core.List<
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec
  >?
  spec;

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecs({
    this.dataStores,
    this.spec,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecs.fromJson(
    core.Map json_,
  ) : this(
        dataStores:
            (json_['dataStores'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        spec:
            (json_['spec'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec.fromJson(
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

/// Boost specification to boost certain documents.
///
/// A copy of google.cloud.discoveryengine.v1main.BoostSpec, field documentation
/// is available at
/// https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1alpha/BoostSpec
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec {
  /// Condition boost specifications.
  ///
  /// If a document matches multiple conditions in the specifications, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  ///
  /// Optional.
  core.List<
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec
  >?
  conditionBoostSpecs;

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec({
    this.conditionBoostSpecs,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        conditionBoostSpecs:
            (json_['conditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec.fromJson(
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
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec {
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
  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec?
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

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec:
            json_.containsKey('boostControlSpec')
                ? GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
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
class GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec {
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
    GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint
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

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints:
            (json_['controlPoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
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
typedef GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    $SpecControlPoint;

/// Filter specification for data store queries.
typedef GoogleCloudDialogflowV2beta1SearchKnowledgeRequestSearchConfigFilterSpecs =
    $SearchKnowledgeRequestSearchConfigFilterSpecs;

/// The response message for Conversations.SearchKnowledge.
class GoogleCloudDialogflowV2beta1SearchKnowledgeResponse {
  /// Most relevant snippets extracted from articles in the given knowledge
  /// base, ordered by confidence.
  core.List<GoogleCloudDialogflowV2beta1SearchKnowledgeAnswer>? answers;

  /// The rewritten query used to search knowledge.
  core.String? rewrittenQuery;

  GoogleCloudDialogflowV2beta1SearchKnowledgeResponse({
    this.answers,
    this.rewrittenQuery,
  });

  GoogleCloudDialogflowV2beta1SearchKnowledgeResponse.fromJson(core.Map json_)
    : this(
        answers:
            (json_['answers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SearchKnowledgeAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        rewrittenQuery: json_['rewrittenQuery'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answers != null) 'answers': answers!,
    if (rewrittenQuery != null) 'rewrittenQuery': rewrittenQuery!,
  };
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
///
/// See:
/// https://cloud.google.com/natural-language/docs/basics#interpreting_sentiment_analysis_values
/// for how to interpret the result.
typedef GoogleCloudDialogflowV2beta1Sentiment = $Shared08;

/// Configures the types of sentiment analysis to perform.
typedef GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig =
    $SentimentAnalysisRequestConfig;

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
class GoogleCloudDialogflowV2beta1SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2beta1Sentiment? queryTextSentiment;

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult({
    this.queryTextSentiment,
  });

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(core.Map json_)
    : this(
        queryTextSentiment:
            json_.containsKey('queryTextSentiment')
                ? GoogleCloudDialogflowV2beta1Sentiment.fromJson(
                  json_['queryTextSentiment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (queryTextSentiment != null) 'queryTextSentiment': queryTextSentiment!,
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
class GoogleCloudDialogflowV2beta1SessionEntityType {
  /// The collection of entities associated with this session entity type.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity>? entities;

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
  /// Supported formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  ///
  /// Required.
  core.String? name;

  GoogleCloudDialogflowV2beta1SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(core.Map json_)
    : this(
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
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

/// The request message for ConversationProfiles.SetSuggestionFeature.
class GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest {
  /// The participant role to add or update the suggestion feature config.
  ///
  /// Only HUMAN_AGENT or END_USER can be used.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant role not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent, such as a
  /// Dialogflow agent.
  /// - "END_USER" : Participant is an end user that has called or chatted with
  /// Dialogflow services.
  core.String? participantRole;

  /// The suggestion feature config to add or update.
  ///
  /// Required.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig?
  suggestionFeatureConfig;

  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest({
    this.participantRole,
    this.suggestionFeatureConfig,
  });

  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        participantRole: json_['participantRole'] as core.String?,
        suggestionFeatureConfig:
            json_.containsKey('suggestionFeatureConfig')
                ? GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
                  json_['suggestionFeatureConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (participantRole != null) 'participantRole': participantRole!,
    if (suggestionFeatureConfig != null)
      'suggestionFeatureConfig': suggestionFeatureConfig!,
  };
}

/// SipTrunk is the resource that represents a SIP trunk to connect to Google
/// Telephony platform SIP trunking service.
class GoogleCloudDialogflowV2beta1SipTrunk {
  /// Connections of the SIP trunk.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1Connection>? connections;

  /// Human readable alias for this trunk.
  ///
  /// Optional.
  core.String? displayName;

  /// The expected hostnames in the peer certificate from partner that is used
  /// for TLS authentication.
  ///
  /// Required.
  core.List<core.String>? expectedHostname;

  /// Identifier.
  ///
  /// The unique identifier of the SIP trunk. Format:
  /// `projects//locations//sipTrunks/`.
  core.String? name;

  GoogleCloudDialogflowV2beta1SipTrunk({
    this.connections,
    this.displayName,
    this.expectedHostname,
    this.name,
  });

  GoogleCloudDialogflowV2beta1SipTrunk.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1Connection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        expectedHostname:
            (json_['expectedHostname'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
    if (displayName != null) 'displayName': displayName!,
    if (expectedHostname != null) 'expectedHostname': expectedHostname!,
    if (name != null) 'name': name!,
  };
}

/// Represents a smart reply answer.
typedef GoogleCloudDialogflowV2beta1SmartReplyAnswer = $SmartReplyAnswer;

/// Hints for the speech recognizer to help with recognition in a specific
/// conversation state.
typedef GoogleCloudDialogflowV2beta1SpeechContext = $SpeechContext01;

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2beta1SpeechToTextConfig {
  /// Audio encoding of the audio content to process.
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
  /// the same session do not necessarily need to specify the same language. If
  /// not specified, the default language configured at ConversationProfile is
  /// used.
  core.String? languageCode;

  /// Which Speech model to select.
  ///
  /// Select the model best suited to your domain to get best results. If a
  /// model is not explicitly specified, then Dialogflow auto-selects a model
  /// based on other parameters in the SpeechToTextConfig and Agent settings. If
  /// enhanced speech model is enabled for the agent and an enhanced version of
  /// the specified model for the language does not exist, then the speech is
  /// recognized using the standard version of the specified model. Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model)
  /// for more details. If you specify a model, the following models typically
  /// have the best performance: - phone_call (best for Agent Assist and
  /// telephony) - latest_short (best for Dialogflow non-telephony) -
  /// command_and_search Leave this field unspecified to use
  /// [Agent Speech settings](https://cloud.google.com/dialogflow/cx/docs/concept/agent#settings-speech)
  /// for model selection.
  core.String? model;

  /// List of names of Cloud Speech phrase sets that are used for transcription.
  ///
  /// For phrase set limitations, please refer to
  /// [Cloud Speech API quotas and limits](https://cloud.google.com/speech-to-text/quotas#content).
  core.List<core.String>? phraseSets;

  /// Sample rate (in Hertz) of the audio content sent in the query.
  ///
  /// Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
  /// for more details.
  core.int? sampleRateHertz;

  /// The speech model used in speech to text.
  ///
  /// `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated
  /// as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and
  /// StreamingAnalyzeContentRequest request. If enhanced model variant is
  /// specified and an enhanced version of the specified model for the language
  /// does not exist, then it would emit an error.
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

  /// Use timeout based endpointing, interpreting endpointer sensitivity as
  /// seconds of timeout value.
  core.bool? useTimeoutBasedEndpointing;

  GoogleCloudDialogflowV2beta1SpeechToTextConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.phraseSets,
    this.sampleRateHertz,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  GoogleCloudDialogflowV2beta1SpeechToTextConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        enableWordInfo: json_['enableWordInfo'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        model: json_['model'] as core.String?,
        phraseSets:
            (json_['phraseSets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        speechModelVariant: json_['speechModelVariant'] as core.String?,
        useTimeoutBasedEndpointing:
            json_['useTimeoutBasedEndpointing'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioEncoding != null) 'audioEncoding': audioEncoding!,
    if (enableWordInfo != null) 'enableWordInfo': enableWordInfo!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (model != null) 'model': model!,
    if (phraseSets != null) 'phraseSets': phraseSets!,
    if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
    if (speechModelVariant != null) 'speechModelVariant': speechModelVariant!,
    if (useTimeoutBasedEndpointing != null)
      'useTimeoutBasedEndpointing': useTimeoutBasedEndpointing!,
  };
}

/// Contains basic configuration for a sub-agent.
class GoogleCloudDialogflowV2beta1SubAgent {
  /// The unique identifier (`environment name` in dialogflow console) of this
  /// sub-agent environment.
  ///
  /// Assumes draft environment if `environment` is not set.
  ///
  /// Optional.
  core.String? environment;

  /// The project of this agent.
  ///
  /// Format: `projects/` or `projects//locations/`.
  ///
  /// Required.
  core.String? project;

  GoogleCloudDialogflowV2beta1SubAgent({this.environment, this.project});

  GoogleCloudDialogflowV2beta1SubAgent.fromJson(core.Map json_)
    : this(
        environment: json_['environment'] as core.String?,
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (environment != null) 'environment': environment!,
    if (project != null) 'project': project!,
  };
}

/// The request message for Participants.SuggestArticles.
class GoogleCloudDialogflowV2beta1SuggestArticlesRequest {
  /// Parameters for a human assist query.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AssistQueryParameters? assistQueryParams;

  /// Max number of messages prior to and including latest_message to use as
  /// context when compiling the suggestion.
  ///
  /// By default 20 and at most 50.
  ///
  /// Optional.
  core.int? contextSize;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  ///
  /// Optional.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestArticlesRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestArticlesRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams:
            json_.containsKey('assistQueryParams')
                ? GoogleCloudDialogflowV2beta1AssistQueryParameters.fromJson(
                  json_['assistQueryParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assistQueryParams != null) 'assistQueryParams': assistQueryParams!,
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The response message for Participants.SuggestArticles.
class GoogleCloudDialogflowV2beta1SuggestArticlesResponse {
  /// Articles ordered by score in descending order.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1ArticleAnswer>? articleAnswers;

  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestArticlesResponse.context_size field in
  /// the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestArticlesResponse({
    this.articleAnswers,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestArticlesResponse.fromJson(core.Map json_)
    : this(
        articleAnswers:
            (json_['articleAnswers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1ArticleAnswer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (articleAnswers != null) 'articleAnswers': articleAnswers!,
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The request message for Conversations.SuggestConversationSummary.
class GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest {
  /// Parameters for a human assist query.
  ///
  /// Only used for POC/demo purpose.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AssistQueryParameters? assistQueryParams;

  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// By default 500 and at most 1000.
  ///
  /// Optional.
  core.int? contextSize;

  /// The name of the latest conversation message used as context for compiling
  /// suggestion.
  ///
  /// If empty, the latest message of the conversation will be used. Format:
  /// `projects//locations//conversations//messages/`.
  ///
  /// Optional.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest.fromJson(
    core.Map json_,
  ) : this(
        assistQueryParams:
            json_.containsKey('assistQueryParams')
                ? GoogleCloudDialogflowV2beta1AssistQueryParameters.fromJson(
                  json_['assistQueryParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assistQueryParams != null) 'assistQueryParams': assistQueryParams!,
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The response message for Conversations.SuggestConversationSummary.
class GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse {
  /// Number of messages prior to and including last_conversation_message used
  /// to compile the suggestion.
  ///
  /// It may be smaller than the SuggestSummaryRequest.context_size field in the
  /// request if there weren't that many messages in the conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used as context for compiling
  /// suggestion.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  /// Generated summary.
  GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponseSummary?
  summary;

  GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse({
    this.contextSize,
    this.latestMessage,
    this.summary,
  });

  GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        summary:
            json_.containsKey('summary')
                ? GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponseSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (summary != null) 'summary': summary!,
  };
}

/// Generated summary for a conversation.
typedef GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponseSummary =
    $SuggestConversationSummaryResponseSummary;

/// The response message for Participants.SuggestDialogflowAssists.
class GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestDialogflowAssistsRequest.context_size
  /// field in the request if there aren't that many messages in the
  /// conversation.
  core.int? contextSize;

  /// Multiple reply options provided by Dialogflow assist service.
  ///
  /// The order is based on the rank of the model prediction.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1DialogflowAssistAnswer>?
  dialogflowAssistAnswers;

  /// The name of the latest conversation message used to suggest answer.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse({
    this.contextSize,
    this.dialogflowAssistAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        dialogflowAssistAnswers:
            (json_['dialogflowAssistAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1DialogflowAssistAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (dialogflowAssistAnswers != null)
      'dialogflowAssistAnswers': dialogflowAssistAnswers!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The request message for Participants.SuggestFaqAnswers.
class GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest {
  /// Parameters for a human assist query.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1AssistQueryParameters? assistQueryParams;

  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// By default 20 and at most 50.
  ///
  /// Optional.
  core.int? contextSize;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  ///
  /// Optional.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams:
            json_.containsKey('assistQueryParams')
                ? GoogleCloudDialogflowV2beta1AssistQueryParameters.fromJson(
                  json_['assistQueryParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assistQueryParams != null) 'assistQueryParams': assistQueryParams!,
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The request message for Participants.SuggestFaqAnswers.
class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestFaqAnswersRequest.context_size field in
  /// the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// Answers extracted from FAQ documents.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1FaqAnswer>? faqAnswers;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse({
    this.contextSize,
    this.faqAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        faqAnswers:
            (json_['faqAnswers'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2beta1FaqAnswer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (faqAnswers != null) 'faqAnswers': faqAnswers!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The request message for Participants.SuggestKnowledgeAssist.
typedef GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest =
    $SuggestKnowledgeAssistRequest;

/// The response message for Participants.SuggestKnowledgeAssist.
class GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestKnowledgeAssistRequest.context_size
  /// field in the request if there are fewer messages in the conversation.
  core.int? contextSize;

  /// Knowledge Assist suggestion.
  ///
  /// Output only.
  GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer? knowledgeAssistAnswer;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse({
    this.contextSize,
    this.knowledgeAssistAnswer,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        knowledgeAssistAnswer:
            json_.containsKey('knowledgeAssistAnswer')
                ? GoogleCloudDialogflowV2beta1KnowledgeAssistAnswer.fromJson(
                  json_['knowledgeAssistAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (knowledgeAssistAnswer != null)
      'knowledgeAssistAnswer': knowledgeAssistAnswer!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The request message for Participants.SuggestSmartReplies.
class GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest {
  /// Max number of messages prior to and including \[latest_message\] to use as
  /// context when compiling the suggestion.
  ///
  /// By default 20 and at most 50.
  ///
  /// Optional.
  core.int? contextSize;

  /// The current natural language text segment to compile suggestion for.
  ///
  /// This provides a way for user to get follow up smart reply suggestion after
  /// a smart reply selection, without sending a text message.
  GoogleCloudDialogflowV2beta1TextInput? currentTextInput;

  /// The name of the latest conversation message to compile suggestion for.
  ///
  /// If empty, it will be the latest message of the conversation. Format:
  /// `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest({
    this.contextSize,
    this.currentTextInput,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        currentTextInput:
            json_.containsKey('currentTextInput')
                ? GoogleCloudDialogflowV2beta1TextInput.fromJson(
                  json_['currentTextInput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (currentTextInput != null) 'currentTextInput': currentTextInput!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
  };
}

/// The response message for Participants.SuggestSmartReplies.
class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse {
  /// Number of messages prior to and including latest_message to compile the
  /// suggestion.
  ///
  /// It may be smaller than the SuggestSmartRepliesRequest.context_size field
  /// in the request if there aren't that many messages in the conversation.
  core.int? contextSize;

  /// The name of the latest conversation message used to compile suggestion
  /// for.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  core.String? latestMessage;

  /// Multiple reply options provided by smart reply service.
  ///
  /// The order is based on the rank of the model prediction. The maximum number
  /// of the returned replies is set in SmartReplyConfig.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1SmartReplyAnswer>? smartReplyAnswers;

  GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse({
    this.contextSize,
    this.latestMessage,
    this.smartReplyAnswers,
  });

  GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        smartReplyAnswers:
            (json_['smartReplyAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SmartReplyAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contextSize != null) 'contextSize': contextSize!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (smartReplyAnswers != null) 'smartReplyAnswers': smartReplyAnswers!,
  };
}

/// Represents a suggestion for a human agent.
class GoogleCloudDialogflowV2beta1Suggestion {
  /// Articles ordered by score in descending order.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1SuggestionArticle>? articles;

  /// The time the suggestion was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Answers extracted from FAQ documents.
  ///
  /// Output only.
  core.List<GoogleCloudDialogflowV2beta1SuggestionFaqAnswer>? faqAnswers;

  /// Latest message used as context to compile this suggestion.
  ///
  /// Format: `projects//locations//conversations//messages/`.
  ///
  /// Output only.
  core.String? latestMessage;

  /// The name of this suggestion.
  ///
  /// Format: `projects//locations//conversations//participants / *
  /// /suggestions/`.
  ///
  /// Output only.
  core.String? name;

  GoogleCloudDialogflowV2beta1Suggestion({
    this.articles,
    this.createTime,
    this.faqAnswers,
    this.latestMessage,
    this.name,
  });

  GoogleCloudDialogflowV2beta1Suggestion.fromJson(core.Map json_)
    : this(
        articles:
            (json_['articles'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SuggestionArticle.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        faqAnswers:
            (json_['faqAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SuggestionFaqAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (articles != null) 'articles': articles!,
    if (createTime != null) 'createTime': createTime!,
    if (faqAnswers != null) 'faqAnswers': faqAnswers!,
    if (latestMessage != null) 'latestMessage': latestMessage!,
    if (name != null) 'name': name!,
  };
}

/// Represents suggested article.
class GoogleCloudDialogflowV2beta1SuggestionArticle {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  ///
  /// Output only.
  core.String? answerRecord;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  ///
  /// Output only.
  core.Map<core.String, core.String>? metadata;

  /// Article snippets.
  ///
  /// Output only.
  core.List<core.String>? snippets;

  /// The article title.
  ///
  /// Output only.
  core.String? title;

  /// The article URI.
  ///
  /// Output only.
  core.String? uri;

  GoogleCloudDialogflowV2beta1SuggestionArticle({
    this.answerRecord,
    this.metadata,
    this.snippets,
    this.title,
    this.uri,
  });

  GoogleCloudDialogflowV2beta1SuggestionArticle.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        snippets:
            (json_['snippets'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (metadata != null) 'metadata': metadata!,
    if (snippets != null) 'snippets': snippets!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Represents suggested answer from "frequently asked questions".
class GoogleCloudDialogflowV2beta1SuggestionFaqAnswer {
  /// The piece of text from the `source` knowledge base document.
  ///
  /// Output only.
  core.String? answer;

  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  ///
  /// Output only.
  core.String? answerRecord;

  /// The system's confidence score that this Knowledge answer is a good match
  /// for this conversational query, range from 0.0 (completely uncertain) to
  /// 1.0 (completely certain).
  core.double? confidence;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  ///
  /// Output only.
  core.Map<core.String, core.String>? metadata;

  /// The corresponding FAQ question.
  ///
  /// Output only.
  core.String? question;

  /// Indicates which Knowledge Document this answer was extracted from.
  ///
  /// Format: `projects//locations//agent/knowledgeBases//documents/`.
  ///
  /// Output only.
  core.String? source;

  GoogleCloudDialogflowV2beta1SuggestionFaqAnswer({
    this.answer,
    this.answerRecord,
    this.confidence,
    this.metadata,
    this.question,
    this.source,
  });

  GoogleCloudDialogflowV2beta1SuggestionFaqAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        question: json_['question'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (confidence != null) 'confidence': confidence!,
    if (metadata != null) 'metadata': metadata!,
    if (question != null) 'question': question!,
    if (source != null) 'source': source!,
  };
}

/// The type of Human Agent Assistant API suggestion to perform, and the maximum
/// number of results to return for that type.
///
/// Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2beta1SuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified feature type.
  /// - "ARTICLE_SUGGESTION" : Run article suggestion model for chat.
  /// - "FAQ" : Run FAQ model.
  /// - "SMART_REPLY" : Run smart reply model for chat.
  /// - "DIALOGFLOW_ASSIST" : Run Dialogflow assist model for chat, which will
  /// return automated agent response as suggestion.
  /// - "CONVERSATION_SUMMARIZATION" : Run conversation summarization model for
  /// chat.
  /// - "KNOWLEDGE_SEARCH" : Run knowledge search with text input from agent or
  /// text generated query.
  /// - "KNOWLEDGE_ASSIST" : Run knowledge assist with automatic query
  /// generation.
  core.String? type;

  GoogleCloudDialogflowV2beta1SuggestionFeature({this.type});

  GoogleCloudDialogflowV2beta1SuggestionFeature.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
  };
}

/// Represents the selection of a suggestion.
class GoogleCloudDialogflowV2beta1SuggestionInput {
  /// The ID of a suggestion selected by the human agent.
  ///
  /// The suggestion(s) were generated in a previous call to request Dialogflow
  /// assist. The format is: `projects//locations//answerRecords/` where is an
  /// alphanumeric string.
  ///
  /// Required.
  core.String? answerRecord;

  /// The intent to be triggered on V3 agent.
  GoogleCloudDialogflowV2beta1IntentInput? intentInput;

  /// In Dialogflow assist for v3, the user can submit a form by sending a
  /// SuggestionInput.
  ///
  /// The form is uniquely determined by the answer_record field, which
  /// identifies a v3 QueryResult containing the current page. The form
  /// parameters are specified via the parameters field. Depending on your
  /// protocol or client library language, this is a map, associative array,
  /// symbol table, dictionary, or JSON object composed of a collection of
  /// (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter
  /// name * MapValue type: If parameter's entity type is a composite entity
  /// then use map, otherwise, depending on the parameter value type, it could
  /// be one of string, number, boolean, null, list or map. * MapValue value: If
  /// parameter's entity type is a composite entity then use map from composite
  /// entity property names to property values, otherwise, use parameter value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// If the customer edited the suggestion before using it, include the revised
  /// text here.
  ///
  /// Optional.
  GoogleCloudDialogflowV2beta1TextInput? textOverride;

  GoogleCloudDialogflowV2beta1SuggestionInput({
    this.answerRecord,
    this.intentInput,
    this.parameters,
    this.textOverride,
  });

  GoogleCloudDialogflowV2beta1SuggestionInput.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        intentInput:
            json_.containsKey('intentInput')
                ? GoogleCloudDialogflowV2beta1IntentInput.fromJson(
                  json_['intentInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
                : null,
        textOverride:
            json_.containsKey('textOverride')
                ? GoogleCloudDialogflowV2beta1TextInput.fromJson(
                  json_['textOverride'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerRecord != null) 'answerRecord': answerRecord!,
    if (intentInput != null) 'intentInput': intentInput!,
    if (parameters != null) 'parameters': parameters!,
    if (textOverride != null) 'textOverride': textOverride!,
  };
}

/// One response of different type of suggestion response which is used in the
/// response of Participants.AnalyzeContent and Participants.AnalyzeContent, as
/// well as HumanAgentAssistantEvent.
class GoogleCloudDialogflowV2beta1SuggestionResult {
  /// Error status if the request failed.
  GoogleRpcStatus? error;

  /// Suggestions generated using generators triggered by customer or agent
  /// messages.
  GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse?
  generateSuggestionsResponse;

  /// SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.
  GoogleCloudDialogflowV2beta1SuggestArticlesResponse? suggestArticlesResponse;

  /// SuggestDialogflowAssistsResponse if request is for DIALOGFLOW_ASSIST.
  GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse?
  suggestDialogflowAssistsResponse;

  /// SuggestDialogflowAssistsResponse if request is for ENTITY_EXTRACTION.
  GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse?
  suggestEntityExtractionResponse;

  /// SuggestFaqAnswersResponse if request is for FAQ_ANSWER.
  GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse?
  suggestFaqAnswersResponse;

  /// SuggestKnowledgeAssistResponse if request is for KNOWLEDGE_ASSIST.
  GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse?
  suggestKnowledgeAssistResponse;

  /// SuggestSmartRepliesResponse if request is for SMART_REPLY.
  GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse?
  suggestSmartRepliesResponse;

  GoogleCloudDialogflowV2beta1SuggestionResult({
    this.error,
    this.generateSuggestionsResponse,
    this.suggestArticlesResponse,
    this.suggestDialogflowAssistsResponse,
    this.suggestEntityExtractionResponse,
    this.suggestFaqAnswersResponse,
    this.suggestKnowledgeAssistResponse,
    this.suggestSmartRepliesResponse,
  });

  GoogleCloudDialogflowV2beta1SuggestionResult.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        generateSuggestionsResponse:
            json_.containsKey('generateSuggestionsResponse')
                ? GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse.fromJson(
                  json_['generateSuggestionsResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestArticlesResponse:
            json_.containsKey('suggestArticlesResponse')
                ? GoogleCloudDialogflowV2beta1SuggestArticlesResponse.fromJson(
                  json_['suggestArticlesResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestDialogflowAssistsResponse:
            json_.containsKey('suggestDialogflowAssistsResponse')
                ? GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.fromJson(
                  json_['suggestDialogflowAssistsResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestEntityExtractionResponse:
            json_.containsKey('suggestEntityExtractionResponse')
                ? GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.fromJson(
                  json_['suggestEntityExtractionResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestFaqAnswersResponse:
            json_.containsKey('suggestFaqAnswersResponse')
                ? GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.fromJson(
                  json_['suggestFaqAnswersResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestKnowledgeAssistResponse:
            json_.containsKey('suggestKnowledgeAssistResponse')
                ? GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse.fromJson(
                  json_['suggestKnowledgeAssistResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suggestSmartRepliesResponse:
            json_.containsKey('suggestSmartRepliesResponse')
                ? GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.fromJson(
                  json_['suggestSmartRepliesResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (generateSuggestionsResponse != null)
      'generateSuggestionsResponse': generateSuggestionsResponse!,
    if (suggestArticlesResponse != null)
      'suggestArticlesResponse': suggestArticlesResponse!,
    if (suggestDialogflowAssistsResponse != null)
      'suggestDialogflowAssistsResponse': suggestDialogflowAssistsResponse!,
    if (suggestEntityExtractionResponse != null)
      'suggestEntityExtractionResponse': suggestEntityExtractionResponse!,
    if (suggestFaqAnswersResponse != null)
      'suggestFaqAnswersResponse': suggestFaqAnswersResponse!,
    if (suggestKnowledgeAssistResponse != null)
      'suggestKnowledgeAssistResponse': suggestKnowledgeAssistResponse!,
    if (suggestSmartRepliesResponse != null)
      'suggestSmartRepliesResponse': suggestSmartRepliesResponse!,
  };
}

/// Summarization context that customer can configure.
class GoogleCloudDialogflowV2beta1SummarizationContext {
  /// List of few shot examples.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1FewShotExample>? fewShotExamples;

  /// The target language of the generated summary.
  ///
  /// The language code for conversation will be used if this field is empty.
  /// Supported 2.0 and later versions.
  ///
  /// Optional.
  core.String? outputLanguageCode;

  /// List of sections.
  ///
  /// Note it contains both predefined section sand customer defined sections.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1SummarizationSection>?
  summarizationSections;

  /// Version of the feature.
  ///
  /// If not set, default to latest version. Current candidates are \["1.0"\].
  ///
  /// Optional.
  core.String? version;

  GoogleCloudDialogflowV2beta1SummarizationContext({
    this.fewShotExamples,
    this.outputLanguageCode,
    this.summarizationSections,
    this.version,
  });

  GoogleCloudDialogflowV2beta1SummarizationContext.fromJson(core.Map json_)
    : this(
        fewShotExamples:
            (json_['fewShotExamples'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1FewShotExample.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        outputLanguageCode: json_['outputLanguageCode'] as core.String?,
        summarizationSections:
            (json_['summarizationSections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SummarizationSection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fewShotExamples != null) 'fewShotExamples': fewShotExamples!,
    if (outputLanguageCode != null) 'outputLanguageCode': outputLanguageCode!,
    if (summarizationSections != null)
      'summarizationSections': summarizationSections!,
    if (version != null) 'version': version!,
  };
}

/// Represents the section of summarization.
typedef GoogleCloudDialogflowV2beta1SummarizationSection =
    $SummarizationSection;

/// List of summarization sections.
class GoogleCloudDialogflowV2beta1SummarizationSectionList {
  /// Summarization sections.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1SummarizationSection>?
  summarizationSections;

  GoogleCloudDialogflowV2beta1SummarizationSectionList({
    this.summarizationSections,
  });

  GoogleCloudDialogflowV2beta1SummarizationSectionList.fromJson(core.Map json_)
    : this(
        summarizationSections:
            (json_['summarizationSections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SummarizationSection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (summarizationSections != null)
      'summarizationSections': summarizationSections!,
  };
}

/// Suggested summary of the conversation.
class GoogleCloudDialogflowV2beta1SummarySuggestion {
  /// All the parts of generated summary.
  ///
  /// Required.
  core.List<GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection>?
  summarySections;

  GoogleCloudDialogflowV2beta1SummarySuggestion({this.summarySections});

  GoogleCloudDialogflowV2beta1SummarySuggestion.fromJson(core.Map json_)
    : this(
        summarySections:
            (json_['summarySections'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (summarySections != null) 'summarySections': summarySections!,
  };
}

/// A component of the generated summary.
typedef GoogleCloudDialogflowV2beta1SummarySuggestionSummarySection =
    $SummarySuggestionSummarySection;

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig {
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

  /// The custom pronunciations for the synthesized audio.
  ///
  /// Optional.
  core.List<GoogleCloudDialogflowV2beta1CustomPronunciationParams>?
  pronunciations;

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
  GoogleCloudDialogflowV2beta1VoiceSelectionParams? voice;

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

  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.pronunciations,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(core.Map json_)
    : this(
        effectsProfileId:
            (json_['effectsProfileId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pitch: (json_['pitch'] as core.num?)?.toDouble(),
        pronunciations:
            (json_['pronunciations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1CustomPronunciationParams.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        voice:
            json_.containsKey('voice')
                ? GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromJson(
                  json_['voice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (effectsProfileId != null) 'effectsProfileId': effectsProfileId!,
    if (pitch != null) 'pitch': pitch!,
    if (pronunciations != null) 'pronunciations': pronunciations!,
    if (speakingRate != null) 'speakingRate': speakingRate!,
    if (voice != null) 'voice': voice!,
    if (volumeGainDb != null) 'volumeGainDb': volumeGainDb!,
  };
}

/// A wrapper of repeated TelephonyDtmf digits.
class GoogleCloudDialogflowV2beta1TelephonyDtmfEvents {
  /// A sequence of TelephonyDtmf digits.
  core.List<core.String>? dtmfEvents;

  GoogleCloudDialogflowV2beta1TelephonyDtmfEvents({this.dtmfEvents});

  GoogleCloudDialogflowV2beta1TelephonyDtmfEvents.fromJson(core.Map json_)
    : this(
        dtmfEvents:
            (json_['dtmfEvents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dtmfEvents != null) 'dtmfEvents': dtmfEvents!,
  };
}

/// Represents the natural language text to be processed.
typedef GoogleCloudDialogflowV2beta1TextInput = $TextInput00;

/// Instructs the speech synthesizer on how to generate the output audio
/// content.
class GoogleCloudDialogflowV2beta1TextToSpeechSettings {
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
  core.Map<core.String, GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig>?
  synthesizeSpeechConfigs;

  GoogleCloudDialogflowV2beta1TextToSpeechSettings({
    this.enableTextToSpeech,
    this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  GoogleCloudDialogflowV2beta1TextToSpeechSettings.fromJson(core.Map json_)
    : this(
        enableTextToSpeech: json_['enableTextToSpeech'] as core.bool?,
        outputAudioEncoding: json_['outputAudioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfigs: (json_['synthesizeSpeechConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableTextToSpeech != null) 'enableTextToSpeech': enableTextToSpeech!,
    if (outputAudioEncoding != null)
      'outputAudioEncoding': outputAudioEncoding!,
    if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
    if (synthesizeSpeechConfigs != null)
      'synthesizeSpeechConfigs': synthesizeSpeechConfigs!,
  };
}

/// Represents a call of a specific tool's action with the specified inputs.
typedef GoogleCloudDialogflowV2beta1ToolCall = $ToolCall01;

/// The result of calling a tool's action.
class GoogleCloudDialogflowV2beta1ToolCallResult {
  /// The name of the tool's action associated with this call.
  ///
  /// Optional.
  core.String? action;

  /// Only populated if the response content is utf-8 encoded.
  core.String? content;

  /// Create time of the tool call result.
  ///
  /// Output only.
  core.String? createTime;

  /// The tool call's error.
  GoogleCloudDialogflowV2beta1ToolCallResultError? error;

  /// Only populated if the response content is not utf-8 encoded.
  ///
  /// (by definition byte fields are base64 encoded).
  core.String? rawContent;
  core.List<core.int> get rawContentAsBytes =>
      convert.base64.decode(rawContent!);

  set rawContentAsBytes(core.List<core.int> bytes_) {
    rawContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The tool associated with this call.
  ///
  /// Format: `projects//locations//tools/`.
  ///
  /// Optional.
  core.String? tool;

  GoogleCloudDialogflowV2beta1ToolCallResult({
    this.action,
    this.content,
    this.createTime,
    this.error,
    this.rawContent,
    this.tool,
  });

  GoogleCloudDialogflowV2beta1ToolCallResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        content: json_['content'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        error:
            json_.containsKey('error')
                ? GoogleCloudDialogflowV2beta1ToolCallResultError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rawContent: json_['rawContent'] as core.String?,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (content != null) 'content': content!,
    if (createTime != null) 'createTime': createTime!,
    if (error != null) 'error': error!,
    if (rawContent != null) 'rawContent': rawContent!,
    if (tool != null) 'tool': tool!,
  };
}

/// An error produced by the tool call.
typedef GoogleCloudDialogflowV2beta1ToolCallResultError = $ToolCallResultError;

/// The request message for Agents.TrainAgent.
typedef GoogleCloudDialogflowV2beta1TrainAgentRequest = $Empty;

/// The request message for PhoneNumbers.UndeletePhoneNumber.
typedef GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest = $Empty;

/// Represents a single validation error.
typedef GoogleCloudDialogflowV2beta1ValidationError = $ValidationError;

/// Represents the output of agent validation.
class GoogleCloudDialogflowV2beta1ValidationResult {
  /// Contains all validation errors.
  core.List<GoogleCloudDialogflowV2beta1ValidationError>? validationErrors;

  GoogleCloudDialogflowV2beta1ValidationResult({this.validationErrors});

  GoogleCloudDialogflowV2beta1ValidationResult.fromJson(core.Map json_)
    : this(
        validationErrors:
            (json_['validationErrors'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2beta1ValidationError.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
typedef GoogleCloudDialogflowV2beta1Version = $Version02;

/// Description of which voice to use for speech synthesis.
typedef GoogleCloudDialogflowV2beta1VoiceSelectionParams =
    $VoiceSelectionParams;

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
