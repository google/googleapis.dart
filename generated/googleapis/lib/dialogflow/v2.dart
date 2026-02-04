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
///   - [ProjectsConversationDatasetsResource]
///   - [ProjectsConversationModelsResource]
///     - [ProjectsConversationModelsEvaluationsResource]
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
///     - [ProjectsLocationsConversationDatasetsResource]
///     - [ProjectsLocationsConversationModelsResource]
///       - [ProjectsLocationsConversationModelsEvaluationsResource]
///     - [ProjectsLocationsConversationProfilesResource]
///     - [ProjectsLocationsConversationsResource]
///       - [ProjectsLocationsConversationsMessagesResource]
///       - [ProjectsLocationsConversationsParticipantsResource]
///         - [ProjectsLocationsConversationsParticipantsSuggestionsResource]
///       - [ProjectsLocationsConversationsSuggestionsResource]
///     - [ProjectsLocationsEncryptionSpecResource]
///     - [ProjectsLocationsGeneratorsResource]
///       - [ProjectsLocationsGeneratorsEvaluationsResource]
///     - [ProjectsLocationsKnowledgeBasesResource]
///       - [ProjectsLocationsKnowledgeBasesDocumentsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSipTrunksResource]
///     - [ProjectsLocationsStatelessSuggestionResource]
///     - [ProjectsLocationsSuggestionsResource]
///     - [ProjectsLocationsToolsResource]
///   - [ProjectsOperationsResource]
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
  ProjectsConversationDatasetsResource get conversationDatasets =>
      ProjectsConversationDatasetsResource(_requester);
  ProjectsConversationModelsResource get conversationModels =>
      ProjectsConversationModelsResource(_requester);
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
  ProjectsSuggestionsResource get suggestions =>
      ProjectsSuggestionsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:export';

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

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:import';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:restore';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:train';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/fulfillment$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [languageCode] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [environmentId] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'environmentId': ?environmentId == null ? null : [environmentId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EnvironmentHistory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowLoadToDraftAndDiscardChanges':
          ?allowLoadToDraftAndDiscardChanges == null
          ? null
          : ['${allowLoadToDraftAndDiscardChanges}'],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEnvironmentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsIntentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
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

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentIntentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentKnowledgeBasesDocumentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

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

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsEntityTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAgentVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/agent$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsAnswerRecordsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationDatasetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationDatasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationDataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationDataset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationDataset.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationDatasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importConversationData(
    GoogleCloudDialogflowV2ImportConversationDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + ':importConversationData';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListConversationDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationDatasetsResponse> list(
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationDatasets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationDatasetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationModelsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationModelsEvaluationsResource get evaluations =>
      ProjectsConversationModelsEvaluationsResource(_requester);

  ProjectsConversationModelsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDialogflowV2ConversationModel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversationModels';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationModels/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> deploy(
    GoogleCloudDialogflowV2DeployConversationModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':deploy';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationModels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationModel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListConversationModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationModelsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversationModels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationModelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> undeploy(
    GoogleCloudDialogflowV2UndeployConversationModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undeploy';

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

class ProjectsConversationModelsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationModelsEvaluationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversationModels/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationModelEvaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationModelEvaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationModelEvaluation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationModels/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse>
  list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - null
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
    GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - null
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
    GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':complete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [conversationId] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'conversationId': ?conversationId == null ? null : [conversationId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsMessagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListMessagesResponse.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [participant] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsParticipantsSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:suggestArticles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse>
  suggestKnowledgeAssist(
    GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestKnowledgeAssist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestSmartRepliesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestSmartRepliesResponse>
  suggestSmartReplies(
    GoogleCloudDialogflowV2SuggestSmartRepliesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestSmartReplies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestSmartRepliesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConversationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsConversationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2GenerateSuggestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GenerateSuggestionsResponse> generate(
    GoogleCloudDialogflowV2GenerateSuggestionsRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$conversation') + '/suggestions:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GenerateSuggestionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchKnowledgeResponse> searchKnowledge(
    GoogleCloudDialogflowV2SearchKnowledgeRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern `^projects/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2SuggestConversationSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestConversationSummaryResponse>
  suggestConversationSummary(
    GoogleCloudDialogflowV2SuggestConversationSummaryRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:suggestConversationSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestConversationSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsGeneratorsResource {
  final commons.ApiRequester _requester;

  ProjectsGeneratorsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [generatorId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Generator> create(
    GoogleCloudDialogflowV2Generator request,
    core.String parent, {
    core.String? generatorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'generatorId': ?generatorId == null ? null : [generatorId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListGeneratorsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListGeneratorsResponse.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsKnowledgeBasesDocumentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowV2ExportDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':export';

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

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    GoogleCloudDialogflowV2ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

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
  ProjectsLocationsConversationDatasetsResource get conversationDatasets =>
      ProjectsLocationsConversationDatasetsResource(_requester);
  ProjectsLocationsConversationModelsResource get conversationModels =>
      ProjectsLocationsConversationModelsResource(_requester);
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
  ProjectsLocationsSipTrunksResource get sipTrunks =>
      ProjectsLocationsSipTrunksResource(_requester);
  ProjectsLocationsStatelessSuggestionResource get statelessSuggestion =>
      ProjectsLocationsStatelessSuggestionResource(_requester);
  ProjectsLocationsSuggestionsResource get suggestions =>
      ProjectsLocationsSuggestionsResource(_requester);
  ProjectsLocationsToolsResource get tools =>
      ProjectsLocationsToolsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/encryptionSpec$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2EncryptionSpec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2EncryptionSpec> getEncryptionSpec(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EncryptionSpec.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - null
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Agent.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:export';

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

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/agent/validationResult';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ValidationResult.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:import';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:restore';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/agent:train';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/fulfillment$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Fulfillment.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [languageCode] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/entityTypes/\[^/\]+$`.
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesEntitiesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchCreate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/entities:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [environmentId] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'environmentId': ?environmentId == null ? null : [environmentId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2EnvironmentHistory.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [allowLoadToDraftAndDiscardChanges] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowLoadToDraftAndDiscardChanges':
          ?allowLoadToDraftAndDiscardChanges == null
          ? null
          : ['${allowLoadToDraftAndDiscardChanges}'],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Environment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEnvironmentsIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsIntentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
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

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/environments/\[^/\]+/users/\[^/\]+/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentIntentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentIntentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchDelete';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/intents:batchUpdate';

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/intents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/intents/\[^/\]+$`.
  ///
  /// [intentView] - null
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  ///
  /// [languageCode] - null
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'intentView': ?intentView == null ? null : [intentView],
      'languageCode': ?languageCode == null ? null : [languageCode],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Intent.fromJson(
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

  /// Request parameters:
  ///
  /// [parent] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$session') + ':detectIntent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentSessionsContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsContextsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListContextsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Context.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentSessionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsEntityTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/sessions/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SessionEntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAgentVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/agent$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/agent/versions/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAnswerRecordsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnswerRecordsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/answerRecords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/answerRecords/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2AnswerRecord.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationDatasetsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDialogflowV2ConversationDataset request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationDatasets';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationDatasets/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationDatasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationDataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationDataset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationDataset.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationDatasets/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importConversationData(
    GoogleCloudDialogflowV2ImportConversationDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + ':importConversationData';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListConversationDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationDatasetsResponse> list(
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationDatasets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationDatasetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationModelsEvaluationsResource get evaluations =>
      ProjectsLocationsConversationModelsEvaluationsResource(_requester);

  ProjectsLocationsConversationModelsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDialogflowV2ConversationModel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversationModels';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> deploy(
    GoogleCloudDialogflowV2DeployConversationModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':deploy';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationModel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationModel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationModel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListConversationModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationModelsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversationModels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationModelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> undeploy(
    GoogleCloudDialogflowV2UndeployConversationModelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undeploy';

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

class ProjectsLocationsConversationModelsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationModelsEvaluationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
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
    GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/evaluations';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ConversationModelEvaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ConversationModelEvaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationModelEvaluation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationModels/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse>
  list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - null
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
    GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/conversationProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversationProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ConversationProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversationProfile] - null
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
    GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest request,
    core.String conversationProfile, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':complete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [conversationId] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'conversationId': ?conversationId == null ? null : [conversationId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2IngestContextReferencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2IngestContextReferencesResponse>
  ingestContextReferences(
    GoogleCloudDialogflowV2IngestContextReferencesRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$conversation') +
        ':ingestContextReferences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2IngestContextReferencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsMessagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListMessagesResponse.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [participant] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$participant') + ':analyzeContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Participant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsParticipantsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsParticipantsSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:suggestArticles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestFaqAnswers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse>
  suggestKnowledgeAssist(
    GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestKnowledgeAssist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SuggestSmartRepliesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestSmartRepliesResponse>
  suggestSmartReplies(
    GoogleCloudDialogflowV2SuggestSmartRepliesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:suggestSmartReplies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestSmartRepliesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConversationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2GenerateSuggestionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GenerateSuggestionsResponse> generate(
    GoogleCloudDialogflowV2GenerateSuggestionsRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$conversation') + '/suggestions:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GenerateSuggestionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchKnowledgeResponse> searchKnowledge(
    GoogleCloudDialogflowV2SearchKnowledgeRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [conversation] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2SuggestConversationSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SuggestConversationSummaryResponse>
  suggestConversationSummary(
    GoogleCloudDialogflowV2SuggestConversationSummaryRequest request,
    core.String conversation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$conversation') +
        '/suggestions:suggestConversationSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SuggestConversationSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsEncryptionSpecResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEncryptionSpecResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    GoogleCloudDialogflowV2InitializeEncryptionSpecRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':initialize';

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

  ProjectsLocationsGeneratorsEvaluationsResource get evaluations =>
      ProjectsLocationsGeneratorsEvaluationsResource(_requester);

  ProjectsLocationsGeneratorsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [generatorId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Generator> create(
    GoogleCloudDialogflowV2Generator request,
    core.String parent, {
    core.String? generatorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'generatorId': ?generatorId == null ? null : [generatorId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Generator> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListGeneratorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListGeneratorsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/generators';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListGeneratorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Generator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Generator> patch(
    GoogleCloudDialogflowV2Generator request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Generator.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGeneratorsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGeneratorsEvaluationsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
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
    GoogleCloudDialogflowV2GeneratorEvaluation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/evaluations';

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

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+/evaluations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2GeneratorEvaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GeneratorEvaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GeneratorEvaluation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/generators/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse.fromJson(
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [force] - null
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/knowledgeBases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2KnowledgeBase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsKnowledgeBasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKnowledgeBasesDocumentsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

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

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
  async.Future<GoogleLongrunningOperation> export(
    GoogleCloudDialogflowV2ExportDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':export';

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

  /// Request parameters:
  ///
  /// [name] - null
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
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
    GoogleCloudDialogflowV2ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/knowledgeBases/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [updateMask] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reload';

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

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [returnPartialSuccess] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsSipTrunksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSipTrunksResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SipTrunk> create(
    GoogleCloudDialogflowV2SipTrunk request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/sipTrunks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sipTrunks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SipTrunk> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListSipTrunksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListSipTrunksResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/sipTrunks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListSipTrunksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sipTrunks/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SipTrunk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SipTrunk> patch(
    GoogleCloudDialogflowV2SipTrunk request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SipTrunk.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsStatelessSuggestionResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStatelessSuggestionResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse>
  generate(
    GoogleCloudDialogflowV2GenerateStatelessSuggestionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/statelessSuggestion:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2GenerateStatelessSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GenerateStatelessSummaryResponse>
  generateStatelessSummary(
    GoogleCloudDialogflowV2GenerateStatelessSummaryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:generateStatelessSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GenerateStatelessSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchKnowledgeResponse> searchKnowledge(
    GoogleCloudDialogflowV2SearchKnowledgeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsToolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsToolsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [toolId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Tool> create(
    GoogleCloudDialogflowV2Tool request,
    core.String parent, {
    core.String? toolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'toolId': ?toolId == null ? null : [toolId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tools/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Tool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2ListToolsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2Tool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2Tool> patch(
    GoogleCloudDialogflowV2Tool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2Tool.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [returnPartialSuccess] - null
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsSuggestionsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDialogflowV2GenerateStatelessSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2GenerateStatelessSummaryResponse>
  generateStatelessSummary(
    GoogleCloudDialogflowV2GenerateStatelessSummaryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$parent') +
        '/suggestions:generateStatelessSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2GenerateStatelessSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDialogflowV2SearchKnowledgeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDialogflowV2SearchKnowledgeResponse> searchKnowledge(
    GoogleCloudDialogflowV2SearchKnowledgeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/suggestions:searchKnowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDialogflowV2SearchKnowledgeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class GoogleCloudDialogflowV2Agent {
  ///
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED"
  /// - "API_VERSION_V1"
  /// - "API_VERSION_V2"
  /// - "API_VERSION_V2_BETA_1"
  core.String? apiVersion;
  core.String? avatarUri;
  core.double? classificationThreshold;
  core.String? defaultLanguageCode;
  core.String? description;
  core.String? displayName;
  core.bool? enableLogging;

  ///
  /// Possible string values are:
  /// - "MATCH_MODE_UNSPECIFIED"
  /// - "MATCH_MODE_HYBRID"
  /// - "MATCH_MODE_ML_ONLY"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? matchMode;
  core.String? parent;
  core.List<core.String>? supportedLanguageCodes;

  ///
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED"
  /// - "TIER_STANDARD"
  /// - "TIER_ENTERPRISE"
  /// - "TIER_ENTERPRISE_PLUS"
  core.String? tier;
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

  GoogleCloudDialogflowV2Agent.fromJson(core.Map json_)
    : this(
        apiVersion: json_['apiVersion'] as core.String?,
        avatarUri: json_['avatarUri'] as core.String?,
        classificationThreshold: (json_['classificationThreshold'] as core.num?)
            ?.toDouble(),
        defaultLanguageCode: json_['defaultLanguageCode'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableLogging: json_['enableLogging'] as core.bool?,
        matchMode: json_['matchMode'] as core.String?,
        parent: json_['parent'] as core.String?,
        supportedLanguageCodes: (json_['supportedLanguageCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tier: json_['tier'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiVersion = this.apiVersion;
    final avatarUri = this.avatarUri;
    final classificationThreshold = this.classificationThreshold;
    final defaultLanguageCode = this.defaultLanguageCode;
    final description = this.description;
    final displayName = this.displayName;
    final enableLogging = this.enableLogging;
    final matchMode = this.matchMode;
    final parent = this.parent;
    final supportedLanguageCodes = this.supportedLanguageCodes;
    final tier = this.tier;
    final timeZone = this.timeZone;
    return {
      'apiVersion': ?apiVersion,
      'avatarUri': ?avatarUri,
      'classificationThreshold': ?classificationThreshold,
      'defaultLanguageCode': ?defaultLanguageCode,
      'description': ?description,
      'displayName': ?displayName,
      'enableLogging': ?enableLogging,
      'matchMode': ?matchMode,
      'parent': ?parent,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'tier': ?tier,
      'timeZone': ?timeZone,
    };
  }
}

class GoogleCloudDialogflowV2AgentAssistantFeedback {
  ///
  /// Possible string values are:
  /// - "ANSWER_RELEVANCE_UNSPECIFIED"
  /// - "IRRELEVANT"
  /// - "RELEVANT"
  core.String? answerRelevance;

  ///
  /// Possible string values are:
  /// - "DOCUMENT_CORRECTNESS_UNSPECIFIED"
  /// - "INCORRECT"
  /// - "CORRECT"
  core.String? documentCorrectness;

  ///
  /// Possible string values are:
  /// - "DOCUMENT_EFFICIENCY_UNSPECIFIED"
  /// - "INEFFICIENT"
  /// - "EFFICIENT"
  core.String? documentEfficiency;
  GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback?
  knowledgeAssistFeedback;
  GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback?
  knowledgeSearchFeedback;
  GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback?
  summarizationFeedback;

  GoogleCloudDialogflowV2AgentAssistantFeedback({
    this.answerRelevance,
    this.documentCorrectness,
    this.documentEfficiency,
    this.knowledgeAssistFeedback,
    this.knowledgeSearchFeedback,
    this.summarizationFeedback,
  });

  GoogleCloudDialogflowV2AgentAssistantFeedback.fromJson(core.Map json_)
    : this(
        answerRelevance: json_['answerRelevance'] as core.String?,
        documentCorrectness: json_['documentCorrectness'] as core.String?,
        documentEfficiency: json_['documentEfficiency'] as core.String?,
        knowledgeAssistFeedback: json_.containsKey('knowledgeAssistFeedback')
            ? GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback.fromJson(
                json_['knowledgeAssistFeedback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeSearchFeedback: json_.containsKey('knowledgeSearchFeedback')
            ? GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback.fromJson(
                json_['knowledgeSearchFeedback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        summarizationFeedback: json_.containsKey('summarizationFeedback')
            ? GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback.fromJson(
                json_['summarizationFeedback']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRelevance = this.answerRelevance;
    final documentCorrectness = this.documentCorrectness;
    final documentEfficiency = this.documentEfficiency;
    final knowledgeAssistFeedback = this.knowledgeAssistFeedback;
    final knowledgeSearchFeedback = this.knowledgeSearchFeedback;
    final summarizationFeedback = this.summarizationFeedback;
    return {
      'answerRelevance': ?answerRelevance,
      'documentCorrectness': ?documentCorrectness,
      'documentEfficiency': ?documentEfficiency,
      'knowledgeAssistFeedback': ?knowledgeAssistFeedback,
      'knowledgeSearchFeedback': ?knowledgeSearchFeedback,
      'summarizationFeedback': ?summarizationFeedback,
    };
  }
}

typedef GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback =
    $Feedback;
typedef GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback =
    $Feedback;

class GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback {
  core.String? startTime;
  core.String? submitTime;
  core.String? summaryText;
  core.Map<core.String, core.String>? textSections;

  GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback({
    this.startTime,
    this.submitTime,
    this.summaryText,
    this.textSections,
  });

  GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback.fromJson(
    core.Map json_,
  ) : this(
        startTime: json_['startTime'] as core.String?,
        submitTime: json_['submitTime'] as core.String?,
        summaryText: json_['summaryText'] as core.String?,
        textSections:
            (json_['textSections'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final startTime = this.startTime;
    final submitTime = this.submitTime;
    final summaryText = this.summaryText;
    final textSections = this.textSections;
    return {
      'startTime': ?startTime,
      'submitTime': ?submitTime,
      'summaryText': ?summaryText,
      'textSections': ?textSections,
    };
  }
}

class GoogleCloudDialogflowV2AgentAssistantRecord {
  GoogleCloudDialogflowV2ArticleAnswer? articleSuggestionAnswer;
  GoogleCloudDialogflowV2DialogflowAssistAnswer? dialogflowAssistAnswer;
  GoogleCloudDialogflowV2FaqAnswer? faqAnswer;
  GoogleCloudDialogflowV2GeneratorSuggestion? generatorSuggestion;

  GoogleCloudDialogflowV2AgentAssistantRecord({
    this.articleSuggestionAnswer,
    this.dialogflowAssistAnswer,
    this.faqAnswer,
    this.generatorSuggestion,
  });

  GoogleCloudDialogflowV2AgentAssistantRecord.fromJson(core.Map json_)
    : this(
        articleSuggestionAnswer: json_.containsKey('articleSuggestionAnswer')
            ? GoogleCloudDialogflowV2ArticleAnswer.fromJson(
                json_['articleSuggestionAnswer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dialogflowAssistAnswer: json_.containsKey('dialogflowAssistAnswer')
            ? GoogleCloudDialogflowV2DialogflowAssistAnswer.fromJson(
                json_['dialogflowAssistAnswer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        faqAnswer: json_.containsKey('faqAnswer')
            ? GoogleCloudDialogflowV2FaqAnswer.fromJson(
                json_['faqAnswer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        generatorSuggestion: json_.containsKey('generatorSuggestion')
            ? GoogleCloudDialogflowV2GeneratorSuggestion.fromJson(
                json_['generatorSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final articleSuggestionAnswer = this.articleSuggestionAnswer;
    final dialogflowAssistAnswer = this.dialogflowAssistAnswer;
    final faqAnswer = this.faqAnswer;
    final generatorSuggestion = this.generatorSuggestion;
    return {
      'articleSuggestionAnswer': ?articleSuggestionAnswer,
      'dialogflowAssistAnswer': ?dialogflowAssistAnswer,
      'faqAnswer': ?faqAnswer,
      'generatorSuggestion': ?generatorSuggestion,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingContext {
  core.List<GoogleCloudDialogflowV2AgentCoachingInstruction>? instructions;
  core.String? outputLanguageCode;
  core.String? overarchingGuidance;
  core.String? version;

  GoogleCloudDialogflowV2AgentCoachingContext({
    this.instructions,
    this.outputLanguageCode,
    this.overarchingGuidance,
    this.version,
  });

  GoogleCloudDialogflowV2AgentCoachingContext.fromJson(core.Map json_)
    : this(
        instructions: (json_['instructions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingInstruction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        outputLanguageCode: json_['outputLanguageCode'] as core.String?,
        overarchingGuidance: json_['overarchingGuidance'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instructions = this.instructions;
    final outputLanguageCode = this.outputLanguageCode;
    final overarchingGuidance = this.overarchingGuidance;
    final version = this.version;
    return {
      'instructions': ?instructions,
      'outputLanguageCode': ?outputLanguageCode,
      'overarchingGuidance': ?overarchingGuidance,
      'version': ?version,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingInstruction {
  core.String? agentAction;
  core.String? condition;
  core.String? displayDetails;
  core.String? displayName;
  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult?
  duplicateCheckResult;
  core.String? systemAction;

  ///
  /// Possible string values are:
  /// - "TRIGGER_EVENT_UNSPECIFIED"
  /// - "END_OF_UTTERANCE"
  /// - "MANUAL_CALL"
  /// - "CUSTOMER_MESSAGE"
  /// - "AGENT_MESSAGE"
  /// - "TOOL_CALL_COMPLETION"
  core.String? triggeringEvent;

  GoogleCloudDialogflowV2AgentCoachingInstruction({
    this.agentAction,
    this.condition,
    this.displayDetails,
    this.displayName,
    this.duplicateCheckResult,
    this.systemAction,
    this.triggeringEvent,
  });

  GoogleCloudDialogflowV2AgentCoachingInstruction.fromJson(core.Map json_)
    : this(
        agentAction: json_['agentAction'] as core.String?,
        condition: json_['condition'] as core.String?,
        displayDetails: json_['displayDetails'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        duplicateCheckResult: json_.containsKey('duplicateCheckResult')
            ? GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult.fromJson(
                json_['duplicateCheckResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        systemAction: json_['systemAction'] as core.String?,
        triggeringEvent: json_['triggeringEvent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentAction = this.agentAction;
    final condition = this.condition;
    final displayDetails = this.displayDetails;
    final displayName = this.displayName;
    final duplicateCheckResult = this.duplicateCheckResult;
    final systemAction = this.systemAction;
    final triggeringEvent = this.triggeringEvent;
    return {
      'agentAction': ?agentAction,
      'condition': ?condition,
      'displayDetails': ?displayDetails,
      'displayName': ?displayName,
      'duplicateCheckResult': ?duplicateCheckResult,
      'systemAction': ?systemAction,
      'triggeringEvent': ?triggeringEvent,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult {
  core.List<
    GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion
  >?
  duplicateSuggestions;

  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult({
    this.duplicateSuggestions,
  });

  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResult.fromJson(
    core.Map json_,
  ) : this(
        duplicateSuggestions: (json_['duplicateSuggestions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duplicateSuggestions = this.duplicateSuggestions;
    return {'duplicateSuggestions': ?duplicateSuggestions};
  }
}

class GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion {
  core.String? answerRecord;
  core.double? similarityScore;
  core.int? suggestionIndex;

  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion({
    this.answerRecord,
    this.similarityScore,
    this.suggestionIndex,
  });

  GoogleCloudDialogflowV2AgentCoachingInstructionDuplicateCheckResultDuplicateSuggestion.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        similarityScore: (json_['similarityScore'] as core.num?)?.toDouble(),
        suggestionIndex: json_['suggestionIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final similarityScore = this.similarityScore;
    final suggestionIndex = this.suggestionIndex;
    return {
      'answerRecord': ?answerRecord,
      'similarityScore': ?similarityScore,
      'suggestionIndex': ?suggestionIndex,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestion {
  core.List<
    GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion
  >?
  agentActionSuggestions;
  core.List<GoogleCloudDialogflowV2AgentCoachingInstruction>?
  applicableInstructions;
  core.List<GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse>?
  sampleResponses;

  GoogleCloudDialogflowV2AgentCoachingSuggestion({
    this.agentActionSuggestions,
    this.applicableInstructions,
    this.sampleResponses,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestion.fromJson(core.Map json_)
    : this(
        agentActionSuggestions: (json_['agentActionSuggestions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        applicableInstructions: (json_['applicableInstructions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingInstruction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        sampleResponses: (json_['sampleResponses'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentActionSuggestions = this.agentActionSuggestions;
    final applicableInstructions = this.applicableInstructions;
    final sampleResponses = this.sampleResponses;
    return {
      'agentActionSuggestions': ?agentActionSuggestions,
      'applicableInstructions': ?applicableInstructions,
      'sampleResponses': ?sampleResponses,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion {
  core.String? agentAction;
  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult?
  duplicateCheckResult;
  GoogleCloudDialogflowV2AgentCoachingSuggestionSources? sources;

  GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion({
    this.agentAction,
    this.duplicateCheckResult,
    this.sources,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestionAgentActionSuggestion.fromJson(
    core.Map json_,
  ) : this(
        agentAction: json_['agentAction'] as core.String?,
        duplicateCheckResult: json_.containsKey('duplicateCheckResult')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult.fromJson(
                json_['duplicateCheckResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sources: json_.containsKey('sources')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestionSources.fromJson(
                json_['sources'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentAction = this.agentAction;
    final duplicateCheckResult = this.duplicateCheckResult;
    final sources = this.sources;
    return {
      'agentAction': ?agentAction,
      'duplicateCheckResult': ?duplicateCheckResult,
      'sources': ?sources,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult {
  core.List<
    GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion
  >?
  duplicateSuggestions;

  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult({
    this.duplicateSuggestions,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult.fromJson(
    core.Map json_,
  ) : this(
        duplicateSuggestions: (json_['duplicateSuggestions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duplicateSuggestions = this.duplicateSuggestions;
    return {'duplicateSuggestions': ?duplicateSuggestions};
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion {
  core.String? answerRecord;
  core.double? similarityScore;
  GoogleCloudDialogflowV2AgentCoachingSuggestionSources? sources;
  core.int? suggestionIndex;

  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion({
    this.answerRecord,
    this.similarityScore,
    this.sources,
    this.suggestionIndex,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResultDuplicateSuggestion.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        similarityScore: (json_['similarityScore'] as core.num?)?.toDouble(),
        sources: json_.containsKey('sources')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestionSources.fromJson(
                json_['sources'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestionIndex: json_['suggestionIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final similarityScore = this.similarityScore;
    final sources = this.sources;
    final suggestionIndex = this.suggestionIndex;
    return {
      'answerRecord': ?answerRecord,
      'similarityScore': ?similarityScore,
      'sources': ?sources,
      'suggestionIndex': ?suggestionIndex,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse {
  GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult?
  duplicateCheckResult;
  core.String? responseText;
  GoogleCloudDialogflowV2AgentCoachingSuggestionSources? sources;

  GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse({
    this.duplicateCheckResult,
    this.responseText,
    this.sources,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestionSampleResponse.fromJson(
    core.Map json_,
  ) : this(
        duplicateCheckResult: json_.containsKey('duplicateCheckResult')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestionDuplicateCheckResult.fromJson(
                json_['duplicateCheckResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseText: json_['responseText'] as core.String?,
        sources: json_.containsKey('sources')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestionSources.fromJson(
                json_['sources'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duplicateCheckResult = this.duplicateCheckResult;
    final responseText = this.responseText;
    final sources = this.sources;
    return {
      'duplicateCheckResult': ?duplicateCheckResult,
      'responseText': ?responseText,
      'sources': ?sources,
    };
  }
}

class GoogleCloudDialogflowV2AgentCoachingSuggestionSources {
  core.List<core.int>? instructionIndexes;

  GoogleCloudDialogflowV2AgentCoachingSuggestionSources({
    this.instructionIndexes,
  });

  GoogleCloudDialogflowV2AgentCoachingSuggestionSources.fromJson(core.Map json_)
    : this(
        instructionIndexes: (json_['instructionIndexes'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instructionIndexes = this.instructionIndexes;
    return {'instructionIndexes': ?instructionIndexes};
  }
}

class GoogleCloudDialogflowV2AnalyzeContentRequest {
  GoogleCloudDialogflowV2AssistQueryParameters? assistQueryParams;
  GoogleCloudDialogflowV2AudioInput? audioInput;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? cxParameters;
  GoogleCloudDialogflowV2EventInput? eventInput;
  GoogleCloudDialogflowV2QueryParameters? queryParams;
  GoogleCloudDialogflowV2OutputAudioConfig? replyAudioConfig;
  core.String? requestId;
  GoogleCloudDialogflowV2SuggestionInput? suggestionInput;
  GoogleCloudDialogflowV2TextInput? textInput;

  GoogleCloudDialogflowV2AnalyzeContentRequest({
    this.assistQueryParams,
    this.audioInput,
    this.cxParameters,
    this.eventInput,
    this.queryParams,
    this.replyAudioConfig,
    this.requestId,
    this.suggestionInput,
    this.textInput,
  });

  GoogleCloudDialogflowV2AnalyzeContentRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams: json_.containsKey('assistQueryParams')
            ? GoogleCloudDialogflowV2AssistQueryParameters.fromJson(
                json_['assistQueryParams']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        audioInput: json_.containsKey('audioInput')
            ? GoogleCloudDialogflowV2AudioInput.fromJson(
                json_['audioInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cxParameters: json_.containsKey('cxParameters')
            ? json_['cxParameters'] as core.Map<core.String, core.dynamic>
            : null,
        eventInput: json_.containsKey('eventInput')
            ? GoogleCloudDialogflowV2EventInput.fromJson(
                json_['eventInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryParams: json_.containsKey('queryParams')
            ? GoogleCloudDialogflowV2QueryParameters.fromJson(
                json_['queryParams'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replyAudioConfig: json_.containsKey('replyAudioConfig')
            ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                json_['replyAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestId: json_['requestId'] as core.String?,
        suggestionInput: json_.containsKey('suggestionInput')
            ? GoogleCloudDialogflowV2SuggestionInput.fromJson(
                json_['suggestionInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textInput: json_.containsKey('textInput')
            ? GoogleCloudDialogflowV2TextInput.fromJson(
                json_['textInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assistQueryParams = this.assistQueryParams;
    final audioInput = this.audioInput;
    final cxParameters = this.cxParameters;
    final eventInput = this.eventInput;
    final queryParams = this.queryParams;
    final replyAudioConfig = this.replyAudioConfig;
    final requestId = this.requestId;
    final suggestionInput = this.suggestionInput;
    final textInput = this.textInput;
    return {
      'assistQueryParams': ?assistQueryParams,
      'audioInput': ?audioInput,
      'cxParameters': ?cxParameters,
      'eventInput': ?eventInput,
      'queryParams': ?queryParams,
      'replyAudioConfig': ?replyAudioConfig,
      'requestId': ?requestId,
      'suggestionInput': ?suggestionInput,
      'textInput': ?textInput,
    };
  }
}

class GoogleCloudDialogflowV2AnalyzeContentResponse {
  GoogleCloudDialogflowV2AutomatedAgentReply? automatedAgentReply;
  GoogleCloudDialogflowV2DtmfParameters? dtmfParameters;
  core.List<GoogleCloudDialogflowV2SuggestionResult>? endUserSuggestionResults;
  core.List<GoogleCloudDialogflowV2SuggestionResult>?
  humanAgentSuggestionResults;
  GoogleCloudDialogflowV2Message? message;
  GoogleCloudDialogflowV2OutputAudio? replyAudio;
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

  GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(core.Map json_)
    : this(
        automatedAgentReply: json_.containsKey('automatedAgentReply')
            ? GoogleCloudDialogflowV2AutomatedAgentReply.fromJson(
                json_['automatedAgentReply']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dtmfParameters: json_.containsKey('dtmfParameters')
            ? GoogleCloudDialogflowV2DtmfParameters.fromJson(
                json_['dtmfParameters'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endUserSuggestionResults:
            (json_['endUserSuggestionResults'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2SuggestionResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        humanAgentSuggestionResults:
            (json_['humanAgentSuggestionResults'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDialogflowV2SuggestionResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_.containsKey('message')
            ? GoogleCloudDialogflowV2Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replyAudio: json_.containsKey('replyAudio')
            ? GoogleCloudDialogflowV2OutputAudio.fromJson(
                json_['replyAudio'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replyText: json_['replyText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automatedAgentReply = this.automatedAgentReply;
    final dtmfParameters = this.dtmfParameters;
    final endUserSuggestionResults = this.endUserSuggestionResults;
    final humanAgentSuggestionResults = this.humanAgentSuggestionResults;
    final message = this.message;
    final replyAudio = this.replyAudio;
    final replyText = this.replyText;
    return {
      'automatedAgentReply': ?automatedAgentReply,
      'dtmfParameters': ?dtmfParameters,
      'endUserSuggestionResults': ?endUserSuggestionResults,
      'humanAgentSuggestionResults': ?humanAgentSuggestionResults,
      'message': ?message,
      'replyAudio': ?replyAudio,
      'replyText': ?replyText,
    };
  }
}

class GoogleCloudDialogflowV2AnnotatedMessagePart {
  core.String? entityType;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? formattedValue;
  core.String? text;

  GoogleCloudDialogflowV2AnnotatedMessagePart({
    this.entityType,
    this.formattedValue,
    this.text,
  });

  GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(core.Map json_)
    : this(
        entityType: json_['entityType'] as core.String?,
        formattedValue: json_['formattedValue'],
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityType = this.entityType;
    final formattedValue = this.formattedValue;
    final text = this.text;
    return {
      'entityType': ?entityType,
      'formattedValue': ?formattedValue,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowV2AnswerFeedback {
  GoogleCloudDialogflowV2AgentAssistantFeedback? agentAssistantDetailFeedback;
  core.String? clickTime;
  core.bool? clicked;

  ///
  /// Possible string values are:
  /// - "CORRECTNESS_LEVEL_UNSPECIFIED"
  /// - "NOT_CORRECT"
  /// - "PARTIALLY_CORRECT"
  /// - "FULLY_CORRECT"
  core.String? correctnessLevel;
  core.String? displayTime;
  core.bool? displayed;

  GoogleCloudDialogflowV2AnswerFeedback({
    this.agentAssistantDetailFeedback,
    this.clickTime,
    this.clicked,
    this.correctnessLevel,
    this.displayTime,
    this.displayed,
  });

  GoogleCloudDialogflowV2AnswerFeedback.fromJson(core.Map json_)
    : this(
        agentAssistantDetailFeedback:
            json_.containsKey('agentAssistantDetailFeedback')
            ? GoogleCloudDialogflowV2AgentAssistantFeedback.fromJson(
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

  core.Map<core.String, core.dynamic> toJson() {
    final agentAssistantDetailFeedback = this.agentAssistantDetailFeedback;
    final clickTime = this.clickTime;
    final clicked = this.clicked;
    final correctnessLevel = this.correctnessLevel;
    final displayTime = this.displayTime;
    final displayed = this.displayed;
    return {
      'agentAssistantDetailFeedback': ?agentAssistantDetailFeedback,
      'clickTime': ?clickTime,
      'clicked': ?clicked,
      'correctnessLevel': ?correctnessLevel,
      'displayTime': ?displayTime,
      'displayed': ?displayed,
    };
  }
}

class GoogleCloudDialogflowV2AnswerRecord {
  GoogleCloudDialogflowV2AgentAssistantRecord? agentAssistantRecord;
  GoogleCloudDialogflowV2AnswerFeedback? answerFeedback;
  core.String? name;

  GoogleCloudDialogflowV2AnswerRecord({
    this.agentAssistantRecord,
    this.answerFeedback,
    this.name,
  });

  GoogleCloudDialogflowV2AnswerRecord.fromJson(core.Map json_)
    : this(
        agentAssistantRecord: json_.containsKey('agentAssistantRecord')
            ? GoogleCloudDialogflowV2AgentAssistantRecord.fromJson(
                json_['agentAssistantRecord']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        answerFeedback: json_.containsKey('answerFeedback')
            ? GoogleCloudDialogflowV2AnswerFeedback.fromJson(
                json_['answerFeedback'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentAssistantRecord = this.agentAssistantRecord;
    final answerFeedback = this.answerFeedback;
    final name = this.name;
    return {
      'agentAssistantRecord': ?agentAssistantRecord,
      'answerFeedback': ?answerFeedback,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2ArticleAnswer {
  core.String? answerRecord;
  core.double? confidence;
  core.Map<core.String, core.String>? metadata;
  core.List<core.String>? snippets;
  core.String? title;
  core.String? uri;

  GoogleCloudDialogflowV2ArticleAnswer({
    this.answerRecord,
    this.confidence,
    this.metadata,
    this.snippets,
    this.title,
    this.uri,
  });

  GoogleCloudDialogflowV2ArticleAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        snippets: (json_['snippets'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final confidence = this.confidence;
    final metadata = this.metadata;
    final snippets = this.snippets;
    final title = this.title;
    final uri = this.uri;
    return {
      'answerRecord': ?answerRecord,
      'confidence': ?confidence,
      'metadata': ?metadata,
      'snippets': ?snippets,
      'title': ?title,
      'uri': ?uri,
    };
  }
}

typedef GoogleCloudDialogflowV2ArticleSuggestionModelMetadata = $ModelMetadata;

class GoogleCloudDialogflowV2AssistQueryParameters {
  core.Map<core.String, core.String>? documentsMetadataFilters;

  GoogleCloudDialogflowV2AssistQueryParameters({this.documentsMetadataFilters});

  GoogleCloudDialogflowV2AssistQueryParameters.fromJson(core.Map json_)
    : this(
        documentsMetadataFilters:
            (json_['documentsMetadataFilters']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentsMetadataFilters = this.documentsMetadataFilters;
    return {'documentsMetadataFilters': ?documentsMetadataFilters};
  }
}

class GoogleCloudDialogflowV2AudioInput {
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2InputAudioConfig? config;

  GoogleCloudDialogflowV2AudioInput({this.audio, this.config});

  GoogleCloudDialogflowV2AudioInput.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config: json_.containsKey('config')
            ? GoogleCloudDialogflowV2InputAudioConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final config = this.config;
    return {'audio': ?audio, 'config': ?config};
  }
}

class GoogleCloudDialogflowV2AutomatedAgentConfig {
  core.String? agent;
  core.String? sessionTtl;

  GoogleCloudDialogflowV2AutomatedAgentConfig({this.agent, this.sessionTtl});

  GoogleCloudDialogflowV2AutomatedAgentConfig.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        sessionTtl: json_['sessionTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final sessionTtl = this.sessionTtl;
    return {'agent': ?agent, 'sessionTtl': ?sessionTtl};
  }
}

class GoogleCloudDialogflowV2AutomatedAgentReply {
  core.bool? allowCancellation;

  ///
  /// Possible string values are:
  /// - "AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED"
  /// - "PARTIAL"
  /// - "FINAL"
  core.String? automatedAgentReplyType;
  core.String? cxCurrentPage;
  GoogleCloudDialogflowV2DetectIntentResponse? detectIntentResponse;

  GoogleCloudDialogflowV2AutomatedAgentReply({
    this.allowCancellation,
    this.automatedAgentReplyType,
    this.cxCurrentPage,
    this.detectIntentResponse,
  });

  GoogleCloudDialogflowV2AutomatedAgentReply.fromJson(core.Map json_)
    : this(
        allowCancellation: json_['allowCancellation'] as core.bool?,
        automatedAgentReplyType:
            json_['automatedAgentReplyType'] as core.String?,
        cxCurrentPage: json_['cxCurrentPage'] as core.String?,
        detectIntentResponse: json_.containsKey('detectIntentResponse')
            ? GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
                json_['detectIntentResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowCancellation = this.allowCancellation;
    final automatedAgentReplyType = this.automatedAgentReplyType;
    final cxCurrentPage = this.cxCurrentPage;
    final detectIntentResponse = this.detectIntentResponse;
    return {
      'allowCancellation': ?allowCancellation,
      'automatedAgentReplyType': ?automatedAgentReplyType,
      'cxCurrentPage': ?cxCurrentPage,
      'detectIntentResponse': ?detectIntentResponse,
    };
  }
}

class GoogleCloudDialogflowV2BatchCreateEntitiesRequest {
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;
  core.String? languageCode;

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest({
    this.entities,
    this.languageCode,
  });

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(core.Map json_)
    : this(
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entities = this.entities;
    final languageCode = this.languageCode;
    return {'entities': ?entities, 'languageCode': ?languageCode};
  }
}

class GoogleCloudDialogflowV2BatchDeleteEntitiesRequest {
  core.List<core.String>? entityValues;
  core.String? languageCode;

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest({
    this.entityValues,
    this.languageCode,
  });

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(core.Map json_)
    : this(
        entityValues: (json_['entityValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityValues = this.entityValues;
    final languageCode = this.languageCode;
    return {'entityValues': ?entityValues, 'languageCode': ?languageCode};
  }
}

class GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest {
  core.List<core.String>? entityTypeNames;

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest({this.entityTypeNames});

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(core.Map json_)
    : this(
        entityTypeNames: (json_['entityTypeNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypeNames = this.entityTypeNames;
    return {'entityTypeNames': ?entityTypeNames};
  }
}

class GoogleCloudDialogflowV2BatchDeleteIntentsRequest {
  core.List<GoogleCloudDialogflowV2Intent>? intents;

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest({this.intents});

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(core.Map json_)
    : this(
        intents: (json_['intents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Intent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intents = this.intents;
    return {'intents': ?intents};
  }
}

class GoogleCloudDialogflowV2BatchUpdateEntitiesRequest {
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;
  core.String? languageCode;
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest({
    this.entities,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(core.Map json_)
    : this(
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entities = this.entities;
    final languageCode = this.languageCode;
    final updateMask = this.updateMask;
    return {
      'entities': ?entities,
      'languageCode': ?languageCode,
      'updateMask': ?updateMask,
    };
  }
}

class GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest {
  GoogleCloudDialogflowV2EntityTypeBatch? entityTypeBatchInline;
  core.String? entityTypeBatchUri;
  core.String? languageCode;
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest({
    this.entityTypeBatchInline,
    this.entityTypeBatchUri,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(core.Map json_)
    : this(
        entityTypeBatchInline: json_.containsKey('entityTypeBatchInline')
            ? GoogleCloudDialogflowV2EntityTypeBatch.fromJson(
                json_['entityTypeBatchInline']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        entityTypeBatchUri: json_['entityTypeBatchUri'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypeBatchInline = this.entityTypeBatchInline;
    final entityTypeBatchUri = this.entityTypeBatchUri;
    final languageCode = this.languageCode;
    final updateMask = this.updateMask;
    return {
      'entityTypeBatchInline': ?entityTypeBatchInline,
      'entityTypeBatchUri': ?entityTypeBatchUri,
      'languageCode': ?languageCode,
      'updateMask': ?updateMask,
    };
  }
}

class GoogleCloudDialogflowV2BatchUpdateIntentsRequest {
  GoogleCloudDialogflowV2IntentBatch? intentBatchInline;
  core.String? intentBatchUri;

  ///
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED"
  /// - "INTENT_VIEW_FULL"
  core.String? intentView;
  core.String? languageCode;
  core.String? updateMask;

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest({
    this.intentBatchInline,
    this.intentBatchUri,
    this.intentView,
    this.languageCode,
    this.updateMask,
  });

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(core.Map json_)
    : this(
        intentBatchInline: json_.containsKey('intentBatchInline')
            ? GoogleCloudDialogflowV2IntentBatch.fromJson(
                json_['intentBatchInline']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        intentBatchUri: json_['intentBatchUri'] as core.String?,
        intentView: json_['intentView'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intentBatchInline = this.intentBatchInline;
    final intentBatchUri = this.intentBatchUri;
    final intentView = this.intentView;
    final languageCode = this.languageCode;
    final updateMask = this.updateMask;
    return {
      'intentBatchInline': ?intentBatchInline,
      'intentBatchUri': ?intentBatchUri,
      'intentView': ?intentView,
      'languageCode': ?languageCode,
      'updateMask': ?updateMask,
    };
  }
}

class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest {
  ///
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "HUMAN_AGENT"
  /// - "AUTOMATED_AGENT"
  /// - "END_USER"
  core.String? participantRole;

  ///
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "ARTICLE_SUGGESTION"
  /// - "FAQ"
  /// - "SMART_REPLY"
  /// - "CONVERSATION_SUMMARIZATION"
  /// - "KNOWLEDGE_SEARCH"
  /// - "KNOWLEDGE_ASSIST"
  core.String? suggestionFeatureType;

  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest({
    this.participantRole,
    this.suggestionFeatureType,
  });

  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        participantRole: json_['participantRole'] as core.String?,
        suggestionFeatureType: json_['suggestionFeatureType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final participantRole = this.participantRole;
    final suggestionFeatureType = this.suggestionFeatureType;
    return {
      'participantRole': ?participantRole,
      'suggestionFeatureType': ?suggestionFeatureType,
    };
  }
}

typedef GoogleCloudDialogflowV2CompleteConversationRequest = $Empty;

class GoogleCloudDialogflowV2Connection {
  core.String? connectionId;
  GoogleCloudDialogflowV2ConnectionErrorDetails? errorDetails;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "CONNECTED"
  /// - "DISCONNECTED"
  /// - "AUTHENTICATION_FAILED"
  /// - "KEEPALIVE"
  core.String? state;
  core.String? updateTime;

  GoogleCloudDialogflowV2Connection({
    this.connectionId,
    this.errorDetails,
    this.state,
    this.updateTime,
  });

  GoogleCloudDialogflowV2Connection.fromJson(core.Map json_)
    : this(
        connectionId: json_['connectionId'] as core.String?,
        errorDetails: json_.containsKey('errorDetails')
            ? GoogleCloudDialogflowV2ConnectionErrorDetails.fromJson(
                json_['errorDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionId = this.connectionId;
    final errorDetails = this.errorDetails;
    final state = this.state;
    final updateTime = this.updateTime;
    return {
      'connectionId': ?connectionId,
      'errorDetails': ?errorDetails,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowV2ConnectionErrorDetails {
  ///
  /// Possible string values are:
  /// - "CERTIFICATE_STATE_UNSPECIFIED"
  /// - "CERTIFICATE_VALID"
  /// - "CERTIFICATE_INVALID"
  /// - "CERTIFICATE_EXPIRED"
  /// - "CERTIFICATE_HOSTNAME_NOT_FOUND"
  /// - "CERTIFICATE_UNAUTHENTICATED"
  /// - "CERTIFICATE_TRUST_STORE_NOT_FOUND"
  /// - "CERTIFICATE_HOSTNAME_INVALID_FORMAT"
  /// - "CERTIFICATE_QUOTA_EXCEEDED"
  core.String? certificateState;
  core.String? errorMessage;

  GoogleCloudDialogflowV2ConnectionErrorDetails({
    this.certificateState,
    this.errorMessage,
  });

  GoogleCloudDialogflowV2ConnectionErrorDetails.fromJson(core.Map json_)
    : this(
        certificateState: json_['certificateState'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateState = this.certificateState;
    final errorMessage = this.errorMessage;
    return {
      'certificateState': ?certificateState,
      'errorMessage': ?errorMessage,
    };
  }
}

class GoogleCloudDialogflowV2Context {
  core.int? lifespanCount;
  core.String? name;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GoogleCloudDialogflowV2Context({
    this.lifespanCount,
    this.name,
    this.parameters,
  });

  GoogleCloudDialogflowV2Context.fromJson(core.Map json_)
    : this(
        lifespanCount: json_['lifespanCount'] as core.int?,
        name: json_['name'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lifespanCount = this.lifespanCount;
    final name = this.name;
    final parameters = this.parameters;
    return {
      'lifespanCount': ?lifespanCount,
      'name': ?name,
      'parameters': ?parameters,
    };
  }
}

class GoogleCloudDialogflowV2Conversation {
  core.String? conversationProfile;

  ///
  /// Possible string values are:
  /// - "CONVERSATION_STAGE_UNSPECIFIED"
  /// - "VIRTUAL_AGENT_STAGE"
  /// - "HUMAN_ASSIST_STAGE"
  core.String? conversationStage;
  core.String? endTime;
  core.Map<core.String, GoogleCloudDialogflowV2ConversationContextReference>?
  ingestedContextReferences;

  ///
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED"
  /// - "IN_PROGRESS"
  /// - "COMPLETED"
  core.String? lifecycleState;
  core.String? name;
  GoogleCloudDialogflowV2ConversationPhoneNumber? phoneNumber;
  core.String? startTime;
  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo?
  telephonyConnectionInfo;

  GoogleCloudDialogflowV2Conversation({
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

  GoogleCloudDialogflowV2Conversation.fromJson(core.Map json_)
    : this(
        conversationProfile: json_['conversationProfile'] as core.String?,
        conversationStage: json_['conversationStage'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        ingestedContextReferences:
            (json_['ingestedContextReferences']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2ConversationContextReference.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        lifecycleState: json_['lifecycleState'] as core.String?,
        name: json_['name'] as core.String?,
        phoneNumber: json_.containsKey('phoneNumber')
            ? GoogleCloudDialogflowV2ConversationPhoneNumber.fromJson(
                json_['phoneNumber'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startTime: json_['startTime'] as core.String?,
        telephonyConnectionInfo: json_.containsKey('telephonyConnectionInfo')
            ? GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo.fromJson(
                json_['telephonyConnectionInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationProfile = this.conversationProfile;
    final conversationStage = this.conversationStage;
    final endTime = this.endTime;
    final ingestedContextReferences = this.ingestedContextReferences;
    final lifecycleState = this.lifecycleState;
    final name = this.name;
    final phoneNumber = this.phoneNumber;
    final startTime = this.startTime;
    final telephonyConnectionInfo = this.telephonyConnectionInfo;
    return {
      'conversationProfile': ?conversationProfile,
      'conversationStage': ?conversationStage,
      'endTime': ?endTime,
      'ingestedContextReferences': ?ingestedContextReferences,
      'lifecycleState': ?lifecycleState,
      'name': ?name,
      'phoneNumber': ?phoneNumber,
      'startTime': ?startTime,
      'telephonyConnectionInfo': ?telephonyConnectionInfo,
    };
  }
}

class GoogleCloudDialogflowV2ConversationContext {
  core.List<GoogleCloudDialogflowV2MessageEntry>? messageEntries;

  GoogleCloudDialogflowV2ConversationContext({this.messageEntries});

  GoogleCloudDialogflowV2ConversationContext.fromJson(core.Map json_)
    : this(
        messageEntries: (json_['messageEntries'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2MessageEntry.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messageEntries = this.messageEntries;
    return {'messageEntries': ?messageEntries};
  }
}

class GoogleCloudDialogflowV2ConversationContextReference {
  core.List<GoogleCloudDialogflowV2ConversationContextReferenceContextContent>?
  contextContents;
  core.String? createTime;
  core.String? languageCode;

  ///
  /// Possible string values are:
  /// - "UPDATE_MODE_UNSPECIFIED"
  /// - "APPEND"
  /// - "OVERWRITE"
  core.String? updateMode;

  GoogleCloudDialogflowV2ConversationContextReference({
    this.contextContents,
    this.createTime,
    this.languageCode,
    this.updateMode,
  });

  GoogleCloudDialogflowV2ConversationContextReference.fromJson(core.Map json_)
    : this(
        contextContents: (json_['contextContents'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2ConversationContextReferenceContextContent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        createTime: json_['createTime'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        updateMode: json_['updateMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextContents = this.contextContents;
    final createTime = this.createTime;
    final languageCode = this.languageCode;
    final updateMode = this.updateMode;
    return {
      'contextContents': ?contextContents,
      'createTime': ?createTime,
      'languageCode': ?languageCode,
      'updateMode': ?updateMode,
    };
  }
}

class GoogleCloudDialogflowV2ConversationContextReferenceContextContent {
  core.String? answerRecord;
  core.String? content;

  ///
  /// Possible string values are:
  /// - "CONTENT_FORMAT_UNSPECIFIED"
  /// - "JSON"
  /// - "PLAIN_TEXT"
  core.String? contentFormat;
  core.String? ingestionTime;

  GoogleCloudDialogflowV2ConversationContextReferenceContextContent({
    this.answerRecord,
    this.content,
    this.contentFormat,
    this.ingestionTime,
  });

  GoogleCloudDialogflowV2ConversationContextReferenceContextContent.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        content: json_['content'] as core.String?,
        contentFormat: json_['contentFormat'] as core.String?,
        ingestionTime: json_['ingestionTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final content = this.content;
    final contentFormat = this.contentFormat;
    final ingestionTime = this.ingestionTime;
    return {
      'answerRecord': ?answerRecord,
      'content': ?content,
      'contentFormat': ?contentFormat,
      'ingestionTime': ?ingestionTime,
    };
  }
}

class GoogleCloudDialogflowV2ConversationDataset {
  core.String? conversationCount;
  GoogleCloudDialogflowV2ConversationInfo? conversationInfo;
  core.String? createTime;
  core.String? description;
  core.String? displayName;
  GoogleCloudDialogflowV2InputConfig? inputConfig;
  core.String? name;
  core.bool? satisfiesPzi;
  core.bool? satisfiesPzs;

  GoogleCloudDialogflowV2ConversationDataset({
    this.conversationCount,
    this.conversationInfo,
    this.createTime,
    this.description,
    this.displayName,
    this.inputConfig,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
  });

  GoogleCloudDialogflowV2ConversationDataset.fromJson(core.Map json_)
    : this(
        conversationCount: json_['conversationCount'] as core.String?,
        conversationInfo: json_.containsKey('conversationInfo')
            ? GoogleCloudDialogflowV2ConversationInfo.fromJson(
                json_['conversationInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputConfig: json_.containsKey('inputConfig')
            ? GoogleCloudDialogflowV2InputConfig.fromJson(
                json_['inputConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationCount = this.conversationCount;
    final conversationInfo = this.conversationInfo;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final inputConfig = this.inputConfig;
    final name = this.name;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    return {
      'conversationCount': ?conversationCount,
      'conversationInfo': ?conversationInfo,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'inputConfig': ?inputConfig,
      'name': ?name,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
    };
  }
}

typedef GoogleCloudDialogflowV2ConversationInfo = $Shared07;

class GoogleCloudDialogflowV2ConversationModel {
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata?
  articleSuggestionModelMetadata;
  core.String? createTime;
  core.List<GoogleCloudDialogflowV2InputDataset>? datasets;
  core.String? displayName;
  core.String? languageCode;
  core.String? name;
  core.bool? satisfiesPzi;
  core.bool? satisfiesPzs;
  GoogleCloudDialogflowV2SmartReplyModelMetadata? smartReplyModelMetadata;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "CREATING"
  /// - "UNDEPLOYED"
  /// - "DEPLOYING"
  /// - "DEPLOYED"
  /// - "UNDEPLOYING"
  /// - "DELETING"
  /// - "FAILED"
  /// - "PENDING"
  core.String? state;

  GoogleCloudDialogflowV2ConversationModel({
    this.articleSuggestionModelMetadata,
    this.createTime,
    this.datasets,
    this.displayName,
    this.languageCode,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.smartReplyModelMetadata,
    this.state,
  });

  GoogleCloudDialogflowV2ConversationModel.fromJson(core.Map json_)
    : this(
        articleSuggestionModelMetadata:
            json_.containsKey('articleSuggestionModelMetadata')
            ? GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.fromJson(
                json_['articleSuggestionModelMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        datasets: (json_['datasets'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2InputDataset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        smartReplyModelMetadata: json_.containsKey('smartReplyModelMetadata')
            ? GoogleCloudDialogflowV2SmartReplyModelMetadata.fromJson(
                json_['smartReplyModelMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final articleSuggestionModelMetadata = this.articleSuggestionModelMetadata;
    final createTime = this.createTime;
    final datasets = this.datasets;
    final displayName = this.displayName;
    final languageCode = this.languageCode;
    final name = this.name;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final smartReplyModelMetadata = this.smartReplyModelMetadata;
    final state = this.state;
    return {
      'articleSuggestionModelMetadata': ?articleSuggestionModelMetadata,
      'createTime': ?createTime,
      'datasets': ?datasets,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'name': ?name,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'smartReplyModelMetadata': ?smartReplyModelMetadata,
      'state': ?state,
    };
  }
}

class GoogleCloudDialogflowV2ConversationModelEvaluation {
  core.String? createTime;
  core.String? displayName;
  GoogleCloudDialogflowV2EvaluationConfig? evaluationConfig;
  core.String? name;
  core.String? rawHumanEvalTemplateCsv;
  GoogleCloudDialogflowV2SmartReplyMetrics? smartReplyMetrics;

  GoogleCloudDialogflowV2ConversationModelEvaluation({
    this.createTime,
    this.displayName,
    this.evaluationConfig,
    this.name,
    this.rawHumanEvalTemplateCsv,
    this.smartReplyMetrics,
  });

  GoogleCloudDialogflowV2ConversationModelEvaluation.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        evaluationConfig: json_.containsKey('evaluationConfig')
            ? GoogleCloudDialogflowV2EvaluationConfig.fromJson(
                json_['evaluationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        rawHumanEvalTemplateCsv:
            json_['rawHumanEvalTemplateCsv'] as core.String?,
        smartReplyMetrics: json_.containsKey('smartReplyMetrics')
            ? GoogleCloudDialogflowV2SmartReplyMetrics.fromJson(
                json_['smartReplyMetrics']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final evaluationConfig = this.evaluationConfig;
    final name = this.name;
    final rawHumanEvalTemplateCsv = this.rawHumanEvalTemplateCsv;
    final smartReplyMetrics = this.smartReplyMetrics;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'evaluationConfig': ?evaluationConfig,
      'name': ?name,
      'rawHumanEvalTemplateCsv': ?rawHumanEvalTemplateCsv,
      'smartReplyMetrics': ?smartReplyMetrics,
    };
  }
}

class GoogleCloudDialogflowV2ConversationPhoneNumber {
  core.int? countryCode;
  core.String? phoneNumber;

  GoogleCloudDialogflowV2ConversationPhoneNumber({
    this.countryCode,
    this.phoneNumber,
  });

  GoogleCloudDialogflowV2ConversationPhoneNumber.fromJson(core.Map json_)
    : this(
        countryCode: json_['countryCode'] as core.int?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countryCode = this.countryCode;
    final phoneNumber = this.phoneNumber;
    return {'countryCode': ?countryCode, 'phoneNumber': ?phoneNumber};
  }
}

class GoogleCloudDialogflowV2ConversationProfile {
  GoogleCloudDialogflowV2AutomatedAgentConfig? automatedAgentConfig;
  core.String? createTime;
  core.String? displayName;
  GoogleCloudDialogflowV2HumanAgentAssistantConfig? humanAgentAssistantConfig;
  GoogleCloudDialogflowV2HumanAgentHandoffConfig? humanAgentHandoffConfig;
  core.String? languageCode;
  GoogleCloudDialogflowV2LoggingConfig? loggingConfig;
  core.String? name;
  GoogleCloudDialogflowV2NotificationConfig? newMessageEventNotificationConfig;
  GoogleCloudDialogflowV2NotificationConfig?
  newRecognitionResultNotificationConfig;
  GoogleCloudDialogflowV2NotificationConfig? notificationConfig;
  core.String? securitySettings;
  GoogleCloudDialogflowV2SpeechToTextConfig? sttConfig;
  core.String? timeZone;
  GoogleCloudDialogflowV2SynthesizeSpeechConfig? ttsConfig;
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
    this.newRecognitionResultNotificationConfig,
    this.notificationConfig,
    this.securitySettings,
    this.sttConfig,
    this.timeZone,
    this.ttsConfig,
    this.updateTime,
  });

  GoogleCloudDialogflowV2ConversationProfile.fromJson(core.Map json_)
    : this(
        automatedAgentConfig: json_.containsKey('automatedAgentConfig')
            ? GoogleCloudDialogflowV2AutomatedAgentConfig.fromJson(
                json_['automatedAgentConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        humanAgentAssistantConfig:
            json_.containsKey('humanAgentAssistantConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromJson(
                json_['humanAgentAssistantConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        humanAgentHandoffConfig: json_.containsKey('humanAgentHandoffConfig')
            ? GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromJson(
                json_['humanAgentHandoffConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        languageCode: json_['languageCode'] as core.String?,
        loggingConfig: json_.containsKey('loggingConfig')
            ? GoogleCloudDialogflowV2LoggingConfig.fromJson(
                json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        newMessageEventNotificationConfig:
            json_.containsKey('newMessageEventNotificationConfig')
            ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                json_['newMessageEventNotificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        newRecognitionResultNotificationConfig:
            json_.containsKey('newRecognitionResultNotificationConfig')
            ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                json_['newRecognitionResultNotificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        notificationConfig: json_.containsKey('notificationConfig')
            ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                json_['notificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        securitySettings: json_['securitySettings'] as core.String?,
        sttConfig: json_.containsKey('sttConfig')
            ? GoogleCloudDialogflowV2SpeechToTextConfig.fromJson(
                json_['sttConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeZone: json_['timeZone'] as core.String?,
        ttsConfig: json_.containsKey('ttsConfig')
            ? GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
                json_['ttsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automatedAgentConfig = this.automatedAgentConfig;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final humanAgentAssistantConfig = this.humanAgentAssistantConfig;
    final humanAgentHandoffConfig = this.humanAgentHandoffConfig;
    final languageCode = this.languageCode;
    final loggingConfig = this.loggingConfig;
    final name = this.name;
    final newMessageEventNotificationConfig =
        this.newMessageEventNotificationConfig;
    final newRecognitionResultNotificationConfig =
        this.newRecognitionResultNotificationConfig;
    final notificationConfig = this.notificationConfig;
    final securitySettings = this.securitySettings;
    final sttConfig = this.sttConfig;
    final timeZone = this.timeZone;
    final ttsConfig = this.ttsConfig;
    final updateTime = this.updateTime;
    return {
      'automatedAgentConfig': ?automatedAgentConfig,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'humanAgentAssistantConfig': ?humanAgentAssistantConfig,
      'humanAgentHandoffConfig': ?humanAgentHandoffConfig,
      'languageCode': ?languageCode,
      'loggingConfig': ?loggingConfig,
      'name': ?name,
      'newMessageEventNotificationConfig': ?newMessageEventNotificationConfig,
      'newRecognitionResultNotificationConfig':
          ?newRecognitionResultNotificationConfig,
      'notificationConfig': ?notificationConfig,
      'securitySettings': ?securitySettings,
      'sttConfig': ?sttConfig,
      'timeZone': ?timeZone,
      'ttsConfig': ?ttsConfig,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo {
  core.String? dialedNumber;
  core.List<
    GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent
  >?
  extraMimeContents;
  core.String? sdp;
  core.List<
    GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader
  >?
  sipHeaders;

  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo({
    this.dialedNumber,
    this.extraMimeContents,
    this.sdp,
    this.sipHeaders,
  });

  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfo.fromJson(
    core.Map json_,
  ) : this(
        dialedNumber: json_['dialedNumber'] as core.String?,
        extraMimeContents: (json_['extraMimeContents'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        sdp: json_['sdp'] as core.String?,
        sipHeaders: (json_['sipHeaders'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dialedNumber = this.dialedNumber;
    final extraMimeContents = this.extraMimeContents;
    final sdp = this.sdp;
    final sipHeaders = this.sipHeaders;
    return {
      'dialedNumber': ?dialedNumber,
      'extraMimeContents': ?extraMimeContents,
      'sdp': ?sdp,
      'sipHeaders': ?sipHeaders,
    };
  }
}

class GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent {
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? mimeType;

  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent({
    this.content,
    this.mimeType,
  });

  GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoMimeContent.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final mimeType = this.mimeType;
    return {'content': ?content, 'mimeType': ?mimeType};
  }
}

typedef GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader =
    $Shared06;

class GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest {
  GoogleCloudDialogflowV2ConversationModelEvaluation?
  conversationModelEvaluation;

  GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest({
    this.conversationModelEvaluation,
  });

  GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest.fromJson(
    core.Map json_,
  ) : this(
        conversationModelEvaluation:
            json_.containsKey('conversationModelEvaluation')
            ? GoogleCloudDialogflowV2ConversationModelEvaluation.fromJson(
                json_['conversationModelEvaluation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationModelEvaluation = this.conversationModelEvaluation;
    return {'conversationModelEvaluation': ?conversationModelEvaluation};
  }
}

class GoogleCloudDialogflowV2CustomPronunciationParams {
  ///
  /// Possible string values are:
  /// - "PHONETIC_ENCODING_UNSPECIFIED"
  /// - "PHONETIC_ENCODING_IPA"
  /// - "PHONETIC_ENCODING_X_SAMPA"
  core.String? phoneticEncoding;
  core.String? phrase;
  core.String? pronunciation;

  GoogleCloudDialogflowV2CustomPronunciationParams({
    this.phoneticEncoding,
    this.phrase,
    this.pronunciation,
  });

  GoogleCloudDialogflowV2CustomPronunciationParams.fromJson(core.Map json_)
    : this(
        phoneticEncoding: json_['phoneticEncoding'] as core.String?,
        phrase: json_['phrase'] as core.String?,
        pronunciation: json_['pronunciation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final phoneticEncoding = this.phoneticEncoding;
    final phrase = this.phrase;
    final pronunciation = this.pronunciation;
    return {
      'phoneticEncoding': ?phoneticEncoding,
      'phrase': ?phrase,
      'pronunciation': ?pronunciation,
    };
  }
}

typedef GoogleCloudDialogflowV2DeployConversationModelRequest = $Empty;

class GoogleCloudDialogflowV2DetectIntentRequest {
  core.String? inputAudio;
  core.List<core.int> get inputAudioAsBytes =>
      convert.base64.decode(inputAudio!);

  set inputAudioAsBytes(core.List<core.int> bytes_) {
    inputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2OutputAudioConfig? outputAudioConfig;
  core.String? outputAudioConfigMask;
  GoogleCloudDialogflowV2QueryInput? queryInput;
  GoogleCloudDialogflowV2QueryParameters? queryParams;

  GoogleCloudDialogflowV2DetectIntentRequest({
    this.inputAudio,
    this.outputAudioConfig,
    this.outputAudioConfigMask,
    this.queryInput,
    this.queryParams,
  });

  GoogleCloudDialogflowV2DetectIntentRequest.fromJson(core.Map json_)
    : this(
        inputAudio: json_['inputAudio'] as core.String?,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputAudioConfigMask: json_['outputAudioConfigMask'] as core.String?,
        queryInput: json_.containsKey('queryInput')
            ? GoogleCloudDialogflowV2QueryInput.fromJson(
                json_['queryInput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryParams: json_.containsKey('queryParams')
            ? GoogleCloudDialogflowV2QueryParameters.fromJson(
                json_['queryParams'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputAudio = this.inputAudio;
    final outputAudioConfig = this.outputAudioConfig;
    final outputAudioConfigMask = this.outputAudioConfigMask;
    final queryInput = this.queryInput;
    final queryParams = this.queryParams;
    return {
      'inputAudio': ?inputAudio,
      'outputAudioConfig': ?outputAudioConfig,
      'outputAudioConfigMask': ?outputAudioConfigMask,
      'queryInput': ?queryInput,
      'queryParams': ?queryParams,
    };
  }
}

class GoogleCloudDialogflowV2DetectIntentResponse {
  core.String? outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio!);

  set outputAudioAsBytes(core.List<core.int> bytes_) {
    outputAudio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2OutputAudioConfig? outputAudioConfig;
  GoogleCloudDialogflowV2QueryResult? queryResult;
  core.String? responseId;
  GoogleRpcStatus? webhookStatus;

  GoogleCloudDialogflowV2DetectIntentResponse({
    this.outputAudio,
    this.outputAudioConfig,
    this.queryResult,
    this.responseId,
    this.webhookStatus,
  });

  GoogleCloudDialogflowV2DetectIntentResponse.fromJson(core.Map json_)
    : this(
        outputAudio: json_['outputAudio'] as core.String?,
        outputAudioConfig: json_.containsKey('outputAudioConfig')
            ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                json_['outputAudioConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryResult: json_.containsKey('queryResult')
            ? GoogleCloudDialogflowV2QueryResult.fromJson(
                json_['queryResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        responseId: json_['responseId'] as core.String?,
        webhookStatus: json_.containsKey('webhookStatus')
            ? GoogleRpcStatus.fromJson(
                json_['webhookStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final outputAudio = this.outputAudio;
    final outputAudioConfig = this.outputAudioConfig;
    final queryResult = this.queryResult;
    final responseId = this.responseId;
    final webhookStatus = this.webhookStatus;
    return {
      'outputAudio': ?outputAudio,
      'outputAudioConfig': ?outputAudioConfig,
      'queryResult': ?queryResult,
      'responseId': ?responseId,
      'webhookStatus': ?webhookStatus,
    };
  }
}

class GoogleCloudDialogflowV2DialogflowAssistAnswer {
  core.String? answerRecord;
  GoogleCloudDialogflowV2IntentSuggestion? intentSuggestion;
  GoogleCloudDialogflowV2QueryResult? queryResult;

  GoogleCloudDialogflowV2DialogflowAssistAnswer({
    this.answerRecord,
    this.intentSuggestion,
    this.queryResult,
  });

  GoogleCloudDialogflowV2DialogflowAssistAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        intentSuggestion: json_.containsKey('intentSuggestion')
            ? GoogleCloudDialogflowV2IntentSuggestion.fromJson(
                json_['intentSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryResult: json_.containsKey('queryResult')
            ? GoogleCloudDialogflowV2QueryResult.fromJson(
                json_['queryResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final intentSuggestion = this.intentSuggestion;
    final queryResult = this.queryResult;
    return {
      'answerRecord': ?answerRecord,
      'intentSuggestion': ?intentSuggestion,
      'queryResult': ?queryResult,
    };
  }
}

class GoogleCloudDialogflowV2Document {
  core.String? contentUri;
  core.String? displayName;
  core.bool? enableAutoReload;
  core.List<core.String>? knowledgeTypes;
  GoogleCloudDialogflowV2DocumentReloadStatus? latestReloadStatus;
  core.Map<core.String, core.String>? metadata;
  core.String? mimeType;
  core.String? name;
  core.String? rawContent;
  core.List<core.int> get rawContentAsBytes =>
      convert.base64.decode(rawContent!);

  set rawContentAsBytes(core.List<core.int> bytes_) {
    rawContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "CREATING"
  /// - "ACTIVE"
  /// - "UPDATING"
  /// - "RELOADING"
  /// - "DELETING"
  core.String? state;

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
    this.state,
  });

  GoogleCloudDialogflowV2Document.fromJson(core.Map json_)
    : this(
        contentUri: json_['contentUri'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableAutoReload: json_['enableAutoReload'] as core.bool?,
        knowledgeTypes: (json_['knowledgeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        latestReloadStatus: json_.containsKey('latestReloadStatus')
            ? GoogleCloudDialogflowV2DocumentReloadStatus.fromJson(
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

  core.Map<core.String, core.dynamic> toJson() {
    final contentUri = this.contentUri;
    final displayName = this.displayName;
    final enableAutoReload = this.enableAutoReload;
    final knowledgeTypes = this.knowledgeTypes;
    final latestReloadStatus = this.latestReloadStatus;
    final metadata = this.metadata;
    final mimeType = this.mimeType;
    final name = this.name;
    final rawContent = this.rawContent;
    final state = this.state;
    return {
      'contentUri': ?contentUri,
      'displayName': ?displayName,
      'enableAutoReload': ?enableAutoReload,
      'knowledgeTypes': ?knowledgeTypes,
      'latestReloadStatus': ?latestReloadStatus,
      'metadata': ?metadata,
      'mimeType': ?mimeType,
      'name': ?name,
      'rawContent': ?rawContent,
      'state': ?state,
    };
  }
}

class GoogleCloudDialogflowV2DocumentReloadStatus {
  GoogleRpcStatus? status;
  core.String? time;

  GoogleCloudDialogflowV2DocumentReloadStatus({this.status, this.time});

  GoogleCloudDialogflowV2DocumentReloadStatus.fromJson(core.Map json_)
    : this(
        status: json_.containsKey('status')
            ? GoogleRpcStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        time: json_['time'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final status = this.status;
    final time = this.time;
    return {'status': ?status, 'time': ?time};
  }
}

class GoogleCloudDialogflowV2DtmfParameters {
  core.bool? acceptsDtmfInput;

  GoogleCloudDialogflowV2DtmfParameters({this.acceptsDtmfInput});

  GoogleCloudDialogflowV2DtmfParameters.fromJson(core.Map json_)
    : this(acceptsDtmfInput: json_['acceptsDtmfInput'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final acceptsDtmfInput = this.acceptsDtmfInput;
    return {'acceptsDtmfInput': ?acceptsDtmfInput};
  }
}

class GoogleCloudDialogflowV2EncryptionSpec {
  core.String? kmsKey;
  core.String? name;

  GoogleCloudDialogflowV2EncryptionSpec({this.kmsKey, this.name});

  GoogleCloudDialogflowV2EncryptionSpec.fromJson(core.Map json_)
    : this(
        kmsKey: json_['kmsKey'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKey = this.kmsKey;
    final name = this.name;
    return {'kmsKey': ?kmsKey, 'name': ?name};
  }
}

class GoogleCloudDialogflowV2EntityType {
  ///
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED"
  /// - "AUTO_EXPANSION_MODE_DEFAULT"
  core.String? autoExpansionMode;
  core.String? displayName;
  core.bool? enableFuzzyExtraction;
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

  ///
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED"
  /// - "KIND_MAP"
  /// - "KIND_LIST"
  /// - "KIND_REGEXP"
  core.String? kind;
  core.String? name;

  GoogleCloudDialogflowV2EntityType({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.kind,
    this.name,
  });

  GoogleCloudDialogflowV2EntityType.fromJson(core.Map json_)
    : this(
        autoExpansionMode: json_['autoExpansionMode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enableFuzzyExtraction: json_['enableFuzzyExtraction'] as core.bool?,
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoExpansionMode = this.autoExpansionMode;
    final displayName = this.displayName;
    final enableFuzzyExtraction = this.enableFuzzyExtraction;
    final entities = this.entities;
    final kind = this.kind;
    final name = this.name;
    return {
      'autoExpansionMode': ?autoExpansionMode,
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?entities,
      'kind': ?kind,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2EntityTypeBatch {
  core.List<GoogleCloudDialogflowV2EntityType>? entityTypes;

  GoogleCloudDialogflowV2EntityTypeBatch({this.entityTypes});

  GoogleCloudDialogflowV2EntityTypeBatch.fromJson(core.Map json_)
    : this(
        entityTypes: (json_['entityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypes = this.entityTypes;
    return {'entityTypes': ?entityTypes};
  }
}

typedef GoogleCloudDialogflowV2EntityTypeEntity = $EntityTypeEntity;

class GoogleCloudDialogflowV2Environment {
  core.String? agentVersion;
  core.String? description;
  GoogleCloudDialogflowV2Fulfillment? fulfillment;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "STOPPED"
  /// - "LOADING"
  /// - "RUNNING"
  core.String? state;
  GoogleCloudDialogflowV2TextToSpeechSettings? textToSpeechSettings;
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

  GoogleCloudDialogflowV2Environment.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        description: json_['description'] as core.String?,
        fulfillment: json_.containsKey('fulfillment')
            ? GoogleCloudDialogflowV2Fulfillment.fromJson(
                json_['fulfillment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        textToSpeechSettings: json_.containsKey('textToSpeechSettings')
            ? GoogleCloudDialogflowV2TextToSpeechSettings.fromJson(
                json_['textToSpeechSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentVersion = this.agentVersion;
    final description = this.description;
    final fulfillment = this.fulfillment;
    final name = this.name;
    final state = this.state;
    final textToSpeechSettings = this.textToSpeechSettings;
    final updateTime = this.updateTime;
    return {
      'agentVersion': ?agentVersion,
      'description': ?description,
      'fulfillment': ?fulfillment,
      'name': ?name,
      'state': ?state,
      'textToSpeechSettings': ?textToSpeechSettings,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowV2EnvironmentHistory {
  core.List<GoogleCloudDialogflowV2EnvironmentHistoryEntry>? entries;
  core.String? nextPageToken;
  core.String? parent;

  GoogleCloudDialogflowV2EnvironmentHistory({
    this.entries,
    this.nextPageToken,
    this.parent,
  });

  GoogleCloudDialogflowV2EnvironmentHistory.fromJson(core.Map json_)
    : this(
        entries: (json_['entries'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2EnvironmentHistoryEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entries = this.entries;
    final nextPageToken = this.nextPageToken;
    final parent = this.parent;
    return {
      'entries': ?entries,
      'nextPageToken': ?nextPageToken,
      'parent': ?parent,
    };
  }
}

class GoogleCloudDialogflowV2EnvironmentHistoryEntry {
  core.String? agentVersion;
  core.String? createTime;
  core.String? description;

  GoogleCloudDialogflowV2EnvironmentHistoryEntry({
    this.agentVersion,
    this.createTime,
    this.description,
  });

  GoogleCloudDialogflowV2EnvironmentHistoryEntry.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentVersion = this.agentVersion;
    final createTime = this.createTime;
    final description = this.description;
    return {
      'agentVersion': ?agentVersion,
      'createTime': ?createTime,
      'description': ?description,
    };
  }
}

class GoogleCloudDialogflowV2EvaluationConfig {
  core.List<GoogleCloudDialogflowV2InputDataset>? datasets;
  GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig? smartComposeConfig;
  GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig? smartReplyConfig;

  GoogleCloudDialogflowV2EvaluationConfig({
    this.datasets,
    this.smartComposeConfig,
    this.smartReplyConfig,
  });

  GoogleCloudDialogflowV2EvaluationConfig.fromJson(core.Map json_)
    : this(
        datasets: (json_['datasets'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2InputDataset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        smartComposeConfig: json_.containsKey('smartComposeConfig')
            ? GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig.fromJson(
                json_['smartComposeConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        smartReplyConfig: json_.containsKey('smartReplyConfig')
            ? GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig.fromJson(
                json_['smartReplyConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datasets = this.datasets;
    final smartComposeConfig = this.smartComposeConfig;
    final smartReplyConfig = this.smartReplyConfig;
    return {
      'datasets': ?datasets,
      'smartComposeConfig': ?smartComposeConfig,
      'smartReplyConfig': ?smartReplyConfig,
    };
  }
}

typedef GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig = $Config;
typedef GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig = $Config;

class GoogleCloudDialogflowV2EvaluationStatus {
  core.bool? done;
  GoogleRpcStatus? pipelineStatus;

  GoogleCloudDialogflowV2EvaluationStatus({this.done, this.pipelineStatus});

  GoogleCloudDialogflowV2EvaluationStatus.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        pipelineStatus: json_.containsKey('pipelineStatus')
            ? GoogleRpcStatus.fromJson(
                json_['pipelineStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final pipelineStatus = this.pipelineStatus;
    return {'done': ?done, 'pipelineStatus': ?pipelineStatus};
  }
}

class GoogleCloudDialogflowV2EventInput {
  core.String? languageCode;
  core.String? name;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GoogleCloudDialogflowV2EventInput({
    this.languageCode,
    this.name,
    this.parameters,
  });

  GoogleCloudDialogflowV2EventInput.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    final name = this.name;
    final parameters = this.parameters;
    return {
      'languageCode': ?languageCode,
      'name': ?name,
      'parameters': ?parameters,
    };
  }
}

class GoogleCloudDialogflowV2ExportAgentRequest {
  core.String? agentUri;

  GoogleCloudDialogflowV2ExportAgentRequest({this.agentUri});

  GoogleCloudDialogflowV2ExportAgentRequest.fromJson(core.Map json_)
    : this(agentUri: json_['agentUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final agentUri = this.agentUri;
    return {'agentUri': ?agentUri};
  }
}

class GoogleCloudDialogflowV2ExportDocumentRequest {
  core.bool? exportFullContent;
  GoogleCloudDialogflowV2GcsDestination? gcsDestination;
  core.bool? smartMessagingPartialUpdate;

  GoogleCloudDialogflowV2ExportDocumentRequest({
    this.exportFullContent,
    this.gcsDestination,
    this.smartMessagingPartialUpdate,
  });

  GoogleCloudDialogflowV2ExportDocumentRequest.fromJson(core.Map json_)
    : this(
        exportFullContent: json_['exportFullContent'] as core.bool?,
        gcsDestination: json_.containsKey('gcsDestination')
            ? GoogleCloudDialogflowV2GcsDestination.fromJson(
                json_['gcsDestination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        smartMessagingPartialUpdate:
            json_['smartMessagingPartialUpdate'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exportFullContent = this.exportFullContent;
    final gcsDestination = this.gcsDestination;
    final smartMessagingPartialUpdate = this.smartMessagingPartialUpdate;
    return {
      'exportFullContent': ?exportFullContent,
      'gcsDestination': ?gcsDestination,
      'smartMessagingPartialUpdate': ?smartMessagingPartialUpdate,
    };
  }
}

class GoogleCloudDialogflowV2FaqAnswer {
  core.String? answer;
  core.String? answerRecord;
  core.double? confidence;
  core.Map<core.String, core.String>? metadata;
  core.String? question;
  core.String? source;

  GoogleCloudDialogflowV2FaqAnswer({
    this.answer,
    this.answerRecord,
    this.confidence,
    this.metadata,
    this.question,
    this.source,
  });

  GoogleCloudDialogflowV2FaqAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        question: json_['question'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answer = this.answer;
    final answerRecord = this.answerRecord;
    final confidence = this.confidence;
    final metadata = this.metadata;
    final question = this.question;
    final source = this.source;
    return {
      'answer': ?answer,
      'answerRecord': ?answerRecord,
      'confidence': ?confidence,
      'metadata': ?metadata,
      'question': ?question,
      'source': ?source,
    };
  }
}

class GoogleCloudDialogflowV2FewShotExample {
  GoogleCloudDialogflowV2ConversationContext? conversationContext;
  core.Map<core.String, core.String>? extraInfo;
  GoogleCloudDialogflowV2GeneratorSuggestion? output;
  GoogleCloudDialogflowV2SummarizationSectionList? summarizationSectionList;

  GoogleCloudDialogflowV2FewShotExample({
    this.conversationContext,
    this.extraInfo,
    this.output,
    this.summarizationSectionList,
  });

  GoogleCloudDialogflowV2FewShotExample.fromJson(core.Map json_)
    : this(
        conversationContext: json_.containsKey('conversationContext')
            ? GoogleCloudDialogflowV2ConversationContext.fromJson(
                json_['conversationContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        extraInfo: (json_['extraInfo'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        output: json_.containsKey('output')
            ? GoogleCloudDialogflowV2GeneratorSuggestion.fromJson(
                json_['output'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        summarizationSectionList: json_.containsKey('summarizationSectionList')
            ? GoogleCloudDialogflowV2SummarizationSectionList.fromJson(
                json_['summarizationSectionList']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationContext = this.conversationContext;
    final extraInfo = this.extraInfo;
    final output = this.output;
    final summarizationSectionList = this.summarizationSectionList;
    return {
      'conversationContext': ?conversationContext,
      'extraInfo': ?extraInfo,
      'output': ?output,
      'summarizationSectionList': ?summarizationSectionList,
    };
  }
}

typedef GoogleCloudDialogflowV2FreeFormContext = $Shared02;

class GoogleCloudDialogflowV2FreeFormSuggestion {
  core.String? response;

  GoogleCloudDialogflowV2FreeFormSuggestion({this.response});

  GoogleCloudDialogflowV2FreeFormSuggestion.fromJson(core.Map json_)
    : this(response: json_['response'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final response = this.response;
    return {'response': ?response};
  }
}

class GoogleCloudDialogflowV2Fulfillment {
  core.String? displayName;
  core.bool? enabled;
  core.List<GoogleCloudDialogflowV2FulfillmentFeature>? features;
  GoogleCloudDialogflowV2FulfillmentGenericWebService? genericWebService;
  core.String? name;

  GoogleCloudDialogflowV2Fulfillment({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.name,
  });

  GoogleCloudDialogflowV2Fulfillment.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        features: (json_['features'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2FulfillmentFeature.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        genericWebService: json_.containsKey('genericWebService')
            ? GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(
                json_['genericWebService']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final enabled = this.enabled;
    final features = this.features;
    final genericWebService = this.genericWebService;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'enabled': ?enabled,
      'features': ?features,
      'genericWebService': ?genericWebService,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2FulfillmentFeature {
  ///
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "SMALLTALK"
  core.String? type;

  GoogleCloudDialogflowV2FulfillmentFeature({this.type});

  GoogleCloudDialogflowV2FulfillmentFeature.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

class GoogleCloudDialogflowV2FulfillmentGenericWebService {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isCloudFunction;
  core.String? password;
  core.Map<core.String, core.String>? requestHeaders;
  core.String? uri;
  core.String? username;

  GoogleCloudDialogflowV2FulfillmentGenericWebService({
    this.isCloudFunction,
    this.password,
    this.requestHeaders,
    this.uri,
    this.username,
  });

  GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(core.Map json_)
    : this(
        isCloudFunction: json_['isCloudFunction'] as core.bool?,
        password: json_['password'] as core.String?,
        requestHeaders:
            (json_['requestHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        uri: json_['uri'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isCloudFunction = this.isCloudFunction;
    final password = this.password;
    final requestHeaders = this.requestHeaders;
    final uri = this.uri;
    final username = this.username;
    return {
      'isCloudFunction': ?isCloudFunction,
      'password': ?password,
      'requestHeaders': ?requestHeaders,
      'uri': ?uri,
      'username': ?username,
    };
  }
}

typedef GoogleCloudDialogflowV2GcsDestination = $Shared08;

class GoogleCloudDialogflowV2GcsSources {
  core.List<core.String>? uris;

  GoogleCloudDialogflowV2GcsSources({this.uris});

  GoogleCloudDialogflowV2GcsSources.fromJson(core.Map json_)
    : this(
        uris: (json_['uris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final uris = this.uris;
    return {'uris': ?uris};
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSuggestionRequest {
  core.Map<core.String, GoogleCloudDialogflowV2ConversationContextReference>?
  contextReferences;
  GoogleCloudDialogflowV2ConversationContext? conversationContext;
  GoogleCloudDialogflowV2Generator? generator;
  core.String? generatorName;
  core.String? securitySettings;
  core.List<core.String>? triggerEvents;

  GoogleCloudDialogflowV2GenerateStatelessSuggestionRequest({
    this.contextReferences,
    this.conversationContext,
    this.generator,
    this.generatorName,
    this.securitySettings,
    this.triggerEvents,
  });

  GoogleCloudDialogflowV2GenerateStatelessSuggestionRequest.fromJson(
    core.Map json_,
  ) : this(
        contextReferences:
            (json_['contextReferences'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2ConversationContextReference.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        conversationContext: json_.containsKey('conversationContext')
            ? GoogleCloudDialogflowV2ConversationContext.fromJson(
                json_['conversationContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        generator: json_.containsKey('generator')
            ? GoogleCloudDialogflowV2Generator.fromJson(
                json_['generator'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        generatorName: json_['generatorName'] as core.String?,
        securitySettings: json_['securitySettings'] as core.String?,
        triggerEvents: (json_['triggerEvents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextReferences = this.contextReferences;
    final conversationContext = this.conversationContext;
    final generator = this.generator;
    final generatorName = this.generatorName;
    final securitySettings = this.securitySettings;
    final triggerEvents = this.triggerEvents;
    return {
      'contextReferences': ?contextReferences,
      'conversationContext': ?conversationContext,
      'generator': ?generator,
      'generatorName': ?generatorName,
      'securitySettings': ?securitySettings,
      'triggerEvents': ?triggerEvents,
    };
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse {
  GoogleCloudDialogflowV2GeneratorSuggestion? generatorSuggestion;

  GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse({
    this.generatorSuggestion,
  });

  GoogleCloudDialogflowV2GenerateStatelessSuggestionResponse.fromJson(
    core.Map json_,
  ) : this(
        generatorSuggestion: json_.containsKey('generatorSuggestion')
            ? GoogleCloudDialogflowV2GeneratorSuggestion.fromJson(
                json_['generatorSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generatorSuggestion = this.generatorSuggestion;
    return {'generatorSuggestion': ?generatorSuggestion};
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSummaryRequest {
  GoogleCloudDialogflowV2ConversationProfile? conversationProfile;
  core.String? latestMessage;
  core.int? maxContextSize;
  GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation?
  statelessConversation;

  GoogleCloudDialogflowV2GenerateStatelessSummaryRequest({
    this.conversationProfile,
    this.latestMessage,
    this.maxContextSize,
    this.statelessConversation,
  });

  GoogleCloudDialogflowV2GenerateStatelessSummaryRequest.fromJson(
    core.Map json_,
  ) : this(
        conversationProfile: json_.containsKey('conversationProfile')
            ? GoogleCloudDialogflowV2ConversationProfile.fromJson(
                json_['conversationProfile']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        latestMessage: json_['latestMessage'] as core.String?,
        maxContextSize: json_['maxContextSize'] as core.int?,
        statelessConversation: json_.containsKey('statelessConversation')
            ? GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation.fromJson(
                json_['statelessConversation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationProfile = this.conversationProfile;
    final latestMessage = this.latestMessage;
    final maxContextSize = this.maxContextSize;
    final statelessConversation = this.statelessConversation;
    return {
      'conversationProfile': ?conversationProfile,
      'latestMessage': ?latestMessage,
      'maxContextSize': ?maxContextSize,
      'statelessConversation': ?statelessConversation,
    };
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation {
  core.List<GoogleCloudDialogflowV2Message>? messages;

  GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation({
    this.messages,
  });

  GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation.fromJson(
    core.Map json_,
  ) : this(
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messages = this.messages;
    return {'messages': ?messages};
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSummaryResponse {
  core.int? contextSize;
  core.String? latestMessage;
  GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary? summary;

  GoogleCloudDialogflowV2GenerateStatelessSummaryResponse({
    this.contextSize,
    this.latestMessage,
    this.summary,
  });

  GoogleCloudDialogflowV2GenerateStatelessSummaryResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        summary: json_.containsKey('summary')
            ? GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary.fromJson(
                json_['summary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    final summary = this.summary;
    return {
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
      'summary': ?summary,
    };
  }
}

class GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary {
  core.String? baselineModelVersion;
  core.String? text;
  core.Map<core.String, core.String>? textSections;

  GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary({
    this.baselineModelVersion,
    this.text,
    this.textSections,
  });

  GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary.fromJson(
    core.Map json_,
  ) : this(
        baselineModelVersion: json_['baselineModelVersion'] as core.String?,
        text: json_['text'] as core.String?,
        textSections:
            (json_['textSections'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baselineModelVersion = this.baselineModelVersion;
    final text = this.text;
    final textSections = this.textSections;
    return {
      'baselineModelVersion': ?baselineModelVersion,
      'text': ?text,
      'textSections': ?textSections,
    };
  }
}

class GoogleCloudDialogflowV2GenerateSuggestionsRequest {
  core.String? latestMessage;
  core.List<core.String>? triggerEvents;

  GoogleCloudDialogflowV2GenerateSuggestionsRequest({
    this.latestMessage,
    this.triggerEvents,
  });

  GoogleCloudDialogflowV2GenerateSuggestionsRequest.fromJson(core.Map json_)
    : this(
        latestMessage: json_['latestMessage'] as core.String?,
        triggerEvents: (json_['triggerEvents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latestMessage = this.latestMessage;
    final triggerEvents = this.triggerEvents;
    return {'latestMessage': ?latestMessage, 'triggerEvents': ?triggerEvents};
  }
}

class GoogleCloudDialogflowV2GenerateSuggestionsResponse {
  core.List<
    GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer
  >?
  generatorSuggestionAnswers;
  core.String? latestMessage;

  GoogleCloudDialogflowV2GenerateSuggestionsResponse({
    this.generatorSuggestionAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2GenerateSuggestionsResponse.fromJson(core.Map json_)
    : this(
        generatorSuggestionAnswers:
            (json_['generatorSuggestionAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generatorSuggestionAnswers = this.generatorSuggestionAnswers;
    final latestMessage = this.latestMessage;
    return {
      'generatorSuggestionAnswers': ?generatorSuggestionAnswers,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer {
  core.String? answerRecord;
  GoogleCloudDialogflowV2GeneratorSuggestion? generatorSuggestion;
  core.String? sourceGenerator;

  GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer({
    this.answerRecord,
    this.generatorSuggestion,
    this.sourceGenerator,
  });

  GoogleCloudDialogflowV2GenerateSuggestionsResponseGeneratorSuggestionAnswer.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        generatorSuggestion: json_.containsKey('generatorSuggestion')
            ? GoogleCloudDialogflowV2GeneratorSuggestion.fromJson(
                json_['generatorSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceGenerator: json_['sourceGenerator'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final generatorSuggestion = this.generatorSuggestion;
    final sourceGenerator = this.sourceGenerator;
    return {
      'answerRecord': ?answerRecord,
      'generatorSuggestion': ?generatorSuggestion,
      'sourceGenerator': ?sourceGenerator,
    };
  }
}

class GoogleCloudDialogflowV2Generator {
  GoogleCloudDialogflowV2AgentCoachingContext? agentCoachingContext;
  core.String? createTime;
  core.String? description;
  GoogleCloudDialogflowV2FreeFormContext? freeFormContext;
  GoogleCloudDialogflowV2InferenceParameter? inferenceParameter;
  core.String? name;
  core.String? publishedModel;
  GoogleCloudDialogflowV2SuggestionDedupingConfig? suggestionDedupingConfig;
  GoogleCloudDialogflowV2SummarizationContext? summarizationContext;
  core.List<core.String>? tools;

  ///
  /// Possible string values are:
  /// - "TRIGGER_EVENT_UNSPECIFIED"
  /// - "END_OF_UTTERANCE"
  /// - "MANUAL_CALL"
  /// - "CUSTOMER_MESSAGE"
  /// - "AGENT_MESSAGE"
  core.String? triggerEvent;
  core.String? updateTime;

  GoogleCloudDialogflowV2Generator({
    this.agentCoachingContext,
    this.createTime,
    this.description,
    this.freeFormContext,
    this.inferenceParameter,
    this.name,
    this.publishedModel,
    this.suggestionDedupingConfig,
    this.summarizationContext,
    this.tools,
    this.triggerEvent,
    this.updateTime,
  });

  GoogleCloudDialogflowV2Generator.fromJson(core.Map json_)
    : this(
        agentCoachingContext: json_.containsKey('agentCoachingContext')
            ? GoogleCloudDialogflowV2AgentCoachingContext.fromJson(
                json_['agentCoachingContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        freeFormContext: json_.containsKey('freeFormContext')
            ? GoogleCloudDialogflowV2FreeFormContext.fromJson(
                json_['freeFormContext'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inferenceParameter: json_.containsKey('inferenceParameter')
            ? GoogleCloudDialogflowV2InferenceParameter.fromJson(
                json_['inferenceParameter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        publishedModel: json_['publishedModel'] as core.String?,
        suggestionDedupingConfig: json_.containsKey('suggestionDedupingConfig')
            ? GoogleCloudDialogflowV2SuggestionDedupingConfig.fromJson(
                json_['suggestionDedupingConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        summarizationContext: json_.containsKey('summarizationContext')
            ? GoogleCloudDialogflowV2SummarizationContext.fromJson(
                json_['summarizationContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tools: (json_['tools'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        triggerEvent: json_['triggerEvent'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentCoachingContext = this.agentCoachingContext;
    final createTime = this.createTime;
    final description = this.description;
    final freeFormContext = this.freeFormContext;
    final inferenceParameter = this.inferenceParameter;
    final name = this.name;
    final publishedModel = this.publishedModel;
    final suggestionDedupingConfig = this.suggestionDedupingConfig;
    final summarizationContext = this.summarizationContext;
    final tools = this.tools;
    final triggerEvent = this.triggerEvent;
    final updateTime = this.updateTime;
    return {
      'agentCoachingContext': ?agentCoachingContext,
      'createTime': ?createTime,
      'description': ?description,
      'freeFormContext': ?freeFormContext,
      'inferenceParameter': ?inferenceParameter,
      'name': ?name,
      'publishedModel': ?publishedModel,
      'suggestionDedupingConfig': ?suggestionDedupingConfig,
      'summarizationContext': ?summarizationContext,
      'tools': ?tools,
      'triggerEvent': ?triggerEvent,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorEvaluation {
  core.String? completeTime;
  core.String? createTime;
  core.String? displayName;
  GoogleCloudDialogflowV2EvaluationStatus? evaluationStatus;
  GoogleCloudDialogflowV2GeneratorEvaluationConfig? generatorEvaluationConfig;
  GoogleCloudDialogflowV2Generator? initialGenerator;
  core.String? name;
  core.bool? satisfiesPzi;
  core.bool? satisfiesPzs;
  GoogleCloudDialogflowV2SummarizationEvaluationMetrics? summarizationMetrics;

  GoogleCloudDialogflowV2GeneratorEvaluation({
    this.completeTime,
    this.createTime,
    this.displayName,
    this.evaluationStatus,
    this.generatorEvaluationConfig,
    this.initialGenerator,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.summarizationMetrics,
  });

  GoogleCloudDialogflowV2GeneratorEvaluation.fromJson(core.Map json_)
    : this(
        completeTime: json_['completeTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        evaluationStatus: json_.containsKey('evaluationStatus')
            ? GoogleCloudDialogflowV2EvaluationStatus.fromJson(
                json_['evaluationStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        generatorEvaluationConfig:
            json_.containsKey('generatorEvaluationConfig')
            ? GoogleCloudDialogflowV2GeneratorEvaluationConfig.fromJson(
                json_['generatorEvaluationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        initialGenerator: json_.containsKey('initialGenerator')
            ? GoogleCloudDialogflowV2Generator.fromJson(
                json_['initialGenerator']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        summarizationMetrics: json_.containsKey('summarizationMetrics')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetrics.fromJson(
                json_['summarizationMetrics']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final completeTime = this.completeTime;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final evaluationStatus = this.evaluationStatus;
    final generatorEvaluationConfig = this.generatorEvaluationConfig;
    final initialGenerator = this.initialGenerator;
    final name = this.name;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final summarizationMetrics = this.summarizationMetrics;
    return {
      'completeTime': ?completeTime,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'evaluationStatus': ?evaluationStatus,
      'generatorEvaluationConfig': ?generatorEvaluationConfig,
      'initialGenerator': ?initialGenerator,
      'name': ?name,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'summarizationMetrics': ?summarizationMetrics,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorEvaluationConfig {
  GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig?
  inputDataConfig;
  core.String? outputGcsBucketPath;
  GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig?
  summarizationConfig;

  GoogleCloudDialogflowV2GeneratorEvaluationConfig({
    this.inputDataConfig,
    this.outputGcsBucketPath,
    this.summarizationConfig,
  });

  GoogleCloudDialogflowV2GeneratorEvaluationConfig.fromJson(core.Map json_)
    : this(
        inputDataConfig: json_.containsKey('inputDataConfig')
            ? GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig.fromJson(
                json_['inputDataConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outputGcsBucketPath: json_['outputGcsBucketPath'] as core.String?,
        summarizationConfig: json_.containsKey('summarizationConfig')
            ? GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig.fromJson(
                json_['summarizationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputDataConfig = this.inputDataConfig;
    final outputGcsBucketPath = this.outputGcsBucketPath;
    final summarizationConfig = this.summarizationConfig;
    return {
      'inputDataConfig': ?inputDataConfig,
      'outputGcsBucketPath': ?outputGcsBucketPath,
      'summarizationConfig': ?summarizationConfig,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig {
  core.String? endTime;
  core.String? startTime;

  GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig({
    this.endTime,
    this.startTime,
  });

  GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig.fromJson(
    core.Map json_,
  ) : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final startTime = this.startTime;
    return {'endTime': ?endTime, 'startTime': ?startTime};
  }
}

typedef GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig =
    $Shared17;

class GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig {
  GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig?
  agentAssistInputDataConfig;
  GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig?
  datasetInputDataConfig;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? endTime;

  ///
  /// Possible string values are:
  /// - "INPUT_DATA_SOURCE_TYPE_UNSPECIFIED"
  /// - "AGENT_ASSIST_CONVERSATIONS"
  /// - "INSIGHTS_CONVERSATIONS"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? inputDataSourceType;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isSummaryGenerationAllowed;
  core.int? sampleSize;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? startTime;

  ///
  /// Possible string values are:
  /// - "SUMMARY_GENERATION_OPTION_UNSPECIFIED"
  /// - "ALWAYS_GENERATE"
  /// - "GENERATE_IF_MISSING"
  /// - "DO_NOT_GENERATE"
  core.String? summaryGenerationOption;

  GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig({
    this.agentAssistInputDataConfig,
    this.datasetInputDataConfig,
    this.endTime,
    this.inputDataSourceType,
    this.isSummaryGenerationAllowed,
    this.sampleSize,
    this.startTime,
    this.summaryGenerationOption,
  });

  GoogleCloudDialogflowV2GeneratorEvaluationConfigInputDataConfig.fromJson(
    core.Map json_,
  ) : this(
        agentAssistInputDataConfig:
            json_.containsKey('agentAssistInputDataConfig')
            ? GoogleCloudDialogflowV2GeneratorEvaluationConfigAgentAssistInputDataConfig.fromJson(
                json_['agentAssistInputDataConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        datasetInputDataConfig: json_.containsKey('datasetInputDataConfig')
            ? GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig.fromJson(
                json_['datasetInputDataConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        endTime: json_['endTime'] as core.String?,
        inputDataSourceType: json_['inputDataSourceType'] as core.String?,
        isSummaryGenerationAllowed:
            json_['isSummaryGenerationAllowed'] as core.bool?,
        sampleSize: json_['sampleSize'] as core.int?,
        startTime: json_['startTime'] as core.String?,
        summaryGenerationOption:
            json_['summaryGenerationOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentAssistInputDataConfig = this.agentAssistInputDataConfig;
    final datasetInputDataConfig = this.datasetInputDataConfig;
    final endTime = this.endTime;
    final inputDataSourceType = this.inputDataSourceType;
    final isSummaryGenerationAllowed = this.isSummaryGenerationAllowed;
    final sampleSize = this.sampleSize;
    final startTime = this.startTime;
    final summaryGenerationOption = this.summaryGenerationOption;
    return {
      'agentAssistInputDataConfig': ?agentAssistInputDataConfig,
      'datasetInputDataConfig': ?datasetInputDataConfig,
      'endTime': ?endTime,
      'inputDataSourceType': ?inputDataSourceType,
      'isSummaryGenerationAllowed': ?isSummaryGenerationAllowed,
      'sampleSize': ?sampleSize,
      'startTime': ?startTime,
      'summaryGenerationOption': ?summaryGenerationOption,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? accuracyEvaluationVersion;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? completenessEvaluationVersion;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enableAccuracyEvaluation;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enableCompletenessEvaluation;
  core.String? evaluatorVersion;

  GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig({
    this.accuracyEvaluationVersion,
    this.completenessEvaluationVersion,
    this.enableAccuracyEvaluation,
    this.enableCompletenessEvaluation,
    this.evaluatorVersion,
  });

  GoogleCloudDialogflowV2GeneratorEvaluationConfigSummarizationConfig.fromJson(
    core.Map json_,
  ) : this(
        accuracyEvaluationVersion:
            json_['accuracyEvaluationVersion'] as core.String?,
        completenessEvaluationVersion:
            json_['completenessEvaluationVersion'] as core.String?,
        enableAccuracyEvaluation:
            json_['enableAccuracyEvaluation'] as core.bool?,
        enableCompletenessEvaluation:
            json_['enableCompletenessEvaluation'] as core.bool?,
        evaluatorVersion: json_['evaluatorVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accuracyEvaluationVersion = this.accuracyEvaluationVersion;
    final completenessEvaluationVersion = this.completenessEvaluationVersion;
    final enableAccuracyEvaluation = this.enableAccuracyEvaluation;
    final enableCompletenessEvaluation = this.enableCompletenessEvaluation;
    final evaluatorVersion = this.evaluatorVersion;
    return {
      'accuracyEvaluationVersion': ?accuracyEvaluationVersion,
      'completenessEvaluationVersion': ?completenessEvaluationVersion,
      'enableAccuracyEvaluation': ?enableAccuracyEvaluation,
      'enableCompletenessEvaluation': ?enableCompletenessEvaluation,
      'evaluatorVersion': ?evaluatorVersion,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorSuggestion {
  GoogleCloudDialogflowV2AgentCoachingSuggestion? agentCoachingSuggestion;
  GoogleCloudDialogflowV2FreeFormSuggestion? freeFormSuggestion;
  GoogleCloudDialogflowV2SummarySuggestion? summarySuggestion;
  core.List<GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo>?
  toolCallInfo;

  GoogleCloudDialogflowV2GeneratorSuggestion({
    this.agentCoachingSuggestion,
    this.freeFormSuggestion,
    this.summarySuggestion,
    this.toolCallInfo,
  });

  GoogleCloudDialogflowV2GeneratorSuggestion.fromJson(core.Map json_)
    : this(
        agentCoachingSuggestion: json_.containsKey('agentCoachingSuggestion')
            ? GoogleCloudDialogflowV2AgentCoachingSuggestion.fromJson(
                json_['agentCoachingSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        freeFormSuggestion: json_.containsKey('freeFormSuggestion')
            ? GoogleCloudDialogflowV2FreeFormSuggestion.fromJson(
                json_['freeFormSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        summarySuggestion: json_.containsKey('summarySuggestion')
            ? GoogleCloudDialogflowV2SummarySuggestion.fromJson(
                json_['summarySuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolCallInfo: (json_['toolCallInfo'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentCoachingSuggestion = this.agentCoachingSuggestion;
    final freeFormSuggestion = this.freeFormSuggestion;
    final summarySuggestion = this.summarySuggestion;
    final toolCallInfo = this.toolCallInfo;
    return {
      'agentCoachingSuggestion': ?agentCoachingSuggestion,
      'freeFormSuggestion': ?freeFormSuggestion,
      'summarySuggestion': ?summarySuggestion,
      'toolCallInfo': ?toolCallInfo,
    };
  }
}

class GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo {
  GoogleCloudDialogflowV2ToolCall? toolCall;
  GoogleCloudDialogflowV2ToolCallResult? toolCallResult;

  GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo({
    this.toolCall,
    this.toolCallResult,
  });

  GoogleCloudDialogflowV2GeneratorSuggestionToolCallInfo.fromJson(
    core.Map json_,
  ) : this(
        toolCall: json_.containsKey('toolCall')
            ? GoogleCloudDialogflowV2ToolCall.fromJson(
                json_['toolCall'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolCallResult: json_.containsKey('toolCallResult')
            ? GoogleCloudDialogflowV2ToolCallResult.fromJson(
                json_['toolCallResult'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolCall = this.toolCall;
    final toolCallResult = this.toolCallResult;
    return {'toolCall': ?toolCall, 'toolCallResult': ?toolCallResult};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfig {
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig?
  endUserSuggestionConfig;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig?
  humanAgentSuggestionConfig;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig?
  messageAnalysisConfig;
  GoogleCloudDialogflowV2NotificationConfig? notificationConfig;

  GoogleCloudDialogflowV2HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromJson(core.Map json_)
    : this(
        endUserSuggestionConfig: json_.containsKey('endUserSuggestionConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromJson(
                json_['endUserSuggestionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        humanAgentSuggestionConfig:
            json_.containsKey('humanAgentSuggestionConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromJson(
                json_['humanAgentSuggestionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        messageAnalysisConfig: json_.containsKey('messageAnalysisConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig.fromJson(
                json_['messageAnalysisConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        notificationConfig: json_.containsKey('notificationConfig')
            ? GoogleCloudDialogflowV2NotificationConfig.fromJson(
                json_['notificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endUserSuggestionConfig = this.endUserSuggestionConfig;
    final humanAgentSuggestionConfig = this.humanAgentSuggestionConfig;
    final messageAnalysisConfig = this.messageAnalysisConfig;
    final notificationConfig = this.notificationConfig;
    return {
      'endUserSuggestionConfig': ?endUserSuggestionConfig,
      'humanAgentSuggestionConfig': ?humanAgentSuggestionConfig,
      'messageAnalysisConfig': ?messageAnalysisConfig,
      'notificationConfig': ?notificationConfig,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig {
  core.String? baselineModelVersion;
  core.String? model;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig({
    this.baselineModelVersion,
    this.model,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig.fromJson(
    core.Map json_,
  ) : this(
        baselineModelVersion: json_['baselineModelVersion'] as core.String?,
        model: json_['model'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baselineModelVersion = this.baselineModelVersion;
    final model = this.model;
    return {'baselineModelVersion': ?baselineModelVersion, 'model': ?model};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig {
  core.int? recentSentencesCount;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig.fromJson(
    core.Map json_,
  ) : this(recentSentencesCount: json_['recentSentencesCount'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final recentSentencesCount = this.recentSentencesCount;
    return {'recentSentencesCount': ?recentSentencesCount};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig {
  core.bool? enableEntityExtraction;
  core.bool? enableSentimentAnalysis;
  core.bool? enableSentimentAnalysisV3;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig({
    this.enableEntityExtraction,
    this.enableSentimentAnalysis,
    this.enableSentimentAnalysisV3,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig.fromJson(
    core.Map json_,
  ) : this(
        enableEntityExtraction: json_['enableEntityExtraction'] as core.bool?,
        enableSentimentAnalysis: json_['enableSentimentAnalysis'] as core.bool?,
        enableSentimentAnalysisV3:
            json_['enableSentimentAnalysisV3'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableEntityExtraction = this.enableEntityExtraction;
    final enableSentimentAnalysis = this.enableSentimentAnalysis;
    final enableSentimentAnalysisV3 = this.enableSentimentAnalysisV3;
    return {
      'enableEntityExtraction': ?enableEntityExtraction,
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
      'enableSentimentAnalysisV3': ?enableSentimentAnalysisV3,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig {
  core.bool? disableHighLatencyFeaturesSyncDelivery;
  core.bool? enableAsyncToolCall;
  core.List<
    GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
  >?
  featureConfigs;
  core.List<core.String>? generators;
  core.bool? groupSuggestionResponses;
  core.bool? skipEmptyEventBasedSuggestion;
  core.bool? useUnredactedConversationData;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.enableAsyncToolCall,
    this.featureConfigs,
    this.generators,
    this.groupSuggestionResponses,
    this.skipEmptyEventBasedSuggestion,
    this.useUnredactedConversationData,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromJson(
    core.Map json_,
  ) : this(
        disableHighLatencyFeaturesSyncDelivery:
            json_['disableHighLatencyFeaturesSyncDelivery'] as core.bool?,
        enableAsyncToolCall: json_['enableAsyncToolCall'] as core.bool?,
        featureConfigs: (json_['featureConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        generators: (json_['generators'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        groupSuggestionResponses:
            json_['groupSuggestionResponses'] as core.bool?,
        skipEmptyEventBasedSuggestion:
            json_['skipEmptyEventBasedSuggestion'] as core.bool?,
        useUnredactedConversationData:
            json_['useUnredactedConversationData'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disableHighLatencyFeaturesSyncDelivery =
        this.disableHighLatencyFeaturesSyncDelivery;
    final enableAsyncToolCall = this.enableAsyncToolCall;
    final featureConfigs = this.featureConfigs;
    final generators = this.generators;
    final groupSuggestionResponses = this.groupSuggestionResponses;
    final skipEmptyEventBasedSuggestion = this.skipEmptyEventBasedSuggestion;
    final useUnredactedConversationData = this.useUnredactedConversationData;
    return {
      'disableHighLatencyFeaturesSyncDelivery':
          ?disableHighLatencyFeaturesSyncDelivery,
      'enableAsyncToolCall': ?enableAsyncToolCall,
      'featureConfigs': ?featureConfigs,
      'generators': ?generators,
      'groupSuggestionResponses': ?groupSuggestionResponses,
      'skipEmptyEventBasedSuggestion': ?skipEmptyEventBasedSuggestion,
      'useUnredactedConversationData': ?useUnredactedConversationData,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig {
  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig?
  conversationModelConfig;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig?
  conversationProcessConfig;
  core.bool? disableAgentQueryLogging;
  core.bool? enableConversationAugmentedQuery;
  core.bool? enableEventBasedSuggestion;
  core.bool? enableQuerySuggestionOnly;
  core.bool? enableQuerySuggestionWhenNoAnswer;
  core.bool? enableResponseDebugInfo;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig?
  queryConfig;
  GoogleCloudDialogflowV2RaiSettings? raiSettings;
  GoogleCloudDialogflowV2SuggestionFeature? suggestionFeature;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings?
  suggestionTriggerSettings;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
    this.enableResponseDebugInfo,
    this.queryConfig,
    this.raiSettings,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
    core.Map json_,
  ) : this(
        conversationModelConfig: json_.containsKey('conversationModelConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig.fromJson(
                json_['conversationModelConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        conversationProcessConfig:
            json_.containsKey('conversationProcessConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig.fromJson(
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
        enableResponseDebugInfo: json_['enableResponseDebugInfo'] as core.bool?,
        queryConfig: json_.containsKey('queryConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.fromJson(
                json_['queryConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        raiSettings: json_.containsKey('raiSettings')
            ? GoogleCloudDialogflowV2RaiSettings.fromJson(
                json_['raiSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestionFeature: json_.containsKey('suggestionFeature')
            ? GoogleCloudDialogflowV2SuggestionFeature.fromJson(
                json_['suggestionFeature']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestionTriggerSettings:
            json_.containsKey('suggestionTriggerSettings')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromJson(
                json_['suggestionTriggerSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationModelConfig = this.conversationModelConfig;
    final conversationProcessConfig = this.conversationProcessConfig;
    final disableAgentQueryLogging = this.disableAgentQueryLogging;
    final enableConversationAugmentedQuery =
        this.enableConversationAugmentedQuery;
    final enableEventBasedSuggestion = this.enableEventBasedSuggestion;
    final enableQuerySuggestionOnly = this.enableQuerySuggestionOnly;
    final enableQuerySuggestionWhenNoAnswer =
        this.enableQuerySuggestionWhenNoAnswer;
    final enableResponseDebugInfo = this.enableResponseDebugInfo;
    final queryConfig = this.queryConfig;
    final raiSettings = this.raiSettings;
    final suggestionFeature = this.suggestionFeature;
    final suggestionTriggerSettings = this.suggestionTriggerSettings;
    return {
      'conversationModelConfig': ?conversationModelConfig,
      'conversationProcessConfig': ?conversationProcessConfig,
      'disableAgentQueryLogging': ?disableAgentQueryLogging,
      'enableConversationAugmentedQuery': ?enableConversationAugmentedQuery,
      'enableEventBasedSuggestion': ?enableEventBasedSuggestion,
      'enableQuerySuggestionOnly': ?enableQuerySuggestionOnly,
      'enableQuerySuggestionWhenNoAnswer': ?enableQuerySuggestionWhenNoAnswer,
      'enableResponseDebugInfo': ?enableResponseDebugInfo,
      'queryConfig': ?queryConfig,
      'raiSettings': ?raiSettings,
      'suggestionFeature': ?suggestionFeature,
      'suggestionTriggerSettings': ?suggestionTriggerSettings,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig {
  core.double? confidenceThreshold;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings?
  contextFilterSettings;
  core.int? contextSize;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource?
  dialogflowQuerySource;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource?
  documentQuerySource;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource?
  knowledgeBaseQuerySource;
  core.int? maxResults;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections?
  sections;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.contextSize,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
    this.sections,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.fromJson(
    core.Map json_,
  ) : this(
        confidenceThreshold: (json_['confidenceThreshold'] as core.num?)
            ?.toDouble(),
        contextFilterSettings: json_.containsKey('contextFilterSettings')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.fromJson(
                json_['contextFilterSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextSize: json_['contextSize'] as core.int?,
        dialogflowQuerySource: json_.containsKey('dialogflowQuerySource')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromJson(
                json_['dialogflowQuerySource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        documentQuerySource: json_.containsKey('documentQuerySource')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromJson(
                json_['documentQuerySource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeBaseQuerySource: json_.containsKey('knowledgeBaseQuerySource')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromJson(
                json_['knowledgeBaseQuerySource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxResults: json_['maxResults'] as core.int?,
        sections: json_.containsKey('sections')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections.fromJson(
                json_['sections'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidenceThreshold = this.confidenceThreshold;
    final contextFilterSettings = this.contextFilterSettings;
    final contextSize = this.contextSize;
    final dialogflowQuerySource = this.dialogflowQuerySource;
    final documentQuerySource = this.documentQuerySource;
    final knowledgeBaseQuerySource = this.knowledgeBaseQuerySource;
    final maxResults = this.maxResults;
    final sections = this.sections;
    return {
      'confidenceThreshold': ?confidenceThreshold,
      'contextFilterSettings': ?contextFilterSettings,
      'contextSize': ?contextSize,
      'dialogflowQuerySource': ?dialogflowQuerySource,
      'documentQuerySource': ?documentQuerySource,
      'knowledgeBaseQuerySource': ?knowledgeBaseQuerySource,
      'maxResults': ?maxResults,
      'sections': ?sections,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings {
  core.bool? dropHandoffMessages;
  core.bool? dropIvrMessages;
  core.bool? dropVirtualAgentMessages;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings({
    this.dropHandoffMessages,
    this.dropIvrMessages,
    this.dropVirtualAgentMessages,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.fromJson(
    core.Map json_,
  ) : this(
        dropHandoffMessages: json_['dropHandoffMessages'] as core.bool?,
        dropIvrMessages: json_['dropIvrMessages'] as core.bool?,
        dropVirtualAgentMessages:
            json_['dropVirtualAgentMessages'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dropHandoffMessages = this.dropHandoffMessages;
    final dropIvrMessages = this.dropIvrMessages;
    final dropVirtualAgentMessages = this.dropVirtualAgentMessages;
    return {
      'dropHandoffMessages': ?dropHandoffMessages,
      'dropIvrMessages': ?dropIvrMessages,
      'dropVirtualAgentMessages': ?dropVirtualAgentMessages,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  core.String? agent;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig?
  humanAgentSideConfig;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
    this.agent,
    this.humanAgentSideConfig,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromJson(
    core.Map json_,
  ) : this(
        agent: json_['agent'] as core.String?,
        humanAgentSideConfig: json_.containsKey('humanAgentSideConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromJson(
                json_['humanAgentSideConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    final humanAgentSideConfig = this.humanAgentSideConfig;
    return {'agent': ?agent, 'humanAgentSideConfig': ?humanAgentSideConfig};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig {
  core.String? agent;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig({
    this.agent,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromJson(
    core.Map json_,
  ) : this(agent: json_['agent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final agent = this.agent;
    return {'agent': ?agent};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource {
  core.List<core.String>? documents;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource({
    this.documents,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromJson(
    core.Map json_,
  ) : this(
        documents: (json_['documents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    return {'documents': ?documents};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource {
  core.List<core.String>? knowledgeBases;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource({
    this.knowledgeBases,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromJson(
    core.Map json_,
  ) : this(
        knowledgeBases: (json_['knowledgeBases'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final knowledgeBases = this.knowledgeBases;
    return {'knowledgeBases': ?knowledgeBases};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections {
  core.List<core.String>? sectionTypes;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections({
    this.sectionTypes,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigSections.fromJson(
    core.Map json_,
  ) : this(
        sectionTypes: (json_['sectionTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sectionTypes = this.sectionTypes;
    return {'sectionTypes': ?sectionTypes};
  }
}

class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings {
  core.bool? noSmalltalk;
  core.bool? onlyEndUser;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmalltalk,
    this.onlyEndUser,
  });

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromJson(
    core.Map json_,
  ) : this(
        noSmalltalk: json_['noSmalltalk'] as core.bool?,
        onlyEndUser: json_['onlyEndUser'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final noSmalltalk = this.noSmalltalk;
    final onlyEndUser = this.onlyEndUser;
    return {'noSmalltalk': ?noSmalltalk, 'onlyEndUser': ?onlyEndUser};
  }
}

class GoogleCloudDialogflowV2HumanAgentHandoffConfig {
  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig?
  livePersonConfig;
  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig?
  salesforceLiveAgentConfig;

  GoogleCloudDialogflowV2HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromJson(core.Map json_)
    : this(
        livePersonConfig: json_.containsKey('livePersonConfig')
            ? GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig.fromJson(
                json_['livePersonConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        salesforceLiveAgentConfig:
            json_.containsKey('salesforceLiveAgentConfig')
            ? GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromJson(
                json_['salesforceLiveAgentConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final livePersonConfig = this.livePersonConfig;
    final salesforceLiveAgentConfig = this.salesforceLiveAgentConfig;
    return {
      'livePersonConfig': ?livePersonConfig,
      'salesforceLiveAgentConfig': ?salesforceLiveAgentConfig,
    };
  }
}

class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig {
  core.String? accountNumber;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig({
    this.accountNumber,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig.fromJson(
    core.Map json_,
  ) : this(accountNumber: json_['accountNumber'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final accountNumber = this.accountNumber;
    return {'accountNumber': ?accountNumber};
  }
}

class GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig {
  core.String? buttonId;
  core.String? deploymentId;
  core.String? endpointDomain;
  core.String? organizationId;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig({
    this.buttonId,
    this.deploymentId,
    this.endpointDomain,
    this.organizationId,
  });

  GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromJson(
    core.Map json_,
  ) : this(
        buttonId: json_['buttonId'] as core.String?,
        deploymentId: json_['deploymentId'] as core.String?,
        endpointDomain: json_['endpointDomain'] as core.String?,
        organizationId: json_['organizationId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buttonId = this.buttonId;
    final deploymentId = this.deploymentId;
    final endpointDomain = this.endpointDomain;
    final organizationId = this.organizationId;
    return {
      'buttonId': ?buttonId,
      'deploymentId': ?deploymentId,
      'endpointDomain': ?endpointDomain,
      'organizationId': ?organizationId,
    };
  }
}

typedef GoogleCloudDialogflowV2ImportAgentRequest = $AgentRequest;

class GoogleCloudDialogflowV2ImportConversationDataRequest {
  GoogleCloudDialogflowV2InputConfig? inputConfig;

  GoogleCloudDialogflowV2ImportConversationDataRequest({this.inputConfig});

  GoogleCloudDialogflowV2ImportConversationDataRequest.fromJson(core.Map json_)
    : this(
        inputConfig: json_.containsKey('inputConfig')
            ? GoogleCloudDialogflowV2InputConfig.fromJson(
                json_['inputConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputConfig = this.inputConfig;
    return {'inputConfig': ?inputConfig};
  }
}

class GoogleCloudDialogflowV2ImportDocumentTemplate {
  core.List<core.String>? knowledgeTypes;
  core.Map<core.String, core.String>? metadata;
  core.String? mimeType;

  GoogleCloudDialogflowV2ImportDocumentTemplate({
    this.knowledgeTypes,
    this.metadata,
    this.mimeType,
  });

  GoogleCloudDialogflowV2ImportDocumentTemplate.fromJson(core.Map json_)
    : this(
        knowledgeTypes: (json_['knowledgeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final knowledgeTypes = this.knowledgeTypes;
    final metadata = this.metadata;
    final mimeType = this.mimeType;
    return {
      'knowledgeTypes': ?knowledgeTypes,
      'metadata': ?metadata,
      'mimeType': ?mimeType,
    };
  }
}

class GoogleCloudDialogflowV2ImportDocumentsRequest {
  GoogleCloudDialogflowV2ImportDocumentTemplate? documentTemplate;
  GoogleCloudDialogflowV2GcsSources? gcsSource;
  core.bool? importGcsCustomMetadata;

  GoogleCloudDialogflowV2ImportDocumentsRequest({
    this.documentTemplate,
    this.gcsSource,
    this.importGcsCustomMetadata,
  });

  GoogleCloudDialogflowV2ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        documentTemplate: json_.containsKey('documentTemplate')
            ? GoogleCloudDialogflowV2ImportDocumentTemplate.fromJson(
                json_['documentTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gcsSource: json_.containsKey('gcsSource')
            ? GoogleCloudDialogflowV2GcsSources.fromJson(
                json_['gcsSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        importGcsCustomMetadata: json_['importGcsCustomMetadata'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentTemplate = this.documentTemplate;
    final gcsSource = this.gcsSource;
    final importGcsCustomMetadata = this.importGcsCustomMetadata;
    return {
      'documentTemplate': ?documentTemplate,
      'gcsSource': ?gcsSource,
      'importGcsCustomMetadata': ?importGcsCustomMetadata,
    };
  }
}

class GoogleCloudDialogflowV2InferenceParameter {
  core.int? maxOutputTokens;
  core.double? temperature;
  core.int? topK;
  core.double? topP;

  GoogleCloudDialogflowV2InferenceParameter({
    this.maxOutputTokens,
    this.temperature,
    this.topK,
    this.topP,
  });

  GoogleCloudDialogflowV2InferenceParameter.fromJson(core.Map json_)
    : this(
        maxOutputTokens: json_['maxOutputTokens'] as core.int?,
        temperature: (json_['temperature'] as core.num?)?.toDouble(),
        topK: json_['topK'] as core.int?,
        topP: (json_['topP'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxOutputTokens = this.maxOutputTokens;
    final temperature = this.temperature;
    final topK = this.topK;
    final topP = this.topP;
    return {
      'maxOutputTokens': ?maxOutputTokens,
      'temperature': ?temperature,
      'topK': ?topK,
      'topP': ?topP,
    };
  }
}

class GoogleCloudDialogflowV2IngestContextReferencesRequest {
  core.Map<core.String, GoogleCloudDialogflowV2ConversationContextReference>?
  contextReferences;

  GoogleCloudDialogflowV2IngestContextReferencesRequest({
    this.contextReferences,
  });

  GoogleCloudDialogflowV2IngestContextReferencesRequest.fromJson(core.Map json_)
    : this(
        contextReferences:
            (json_['contextReferences'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2ConversationContextReference.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextReferences = this.contextReferences;
    return {'contextReferences': ?contextReferences};
  }
}

class GoogleCloudDialogflowV2IngestContextReferencesResponse {
  core.Map<core.String, GoogleCloudDialogflowV2ConversationContextReference>?
  ingestedContextReferences;

  GoogleCloudDialogflowV2IngestContextReferencesResponse({
    this.ingestedContextReferences,
  });

  GoogleCloudDialogflowV2IngestContextReferencesResponse.fromJson(
    core.Map json_,
  ) : this(
        ingestedContextReferences:
            (json_['ingestedContextReferences']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2ConversationContextReference.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ingestedContextReferences = this.ingestedContextReferences;
    return {'ingestedContextReferences': ?ingestedContextReferences};
  }
}

class GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo {
  core.bool? contextReferenceRetrieved;
  core.List<
    GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo
  >?
  ingestedParametersDebugInfo;
  core.bool? projectNotAllowlisted;

  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo({
    this.contextReferenceRetrieved,
    this.ingestedParametersDebugInfo,
    this.projectNotAllowlisted,
  });

  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo.fromJson(
    core.Map json_,
  ) : this(
        contextReferenceRetrieved:
            json_['contextReferenceRetrieved'] as core.bool?,
        ingestedParametersDebugInfo:
            (json_['ingestedParametersDebugInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        projectNotAllowlisted: json_['projectNotAllowlisted'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextReferenceRetrieved = this.contextReferenceRetrieved;
    final ingestedParametersDebugInfo = this.ingestedParametersDebugInfo;
    final projectNotAllowlisted = this.projectNotAllowlisted;
    return {
      'contextReferenceRetrieved': ?contextReferenceRetrieved,
      'ingestedParametersDebugInfo': ?ingestedParametersDebugInfo,
      'projectNotAllowlisted': ?projectNotAllowlisted,
    };
  }
}

class GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo {
  ///
  /// Possible string values are:
  /// - "INGESTION_STATUS_UNSPECIFIED"
  /// - "INGESTION_STATUS_SUCCEEDED"
  /// - "INGESTION_STATUS_CONTEXT_NOT_AVAILABLE"
  /// - "INGESTION_STATUS_PARSE_FAILED"
  /// - "INGESTION_STATUS_INVALID_ENTRY"
  /// - "INGESTION_STATUS_INVALID_FORMAT"
  /// - "INGESTION_STATUS_LANGUAGE_MISMATCH"
  core.String? ingestionStatus;
  core.String? parameter;

  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo({
    this.ingestionStatus,
    this.parameter,
  });

  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfoIngestedParameterDebugInfo.fromJson(
    core.Map json_,
  ) : this(
        ingestionStatus: json_['ingestionStatus'] as core.String?,
        parameter: json_['parameter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ingestionStatus = this.ingestionStatus;
    final parameter = this.parameter;
    return {'ingestionStatus': ?ingestionStatus, 'parameter': ?parameter};
  }
}

class GoogleCloudDialogflowV2InitializeEncryptionSpecRequest {
  GoogleCloudDialogflowV2EncryptionSpec? encryptionSpec;

  GoogleCloudDialogflowV2InitializeEncryptionSpecRequest({this.encryptionSpec});

  GoogleCloudDialogflowV2InitializeEncryptionSpecRequest.fromJson(
    core.Map json_,
  ) : this(
        encryptionSpec: json_.containsKey('encryptionSpec')
            ? GoogleCloudDialogflowV2EncryptionSpec.fromJson(
                json_['encryptionSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptionSpec = this.encryptionSpec;
    return {'encryptionSpec': ?encryptionSpec};
  }
}

class GoogleCloudDialogflowV2InputAudioConfig {
  ///
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED"
  /// - "AUDIO_ENCODING_LINEAR_16"
  /// - "AUDIO_ENCODING_FLAC"
  /// - "AUDIO_ENCODING_MULAW"
  /// - "AUDIO_ENCODING_AMR"
  /// - "AUDIO_ENCODING_AMR_WB"
  /// - "AUDIO_ENCODING_OGG_OPUS"
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"
  /// - "AUDIO_ENCODING_ALAW"
  core.String? audioEncoding;
  core.bool? disableNoSpeechRecognizedEvent;
  core.bool? enableAutomaticPunctuation;
  core.bool? enableWordInfo;
  core.String? languageCode;
  core.String? model;

  ///
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED"
  /// - "USE_BEST_AVAILABLE"
  /// - "USE_STANDARD"
  /// - "USE_ENHANCED"
  core.String? modelVariant;
  core.bool? optOutConformerModelMigration;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? phraseHints;
  core.List<core.String>? phraseSets;
  core.int? sampleRateHertz;
  core.bool? singleUtterance;
  core.List<GoogleCloudDialogflowV2SpeechContext>? speechContexts;

  GoogleCloudDialogflowV2InputAudioConfig({
    this.audioEncoding,
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

  GoogleCloudDialogflowV2InputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
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
        phraseHints: (json_['phraseHints'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        phraseSets: (json_['phraseSets'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        singleUtterance: json_['singleUtterance'] as core.bool?,
        speechContexts: (json_['speechContexts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SpeechContext.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final disableNoSpeechRecognizedEvent = this.disableNoSpeechRecognizedEvent;
    final enableAutomaticPunctuation = this.enableAutomaticPunctuation;
    final enableWordInfo = this.enableWordInfo;
    final languageCode = this.languageCode;
    final model = this.model;
    final modelVariant = this.modelVariant;
    final optOutConformerModelMigration = this.optOutConformerModelMigration;
    final phraseHints = this.phraseHints;
    final phraseSets = this.phraseSets;
    final sampleRateHertz = this.sampleRateHertz;
    final singleUtterance = this.singleUtterance;
    final speechContexts = this.speechContexts;
    return {
      'audioEncoding': ?audioEncoding,
      'disableNoSpeechRecognizedEvent': ?disableNoSpeechRecognizedEvent,
      'enableAutomaticPunctuation': ?enableAutomaticPunctuation,
      'enableWordInfo': ?enableWordInfo,
      'languageCode': ?languageCode,
      'model': ?model,
      'modelVariant': ?modelVariant,
      'optOutConformerModelMigration': ?optOutConformerModelMigration,
      'phraseHints': ?phraseHints,
      'phraseSets': ?phraseSets,
      'sampleRateHertz': ?sampleRateHertz,
      'singleUtterance': ?singleUtterance,
      'speechContexts': ?speechContexts,
    };
  }
}

class GoogleCloudDialogflowV2InputConfig {
  GoogleCloudDialogflowV2GcsSources? gcsSource;

  GoogleCloudDialogflowV2InputConfig({this.gcsSource});

  GoogleCloudDialogflowV2InputConfig.fromJson(core.Map json_)
    : this(
        gcsSource: json_.containsKey('gcsSource')
            ? GoogleCloudDialogflowV2GcsSources.fromJson(
                json_['gcsSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcsSource = this.gcsSource;
    return {'gcsSource': ?gcsSource};
  }
}

typedef GoogleCloudDialogflowV2InputDataset = $Shared17;

class GoogleCloudDialogflowV2Intent {
  core.String? action;
  core.List<core.String>? defaultResponsePlatforms;
  core.String? displayName;
  core.bool? endInteraction;
  core.List<core.String>? events;
  core.List<GoogleCloudDialogflowV2IntentFollowupIntentInfo>?
  followupIntentInfo;
  core.List<core.String>? inputContextNames;
  core.bool? isFallback;
  core.bool? liveAgentHandoff;
  core.List<GoogleCloudDialogflowV2IntentMessage>? messages;
  core.bool? mlDisabled;
  core.String? name;
  core.List<GoogleCloudDialogflowV2Context>? outputContexts;
  core.List<GoogleCloudDialogflowV2IntentParameter>? parameters;
  core.String? parentFollowupIntentName;
  core.int? priority;
  core.bool? resetContexts;
  core.String? rootFollowupIntentName;
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrase>? trainingPhrases;

  ///
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED"
  /// - "WEBHOOK_STATE_ENABLED"
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"
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

  GoogleCloudDialogflowV2Intent.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        defaultResponsePlatforms:
            (json_['defaultResponsePlatforms'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        endInteraction: json_['endInteraction'] as core.bool?,
        events: (json_['events'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        followupIntentInfo: (json_['followupIntentInfo'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        inputContextNames: (json_['inputContextNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        isFallback: json_['isFallback'] as core.bool?,
        liveAgentHandoff: json_['liveAgentHandoff'] as core.bool?,
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2IntentMessage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mlDisabled: json_['mlDisabled'] as core.bool?,
        name: json_['name'] as core.String?,
        outputContexts: (json_['outputContexts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Context.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2IntentParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parentFollowupIntentName:
            json_['parentFollowupIntentName'] as core.String?,
        priority: json_['priority'] as core.int?,
        resetContexts: json_['resetContexts'] as core.bool?,
        rootFollowupIntentName: json_['rootFollowupIntentName'] as core.String?,
        trainingPhrases: (json_['trainingPhrases'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        webhookState: json_['webhookState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final defaultResponsePlatforms = this.defaultResponsePlatforms;
    final displayName = this.displayName;
    final endInteraction = this.endInteraction;
    final events = this.events;
    final followupIntentInfo = this.followupIntentInfo;
    final inputContextNames = this.inputContextNames;
    final isFallback = this.isFallback;
    final liveAgentHandoff = this.liveAgentHandoff;
    final messages = this.messages;
    final mlDisabled = this.mlDisabled;
    final name = this.name;
    final outputContexts = this.outputContexts;
    final parameters = this.parameters;
    final parentFollowupIntentName = this.parentFollowupIntentName;
    final priority = this.priority;
    final resetContexts = this.resetContexts;
    final rootFollowupIntentName = this.rootFollowupIntentName;
    final trainingPhrases = this.trainingPhrases;
    final webhookState = this.webhookState;
    return {
      'action': ?action,
      'defaultResponsePlatforms': ?defaultResponsePlatforms,
      'displayName': ?displayName,
      'endInteraction': ?endInteraction,
      'events': ?events,
      'followupIntentInfo': ?followupIntentInfo,
      'inputContextNames': ?inputContextNames,
      'isFallback': ?isFallback,
      'liveAgentHandoff': ?liveAgentHandoff,
      'messages': ?messages,
      'mlDisabled': ?mlDisabled,
      'name': ?name,
      'outputContexts': ?outputContexts,
      'parameters': ?parameters,
      'parentFollowupIntentName': ?parentFollowupIntentName,
      'priority': ?priority,
      'resetContexts': ?resetContexts,
      'rootFollowupIntentName': ?rootFollowupIntentName,
      'trainingPhrases': ?trainingPhrases,
      'webhookState': ?webhookState,
    };
  }
}

class GoogleCloudDialogflowV2IntentBatch {
  core.List<GoogleCloudDialogflowV2Intent>? intents;

  GoogleCloudDialogflowV2IntentBatch({this.intents});

  GoogleCloudDialogflowV2IntentBatch.fromJson(core.Map json_)
    : this(
        intents: (json_['intents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Intent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intents = this.intents;
    return {'intents': ?intents};
  }
}

class GoogleCloudDialogflowV2IntentFollowupIntentInfo {
  core.String? followupIntentName;
  core.String? parentFollowupIntentName;

  GoogleCloudDialogflowV2IntentFollowupIntentInfo({
    this.followupIntentName,
    this.parentFollowupIntentName,
  });

  GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(core.Map json_)
    : this(
        followupIntentName: json_['followupIntentName'] as core.String?,
        parentFollowupIntentName:
            json_['parentFollowupIntentName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final followupIntentName = this.followupIntentName;
    final parentFollowupIntentName = this.parentFollowupIntentName;
    return {
      'followupIntentName': ?followupIntentName,
      'parentFollowupIntentName': ?parentFollowupIntentName,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessage {
  GoogleCloudDialogflowV2IntentMessageBasicCard? basicCard;
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard? browseCarouselCard;
  GoogleCloudDialogflowV2IntentMessageCard? card;
  GoogleCloudDialogflowV2IntentMessageCarouselSelect? carouselSelect;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion? linkOutSuggestion;
  GoogleCloudDialogflowV2IntentMessageListSelect? listSelect;
  GoogleCloudDialogflowV2IntentMessageMediaContent? mediaContent;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  ///
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED"
  /// - "FACEBOOK"
  /// - "SLACK"
  /// - "TELEGRAM"
  /// - "KIK"
  /// - "SKYPE"
  /// - "LINE"
  /// - "VIBER"
  /// - "ACTIONS_ON_GOOGLE"
  /// - "GOOGLE_HANGOUTS"
  core.String? platform;
  GoogleCloudDialogflowV2IntentMessageQuickReplies? quickReplies;
  GoogleCloudDialogflowV2IntentMessageSimpleResponses? simpleResponses;
  GoogleCloudDialogflowV2IntentMessageSuggestions? suggestions;
  GoogleCloudDialogflowV2IntentMessageTableCard? tableCard;
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

  GoogleCloudDialogflowV2IntentMessage.fromJson(core.Map json_)
    : this(
        basicCard: json_.containsKey('basicCard')
            ? GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
                json_['basicCard'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        browseCarouselCard: json_.containsKey('browseCarouselCard')
            ? GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
                json_['browseCarouselCard']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        card: json_.containsKey('card')
            ? GoogleCloudDialogflowV2IntentMessageCard.fromJson(
                json_['card'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        carouselSelect: json_.containsKey('carouselSelect')
            ? GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
                json_['carouselSelect'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        linkOutSuggestion: json_.containsKey('linkOutSuggestion')
            ? GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
                json_['linkOutSuggestion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        listSelect: json_.containsKey('listSelect')
            ? GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
                json_['listSelect'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mediaContent: json_.containsKey('mediaContent')
            ? GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
                json_['mediaContent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        platform: json_['platform'] as core.String?,
        quickReplies: json_.containsKey('quickReplies')
            ? GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
                json_['quickReplies'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        simpleResponses: json_.containsKey('simpleResponses')
            ? GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
                json_['simpleResponses'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestions: json_.containsKey('suggestions')
            ? GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
                json_['suggestions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableCard: json_.containsKey('tableCard')
            ? GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
                json_['tableCard'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_.containsKey('text')
            ? GoogleCloudDialogflowV2IntentMessageText.fromJson(
                json_['text'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basicCard = this.basicCard;
    final browseCarouselCard = this.browseCarouselCard;
    final card = this.card;
    final carouselSelect = this.carouselSelect;
    final image = this.image;
    final linkOutSuggestion = this.linkOutSuggestion;
    final listSelect = this.listSelect;
    final mediaContent = this.mediaContent;
    final payload = this.payload;
    final platform = this.platform;
    final quickReplies = this.quickReplies;
    final simpleResponses = this.simpleResponses;
    final suggestions = this.suggestions;
    final tableCard = this.tableCard;
    final text = this.text;
    return {
      'basicCard': ?basicCard,
      'browseCarouselCard': ?browseCarouselCard,
      'card': ?card,
      'carouselSelect': ?carouselSelect,
      'image': ?image,
      'linkOutSuggestion': ?linkOutSuggestion,
      'listSelect': ?listSelect,
      'mediaContent': ?mediaContent,
      'payload': ?payload,
      'platform': ?platform,
      'quickReplies': ?quickReplies,
      'simpleResponses': ?simpleResponses,
      'suggestions': ?suggestions,
      'tableCard': ?tableCard,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageBasicCard {
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;
  core.String? formattedText;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  core.String? subtitle;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(core.Map json_)
    : this(
        buttons: (json_['buttons'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        formattedText: json_['formattedText'] as core.String?,
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buttons = this.buttons;
    final formattedText = this.formattedText;
    final image = this.image;
    final subtitle = this.subtitle;
    final title = this.title;
    return {
      'buttons': ?buttons,
      'formattedText': ?formattedText,
      'image': ?image,
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageBasicCardButton {
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction?
  openUriAction;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBasicCardButton({
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(core.Map json_)
    : this(
        openUriAction: json_.containsKey('openUriAction')
            ? GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromJson(
                json_['openUriAction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final openUriAction = this.openUriAction;
    final title = this.title;
    return {'openUriAction': ?openUriAction, 'title': ?title};
  }
}

typedef GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction =
    $Shared08;

class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard {
  ///
  /// Possible string values are:
  /// - "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"
  /// - "GRAY"
  /// - "WHITE"
  /// - "CROPPED"
  /// - "BLURRED_BACKGROUND"
  core.String? imageDisplayOptions;
  core.List<
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
  >?
  items;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard({
    this.imageDisplayOptions,
    this.items,
  });

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
    core.Map json_,
  ) : this(
        imageDisplayOptions: json_['imageDisplayOptions'] as core.String?,
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final imageDisplayOptions = this.imageDisplayOptions;
    final items = this.items;
    return {'imageDisplayOptions': ?imageDisplayOptions, 'items': ?items};
  }
}

class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  core.String? description;
  core.String? footer;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction?
  openUriAction;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
    this.description,
    this.footer,
    this.image,
    this.openUriAction,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        footer: json_['footer'] as core.String?,
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        openUriAction: json_.containsKey('openUriAction')
            ? GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
                json_['openUriAction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final footer = this.footer;
    final image = this.image;
    final openUriAction = this.openUriAction;
    final title = this.title;
    return {
      'description': ?description,
      'footer': ?footer,
      'image': ?image,
      'openUriAction': ?openUriAction,
      'title': ?title,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  core.String? url;

  ///
  /// Possible string values are:
  /// - "URL_TYPE_HINT_UNSPECIFIED"
  /// - "AMP_ACTION"
  /// - "AMP_CONTENT"
  core.String? urlTypeHint;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction({
    this.url,
    this.urlTypeHint,
  });

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
    core.Map json_,
  ) : this(
        url: json_['url'] as core.String?,
        urlTypeHint: json_['urlTypeHint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    final urlTypeHint = this.urlTypeHint;
    return {'url': ?url, 'urlTypeHint': ?urlTypeHint};
  }
}

class GoogleCloudDialogflowV2IntentMessageCard {
  core.List<GoogleCloudDialogflowV2IntentMessageCardButton>? buttons;
  core.String? imageUri;
  core.String? subtitle;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageCard.fromJson(core.Map json_)
    : this(
        buttons: (json_['buttons'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        imageUri: json_['imageUri'] as core.String?,
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buttons = this.buttons;
    final imageUri = this.imageUri;
    final subtitle = this.subtitle;
    final title = this.title;
    return {
      'buttons': ?buttons,
      'imageUri': ?imageUri,
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageCardButton {
  core.String? postback;
  core.String? text;

  GoogleCloudDialogflowV2IntentMessageCardButton({this.postback, this.text});

  GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(core.Map json_)
    : this(
        postback: json_['postback'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final postback = this.postback;
    final text = this.text;
    return {'postback': ?postback, 'text': ?text};
  }
}

class GoogleCloudDialogflowV2IntentMessageCarouselSelect {
  core.List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>? items;

  GoogleCloudDialogflowV2IntentMessageCarouselSelect({this.items});

  GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(core.Map json_)
    : this(
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    return {'items': ?items};
  }
}

class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem {
  core.String? description;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo? info;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        info: json_.containsKey('info')
            ? GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
                json_['info'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final image = this.image;
    final info = this.info;
    final title = this.title;
    return {
      'description': ?description,
      'image': ?image,
      'info': ?info,
      'title': ?title,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageColumnProperties {
  core.String? header;

  ///
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED"
  /// - "LEADING"
  /// - "CENTER"
  /// - "TRAILING"
  core.String? horizontalAlignment;

  GoogleCloudDialogflowV2IntentMessageColumnProperties({
    this.header,
    this.horizontalAlignment,
  });

  GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(core.Map json_)
    : this(
        header: json_['header'] as core.String?,
        horizontalAlignment: json_['horizontalAlignment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final header = this.header;
    final horizontalAlignment = this.horizontalAlignment;
    return {'header': ?header, 'horizontalAlignment': ?horizontalAlignment};
  }
}

class GoogleCloudDialogflowV2IntentMessageImage {
  core.String? accessibilityText;
  core.String? imageUri;

  GoogleCloudDialogflowV2IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  GoogleCloudDialogflowV2IntentMessageImage.fromJson(core.Map json_)
    : this(
        accessibilityText: json_['accessibilityText'] as core.String?,
        imageUri: json_['imageUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessibilityText = this.accessibilityText;
    final imageUri = this.imageUri;
    return {'accessibilityText': ?accessibilityText, 'imageUri': ?imageUri};
  }
}

class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion {
  core.String? destinationName;
  core.String? uri;

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion({
    this.destinationName,
    this.uri,
  });

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(core.Map json_)
    : this(
        destinationName: json_['destinationName'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationName = this.destinationName;
    final uri = this.uri;
    return {'destinationName': ?destinationName, 'uri': ?uri};
  }
}

class GoogleCloudDialogflowV2IntentMessageListSelect {
  core.List<GoogleCloudDialogflowV2IntentMessageListSelectItem>? items;
  core.String? subtitle;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageListSelect({
    this.items,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(core.Map json_)
    : this(
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final items = this.items;
    final subtitle = this.subtitle;
    final title = this.title;
    return {'items': ?items, 'subtitle': ?subtitle, 'title': ?title};
  }
}

class GoogleCloudDialogflowV2IntentMessageListSelectItem {
  core.String? description;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo? info;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageListSelectItem({
    this.description,
    this.image,
    this.info,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        info: json_.containsKey('info')
            ? GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
                json_['info'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final image = this.image;
    final info = this.info;
    final title = this.title;
    return {
      'description': ?description,
      'image': ?image,
      'info': ?info,
      'title': ?title,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageMediaContent {
  core.List<
    GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
  >?
  mediaObjects;

  ///
  /// Possible string values are:
  /// - "RESPONSE_MEDIA_TYPE_UNSPECIFIED"
  /// - "AUDIO"
  core.String? mediaType;

  GoogleCloudDialogflowV2IntentMessageMediaContent({
    this.mediaObjects,
    this.mediaType,
  });

  GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(core.Map json_)
    : this(
        mediaObjects: (json_['mediaObjects'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        mediaType: json_['mediaType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mediaObjects = this.mediaObjects;
    final mediaType = this.mediaType;
    return {'mediaObjects': ?mediaObjects, 'mediaType': ?mediaType};
  }
}

class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject {
  core.String? contentUrl;
  core.String? description;
  GoogleCloudDialogflowV2IntentMessageImage? icon;
  GoogleCloudDialogflowV2IntentMessageImage? largeImage;
  core.String? name;

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject({
    this.contentUrl,
    this.description,
    this.icon,
    this.largeImage,
    this.name,
  });

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromJson(
    core.Map json_,
  ) : this(
        contentUrl: json_['contentUrl'] as core.String?,
        description: json_['description'] as core.String?,
        icon: json_.containsKey('icon')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['icon'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        largeImage: json_.containsKey('largeImage')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['largeImage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentUrl = this.contentUrl;
    final description = this.description;
    final icon = this.icon;
    final largeImage = this.largeImage;
    final name = this.name;
    return {
      'contentUrl': ?contentUrl,
      'description': ?description,
      'icon': ?icon,
      'largeImage': ?largeImage,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageQuickReplies {
  core.List<core.String>? quickReplies;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageQuickReplies({
    this.quickReplies,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(core.Map json_)
    : this(
        quickReplies: (json_['quickReplies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final quickReplies = this.quickReplies;
    final title = this.title;
    return {'quickReplies': ?quickReplies, 'title': ?title};
  }
}

class GoogleCloudDialogflowV2IntentMessageSelectItemInfo {
  core.String? key;
  core.List<core.String>? synonyms;

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo({this.key, this.synonyms});

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        synonyms: (json_['synonyms'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final synonyms = this.synonyms;
    return {'key': ?key, 'synonyms': ?synonyms};
  }
}

class GoogleCloudDialogflowV2IntentMessageSimpleResponse {
  core.String? displayText;
  core.String? ssml;
  core.String? textToSpeech;

  GoogleCloudDialogflowV2IntentMessageSimpleResponse({
    this.displayText,
    this.ssml,
    this.textToSpeech,
  });

  GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(core.Map json_)
    : this(
        displayText: json_['displayText'] as core.String?,
        ssml: json_['ssml'] as core.String?,
        textToSpeech: json_['textToSpeech'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayText = this.displayText;
    final ssml = this.ssml;
    final textToSpeech = this.textToSpeech;
    return {
      'displayText': ?displayText,
      'ssml': ?ssml,
      'textToSpeech': ?textToSpeech,
    };
  }
}

class GoogleCloudDialogflowV2IntentMessageSimpleResponses {
  core.List<GoogleCloudDialogflowV2IntentMessageSimpleResponse>?
  simpleResponses;

  GoogleCloudDialogflowV2IntentMessageSimpleResponses({this.simpleResponses});

  GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(core.Map json_)
    : this(
        simpleResponses: (json_['simpleResponses'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final simpleResponses = this.simpleResponses;
    return {'simpleResponses': ?simpleResponses};
  }
}

class GoogleCloudDialogflowV2IntentMessageSuggestion {
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageSuggestion({this.title});

  GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(core.Map json_)
    : this(title: json_['title'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final title = this.title;
    return {'title': ?title};
  }
}

class GoogleCloudDialogflowV2IntentMessageSuggestions {
  core.List<GoogleCloudDialogflowV2IntentMessageSuggestion>? suggestions;

  GoogleCloudDialogflowV2IntentMessageSuggestions({this.suggestions});

  GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(core.Map json_)
    : this(
        suggestions: (json_['suggestions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestions = this.suggestions;
    return {'suggestions': ?suggestions};
  }
}

class GoogleCloudDialogflowV2IntentMessageTableCard {
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;
  core.List<GoogleCloudDialogflowV2IntentMessageColumnProperties>?
  columnProperties;
  GoogleCloudDialogflowV2IntentMessageImage? image;
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardRow>? rows;
  core.String? subtitle;
  core.String? title;

  GoogleCloudDialogflowV2IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    this.title,
  });

  GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(core.Map json_)
    : this(
        buttons: (json_['buttons'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        columnProperties: (json_['columnProperties'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        image: json_.containsKey('image')
            ? GoogleCloudDialogflowV2IntentMessageImage.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        subtitle: json_['subtitle'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buttons = this.buttons;
    final columnProperties = this.columnProperties;
    final image = this.image;
    final rows = this.rows;
    final subtitle = this.subtitle;
    final title = this.title;
    return {
      'buttons': ?buttons,
      'columnProperties': ?columnProperties,
      'image': ?image,
      'rows': ?rows,
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }
}

typedef GoogleCloudDialogflowV2IntentMessageTableCardCell = $Shared02;

class GoogleCloudDialogflowV2IntentMessageTableCardRow {
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardCell>? cells;
  core.bool? dividerAfter;

  GoogleCloudDialogflowV2IntentMessageTableCardRow({
    this.cells,
    this.dividerAfter,
  });

  GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(core.Map json_)
    : this(
        cells: (json_['cells'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        dividerAfter: json_['dividerAfter'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cells = this.cells;
    final dividerAfter = this.dividerAfter;
    return {'cells': ?cells, 'dividerAfter': ?dividerAfter};
  }
}

class GoogleCloudDialogflowV2IntentMessageText {
  core.List<core.String>? text;

  GoogleCloudDialogflowV2IntentMessageText({this.text});

  GoogleCloudDialogflowV2IntentMessageText.fromJson(core.Map json_)
    : this(
        text: (json_['text'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final text = this.text;
    return {'text': ?text};
  }
}

class GoogleCloudDialogflowV2IntentParameter {
  core.String? defaultValue;
  core.String? displayName;
  core.String? entityTypeDisplayName;
  core.bool? isList;
  core.bool? mandatory;
  core.String? name;
  core.List<core.String>? prompts;
  core.String? value;

  GoogleCloudDialogflowV2IntentParameter({
    this.defaultValue,
    this.displayName,
    this.entityTypeDisplayName,
    this.isList,
    this.mandatory,
    this.name,
    this.prompts,
    this.value,
  });

  GoogleCloudDialogflowV2IntentParameter.fromJson(core.Map json_)
    : this(
        defaultValue: json_['defaultValue'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entityTypeDisplayName: json_['entityTypeDisplayName'] as core.String?,
        isList: json_['isList'] as core.bool?,
        mandatory: json_['mandatory'] as core.bool?,
        name: json_['name'] as core.String?,
        prompts: (json_['prompts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultValue = this.defaultValue;
    final displayName = this.displayName;
    final entityTypeDisplayName = this.entityTypeDisplayName;
    final isList = this.isList;
    final mandatory = this.mandatory;
    final name = this.name;
    final prompts = this.prompts;
    final value = this.value;
    return {
      'defaultValue': ?defaultValue,
      'displayName': ?displayName,
      'entityTypeDisplayName': ?entityTypeDisplayName,
      'isList': ?isList,
      'mandatory': ?mandatory,
      'name': ?name,
      'prompts': ?prompts,
      'value': ?value,
    };
  }
}

class GoogleCloudDialogflowV2IntentSuggestion {
  core.String? description;
  core.String? displayName;
  core.String? intentV2;

  GoogleCloudDialogflowV2IntentSuggestion({
    this.description,
    this.displayName,
    this.intentV2,
  });

  GoogleCloudDialogflowV2IntentSuggestion.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        intentV2: json_['intentV2'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final intentV2 = this.intentV2;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'intentV2': ?intentV2,
    };
  }
}

class GoogleCloudDialogflowV2IntentTrainingPhrase {
  core.String? name;
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrasePart>? parts;
  core.int? timesAddedCount;

  ///
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "EXAMPLE"
  /// - "TEMPLATE"
  core.String? type;

  GoogleCloudDialogflowV2IntentTrainingPhrase({
    this.name,
    this.parts,
    this.timesAddedCount,
    this.type,
  });

  GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        parts: (json_['parts'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        timesAddedCount: json_['timesAddedCount'] as core.int?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final parts = this.parts;
    final timesAddedCount = this.timesAddedCount;
    final type = this.type;
    return {
      'name': ?name,
      'parts': ?parts,
      'timesAddedCount': ?timesAddedCount,
      'type': ?type,
    };
  }
}

class GoogleCloudDialogflowV2IntentTrainingPhrasePart {
  core.String? alias;
  core.String? entityType;
  core.String? text;
  core.bool? userDefined;

  GoogleCloudDialogflowV2IntentTrainingPhrasePart({
    this.alias,
    this.entityType,
    this.text,
    this.userDefined,
  });

  GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        text: json_['text'] as core.String?,
        userDefined: json_['userDefined'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alias = this.alias;
    final entityType = this.entityType;
    final text = this.text;
    final userDefined = this.userDefined;
    return {
      'alias': ?alias,
      'entityType': ?entityType,
      'text': ?text,
      'userDefined': ?userDefined,
    };
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswer {
  core.String? answerRecord;
  GoogleCloudDialogflowV2KnowledgeAssistDebugInfo? knowledgeAssistDebugInfo;
  GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery? suggestedQuery;
  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer?
  suggestedQueryAnswer;

  GoogleCloudDialogflowV2KnowledgeAssistAnswer({
    this.answerRecord,
    this.knowledgeAssistDebugInfo,
    this.suggestedQuery,
    this.suggestedQueryAnswer,
  });

  GoogleCloudDialogflowV2KnowledgeAssistAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        knowledgeAssistDebugInfo: json_.containsKey('knowledgeAssistDebugInfo')
            ? GoogleCloudDialogflowV2KnowledgeAssistDebugInfo.fromJson(
                json_['knowledgeAssistDebugInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedQuery: json_.containsKey('suggestedQuery')
            ? GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery.fromJson(
                json_['suggestedQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedQueryAnswer: json_.containsKey('suggestedQueryAnswer')
            ? GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer.fromJson(
                json_['suggestedQueryAnswer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final knowledgeAssistDebugInfo = this.knowledgeAssistDebugInfo;
    final suggestedQuery = this.suggestedQuery;
    final suggestedQueryAnswer = this.suggestedQueryAnswer;
    return {
      'answerRecord': ?answerRecord,
      'knowledgeAssistDebugInfo': ?knowledgeAssistDebugInfo,
      'suggestedQuery': ?suggestedQuery,
      'suggestedQueryAnswer': ?suggestedQueryAnswer,
    };
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer {
  core.String? answerText;
  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource?
  faqSource;
  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource?
  generativeSource;

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer({
    this.answerText,
    this.faqSource,
    this.generativeSource,
  });

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer.fromJson(
    core.Map json_,
  ) : this(
        answerText: json_['answerText'] as core.String?,
        faqSource: json_.containsKey('faqSource')
            ? GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource.fromJson(
                json_['faqSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        generativeSource: json_.containsKey('generativeSource')
            ? GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource.fromJson(
                json_['generativeSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerText = this.answerText;
    final faqSource = this.faqSource;
    final generativeSource = this.generativeSource;
    return {
      'answerText': ?answerText,
      'faqSource': ?faqSource,
      'generativeSource': ?generativeSource,
    };
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource {
  core.String? question;

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource({
    this.question,
  });

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerFaqSource.fromJson(
    core.Map json_,
  ) : this(question: json_['question'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final question = this.question;
    return {'question': ?question};
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource {
  core.List<
    GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet
  >?
  snippets;

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource({
    this.snippets,
  });

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSource.fromJson(
    core.Map json_,
  ) : this(
        snippets: (json_['snippets'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final snippets = this.snippets;
    return {'snippets': ?snippets};
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? text;
  core.String? title;
  core.String? uri;

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet({
    this.metadata,
    this.text,
    this.title,
    this.uri,
  });

  GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswerGenerativeSourceSnippet.fromJson(
    core.Map json_,
  ) : this(
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final text = this.text;
    final title = this.title;
    final uri = this.uri;
    return {'metadata': ?metadata, 'text': ?text, 'title': ?title, 'uri': ?uri};
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery {
  core.String? queryText;

  GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery({this.queryText});

  GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery.fromJson(
    core.Map json_,
  ) : this(queryText: json_['queryText'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final queryText = this.queryText;
    return {'queryText': ?queryText};
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistDebugInfo {
  ///
  /// Possible string values are:
  /// - "DATASTORE_RESPONSE_REASON_UNSPECIFIED"
  /// - "NONE"
  /// - "SEARCH_OUT_OF_QUOTA"
  /// - "SEARCH_EMPTY_RESULTS"
  /// - "ANSWER_GENERATION_GEN_AI_DISABLED"
  /// - "ANSWER_GENERATION_OUT_OF_QUOTA"
  /// - "ANSWER_GENERATION_ERROR"
  /// - "ANSWER_GENERATION_NOT_ENOUGH_INFO"
  /// - "ANSWER_GENERATION_RAI_FAILED"
  /// - "ANSWER_GENERATION_NOT_GROUNDED"
  core.String? datastoreResponseReason;
  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo?
  ingestedContextReferenceDebugInfo;
  GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior?
  knowledgeAssistBehavior;

  ///
  /// Possible string values are:
  /// - "QUERY_CATEGORIZATION_FAILURE_REASON_UNSPECIFIED"
  /// - "QUERY_CATEGORIZATION_INVALID_CONFIG"
  /// - "QUERY_CATEGORIZATION_RESULT_NOT_FOUND"
  /// - "QUERY_CATEGORIZATION_FAILED"
  core.String? queryCategorizationFailureReason;

  ///
  /// Possible string values are:
  /// - "QUERY_GENERATION_FAILURE_REASON_UNSPECIFIED"
  /// - "QUERY_GENERATION_OUT_OF_QUOTA"
  /// - "QUERY_GENERATION_FAILED"
  /// - "QUERY_GENERATION_NO_QUERY_GENERATED"
  /// - "QUERY_GENERATION_RAI_FAILED"
  /// - "NOT_IN_ALLOWLIST"
  /// - "QUERY_GENERATION_QUERY_REDACTED"
  /// - "QUERY_GENERATION_LLM_RESPONSE_PARSE_FAILED"
  /// - "QUERY_GENERATION_EMPTY_CONVERSATION"
  /// - "QUERY_GENERATION_EMPTY_LAST_MESSAGE"
  /// - "QUERY_GENERATION_TRIGGERING_EVENT_CONDITION_NOT_MET"
  core.String? queryGenerationFailureReason;
  GoogleCloudDialogflowV2ServiceLatency? serviceLatency;

  GoogleCloudDialogflowV2KnowledgeAssistDebugInfo({
    this.datastoreResponseReason,
    this.ingestedContextReferenceDebugInfo,
    this.knowledgeAssistBehavior,
    this.queryCategorizationFailureReason,
    this.queryGenerationFailureReason,
    this.serviceLatency,
  });

  GoogleCloudDialogflowV2KnowledgeAssistDebugInfo.fromJson(core.Map json_)
    : this(
        datastoreResponseReason:
            json_['datastoreResponseReason'] as core.String?,
        ingestedContextReferenceDebugInfo:
            json_.containsKey('ingestedContextReferenceDebugInfo')
            ? GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo.fromJson(
                json_['ingestedContextReferenceDebugInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        knowledgeAssistBehavior: json_.containsKey('knowledgeAssistBehavior')
            ? GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior.fromJson(
                json_['knowledgeAssistBehavior']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        queryCategorizationFailureReason:
            json_['queryCategorizationFailureReason'] as core.String?,
        queryGenerationFailureReason:
            json_['queryGenerationFailureReason'] as core.String?,
        serviceLatency: json_.containsKey('serviceLatency')
            ? GoogleCloudDialogflowV2ServiceLatency.fromJson(
                json_['serviceLatency'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datastoreResponseReason = this.datastoreResponseReason;
    final ingestedContextReferenceDebugInfo =
        this.ingestedContextReferenceDebugInfo;
    final knowledgeAssistBehavior = this.knowledgeAssistBehavior;
    final queryCategorizationFailureReason =
        this.queryCategorizationFailureReason;
    final queryGenerationFailureReason = this.queryGenerationFailureReason;
    final serviceLatency = this.serviceLatency;
    return {
      'datastoreResponseReason': ?datastoreResponseReason,
      'ingestedContextReferenceDebugInfo': ?ingestedContextReferenceDebugInfo,
      'knowledgeAssistBehavior': ?knowledgeAssistBehavior,
      'queryCategorizationFailureReason': ?queryCategorizationFailureReason,
      'queryGenerationFailureReason': ?queryGenerationFailureReason,
      'serviceLatency': ?serviceLatency,
    };
  }
}

class GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior {
  core.bool? answerGenerationRewriterOn;
  core.int? appendedSearchContextCount;
  core.bool? conversationTranscriptHasMixedLanguages;
  core.bool? disableSyncDelivery;
  core.bool? endUserMetadataIncluded;
  core.bool? invalidItemsQuerySuggestionSkipped;
  core.bool? multipleQueriesGenerated;
  core.bool? previousQueriesIncluded;
  core.bool? primaryQueryRedactedAndReplaced;
  core.bool? queryContainedSearchContext;
  core.bool? queryGenerationAgentLanguageMismatch;
  core.bool? queryGenerationEndUserLanguageMismatch;
  core.bool? returnQueryOnly;
  core.bool? thirdPartyConnectorAllowed;
  core.bool? useCustomSafetyFilterLevel;
  core.bool? usePubsubDelivery;
  core.bool? useTranslatedMessage;

  GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior({
    this.answerGenerationRewriterOn,
    this.appendedSearchContextCount,
    this.conversationTranscriptHasMixedLanguages,
    this.disableSyncDelivery,
    this.endUserMetadataIncluded,
    this.invalidItemsQuerySuggestionSkipped,
    this.multipleQueriesGenerated,
    this.previousQueriesIncluded,
    this.primaryQueryRedactedAndReplaced,
    this.queryContainedSearchContext,
    this.queryGenerationAgentLanguageMismatch,
    this.queryGenerationEndUserLanguageMismatch,
    this.returnQueryOnly,
    this.thirdPartyConnectorAllowed,
    this.useCustomSafetyFilterLevel,
    this.usePubsubDelivery,
    this.useTranslatedMessage,
  });

  GoogleCloudDialogflowV2KnowledgeAssistDebugInfoKnowledgeAssistBehavior.fromJson(
    core.Map json_,
  ) : this(
        answerGenerationRewriterOn:
            json_['answerGenerationRewriterOn'] as core.bool?,
        appendedSearchContextCount:
            json_['appendedSearchContextCount'] as core.int?,
        conversationTranscriptHasMixedLanguages:
            json_['conversationTranscriptHasMixedLanguages'] as core.bool?,
        disableSyncDelivery: json_['disableSyncDelivery'] as core.bool?,
        endUserMetadataIncluded: json_['endUserMetadataIncluded'] as core.bool?,
        invalidItemsQuerySuggestionSkipped:
            json_['invalidItemsQuerySuggestionSkipped'] as core.bool?,
        multipleQueriesGenerated:
            json_['multipleQueriesGenerated'] as core.bool?,
        previousQueriesIncluded: json_['previousQueriesIncluded'] as core.bool?,
        primaryQueryRedactedAndReplaced:
            json_['primaryQueryRedactedAndReplaced'] as core.bool?,
        queryContainedSearchContext:
            json_['queryContainedSearchContext'] as core.bool?,
        queryGenerationAgentLanguageMismatch:
            json_['queryGenerationAgentLanguageMismatch'] as core.bool?,
        queryGenerationEndUserLanguageMismatch:
            json_['queryGenerationEndUserLanguageMismatch'] as core.bool?,
        returnQueryOnly: json_['returnQueryOnly'] as core.bool?,
        thirdPartyConnectorAllowed:
            json_['thirdPartyConnectorAllowed'] as core.bool?,
        useCustomSafetyFilterLevel:
            json_['useCustomSafetyFilterLevel'] as core.bool?,
        usePubsubDelivery: json_['usePubsubDelivery'] as core.bool?,
        useTranslatedMessage: json_['useTranslatedMessage'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerGenerationRewriterOn = this.answerGenerationRewriterOn;
    final appendedSearchContextCount = this.appendedSearchContextCount;
    final conversationTranscriptHasMixedLanguages =
        this.conversationTranscriptHasMixedLanguages;
    final disableSyncDelivery = this.disableSyncDelivery;
    final endUserMetadataIncluded = this.endUserMetadataIncluded;
    final invalidItemsQuerySuggestionSkipped =
        this.invalidItemsQuerySuggestionSkipped;
    final multipleQueriesGenerated = this.multipleQueriesGenerated;
    final previousQueriesIncluded = this.previousQueriesIncluded;
    final primaryQueryRedactedAndReplaced =
        this.primaryQueryRedactedAndReplaced;
    final queryContainedSearchContext = this.queryContainedSearchContext;
    final queryGenerationAgentLanguageMismatch =
        this.queryGenerationAgentLanguageMismatch;
    final queryGenerationEndUserLanguageMismatch =
        this.queryGenerationEndUserLanguageMismatch;
    final returnQueryOnly = this.returnQueryOnly;
    final thirdPartyConnectorAllowed = this.thirdPartyConnectorAllowed;
    final useCustomSafetyFilterLevel = this.useCustomSafetyFilterLevel;
    final usePubsubDelivery = this.usePubsubDelivery;
    final useTranslatedMessage = this.useTranslatedMessage;
    return {
      'answerGenerationRewriterOn': ?answerGenerationRewriterOn,
      'appendedSearchContextCount': ?appendedSearchContextCount,
      'conversationTranscriptHasMixedLanguages':
          ?conversationTranscriptHasMixedLanguages,
      'disableSyncDelivery': ?disableSyncDelivery,
      'endUserMetadataIncluded': ?endUserMetadataIncluded,
      'invalidItemsQuerySuggestionSkipped': ?invalidItemsQuerySuggestionSkipped,
      'multipleQueriesGenerated': ?multipleQueriesGenerated,
      'previousQueriesIncluded': ?previousQueriesIncluded,
      'primaryQueryRedactedAndReplaced': ?primaryQueryRedactedAndReplaced,
      'queryContainedSearchContext': ?queryContainedSearchContext,
      'queryGenerationAgentLanguageMismatch':
          ?queryGenerationAgentLanguageMismatch,
      'queryGenerationEndUserLanguageMismatch':
          ?queryGenerationEndUserLanguageMismatch,
      'returnQueryOnly': ?returnQueryOnly,
      'thirdPartyConnectorAllowed': ?thirdPartyConnectorAllowed,
      'useCustomSafetyFilterLevel': ?useCustomSafetyFilterLevel,
      'usePubsubDelivery': ?usePubsubDelivery,
      'useTranslatedMessage': ?useTranslatedMessage,
    };
  }
}

class GoogleCloudDialogflowV2KnowledgeBase {
  core.String? displayName;
  core.String? languageCode;
  core.String? name;

  GoogleCloudDialogflowV2KnowledgeBase({
    this.displayName,
    this.languageCode,
    this.name,
  });

  GoogleCloudDialogflowV2KnowledgeBase.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final languageCode = this.languageCode;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2ListAnswerRecordsResponse {
  core.List<GoogleCloudDialogflowV2AnswerRecord>? answerRecords;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListAnswerRecordsResponse({
    this.answerRecords,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(core.Map json_)
    : this(
        answerRecords: (json_['answerRecords'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2AnswerRecord.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecords = this.answerRecords;
    final nextPageToken = this.nextPageToken;
    return {'answerRecords': ?answerRecords, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListContextsResponse {
  core.List<GoogleCloudDialogflowV2Context>? contexts;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListContextsResponse({
    this.contexts,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListContextsResponse.fromJson(core.Map json_)
    : this(
        contexts: (json_['contexts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Context.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contexts = this.contexts;
    final nextPageToken = this.nextPageToken;
    return {'contexts': ?contexts, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListConversationDatasetsResponse {
  core.List<GoogleCloudDialogflowV2ConversationDataset>? conversationDatasets;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationDatasetsResponse({
    this.conversationDatasets,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationDatasetsResponse.fromJson(
    core.Map json_,
  ) : this(
        conversationDatasets: (json_['conversationDatasets'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ConversationDataset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationDatasets = this.conversationDatasets;
    final nextPageToken = this.nextPageToken;
    return {
      'conversationDatasets': ?conversationDatasets,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse {
  core.List<GoogleCloudDialogflowV2ConversationModelEvaluation>?
  conversationModelEvaluations;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse({
    this.conversationModelEvaluations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse.fromJson(
    core.Map json_,
  ) : this(
        conversationModelEvaluations:
            (json_['conversationModelEvaluations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2ConversationModelEvaluation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationModelEvaluations = this.conversationModelEvaluations;
    final nextPageToken = this.nextPageToken;
    return {
      'conversationModelEvaluations': ?conversationModelEvaluations,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowV2ListConversationModelsResponse {
  core.List<GoogleCloudDialogflowV2ConversationModel>? conversationModels;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationModelsResponse({
    this.conversationModels,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationModelsResponse.fromJson(core.Map json_)
    : this(
        conversationModels: (json_['conversationModels'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ConversationModel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationModels = this.conversationModels;
    final nextPageToken = this.nextPageToken;
    return {
      'conversationModels': ?conversationModels,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowV2ListConversationProfilesResponse {
  core.List<GoogleCloudDialogflowV2ConversationProfile>? conversationProfiles;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationProfilesResponse({
    this.conversationProfiles,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
    core.Map json_,
  ) : this(
        conversationProfiles: (json_['conversationProfiles'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ConversationProfile.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationProfiles = this.conversationProfiles;
    final nextPageToken = this.nextPageToken;
    return {
      'conversationProfiles': ?conversationProfiles,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowV2ListConversationsResponse {
  core.List<GoogleCloudDialogflowV2Conversation>? conversations;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListConversationsResponse.fromJson(core.Map json_)
    : this(
        conversations: (json_['conversations'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Conversation.fromJson(
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

class GoogleCloudDialogflowV2ListDocumentsResponse {
  core.List<GoogleCloudDialogflowV2Document>? documents;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents: (json_['documents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Document.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    final nextPageToken = this.nextPageToken;
    return {'documents': ?documents, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListEntityTypesResponse {
  core.List<GoogleCloudDialogflowV2EntityType>? entityTypes;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListEntityTypesResponse({
    this.entityTypes,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        entityTypes: (json_['entityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityTypes = this.entityTypes;
    final nextPageToken = this.nextPageToken;
    return {'entityTypes': ?entityTypes, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListEnvironmentsResponse {
  core.List<GoogleCloudDialogflowV2Environment>? environments;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(core.Map json_)
    : this(
        environments: (json_['environments'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Environment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environments = this.environments;
    final nextPageToken = this.nextPageToken;
    return {'environments': ?environments, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse {
  core.List<GoogleCloudDialogflowV2GeneratorEvaluation>? generatorEvaluations;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse({
    this.generatorEvaluations,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListGeneratorEvaluationsResponse.fromJson(
    core.Map json_,
  ) : this(
        generatorEvaluations: (json_['generatorEvaluations'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2GeneratorEvaluation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generatorEvaluations = this.generatorEvaluations;
    final nextPageToken = this.nextPageToken;
    return {
      'generatorEvaluations': ?generatorEvaluations,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class GoogleCloudDialogflowV2ListGeneratorsResponse {
  core.List<GoogleCloudDialogflowV2Generator>? generators;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListGeneratorsResponse({
    this.generators,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListGeneratorsResponse.fromJson(core.Map json_)
    : this(
        generators: (json_['generators'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Generator.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generators = this.generators;
    final nextPageToken = this.nextPageToken;
    return {'generators': ?generators, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListIntentsResponse {
  core.List<GoogleCloudDialogflowV2Intent>? intents;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListIntentsResponse({
    this.intents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListIntentsResponse.fromJson(core.Map json_)
    : this(
        intents: (json_['intents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Intent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intents = this.intents;
    final nextPageToken = this.nextPageToken;
    return {'intents': ?intents, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListKnowledgeBasesResponse {
  core.List<GoogleCloudDialogflowV2KnowledgeBase>? knowledgeBases;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListKnowledgeBasesResponse({
    this.knowledgeBases,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(core.Map json_)
    : this(
        knowledgeBases: (json_['knowledgeBases'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2KnowledgeBase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final knowledgeBases = this.knowledgeBases;
    final nextPageToken = this.nextPageToken;
    return {'knowledgeBases': ?knowledgeBases, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListMessagesResponse {
  core.List<GoogleCloudDialogflowV2Message>? messages;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2ListMessagesResponse({
    this.messages,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2ListMessagesResponse.fromJson(core.Map json_)
    : this(
        messages: (json_['messages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messages = this.messages;
    final nextPageToken = this.nextPageToken;
    return {'messages': ?messages, 'nextPageToken': ?nextPageToken};
  }
}

class GoogleCloudDialogflowV2ListParticipantsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowV2Participant>? participants;

  GoogleCloudDialogflowV2ListParticipantsResponse({
    this.nextPageToken,
    this.participants,
  });

  GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        participants: (json_['participants'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Participant.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final participants = this.participants;
    return {'nextPageToken': ?nextPageToken, 'participants': ?participants};
  }
}

class GoogleCloudDialogflowV2ListSessionEntityTypesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowV2SessionEntityType>? sessionEntityTypes;

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse({
    this.nextPageToken,
    this.sessionEntityTypes,
  });

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessionEntityTypes: (json_['sessionEntityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SessionEntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final sessionEntityTypes = this.sessionEntityTypes;
    return {
      'nextPageToken': ?nextPageToken,
      'sessionEntityTypes': ?sessionEntityTypes,
    };
  }
}

class GoogleCloudDialogflowV2ListSipTrunksResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowV2SipTrunk>? sipTrunks;

  GoogleCloudDialogflowV2ListSipTrunksResponse({
    this.nextPageToken,
    this.sipTrunks,
  });

  GoogleCloudDialogflowV2ListSipTrunksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sipTrunks: (json_['sipTrunks'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SipTrunk.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final sipTrunks = this.sipTrunks;
    return {'nextPageToken': ?nextPageToken, 'sipTrunks': ?sipTrunks};
  }
}

class GoogleCloudDialogflowV2ListToolsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowV2Tool>? tools;

  GoogleCloudDialogflowV2ListToolsResponse({this.nextPageToken, this.tools});

  GoogleCloudDialogflowV2ListToolsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Tool.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final tools = this.tools;
    return {'nextPageToken': ?nextPageToken, 'tools': ?tools};
  }
}

class GoogleCloudDialogflowV2ListVersionsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudDialogflowV2Version>? versions;

  GoogleCloudDialogflowV2ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  GoogleCloudDialogflowV2ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions: (json_['versions'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Version.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final versions = this.versions;
    return {'nextPageToken': ?nextPageToken, 'versions': ?versions};
  }
}

class GoogleCloudDialogflowV2LoggingConfig {
  core.bool? enableStackdriverLogging;

  GoogleCloudDialogflowV2LoggingConfig({this.enableStackdriverLogging});

  GoogleCloudDialogflowV2LoggingConfig.fromJson(core.Map json_)
    : this(
        enableStackdriverLogging:
            json_['enableStackdriverLogging'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableStackdriverLogging = this.enableStackdriverLogging;
    return {'enableStackdriverLogging': ?enableStackdriverLogging};
  }
}

class GoogleCloudDialogflowV2Message {
  core.String? content;
  core.String? createTime;
  core.String? languageCode;
  GoogleCloudDialogflowV2MessageAnnotation? messageAnnotation;
  core.String? name;
  core.String? participant;

  ///
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "HUMAN_AGENT"
  /// - "AUTOMATED_AGENT"
  /// - "END_USER"
  core.String? participantRole;
  core.String? sendTime;
  GoogleCloudDialogflowV2SentimentAnalysisResult? sentimentAnalysis;

  GoogleCloudDialogflowV2Message({
    this.content,
    this.createTime,
    this.languageCode,
    this.messageAnnotation,
    this.name,
    this.participant,
    this.participantRole,
    this.sendTime,
    this.sentimentAnalysis,
  });

  GoogleCloudDialogflowV2Message.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        messageAnnotation: json_.containsKey('messageAnnotation')
            ? GoogleCloudDialogflowV2MessageAnnotation.fromJson(
                json_['messageAnnotation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        participant: json_['participant'] as core.String?,
        participantRole: json_['participantRole'] as core.String?,
        sendTime: json_['sendTime'] as core.String?,
        sentimentAnalysis: json_.containsKey('sentimentAnalysis')
            ? GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
                json_['sentimentAnalysis']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final createTime = this.createTime;
    final languageCode = this.languageCode;
    final messageAnnotation = this.messageAnnotation;
    final name = this.name;
    final participant = this.participant;
    final participantRole = this.participantRole;
    final sendTime = this.sendTime;
    final sentimentAnalysis = this.sentimentAnalysis;
    return {
      'content': ?content,
      'createTime': ?createTime,
      'languageCode': ?languageCode,
      'messageAnnotation': ?messageAnnotation,
      'name': ?name,
      'participant': ?participant,
      'participantRole': ?participantRole,
      'sendTime': ?sendTime,
      'sentimentAnalysis': ?sentimentAnalysis,
    };
  }
}

class GoogleCloudDialogflowV2MessageAnnotation {
  core.bool? containEntities;
  core.List<GoogleCloudDialogflowV2AnnotatedMessagePart>? parts;

  GoogleCloudDialogflowV2MessageAnnotation({this.containEntities, this.parts});

  GoogleCloudDialogflowV2MessageAnnotation.fromJson(core.Map json_)
    : this(
        containEntities: json_['containEntities'] as core.bool?,
        parts: (json_['parts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containEntities = this.containEntities;
    final parts = this.parts;
    return {'containEntities': ?containEntities, 'parts': ?parts};
  }
}

class GoogleCloudDialogflowV2MessageEntry {
  core.String? createTime;
  core.String? languageCode;

  ///
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "HUMAN_AGENT"
  /// - "AUTOMATED_AGENT"
  /// - "END_USER"
  core.String? role;
  core.String? text;

  GoogleCloudDialogflowV2MessageEntry({
    this.createTime,
    this.languageCode,
    this.role,
    this.text,
  });

  GoogleCloudDialogflowV2MessageEntry.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        role: json_['role'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final languageCode = this.languageCode;
    final role = this.role;
    final text = this.text;
    return {
      'createTime': ?createTime,
      'languageCode': ?languageCode,
      'role': ?role,
      'text': ?text,
    };
  }
}

class GoogleCloudDialogflowV2NotificationConfig {
  ///
  /// Possible string values are:
  /// - "MESSAGE_FORMAT_UNSPECIFIED"
  /// - "PROTO"
  /// - "JSON"
  core.String? messageFormat;
  core.String? topic;

  GoogleCloudDialogflowV2NotificationConfig({this.messageFormat, this.topic});

  GoogleCloudDialogflowV2NotificationConfig.fromJson(core.Map json_)
    : this(
        messageFormat: json_['messageFormat'] as core.String?,
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messageFormat = this.messageFormat;
    final topic = this.topic;
    return {'messageFormat': ?messageFormat, 'topic': ?topic};
  }
}

class GoogleCloudDialogflowV2OutputAudio {
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> bytes_) {
    audio = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2OutputAudioConfig? config;

  GoogleCloudDialogflowV2OutputAudio({this.audio, this.config});

  GoogleCloudDialogflowV2OutputAudio.fromJson(core.Map json_)
    : this(
        audio: json_['audio'] as core.String?,
        config: json_.containsKey('config')
            ? GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
                json_['config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audio = this.audio;
    final config = this.config;
    return {'audio': ?audio, 'config': ?config};
  }
}

class GoogleCloudDialogflowV2OutputAudioConfig {
  ///
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED"
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16"
  /// - "OUTPUT_AUDIO_ENCODING_MP3"
  /// - "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS"
  /// - "OUTPUT_AUDIO_ENCODING_MULAW"
  /// - "OUTPUT_AUDIO_ENCODING_ALAW"
  core.String? audioEncoding;
  core.int? sampleRateHertz;
  GoogleCloudDialogflowV2SynthesizeSpeechConfig? synthesizeSpeechConfig;

  GoogleCloudDialogflowV2OutputAudioConfig({
    this.audioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  GoogleCloudDialogflowV2OutputAudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfig: json_.containsKey('synthesizeSpeechConfig')
            ? GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
                json_['synthesizeSpeechConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final sampleRateHertz = this.sampleRateHertz;
    final synthesizeSpeechConfig = this.synthesizeSpeechConfig;
    return {
      'audioEncoding': ?audioEncoding,
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfig': ?synthesizeSpeechConfig,
    };
  }
}

class GoogleCloudDialogflowV2Participant {
  ///
  /// Possible string values are:
  /// - "AGENT_DESKTOP_SOURCE_UNSPECIFIED"
  /// - "LIVE_PERSON"
  /// - "GENESYS_CLOUD"
  /// - "TWILIO"
  /// - "SALESFORCE"
  /// - "OTHER"
  core.String? agentDesktopSource;
  core.Map<core.String, core.String>? documentsMetadataFilters;
  core.String? name;
  core.String? obfuscatedExternalUserId;

  ///
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "HUMAN_AGENT"
  /// - "AUTOMATED_AGENT"
  /// - "END_USER"
  core.String? role;
  core.String? sipRecordingMediaLabel;

  GoogleCloudDialogflowV2Participant({
    this.agentDesktopSource,
    this.documentsMetadataFilters,
    this.name,
    this.obfuscatedExternalUserId,
    this.role,
    this.sipRecordingMediaLabel,
  });

  GoogleCloudDialogflowV2Participant.fromJson(core.Map json_)
    : this(
        agentDesktopSource: json_['agentDesktopSource'] as core.String?,
        documentsMetadataFilters:
            (json_['documentsMetadataFilters']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        obfuscatedExternalUserId:
            json_['obfuscatedExternalUserId'] as core.String?,
        role: json_['role'] as core.String?,
        sipRecordingMediaLabel: json_['sipRecordingMediaLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentDesktopSource = this.agentDesktopSource;
    final documentsMetadataFilters = this.documentsMetadataFilters;
    final name = this.name;
    final obfuscatedExternalUserId = this.obfuscatedExternalUserId;
    final role = this.role;
    final sipRecordingMediaLabel = this.sipRecordingMediaLabel;
    return {
      'agentDesktopSource': ?agentDesktopSource,
      'documentsMetadataFilters': ?documentsMetadataFilters,
      'name': ?name,
      'obfuscatedExternalUserId': ?obfuscatedExternalUserId,
      'role': ?role,
      'sipRecordingMediaLabel': ?sipRecordingMediaLabel,
    };
  }
}

class GoogleCloudDialogflowV2QueryInput {
  GoogleCloudDialogflowV2InputAudioConfig? audioConfig;
  GoogleCloudDialogflowV2EventInput? event;
  GoogleCloudDialogflowV2TextInput? text;

  GoogleCloudDialogflowV2QueryInput({this.audioConfig, this.event, this.text});

  GoogleCloudDialogflowV2QueryInput.fromJson(core.Map json_)
    : this(
        audioConfig: json_.containsKey('audioConfig')
            ? GoogleCloudDialogflowV2InputAudioConfig.fromJson(
                json_['audioConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        event: json_.containsKey('event')
            ? GoogleCloudDialogflowV2EventInput.fromJson(
                json_['event'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_.containsKey('text')
            ? GoogleCloudDialogflowV2TextInput.fromJson(
                json_['text'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioConfig = this.audioConfig;
    final event = this.event;
    final text = this.text;
    return {'audioConfig': ?audioConfig, 'event': ?event, 'text': ?text};
  }
}

class GoogleCloudDialogflowV2QueryParameters {
  core.List<GoogleCloudDialogflowV2Context>? contexts;
  GoogleTypeLatLng? geoLocation;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;
  core.String? platform;
  core.bool? resetContexts;
  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig?
  sentimentAnalysisRequestConfig;
  core.List<GoogleCloudDialogflowV2SessionEntityType>? sessionEntityTypes;
  core.String? timeZone;
  core.Map<core.String, core.String>? webhookHeaders;

  GoogleCloudDialogflowV2QueryParameters({
    this.contexts,
    this.geoLocation,
    this.payload,
    this.platform,
    this.resetContexts,
    this.sentimentAnalysisRequestConfig,
    this.sessionEntityTypes,
    this.timeZone,
    this.webhookHeaders,
  });

  GoogleCloudDialogflowV2QueryParameters.fromJson(core.Map json_)
    : this(
        contexts: (json_['contexts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Context.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        geoLocation: json_.containsKey('geoLocation')
            ? GoogleTypeLatLng.fromJson(
                json_['geoLocation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        payload: json_.containsKey('payload')
            ? json_['payload'] as core.Map<core.String, core.dynamic>
            : null,
        platform: json_['platform'] as core.String?,
        resetContexts: json_['resetContexts'] as core.bool?,
        sentimentAnalysisRequestConfig:
            json_.containsKey('sentimentAnalysisRequestConfig')
            ? GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
                json_['sentimentAnalysisRequestConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sessionEntityTypes: (json_['sessionEntityTypes'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SessionEntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        timeZone: json_['timeZone'] as core.String?,
        webhookHeaders:
            (json_['webhookHeaders'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contexts = this.contexts;
    final geoLocation = this.geoLocation;
    final payload = this.payload;
    final platform = this.platform;
    final resetContexts = this.resetContexts;
    final sentimentAnalysisRequestConfig = this.sentimentAnalysisRequestConfig;
    final sessionEntityTypes = this.sessionEntityTypes;
    final timeZone = this.timeZone;
    final webhookHeaders = this.webhookHeaders;
    return {
      'contexts': ?contexts,
      'geoLocation': ?geoLocation,
      'payload': ?payload,
      'platform': ?platform,
      'resetContexts': ?resetContexts,
      'sentimentAnalysisRequestConfig': ?sentimentAnalysisRequestConfig,
      'sessionEntityTypes': ?sessionEntityTypes,
      'timeZone': ?timeZone,
      'webhookHeaders': ?webhookHeaders,
    };
  }
}

class GoogleCloudDialogflowV2QueryResult {
  core.String? action;
  core.bool? allRequiredParamsPresent;
  core.bool? cancelsSlotFilling;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? diagnosticInfo;
  core.List<GoogleCloudDialogflowV2IntentMessage>? fulfillmentMessages;
  core.String? fulfillmentText;
  GoogleCloudDialogflowV2Intent? intent;
  core.double? intentDetectionConfidence;
  core.String? languageCode;
  core.List<GoogleCloudDialogflowV2Context>? outputContexts;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;
  core.String? queryText;
  GoogleCloudDialogflowV2SentimentAnalysisResult? sentimentAnalysisResult;
  core.double? speechRecognitionConfidence;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? webhookPayload;
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

  GoogleCloudDialogflowV2QueryResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        allRequiredParamsPresent:
            json_['allRequiredParamsPresent'] as core.bool?,
        cancelsSlotFilling: json_['cancelsSlotFilling'] as core.bool?,
        diagnosticInfo: json_.containsKey('diagnosticInfo')
            ? json_['diagnosticInfo'] as core.Map<core.String, core.dynamic>
            : null,
        fulfillmentMessages: (json_['fulfillmentMessages'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2IntentMessage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        fulfillmentText: json_['fulfillmentText'] as core.String?,
        intent: json_.containsKey('intent')
            ? GoogleCloudDialogflowV2Intent.fromJson(
                json_['intent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intentDetectionConfidence:
            (json_['intentDetectionConfidence'] as core.num?)?.toDouble(),
        languageCode: json_['languageCode'] as core.String?,
        outputContexts: (json_['outputContexts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Context.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        queryText: json_['queryText'] as core.String?,
        sentimentAnalysisResult: json_.containsKey('sentimentAnalysisResult')
            ? GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
                json_['sentimentAnalysisResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        speechRecognitionConfidence:
            (json_['speechRecognitionConfidence'] as core.num?)?.toDouble(),
        webhookPayload: json_.containsKey('webhookPayload')
            ? json_['webhookPayload'] as core.Map<core.String, core.dynamic>
            : null,
        webhookSource: json_['webhookSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final allRequiredParamsPresent = this.allRequiredParamsPresent;
    final cancelsSlotFilling = this.cancelsSlotFilling;
    final diagnosticInfo = this.diagnosticInfo;
    final fulfillmentMessages = this.fulfillmentMessages;
    final fulfillmentText = this.fulfillmentText;
    final intent = this.intent;
    final intentDetectionConfidence = this.intentDetectionConfidence;
    final languageCode = this.languageCode;
    final outputContexts = this.outputContexts;
    final parameters = this.parameters;
    final queryText = this.queryText;
    final sentimentAnalysisResult = this.sentimentAnalysisResult;
    final speechRecognitionConfidence = this.speechRecognitionConfidence;
    final webhookPayload = this.webhookPayload;
    final webhookSource = this.webhookSource;
    return {
      'action': ?action,
      'allRequiredParamsPresent': ?allRequiredParamsPresent,
      'cancelsSlotFilling': ?cancelsSlotFilling,
      'diagnosticInfo': ?diagnosticInfo,
      'fulfillmentMessages': ?fulfillmentMessages,
      'fulfillmentText': ?fulfillmentText,
      'intent': ?intent,
      'intentDetectionConfidence': ?intentDetectionConfidence,
      'languageCode': ?languageCode,
      'outputContexts': ?outputContexts,
      'parameters': ?parameters,
      'queryText': ?queryText,
      'sentimentAnalysisResult': ?sentimentAnalysisResult,
      'speechRecognitionConfidence': ?speechRecognitionConfidence,
      'webhookPayload': ?webhookPayload,
      'webhookSource': ?webhookSource,
    };
  }
}

class GoogleCloudDialogflowV2RaiSettings {
  core.List<GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig>?
  raiCategoryConfigs;

  GoogleCloudDialogflowV2RaiSettings({this.raiCategoryConfigs});

  GoogleCloudDialogflowV2RaiSettings.fromJson(core.Map json_)
    : this(
        raiCategoryConfigs: (json_['raiCategoryConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final raiCategoryConfigs = this.raiCategoryConfigs;
    return {'raiCategoryConfigs': ?raiCategoryConfigs};
  }
}

class GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig {
  ///
  /// Possible string values are:
  /// - "RAI_CATEGORY_UNSPECIFIED"
  /// - "DANGEROUS_CONTENT"
  /// - "SEXUALLY_EXPLICIT"
  /// - "HARASSMENT"
  /// - "HATE_SPEECH"
  core.String? category;

  ///
  /// Possible string values are:
  /// - "SENSITIVITY_LEVEL_UNSPECIFIED"
  /// - "BLOCK_MOST"
  /// - "BLOCK_SOME"
  /// - "BLOCK_FEW"
  /// - "BLOCK_NONE"
  core.String? sensitivityLevel;

  GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig({
    this.category,
    this.sensitivityLevel,
  });

  GoogleCloudDialogflowV2RaiSettingsRaiCategoryConfig.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        sensitivityLevel: json_['sensitivityLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final sensitivityLevel = this.sensitivityLevel;
    return {'category': ?category, 'sensitivityLevel': ?sensitivityLevel};
  }
}

class GoogleCloudDialogflowV2ReloadDocumentRequest {
  core.String? contentUri;
  core.bool? importGcsCustomMetadata;
  core.bool? smartMessagingPartialUpdate;

  GoogleCloudDialogflowV2ReloadDocumentRequest({
    this.contentUri,
    this.importGcsCustomMetadata,
    this.smartMessagingPartialUpdate,
  });

  GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(core.Map json_)
    : this(
        contentUri: json_['contentUri'] as core.String?,
        importGcsCustomMetadata: json_['importGcsCustomMetadata'] as core.bool?,
        smartMessagingPartialUpdate:
            json_['smartMessagingPartialUpdate'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentUri = this.contentUri;
    final importGcsCustomMetadata = this.importGcsCustomMetadata;
    final smartMessagingPartialUpdate = this.smartMessagingPartialUpdate;
    return {
      'contentUri': ?contentUri,
      'importGcsCustomMetadata': ?importGcsCustomMetadata,
      'smartMessagingPartialUpdate': ?smartMessagingPartialUpdate,
    };
  }
}

typedef GoogleCloudDialogflowV2RestoreAgentRequest = $AgentRequest;

class GoogleCloudDialogflowV2SearchAgentsResponse {
  core.List<GoogleCloudDialogflowV2Agent>? agents;
  core.String? nextPageToken;

  GoogleCloudDialogflowV2SearchAgentsResponse({
    this.agents,
    this.nextPageToken,
  });

  GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(core.Map json_)
    : this(
        agents: (json_['agents'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Agent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
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

class GoogleCloudDialogflowV2SearchKnowledgeAnswer {
  core.String? answer;
  core.String? answerRecord;
  core.List<GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource>?
  answerSources;

  ///
  /// Possible string values are:
  /// - "ANSWER_TYPE_UNSPECIFIED"
  /// - "FAQ"
  /// - "GENERATIVE"
  /// - "INTENT"
  core.String? answerType;

  GoogleCloudDialogflowV2SearchKnowledgeAnswer({
    this.answer,
    this.answerRecord,
    this.answerSources,
    this.answerType,
  });

  GoogleCloudDialogflowV2SearchKnowledgeAnswer.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        answerSources: (json_['answerSources'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        answerType: json_['answerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answer = this.answer;
    final answerRecord = this.answerRecord;
    final answerSources = this.answerSources;
    final answerType = this.answerType;
    return {
      'answer': ?answer,
      'answerRecord': ?answerRecord,
      'answerSources': ?answerSources,
      'answerType': ?answerType,
    };
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? snippet;
  core.String? title;
  core.String? uri;

  GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource({
    this.metadata,
    this.snippet,
    this.title,
    this.uri,
  });

  GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource.fromJson(
    core.Map json_,
  ) : this(
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        snippet: json_['snippet'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final snippet = this.snippet;
    final title = this.title;
    final uri = this.uri;
    return {
      'metadata': ?metadata,
      'snippet': ?snippet,
      'title': ?title,
      'uri': ?uri,
    };
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeDebugInfo {
  ///
  /// Possible string values are:
  /// - "DATASTORE_RESPONSE_REASON_UNSPECIFIED"
  /// - "NONE"
  /// - "SEARCH_OUT_OF_QUOTA"
  /// - "SEARCH_EMPTY_RESULTS"
  /// - "ANSWER_GENERATION_GEN_AI_DISABLED"
  /// - "ANSWER_GENERATION_OUT_OF_QUOTA"
  /// - "ANSWER_GENERATION_ERROR"
  /// - "ANSWER_GENERATION_NOT_ENOUGH_INFO"
  /// - "ANSWER_GENERATION_RAI_FAILED"
  /// - "ANSWER_GENERATION_NOT_GROUNDED"
  core.String? datastoreResponseReason;
  GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo?
  ingestedContextReferenceDebugInfo;
  GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior?
  searchKnowledgeBehavior;
  GoogleCloudDialogflowV2ServiceLatency? serviceLatency;

  GoogleCloudDialogflowV2SearchKnowledgeDebugInfo({
    this.datastoreResponseReason,
    this.ingestedContextReferenceDebugInfo,
    this.searchKnowledgeBehavior,
    this.serviceLatency,
  });

  GoogleCloudDialogflowV2SearchKnowledgeDebugInfo.fromJson(core.Map json_)
    : this(
        datastoreResponseReason:
            json_['datastoreResponseReason'] as core.String?,
        ingestedContextReferenceDebugInfo:
            json_.containsKey('ingestedContextReferenceDebugInfo')
            ? GoogleCloudDialogflowV2IngestedContextReferenceDebugInfo.fromJson(
                json_['ingestedContextReferenceDebugInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        searchKnowledgeBehavior: json_.containsKey('searchKnowledgeBehavior')
            ? GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior.fromJson(
                json_['searchKnowledgeBehavior']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceLatency: json_.containsKey('serviceLatency')
            ? GoogleCloudDialogflowV2ServiceLatency.fromJson(
                json_['serviceLatency'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datastoreResponseReason = this.datastoreResponseReason;
    final ingestedContextReferenceDebugInfo =
        this.ingestedContextReferenceDebugInfo;
    final searchKnowledgeBehavior = this.searchKnowledgeBehavior;
    final serviceLatency = this.serviceLatency;
    return {
      'datastoreResponseReason': ?datastoreResponseReason,
      'ingestedContextReferenceDebugInfo': ?ingestedContextReferenceDebugInfo,
      'searchKnowledgeBehavior': ?searchKnowledgeBehavior,
      'serviceLatency': ?serviceLatency,
    };
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior {
  core.bool? answerGenerationRewriterOn;
  core.bool? endUserMetadataIncluded;
  core.bool? thirdPartyConnectorAllowed;

  GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior({
    this.answerGenerationRewriterOn,
    this.endUserMetadataIncluded,
    this.thirdPartyConnectorAllowed,
  });

  GoogleCloudDialogflowV2SearchKnowledgeDebugInfoSearchKnowledgeBehavior.fromJson(
    core.Map json_,
  ) : this(
        answerGenerationRewriterOn:
            json_['answerGenerationRewriterOn'] as core.bool?,
        endUserMetadataIncluded: json_['endUserMetadataIncluded'] as core.bool?,
        thirdPartyConnectorAllowed:
            json_['thirdPartyConnectorAllowed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerGenerationRewriterOn = this.answerGenerationRewriterOn;
    final endUserMetadataIncluded = this.endUserMetadataIncluded;
    final thirdPartyConnectorAllowed = this.thirdPartyConnectorAllowed;
    return {
      'answerGenerationRewriterOn': ?answerGenerationRewriterOn,
      'endUserMetadataIncluded': ?endUserMetadataIncluded,
      'thirdPartyConnectorAllowed': ?thirdPartyConnectorAllowed,
    };
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeRequest {
  core.String? conversation;
  core.String? conversationProfile;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? endUserMetadata;
  core.bool? exactSearch;
  core.String? latestMessage;
  core.String? parent;
  GoogleCloudDialogflowV2TextInput? query;

  ///
  /// Possible string values are:
  /// - "QUERY_SOURCE_UNSPECIFIED"
  /// - "AGENT_QUERY"
  /// - "SUGGESTED_QUERY"
  core.String? querySource;
  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig? searchConfig;
  core.String? sessionId;

  GoogleCloudDialogflowV2SearchKnowledgeRequest({
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

  GoogleCloudDialogflowV2SearchKnowledgeRequest.fromJson(core.Map json_)
    : this(
        conversation: json_['conversation'] as core.String?,
        conversationProfile: json_['conversationProfile'] as core.String?,
        endUserMetadata: json_.containsKey('endUserMetadata')
            ? json_['endUserMetadata'] as core.Map<core.String, core.dynamic>
            : null,
        exactSearch: json_['exactSearch'] as core.bool?,
        latestMessage: json_['latestMessage'] as core.String?,
        parent: json_['parent'] as core.String?,
        query: json_.containsKey('query')
            ? GoogleCloudDialogflowV2TextInput.fromJson(
                json_['query'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        querySource: json_['querySource'] as core.String?,
        searchConfig: json_.containsKey('searchConfig')
            ? GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig.fromJson(
                json_['searchConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sessionId: json_['sessionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversation = this.conversation;
    final conversationProfile = this.conversationProfile;
    final endUserMetadata = this.endUserMetadata;
    final exactSearch = this.exactSearch;
    final latestMessage = this.latestMessage;
    final parent = this.parent;
    final query = this.query;
    final querySource = this.querySource;
    final searchConfig = this.searchConfig;
    final sessionId = this.sessionId;
    return {
      'conversation': ?conversation,
      'conversationProfile': ?conversationProfile,
      'endUserMetadata': ?endUserMetadata,
      'exactSearch': ?exactSearch,
      'latestMessage': ?latestMessage,
      'parent': ?parent,
      'query': ?query,
      'querySource': ?querySource,
      'searchConfig': ?searchConfig,
      'sessionId': ?sessionId,
    };
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig {
  core.List<
    GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs
  >?
  boostSpecs;
  core.List<
    GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs
  >?
  filterSpecs;

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig({
    this.boostSpecs,
    this.filterSpecs,
  });

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfig.fromJson(
    core.Map json_,
  ) : this(
        boostSpecs: (json_['boostSpecs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boostSpecs = this.boostSpecs;
    final filterSpecs = this.filterSpecs;
    return {'boostSpecs': ?boostSpecs, 'filterSpecs': ?filterSpecs};
  }
}

class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs {
  core.List<core.String>? dataStores;
  core.List<
    GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec
  >?
  spec;

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs({
    this.dataStores,
    this.spec,
  });

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecs.fromJson(
    core.Map json_,
  ) : this(
        dataStores: (json_['dataStores'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        spec: (json_['spec'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec.fromJson(
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

class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec {
  core.List<
    GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec
  >?
  conditionBoostSpecs;

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec({
    this.conditionBoostSpecs,
  });

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        conditionBoostSpecs: (json_['conditionBoostSpecs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec.fromJson(
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

class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec {
  core.double? boost;
  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec?
  boostControlSpec;
  core.String? condition;

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec: json_.containsKey('boostControlSpec')
            ? GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
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

class GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec {
  ///
  /// Possible string values are:
  /// - "ATTRIBUTE_TYPE_UNSPECIFIED"
  /// - "NUMERICAL"
  /// - "FRESHNESS"
  core.String? attributeType;
  core.List<
    GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >?
  controlPoints;
  core.String? fieldName;

  ///
  /// Possible string values are:
  /// - "INTERPOLATION_TYPE_UNSPECIFIED"
  /// - "LINEAR"
  core.String? interpolationType;

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints: (json_['controlPoints'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
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

typedef GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    $BoostSpecConditionBoostSpecBoostControlSpecControlPoint;
typedef GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs =
    $FilterSpecs;

class GoogleCloudDialogflowV2SearchKnowledgeResponse {
  core.List<GoogleCloudDialogflowV2SearchKnowledgeAnswer>? answers;
  core.String? rewrittenQuery;
  GoogleCloudDialogflowV2SearchKnowledgeDebugInfo? searchKnowledgeDebugInfo;

  GoogleCloudDialogflowV2SearchKnowledgeResponse({
    this.answers,
    this.rewrittenQuery,
    this.searchKnowledgeDebugInfo,
  });

  GoogleCloudDialogflowV2SearchKnowledgeResponse.fromJson(core.Map json_)
    : this(
        answers: (json_['answers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SearchKnowledgeAnswer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rewrittenQuery: json_['rewrittenQuery'] as core.String?,
        searchKnowledgeDebugInfo: json_.containsKey('searchKnowledgeDebugInfo')
            ? GoogleCloudDialogflowV2SearchKnowledgeDebugInfo.fromJson(
                json_['searchKnowledgeDebugInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answers = this.answers;
    final rewrittenQuery = this.rewrittenQuery;
    final searchKnowledgeDebugInfo = this.searchKnowledgeDebugInfo;
    return {
      'answers': ?answers,
      'rewrittenQuery': ?rewrittenQuery,
      'searchKnowledgeDebugInfo': ?searchKnowledgeDebugInfo,
    };
  }
}

typedef GoogleCloudDialogflowV2Sentiment = $Shared18;

class GoogleCloudDialogflowV2SentimentAnalysisRequestConfig {
  core.bool? analyzeQueryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig({
    this.analyzeQueryTextSentiment,
  });

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(core.Map json_)
    : this(
        analyzeQueryTextSentiment:
            json_['analyzeQueryTextSentiment'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final analyzeQueryTextSentiment = this.analyzeQueryTextSentiment;
    return {'analyzeQueryTextSentiment': ?analyzeQueryTextSentiment};
  }
}

class GoogleCloudDialogflowV2SentimentAnalysisResult {
  GoogleCloudDialogflowV2Sentiment? queryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisResult({this.queryTextSentiment});

  GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(core.Map json_)
    : this(
        queryTextSentiment: json_.containsKey('queryTextSentiment')
            ? GoogleCloudDialogflowV2Sentiment.fromJson(
                json_['queryTextSentiment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final queryTextSentiment = this.queryTextSentiment;
    return {'queryTextSentiment': ?queryTextSentiment};
  }
}

class GoogleCloudDialogflowV2ServiceLatency {
  core.List<GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency>?
  internalServiceLatencies;

  GoogleCloudDialogflowV2ServiceLatency({this.internalServiceLatencies});

  GoogleCloudDialogflowV2ServiceLatency.fromJson(core.Map json_)
    : this(
        internalServiceLatencies: (json_['internalServiceLatencies'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final internalServiceLatencies = this.internalServiceLatencies;
    return {'internalServiceLatencies': ?internalServiceLatencies};
  }
}

class GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency {
  core.String? completeTime;
  core.double? latencyMs;
  core.String? startTime;
  core.String? step;

  GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency({
    this.completeTime,
    this.latencyMs,
    this.startTime,
    this.step,
  });

  GoogleCloudDialogflowV2ServiceLatencyInternalServiceLatency.fromJson(
    core.Map json_,
  ) : this(
        completeTime: json_['completeTime'] as core.String?,
        latencyMs: (json_['latencyMs'] as core.num?)?.toDouble(),
        startTime: json_['startTime'] as core.String?,
        step: json_['step'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final completeTime = this.completeTime;
    final latencyMs = this.latencyMs;
    final startTime = this.startTime;
    final step = this.step;
    return {
      'completeTime': ?completeTime,
      'latencyMs': ?latencyMs,
      'startTime': ?startTime,
      'step': ?step,
    };
  }
}

class GoogleCloudDialogflowV2SessionEntityType {
  core.List<GoogleCloudDialogflowV2EntityTypeEntity>? entities;

  ///
  /// Possible string values are:
  /// - "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
  /// - "ENTITY_OVERRIDE_MODE_OVERRIDE"
  /// - "ENTITY_OVERRIDE_MODE_SUPPLEMENT"
  core.String? entityOverrideMode;
  core.String? name;

  GoogleCloudDialogflowV2SessionEntityType({
    this.entities,
    this.entityOverrideMode,
    this.name,
  });

  GoogleCloudDialogflowV2SessionEntityType.fromJson(core.Map json_)
    : this(
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        entityOverrideMode: json_['entityOverrideMode'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entities = this.entities;
    final entityOverrideMode = this.entityOverrideMode;
    final name = this.name;
    return {
      'entities': ?entities,
      'entityOverrideMode': ?entityOverrideMode,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest {
  ///
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "HUMAN_AGENT"
  /// - "AUTOMATED_AGENT"
  /// - "END_USER"
  core.String? participantRole;
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig?
  suggestionFeatureConfig;

  GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest({
    this.participantRole,
    this.suggestionFeatureConfig,
  });

  GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        participantRole: json_['participantRole'] as core.String?,
        suggestionFeatureConfig: json_.containsKey('suggestionFeatureConfig')
            ? GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromJson(
                json_['suggestionFeatureConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final participantRole = this.participantRole;
    final suggestionFeatureConfig = this.suggestionFeatureConfig;
    return {
      'participantRole': ?participantRole,
      'suggestionFeatureConfig': ?suggestionFeatureConfig,
    };
  }
}

class GoogleCloudDialogflowV2SipTrunk {
  core.List<GoogleCloudDialogflowV2Connection>? connections;
  core.String? displayName;
  core.List<core.String>? expectedHostname;
  core.String? name;

  GoogleCloudDialogflowV2SipTrunk({
    this.connections,
    this.displayName,
    this.expectedHostname,
    this.name,
  });

  GoogleCloudDialogflowV2SipTrunk.fromJson(core.Map json_)
    : this(
        connections: (json_['connections'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2Connection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        displayName: json_['displayName'] as core.String?,
        expectedHostname: (json_['expectedHostname'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connections = this.connections;
    final displayName = this.displayName;
    final expectedHostname = this.expectedHostname;
    final name = this.name;
    return {
      'connections': ?connections,
      'displayName': ?displayName,
      'expectedHostname': ?expectedHostname,
      'name': ?name,
    };
  }
}

class GoogleCloudDialogflowV2SmartReplyAnswer {
  core.String? answerRecord;
  core.double? confidence;
  core.String? reply;

  GoogleCloudDialogflowV2SmartReplyAnswer({
    this.answerRecord,
    this.confidence,
    this.reply,
  });

  GoogleCloudDialogflowV2SmartReplyAnswer.fromJson(core.Map json_)
    : this(
        answerRecord: json_['answerRecord'] as core.String?,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        reply: json_['reply'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final confidence = this.confidence;
    final reply = this.reply;
    return {
      'answerRecord': ?answerRecord,
      'confidence': ?confidence,
      'reply': ?reply,
    };
  }
}

class GoogleCloudDialogflowV2SmartReplyMetrics {
  core.double? allowlistCoverage;
  core.String? conversationCount;
  core.List<GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics>? topNMetrics;

  GoogleCloudDialogflowV2SmartReplyMetrics({
    this.allowlistCoverage,
    this.conversationCount,
    this.topNMetrics,
  });

  GoogleCloudDialogflowV2SmartReplyMetrics.fromJson(core.Map json_)
    : this(
        allowlistCoverage: (json_['allowlistCoverage'] as core.num?)
            ?.toDouble(),
        conversationCount: json_['conversationCount'] as core.String?,
        topNMetrics: (json_['topNMetrics'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowlistCoverage = this.allowlistCoverage;
    final conversationCount = this.conversationCount;
    final topNMetrics = this.topNMetrics;
    return {
      'allowlistCoverage': ?allowlistCoverage,
      'conversationCount': ?conversationCount,
      'topNMetrics': ?topNMetrics,
    };
  }
}

class GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics {
  core.int? n;
  core.double? recall;

  GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics({this.n, this.recall});

  GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics.fromJson(core.Map json_)
    : this(
        n: json_['n'] as core.int?,
        recall: (json_['recall'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final n = this.n;
    final recall = this.recall;
    return {'n': ?n, 'recall': ?recall};
  }
}

typedef GoogleCloudDialogflowV2SmartReplyModelMetadata = $ModelMetadata;

class GoogleCloudDialogflowV2SpeechContext {
  core.double? boost;
  core.List<core.String>? phrases;

  GoogleCloudDialogflowV2SpeechContext({this.boost, this.phrases});

  GoogleCloudDialogflowV2SpeechContext.fromJson(core.Map json_)
    : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        phrases: (json_['phrases'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boost = this.boost;
    final phrases = this.phrases;
    return {'boost': ?boost, 'phrases': ?phrases};
  }
}

class GoogleCloudDialogflowV2SpeechToTextConfig {
  ///
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED"
  /// - "AUDIO_ENCODING_LINEAR_16"
  /// - "AUDIO_ENCODING_FLAC"
  /// - "AUDIO_ENCODING_MULAW"
  /// - "AUDIO_ENCODING_AMR"
  /// - "AUDIO_ENCODING_AMR_WB"
  /// - "AUDIO_ENCODING_OGG_OPUS"
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"
  /// - "AUDIO_ENCODING_ALAW"
  core.String? audioEncoding;
  core.bool? enableWordInfo;
  core.String? languageCode;
  core.String? model;
  core.List<core.String>? phraseSets;
  core.int? sampleRateHertz;

  ///
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED"
  /// - "USE_BEST_AVAILABLE"
  /// - "USE_STANDARD"
  /// - "USE_ENHANCED"
  core.String? speechModelVariant;
  core.bool? useTimeoutBasedEndpointing;

  GoogleCloudDialogflowV2SpeechToTextConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.phraseSets,
    this.sampleRateHertz,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  GoogleCloudDialogflowV2SpeechToTextConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        enableWordInfo: json_['enableWordInfo'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        model: json_['model'] as core.String?,
        phraseSets: (json_['phraseSets'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        speechModelVariant: json_['speechModelVariant'] as core.String?,
        useTimeoutBasedEndpointing:
            json_['useTimeoutBasedEndpointing'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audioEncoding = this.audioEncoding;
    final enableWordInfo = this.enableWordInfo;
    final languageCode = this.languageCode;
    final model = this.model;
    final phraseSets = this.phraseSets;
    final sampleRateHertz = this.sampleRateHertz;
    final speechModelVariant = this.speechModelVariant;
    final useTimeoutBasedEndpointing = this.useTimeoutBasedEndpointing;
    return {
      'audioEncoding': ?audioEncoding,
      'enableWordInfo': ?enableWordInfo,
      'languageCode': ?languageCode,
      'model': ?model,
      'phraseSets': ?phraseSets,
      'sampleRateHertz': ?sampleRateHertz,
      'speechModelVariant': ?speechModelVariant,
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }
}

class GoogleCloudDialogflowV2SuggestArticlesRequest {
  GoogleCloudDialogflowV2AssistQueryParameters? assistQueryParams;
  core.int? contextSize;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestArticlesRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestArticlesRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams: json_.containsKey('assistQueryParams')
            ? GoogleCloudDialogflowV2AssistQueryParameters.fromJson(
                json_['assistQueryParams']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assistQueryParams = this.assistQueryParams;
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    return {
      'assistQueryParams': ?assistQueryParams,
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestArticlesResponse {
  core.List<GoogleCloudDialogflowV2ArticleAnswer>? articleAnswers;
  core.int? contextSize;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestArticlesResponse({
    this.articleAnswers,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(core.Map json_)
    : this(
        articleAnswers: (json_['articleAnswers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ArticleAnswer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final articleAnswers = this.articleAnswers;
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    return {
      'articleAnswers': ?articleAnswers,
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestConversationSummaryRequest {
  GoogleCloudDialogflowV2AssistQueryParameters? assistQueryParams;
  core.int? contextSize;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestConversationSummaryRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestConversationSummaryRequest.fromJson(
    core.Map json_,
  ) : this(
        assistQueryParams: json_.containsKey('assistQueryParams')
            ? GoogleCloudDialogflowV2AssistQueryParameters.fromJson(
                json_['assistQueryParams']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assistQueryParams = this.assistQueryParams;
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    return {
      'assistQueryParams': ?assistQueryParams,
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestConversationSummaryResponse {
  core.int? contextSize;
  core.String? latestMessage;
  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary? summary;

  GoogleCloudDialogflowV2SuggestConversationSummaryResponse({
    this.contextSize,
    this.latestMessage,
    this.summary,
  });

  GoogleCloudDialogflowV2SuggestConversationSummaryResponse.fromJson(
    core.Map json_,
  ) : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        summary: json_.containsKey('summary')
            ? GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary.fromJson(
                json_['summary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    final summary = this.summary;
    return {
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
      'summary': ?summary,
    };
  }
}

class GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary {
  core.String? answerRecord;
  core.String? baselineModelVersion;
  core.List<
    GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection
  >?
  sortedTextSections;
  core.String? text;
  core.Map<core.String, core.String>? textSections;

  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary({
    this.answerRecord,
    this.baselineModelVersion,
    this.sortedTextSections,
    this.text,
    this.textSections,
  });

  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary.fromJson(
    core.Map json_,
  ) : this(
        answerRecord: json_['answerRecord'] as core.String?,
        baselineModelVersion: json_['baselineModelVersion'] as core.String?,
        sortedTextSections: (json_['sortedTextSections'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        text: json_['text'] as core.String?,
        textSections:
            (json_['textSections'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerRecord = this.answerRecord;
    final baselineModelVersion = this.baselineModelVersion;
    final sortedTextSections = this.sortedTextSections;
    final text = this.text;
    final textSections = this.textSections;
    return {
      'answerRecord': ?answerRecord,
      'baselineModelVersion': ?baselineModelVersion,
      'sortedTextSections': ?sortedTextSections,
      'text': ?text,
      'textSections': ?textSections,
    };
  }
}

class GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection {
  core.String? section;
  core.String? summary;

  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection({
    this.section,
    this.summary,
  });

  GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummarySummarySection.fromJson(
    core.Map json_,
  ) : this(
        section: json_['section'] as core.String?,
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final section = this.section;
    final summary = this.summary;
    return {'section': ?section, 'summary': ?summary};
  }
}

class GoogleCloudDialogflowV2SuggestFaqAnswersRequest {
  GoogleCloudDialogflowV2AssistQueryParameters? assistQueryParams;
  core.int? contextSize;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestFaqAnswersRequest({
    this.assistQueryParams,
    this.contextSize,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestFaqAnswersRequest.fromJson(core.Map json_)
    : this(
        assistQueryParams: json_.containsKey('assistQueryParams')
            ? GoogleCloudDialogflowV2AssistQueryParameters.fromJson(
                json_['assistQueryParams']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assistQueryParams = this.assistQueryParams;
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    return {
      'assistQueryParams': ?assistQueryParams,
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestFaqAnswersResponse {
  core.int? contextSize;
  core.List<GoogleCloudDialogflowV2FaqAnswer>? faqAnswers;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestFaqAnswersResponse({
    this.contextSize,
    this.faqAnswers,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        faqAnswers: (json_['faqAnswers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2FaqAnswer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final faqAnswers = this.faqAnswers;
    final latestMessage = this.latestMessage;
    return {
      'contextSize': ?contextSize,
      'faqAnswers': ?faqAnswers,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest {
  core.int? contextSize;
  core.String? latestMessage;
  core.String? previousSuggestedQuery;

  GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest({
    this.contextSize,
    this.latestMessage,
    this.previousSuggestedQuery,
  });

  GoogleCloudDialogflowV2SuggestKnowledgeAssistRequest.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        previousSuggestedQuery: json_['previousSuggestedQuery'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    final previousSuggestedQuery = this.previousSuggestedQuery;
    return {
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
      'previousSuggestedQuery': ?previousSuggestedQuery,
    };
  }
}

class GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse {
  core.int? contextSize;
  GoogleCloudDialogflowV2KnowledgeAssistAnswer? knowledgeAssistAnswer;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse({
    this.contextSize,
    this.knowledgeAssistAnswer,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        knowledgeAssistAnswer: json_.containsKey('knowledgeAssistAnswer')
            ? GoogleCloudDialogflowV2KnowledgeAssistAnswer.fromJson(
                json_['knowledgeAssistAnswer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final knowledgeAssistAnswer = this.knowledgeAssistAnswer;
    final latestMessage = this.latestMessage;
    return {
      'contextSize': ?contextSize,
      'knowledgeAssistAnswer': ?knowledgeAssistAnswer,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestSmartRepliesRequest {
  core.int? contextSize;
  GoogleCloudDialogflowV2TextInput? currentTextInput;
  core.String? latestMessage;

  GoogleCloudDialogflowV2SuggestSmartRepliesRequest({
    this.contextSize,
    this.currentTextInput,
    this.latestMessage,
  });

  GoogleCloudDialogflowV2SuggestSmartRepliesRequest.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        currentTextInput: json_.containsKey('currentTextInput')
            ? GoogleCloudDialogflowV2TextInput.fromJson(
                json_['currentTextInput']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        latestMessage: json_['latestMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final currentTextInput = this.currentTextInput;
    final latestMessage = this.latestMessage;
    return {
      'contextSize': ?contextSize,
      'currentTextInput': ?currentTextInput,
      'latestMessage': ?latestMessage,
    };
  }
}

class GoogleCloudDialogflowV2SuggestSmartRepliesResponse {
  core.int? contextSize;
  core.String? latestMessage;
  core.List<GoogleCloudDialogflowV2SmartReplyAnswer>? smartReplyAnswers;

  GoogleCloudDialogflowV2SuggestSmartRepliesResponse({
    this.contextSize,
    this.latestMessage,
    this.smartReplyAnswers,
  });

  GoogleCloudDialogflowV2SuggestSmartRepliesResponse.fromJson(core.Map json_)
    : this(
        contextSize: json_['contextSize'] as core.int?,
        latestMessage: json_['latestMessage'] as core.String?,
        smartReplyAnswers: (json_['smartReplyAnswers'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SmartReplyAnswer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextSize = this.contextSize;
    final latestMessage = this.latestMessage;
    final smartReplyAnswers = this.smartReplyAnswers;
    return {
      'contextSize': ?contextSize,
      'latestMessage': ?latestMessage,
      'smartReplyAnswers': ?smartReplyAnswers,
    };
  }
}

class GoogleCloudDialogflowV2SuggestionDedupingConfig {
  core.bool? enableDeduping;
  core.double? similarityThreshold;

  GoogleCloudDialogflowV2SuggestionDedupingConfig({
    this.enableDeduping,
    this.similarityThreshold,
  });

  GoogleCloudDialogflowV2SuggestionDedupingConfig.fromJson(core.Map json_)
    : this(
        enableDeduping: json_['enableDeduping'] as core.bool?,
        similarityThreshold: (json_['similarityThreshold'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableDeduping = this.enableDeduping;
    final similarityThreshold = this.similarityThreshold;
    return {
      'enableDeduping': ?enableDeduping,
      'similarityThreshold': ?similarityThreshold,
    };
  }
}

class GoogleCloudDialogflowV2SuggestionFeature {
  ///
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "ARTICLE_SUGGESTION"
  /// - "FAQ"
  /// - "SMART_REPLY"
  /// - "CONVERSATION_SUMMARIZATION"
  /// - "KNOWLEDGE_SEARCH"
  /// - "KNOWLEDGE_ASSIST"
  core.String? type;

  GoogleCloudDialogflowV2SuggestionFeature({this.type});

  GoogleCloudDialogflowV2SuggestionFeature.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

class GoogleCloudDialogflowV2SuggestionInput {
  ///
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED"
  /// - "CANCEL"
  /// - "REVISE"
  /// - "CONFIRM"
  core.String? action;
  core.String? answerRecord;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;
  core.String? sendTime;

  GoogleCloudDialogflowV2SuggestionInput({
    this.action,
    this.answerRecord,
    this.parameters,
    this.sendTime,
  });

  GoogleCloudDialogflowV2SuggestionInput.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        sendTime: json_['sendTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final answerRecord = this.answerRecord;
    final parameters = this.parameters;
    final sendTime = this.sendTime;
    return {
      'action': ?action,
      'answerRecord': ?answerRecord,
      'parameters': ?parameters,
      'sendTime': ?sendTime,
    };
  }
}

class GoogleCloudDialogflowV2SuggestionResult {
  GoogleRpcStatus? error;
  GoogleCloudDialogflowV2GenerateSuggestionsResponse?
  generateSuggestionsResponse;
  GoogleCloudDialogflowV2SuggestArticlesResponse? suggestArticlesResponse;
  GoogleCloudDialogflowV2SuggestFaqAnswersResponse? suggestFaqAnswersResponse;
  GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse?
  suggestKnowledgeAssistResponse;
  GoogleCloudDialogflowV2SuggestSmartRepliesResponse?
  suggestSmartRepliesResponse;

  GoogleCloudDialogflowV2SuggestionResult({
    this.error,
    this.generateSuggestionsResponse,
    this.suggestArticlesResponse,
    this.suggestFaqAnswersResponse,
    this.suggestKnowledgeAssistResponse,
    this.suggestSmartRepliesResponse,
  });

  GoogleCloudDialogflowV2SuggestionResult.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? GoogleRpcStatus.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        generateSuggestionsResponse:
            json_.containsKey('generateSuggestionsResponse')
            ? GoogleCloudDialogflowV2GenerateSuggestionsResponse.fromJson(
                json_['generateSuggestionsResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestArticlesResponse: json_.containsKey('suggestArticlesResponse')
            ? GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
                json_['suggestArticlesResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestFaqAnswersResponse:
            json_.containsKey('suggestFaqAnswersResponse')
            ? GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
                json_['suggestFaqAnswersResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestKnowledgeAssistResponse:
            json_.containsKey('suggestKnowledgeAssistResponse')
            ? GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.fromJson(
                json_['suggestKnowledgeAssistResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestSmartRepliesResponse:
            json_.containsKey('suggestSmartRepliesResponse')
            ? GoogleCloudDialogflowV2SuggestSmartRepliesResponse.fromJson(
                json_['suggestSmartRepliesResponse']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final generateSuggestionsResponse = this.generateSuggestionsResponse;
    final suggestArticlesResponse = this.suggestArticlesResponse;
    final suggestFaqAnswersResponse = this.suggestFaqAnswersResponse;
    final suggestKnowledgeAssistResponse = this.suggestKnowledgeAssistResponse;
    final suggestSmartRepliesResponse = this.suggestSmartRepliesResponse;
    return {
      'error': ?error,
      'generateSuggestionsResponse': ?generateSuggestionsResponse,
      'suggestArticlesResponse': ?suggestArticlesResponse,
      'suggestFaqAnswersResponse': ?suggestFaqAnswersResponse,
      'suggestKnowledgeAssistResponse': ?suggestKnowledgeAssistResponse,
      'suggestSmartRepliesResponse': ?suggestSmartRepliesResponse,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationContext {
  core.List<GoogleCloudDialogflowV2FewShotExample>? fewShotExamples;
  core.String? outputLanguageCode;
  core.List<GoogleCloudDialogflowV2SummarizationSection>? summarizationSections;
  core.String? version;

  GoogleCloudDialogflowV2SummarizationContext({
    this.fewShotExamples,
    this.outputLanguageCode,
    this.summarizationSections,
    this.version,
  });

  GoogleCloudDialogflowV2SummarizationContext.fromJson(core.Map json_)
    : this(
        fewShotExamples: (json_['fewShotExamples'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2FewShotExample.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        outputLanguageCode: json_['outputLanguageCode'] as core.String?,
        summarizationSections: (json_['summarizationSections'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SummarizationSection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fewShotExamples = this.fewShotExamples;
    final outputLanguageCode = this.outputLanguageCode;
    final summarizationSections = this.summarizationSections;
    final version = this.version;
    return {
      'fewShotExamples': ?fewShotExamples,
      'outputLanguageCode': ?outputLanguageCode,
      'summarizationSections': ?summarizationSections,
      'version': ?version,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetrics {
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail
  >?
  conversationDetails;
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric
  >?
  overallMetrics;
  core.List<GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken>?
  overallSectionTokens;
  core.String? summarizationEvaluationMergedResultsUri;
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult
  >?
  summarizationEvaluationResults;

  GoogleCloudDialogflowV2SummarizationEvaluationMetrics({
    this.conversationDetails,
    this.overallMetrics,
    this.overallSectionTokens,
    this.summarizationEvaluationMergedResultsUri,
    this.summarizationEvaluationResults,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetrics.fromJson(core.Map json_)
    : this(
        conversationDetails: (json_['conversationDetails'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        overallMetrics: (json_['overallMetrics'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        overallSectionTokens: (json_['overallSectionTokens'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        summarizationEvaluationMergedResultsUri:
            json_['summarizationEvaluationMergedResultsUri'] as core.String?,
        summarizationEvaluationResults:
            (json_['summarizationEvaluationResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conversationDetails = this.conversationDetails;
    final overallMetrics = this.overallMetrics;
    final overallSectionTokens = this.overallSectionTokens;
    final summarizationEvaluationMergedResultsUri =
        this.summarizationEvaluationMergedResultsUri;
    final summarizationEvaluationResults = this.summarizationEvaluationResults;
    return {
      'conversationDetails': ?conversationDetails,
      'overallMetrics': ?overallMetrics,
      'overallSectionTokens': ?overallSectionTokens,
      'summarizationEvaluationMergedResultsUri':
          ?summarizationEvaluationMergedResultsUri,
      'summarizationEvaluationResults': ?summarizationEvaluationResults,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition {
  core.String? accuracyReasoning;
  core.bool? isAccurate;
  core.String? point;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition({
    this.accuracyReasoning,
    this.isAccurate,
    this.point,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition.fromJson(
    core.Map json_,
  ) : this(
        accuracyReasoning: json_['accuracyReasoning'] as core.String?,
        isAccurate: json_['isAccurate'] as core.bool?,
        point: json_['point'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accuracyReasoning = this.accuracyReasoning;
    final isAccurate = this.isAccurate;
    final point = this.point;
    return {
      'accuracyReasoning': ?accuracyReasoning,
      'isAccurate': ?isAccurate,
      'point': ?point,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition {
  core.String? adherenceReasoning;
  core.bool? isAdherent;
  core.String? point;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition({
    this.adherenceReasoning,
    this.isAdherent,
    this.point,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition.fromJson(
    core.Map json_,
  ) : this(
        adherenceReasoning: json_['adherenceReasoning'] as core.String?,
        isAdherent: json_['isAdherent'] as core.bool?,
        point: json_['point'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adherenceReasoning = this.adherenceReasoning;
    final isAdherent = this.isAdherent;
    final point = this.point;
    return {
      'adherenceReasoning': ?adherenceReasoning,
      'isAdherent': ?isAdherent,
      'point': ?point,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric {
  core.bool? isAddressed;
  core.String? question;
  core.String? reasoning;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric({
    this.isAddressed,
    this.question,
    this.reasoning,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric.fromJson(
    core.Map json_,
  ) : this(
        isAddressed: json_['isAddressed'] as core.bool?,
        question: json_['question'] as core.String?,
        reasoning: json_['reasoning'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isAddressed = this.isAddressed;
    final question = this.question;
    final reasoning = this.reasoning;
    return {
      'isAddressed': ?isAddressed,
      'question': ?question,
      'reasoning': ?reasoning,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric {
  core.bool? isAddressed;
  core.String? question;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric({
    this.isAddressed,
    this.question,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric.fromJson(
    core.Map json_,
  ) : this(
        isAddressed: json_['isAddressed'] as core.bool?,
        question: json_['question'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isAddressed = this.isAddressed;
    final question = this.question;
    return {'isAddressed': ?isAddressed, 'question': ?question};
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail {
  core.List<GoogleCloudDialogflowV2MessageEntry>? messageEntries;
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail
  >?
  metricDetails;
  core.List<GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken>?
  sectionTokens;
  core.List<GoogleCloudDialogflowV2SummarySuggestionSummarySection>?
  summarySections;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail({
    this.messageEntries,
    this.metricDetails,
    this.sectionTokens,
    this.summarySections,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetail.fromJson(
    core.Map json_,
  ) : this(
        messageEntries: (json_['messageEntries'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2MessageEntry.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metricDetails: (json_['metricDetails'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        sectionTokens: (json_['sectionTokens'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        summarySections: (json_['summarySections'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarySuggestionSummarySection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final messageEntries = this.messageEntries;
    final metricDetails = this.metricDetails;
    final sectionTokens = this.sectionTokens;
    final summarySections = this.summarySections;
    return {
      'messageEntries': ?messageEntries,
      'metricDetails': ?metricDetails,
      'sectionTokens': ?sectionTokens,
      'summarySections': ?summarySections,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail {
  core.String? metric;
  core.double? score;
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail
  >?
  sectionDetails;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail({
    this.metric,
    this.score,
    this.sectionDetails,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetail.fromJson(
    core.Map json_,
  ) : this(
        metric: json_['metric'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        sectionDetails: (json_['sectionDetails'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metric = this.metric;
    final score = this.score;
    final sectionDetails = this.sectionDetails;
    return {
      'metric': ?metric,
      'score': ?score,
      'sectionDetails': ?sectionDetails,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail {
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult
  >?
  evaluationResults;
  core.double? score;
  core.String? section;
  core.String? sectionSummary;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail({
    this.evaluationResults,
    this.score,
    this.section,
    this.sectionSummary,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsConversationDetailMetricDetailSectionDetail.fromJson(
    core.Map json_,
  ) : this(
        evaluationResults: (json_['evaluationResults'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        score: (json_['score'] as core.num?)?.toDouble(),
        section: json_['section'] as core.String?,
        sectionSummary: json_['sectionSummary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final evaluationResults = this.evaluationResults;
    final score = this.score;
    final section = this.section;
    final sectionSummary = this.sectionSummary;
    return {
      'evaluationResults': ?evaluationResults,
      'score': ?score,
      'section': ?section,
      'sectionSummary': ?sectionSummary,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition {
  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition?
  accuracyDecomposition;
  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition?
  adherenceDecomposition;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition({
    this.accuracyDecomposition,
    this.adherenceDecomposition,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition.fromJson(
    core.Map json_,
  ) : this(
        accuracyDecomposition: json_.containsKey('accuracyDecomposition')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition.fromJson(
                json_['accuracyDecomposition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        adherenceDecomposition: json_.containsKey('adherenceDecomposition')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceDecomposition.fromJson(
                json_['adherenceDecomposition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accuracyDecomposition = this.accuracyDecomposition;
    final adherenceDecomposition = this.adherenceDecomposition;
    return {
      'accuracyDecomposition': ?accuracyDecomposition,
      'adherenceDecomposition': ?adherenceDecomposition,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult {
  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition?
  accuracyDecomposition;
  GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric?
  adherenceRubric;
  GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric?
  completenessRubric;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult({
    this.accuracyDecomposition,
    this.adherenceRubric,
    this.completenessRubric,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult.fromJson(
    core.Map json_,
  ) : this(
        accuracyDecomposition: json_.containsKey('accuracyDecomposition')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetricsAccuracyDecomposition.fromJson(
                json_['accuracyDecomposition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        adherenceRubric: json_.containsKey('adherenceRubric')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetricsAdherenceRubric.fromJson(
                json_['adherenceRubric'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        completenessRubric: json_.containsKey('completenessRubric')
            ? GoogleCloudDialogflowV2SummarizationEvaluationMetricsCompletenessRubric.fromJson(
                json_['completenessRubric']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accuracyDecomposition = this.accuracyDecomposition;
    final adherenceRubric = this.adherenceRubric;
    final completenessRubric = this.completenessRubric;
    return {
      'accuracyDecomposition': ?accuracyDecomposition,
      'adherenceRubric': ?adherenceRubric,
      'completenessRubric': ?completenessRubric,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric {
  core.String? metric;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric({
    this.metric,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsOverallScoresByMetric.fromJson(
    core.Map json_,
  ) : this(metric: json_['metric'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final metric = this.metric;
    return {'metric': ?metric};
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken {
  core.String? section;
  core.String? tokenCount;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken({
    this.section,
    this.tokenCount,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSectionToken.fromJson(
    core.Map json_,
  ) : this(
        section: json_['section'] as core.String?,
        tokenCount: json_['tokenCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final section = this.section;
    final tokenCount = this.tokenCount;
    return {'section': ?section, 'tokenCount': ?tokenCount};
  }
}

class GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition>?
  decompositions;
  core.List<
    GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult
  >?
  evaluationResults;
  core.String? metric;
  core.double? score;
  core.String? section;
  core.String? sectionSummary;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? sessionId;

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult({
    this.decompositions,
    this.evaluationResults,
    this.metric,
    this.score,
    this.section,
    this.sectionSummary,
    this.sessionId,
  });

  GoogleCloudDialogflowV2SummarizationEvaluationMetricsSummarizationEvaluationResult.fromJson(
    core.Map json_,
  ) : this(
        decompositions: (json_['decompositions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsDecomposition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        evaluationResults: (json_['evaluationResults'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarizationEvaluationMetricsEvaluationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        metric: json_['metric'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        section: json_['section'] as core.String?,
        sectionSummary: json_['sectionSummary'] as core.String?,
        sessionId: json_['sessionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final decompositions = this.decompositions;
    final evaluationResults = this.evaluationResults;
    final metric = this.metric;
    final score = this.score;
    final section = this.section;
    final sectionSummary = this.sectionSummary;
    final sessionId = this.sessionId;
    return {
      'decompositions': ?decompositions,
      'evaluationResults': ?evaluationResults,
      'metric': ?metric,
      'score': ?score,
      'section': ?section,
      'sectionSummary': ?sectionSummary,
      'sessionId': ?sessionId,
    };
  }
}

class GoogleCloudDialogflowV2SummarizationSection {
  core.String? definition;
  core.String? key;

  ///
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "SITUATION"
  /// - "ACTION"
  /// - "RESOLUTION"
  /// - "REASON_FOR_CANCELLATION"
  /// - "CUSTOMER_SATISFACTION"
  /// - "ENTITIES"
  /// - "CUSTOMER_DEFINED"
  /// - "SITUATION_CONCISE"
  /// - "ACTION_CONCISE"
  core.String? type;

  GoogleCloudDialogflowV2SummarizationSection({
    this.definition,
    this.key,
    this.type,
  });

  GoogleCloudDialogflowV2SummarizationSection.fromJson(core.Map json_)
    : this(
        definition: json_['definition'] as core.String?,
        key: json_['key'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final definition = this.definition;
    final key = this.key;
    final type = this.type;
    return {'definition': ?definition, 'key': ?key, 'type': ?type};
  }
}

class GoogleCloudDialogflowV2SummarizationSectionList {
  core.List<GoogleCloudDialogflowV2SummarizationSection>? summarizationSections;

  GoogleCloudDialogflowV2SummarizationSectionList({this.summarizationSections});

  GoogleCloudDialogflowV2SummarizationSectionList.fromJson(core.Map json_)
    : this(
        summarizationSections: (json_['summarizationSections'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2SummarizationSection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final summarizationSections = this.summarizationSections;
    return {'summarizationSections': ?summarizationSections};
  }
}

class GoogleCloudDialogflowV2SummarySuggestion {
  core.List<GoogleCloudDialogflowV2SummarySuggestionSummarySection>?
  summarySections;

  GoogleCloudDialogflowV2SummarySuggestion({this.summarySections});

  GoogleCloudDialogflowV2SummarySuggestion.fromJson(core.Map json_)
    : this(
        summarySections: (json_['summarySections'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2SummarySuggestionSummarySection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final summarySections = this.summarySections;
    return {'summarySections': ?summarySections};
  }
}

class GoogleCloudDialogflowV2SummarySuggestionSummarySection {
  core.String? section;
  core.String? summary;

  GoogleCloudDialogflowV2SummarySuggestionSummarySection({
    this.section,
    this.summary,
  });

  GoogleCloudDialogflowV2SummarySuggestionSummarySection.fromJson(
    core.Map json_,
  ) : this(
        section: json_['section'] as core.String?,
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final section = this.section;
    final summary = this.summary;
    return {'section': ?section, 'summary': ?summary};
  }
}

class GoogleCloudDialogflowV2SynthesizeSpeechConfig {
  core.List<core.String>? effectsProfileId;
  core.double? pitch;
  core.List<GoogleCloudDialogflowV2CustomPronunciationParams>? pronunciations;
  core.double? speakingRate;
  GoogleCloudDialogflowV2VoiceSelectionParams? voice;
  core.double? volumeGainDb;

  GoogleCloudDialogflowV2SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.pronunciations,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(core.Map json_)
    : this(
        effectsProfileId: (json_['effectsProfileId'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        pitch: (json_['pitch'] as core.num?)?.toDouble(),
        pronunciations: (json_['pronunciations'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2CustomPronunciationParams.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        voice: json_.containsKey('voice')
            ? GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
                json_['voice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectsProfileId = this.effectsProfileId;
    final pitch = this.pitch;
    final pronunciations = this.pronunciations;
    final speakingRate = this.speakingRate;
    final voice = this.voice;
    final volumeGainDb = this.volumeGainDb;
    return {
      'effectsProfileId': ?effectsProfileId,
      'pitch': ?pitch,
      'pronunciations': ?pronunciations,
      'speakingRate': ?speakingRate,
      'voice': ?voice,
      'volumeGainDb': ?volumeGainDb,
    };
  }
}

typedef GoogleCloudDialogflowV2TextInput = $Shared19;

class GoogleCloudDialogflowV2TextToSpeechSettings {
  core.bool? enableTextToSpeech;

  ///
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED"
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16"
  /// - "OUTPUT_AUDIO_ENCODING_MP3"
  /// - "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS"
  /// - "OUTPUT_AUDIO_ENCODING_MULAW"
  /// - "OUTPUT_AUDIO_ENCODING_ALAW"
  core.String? outputAudioEncoding;
  core.int? sampleRateHertz;
  core.Map<core.String, GoogleCloudDialogflowV2SynthesizeSpeechConfig>?
  synthesizeSpeechConfigs;

  GoogleCloudDialogflowV2TextToSpeechSettings({
    this.enableTextToSpeech,
    this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  GoogleCloudDialogflowV2TextToSpeechSettings.fromJson(core.Map json_)
    : this(
        enableTextToSpeech: json_['enableTextToSpeech'] as core.bool?,
        outputAudioEncoding: json_['outputAudioEncoding'] as core.String?,
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        synthesizeSpeechConfigs:
            (json_['synthesizeSpeechConfigs']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableTextToSpeech = this.enableTextToSpeech;
    final outputAudioEncoding = this.outputAudioEncoding;
    final sampleRateHertz = this.sampleRateHertz;
    final synthesizeSpeechConfigs = this.synthesizeSpeechConfigs;
    return {
      'enableTextToSpeech': ?enableTextToSpeech,
      'outputAudioEncoding': ?outputAudioEncoding,
      'sampleRateHertz': ?sampleRateHertz,
      'synthesizeSpeechConfigs': ?synthesizeSpeechConfigs,
    };
  }
}

class GoogleCloudDialogflowV2Tool {
  core.Map<core.String, core.String>? actionConfirmationRequirement;
  GoogleCloudDialogflowV2ToolConnectorTool? connectorSpec;
  core.String? createTime;
  core.String? description;
  core.String? displayName;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDialogflowV2ToolExtensionTool? extensionSpec;
  GoogleCloudDialogflowV2ToolFunctionTool? functionSpec;
  core.String? name;
  GoogleCloudDialogflowV2ToolOpenApiTool? openApiSpec;
  core.bool? satisfiesPzi;
  core.bool? satisfiesPzs;
  core.String? toolKey;
  core.String? updateTime;

  GoogleCloudDialogflowV2Tool({
    this.actionConfirmationRequirement,
    this.connectorSpec,
    this.createTime,
    this.description,
    this.displayName,
    this.extensionSpec,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.toolKey,
    this.updateTime,
  });

  GoogleCloudDialogflowV2Tool.fromJson(core.Map json_)
    : this(
        actionConfirmationRequirement:
            (json_['actionConfirmationRequirement']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        connectorSpec: json_.containsKey('connectorSpec')
            ? GoogleCloudDialogflowV2ToolConnectorTool.fromJson(
                json_['connectorSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        extensionSpec: json_.containsKey('extensionSpec')
            ? GoogleCloudDialogflowV2ToolExtensionTool.fromJson(
                json_['extensionSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        functionSpec: json_.containsKey('functionSpec')
            ? GoogleCloudDialogflowV2ToolFunctionTool.fromJson(
                json_['functionSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        openApiSpec: json_.containsKey('openApiSpec')
            ? GoogleCloudDialogflowV2ToolOpenApiTool.fromJson(
                json_['openApiSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        toolKey: json_['toolKey'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actionConfirmationRequirement = this.actionConfirmationRequirement;
    final connectorSpec = this.connectorSpec;
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final extensionSpec = this.extensionSpec;
    final functionSpec = this.functionSpec;
    final name = this.name;
    final openApiSpec = this.openApiSpec;
    final satisfiesPzi = this.satisfiesPzi;
    final satisfiesPzs = this.satisfiesPzs;
    final toolKey = this.toolKey;
    final updateTime = this.updateTime;
    return {
      'actionConfirmationRequirement': ?actionConfirmationRequirement,
      'connectorSpec': ?connectorSpec,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'extensionSpec': ?extensionSpec,
      'functionSpec': ?functionSpec,
      'name': ?name,
      'openApiSpec': ?openApiSpec,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'toolKey': ?toolKey,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudDialogflowV2ToolAuthentication {
  GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig? apiKeyConfig;
  GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig? bearerTokenConfig;
  GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig? oauthConfig;
  GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  GoogleCloudDialogflowV2ToolAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  GoogleCloudDialogflowV2ToolAuthentication.fromJson(core.Map json_)
    : this(
        apiKeyConfig: json_.containsKey('apiKeyConfig')
            ? GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig.fromJson(
                json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bearerTokenConfig: json_.containsKey('bearerTokenConfig')
            ? GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig.fromJson(
                json_['bearerTokenConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauthConfig: json_.containsKey('oauthConfig')
            ? GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig.fromJson(
                json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAgentAuthConfig: json_.containsKey('serviceAgentAuthConfig')
            ? GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig.fromJson(
                json_['serviceAgentAuthConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKeyConfig = this.apiKeyConfig;
    final bearerTokenConfig = this.bearerTokenConfig;
    final oauthConfig = this.oauthConfig;
    final serviceAgentAuthConfig = this.serviceAgentAuthConfig;
    return {
      'apiKeyConfig': ?apiKeyConfig,
      'bearerTokenConfig': ?bearerTokenConfig,
      'oauthConfig': ?oauthConfig,
      'serviceAgentAuthConfig': ?serviceAgentAuthConfig,
    };
  }
}

typedef GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig =
    $ToolAuthenticationApiKeyConfig;
typedef GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig =
    $ToolAuthenticationBearerTokenConfig;
typedef GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig =
    $ToolAuthenticationOAuthConfig;
typedef GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig =
    $ToolAuthenticationServiceAgentAuthConfig;

class GoogleCloudDialogflowV2ToolCall {
  core.String? action;
  core.String? answerRecord;
  core.String? createTime;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputParameters;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "TRIGGERED"
  /// - "NEEDS_CONFIRMATION"
  core.String? state;
  core.String? tool;
  core.String? toolDisplayDetails;
  core.String? toolDisplayName;

  GoogleCloudDialogflowV2ToolCall({
    this.action,
    this.answerRecord,
    this.createTime,
    this.inputParameters,
    this.state,
    this.tool,
    this.toolDisplayDetails,
    this.toolDisplayName,
  });

  GoogleCloudDialogflowV2ToolCall.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        inputParameters: json_.containsKey('inputParameters')
            ? json_['inputParameters'] as core.Map<core.String, core.dynamic>
            : null,
        state: json_['state'] as core.String?,
        tool: json_['tool'] as core.String?,
        toolDisplayDetails: json_['toolDisplayDetails'] as core.String?,
        toolDisplayName: json_['toolDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final answerRecord = this.answerRecord;
    final createTime = this.createTime;
    final inputParameters = this.inputParameters;
    final state = this.state;
    final tool = this.tool;
    final toolDisplayDetails = this.toolDisplayDetails;
    final toolDisplayName = this.toolDisplayName;
    return {
      'action': ?action,
      'answerRecord': ?answerRecord,
      'createTime': ?createTime,
      'inputParameters': ?inputParameters,
      'state': ?state,
      'tool': ?tool,
      'toolDisplayDetails': ?toolDisplayDetails,
      'toolDisplayName': ?toolDisplayName,
    };
  }
}

class GoogleCloudDialogflowV2ToolCallResult {
  core.String? action;
  core.String? answerRecord;
  core.String? content;
  core.String? createTime;
  GoogleCloudDialogflowV2ToolCallResultError? error;
  core.String? rawContent;
  core.List<core.int> get rawContentAsBytes =>
      convert.base64.decode(rawContent!);

  set rawContentAsBytes(core.List<core.int> bytes_) {
    rawContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? tool;

  GoogleCloudDialogflowV2ToolCallResult({
    this.action,
    this.answerRecord,
    this.content,
    this.createTime,
    this.error,
    this.rawContent,
    this.tool,
  });

  GoogleCloudDialogflowV2ToolCallResult.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        answerRecord: json_['answerRecord'] as core.String?,
        content: json_['content'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        error: json_.containsKey('error')
            ? GoogleCloudDialogflowV2ToolCallResultError.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rawContent: json_['rawContent'] as core.String?,
        tool: json_['tool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final answerRecord = this.answerRecord;
    final content = this.content;
    final createTime = this.createTime;
    final error = this.error;
    final rawContent = this.rawContent;
    final tool = this.tool;
    return {
      'action': ?action,
      'answerRecord': ?answerRecord,
      'content': ?content,
      'createTime': ?createTime,
      'error': ?error,
      'rawContent': ?rawContent,
      'tool': ?tool,
    };
  }
}

typedef GoogleCloudDialogflowV2ToolCallResultError = $ToolCallResultError;

class GoogleCloudDialogflowV2ToolConnectorTool {
  core.List<GoogleCloudDialogflowV2ToolConnectorToolAction>? actions;
  core.String? name;

  GoogleCloudDialogflowV2ToolConnectorTool({this.actions, this.name});

  GoogleCloudDialogflowV2ToolConnectorTool.fromJson(core.Map json_)
    : this(
        actions: (json_['actions'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudDialogflowV2ToolConnectorToolAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actions = this.actions;
    final name = this.name;
    return {'actions': ?actions, 'name': ?name};
  }
}

class GoogleCloudDialogflowV2ToolConnectorToolAction {
  core.String? connectionActionId;
  GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation?
  entityOperation;
  core.List<core.String>? inputFields;
  core.List<core.String>? outputFields;

  GoogleCloudDialogflowV2ToolConnectorToolAction({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  GoogleCloudDialogflowV2ToolConnectorToolAction.fromJson(core.Map json_)
    : this(
        connectionActionId: json_['connectionActionId'] as core.String?,
        entityOperation: json_.containsKey('entityOperation')
            ? GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation.fromJson(
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

class GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation {
  core.String? entityId;

  ///
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED"
  /// - "LIST"
  /// - "GET"
  /// - "CREATE"
  /// - "UPDATE"
  /// - "DELETE"
  core.String? operation;

  GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation({
    this.entityId,
    this.operation,
  });

  GoogleCloudDialogflowV2ToolConnectorToolActionEntityOperation.fromJson(
    core.Map json_,
  ) : this(
        entityId: json_['entityId'] as core.String?,
        operation: json_['operation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entityId = this.entityId;
    final operation = this.operation;
    return {'entityId': ?entityId, 'operation': ?operation};
  }
}

typedef GoogleCloudDialogflowV2ToolExtensionTool = $Shared10;

class GoogleCloudDialogflowV2ToolFunctionTool {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputSchema;

  ///
  /// Possible string values are:
  /// - "METHOD_TYPE_UNSPECIFIED"
  /// - "GET"
  /// - "POST"
  /// - "PUT"
  /// - "DELETE"
  /// - "PATCH"
  core.String? methodType;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputSchema;

  GoogleCloudDialogflowV2ToolFunctionTool({
    this.inputSchema,
    this.methodType,
    this.outputSchema,
  });

  GoogleCloudDialogflowV2ToolFunctionTool.fromJson(core.Map json_)
    : this(
        inputSchema: json_.containsKey('inputSchema')
            ? json_['inputSchema'] as core.Map<core.String, core.dynamic>
            : null,
        methodType: json_['methodType'] as core.String?,
        outputSchema: json_.containsKey('outputSchema')
            ? json_['outputSchema'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputSchema = this.inputSchema;
    final methodType = this.methodType;
    final outputSchema = this.outputSchema;
    return {
      'inputSchema': ?inputSchema,
      'methodType': ?methodType,
      'outputSchema': ?outputSchema,
    };
  }
}

class GoogleCloudDialogflowV2ToolOpenApiTool {
  GoogleCloudDialogflowV2ToolAuthentication? authentication;
  GoogleCloudDialogflowV2ToolServiceDirectoryConfig? serviceDirectoryConfig;
  core.String? textSchema;
  GoogleCloudDialogflowV2ToolTLSConfig? tlsConfig;

  GoogleCloudDialogflowV2ToolOpenApiTool({
    this.authentication,
    this.serviceDirectoryConfig,
    this.textSchema,
    this.tlsConfig,
  });

  GoogleCloudDialogflowV2ToolOpenApiTool.fromJson(core.Map json_)
    : this(
        authentication: json_.containsKey('authentication')
            ? GoogleCloudDialogflowV2ToolAuthentication.fromJson(
                json_['authentication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
            ? GoogleCloudDialogflowV2ToolServiceDirectoryConfig.fromJson(
                json_['serviceDirectoryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textSchema: json_['textSchema'] as core.String?,
        tlsConfig: json_.containsKey('tlsConfig')
            ? GoogleCloudDialogflowV2ToolTLSConfig.fromJson(
                json_['tlsConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authentication = this.authentication;
    final serviceDirectoryConfig = this.serviceDirectoryConfig;
    final textSchema = this.textSchema;
    final tlsConfig = this.tlsConfig;
    return {
      'authentication': ?authentication,
      'serviceDirectoryConfig': ?serviceDirectoryConfig,
      'textSchema': ?textSchema,
      'tlsConfig': ?tlsConfig,
    };
  }
}

typedef GoogleCloudDialogflowV2ToolServiceDirectoryConfig =
    $ToolServiceDirectoryConfig;

class GoogleCloudDialogflowV2ToolTLSConfig {
  core.List<GoogleCloudDialogflowV2ToolTLSConfigCACert>? caCerts;

  GoogleCloudDialogflowV2ToolTLSConfig({this.caCerts});

  GoogleCloudDialogflowV2ToolTLSConfig.fromJson(core.Map json_)
    : this(
        caCerts: (json_['caCerts'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ToolTLSConfigCACert.fromJson(
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

typedef GoogleCloudDialogflowV2ToolTLSConfigCACert = $ToolTLSConfigCACert;
typedef GoogleCloudDialogflowV2TrainAgentRequest = $Empty;
typedef GoogleCloudDialogflowV2UndeployConversationModelRequest = $Empty;

class GoogleCloudDialogflowV2ValidationError {
  core.List<core.String>? entries;
  core.String? errorMessage;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "INFO"
  /// - "WARNING"
  /// - "ERROR"
  /// - "CRITICAL"
  core.String? severity;

  GoogleCloudDialogflowV2ValidationError({
    this.entries,
    this.errorMessage,
    this.severity,
  });

  GoogleCloudDialogflowV2ValidationError.fromJson(core.Map json_)
    : this(
        entries: (json_['entries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        errorMessage: json_['errorMessage'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entries = this.entries;
    final errorMessage = this.errorMessage;
    final severity = this.severity;
    return {
      'entries': ?entries,
      'errorMessage': ?errorMessage,
      'severity': ?severity,
    };
  }
}

class GoogleCloudDialogflowV2ValidationResult {
  core.List<GoogleCloudDialogflowV2ValidationError>? validationErrors;

  GoogleCloudDialogflowV2ValidationResult({this.validationErrors});

  GoogleCloudDialogflowV2ValidationResult.fromJson(core.Map json_)
    : this(
        validationErrors: (json_['validationErrors'] as core.List?)
            ?.map(
              (value) => GoogleCloudDialogflowV2ValidationError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final validationErrors = this.validationErrors;
    return {'validationErrors': ?validationErrors};
  }
}

class GoogleCloudDialogflowV2Version {
  core.String? createTime;
  core.String? description;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "VERSION_STATUS_UNSPECIFIED"
  /// - "IN_PROGRESS"
  /// - "READY"
  /// - "FAILED"
  core.String? status;
  core.int? versionNumber;

  GoogleCloudDialogflowV2Version({
    this.createTime,
    this.description,
    this.name,
    this.status,
    this.versionNumber,
  });

  GoogleCloudDialogflowV2Version.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        status: json_['status'] as core.String?,
        versionNumber: json_['versionNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final name = this.name;
    final status = this.status;
    final versionNumber = this.versionNumber;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'status': ?status,
      'versionNumber': ?versionNumber,
    };
  }
}

typedef GoogleCloudDialogflowV2VoiceSelectionParams = $VoiceSelectionParams;

class GoogleCloudLocationListLocationsResponse {
  core.List<GoogleCloudLocationLocation>? locations;
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => GoogleCloudLocationLocation.fromJson(
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

typedef GoogleCloudLocationLocation = $GoogleCloudLocationLocation;

class GoogleLongrunningListOperationsResponse {
  core.String? nextPageToken;
  core.List<GoogleLongrunningOperation>? operations;
  core.List<core.String>? unreachable;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => GoogleLongrunningOperation.fromJson(
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

class GoogleLongrunningOperation {
  core.bool? done;
  GoogleRpcStatus? error;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? name;

  ///
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
        error: json_.containsKey('error')
            ? GoogleRpcStatus.fromJson(
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

typedef GoogleProtobufEmpty = $Empty;
typedef GoogleRpcStatus = $GoogleRpcStatus;
typedef GoogleTypeLatLng = $GoogleTypeLatLng;
