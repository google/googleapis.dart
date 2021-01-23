// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.dialogflow.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client dialogflow/v2beta1';

/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
class DialogflowApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View, manage and query your Dialogflow agents
  static const dialogflowScope = 'https://www.googleapis.com/auth/dialogflow';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  DialogflowApi(http.Client client,
      {core.String rootUrl = 'https://dialogflow.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentResourceApi get agent => ProjectsAgentResourceApi(_requester);
  ProjectsKnowledgeBasesResourceApi get knowledgeBases =>
      ProjectsKnowledgeBasesResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Agent.fromJson(data));
  }

  /// Creates/updates the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Agent.fromJson(data));
  }
}

class ProjectsAgentResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesResourceApi get entityTypes =>
      ProjectsAgentEntityTypesResourceApi(_requester);
  ProjectsAgentEnvironmentsResourceApi get environments =>
      ProjectsAgentEnvironmentsResourceApi(_requester);
  ProjectsAgentIntentsResourceApi get intents =>
      ProjectsAgentIntentsResourceApi(_requester);
  ProjectsAgentKnowledgeBasesResourceApi get knowledgeBases =>
      ProjectsAgentKnowledgeBasesResourceApi(_requester);
  ProjectsAgentSessionsResourceApi get sessions =>
      ProjectsAgentSessionsResourceApi(_requester);

  ProjectsAgentResourceApi(commons.ApiRequester client) : _requester = client;

  /// Exports the specified agent to a ZIP file. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to export is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:export';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Supported formats: -
  /// `projects//agent/fulfillment` - `projects//locations//agent/fulfillment`
  /// Value must have pattern "^projects/[^/]+/agent/fulfillment$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Fulfillment.fromJson(data));
  }

  /// Gets agent validation result. Agent validation is performed during
  /// training time and is updated automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [languageCode] - Optional. The language for which you want a validation
  /// result. If not specified, the agent's default language is used. [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent/validationResult';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1ValidationResult.fromJson(data));
  }

  /// Imports the specified agent from a ZIP file. Uploads new intents and
  /// entity types without deleting the existing ones. Intents and entity types
  /// with the same name are replaced with the new versions from
  /// ImportAgentRequest. After the import, the imported draft agent will be
  /// trained automatically (unless disabled in agent settings). However, once
  /// the import is done, training may not be completed yet. Please call
  /// TrainAgent and wait for the operation it returns in order to train
  /// explicitly. Operation An operation which tracks when importing is
  /// complete. It only tracks when the draft agent is updated not when it is
  /// done training.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to import is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:import';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Restores the specified agent from a ZIP file. Replaces the current agent
  /// version with a new one. All the intents and entity types in the older
  /// version are deleted. After the restore, the restored draft agent will be
  /// trained automatically (unless disabled in agent settings). However, once
  /// the restore is done, training may not be completed yet. Please call
  /// TrainAgent and wait for the operation it returns in order to train
  /// explicitly. Operation An operation which tracks when restoring is
  /// complete. It only tracks when the draft agent is updated not when it is
  /// done training.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to restore is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:restore';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Returns the list of agents. Since there is at most one conversational
  /// agent per project, this method is useful primarily for listing all agents
  /// across projects the caller has access to. One can achieve that with a
  /// wildcard project collection id "-". Refer to [List
  /// Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list agents from. Format: `projects/`
  /// or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:search';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(data));
  }

  /// Trains the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to train is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:train';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates the fulfillment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the fulfillment. Supported
  /// formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment`
  /// Value must have pattern "^projects/[^/]+/agent/fulfillment$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Fulfillment.fromJson(data));
  }
}

class ProjectsAgentEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResourceApi get entities =>
      ProjectsAgentEntityTypesEntitiesResourceApi(_requester);

  ProjectsAgentEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes entity types in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Supported formats: - `projects//agent`, -
  /// `projects//locations//agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple entity types in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create entity
  /// types in. Supported formats: - `projects//agent` -
  /// `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an entity type in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }

  /// Deletes the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Supported formats: -
  /// `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(data));
  }

  /// Updates the specified entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
  /// methods. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }
}

class ProjectsAgentEntityTypesEntitiesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to create entities in.
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchCreate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes entities in the specified entity type. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to delete entries for.
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates or creates multiple entities in the specified entity type. This
  /// method does not affect entities in the entity type that aren't explicitly
  /// specified in the request. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsAgentEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersResourceApi get users =>
      ProjectsAgentEnvironmentsUsersResourceApi(_requester);

  ProjectsAgentEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all non-draft environments of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all environments from. Format: -
  /// `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/environments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(data));
  }
}

class ProjectsAgentEnvironmentsUsersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsResourceApi get sessions =>
      ProjectsAgentEnvironmentsUsersSessionsResourceApi(_requester);

  ProjectsAgentEnvironmentsUsersResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAgentEnvironmentsUsersSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi get contexts =>
      ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi(_requester);
  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi
      get entityTypes =>
          ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi(
              _requester);

  ProjectsAgentEnvironmentsUsersSessionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause contexts
  /// and session entity types to be updated, which in turn might affect results
  /// of future queries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the [API interactions
  /// guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (session == null) {
      throw core.ArgumentError('Parameter session is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(data));
  }
}

class ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a context. If the specified context already exists, overrides the
  /// context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
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
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
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
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(data));
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
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }
}

class ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type. If the specified session entity type
  /// already exists, overrides the session entity type. This method doesn't
  /// work with Google Assistant integration. Contact Dialogflow support if you
  /// need to use session entities with Google Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Deletes the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Returns the list of all session entity types in the specified session.
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
            data));
  }

  /// Updates the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }
}

class ProjectsAgentIntentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentIntentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes intents in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Supported formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple intents in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create intents in.
  /// Supported formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an intent in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a intent for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/agent$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }

  /// Deletes the specified intent and its direct or indirect followup intents.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. If this intent has
  /// direct or indirect followup intents, we also delete them. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Supported formats: -
  /// `projects//agent/intents/` - `projects//locations//agent/intents/`
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(data));
  }

  /// Updates the specified intent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The unique identifier of this intent. Required for
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }
}

class ProjectsAgentKnowledgeBasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentKnowledgeBasesDocumentsResourceApi get documents =>
      ProjectsAgentKnowledgeBasesDocumentsResourceApi(_requester);

  ProjectsAgentKnowledgeBasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a knowledge base. Note: The `projects.agent.knowledgeBases`
  /// resource is deprecated; only use `projects.knowledgeBases`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a knowledge base for. Format:
  /// `projects/`.
  /// Value must have pattern "^projects/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/knowledgeBases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }

  /// Deletes the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to delete. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/agent/knowledgeBases/[^/]+$".
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
    core.bool force,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (force != null) {
      _queryParams['force'] = ['${force}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to retrieve. Format
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/agent/knowledgeBases/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }

  /// Returns the list of all knowledge bases of the specified agent. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects/`.
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [filter] - The filter expression used to filter knowledge bases returned
  /// by the list method. The expression has the following syntax: [AND ] ...
  /// The following fields and operators are supported: * display_name with
  /// has(:) operator * language_code with equals(=) operator Examples: *
  /// 'language_code=en-us' matches knowledge bases with en-us language code. *
  /// 'display_name:articles' matches knowledge bases whose display name
  /// contains "articles". * 'display_name:"Best Articles"' matches knowledge
  /// bases whose display name contains "Best Articles". * 'language_code=en-gb
  /// AND display_name=articles' matches all knowledge bases whose display name
  /// contains "articles" and whose language code is "en-gb". Note: An empty
  /// filter string (i.e. "") is a no-op and will result in no filtering. For
  /// more information about filtering, see [API
  /// Filtering](https://aip.dev/160).
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/knowledgeBases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(data));
  }

  /// Updates the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The knowledge base resource name. The name must be empty when
  /// creating a knowledge base. Format: `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/agent/knowledgeBases/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }
}

class ProjectsAgentKnowledgeBasesDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentKnowledgeBasesDocumentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knoweldge base to create a document for. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/agent/knowledgeBases/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Retrieves the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format
  /// `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Document.fromJson(data));
  }

  /// Returns the list of all documents of the knowledge base. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/agent/knowledgeBases/[^/]+$".
  ///
  /// [filter] - The filter expression used to filter documents returned by the
  /// list method. The expression has the following syntax: [AND ] ... The
  /// following fields and operators are supported: * knowledge_types with
  /// has(:) operator * display_name with has(:) operator * state with equals(=)
  /// operator Examples: * "knowledge_types:FAQ" matches documents with FAQ
  /// knowledge type. * "display_name:customer" matches documents whose display
  /// name contains "customer". * "state=ACTIVE" matches documents with ACTIVE
  /// state. * "knowledge_types:FAQ AND state=ACTIVE" matches all active FAQ
  /// documents. For more information about filtering, see [API
  /// Filtering](https://aip.dev/160).
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(data));
  }

  /// Updates the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The document resource name. The name must be empty when
  /// creating a document. Format: `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Reloads the specified document from its specified source, content_uri or
  /// content. The previously loaded content of the document will be deleted.
  /// Note: Even when the content of the document has not changed, there still
  /// may be side effects because of internal implementation changes. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to reload. Format:
  /// `projects//knowledgeBases//documents/`
  /// Value must have pattern
  /// "^projects/[^/]+/agent/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':reload';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsAgentSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResourceApi get contexts =>
      ProjectsAgentSessionsContextsResourceApi(_requester);
  ProjectsAgentSessionsEntityTypesResourceApi get entityTypes =>
      ProjectsAgentSessionsEntityTypesResourceApi(_requester);

  ProjectsAgentSessionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause contexts
  /// and session entity types to be updated, which in turn might affect results
  /// of future queries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the [API interactions
  /// guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (session == null) {
      throw core.ArgumentError('Parameter session is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(data));
  }
}

class ProjectsAgentSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context. If the specified context already exists, overrides the
  /// context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
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
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
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
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(data));
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
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }
}

class ProjectsAgentSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type. If the specified session entity type
  /// already exists, overrides the session entity type. This method doesn't
  /// work with Google Assistant integration. Contact Dialogflow support if you
  /// need to use session entities with Google Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Deletes the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Returns the list of all session entity types in the specified session.
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
            data));
  }

  /// Updates the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }
}

class ProjectsKnowledgeBasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsKnowledgeBasesDocumentsResourceApi get documents =>
      ProjectsKnowledgeBasesDocumentsResourceApi(_requester);

  ProjectsKnowledgeBasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a knowledge base. Note: The `projects.agent.knowledgeBases`
  /// resource is deprecated; only use `projects.knowledgeBases`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to create a knowledge base for. Format:
  /// `projects/`.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/knowledgeBases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }

  /// Deletes the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to delete. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/knowledgeBases/[^/]+$".
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
    core.bool force,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (force != null) {
      _queryParams['force'] = ['${force}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the knowledge base to retrieve. Format
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/knowledgeBases/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }

  /// Returns the list of all knowledge bases of the specified agent. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list of knowledge bases for. Format:
  /// `projects/`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The filter expression used to filter knowledge bases returned
  /// by the list method. The expression has the following syntax: [AND ] ...
  /// The following fields and operators are supported: * display_name with
  /// has(:) operator * language_code with equals(=) operator Examples: *
  /// 'language_code=en-us' matches knowledge bases with en-us language code. *
  /// 'display_name:articles' matches knowledge bases whose display name
  /// contains "articles". * 'display_name:"Best Articles"' matches knowledge
  /// bases whose display name contains "Best Articles". * 'language_code=en-gb
  /// AND display_name=articles' matches all knowledge bases whose display name
  /// contains "articles" and whose language code is "en-gb". Note: An empty
  /// filter string (i.e. "") is a no-op and will result in no filtering. For
  /// more information about filtering, see [API
  /// Filtering](https://aip.dev/160).
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/knowledgeBases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(data));
  }

  /// Updates the specified knowledge base. Note: The
  /// `projects.agent.knowledgeBases` resource is deprecated; only use
  /// `projects.knowledgeBases`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The knowledge base resource name. The name must be empty when
  /// creating a knowledge base. Format: `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/knowledgeBases/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(data));
  }
}

class ProjectsKnowledgeBasesDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsKnowledgeBasesDocumentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knoweldge base to create a document for. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/knowledgeBases/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Retrieves the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format
  /// `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Document.fromJson(data));
  }

  /// Returns the list of all documents of the knowledge base. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The knowledge base to list all documents for. Format:
  /// `projects//knowledgeBases/`.
  /// Value must have pattern "^projects/[^/]+/knowledgeBases/[^/]+$".
  ///
  /// [filter] - The filter expression used to filter documents returned by the
  /// list method. The expression has the following syntax: [AND ] ... The
  /// following fields and operators are supported: * knowledge_types with
  /// has(:) operator * display_name with has(:) operator * state with equals(=)
  /// operator Examples: * "knowledge_types:FAQ" matches documents with FAQ
  /// knowledge type. * "display_name:customer" matches documents whose display
  /// name contains "customer". * "state=ACTIVE" matches documents with ACTIVE
  /// state. * "knowledge_types:FAQ AND state=ACTIVE" matches all active FAQ
  /// documents. For more information about filtering, see [API
  /// Filtering](https://aip.dev/160).
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(data));
  }

  /// Updates the specified document. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The document resource name. The name must be empty when
  /// creating a document. Format: `projects//knowledgeBases//documents/`.
  /// Value must have pattern
  /// "^projects/[^/]+/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Reloads the specified document from its specified source, content_uri or
  /// content. The previously loaded content of the document will be deleted.
  /// Note: Even when the content of the document has not changed, there still
  /// may be side effects because of internal implementation changes. Note: The
  /// `projects.agent.knowledgeBases.documents` resource is deprecated; only use
  /// `projects.knowledgeBases.documents`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to reload. Format:
  /// `projects//knowledgeBases//documents/`
  /// Value must have pattern
  /// "^projects/[^/]+/knowledgeBases/[^/]+/documents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':reload';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentResourceApi get agent =>
      ProjectsLocationsAgentResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      ProjectsLocationsOperationsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Agent.fromJson(data));
  }

  /// Creates/updates the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Agent.fromJson(data));
  }
}

class ProjectsLocationsAgentResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesResourceApi get entityTypes =>
      ProjectsLocationsAgentEntityTypesResourceApi(_requester);
  ProjectsLocationsAgentEnvironmentsResourceApi get environments =>
      ProjectsLocationsAgentEnvironmentsResourceApi(_requester);
  ProjectsLocationsAgentIntentsResourceApi get intents =>
      ProjectsLocationsAgentIntentsResourceApi(_requester);
  ProjectsLocationsAgentSessionsResourceApi get sessions =>
      ProjectsLocationsAgentSessionsResourceApi(_requester);

  ProjectsLocationsAgentResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Exports the specified agent to a ZIP file. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to export is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:export';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Retrieves the fulfillment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the fulfillment. Supported formats: -
  /// `projects//agent/fulfillment` - `projects//locations//agent/fulfillment`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/fulfillment$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Fulfillment.fromJson(data));
  }

  /// Gets agent validation result. Agent validation is performed during
  /// training time and is updated automatically when training is completed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent is associated with.
  /// Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [languageCode] - Optional. The language for which you want a validation
  /// result. If not specified, the agent's default language is used. [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent/validationResult';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1ValidationResult.fromJson(data));
  }

  /// Imports the specified agent from a ZIP file. Uploads new intents and
  /// entity types without deleting the existing ones. Intents and entity types
  /// with the same name are replaced with the new versions from
  /// ImportAgentRequest. After the import, the imported draft agent will be
  /// trained automatically (unless disabled in agent settings). However, once
  /// the import is done, training may not be completed yet. Please call
  /// TrainAgent and wait for the operation it returns in order to train
  /// explicitly. Operation An operation which tracks when importing is
  /// complete. It only tracks when the draft agent is updated not when it is
  /// done training.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to import is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:import';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Restores the specified agent from a ZIP file. Replaces the current agent
  /// version with a new one. All the intents and entity types in the older
  /// version are deleted. After the restore, the restored draft agent will be
  /// trained automatically (unless disabled in agent settings). However, once
  /// the restore is done, training may not be completed yet. Please call
  /// TrainAgent and wait for the operation it returns in order to train
  /// explicitly. Operation An operation which tracks when restoring is
  /// complete. It only tracks when the draft agent is updated not when it is
  /// done training.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to restore is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:restore';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Returns the list of agents. Since there is at most one conversational
  /// agent per project, this method is useful primarily for listing all agents
  /// across projects the caller has access to. One can achieve that with a
  /// wildcard project collection id "-". Refer to [List
  /// Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list agents from. Format: `projects/`
  /// or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:search';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(data));
  }

  /// Trains the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to train is associated
  /// with. Format: `projects/` or `projects//locations/`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:train';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates the fulfillment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the fulfillment. Supported
  /// formats: - `projects//agent/fulfillment` -
  /// `projects//locations//agent/fulfillment`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/fulfillment$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Fulfillment.fromJson(data));
  }
}

class ProjectsLocationsAgentEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesEntitiesResourceApi get entities =>
      ProjectsLocationsAgentEntityTypesEntitiesResourceApi(_requester);

  ProjectsLocationsAgentEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes entity types in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Supported formats: - `projects//agent`, -
  /// `projects//locations//agent`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple entity types in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create entity
  /// types in. Supported formats: - `projects//agent` -
  /// `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an entity type in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }

  /// Deletes the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Supported
  /// formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type. Supported formats: -
  /// `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from. Supported
  /// formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(data));
  }

  /// Updates the specified entity type.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language used to access language-specific
  /// data. If not specified, the agent's default language is used. For more
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String languageCode,
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1EntityType.fromJson(data));
  }
}

class ProjectsLocationsAgentEntityTypesEntitiesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEntityTypesEntitiesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to create entities in.
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchCreate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes entities in the specified entity type. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to delete entries for.
  /// Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates or creates multiple entities in the specified entity type. This
  /// method does not affect entities in the entity type that aren't explicitly
  /// specified in the request. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsLocationsAgentEnvironmentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersResourceApi get users =>
      ProjectsLocationsAgentEnvironmentsUsersResourceApi(_requester);

  ProjectsLocationsAgentEnvironmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of all non-draft environments of the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all environments from. Format: -
  /// `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/environments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(data));
  }
}

class ProjectsLocationsAgentEnvironmentsUsersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsResourceApi get sessions =>
      ProjectsLocationsAgentEnvironmentsUsersSessionsResourceApi(_requester);

  ProjectsLocationsAgentEnvironmentsUsersResourceApi(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResourceApi
      get contexts =>
          ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResourceApi(
              _requester);
  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResourceApi
      get entityTypes =>
          ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResourceApi(
              _requester);

  ProjectsLocationsAgentEnvironmentsUsersSessionsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause contexts
  /// and session entity types to be updated, which in turn might affect results
  /// of future queries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the [API interactions
  /// guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (session == null) {
      throw core.ArgumentError('Parameter session is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(data));
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a context. If the specified context already exists, overrides the
  /// context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
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
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
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
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(data));
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
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/contexts/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }
}

class ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type. If the specified session entity type
  /// already exists, overrides the session entity type. This method doesn't
  /// work with Google Assistant integration. Contact Dialogflow support if you
  /// need to use session entities with Google Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Deletes the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Returns the list of all session entity types in the specified session.
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
            data));
  }

  /// Updates the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/environments/[^/]+/users/[^/]+/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }
}

class ProjectsLocationsAgentIntentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentIntentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes intents in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Supported formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchDelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple intents in the specified agent. Operation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create intents in.
  /// Supported formats: - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchUpdate';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an intent in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a intent for. Supported formats:
  /// - `projects//agent` - `projects//locations//agent`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }

  /// Deletes the specified intent and its direct or indirect followup intents.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. If this intent has
  /// direct or indirect followup intents, we also delete them. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/intents/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent. Supported formats: -
  /// `projects//agent/intents/` - `projects//locations//agent/intents/`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/intents/[^/]+$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from. Format:
  /// `projects//agent`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/agent$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(data));
  }

  /// Updates the specified intent.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/intents/[^/]+$".
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
  /// information, see [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
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
    core.String intentView,
    core.String languageCode,
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (intentView != null) {
      _queryParams['intentView'] = [intentView];
    }
    if (languageCode != null) {
      _queryParams['languageCode'] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Intent.fromJson(data));
  }
}

class ProjectsLocationsAgentSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsContextsResourceApi get contexts =>
      ProjectsLocationsAgentSessionsContextsResourceApi(_requester);
  ProjectsLocationsAgentSessionsEntityTypesResourceApi get entityTypes =>
      ProjectsLocationsAgentSessionsEntityTypesResourceApi(_requester);

  ProjectsLocationsAgentSessionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause contexts
  /// and session entity types to be updated, which in turn might affect results
  /// of future queries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we are using "-". It's up to the API caller to choose an
  /// appropriate `Session ID` and `User Id`. They can be a random number or
  /// some type of user and session identifiers (preferably hashed). The length
  /// of the `Session ID` and `User ID` must not exceed 36 characters. For more
  /// information, see the [API interactions
  /// guide](https://cloud.google.com/dialogflow/docs/api-overview).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (session == null) {
      throw core.ArgumentError('Parameter session is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(data));
  }
}

class ProjectsLocationsAgentSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsContextsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context. If the specified context already exists, overrides the
  /// context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
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
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
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
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from. Supported
  /// formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(data));
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
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudDialogflowV2beta1Context.fromJson(data));
  }
}

class ProjectsLocationsAgentSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsAgentSessionsEntityTypesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type. If the specified session entity type
  /// already exists, overrides the session entity type. This method doesn't
  /// work with Google Assistant integration. Contact Dialogflow support if you
  /// need to use session entities with Google Assistant integration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Deletes the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }

  /// Returns the list of all session entity types in the specified session.
  /// This method doesn't work with Google Assistant integration. Contact
  /// Dialogflow support if you need to use session entities with Google
  /// Assistant integration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Supported formats: - `projects//agent/sessions/, -
  /// `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`, If `Location
  /// ID` is not specified we assume default 'us' location. If `Environment ID`
  /// is not specified, we assume default 'draft' environment. If `User ID` is
  /// not specified, we assume default '-' user.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+$".
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
            data));
  }

  /// Updates the specified session entity type. This method doesn't work with
  /// Google Assistant integration. Contact Dialogflow support if you need to
  /// use session entities with Google Assistant integration.
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
  /// "^projects/[^/]+/locations/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
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
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
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
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleLongrunningOperation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+$".
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

/// Metadata associated with the long running operation for
/// Versions.CreateVersion.
class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata {
  /// Name of the created version. Format:
  /// `projects//locations//agents//flows//versions/`.
  core.String version;

  GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata();

  GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowCxV3beta1ExportAgentResponse {
  /// Uncompressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in ExportAgentRequest.
  core.String agentUri;

  GoogleCloudDialogflowCxV3beta1ExportAgentResponse();

  GoogleCloudDialogflowCxV3beta1ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// The response message for Agents.ImportAgent.
class GoogleCloudDialogflowCxV3beta1ImportAgentResponse {
  /// The unique identifier of the new agent. Format:
  /// `projects//locations//agents/`.
  core.String agent;

  GoogleCloudDialogflowCxV3beta1ImportAgentResponse();

  GoogleCloudDialogflowCxV3beta1ImportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agent')) {
      agent = _json['agent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agent != null) {
      _json['agent'] = agent;
    }
    return _json;
  }
}

/// Represents page information communicated to and from the webhook.
class GoogleCloudDialogflowCxV3beta1PageInfo {
  /// Always present for WebhookRequest. Ignored for WebhookResponse. The unique
  /// identifier of the current page. Format:
  /// `projects//locations//agents//flows//pages/`.
  core.String currentPage;

  /// Optional for both WebhookRequest and WebhookResponse. Information about
  /// the form.
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfo formInfo;

  GoogleCloudDialogflowCxV3beta1PageInfo();

  GoogleCloudDialogflowCxV3beta1PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey('currentPage')) {
      currentPage = _json['currentPage'];
    }
    if (_json.containsKey('formInfo')) {
      formInfo = GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.fromJson(
          _json['formInfo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (currentPage != null) {
      _json['currentPage'] = currentPage;
    }
    if (formInfo != null) {
      _json['formInfo'] = formInfo.toJson();
    }
    return _json;
  }
}

/// Represents form information.
class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo {
  /// Optional for both WebhookRequest and WebhookResponse. The parameters
  /// contained in the form. Note that the webhook cannot add or remove any form
  /// parameter.
  core.List<GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>
      parameterInfo;

  GoogleCloudDialogflowCxV3beta1PageInfoFormInfo();

  GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.fromJson(core.Map _json) {
    if (_json.containsKey('parameterInfo')) {
      parameterInfo = (_json['parameterInfo'] as core.List)
          .map<GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>(
              (value) =>
                  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (parameterInfo != null) {
      _json['parameterInfo'] =
          parameterInfo.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents parameter information.
class GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo {
  /// Always present for WebhookRequest. Required for WebhookResponse. The
  /// human-readable name of the parameter, unique within the form. This field
  /// cannot be modified by the webhook.
  core.String displayName;

  /// Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the
  /// parameter value was just collected on the last conversation turn.
  core.bool justCollected;

  /// Optional for both WebhookRequest and WebhookResponse. Indicates whether
  /// the parameter is required. Optional parameters will not trigger prompts;
  /// however, they are filled if the user specifies them. Required parameters
  /// must be filled before form filling concludes.
  core.bool required;

  /// Always present for WebhookRequest. Required for WebhookResponse. The state
  /// of the parameter. This field can be set to INVALID by the webhook to
  /// invalidate the parameter; other values set by the webhook will be ignored.
  /// Possible string values are:
  /// - "PARAMETER_STATE_UNSPECIFIED" : Not specified. This value should be
  /// never used.
  /// - "EMPTY" : Indicates that the parameter does not have a value.
  /// - "INVALID" : Indicates that the parameter value is invalid. This field
  /// can be used by the webhook to invalidate the parameter and ask the server
  /// to collect it from the user again.
  /// - "FILLED" : Indicates that the parameter has a value.
  core.String state;

  /// Optional for both WebhookRequest and WebhookResponse. The value of the
  /// parameter. This field can be set by the webhook to change the parameter
  /// value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object value;

  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo();

  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('justCollected')) {
      justCollected = _json['justCollected'];
    }
    if (_json.containsKey('required')) {
      required = _json['required'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (justCollected != null) {
      _json['justCollected'] = justCollected;
    }
    if (required != null) {
      _json['required'] = required;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Represents a response message that can be returned by a conversational
/// agent. Response messages are also used for output audio synthesis. The
/// approach is as follows: * If at least one OutputAudioText response is
/// present, then all OutputAudioText responses are linearly concatenated, and
/// the result is used for output audio synthesis. * If the OutputAudioText
/// responses are a mixture of text and SSML, then the concatenated result is
/// treated as SSML; otherwise, the result is treated as either text or SSML as
/// appropriate. The agent designer should ideally use either text or SSML
/// consistently throughout the bot design. * Otherwise, all Text responses are
/// linearly concatenated, and the result is used for output audio synthesis.
/// This approach allows for more sophisticated user experience scenarios, where
/// the text displayed to the user may differ from what is heard.
class GoogleCloudDialogflowCxV3beta1ResponseMessage {
  /// Indicates that the conversation succeeded.
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
      conversationSuccess;

  /// Output only. A signal that indicates the interaction with the Dialogflow
  /// agent has ended. This message is generated by Dialogflow only when the
  /// conversation reaches `END_SESSION` or `END_PAGE` page. It is not supposed
  /// to be defined by the user. It's guaranteed that there is at most one such
  /// message in each response.
  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction endInteraction;

  /// Hands off conversation to a human agent.
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
      liveAgentHandoff;

  /// Output only. An audio response message composed of both the synthesized
  /// Dialogflow agent responses and responses defined via play_audio. This
  /// message is generated by Dialogflow only and not supposed to be defined by
  /// the user.
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio mixedAudio;

  /// A text or ssml response that is preferentially used for TTS output audio
  /// synthesis, as described in the comment on the ResponseMessage message.
  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText outputAudioText;

  /// Returns a response containing a custom, platform-specific payload.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Signal that the client should play an audio clip hosted at a
  /// client-specific URI. Dialogflow uses this to construct mixed_audio.
  /// However, Dialogflow itself does not try to read or process the URI in any
  /// way.
  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio playAudio;

  /// Returns a text response.
  GoogleCloudDialogflowCxV3beta1ResponseMessageText text;

  GoogleCloudDialogflowCxV3beta1ResponseMessage();

  GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(core.Map _json) {
    if (_json.containsKey('conversationSuccess')) {
      conversationSuccess =
          GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
              .fromJson(_json['conversationSuccess']);
    }
    if (_json.containsKey('endInteraction')) {
      endInteraction =
          GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction.fromJson(
              _json['endInteraction']);
    }
    if (_json.containsKey('liveAgentHandoff')) {
      liveAgentHandoff =
          GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
              .fromJson(_json['liveAgentHandoff']);
    }
    if (_json.containsKey('mixedAudio')) {
      mixedAudio =
          GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
              _json['mixedAudio']);
    }
    if (_json.containsKey('outputAudioText')) {
      outputAudioText =
          GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromJson(
              _json['outputAudioText']);
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('playAudio')) {
      playAudio =
          GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
              _json['playAudio']);
    }
    if (_json.containsKey('text')) {
      text = GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
          _json['text']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (conversationSuccess != null) {
      _json['conversationSuccess'] = conversationSuccess.toJson();
    }
    if (endInteraction != null) {
      _json['endInteraction'] = endInteraction.toJson();
    }
    if (liveAgentHandoff != null) {
      _json['liveAgentHandoff'] = liveAgentHandoff.toJson();
    }
    if (mixedAudio != null) {
      _json['mixedAudio'] = mixedAudio.toJson();
    }
    if (outputAudioText != null) {
      _json['outputAudioText'] = outputAudioText.toJson();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (playAudio != null) {
      _json['playAudio'] = playAudio.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}

/// Indicates that the conversation succeeded, i.e., the bot handled the issue
/// that the customer talked to it about. Dialogflow only uses this to determine
/// which conversations should be counted as successful and doesn't process the
/// metadata in this message in any way. Note that Dialogflow also considers
/// conversations that get to the conversation end page as successful even if
/// they don't return ConversationSuccess. You may set this, for example: * In
/// the entry_fulfillment of a Page if entering the page indicates that the
/// conversation succeeded. * In a webhook response when you determine that you
/// handled the customer issue.
class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();

  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromJson(
      core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    return _json;
  }
}

/// Indicates that interaction with the Dialogflow agent has ended. This message
/// is generated by Dialogflow only and not supposed to be defined by the user.
class GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction {
  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();

  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Indicates that the conversation should be handed off to a live agent.
/// Dialogflow only uses this to determine which conversations were handed off
/// to a human agent for measurement purposes. What else to do with this signal
/// is up to you and your handoff procedures. You may set this, for example: *
/// In the entry_fulfillment of a Page if entering the page indicates something
/// went extremely wrong in the conversation. * In a webhook response when you
/// determine that the customer issue can only be handled by a human.
class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff {
  /// Custom metadata for your handoff procedure. Dialogflow doesn't impose any
  /// structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();

  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromJson(
      core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    return _json;
  }
}

/// Represents an audio message that is composed of both segments synthesized
/// from the Dialogflow agent prompts and ones hosted externally at the
/// specified URIs. The external URIs are specified via play_audio. This message
/// is generated by Dialogflow only and not supposed to be defined by the user.
class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio {
  /// Segments this audio response is composed of.
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
      segments;

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
      core.Map _json) {
    if (_json.containsKey('segments')) {
      segments = (_json['segments'] as core.List)
          .map<GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>(
              (value) =>
                  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (segments != null) {
      _json['segments'] = segments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents one segment of audio.
class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment {
  /// Output only. Whether the playback of this segment can be interrupted by
  /// the end user's speech and the client should then start the next Dialogflow
  /// request.
  core.bool allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the
  /// output config specified in the request.
  core.String audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio);

  set audioAsBytes(core.List<core.int> _bytes) {
    audio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Client-specific URI that points to an audio clip accessible to the client.
  /// Dialogflow does not impose any validation on it.
  core.String uri;

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment.fromJson(
      core.Map _json) {
    if (_json.containsKey('allowPlaybackInterruption')) {
      allowPlaybackInterruption = _json['allowPlaybackInterruption'];
    }
    if (_json.containsKey('audio')) {
      audio = _json['audio'];
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowPlaybackInterruption != null) {
      _json['allowPlaybackInterruption'] = allowPlaybackInterruption;
    }
    if (audio != null) {
      _json['audio'] = audio;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// A text or ssml response that is preferentially used for TTS output audio
/// synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText {
  /// Output only. Whether the playback of this message can be interrupted by
  /// the end user's speech and the client can then starts the next Dialogflow
  /// request.
  core.bool allowPlaybackInterruption;

  /// The SSML text to be synthesized. For more information, see
  /// [SSML](/speech/text-to-speech/docs/ssml).
  core.String ssml;

  /// The raw text to be synthesized.
  core.String text;

  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();

  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromJson(
      core.Map _json) {
    if (_json.containsKey('allowPlaybackInterruption')) {
      allowPlaybackInterruption = _json['allowPlaybackInterruption'];
    }
    if (_json.containsKey('ssml')) {
      ssml = _json['ssml'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowPlaybackInterruption != null) {
      _json['allowPlaybackInterruption'] = allowPlaybackInterruption;
    }
    if (ssml != null) {
      _json['ssml'] = ssml;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Specifies an audio clip to be played by the client as part of the response.
class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio {
  /// Output only. Whether the playback of this message can be interrupted by
  /// the end user's speech and the client can then starts the next Dialogflow
  /// request.
  core.bool allowPlaybackInterruption;

  /// Required. URI of the audio clip. Dialogflow does not impose any validation
  /// on this value. It is specific to the client that reads it.
  core.String audioUri;

  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();

  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
      core.Map _json) {
    if (_json.containsKey('allowPlaybackInterruption')) {
      allowPlaybackInterruption = _json['allowPlaybackInterruption'];
    }
    if (_json.containsKey('audioUri')) {
      audioUri = _json['audioUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowPlaybackInterruption != null) {
      _json['allowPlaybackInterruption'] = allowPlaybackInterruption;
    }
    if (audioUri != null) {
      _json['audioUri'] = audioUri;
    }
    return _json;
  }
}

/// The text response message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageText {
  /// Output only. Whether the playback of this message can be interrupted by
  /// the end user's speech and the client can then starts the next Dialogflow
  /// request.
  core.bool allowPlaybackInterruption;

  /// Required. A collection of text responses.
  core.List<core.String> text;

  GoogleCloudDialogflowCxV3beta1ResponseMessageText();

  GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(core.Map _json) {
    if (_json.containsKey('allowPlaybackInterruption')) {
      allowPlaybackInterruption = _json['allowPlaybackInterruption'];
    }
    if (_json.containsKey('text')) {
      text = (_json['text'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowPlaybackInterruption != null) {
      _json['allowPlaybackInterruption'] = allowPlaybackInterruption;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Represents session information communicated to and from the webhook.
class GoogleCloudDialogflowCxV3beta1SessionInfo {
  /// Optional for WebhookRequest. Optional for WebhookResponse. All parameters
  /// collected from forms and intents during the session. Parameters can be
  /// created, updated, or removed by the webhook. To remove a parameter from
  /// the session, the webhook should explicitly set the parameter value to null
  /// in WebhookResponse. The map is keyed by parameters' display names.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// Always present for WebhookRequest. Ignored for WebhookResponse. The unique
  /// identifier of the session. This field can be used by the webhook to
  /// identify a user. Format: `projects//locations//agents//sessions/`.
  core.String session;

  GoogleCloudDialogflowCxV3beta1SessionInfo();

  GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(core.Map _json) {
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('session')) {
      session = _json['session'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    if (session != null) {
      _json['session'] = session;
    }
    return _json;
  }
}

/// The request message for a webhook call.
class GoogleCloudDialogflowCxV3beta1WebhookRequest {
  /// Always present. The unique identifier of the DetectIntentResponse that
  /// will be returned to the API caller.
  core.String detectIntentResponseId;

  /// Always present. Information about the fulfillment that triggered this
  /// webhook call.
  GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo fulfillmentInfo;

  /// Information about the last matched intent.
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo intentInfo;

  /// The list of rich message responses to present to the user. Webhook can
  /// choose to append or replace this list in
  /// WebhookResponse.fulfillment_response;
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessage> messages;

  /// Information about page status.
  GoogleCloudDialogflowCxV3beta1PageInfo pageInfo;

  /// Custom data set in QueryParameters.payload.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Information about session status.
  GoogleCloudDialogflowCxV3beta1SessionInfo sessionInfo;

  GoogleCloudDialogflowCxV3beta1WebhookRequest();

  GoogleCloudDialogflowCxV3beta1WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey('detectIntentResponseId')) {
      detectIntentResponseId = _json['detectIntentResponseId'];
    }
    if (_json.containsKey('fulfillmentInfo')) {
      fulfillmentInfo =
          GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo.fromJson(
              _json['fulfillmentInfo']);
    }
    if (_json.containsKey('intentInfo')) {
      intentInfo =
          GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.fromJson(
              _json['intentInfo']);
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GoogleCloudDialogflowCxV3beta1ResponseMessage>((value) =>
              GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo =
          GoogleCloudDialogflowCxV3beta1PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('sessionInfo')) {
      sessionInfo = GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(
          _json['sessionInfo']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (detectIntentResponseId != null) {
      _json['detectIntentResponseId'] = detectIntentResponseId;
    }
    if (fulfillmentInfo != null) {
      _json['fulfillmentInfo'] = fulfillmentInfo.toJson();
    }
    if (intentInfo != null) {
      _json['intentInfo'] = intentInfo.toJson();
    }
    if (messages != null) {
      _json['messages'] = messages.map((value) => value.toJson()).toList();
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (sessionInfo != null) {
      _json['sessionInfo'] = sessionInfo.toJson();
    }
    return _json;
  }
}

/// Represents fulfillment information communicated to the webhook.
class GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo {
  /// Always present. The tag used to identify which fulfillment is being
  /// called.
  core.String tag;

  GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();

  GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('tag')) {
      tag = _json['tag'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (tag != null) {
      _json['tag'] = tag;
    }
    return _json;
  }
}

/// Represents intent information communicated to the webhook.
class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo {
  /// Always present. The unique identifier of the last matched intent. Format:
  /// `projects//locations//agents//intents/`.
  core.String lastMatchedIntent;

  /// Parameters identified as a result of intent matching. This is a map of the
  /// name of the identified parameter to the value of the parameter identified
  /// from the user's utterance. All parameters defined in the matched intent
  /// that are identified will be surfaced here.
  core.Map<core.String,
          GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>
      parameters;

  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();

  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('lastMatchedIntent')) {
      lastMatchedIntent = _json['lastMatchedIntent'];
    }
    if (_json.containsKey('parameters')) {
      parameters = commons.mapMap<core.Map,
              GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>(
          _json['parameters'].cast<core.String, core.Map>(),
          (core.Map item) =>
              GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
                  .fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (lastMatchedIntent != null) {
      _json['lastMatchedIntent'] = lastMatchedIntent;
    }
    if (parameters != null) {
      _json['parameters'] = commons.mapMap<
              GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue,
              core.Map<core.String, core.Object>>(
          parameters,
          (GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
                  item) =>
              item.toJson());
    }
    return _json;
  }
}

/// Represents a value for an intent parameter.
class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue {
  /// Always present. Original text value extracted from user utterance.
  core.String originalValue;

  /// Always present. Structured value for the parameter extracted from user
  /// utterance.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object resolvedValue;

  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();

  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue.fromJson(
      core.Map _json) {
    if (_json.containsKey('originalValue')) {
      originalValue = _json['originalValue'];
    }
    if (_json.containsKey('resolvedValue')) {
      resolvedValue = _json['resolvedValue'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (originalValue != null) {
      _json['originalValue'] = originalValue;
    }
    if (resolvedValue != null) {
      _json['resolvedValue'] = resolvedValue;
    }
    return _json;
  }
}

/// The response message for a webhook call.
class GoogleCloudDialogflowCxV3beta1WebhookResponse {
  /// The fulfillment response to send to the user. This field can be omitted by
  /// the webhook if it does not intend to send any response to the user.
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
      fulfillmentResponse;

  /// Information about page status. This field can be omitted by the webhook if
  /// it does not intend to modify page status.
  GoogleCloudDialogflowCxV3beta1PageInfo pageInfo;

  /// Value to append directly to QueryResult.webhook_payloads.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Information about session status. This field can be omitted by the webhook
  /// if it does not intend to modify session status.
  GoogleCloudDialogflowCxV3beta1SessionInfo sessionInfo;

  /// The target flow to transition to. Format:
  /// `projects//locations//agents//flows/`.
  core.String targetFlow;

  /// The target page to transition to. Format:
  /// `projects//locations//agents//flows//pages/`.
  core.String targetPage;

  GoogleCloudDialogflowCxV3beta1WebhookResponse();

  GoogleCloudDialogflowCxV3beta1WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey('fulfillmentResponse')) {
      fulfillmentResponse =
          GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
              .fromJson(_json['fulfillmentResponse']);
    }
    if (_json.containsKey('pageInfo')) {
      pageInfo =
          GoogleCloudDialogflowCxV3beta1PageInfo.fromJson(_json['pageInfo']);
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('sessionInfo')) {
      sessionInfo = GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(
          _json['sessionInfo']);
    }
    if (_json.containsKey('targetFlow')) {
      targetFlow = _json['targetFlow'];
    }
    if (_json.containsKey('targetPage')) {
      targetPage = _json['targetPage'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (fulfillmentResponse != null) {
      _json['fulfillmentResponse'] = fulfillmentResponse.toJson();
    }
    if (pageInfo != null) {
      _json['pageInfo'] = pageInfo.toJson();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (sessionInfo != null) {
      _json['sessionInfo'] = sessionInfo.toJson();
    }
    if (targetFlow != null) {
      _json['targetFlow'] = targetFlow;
    }
    if (targetPage != null) {
      _json['targetPage'] = targetPage;
    }
    return _json;
  }
}

/// Represents a fulfillment response to the user.
class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse {
  /// Merge behavior for `messages`.
  /// Possible string values are:
  /// - "MERGE_BEHAVIOR_UNSPECIFIED" : Not specified. `APPEND` will be used.
  /// - "APPEND" : `messages` will be appended to the list of messages waiting
  /// to be sent to the user.
  /// - "REPLACE" : `messages` will replace the list of messages waiting to be
  /// sent to the user.
  core.String mergeBehavior;

  /// The list of rich message responses to present to the user.
  core.List<GoogleCloudDialogflowCxV3beta1ResponseMessage> messages;

  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();

  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('mergeBehavior')) {
      mergeBehavior = _json['mergeBehavior'];
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GoogleCloudDialogflowCxV3beta1ResponseMessage>((value) =>
              GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (mergeBehavior != null) {
      _json['mergeBehavior'] = mergeBehavior;
    }
    if (messages != null) {
      _json['messages'] = messages.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents a part of a message possibly annotated with an entity. The part
/// can be an entity or purely a part of the message between two entities or
/// message start/end.
class GoogleCloudDialogflowV2AnnotatedMessagePart {
  /// The [Dialogflow system entity
  /// type](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part. If this is empty, Dialogflow could not annotate the
  /// phrase part with a system entity.
  core.String entityType;

  /// The [Dialogflow system entity formatted value
  /// ](https://cloud.google.com/dialogflow/docs/reference/system-entities) of
  /// this message part. For example for a system entity of type
  /// `@sys.unit-currency`, this may contain: { "amount": 5, "currency": "USD" }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object formattedValue;

  /// A part of a message possibly annotated with an entity.
  core.String text;

  GoogleCloudDialogflowV2AnnotatedMessagePart();

  GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(core.Map _json) {
    if (_json.containsKey('entityType')) {
      entityType = _json['entityType'];
    }
    if (_json.containsKey('formattedValue')) {
      formattedValue = _json['formattedValue'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityType != null) {
      _json['entityType'] = entityType;
    }
    if (formattedValue != null) {
      _json['formattedValue'] = formattedValue;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// The response message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse {
  /// The collection of updated or created entity types.
  core.List<GoogleCloudDialogflowV2EntityType> entityTypes;

  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();

  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('entityTypes')) {
      entityTypes = (_json['entityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2EntityType>(
              (value) => GoogleCloudDialogflowV2EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypes != null) {
      _json['entityTypes'] =
          entityTypes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The response message for Intents.BatchUpdateIntents.
class GoogleCloudDialogflowV2BatchUpdateIntentsResponse {
  /// The collection of updated or created intents.
  core.List<GoogleCloudDialogflowV2Intent> intents;

  GoogleCloudDialogflowV2BatchUpdateIntentsResponse();

  GoogleCloudDialogflowV2BatchUpdateIntentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('intents')) {
      intents = (_json['intents'] as core.List)
          .map<GoogleCloudDialogflowV2Intent>(
              (value) => GoogleCloudDialogflowV2Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intents != null) {
      _json['intents'] = intents.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Dialogflow contexts are similar to natural language context. If a person
/// says to you "they are orange", you need context in order to understand what
/// "they" is referring to. Similarly, for Dialogflow to handle an end-user
/// expression like that, it needs to be provided with context in order to
/// correctly match an intent. Using contexts, you can control the flow of a
/// conversation. You can configure contexts for an intent by setting input and
/// output contexts, which are identified by string names. When an intent is
/// matched, any configured output contexts for that intent become active. While
/// any contexts are active, Dialogflow is more likely to match intents that are
/// configured with input contexts that correspond to the currently active
/// contexts. For more information about context, see the [Contexts
/// guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
class GoogleCloudDialogflowV2Context {
  /// Optional. The number of conversational query requests after which the
  /// context expires. The default is `0`. If set to `0`, the context expires
  /// immediately. Contexts expire automatically after 20 minutes if there are
  /// no matching queries.
  core.int lifespanCount;

  /// Required. The unique identifier of the context. Format:
  /// `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  core.String name;

  /// Optional. The collection of parameters associated with this context.
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: string or number, depending on parameter
  /// value type - MapValue value: - If parameter's entity type is a composite
  /// entity: map from composite entity property names to property values -
  /// Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2Context();

  GoogleCloudDialogflowV2Context.fromJson(core.Map _json) {
    if (_json.containsKey('lifespanCount')) {
      lifespanCount = _json['lifespanCount'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (lifespanCount != null) {
      _json['lifespanCount'] = lifespanCount;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    return _json;
  }
}

/// Represents a notification sent to Pub/Sub subscribers for conversation
/// lifecycle events.
class GoogleCloudDialogflowV2ConversationEvent {
  /// The unique identifier of the conversation this notification refers to.
  /// Format: `projects//conversations/`.
  core.String conversation;

  /// More detailed information about an error. Only set for type
  /// UNRECOVERABLE_ERROR_IN_PHONE_CALL.
  GoogleRpcStatus errorStatus;

  /// Payload of NEW_MESSAGE event.
  GoogleCloudDialogflowV2Message newMessagePayload;

  /// The type of the event that this notification refers to.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type not set.
  /// - "CONVERSATION_STARTED" : A new conversation has been opened. This is
  /// fired when a telephone call is answered, or a conversation is created via
  /// the API.
  /// - "CONVERSATION_FINISHED" : An existing conversation has closed. This is
  /// fired when a telephone call is terminated, or a conversation is closed via
  /// the API.
  /// - "HUMAN_INTERVENTION_NEEDED" : An existing conversation has received
  /// notification from Dialogflow that human intervention is required.
  /// - "NEW_MESSAGE" : An existing conversation has received a new message,
  /// either from API or telephony. It is configured in
  /// ConversationProfile.new_message_event_notification_config
  /// - "UNRECOVERABLE_ERROR" : Unrecoverable error during a telephone call. In
  /// general non-recoverable errors only occur if something was misconfigured
  /// in the ConversationProfile corresponding to the call. After a
  /// non-recoverable error, Dialogflow may stop responding. We don't fire this
  /// event: * in an API call because we can directly return the error, or, *
  /// when we can recover from an error.
  core.String type;

  GoogleCloudDialogflowV2ConversationEvent();

  GoogleCloudDialogflowV2ConversationEvent.fromJson(core.Map _json) {
    if (_json.containsKey('conversation')) {
      conversation = _json['conversation'];
    }
    if (_json.containsKey('errorStatus')) {
      errorStatus = GoogleRpcStatus.fromJson(_json['errorStatus']);
    }
    if (_json.containsKey('newMessagePayload')) {
      newMessagePayload =
          GoogleCloudDialogflowV2Message.fromJson(_json['newMessagePayload']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (conversation != null) {
      _json['conversation'] = conversation;
    }
    if (errorStatus != null) {
      _json['errorStatus'] = errorStatus.toJson();
    }
    if (newMessagePayload != null) {
      _json['newMessagePayload'] = newMessagePayload.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Each intent parameter has a type, called the entity type, which dictates
/// exactly how data from an end-user expression is extracted. Dialogflow
/// provides predefined system entities that can match many common types of
/// data. For example, there are system entities for matching dates, times,
/// colors, email addresses, and so on. You can also create your own custom
/// entities for matching custom data. For example, you could define a vegetable
/// entity that can match the types of vegetables available for purchase with a
/// grocery store agent. For more information, see the [Entity
/// guide](https://cloud.google.com/dialogflow/docs/entities-overview).
class GoogleCloudDialogflowV2EntityType {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly listed in the entity.
  core.String autoExpansionMode;

  /// Required. The name of the entity type.
  core.String displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  core.bool enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity
  /// type.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Required. Indicates the kind of entity type.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// reference value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to reference values. However, list entity types can contain references to
  /// other entity types (with or without aliases).
  /// - "KIND_REGEXP" : Regexp entity types allow to specify regular expressions
  /// in entries values.
  core.String kind;

  /// The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
  /// methods. Format: `projects//agent/entityTypes/`.
  core.String name;

  GoogleCloudDialogflowV2EntityType();

  GoogleCloudDialogflowV2EntityType.fromJson(core.Map _json) {
    if (_json.containsKey('autoExpansionMode')) {
      autoExpansionMode = _json['autoExpansionMode'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('enableFuzzyExtraction')) {
      enableFuzzyExtraction = _json['enableFuzzyExtraction'];
    }
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoExpansionMode != null) {
      _json['autoExpansionMode'] = autoExpansionMode;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (enableFuzzyExtraction != null) {
      _json['enableFuzzyExtraction'] = enableFuzzyExtraction;
    }
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowV2EntityTypeEntity {
  /// Required. A collection of value synonyms. For example, if the entity type
  /// is *vegetable*, and `value` is *scallions*, a synonym could be *green
  /// onions*. For `KIND_LIST` entity types: * This collection must contain
  /// exactly one synonym equal to `value`.
  core.List<core.String> synonyms;

  /// Required. The primary value associated with this entity entry. For
  /// example, if the entity type is *vegetable*, the value could be
  /// *scallions*. For `KIND_MAP` entity types: * A reference value to be used
  /// in place of synonyms. For `KIND_LIST` entity types: * A string that can
  /// contain references to other entity types (with or without aliases).
  core.String value;

  GoogleCloudDialogflowV2EntityTypeEntity();

  GoogleCloudDialogflowV2EntityTypeEntity.fromJson(core.Map _json) {
    if (_json.containsKey('synonyms')) {
      synonyms = (_json['synonyms'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (synonyms != null) {
      _json['synonyms'] = synonyms;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Events allow for matching intents by event name instead of the natural
/// language input. For instance, input `` can trigger a personalized welcome
/// response. The parameter `name` may be used by the agent in the response:
/// `"Hello #welcome_event.name! What can I do for you today?"`.
class GoogleCloudDialogflowV2EventInput {
  /// Required. The language of this query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes. Note that queries in the
  /// same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The unique identifier of the event.
  core.String name;

  /// The collection of parameters associated with the event. Depending on your
  /// protocol or client library language, this is a map, associative array,
  /// symbol table, dictionary, or JSON object composed of a collection of
  /// (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter
  /// name - MapValue type: - If parameter's entity type is a composite entity:
  /// map - Else: string or number, depending on parameter value type - MapValue
  /// value: - If parameter's entity type is a composite entity: map from
  /// composite entity property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2EventInput();

  GoogleCloudDialogflowV2EventInput.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowV2ExportAgentResponse {
  /// Zip compressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in `ExportAgentRequest`.
  core.String agentUri;

  GoogleCloudDialogflowV2ExportAgentResponse();

  GoogleCloudDialogflowV2ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// Response message for Documents.ImportDocuments.
class GoogleCloudDialogflowV2ImportDocumentsResponse {
  /// Includes details about skipped documents or any other warnings.
  core.List<GoogleRpcStatus> warnings;

  GoogleCloudDialogflowV2ImportDocumentsResponse();

  GoogleCloudDialogflowV2ImportDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('warnings')) {
      warnings = (_json['warnings'] as core.List)
          .map<GoogleRpcStatus>((value) => GoogleRpcStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (warnings != null) {
      _json['warnings'] = warnings.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An intent categorizes an end-user's intention for one conversation turn. For
/// each agent, you define many intents, where your combined intents can handle
/// a complete conversation. When an end-user writes or says something, referred
/// to as an end-user expression or end-user input, Dialogflow matches the
/// end-user input to the best intent in your agent. Matching an intent is also
/// known as intent classification. For more information, see the [intent
/// guide](https://cloud.google.com/dialogflow/docs/intents-overview).
class GoogleCloudDialogflowV2Intent {
  /// Optional. The name of the action associated with the intent. Note: The
  /// action name must not contain whitespaces.
  core.String action;

  /// Optional. The list of platforms for which the first responses will be
  /// copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  core.List<core.String> defaultResponsePlatforms;

  /// Required. The name of this intent.
  core.String displayName;

  /// Optional. The collection of event names that trigger the intent. If the
  /// collection of input contexts is not empty, all of the contexts must be
  /// present in the active user session for an event to trigger this intent.
  /// Event names are limited to 150 characters.
  core.List<core.String> events;

  /// Read-only. Information about all followup intents that have this intent as
  /// a direct or indirect parent. We populate this field only in the output.
  core.List<GoogleCloudDialogflowV2IntentFollowupIntentInfo> followupIntentInfo;

  /// Optional. The list of context names required for this intent to be
  /// triggered. Format: `projects//agent/sessions/-/contexts/`.
  core.List<core.String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  core.bool isFallback;

  /// Optional. The collection of rich messages corresponding to the `Response`
  /// field in the Dialogflow console.
  core.List<GoogleCloudDialogflowV2IntentMessage> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent.
  /// Note: If `ml_disabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  core.bool mlDisabled;

  /// Optional. The unique identifier of this intent. Required for
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format:
  /// `projects//agent/intents/`.
  core.String name;

  /// Optional. The collection of contexts that are activated when the intent is
  /// matched. Context messages in this collection should not set the parameters
  /// field. Setting the `lifespan_count` to 0 will reset the context when the
  /// intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowV2IntentParameter> parameters;

  /// Read-only after creation. The unique identifier of the parent intent in
  /// the chain of followup intents. You can set this field when creating an
  /// intent, for example with CreateIntent or BatchUpdateIntents, in order to
  /// make this intent a followup intent. It identifies the parent followup
  /// intent. Format: `projects//agent/intents/`.
  core.String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher
  /// priorities. - If the supplied value is unspecified or 0, the service
  /// translates the value to 500,000, which corresponds to the `Normal`
  /// priority in the console. - If the supplied value is negative, the intent
  /// is ignored in runtime detect intent requests.
  core.int priority;

  /// Optional. Indicates whether to delete all contexts in the current session
  /// when this intent is matched.
  core.bool resetContexts;

  /// Read-only. The unique identifier of the root intent in the chain of
  /// followup intents. It identifies the correct followup intents chain for
  /// this intent. We populate this field only in the output. Format:
  /// `projects//agent/intents/`.
  core.String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is trained on.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrase> trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot filling prompt is forwarded to
  /// the webhook.
  core.String webhookState;

  GoogleCloudDialogflowV2Intent();

  GoogleCloudDialogflowV2Intent.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'];
    }
    if (_json.containsKey('defaultResponsePlatforms')) {
      defaultResponsePlatforms =
          (_json['defaultResponsePlatforms'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('events')) {
      events = (_json['events'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('followupIntentInfo')) {
      followupIntentInfo = (_json['followupIntentInfo'] as core.List)
          .map<GoogleCloudDialogflowV2IntentFollowupIntentInfo>((value) =>
              GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey('inputContextNames')) {
      inputContextNames =
          (_json['inputContextNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('isFallback')) {
      isFallback = _json['isFallback'];
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>(
              (value) => GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('mlDisabled')) {
      mlDisabled = _json['mlDisabled'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<GoogleCloudDialogflowV2IntentParameter>(
              (value) => GoogleCloudDialogflowV2IntentParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parentFollowupIntentName')) {
      parentFollowupIntentName = _json['parentFollowupIntentName'];
    }
    if (_json.containsKey('priority')) {
      priority = _json['priority'];
    }
    if (_json.containsKey('resetContexts')) {
      resetContexts = _json['resetContexts'];
    }
    if (_json.containsKey('rootFollowupIntentName')) {
      rootFollowupIntentName = _json['rootFollowupIntentName'];
    }
    if (_json.containsKey('trainingPhrases')) {
      trainingPhrases = (_json['trainingPhrases'] as core.List)
          .map<GoogleCloudDialogflowV2IntentTrainingPhrase>((value) =>
              GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(value))
          .toList();
    }
    if (_json.containsKey('webhookState')) {
      webhookState = _json['webhookState'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (defaultResponsePlatforms != null) {
      _json['defaultResponsePlatforms'] = defaultResponsePlatforms;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (events != null) {
      _json['events'] = events;
    }
    if (followupIntentInfo != null) {
      _json['followupIntentInfo'] =
          followupIntentInfo.map((value) => value.toJson()).toList();
    }
    if (inputContextNames != null) {
      _json['inputContextNames'] = inputContextNames;
    }
    if (isFallback != null) {
      _json['isFallback'] = isFallback;
    }
    if (messages != null) {
      _json['messages'] = messages.map((value) => value.toJson()).toList();
    }
    if (mlDisabled != null) {
      _json['mlDisabled'] = mlDisabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (parameters != null) {
      _json['parameters'] = parameters.map((value) => value.toJson()).toList();
    }
    if (parentFollowupIntentName != null) {
      _json['parentFollowupIntentName'] = parentFollowupIntentName;
    }
    if (priority != null) {
      _json['priority'] = priority;
    }
    if (resetContexts != null) {
      _json['resetContexts'] = resetContexts;
    }
    if (rootFollowupIntentName != null) {
      _json['rootFollowupIntentName'] = rootFollowupIntentName;
    }
    if (trainingPhrases != null) {
      _json['trainingPhrases'] =
          trainingPhrases.map((value) => value.toJson()).toList();
    }
    if (webhookState != null) {
      _json['webhookState'] = webhookState;
    }
    return _json;
  }
}

/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent. Format:
  /// `projects//agent/intents/`.
  core.String followupIntentName;

  /// The unique identifier of the followup intent's parent. Format:
  /// `projects//agent/intents/`.
  core.String parentFollowupIntentName;

  GoogleCloudDialogflowV2IntentFollowupIntentInfo();

  GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(core.Map _json) {
    if (_json.containsKey('followupIntentName')) {
      followupIntentName = _json['followupIntentName'];
    }
    if (_json.containsKey('parentFollowupIntentName')) {
      parentFollowupIntentName = _json['parentFollowupIntentName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (followupIntentName != null) {
      _json['followupIntentName'] = followupIntentName;
    }
    if (parentFollowupIntentName != null) {
      _json['parentFollowupIntentName'] = parentFollowupIntentName;
    }
    return _json;
  }
}

/// A rich response message. Corresponds to the intent `Response` field in the
/// Dialogflow console. For more information, see [Rich response
/// messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).
class GoogleCloudDialogflowV2IntentMessage {
  /// The basic card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageBasicCard basicCard;

  /// Browse carousel card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard browseCarouselCard;

  /// The card response.
  GoogleCloudDialogflowV2IntentMessageCard card;

  /// The carousel card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageCarouselSelect carouselSelect;

  /// The image response.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// The link out suggestion chip for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion linkOutSuggestion;

  /// The list card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageListSelect listSelect;

  /// The media content card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageMediaContent mediaContent;

  /// A custom platform-specific response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. The platform that this message is intended for.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Default platform.
  /// - "FACEBOOK" : Facebook.
  /// - "SLACK" : Slack.
  /// - "TELEGRAM" : Telegram.
  /// - "KIK" : Kik.
  /// - "SKYPE" : Skype.
  /// - "LINE" : Line.
  /// - "VIBER" : Viber.
  /// - "ACTIONS_ON_GOOGLE" : Google Assistant See [Dialogflow webhook
  /// format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  /// - "GOOGLE_HANGOUTS" : Google Hangouts.
  core.String platform;

  /// The quick replies response.
  GoogleCloudDialogflowV2IntentMessageQuickReplies quickReplies;

  /// The voice and text-only responses for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSimpleResponses simpleResponses;

  /// The suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSuggestions suggestions;

  /// Table card for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageTableCard tableCard;

  /// The text response.
  GoogleCloudDialogflowV2IntentMessageText text;

  GoogleCloudDialogflowV2IntentMessage();

  GoogleCloudDialogflowV2IntentMessage.fromJson(core.Map _json) {
    if (_json.containsKey('basicCard')) {
      basicCard = GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          _json['basicCard']);
    }
    if (_json.containsKey('browseCarouselCard')) {
      browseCarouselCard =
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
              _json['browseCarouselCard']);
    }
    if (_json.containsKey('card')) {
      card = GoogleCloudDialogflowV2IntentMessageCard.fromJson(_json['card']);
    }
    if (_json.containsKey('carouselSelect')) {
      carouselSelect =
          GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
              _json['carouselSelect']);
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('linkOutSuggestion')) {
      linkOutSuggestion =
          GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
              _json['linkOutSuggestion']);
    }
    if (_json.containsKey('listSelect')) {
      listSelect = GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          _json['listSelect']);
    }
    if (_json.containsKey('mediaContent')) {
      mediaContent = GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
          _json['mediaContent']);
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('platform')) {
      platform = _json['platform'];
    }
    if (_json.containsKey('quickReplies')) {
      quickReplies = GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
          _json['quickReplies']);
    }
    if (_json.containsKey('simpleResponses')) {
      simpleResponses =
          GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
              _json['simpleResponses']);
    }
    if (_json.containsKey('suggestions')) {
      suggestions = GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
          _json['suggestions']);
    }
    if (_json.containsKey('tableCard')) {
      tableCard = GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
          _json['tableCard']);
    }
    if (_json.containsKey('text')) {
      text = GoogleCloudDialogflowV2IntentMessageText.fromJson(_json['text']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (basicCard != null) {
      _json['basicCard'] = basicCard.toJson();
    }
    if (browseCarouselCard != null) {
      _json['browseCarouselCard'] = browseCarouselCard.toJson();
    }
    if (card != null) {
      _json['card'] = card.toJson();
    }
    if (carouselSelect != null) {
      _json['carouselSelect'] = carouselSelect.toJson();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (linkOutSuggestion != null) {
      _json['linkOutSuggestion'] = linkOutSuggestion.toJson();
    }
    if (listSelect != null) {
      _json['listSelect'] = listSelect.toJson();
    }
    if (mediaContent != null) {
      _json['mediaContent'] = mediaContent.toJson();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (platform != null) {
      _json['platform'] = platform;
    }
    if (quickReplies != null) {
      _json['quickReplies'] = quickReplies.toJson();
    }
    if (simpleResponses != null) {
      _json['simpleResponses'] = simpleResponses.toJson();
    }
    if (suggestions != null) {
      _json['suggestions'] = suggestions.toJson();
    }
    if (tableCard != null) {
      _json['tableCard'] = tableCard.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton> buttons;

  /// Required, unless image is present. The body text of the card.
  core.String formattedText;

  /// Optional. The image for the card.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageBasicCard();

  GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageBasicCardButton>((value) =>
              GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('formattedText')) {
      formattedText = _json['formattedText'];
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (formattedText != null) {
      _json['formattedText'] = formattedText;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2IntentMessageBasicCardButton {
  /// Required. Action to take when a user taps on the button.
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
      openUriAction;

  /// Required. The title of the button.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageBasicCardButton();

  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(core.Map _json) {
    if (_json.containsKey('openUriAction')) {
      openUriAction =
          GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
              .fromJson(_json['openUriAction']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (openUriAction != null) {
      _json['openUriAction'] = openUriAction.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Opens the given URI.
class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction {
  /// Required. The HTTP or HTTPS scheme URI.
  core.String uri;

  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();

  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromJson(
      core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// Browse Carousel Card for Actions on Google.
/// https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard {
  /// Optional. Settings for displaying the image. Applies to every image in
  /// items.
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
  core.String imageDisplayOptions;

  /// Required. List of items in the Browse Carousel Card. Minimum of two items,
  /// maximum of ten.
  core.List<
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
      items;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
      core.Map _json) {
    if (_json.containsKey('imageDisplayOptions')) {
      imageDisplayOptions = _json['imageDisplayOptions'];
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (imageDisplayOptions != null) {
      _json['imageDisplayOptions'] = imageDisplayOptions;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Browsing carousel tile
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  core.String description;

  /// Optional. Text that appears at the bottom of the Browse Carousel Card.
  /// Maximum of one line of text.
  core.String footer;

  /// Optional. Hero image for the carousel item.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// Required. Action to present to the user.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
      openUriAction;

  /// Required. Title of the carousel item. Maximum of two lines of text.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('footer')) {
      footer = _json['footer'];
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('openUriAction')) {
      openUriAction =
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromJson(_json['openUriAction']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (footer != null) {
      _json['footer'] = footer;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (openUriAction != null) {
      _json['openUriAction'] = openUriAction.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  /// Required. URL
  core.String url;

  /// Optional. Specifies the type of viewer that is used when opening the URL.
  /// Defaults to opening via web browser.
  /// Possible string values are:
  /// - "URL_TYPE_HINT_UNSPECIFIED" : Unspecified
  /// - "AMP_ACTION" : Url would be an amp action
  /// - "AMP_CONTENT" : URL that points directly to AMP content, or to a
  /// canonical URL which refers to AMP content via .
  core.String urlTypeHint;

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();

  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
      core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'];
    }
    if (_json.containsKey('urlTypeHint')) {
      urlTypeHint = _json['urlTypeHint'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    if (urlTypeHint != null) {
      _json['urlTypeHint'] = urlTypeHint;
    }
    return _json;
  }
}

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCard {
  /// Optional. The collection of card buttons.
  core.List<GoogleCloudDialogflowV2IntentMessageCardButton> buttons;

  /// Optional. The public URI to an image file for the card.
  core.String imageUri;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageCard();

  GoogleCloudDialogflowV2IntentMessageCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageCardButton>((value) =>
              GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(value))
          .toList();
    }
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'];
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Contains information about a button.
class GoogleCloudDialogflowV2IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  core.String postback;

  /// Optional. The text to show on the button.
  core.String text;

  GoogleCloudDialogflowV2IntentMessageCardButton();

  GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(core.Map _json) {
    if (_json.containsKey('postback')) {
      postback = _json['postback'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (postback != null) {
      _json['postback'] = postback;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2IntentMessageCarouselSelect {
  /// Required. Carousel items.
  core.List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> items;

  GoogleCloudDialogflowV2IntentMessageCarouselSelect();

  GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>(
              (value) => GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
                  .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An item in the carousel.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem {
  /// Optional. The body text of the card.
  core.String description;

  /// Optional. The image to display.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// Required. Additional info about the option item.
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo info;

  /// Required. Title of the carousel item.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem();

  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('info')) {
      info = GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
          _json['info']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (info != null) {
      _json['info'] = info.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Column properties for TableCard.
class GoogleCloudDialogflowV2IntentMessageColumnProperties {
  /// Required. Column heading.
  core.String header;

  /// Optional. Defines text alignment for all cells in this column.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : Text is aligned to the leading edge
  /// of the column.
  /// - "LEADING" : Text is aligned to the leading edge of the column.
  /// - "CENTER" : Text is centered in the column.
  /// - "TRAILING" : Text is aligned to the trailing edge of the column.
  core.String horizontalAlignment;

  GoogleCloudDialogflowV2IntentMessageColumnProperties();

  GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
      core.Map _json) {
    if (_json.containsKey('header')) {
      header = _json['header'];
    }
    if (_json.containsKey('horizontalAlignment')) {
      horizontalAlignment = _json['horizontalAlignment'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header;
    }
    if (horizontalAlignment != null) {
      _json['horizontalAlignment'] = horizontalAlignment;
    }
    return _json;
  }
}

/// The image response message.
class GoogleCloudDialogflowV2IntentMessageImage {
  /// Optional. A text description of the image to be used for accessibility,
  /// e.g., screen readers.
  core.String accessibilityText;

  /// Optional. The public URI to an image file.
  core.String imageUri;

  GoogleCloudDialogflowV2IntentMessageImage();

  GoogleCloudDialogflowV2IntentMessageImage.fromJson(core.Map _json) {
    if (_json.containsKey('accessibilityText')) {
      accessibilityText = _json['accessibilityText'];
    }
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessibilityText != null) {
      _json['accessibilityText'] = accessibilityText;
    }
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    return _json;
  }
}

/// The suggestion chip message that allows the user to jump out to the app or
/// website associated with this agent.
class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion {
  /// Required. The name of the app or site this chip is linking to.
  core.String destinationName;

  /// Required. The URI of the app or site to open when the user taps the
  /// suggestion chip.
  core.String uri;

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey('destinationName')) {
      destinationName = _json['destinationName'];
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (destinationName != null) {
      _json['destinationName'] = destinationName;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelect {
  /// Required. List items.
  core.List<GoogleCloudDialogflowV2IntentMessageListSelectItem> items;

  /// Optional. Subtitle of the list.
  core.String subtitle;

  /// Optional. The overall title of the list.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageListSelect();

  GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageListSelectItem>((value) =>
              GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// An item in the list.
class GoogleCloudDialogflowV2IntentMessageListSelectItem {
  /// Optional. The main text describing the item.
  core.String description;

  /// Optional. The image to display.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// Required. Additional information about this option.
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo info;

  /// Required. The title of the list item.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageListSelectItem();

  GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('info')) {
      info = GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
          _json['info']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (info != null) {
      _json['info'] = info.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageMediaContent {
  /// Required. List of media objects.
  core.List<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>
      mediaObjects;

  /// Optional. What type of media is the content (ie "audio").
  /// Possible string values are:
  /// - "RESPONSE_MEDIA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "AUDIO" : Response media type is audio.
  core.String mediaType;

  GoogleCloudDialogflowV2IntentMessageMediaContent();

  GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(core.Map _json) {
    if (_json.containsKey('mediaObjects')) {
      mediaObjects = (_json['mediaObjects'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>(
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('mediaType')) {
      mediaType = _json['mediaType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (mediaObjects != null) {
      _json['mediaObjects'] =
          mediaObjects.map((value) => value.toJson()).toList();
    }
    if (mediaType != null) {
      _json['mediaType'] = mediaType;
    }
    return _json;
  }
}

/// Response media object for media content card.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject {
  /// Required. Url where the media is stored.
  core.String contentUrl;

  /// Optional. Description of media card.
  core.String description;

  /// Optional. Icon to display above media content.
  GoogleCloudDialogflowV2IntentMessageImage icon;

  /// Optional. Image to display above media content.
  GoogleCloudDialogflowV2IntentMessageImage largeImage;

  /// Required. Name of media card.
  core.String name;

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();

  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromJson(
      core.Map _json) {
    if (_json.containsKey('contentUrl')) {
      contentUrl = _json['contentUrl'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('icon')) {
      icon = GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['icon']);
    }
    if (_json.containsKey('largeImage')) {
      largeImage = GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          _json['largeImage']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (contentUrl != null) {
      _json['contentUrl'] = contentUrl;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (icon != null) {
      _json['icon'] = icon.toJson();
    }
    if (largeImage != null) {
      _json['largeImage'] = largeImage.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The quick replies response message.
class GoogleCloudDialogflowV2IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  core.List<core.String> quickReplies;

  /// Optional. The title of the collection of quick replies.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageQuickReplies();

  GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(core.Map _json) {
    if (_json.containsKey('quickReplies')) {
      quickReplies = (_json['quickReplies'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (quickReplies != null) {
      _json['quickReplies'] = quickReplies;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2IntentMessageSelectItemInfo {
  /// Required. A unique key that will be sent back to the agent if this
  /// response is given.
  core.String key;

  /// Optional. A list of synonyms that can also be used to trigger this item in
  /// dialog.
  core.List<core.String> synonyms;

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo();

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'];
    }
    if (_json.containsKey('synonyms')) {
      synonyms = (_json['synonyms'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (synonyms != null) {
      _json['synonyms'] = synonyms;
    }
    return _json;
  }
}

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2IntentMessageSimpleResponse {
  /// Optional. The text to display.
  core.String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response
  /// to the user in the SSML format. Mutually exclusive with text_to_speech.
  core.String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the
  /// speech output. Mutually exclusive with ssml.
  core.String textToSpeech;

  GoogleCloudDialogflowV2IntentMessageSimpleResponse();

  GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(core.Map _json) {
    if (_json.containsKey('displayText')) {
      displayText = _json['displayText'];
    }
    if (_json.containsKey('ssml')) {
      ssml = _json['ssml'];
    }
    if (_json.containsKey('textToSpeech')) {
      textToSpeech = _json['textToSpeech'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayText != null) {
      _json['displayText'] = displayText;
    }
    if (ssml != null) {
      _json['ssml'] = ssml;
    }
    if (textToSpeech != null) {
      _json['textToSpeech'] = textToSpeech;
    }
    return _json;
  }
}

/// The collection of simple response candidates. This message in
/// `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponses {
  /// Required. The list of simple responses.
  core.List<GoogleCloudDialogflowV2IntentMessageSimpleResponse> simpleResponses;

  GoogleCloudDialogflowV2IntentMessageSimpleResponses();

  GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(core.Map _json) {
    if (_json.containsKey('simpleResponses')) {
      simpleResponses = (_json['simpleResponses'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageSimpleResponse>((value) =>
              GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (simpleResponses != null) {
      _json['simpleResponses'] =
          simpleResponses.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The suggestion chip message that the user can tap to quickly post a reply to
/// the conversation.
class GoogleCloudDialogflowV2IntentMessageSuggestion {
  /// Required. The text shown the in the suggestion chip.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageSuggestion();

  GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestions {
  /// Required. The list of suggested replies.
  core.List<GoogleCloudDialogflowV2IntentMessageSuggestion> suggestions;

  GoogleCloudDialogflowV2IntentMessageSuggestions();

  GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(core.Map _json) {
    if (_json.containsKey('suggestions')) {
      suggestions = (_json['suggestions'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageSuggestion>((value) =>
              GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (suggestions != null) {
      _json['suggestions'] =
          suggestions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  core.List<GoogleCloudDialogflowV2IntentMessageBasicCardButton> buttons;

  /// Optional. Display properties for the columns in this table.
  core.List<GoogleCloudDialogflowV2IntentMessageColumnProperties>
      columnProperties;

  /// Optional. Image which should be displayed on the card.
  GoogleCloudDialogflowV2IntentMessageImage image;

  /// Optional. Rows in this table of data.
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardRow> rows;

  /// Optional. Subtitle to the title.
  core.String subtitle;

  /// Required. Title of the card.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageTableCard();

  GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageBasicCardButton>((value) =>
              GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('columnProperties')) {
      columnProperties = (_json['columnProperties'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageColumnProperties>((value) =>
              GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('image')) {
      image =
          GoogleCloudDialogflowV2IntentMessageImage.fromJson(_json['image']);
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageTableCardRow>((value) =>
              GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (columnProperties != null) {
      _json['columnProperties'] =
          columnProperties.map((value) => value.toJson()).toList();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (rows != null) {
      _json['rows'] = rows.map((value) => value.toJson()).toList();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCell {
  /// Required. Text in this cell.
  core.String text;

  GoogleCloudDialogflowV2IntentMessageTableCardCell();

  GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(core.Map _json) {
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Row of TableCard.
class GoogleCloudDialogflowV2IntentMessageTableCardRow {
  /// Optional. List of cells that make up this row.
  core.List<GoogleCloudDialogflowV2IntentMessageTableCardCell> cells;

  /// Optional. Whether to add a visual divider after this row.
  core.bool dividerAfter;

  GoogleCloudDialogflowV2IntentMessageTableCardRow();

  GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(core.Map _json) {
    if (_json.containsKey('cells')) {
      cells = (_json['cells'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageTableCardCell>((value) =>
              GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(value))
          .toList();
    }
    if (_json.containsKey('dividerAfter')) {
      dividerAfter = _json['dividerAfter'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cells != null) {
      _json['cells'] = cells.map((value) => value.toJson()).toList();
    }
    if (dividerAfter != null) {
      _json['dividerAfter'] = dividerAfter;
    }
    return _json;
  }
}

/// The text response message.
class GoogleCloudDialogflowV2IntentMessageText {
  /// Optional. The collection of the agent's responses.
  core.List<core.String> text;

  GoogleCloudDialogflowV2IntentMessageText();

  GoogleCloudDialogflowV2IntentMessageText.fromJson(core.Map _json) {
    if (_json.containsKey('text')) {
      text = (_json['text'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Represents intent parameters.
class GoogleCloudDialogflowV2IntentParameter {
  /// Optional. The default value to use when the `value` yields an empty
  /// result. Default values can be extracted from contexts by using the
  /// following syntax: `#context_name.parameter_name`.
  core.String defaultValue;

  /// Required. The name of the parameter.
  core.String displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that describes
  /// values of the parameter. If the parameter is required, this must be
  /// provided.
  core.String entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  core.bool isList;

  /// Optional. Indicates whether the parameter is required. That is, whether
  /// the intent cannot be completed without collecting the parameter value.
  core.bool mandatory;

  /// The unique identifier of this parameter.
  core.String name;

  /// Optional. The collection of prompts that the agent can present to the user
  /// in order to collect a value for the parameter.
  core.List<core.String> prompts;

  /// Optional. The definition of the parameter value. It can be: - a constant
  /// string, - a parameter value defined as `$parameter_name`, - an original
  /// parameter value defined as `$parameter_name.original`, - a parameter value
  /// from some context defined as `#context_name.parameter_name`.
  core.String value;

  GoogleCloudDialogflowV2IntentParameter();

  GoogleCloudDialogflowV2IntentParameter.fromJson(core.Map _json) {
    if (_json.containsKey('defaultValue')) {
      defaultValue = _json['defaultValue'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('entityTypeDisplayName')) {
      entityTypeDisplayName = _json['entityTypeDisplayName'];
    }
    if (_json.containsKey('isList')) {
      isList = _json['isList'];
    }
    if (_json.containsKey('mandatory')) {
      mandatory = _json['mandatory'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('prompts')) {
      prompts = (_json['prompts'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (defaultValue != null) {
      _json['defaultValue'] = defaultValue;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (entityTypeDisplayName != null) {
      _json['entityTypeDisplayName'] = entityTypeDisplayName;
    }
    if (isList != null) {
      _json['isList'] = isList;
    }
    if (mandatory != null) {
      _json['mandatory'] = mandatory;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (prompts != null) {
      _json['prompts'] = prompts;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2IntentTrainingPhrase {
  /// Output only. The unique identifier of this training phrase.
  core.String name;

  /// Required. The ordered list of training phrase parts. The parts are
  /// concatenated in order to form the training phrase. Note: The API does not
  /// automatically annotate training phrases like the Dialogflow Console does.
  /// Note: Do not forget to include whitespace at part boundaries, so the
  /// training phrase is well formatted when the parts are concatenated. If the
  /// training phrase does not need to be annotated with parameters, you just
  /// need a single part with only the Part.text field set. If you want to
  /// annotate the training phrase, you must create multiple parts, where the
  /// fields of each part are populated in one of two ways: - `Part.text` is set
  /// to a part of the phrase that has no parameters. - `Part.text` is set to a
  /// part of the phrase that you want to annotate, and the `entity_type`,
  /// `alias`, and `user_defined` fields are all set.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example was added to the intent.
  /// Each time a developer adds an existing sample by editing an intent or
  /// training, this counter is increased.
  core.int timesAddedCount;

  /// Required. The type of the training phrase.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "EXAMPLE" : Examples do not contain @-prefixed entity type names, but
  /// example parts can be annotated with entity types.
  /// - "TEMPLATE" : Templates are not annotated with entity types, but they can
  /// contain @-prefixed entity type names as substrings. Template mode has been
  /// deprecated. Example mode is the only supported way to create new training
  /// phrases. If you have existing training phrases that you've created in
  /// template mode, those will continue to work.
  core.String type;

  GoogleCloudDialogflowV2IntentTrainingPhrase();

  GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parts')) {
      parts = (_json['parts'] as core.List)
          .map<GoogleCloudDialogflowV2IntentTrainingPhrasePart>((value) =>
              GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(value))
          .toList();
    }
    if (_json.containsKey('timesAddedCount')) {
      timesAddedCount = _json['timesAddedCount'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (parts != null) {
      _json['parts'] = parts.map((value) => value.toJson()).toList();
    }
    if (timesAddedCount != null) {
      _json['timesAddedCount'] = timesAddedCount;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the annotated
  /// part of the example. This field is required for annotated parts of the
  /// training phrase.
  core.String alias;

  /// Optional. The entity type name prefixed with `@`. This field is required
  /// for annotated parts of the training phrase.
  core.String entityType;

  /// Required. The text for this part.
  core.String text;

  /// Optional. Indicates whether the text was manually annotated. This field is
  /// set to true when the Dialogflow Console is used to manually annotate the
  /// part. When creating an annotated part with the API, you must set this to
  /// true.
  core.bool userDefined;

  GoogleCloudDialogflowV2IntentTrainingPhrasePart();

  GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(core.Map _json) {
    if (_json.containsKey('alias')) {
      alias = _json['alias'];
    }
    if (_json.containsKey('entityType')) {
      entityType = _json['entityType'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
    if (_json.containsKey('userDefined')) {
      userDefined = _json['userDefined'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alias != null) {
      _json['alias'] = alias;
    }
    if (entityType != null) {
      _json['entityType'] = entityType;
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (userDefined != null) {
      _json['userDefined'] = userDefined;
    }
    return _json;
  }
}

/// Represents a message posted into a conversation.
class GoogleCloudDialogflowV2Message {
  /// Required. The message content.
  core.String content;

  /// Output only. The time when the message was created.
  core.String createTime;

  /// Optional. The message language. This should be a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Example: "en-US".
  core.String languageCode;

  /// Output only. The annotation for the message.
  GoogleCloudDialogflowV2MessageAnnotation messageAnnotation;

  /// The unique identifier of the message. Format:
  /// `projects//conversations//messages/`.
  core.String name;

  /// Output only. The participant that sends this message.
  core.String participant;

  /// Output only. The role of the participant.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Participant role not set.
  /// - "HUMAN_AGENT" : Participant is a human agent.
  /// - "AUTOMATED_AGENT" : Participant is an automated agent, such as a
  /// Dialogflow agent.
  /// - "END_USER" : Participant is an end user that has called or chatted with
  /// Dialogflow services.
  core.String participantRole;

  GoogleCloudDialogflowV2Message();

  GoogleCloudDialogflowV2Message.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('messageAnnotation')) {
      messageAnnotation = GoogleCloudDialogflowV2MessageAnnotation.fromJson(
          _json['messageAnnotation']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('participant')) {
      participant = _json['participant'];
    }
    if (_json.containsKey('participantRole')) {
      participantRole = _json['participantRole'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (messageAnnotation != null) {
      _json['messageAnnotation'] = messageAnnotation.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (participant != null) {
      _json['participant'] = participant;
    }
    if (participantRole != null) {
      _json['participantRole'] = participantRole;
    }
    return _json;
  }
}

/// Represents the result of annotation for the message.
class GoogleCloudDialogflowV2MessageAnnotation {
  /// Indicates whether the text message contains entities.
  core.bool containEntities;

  /// The collection of annotated message parts ordered by their position in the
  /// message. You can recover the annotated message by concatenating
  /// [AnnotatedMessagePart.text].
  core.List<GoogleCloudDialogflowV2AnnotatedMessagePart> parts;

  GoogleCloudDialogflowV2MessageAnnotation();

  GoogleCloudDialogflowV2MessageAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey('containEntities')) {
      containEntities = _json['containEntities'];
    }
    if (_json.containsKey('parts')) {
      parts = (_json['parts'] as core.List)
          .map<GoogleCloudDialogflowV2AnnotatedMessagePart>((value) =>
              GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (containEntities != null) {
      _json['containEntities'] = containEntities;
    }
    if (parts != null) {
      _json['parts'] = parts.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents the contents of the original request that was passed to the
/// `[Streaming]DetectIntent` call.
class GoogleCloudDialogflowV2OriginalDetectIntentRequest {
  /// Optional. This field is set to the value of the `QueryParameters.payload`
  /// field passed in the request. Some integrations that query a Dialogflow
  /// agent may provide additional information in the payload. In particular,
  /// for the Dialogflow Phone Gateway integration, this field has the form: {
  /// "telephony": { "caller_id": "+18558363987" } } Note: The caller ID field
  /// (`caller_id`) will be redacted for Trial Edition agents and populated with
  /// the caller ID in [E.164 format](https://en.wikipedia.org/wiki/E.164) for
  /// Essentials Edition agents.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  /// by Dialogflow-owned servers.
  core.String source;

  /// Optional. The version of the protocol used for this request. This field is
  /// AoG-specific.
  core.String version;

  GoogleCloudDialogflowV2OriginalDetectIntentRequest();

  GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2QueryResult {
  /// The action name from the matched intent.
  core.String action;

  /// This field is set to: - `false` if the matched intent has required
  /// parameters and not all of the required parameter values have been
  /// collected. - `true` if all required parameter values have been collected,
  /// or if the matched intent doesn't contain any required parameters.
  core.bool allRequiredParamsPresent;

  /// Free-form diagnostic information for the associated detect intent request.
  /// The fields of this data can change without notice, so you should not write
  /// code that depends on its structure. The data may contain: - webhook call
  /// latency - webhook errors
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<GoogleCloudDialogflowV2IntentMessage> fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen. Note: This
  /// is a legacy field, `fulfillment_messages` should be preferred.
  core.String fulfillmentText;

  /// The intent that matched the conversational query. Some, not all fields are
  /// filled in this message, including but not limited to: `name`,
  /// `display_name`, `end_interaction` and `is_fallback`.
  GoogleCloudDialogflowV2Intent intent;

  /// The intent detection confidence. Values range from 0.0 (completely
  /// uncertain) to 1.0 (completely certain). This value is for informational
  /// purpose only and is only used to help match the best intent within the
  /// classification threshold. This value may change for the same end-user
  /// expression at any time due to a model retraining or change in
  /// implementation. If there are `multiple knowledge_answers` messages, this
  /// value is set to the greatest `knowledgeAnswers.match_confidence` value in
  /// the list.
  core.double intentDetectionConfidence;

  /// The language that was triggered during intent detection. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes.
  core.String languageCode;

  /// The collection of output contexts. If applicable,
  /// `output_contexts.parameters` contains entries with name `.original`
  /// containing the original parameter values before the query.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// The collection of extracted parameters. Depending on your protocol or
  /// client library language, this is a map, associative array, symbol table,
  /// dictionary, or JSON object composed of a collection of (MapKey, MapValue)
  /// pairs: - MapKey type: string - MapKey value: parameter name - MapValue
  /// type: - If parameter's entity type is a composite entity: map - Else:
  /// string or number, depending on parameter value type - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// The original conversational query text: - If natural language text was
  /// provided as input, `query_text` contains a copy of the input. - If natural
  /// language speech audio was provided as input, `query_text` contains the
  /// speech recognition result. If speech recognizer produced multiple
  /// alternatives, a particular one is picked. - If automatic spell correction
  /// is enabled, `query_text` will contain the corrected user input.
  core.String queryText;

  /// The sentiment analysis result, which depends on the
  /// `sentiment_analysis_request_config` specified in the request.
  GoogleCloudDialogflowV2SentimentAnalysisResult sentimentAnalysisResult;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. The default of 0.0 is a sentinel value indicating that confidence
  /// was not set. This field is not guaranteed to be accurate or set. In
  /// particular this field isn't set for StreamingDetectIntent since the
  /// streaming endpoint has separate confidence estimates per portion of the
  /// audio in StreamingRecognitionResult.
  core.double speechRecognitionConfidence;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `payload` field returned in the webhook response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> webhookPayload;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `source` field returned in the webhook response.
  core.String webhookSource;

  GoogleCloudDialogflowV2QueryResult();

  GoogleCloudDialogflowV2QueryResult.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'];
    }
    if (_json.containsKey('allRequiredParamsPresent')) {
      allRequiredParamsPresent = _json['allRequiredParamsPresent'];
    }
    if (_json.containsKey('diagnosticInfo')) {
      diagnosticInfo = (_json['diagnosticInfo'] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey('fulfillmentMessages')) {
      fulfillmentMessages = (_json['fulfillmentMessages'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>(
              (value) => GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('fulfillmentText')) {
      fulfillmentText = _json['fulfillmentText'];
    }
    if (_json.containsKey('intent')) {
      intent = GoogleCloudDialogflowV2Intent.fromJson(_json['intent']);
    }
    if (_json.containsKey('intentDetectionConfidence')) {
      intentDetectionConfidence = _json['intentDetectionConfidence'].toDouble();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('queryText')) {
      queryText = _json['queryText'];
    }
    if (_json.containsKey('sentimentAnalysisResult')) {
      sentimentAnalysisResult =
          GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
              _json['sentimentAnalysisResult']);
    }
    if (_json.containsKey('speechRecognitionConfidence')) {
      speechRecognitionConfidence =
          _json['speechRecognitionConfidence'].toDouble();
    }
    if (_json.containsKey('webhookPayload')) {
      webhookPayload = (_json['webhookPayload'] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey('webhookSource')) {
      webhookSource = _json['webhookSource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (allRequiredParamsPresent != null) {
      _json['allRequiredParamsPresent'] = allRequiredParamsPresent;
    }
    if (diagnosticInfo != null) {
      _json['diagnosticInfo'] = diagnosticInfo;
    }
    if (fulfillmentMessages != null) {
      _json['fulfillmentMessages'] =
          fulfillmentMessages.map((value) => value.toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json['fulfillmentText'] = fulfillmentText;
    }
    if (intent != null) {
      _json['intent'] = intent.toJson();
    }
    if (intentDetectionConfidence != null) {
      _json['intentDetectionConfidence'] = intentDetectionConfidence;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    if (queryText != null) {
      _json['queryText'] = queryText;
    }
    if (sentimentAnalysisResult != null) {
      _json['sentimentAnalysisResult'] = sentimentAnalysisResult.toJson();
    }
    if (speechRecognitionConfidence != null) {
      _json['speechRecognitionConfidence'] = speechRecognitionConfidence;
    }
    if (webhookPayload != null) {
      _json['webhookPayload'] = webhookPayload;
    }
    if (webhookSource != null) {
      _json['webhookSource'] = webhookSource;
    }
    return _json;
  }
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
class GoogleCloudDialogflowV2Sentiment {
  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score (positive or
  /// negative).
  core.double magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double score;

  GoogleCloudDialogflowV2Sentiment();

  GoogleCloudDialogflowV2Sentiment.fromJson(core.Map _json) {
    if (_json.containsKey('magnitude')) {
      magnitude = _json['magnitude'].toDouble();
    }
    if (_json.containsKey('score')) {
      score = _json['score'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (magnitude != null) {
      _json['magnitude'] = magnitude;
    }
    if (score != null) {
      _json['score'] = score;
    }
    return _json;
  }
}

/// The result of sentiment analysis. Sentiment analysis inspects user input and
/// identifies the prevailing subjective opinion, especially to determine a
/// user's attitude as positive, negative, or neutral. For
/// Participants.DetectIntent, it needs to be configured in
/// DetectIntentRequest.query_params. For Participants.StreamingDetectIntent, it
/// needs to be configured in StreamingDetectIntentRequest.query_params. And for
/// Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it
/// needs to be configured in ConversationProfile.human_agent_assistant_config
class GoogleCloudDialogflowV2SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2Sentiment queryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisResult();

  GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(core.Map _json) {
    if (_json.containsKey('queryTextSentiment')) {
      queryTextSentiment = GoogleCloudDialogflowV2Sentiment.fromJson(
          _json['queryTextSentiment']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (queryTextSentiment != null) {
      _json['queryTextSentiment'] = queryTextSentiment.toJson();
    }
    return _json;
  }
}

/// A session represents a conversation between a Dialogflow agent and an
/// end-user. You can create special entities, called session entities, during a
/// session. Session entities can extend or replace custom entity types and only
/// exist during the session that they were created for. All session data,
/// including session entities, is stored by Dialogflow for 20 minutes. For more
/// information, see the [session entity
/// guide](https://cloud.google.com/dialogflow/docs/entities-session).
class GoogleCloudDialogflowV2SessionEntityType {
  /// Required. The collection of entities associated with this session entity
  /// type.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Required. Indicates whether the additional data should override or
  /// supplement the custom entity type definition.
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
  core.String entityOverrideMode;

  /// Required. The unique identifier of this session entity type. Format:
  /// `projects//agent/sessions//entityTypes/`, or
  /// `projects//agent/environments//users//sessions//entityTypes/`. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  core.String name;

  GoogleCloudDialogflowV2SessionEntityType();

  GoogleCloudDialogflowV2SessionEntityType.fromJson(core.Map _json) {
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('entityOverrideMode')) {
      entityOverrideMode = _json['entityOverrideMode'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (entityOverrideMode != null) {
      _json['entityOverrideMode'] = entityOverrideMode;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The request message for a webhook call.
class GoogleCloudDialogflowV2WebhookRequest {
  /// Optional. The contents of the original request that was passed to
  /// `[Streaming]DetectIntent` call.
  GoogleCloudDialogflowV2OriginalDetectIntentRequest
      originalDetectIntentRequest;

  /// The result of the conversational query or event processing. Contains the
  /// same value as `[Streaming]DetectIntentResponse.query_result`.
  GoogleCloudDialogflowV2QueryResult queryResult;

  /// The unique identifier of the response. Contains the same value as
  /// `[Streaming]DetectIntentResponse.response_id`.
  core.String responseId;

  /// The unique identifier of detectIntent request session. Can be used to
  /// identify end-user inside webhook implementation. Format:
  /// `projects//agent/sessions/`, or
  /// `projects//agent/environments//users//sessions/`.
  core.String session;

  GoogleCloudDialogflowV2WebhookRequest();

  GoogleCloudDialogflowV2WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey('originalDetectIntentRequest')) {
      originalDetectIntentRequest =
          GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(
              _json['originalDetectIntentRequest']);
    }
    if (_json.containsKey('queryResult')) {
      queryResult =
          GoogleCloudDialogflowV2QueryResult.fromJson(_json['queryResult']);
    }
    if (_json.containsKey('responseId')) {
      responseId = _json['responseId'];
    }
    if (_json.containsKey('session')) {
      session = _json['session'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (originalDetectIntentRequest != null) {
      _json['originalDetectIntentRequest'] =
          originalDetectIntentRequest.toJson();
    }
    if (queryResult != null) {
      _json['queryResult'] = queryResult.toJson();
    }
    if (responseId != null) {
      _json['responseId'] = responseId;
    }
    if (session != null) {
      _json['session'] = session;
    }
    return _json;
  }
}

/// The response message for a webhook call. This response is validated by the
/// Dialogflow server. If validation fails, an error will be returned in the
/// QueryResult.diagnostic_info field. Setting JSON fields to an empty value
/// with the wrong type is a common error. To avoid this error: - Use `""` for
/// empty strings - Use `{}` or `null` for empty objects - Use `[]` or `null`
/// for empty arrays For more information, see the [Protocol Buffers Language
/// Guide](https://developers.google.com/protocol-buffers/docs/proto3#json).
class GoogleCloudDialogflowV2WebhookResponse {
  /// Optional. Invokes the supplied events. When this field is set, Dialogflow
  /// ignores the `fulfillment_text`, `fulfillment_messages`, and `payload`
  /// fields.
  GoogleCloudDialogflowV2EventInput followupEventInput;

  /// Optional. The rich response messages intended for the end-user. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.fulfillment_messages sent to the integration or API caller.
  core.List<GoogleCloudDialogflowV2IntentMessage> fulfillmentMessages;

  /// Optional. The text response message intended for the end-user. It is
  /// recommended to use `fulfillment_messages.text.text[0]` instead. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.fulfillment_text sent to the integration or API caller.
  core.String fulfillmentText;

  /// Optional. The collection of output contexts that will overwrite currently
  /// active contexts for the session and reset their lifespans. When provided,
  /// Dialogflow uses this field to populate QueryResult.output_contexts sent to
  /// the integration or API caller.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// Optional. This field can be used to pass custom data from your webhook to
  /// the integration or API caller. Arbitrary JSON objects are supported. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.webhook_payload sent to the integration or API caller. This
  /// field is also used by the [Google Assistant
  /// integration](https://cloud.google.com/dialogflow/docs/integrations/aog)
  /// for rich response messages. See the format definition at [Google Assistant
  /// Dialogflow webhook
  /// format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. Additional session entity types to replace or extend developer
  /// entity types with. The entity synonyms apply to all languages and persist
  /// for the session. Setting this data from a webhook overwrites the session
  /// entity types that have been set using `detectIntent`,
  /// `streamingDetectIntent` or SessionEntityType management methods.
  core.List<GoogleCloudDialogflowV2SessionEntityType> sessionEntityTypes;

  /// Optional. A custom field used to identify the webhook source. Arbitrary
  /// strings are supported. When provided, Dialogflow uses this field to
  /// populate QueryResult.webhook_source sent to the integration or API caller.
  core.String source;

  GoogleCloudDialogflowV2WebhookResponse();

  GoogleCloudDialogflowV2WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey('followupEventInput')) {
      followupEventInput = GoogleCloudDialogflowV2EventInput.fromJson(
          _json['followupEventInput']);
    }
    if (_json.containsKey('fulfillmentMessages')) {
      fulfillmentMessages = (_json['fulfillmentMessages'] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>(
              (value) => GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('fulfillmentText')) {
      fulfillmentText = _json['fulfillmentText'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('sessionEntityTypes')) {
      sessionEntityTypes = (_json['sessionEntityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2SessionEntityType>((value) =>
              GoogleCloudDialogflowV2SessionEntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (followupEventInput != null) {
      _json['followupEventInput'] = followupEventInput.toJson();
    }
    if (fulfillmentMessages != null) {
      _json['fulfillmentMessages'] =
          fulfillmentMessages.map((value) => value.toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json['fulfillmentText'] = fulfillmentText;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (sessionEntityTypes != null) {
      _json['sessionEntityTypes'] =
          sessionEntityTypes.map((value) => value.toJson()).toList();
    }
    if (source != null) {
      _json['source'] = source;
    }
    return _json;
  }
}

/// A Dialogflow agent is a virtual agent that handles conversations with your
/// end-users. It is a natural language understanding module that understands
/// the nuances of human language. Dialogflow translates end-user text or audio
/// during a conversation to structured data that your apps and services can
/// understand. You design and build a Dialogflow agent to handle the types of
/// conversations required for your system. For more information about agents,
/// see the [Agent
/// guide](https://cloud.google.com/dialogflow/docs/agents-overview).
class GoogleCloudDialogflowV2beta1Agent {
  /// Optional. API version displayed in Dialogflow console. If not specified,
  /// V2 API is assumed. Clients are free to query different service endpoints
  /// for different API versions. However, bots connectors and webhook calls
  /// will follow the specified API version.
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED" : Not specified.
  /// - "API_VERSION_V1" : Legacy V1 API.
  /// - "API_VERSION_V2" : V2 API.
  /// - "API_VERSION_V2_BETA_1" : V2beta1 API.
  core.String apiVersion;

  /// Optional. The URI of the agent's avatar. Avatars are used throughout the
  /// Dialogflow console and in the self-hosted [Web
  /// Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
  /// integration.
  core.String avatarUri;

  /// Optional. To filter out false positive results and still get variety in
  /// matched natural language inputs for your agent, you can tune the machine
  /// learning classification threshold. If the returned score value is less
  /// than the threshold value, then a fallback intent will be triggered or, if
  /// there are no fallback intents defined, no intent will be triggered. The
  /// score values range from 0.0 (completely uncertain) to 1.0 (completely
  /// certain). If set to 0.0, the default of 0.3 is used.
  core.double classificationThreshold;

  /// Required. The default language of the agent as a language tag. See
  /// [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes. This field cannot be set
  /// by the `Update` method.
  core.String defaultLanguageCode;

  /// Optional. The description of this agent. The maximum length is 500
  /// characters. If exceeded, the request is rejected.
  core.String description;

  /// Required. The name of this agent.
  core.String displayName;

  /// Optional. Determines whether this agent should log conversation queries.
  core.bool enableLogging;

  /// Optional. Determines how intents are detected from user queries.
  /// Possible string values are:
  /// - "MATCH_MODE_UNSPECIFIED" : Not specified.
  /// - "MATCH_MODE_HYBRID" : Best for agents with a small number of examples in
  /// intents and/or wide use of templates syntax and composite entities.
  /// - "MATCH_MODE_ML_ONLY" : Can be used for agents with a large number of
  /// examples in intents, especially the ones using @sys.any or very large
  /// custom entities.
  core.String matchMode;

  /// Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`
  core.String parent;

  /// Optional. The list of all languages supported by this agent (except for
  /// the `default_language_code`).
  core.List<core.String> supportedLanguageCodes;

  /// Optional. The agent tier. If not specified, TIER_STANDARD is assumed.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "TIER_STANDARD" : Standard tier.
  /// - "TIER_ENTERPRISE" : Enterprise tier (Essentials).
  /// - "TIER_ENTERPRISE_PLUS" : Enterprise tier (Plus).
  core.String tier;

  /// Required. The time zone of this agent from the [time zone
  /// database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  core.String timeZone;

  GoogleCloudDialogflowV2beta1Agent();

  GoogleCloudDialogflowV2beta1Agent.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('avatarUri')) {
      avatarUri = _json['avatarUri'];
    }
    if (_json.containsKey('classificationThreshold')) {
      classificationThreshold = _json['classificationThreshold'].toDouble();
    }
    if (_json.containsKey('defaultLanguageCode')) {
      defaultLanguageCode = _json['defaultLanguageCode'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('enableLogging')) {
      enableLogging = _json['enableLogging'];
    }
    if (_json.containsKey('matchMode')) {
      matchMode = _json['matchMode'];
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('supportedLanguageCodes')) {
      supportedLanguageCodes =
          (_json['supportedLanguageCodes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'];
    }
    if (_json.containsKey('timeZone')) {
      timeZone = _json['timeZone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (avatarUri != null) {
      _json['avatarUri'] = avatarUri;
    }
    if (classificationThreshold != null) {
      _json['classificationThreshold'] = classificationThreshold;
    }
    if (defaultLanguageCode != null) {
      _json['defaultLanguageCode'] = defaultLanguageCode;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (enableLogging != null) {
      _json['enableLogging'] = enableLogging;
    }
    if (matchMode != null) {
      _json['matchMode'] = matchMode;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (supportedLanguageCodes != null) {
      _json['supportedLanguageCodes'] = supportedLanguageCodes;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone;
    }
    return _json;
  }
}

/// Represents an annotated conversation dataset. ConversationDataset can have
/// multiple AnnotatedConversationDataset, each of them represents one result
/// from one annotation task. AnnotatedConversationDataset can only be generated
/// from annotation task, which will be triggered by LabelConversation.
class GoogleCloudDialogflowV2beta1AnnotatedConversationDataset {
  /// Output only. Number of examples that have annotations in the annotated
  /// conversation dataset.
  core.String completedExampleCount;

  /// Output only. Creation time of this annotated conversation dataset.
  core.String createTime;

  /// Optional. The description of the annotated conversation dataset. Maximum
  /// of 10000 bytes.
  core.String description;

  /// Required. The display name of the annotated conversation dataset. It's
  /// specified when user starts an annotation task. Maximum of 64 bytes.
  core.String displayName;

  /// Output only. Number of examples in the annotated conversation dataset.
  core.String exampleCount;

  /// Output only. AnnotatedConversationDataset resource name. Format:
  /// `projects//conversationDatasets//annotatedConversationDatasets/`
  core.String name;

  /// Output only. Question type name that identifies a labeling task. A
  /// question is a single task that a worker answers. A question type is set of
  /// related questions. Each question belongs to a particular question type. It
  /// can be used in CrowdCompute UI to filter and manage labeling tasks.
  core.String questionTypeName;

  GoogleCloudDialogflowV2beta1AnnotatedConversationDataset();

  GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.fromJson(
      core.Map _json) {
    if (_json.containsKey('completedExampleCount')) {
      completedExampleCount = _json['completedExampleCount'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('exampleCount')) {
      exampleCount = _json['exampleCount'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('questionTypeName')) {
      questionTypeName = _json['questionTypeName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (completedExampleCount != null) {
      _json['completedExampleCount'] = completedExampleCount;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (exampleCount != null) {
      _json['exampleCount'] = exampleCount;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (questionTypeName != null) {
      _json['questionTypeName'] = questionTypeName;
    }
    return _json;
  }
}

/// Response message for [Documents.AutoApproveSmartMessagingEntries].
class GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse {
  /// Number of smart messaging entries disabled.
  core.int disabledCount;

  /// Number of smart messaging entries enabled.
  core.int enabledCount;

  /// Number of smart messaging entries unreviewed.
  core.int unreviewedCount;

  GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse();

  GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('disabledCount')) {
      disabledCount = _json['disabledCount'];
    }
    if (_json.containsKey('enabledCount')) {
      enabledCount = _json['enabledCount'];
    }
    if (_json.containsKey('unreviewedCount')) {
      unreviewedCount = _json['unreviewedCount'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabledCount != null) {
      _json['disabledCount'] = disabledCount;
    }
    if (enabledCount != null) {
      _json['enabledCount'] = enabledCount;
    }
    if (unreviewedCount != null) {
      _json['unreviewedCount'] = unreviewedCount;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchCreateEntities.
class GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest {
  /// Required. The entities to create.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities;

  /// Optional. The language used to access language-specific data. If not
  /// specified, the agent's default language is used. For more information, see
  /// [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  core.String languageCode;

  GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest();

  GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchDeleteEntities.
class GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest {
  /// Required. The reference `values` of the entities to delete. Note that
  /// these are not fully-qualified names, i.e. they don't start with
  /// `projects/`.
  core.List<core.String> entityValues;

  /// Optional. The language used to access language-specific data. If not
  /// specified, the agent's default language is used. For more information, see
  /// [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  core.String languageCode;

  GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest();

  GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('entityValues')) {
      entityValues = (_json['entityValues'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityValues != null) {
      _json['entityValues'] = entityValues;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchDeleteEntityTypes.
class GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest {
  /// Required. The names entity types to delete. All names must point to the
  /// same agent as `parent`.
  core.List<core.String> entityTypeNames;

  GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest();

  GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('entityTypeNames')) {
      entityTypeNames =
          (_json['entityTypeNames'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypeNames != null) {
      _json['entityTypeNames'] = entityTypeNames;
    }
    return _json;
  }
}

/// The request message for Intents.BatchDeleteIntents.
class GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest {
  /// Required. The collection of intents to delete. Only intent `name` must be
  /// filled in.
  core.List<GoogleCloudDialogflowV2beta1Intent> intents;

  GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest();

  GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('intents')) {
      intents = (_json['intents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Intent>(
              (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intents != null) {
      _json['intents'] = intents.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchUpdateEntities.
class GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest {
  /// Required. The entities to update or create.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities;

  /// Optional. The language used to access language-specific data. If not
  /// specified, the agent's default language is used. For more information, see
  /// [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest();

  GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest {
  /// The collection of entity types to update or create.
  GoogleCloudDialogflowV2beta1EntityTypeBatch entityTypeBatchInline;

  /// The URI to a Google Cloud Storage file containing entity types to update
  /// or create. The file format can either be a serialized proto (of
  /// EntityBatch type) or a JSON object. Note: The URI must start with "gs://".
  core.String entityTypeBatchUri;

  /// Optional. The language used to access language-specific data. If not
  /// specified, the agent's default language is used. For more information, see
  /// [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest();

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('entityTypeBatchInline')) {
      entityTypeBatchInline =
          GoogleCloudDialogflowV2beta1EntityTypeBatch.fromJson(
              _json['entityTypeBatchInline']);
    }
    if (_json.containsKey('entityTypeBatchUri')) {
      entityTypeBatchUri = _json['entityTypeBatchUri'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypeBatchInline != null) {
      _json['entityTypeBatchInline'] = entityTypeBatchInline.toJson();
    }
    if (entityTypeBatchUri != null) {
      _json['entityTypeBatchUri'] = entityTypeBatchUri;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// The response message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse {
  /// The collection of updated or created entity types.
  core.List<GoogleCloudDialogflowV2beta1EntityType> entityTypes;

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();

  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('entityTypes')) {
      entityTypes = (_json['entityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityType>(
              (value) => GoogleCloudDialogflowV2beta1EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypes != null) {
      _json['entityTypes'] =
          entityTypes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The request message for Intents.BatchUpdateIntents.
class GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest {
  /// The collection of intents to update or create.
  GoogleCloudDialogflowV2beta1IntentBatch intentBatchInline;

  /// The URI to a Google Cloud Storage file containing intents to update or
  /// create. The file format can either be a serialized proto (of IntentBatch
  /// type) or JSON object. Note: The URI must start with "gs://".
  core.String intentBatchUri;

  /// Optional. The resource view to apply to the returned intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : Training phrases field is not populated in
  /// the response.
  /// - "INTENT_VIEW_FULL" : All fields are populated.
  core.String intentView;

  /// Optional. The language used to access language-specific data. If not
  /// specified, the agent's default language is used. For more information, see
  /// [Multilingual intent and entity
  /// data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest();

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('intentBatchInline')) {
      intentBatchInline = GoogleCloudDialogflowV2beta1IntentBatch.fromJson(
          _json['intentBatchInline']);
    }
    if (_json.containsKey('intentBatchUri')) {
      intentBatchUri = _json['intentBatchUri'];
    }
    if (_json.containsKey('intentView')) {
      intentView = _json['intentView'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intentBatchInline != null) {
      _json['intentBatchInline'] = intentBatchInline.toJson();
    }
    if (intentBatchUri != null) {
      _json['intentBatchUri'] = intentBatchUri;
    }
    if (intentView != null) {
      _json['intentView'] = intentView;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// The response message for Intents.BatchUpdateIntents.
class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse {
  /// The collection of updated or created intents.
  core.List<GoogleCloudDialogflowV2beta1Intent> intents;

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();

  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('intents')) {
      intents = (_json['intents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Intent>(
              (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intents != null) {
      _json['intents'] = intents.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for [Documents.BatchUpdateSmartMessagingEntries]
class GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse {
  /// List of updated smart message entries.
  core.List<GoogleCloudDialogflowV2beta1SmartMessagingEntry>
      smartMessagingEntries;

  GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse();

  GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('smartMessagingEntries')) {
      smartMessagingEntries = (_json['smartMessagingEntries'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SmartMessagingEntry>((value) =>
              GoogleCloudDialogflowV2beta1SmartMessagingEntry.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (smartMessagingEntries != null) {
      _json['smartMessagingEntries'] =
          smartMessagingEntries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Dialogflow contexts are similar to natural language context. If a person
/// says to you "they are orange", you need context in order to understand what
/// "they" is referring to. Similarly, for Dialogflow to handle an end-user
/// expression like that, it needs to be provided with context in order to
/// correctly match an intent. Using contexts, you can control the flow of a
/// conversation. You can configure contexts for an intent by setting input and
/// output contexts, which are identified by string names. When an intent is
/// matched, any configured output contexts for that intent become active. While
/// any contexts are active, Dialogflow is more likely to match intents that are
/// configured with input contexts that correspond to the currently active
/// contexts. For more information about context, see the [Contexts
/// guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
class GoogleCloudDialogflowV2beta1Context {
  /// Optional. The number of conversational query requests after which the
  /// context expires. The default is `0`. If set to `0`, the context expires
  /// immediately. Contexts expire automatically after 20 minutes if there are
  /// no matching queries.
  core.int lifespanCount;

  /// Required. The unique identifier of the context. Supported formats: -
  /// `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  core.String name;

  /// Optional. The collection of parameters associated with this context.
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: string or number, depending on parameter
  /// value type - MapValue value: - If parameter's entity type is a composite
  /// entity: map from composite entity property names to property values -
  /// Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2beta1Context();

  GoogleCloudDialogflowV2beta1Context.fromJson(core.Map _json) {
    if (_json.containsKey('lifespanCount')) {
      lifespanCount = _json['lifespanCount'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (lifespanCount != null) {
      _json['lifespanCount'] = lifespanCount;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    return _json;
  }
}

/// The request to detect user's intent.
class GoogleCloudDialogflowV2beta1DetectIntentRequest {
  /// The natural language speech audio to be processed. This field should be
  /// populated iff `query_input` is set to an input audio config. A single
  /// request can contain up to 1 minute of speech audio data.
  core.String inputAudio;
  core.List<core.int> get inputAudioAsBytes =>
      convert.base64.decode(inputAudio);

  set inputAudioAsBytes(core.List<core.int> _bytes) {
    inputAudio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Instructs the speech synthesizer how to generate the output audio. If this
  /// field is not set and agent-level speech synthesizer is not configured, no
  /// output audio is generated.
  GoogleCloudDialogflowV2beta1OutputAudioConfig outputAudioConfig;

  /// Mask for output_audio_config indicating which settings in this
  /// request-level config should override speech synthesizer settings defined
  /// at agent-level. If unspecified or empty, output_audio_config replaces the
  /// agent-level config in its entirety.
  core.String outputAudioConfigMask;

  /// Required. The input specification. It can be set to: 1. an audio config
  /// which instructs the speech recognizer how to process the speech audio, 2.
  /// a conversational query in the form of text, or 3. an event that specifies
  /// which intent to trigger.
  GoogleCloudDialogflowV2beta1QueryInput queryInput;

  /// The parameters of this query.
  GoogleCloudDialogflowV2beta1QueryParameters queryParams;

  GoogleCloudDialogflowV2beta1DetectIntentRequest();

  GoogleCloudDialogflowV2beta1DetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('inputAudio')) {
      inputAudio = _json['inputAudio'];
    }
    if (_json.containsKey('outputAudioConfig')) {
      outputAudioConfig =
          GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
              _json['outputAudioConfig']);
    }
    if (_json.containsKey('outputAudioConfigMask')) {
      outputAudioConfigMask = _json['outputAudioConfigMask'];
    }
    if (_json.containsKey('queryInput')) {
      queryInput =
          GoogleCloudDialogflowV2beta1QueryInput.fromJson(_json['queryInput']);
    }
    if (_json.containsKey('queryParams')) {
      queryParams = GoogleCloudDialogflowV2beta1QueryParameters.fromJson(
          _json['queryParams']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (inputAudio != null) {
      _json['inputAudio'] = inputAudio;
    }
    if (outputAudioConfig != null) {
      _json['outputAudioConfig'] = outputAudioConfig.toJson();
    }
    if (outputAudioConfigMask != null) {
      _json['outputAudioConfigMask'] = outputAudioConfigMask;
    }
    if (queryInput != null) {
      _json['queryInput'] = queryInput.toJson();
    }
    if (queryParams != null) {
      _json['queryParams'] = queryParams.toJson();
    }
    return _json;
  }
}

/// The message returned from the DetectIntent method.
class GoogleCloudDialogflowV2beta1DetectIntentResponse {
  /// If Knowledge Connectors are enabled, there could be more than one result
  /// returned for a given query or event, and this field will contain all
  /// results except for the top one, which is captured in query_result. The
  /// alternative results are ordered by decreasing
  /// `QueryResult.intent_detection_confidence`. If Knowledge Connectors are
  /// disabled, this field will be empty until multiple responses for regular
  /// intents are supported, at which point those additional results will be
  /// surfaced here.
  core.List<GoogleCloudDialogflowV2beta1QueryResult> alternativeQueryResults;

  /// The audio data bytes encoded as specified in the request. Note: The output
  /// audio is generated based on the values of default platform text responses
  /// found in the `query_result.fulfillment_messages` field. If multiple
  /// default text responses exist, they will be concatenated when generating
  /// audio. If no default platform text responses exist, the generated audio
  /// content will be empty. In some scenarios, multiple output audio fields may
  /// be present in the response structure. In these cases, only the
  /// top-most-level audio output has content.
  core.String outputAudio;
  core.List<core.int> get outputAudioAsBytes =>
      convert.base64.decode(outputAudio);

  set outputAudioAsBytes(core.List<core.int> _bytes) {
    outputAudio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowV2beta1OutputAudioConfig outputAudioConfig;

  /// The selected results of the conversational query or event processing. See
  /// `alternative_query_results` for additional potential results.
  GoogleCloudDialogflowV2beta1QueryResult queryResult;

  /// The unique identifier of the response. It can be used to locate a response
  /// in the training example set or for reporting issues.
  core.String responseId;

  /// Specifies the status of the webhook request.
  GoogleRpcStatus webhookStatus;

  GoogleCloudDialogflowV2beta1DetectIntentResponse();

  GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('alternativeQueryResults')) {
      alternativeQueryResults = (_json['alternativeQueryResults'] as core.List)
          .map<GoogleCloudDialogflowV2beta1QueryResult>((value) =>
              GoogleCloudDialogflowV2beta1QueryResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey('outputAudio')) {
      outputAudio = _json['outputAudio'];
    }
    if (_json.containsKey('outputAudioConfig')) {
      outputAudioConfig =
          GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
              _json['outputAudioConfig']);
    }
    if (_json.containsKey('queryResult')) {
      queryResult = GoogleCloudDialogflowV2beta1QueryResult.fromJson(
          _json['queryResult']);
    }
    if (_json.containsKey('responseId')) {
      responseId = _json['responseId'];
    }
    if (_json.containsKey('webhookStatus')) {
      webhookStatus = GoogleRpcStatus.fromJson(_json['webhookStatus']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alternativeQueryResults != null) {
      _json['alternativeQueryResults'] =
          alternativeQueryResults.map((value) => value.toJson()).toList();
    }
    if (outputAudio != null) {
      _json['outputAudio'] = outputAudio;
    }
    if (outputAudioConfig != null) {
      _json['outputAudioConfig'] = outputAudioConfig.toJson();
    }
    if (queryResult != null) {
      _json['queryResult'] = queryResult.toJson();
    }
    if (responseId != null) {
      _json['responseId'] = responseId;
    }
    if (webhookStatus != null) {
      _json['webhookStatus'] = webhookStatus.toJson();
    }
    return _json;
  }
}

/// A knowledge document to be used by a KnowledgeBase. For more information,
/// see the [knowledge base
/// guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases). Note:
/// The `projects.agent.knowledgeBases.documents` resource is deprecated; only
/// use `projects.knowledgeBases.documents`.
class GoogleCloudDialogflowV2beta1Document {
  /// The raw content of the document. This field is only permitted for
  /// EXTRACTIVE_QA and FAQ knowledge types. Note: This field is in the process
  /// of being deprecated, please use raw_content instead.
  core.String content;

  /// The URI where the file content is located. For documents stored in Google
  /// Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs
  /// must correspond to public webpages, i.e., they must be indexed by Google
  /// Search. In particular, URLs for showing documents in Google Cloud Storage
  /// (i.e. the URL in your browser) are not supported. Instead use the `gs://`
  /// format URI described above.
  core.String contentUri;

  /// Required. The display name of the document. The name must be 1024 bytes or
  /// less; otherwise, the creation request fails.
  core.String displayName;

  /// Optional. If true, we try to automatically reload the document every day
  /// (at a time picked by the system). If false or unspecified, we don't try to
  /// automatically reload the document. Currently you can only enable automatic
  /// reload for documents sourced from a public url, see `source` field for the
  /// source types. Reload status can be tracked in `latest_reload_status`. If a
  /// reload fails, we will keep the document unchanged. If a reload fails with
  /// internal errors, the system will try to reload the document on the next
  /// day. If a reload fails with non-retriable errors (e.g. PERMISION_DENIED),
  /// the system will not try to reload the document anymore. You need to
  /// manually reload the document successfully by calling `ReloadDocument` and
  /// clear the errors.
  core.bool enableAutoReload;

  /// Required. The knowledge type of document content.
  core.List<core.String> knowledgeTypes;

  /// Output only. The time and status of the latest reload. This reload may
  /// have been triggered automatically or manually and may not have succeeded.
  GoogleCloudDialogflowV2beta1DocumentReloadStatus latestReloadStatus;

  /// Required. The MIME type of this document.
  core.String mimeType;

  /// Optional. The document resource name. The name must be empty when creating
  /// a document. Format: `projects//knowledgeBases//documents/`.
  core.String name;

  /// The raw content of the document. This field is only permitted for
  /// EXTRACTIVE_QA and FAQ knowledge types.
  core.String rawContent;
  core.List<core.int> get rawContentAsBytes =>
      convert.base64.decode(rawContent);

  set rawContentAsBytes(core.List<core.int> _bytes) {
    rawContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudDialogflowV2beta1Document();

  GoogleCloudDialogflowV2beta1Document.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'];
    }
    if (_json.containsKey('contentUri')) {
      contentUri = _json['contentUri'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('enableAutoReload')) {
      enableAutoReload = _json['enableAutoReload'];
    }
    if (_json.containsKey('knowledgeTypes')) {
      knowledgeTypes =
          (_json['knowledgeTypes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('latestReloadStatus')) {
      latestReloadStatus =
          GoogleCloudDialogflowV2beta1DocumentReloadStatus.fromJson(
              _json['latestReloadStatus']);
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('rawContent')) {
      rawContent = _json['rawContent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (contentUri != null) {
      _json['contentUri'] = contentUri;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (enableAutoReload != null) {
      _json['enableAutoReload'] = enableAutoReload;
    }
    if (knowledgeTypes != null) {
      _json['knowledgeTypes'] = knowledgeTypes;
    }
    if (latestReloadStatus != null) {
      _json['latestReloadStatus'] = latestReloadStatus.toJson();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (rawContent != null) {
      _json['rawContent'] = rawContent;
    }
    return _json;
  }
}

/// The status of a reload attempt.
class GoogleCloudDialogflowV2beta1DocumentReloadStatus {
  /// Output only. The status of a reload attempt or the initial load.
  GoogleRpcStatus status;

  /// Output only. The time of a reload attempt. This reload may have been
  /// triggered automatically or manually and may not have succeeded.
  core.String time;

  GoogleCloudDialogflowV2beta1DocumentReloadStatus();

  GoogleCloudDialogflowV2beta1DocumentReloadStatus.fromJson(core.Map _json) {
    if (_json.containsKey('status')) {
      status = GoogleRpcStatus.fromJson(_json['status']);
    }
    if (_json.containsKey('time')) {
      time = _json['time'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (status != null) {
      _json['status'] = status.toJson();
    }
    if (time != null) {
      _json['time'] = time;
    }
    return _json;
  }
}

/// Each intent parameter has a type, called the entity type, which dictates
/// exactly how data from an end-user expression is extracted. Dialogflow
/// provides predefined system entities that can match many common types of
/// data. For example, there are system entities for matching dates, times,
/// colors, email addresses, and so on. You can also create your own custom
/// entities for matching custom data. For example, you could define a vegetable
/// entity that can match the types of vegetables available for purchase with a
/// grocery store agent. For more information, see the [Entity
/// guide](https://cloud.google.com/dialogflow/docs/entities-overview).
class GoogleCloudDialogflowV2beta1EntityType {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly listed in the entity.
  core.String autoExpansionMode;

  /// Required. The name of the entity type.
  core.String displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  core.bool enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity
  /// type.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities;

  /// Required. Indicates the kind of entity type.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// reference value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to reference values. However, list entity types can contain references to
  /// other entity types (with or without aliases).
  /// - "KIND_REGEXP" : Regexp entity types allow to specify regular expressions
  /// in entries values.
  core.String kind;

  /// The unique identifier of the entity type. Required for
  /// EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
  /// methods. Supported formats: - `projects//agent/entityTypes/` -
  /// `projects//locations//agent/entityTypes/`
  core.String name;

  GoogleCloudDialogflowV2beta1EntityType();

  GoogleCloudDialogflowV2beta1EntityType.fromJson(core.Map _json) {
    if (_json.containsKey('autoExpansionMode')) {
      autoExpansionMode = _json['autoExpansionMode'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('enableFuzzyExtraction')) {
      enableFuzzyExtraction = _json['enableFuzzyExtraction'];
    }
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoExpansionMode != null) {
      _json['autoExpansionMode'] = autoExpansionMode;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (enableFuzzyExtraction != null) {
      _json['enableFuzzyExtraction'] = enableFuzzyExtraction;
    }
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// This message is a wrapper around a collection of entity types.
class GoogleCloudDialogflowV2beta1EntityTypeBatch {
  /// A collection of entity types.
  core.List<GoogleCloudDialogflowV2beta1EntityType> entityTypes;

  GoogleCloudDialogflowV2beta1EntityTypeBatch();

  GoogleCloudDialogflowV2beta1EntityTypeBatch.fromJson(core.Map _json) {
    if (_json.containsKey('entityTypes')) {
      entityTypes = (_json['entityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityType>(
              (value) => GoogleCloudDialogflowV2beta1EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypes != null) {
      _json['entityTypes'] =
          entityTypes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowV2beta1EntityTypeEntity {
  /// Required. A collection of value synonyms. For example, if the entity type
  /// is *vegetable*, and `value` is *scallions*, a synonym could be *green
  /// onions*. For `KIND_LIST` entity types: * This collection must contain
  /// exactly one synonym equal to `value`.
  core.List<core.String> synonyms;

  /// Required. The primary value associated with this entity entry. For
  /// example, if the entity type is *vegetable*, the value could be
  /// *scallions*. For `KIND_MAP` entity types: * A reference value to be used
  /// in place of synonyms. For `KIND_LIST` entity types: * A string that can
  /// contain references to other entity types (with or without aliases).
  core.String value;

  GoogleCloudDialogflowV2beta1EntityTypeEntity();

  GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(core.Map _json) {
    if (_json.containsKey('synonyms')) {
      synonyms = (_json['synonyms'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (synonyms != null) {
      _json['synonyms'] = synonyms;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// You can create multiple versions of your agent and publish them to separate
/// environments. When you edit an agent, you are editing the draft agent. At
/// any point, you can save the draft agent as an agent version, which is an
/// immutable snapshot of your agent. When you save the draft agent, it is
/// published to the default environment. When you create agent versions, you
/// can publish them to custom environments. You can create a variety of custom
/// environments for: - testing - development - production - etc. For more
/// information, see the [versions and environments
/// guide](https://cloud.google.com/dialogflow/docs/agents-versions).
class GoogleCloudDialogflowV2beta1Environment {
  /// Optional. The agent version loaded into this environment. Supported
  /// formats: - `projects//agent/versions/` -
  /// `projects//locations//agent/versions/`
  core.String agentVersion;

  /// Optional. The developer-provided description for this environment. The
  /// maximum length is 500 characters. If exceeded, the request is rejected.
  core.String description;

  /// Output only. The unique identifier of this agent environment. Supported
  /// formats: - `projects//agent/environments/` -
  /// `projects//locations//agent/environments/`
  core.String name;

  /// Output only. The state of this environment. This field is read-only, i.e.,
  /// it cannot be set by create and update methods.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified. This value is not used.
  /// - "STOPPED" : Stopped.
  /// - "LOADING" : Loading.
  /// - "RUNNING" : Running.
  core.String state;

  /// Output only. The last update time of this environment. This field is
  /// read-only, i.e., it cannot be set by create and update methods.
  core.String updateTime;

  GoogleCloudDialogflowV2beta1Environment();

  GoogleCloudDialogflowV2beta1Environment.fromJson(core.Map _json) {
    if (_json.containsKey('agentVersion')) {
      agentVersion = _json['agentVersion'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentVersion != null) {
      _json['agentVersion'] = agentVersion;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Events allow for matching intents by event name instead of the natural
/// language input. For instance, input `` can trigger a personalized welcome
/// response. The parameter `name` may be used by the agent in the response:
/// `"Hello #welcome_event.name! What can I do for you today?"`.
class GoogleCloudDialogflowV2beta1EventInput {
  /// Required. The language of this query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes. Note that queries in the
  /// same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The unique identifier of the event.
  core.String name;

  /// The collection of parameters associated with the event. Depending on your
  /// protocol or client library language, this is a map, associative array,
  /// symbol table, dictionary, or JSON object composed of a collection of
  /// (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter
  /// name - MapValue type: - If parameter's entity type is a composite entity:
  /// map - Else: string or number, depending on parameter value type - MapValue
  /// value: - If parameter's entity type is a composite entity: map from
  /// composite entity property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2beta1EventInput();

  GoogleCloudDialogflowV2beta1EventInput.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    return _json;
  }
}

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowV2beta1ExportAgentRequest {
  /// Optional. The [Google Cloud
  /// Storage](https://cloud.google.com/storage/docs/) URI to export the agent
  /// to. The format of this URI must be `gs:///`. If left unspecified, the
  /// serialized agent is returned inline.
  core.String agentUri;

  GoogleCloudDialogflowV2beta1ExportAgentRequest();

  GoogleCloudDialogflowV2beta1ExportAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowV2beta1ExportAgentResponse {
  /// Zip compressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in `ExportAgentRequest`.
  core.String agentUri;

  GoogleCloudDialogflowV2beta1ExportAgentResponse();

  GoogleCloudDialogflowV2beta1ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// By default, your agent responds to a matched intent with a static response.
/// As an alternative, you can provide a more dynamic response by using
/// fulfillment. When you enable fulfillment for an intent, Dialogflow responds
/// to that intent by calling a service that you define. For example, if an
/// end-user wants to schedule a haircut on Friday, your service can check your
/// database and respond to the end-user with availability information for
/// Friday. For more information, see the [fulfillment
/// guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2beta1Fulfillment {
  /// The human-readable name of the fulfillment, unique within the agent.
  core.String displayName;

  /// Whether fulfillment is enabled.
  core.bool enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  core.List<GoogleCloudDialogflowV2beta1FulfillmentFeature> features;

  /// Configuration for a generic web service.
  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService genericWebService;

  /// Required. The unique identifier of the fulfillment. Supported formats: -
  /// `projects//agent/fulfillment` - `projects//locations//agent/fulfillment`
  core.String name;

  GoogleCloudDialogflowV2beta1Fulfillment();

  GoogleCloudDialogflowV2beta1Fulfillment.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('features')) {
      features = (_json['features'] as core.List)
          .map<GoogleCloudDialogflowV2beta1FulfillmentFeature>((value) =>
              GoogleCloudDialogflowV2beta1FulfillmentFeature.fromJson(value))
          .toList();
    }
    if (_json.containsKey('genericWebService')) {
      genericWebService =
          GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromJson(
              _json['genericWebService']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (features != null) {
      _json['features'] = features.map((value) => value.toJson()).toList();
    }
    if (genericWebService != null) {
      _json['genericWebService'] = genericWebService.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2beta1FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Feature type not specified.
  /// - "SMALLTALK" : Fulfillment is enabled for SmallTalk.
  core.String type;

  GoogleCloudDialogflowV2beta1FulfillmentFeature();

  GoogleCloudDialogflowV2beta1FulfillmentFeature.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Represents configuration for a generic web service. Dialogflow supports two
/// mechanisms for authentications: - Basic authentication with username and
/// password. - Authentication with additional authentication headers. More
/// information could be found at:
/// https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2beta1FulfillmentGenericWebService {
  /// Indicates if generic web service is created through Cloud Functions
  /// integration. Defaults to false.
  core.bool isCloudFunction;

  /// The password for HTTP Basic authentication.
  core.String password;

  /// The HTTP request headers to send together with fulfillment requests.
  core.Map<core.String, core.String> requestHeaders;

  /// Required. The fulfillment URI for receiving POST requests. It must use
  /// https protocol.
  core.String uri;

  /// The user name for HTTP Basic authentication.
  core.String username;

  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService();

  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromJson(
      core.Map _json) {
    if (_json.containsKey('isCloudFunction')) {
      isCloudFunction = _json['isCloudFunction'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('requestHeaders')) {
      requestHeaders = (_json['requestHeaders'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
    if (_json.containsKey('username')) {
      username = _json['username'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (isCloudFunction != null) {
      _json['isCloudFunction'] = isCloudFunction;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (requestHeaders != null) {
      _json['requestHeaders'] = requestHeaders;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    if (username != null) {
      _json['username'] = username;
    }
    return _json;
  }
}

/// Google Cloud Storage location for single input.
class GoogleCloudDialogflowV2beta1GcsSource {
  /// Required. The Google Cloud Storage URIs for the inputs. A URI is of the
  /// form: gs://bucket/object-prefix-or-name Whether a prefix or name is used
  /// depends on the use case.
  core.String uri;

  GoogleCloudDialogflowV2beta1GcsSource();

  GoogleCloudDialogflowV2beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The request message for Agents.ImportAgent.
class GoogleCloudDialogflowV2beta1ImportAgentRequest {
  /// Zip compressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a Google Cloud Storage file containing the agent to import.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  GoogleCloudDialogflowV2beta1ImportAgentRequest();

  GoogleCloudDialogflowV2beta1ImportAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// Response message for Documents.ImportDocuments.
class GoogleCloudDialogflowV2beta1ImportDocumentsResponse {
  /// Includes details about skipped documents or any other warnings.
  core.List<GoogleRpcStatus> warnings;

  GoogleCloudDialogflowV2beta1ImportDocumentsResponse();

  GoogleCloudDialogflowV2beta1ImportDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('warnings')) {
      warnings = (_json['warnings'] as core.List)
          .map<GoogleRpcStatus>((value) => GoogleRpcStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (warnings != null) {
      _json['warnings'] = warnings.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Instructs the speech recognizer on how to process the audio content.
class GoogleCloudDialogflowV2beta1InputAudioConfig {
  /// Required. Audio encoding of the audio content to process.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed little-endian
  /// samples (Linear PCM).
  /// - "AUDIO_ENCODING_FLAC" :
  /// [`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio
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
  core.String audioEncoding;

  /// If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult
  /// with information about the recognized speech words, e.g. start and end
  /// time offsets. If false or unspecified, Speech doesn't return any
  /// word-level information.
  core.bool enableWordInfo;

  /// Required. The language of the supplied audio. Dialogflow does not do
  /// translations. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes. Note that queries in the
  /// same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Which Speech model to select for the given request. Select the model best
  /// suited to your domain to get best results. If a model is not explicitly
  /// specified, then we auto-select a model based on the parameters in the
  /// InputAudioConfig. If enhanced speech model is enabled for the agent and an
  /// enhanced version of the specified model for the language does not exist,
  /// then the speech is recognized using the standard version of the specified
  /// model. Refer to [Cloud Speech API
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model)
  /// for more details.
  core.String model;

  /// Which variant of the Speech model to use.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for. Please see the [Dialogflow
  /// docs](https://cloud.google.com/dialogflow/docs/data-logging) for how to
  /// make your project eligible for enhanced models.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available. See the [Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant: * If an enhanced variant
  /// does not exist for the given model and request language, Dialogflow falls
  /// back to the standard variant. The [Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// describes which models have enhanced variants. * If the API caller isn't
  /// eligible for enhanced models, Dialogflow returns an error. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible.
  core.String modelVariant;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood. See [the Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details. This field is deprecated. Please use [speech_contexts]()
  /// instead. If you specify both [phrase_hints]() and [speech_contexts](),
  /// Dialogflow will treat the [phrase_hints]() as a single additional
  /// [SpeechContext]().
  core.List<core.String> phraseHints;

  /// Required. Sample rate (in Hertz) of the audio content sent in the query.
  /// Refer to [Cloud Speech API
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics) for
  /// more details.
  core.int sampleRateHertz;

  /// If `false` (default), recognition does not cease until the client closes
  /// the stream. If `true`, the recognizer will detect a single spoken
  /// utterance in input audio. Recognition ceases when it detects the audio's
  /// voice has stopped or paused. In this case, once a detected intent is
  /// received, the client should close the stream and start a new request with
  /// a new stream as needed. Note: This setting is relevant only for streaming
  /// methods. Note: When specified, InputAudioConfig.single_utterance takes
  /// precedence over StreamingDetectIntentRequest.single_utterance.
  core.bool singleUtterance;

  /// Context information to assist speech recognition. See [the Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details.
  core.List<GoogleCloudDialogflowV2beta1SpeechContext> speechContexts;

  GoogleCloudDialogflowV2beta1InputAudioConfig();

  GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey('audioEncoding')) {
      audioEncoding = _json['audioEncoding'];
    }
    if (_json.containsKey('enableWordInfo')) {
      enableWordInfo = _json['enableWordInfo'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('model')) {
      model = _json['model'];
    }
    if (_json.containsKey('modelVariant')) {
      modelVariant = _json['modelVariant'];
    }
    if (_json.containsKey('phraseHints')) {
      phraseHints = (_json['phraseHints'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('sampleRateHertz')) {
      sampleRateHertz = _json['sampleRateHertz'];
    }
    if (_json.containsKey('singleUtterance')) {
      singleUtterance = _json['singleUtterance'];
    }
    if (_json.containsKey('speechContexts')) {
      speechContexts = (_json['speechContexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SpeechContext>((value) =>
              GoogleCloudDialogflowV2beta1SpeechContext.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audioEncoding != null) {
      _json['audioEncoding'] = audioEncoding;
    }
    if (enableWordInfo != null) {
      _json['enableWordInfo'] = enableWordInfo;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (model != null) {
      _json['model'] = model;
    }
    if (modelVariant != null) {
      _json['modelVariant'] = modelVariant;
    }
    if (phraseHints != null) {
      _json['phraseHints'] = phraseHints;
    }
    if (sampleRateHertz != null) {
      _json['sampleRateHertz'] = sampleRateHertz;
    }
    if (singleUtterance != null) {
      _json['singleUtterance'] = singleUtterance;
    }
    if (speechContexts != null) {
      _json['speechContexts'] =
          speechContexts.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An intent categorizes an end-user's intention for one conversation turn. For
/// each agent, you define many intents, where your combined intents can handle
/// a complete conversation. When an end-user writes or says something, referred
/// to as an end-user expression or end-user input, Dialogflow matches the
/// end-user input to the best intent in your agent. Matching an intent is also
/// known as intent classification. For more information, see the [intent
/// guide](https://cloud.google.com/dialogflow/docs/intents-overview).
class GoogleCloudDialogflowV2beta1Intent {
  /// Optional. The name of the action associated with the intent. Note: The
  /// action name must not contain whitespaces.
  core.String action;

  /// Optional. The list of platforms for which the first responses will be
  /// copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  core.List<core.String> defaultResponsePlatforms;

  /// Required. The name of this intent.
  core.String displayName;

  /// Optional. Indicates that this intent ends an interaction. Some
  /// integrations (e.g., Actions on Google or Dialogflow phone gateway) use
  /// this information to close interaction with an end user. Default is false.
  core.bool endInteraction;

  /// Optional. The collection of event names that trigger the intent. If the
  /// collection of input contexts is not empty, all of the contexts must be
  /// present in the active user session for an event to trigger this intent.
  /// Event names are limited to 150 characters.
  core.List<core.String> events;

  /// Output only. Information about all followup intents that have this intent
  /// as a direct or indirect parent. We populate this field only in the output.
  core.List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>
      followupIntentInfo;

  /// Optional. The list of context names required for this intent to be
  /// triggered. Formats: - `projects//agent/sessions/-/contexts/` -
  /// `projects//locations//agent/sessions/-/contexts/`
  core.List<core.String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  core.bool isFallback;

  /// Optional. The collection of rich messages corresponding to the `Response`
  /// field in the Dialogflow console.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent.
  /// Note: If `ml_disabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  core.bool mlDisabled;

  /// Optional. Indicates whether Machine Learning is enabled for the intent.
  /// Note: If `ml_enabled` setting is set to false, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled`
  /// field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not
  /// set or false, then the default value is determined as follows: - Before
  /// April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true.
  /// - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled =
  /// false.
  core.bool mlEnabled;

  /// Optional. The unique identifier of this intent. Required for
  /// Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported
  /// formats: - `projects//agent/intents/` -
  /// `projects//locations//agent/intents/`
  core.String name;

  /// Optional. The collection of contexts that are activated when the intent is
  /// matched. Context messages in this collection should not set the parameters
  /// field. Setting the `lifespan_count` to 0 will reset the context when the
  /// intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowV2beta1IntentParameter> parameters;

  /// Optional. The unique identifier of the parent intent in the chain of
  /// followup intents. You can set this field when creating an intent, for
  /// example with CreateIntent or BatchUpdateIntents, in order to make this
  /// intent a followup intent. It identifies the parent followup intent.
  /// Format: `projects//agent/intents/`.
  core.String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher
  /// priorities. - If the supplied value is unspecified or 0, the service
  /// translates the value to 500,000, which corresponds to the `Normal`
  /// priority in the console. - If the supplied value is negative, the intent
  /// is ignored in runtime detect intent requests.
  core.int priority;

  /// Optional. Indicates whether to delete all contexts in the current session
  /// when this intent is matched.
  core.bool resetContexts;

  /// Output only. The unique identifier of the root intent in the chain of
  /// followup intents. It identifies the correct followup intents chain for
  /// this intent. Format: `projects//agent/intents/`.
  core.String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is trained on.
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrase> trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot filling prompt is forwarded to
  /// the webhook.
  core.String webhookState;

  GoogleCloudDialogflowV2beta1Intent();

  GoogleCloudDialogflowV2beta1Intent.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'];
    }
    if (_json.containsKey('defaultResponsePlatforms')) {
      defaultResponsePlatforms =
          (_json['defaultResponsePlatforms'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('endInteraction')) {
      endInteraction = _json['endInteraction'];
    }
    if (_json.containsKey('events')) {
      events = (_json['events'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('followupIntentInfo')) {
      followupIntentInfo = (_json['followupIntentInfo'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>((value) =>
              GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('inputContextNames')) {
      inputContextNames =
          (_json['inputContextNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('isFallback')) {
      isFallback = _json['isFallback'];
    }
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('mlDisabled')) {
      mlDisabled = _json['mlDisabled'];
    }
    if (_json.containsKey('mlEnabled')) {
      mlEnabled = _json['mlEnabled'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>(
              (value) => GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentParameter>((value) =>
              GoogleCloudDialogflowV2beta1IntentParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parentFollowupIntentName')) {
      parentFollowupIntentName = _json['parentFollowupIntentName'];
    }
    if (_json.containsKey('priority')) {
      priority = _json['priority'];
    }
    if (_json.containsKey('resetContexts')) {
      resetContexts = _json['resetContexts'];
    }
    if (_json.containsKey('rootFollowupIntentName')) {
      rootFollowupIntentName = _json['rootFollowupIntentName'];
    }
    if (_json.containsKey('trainingPhrases')) {
      trainingPhrases = (_json['trainingPhrases'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>((value) =>
              GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(value))
          .toList();
    }
    if (_json.containsKey('webhookState')) {
      webhookState = _json['webhookState'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (defaultResponsePlatforms != null) {
      _json['defaultResponsePlatforms'] = defaultResponsePlatforms;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (endInteraction != null) {
      _json['endInteraction'] = endInteraction;
    }
    if (events != null) {
      _json['events'] = events;
    }
    if (followupIntentInfo != null) {
      _json['followupIntentInfo'] =
          followupIntentInfo.map((value) => value.toJson()).toList();
    }
    if (inputContextNames != null) {
      _json['inputContextNames'] = inputContextNames;
    }
    if (isFallback != null) {
      _json['isFallback'] = isFallback;
    }
    if (messages != null) {
      _json['messages'] = messages.map((value) => value.toJson()).toList();
    }
    if (mlDisabled != null) {
      _json['mlDisabled'] = mlDisabled;
    }
    if (mlEnabled != null) {
      _json['mlEnabled'] = mlEnabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (parameters != null) {
      _json['parameters'] = parameters.map((value) => value.toJson()).toList();
    }
    if (parentFollowupIntentName != null) {
      _json['parentFollowupIntentName'] = parentFollowupIntentName;
    }
    if (priority != null) {
      _json['priority'] = priority;
    }
    if (resetContexts != null) {
      _json['resetContexts'] = resetContexts;
    }
    if (rootFollowupIntentName != null) {
      _json['rootFollowupIntentName'] = rootFollowupIntentName;
    }
    if (trainingPhrases != null) {
      _json['trainingPhrases'] =
          trainingPhrases.map((value) => value.toJson()).toList();
    }
    if (webhookState != null) {
      _json['webhookState'] = webhookState;
    }
    return _json;
  }
}

/// This message is a wrapper around a collection of intents.
class GoogleCloudDialogflowV2beta1IntentBatch {
  /// A collection of intents.
  core.List<GoogleCloudDialogflowV2beta1Intent> intents;

  GoogleCloudDialogflowV2beta1IntentBatch();

  GoogleCloudDialogflowV2beta1IntentBatch.fromJson(core.Map _json) {
    if (_json.containsKey('intents')) {
      intents = (_json['intents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Intent>(
              (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intents != null) {
      _json['intents'] = intents.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent. Format:
  /// `projects//agent/intents/`.
  core.String followupIntentName;

  /// The unique identifier of the followup intent's parent. Format:
  /// `projects//agent/intents/`.
  core.String parentFollowupIntentName;

  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();

  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('followupIntentName')) {
      followupIntentName = _json['followupIntentName'];
    }
    if (_json.containsKey('parentFollowupIntentName')) {
      parentFollowupIntentName = _json['parentFollowupIntentName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (followupIntentName != null) {
      _json['followupIntentName'] = followupIntentName;
    }
    if (parentFollowupIntentName != null) {
      _json['parentFollowupIntentName'] = parentFollowupIntentName;
    }
    return _json;
  }
}

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessage {
  /// Displays a basic card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard basicCard;

  /// Browse carousel card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
      browseCarouselCard;

  /// Displays a card.
  GoogleCloudDialogflowV2beta1IntentMessageCard card;

  /// Displays a carousel card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect carouselSelect;

  /// Displays an image.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Displays a link out suggestion chip for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion linkOutSuggestion;

  /// Displays a list card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageListSelect listSelect;

  /// The media content card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent mediaContent;

  /// A custom platform-specific response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. The platform that this message is intended for.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Not specified.
  /// - "FACEBOOK" : Facebook.
  /// - "SLACK" : Slack.
  /// - "TELEGRAM" : Telegram.
  /// - "KIK" : Kik.
  /// - "SKYPE" : Skype.
  /// - "LINE" : Line.
  /// - "VIBER" : Viber.
  /// - "ACTIONS_ON_GOOGLE" : Google Assistant See [Dialogflow webhook
  /// format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  /// - "TELEPHONY" : Telephony Gateway.
  /// - "GOOGLE_HANGOUTS" : Google Hangouts.
  core.String platform;

  /// Displays quick replies.
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies quickReplies;

  /// Rich Business Messaging (RBM) carousel rich card response.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard rbmCarouselRichCard;

  /// Standalone Rich Business Messaging (RBM) rich card response.
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
      rbmStandaloneRichCard;

  /// Rich Business Messaging (RBM) text response. RBM allows businesses to send
  /// enriched and branded versions of SMS. See
  /// https://jibe.google.com/business-messaging.
  GoogleCloudDialogflowV2beta1IntentMessageRbmText rbmText;

  /// Returns a voice or text-only response for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses simpleResponses;

  /// Displays suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions suggestions;

  /// Table card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageTableCard tableCard;

  /// Plays audio from a file in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
      telephonyPlayAudio;

  /// Synthesizes speech in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
      telephonySynthesizeSpeech;

  /// Transfers the call in Telephony Gateway.
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
      telephonyTransferCall;

  /// Returns a text response.
  GoogleCloudDialogflowV2beta1IntentMessageText text;

  GoogleCloudDialogflowV2beta1IntentMessage();

  GoogleCloudDialogflowV2beta1IntentMessage.fromJson(core.Map _json) {
    if (_json.containsKey('basicCard')) {
      basicCard = GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
          _json['basicCard']);
    }
    if (_json.containsKey('browseCarouselCard')) {
      browseCarouselCard =
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromJson(
              _json['browseCarouselCard']);
    }
    if (_json.containsKey('card')) {
      card =
          GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(_json['card']);
    }
    if (_json.containsKey('carouselSelect')) {
      carouselSelect =
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
              _json['carouselSelect']);
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('linkOutSuggestion')) {
      linkOutSuggestion =
          GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
              _json['linkOutSuggestion']);
    }
    if (_json.containsKey('listSelect')) {
      listSelect = GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
          _json['listSelect']);
    }
    if (_json.containsKey('mediaContent')) {
      mediaContent =
          GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(
              _json['mediaContent']);
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('platform')) {
      platform = _json['platform'];
    }
    if (_json.containsKey('quickReplies')) {
      quickReplies =
          GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
              _json['quickReplies']);
    }
    if (_json.containsKey('rbmCarouselRichCard')) {
      rbmCarouselRichCard =
          GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
              _json['rbmCarouselRichCard']);
    }
    if (_json.containsKey('rbmStandaloneRichCard')) {
      rbmStandaloneRichCard =
          GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
              _json['rbmStandaloneRichCard']);
    }
    if (_json.containsKey('rbmText')) {
      rbmText = GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
          _json['rbmText']);
    }
    if (_json.containsKey('simpleResponses')) {
      simpleResponses =
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
              _json['simpleResponses']);
    }
    if (_json.containsKey('suggestions')) {
      suggestions =
          GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
              _json['suggestions']);
    }
    if (_json.containsKey('tableCard')) {
      tableCard = GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(
          _json['tableCard']);
    }
    if (_json.containsKey('telephonyPlayAudio')) {
      telephonyPlayAudio =
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
              _json['telephonyPlayAudio']);
    }
    if (_json.containsKey('telephonySynthesizeSpeech')) {
      telephonySynthesizeSpeech =
          GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
              .fromJson(_json['telephonySynthesizeSpeech']);
    }
    if (_json.containsKey('telephonyTransferCall')) {
      telephonyTransferCall =
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
              .fromJson(_json['telephonyTransferCall']);
    }
    if (_json.containsKey('text')) {
      text =
          GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(_json['text']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (basicCard != null) {
      _json['basicCard'] = basicCard.toJson();
    }
    if (browseCarouselCard != null) {
      _json['browseCarouselCard'] = browseCarouselCard.toJson();
    }
    if (card != null) {
      _json['card'] = card.toJson();
    }
    if (carouselSelect != null) {
      _json['carouselSelect'] = carouselSelect.toJson();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (linkOutSuggestion != null) {
      _json['linkOutSuggestion'] = linkOutSuggestion.toJson();
    }
    if (listSelect != null) {
      _json['listSelect'] = listSelect.toJson();
    }
    if (mediaContent != null) {
      _json['mediaContent'] = mediaContent.toJson();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (platform != null) {
      _json['platform'] = platform;
    }
    if (quickReplies != null) {
      _json['quickReplies'] = quickReplies.toJson();
    }
    if (rbmCarouselRichCard != null) {
      _json['rbmCarouselRichCard'] = rbmCarouselRichCard.toJson();
    }
    if (rbmStandaloneRichCard != null) {
      _json['rbmStandaloneRichCard'] = rbmStandaloneRichCard.toJson();
    }
    if (rbmText != null) {
      _json['rbmText'] = rbmText.toJson();
    }
    if (simpleResponses != null) {
      _json['simpleResponses'] = simpleResponses.toJson();
    }
    if (suggestions != null) {
      _json['suggestions'] = suggestions.toJson();
    }
    if (tableCard != null) {
      _json['tableCard'] = tableCard.toJson();
    }
    if (telephonyPlayAudio != null) {
      _json['telephonyPlayAudio'] = telephonyPlayAudio.toJson();
    }
    if (telephonySynthesizeSpeech != null) {
      _json['telephonySynthesizeSpeech'] = telephonySynthesizeSpeech.toJson();
    }
    if (telephonyTransferCall != null) {
      _json['telephonyTransferCall'] = telephonyTransferCall.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> buttons;

  /// Required, unless image is present. The body text of the card.
  core.String formattedText;

  /// Optional. The image for the card.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCard();

  GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('formattedText')) {
      formattedText = _json['formattedText'];
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (formattedText != null) {
      _json['formattedText'] = formattedText;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton {
  /// Required. Action to take when a user taps on the button.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
      openUriAction;

  /// Required. The title of the button.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
      core.Map _json) {
    if (_json.containsKey('openUriAction')) {
      openUriAction =
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
              .fromJson(_json['openUriAction']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (openUriAction != null) {
      _json['openUriAction'] = openUriAction.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Opens the given URI.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction {
  /// Required. The HTTP or HTTPS scheme URI.
  core.String uri;

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();

  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction.fromJson(
      core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// Browse Carousel Card for Actions on Google.
/// https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard {
  /// Optional. Settings for displaying the image. Applies to every image in
  /// items.
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
  core.String imageDisplayOptions;

  /// Required. List of items in the Browse Carousel Card. Minimum of two items,
  /// maximum of ten.
  core.List<
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
      items;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromJson(
      core.Map _json) {
    if (_json.containsKey('imageDisplayOptions')) {
      imageDisplayOptions = _json['imageDisplayOptions'];
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (imageDisplayOptions != null) {
      _json['imageDisplayOptions'] = imageDisplayOptions;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  core.String description;

  /// Optional. Text that appears at the bottom of the Browse Carousel Card.
  /// Maximum of one line of text.
  core.String footer;

  /// Optional. Hero image for the carousel item.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Required. Action to present to the user.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
      openUriAction;

  /// Required. Title of the carousel item. Maximum of two lines of text.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem();

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('footer')) {
      footer = _json['footer'];
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('openUriAction')) {
      openUriAction =
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromJson(_json['openUriAction']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (footer != null) {
      _json['footer'] = footer;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (openUriAction != null) {
      _json['openUriAction'] = openUriAction.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  /// Required. URL
  core.String url;

  /// Optional. Specifies the type of viewer that is used when opening the URL.
  /// Defaults to opening via web browser.
  /// Possible string values are:
  /// - "URL_TYPE_HINT_UNSPECIFIED" : Unspecified
  /// - "AMP_ACTION" : Url would be an amp action
  /// - "AMP_CONTENT" : URL that points directly to AMP content, or to a
  /// canonical URL which refers to AMP content via .
  core.String urlTypeHint;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
      core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'];
    }
    if (_json.containsKey('urlTypeHint')) {
      urlTypeHint = _json['urlTypeHint'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (url != null) {
      _json['url'] = url;
    }
    if (urlTypeHint != null) {
      _json['urlTypeHint'] = urlTypeHint;
    }
    return _json;
  }
}

/// The card response message.
class GoogleCloudDialogflowV2beta1IntentMessageCard {
  /// Optional. The collection of card buttons.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageCardButton> buttons;

  /// Optional. The public URI to an image file for the card.
  core.String imageUri;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageCard();

  GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageCardButton>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'];
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Optional. Contains information about a button.
class GoogleCloudDialogflowV2beta1IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  core.String postback;

  /// Optional. The text to show on the button.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageCardButton();

  GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(core.Map _json) {
    if (_json.containsKey('postback')) {
      postback = _json['postback'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (postback != null) {
      _json['postback'] = postback;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect {
  /// Required. Carousel items.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem> items;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
      core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An item in the carousel.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem {
  /// Optional. The body text of the card.
  core.String description;

  /// Optional. The image to display.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Required. Additional info about the option item.
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo info;

  /// Required. Title of the carousel item.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('info')) {
      info = GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
          _json['info']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (info != null) {
      _json['info'] = info.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Column properties for TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties {
  /// Required. Column heading.
  core.String header;

  /// Optional. Defines text alignment for all cells in this column.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : Text is aligned to the leading edge
  /// of the column.
  /// - "LEADING" : Text is aligned to the leading edge of the column.
  /// - "CENTER" : Text is centered in the column.
  /// - "TRAILING" : Text is aligned to the trailing edge of the column.
  core.String horizontalAlignment;

  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties();

  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromJson(
      core.Map _json) {
    if (_json.containsKey('header')) {
      header = _json['header'];
    }
    if (_json.containsKey('horizontalAlignment')) {
      horizontalAlignment = _json['horizontalAlignment'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header;
    }
    if (horizontalAlignment != null) {
      _json['horizontalAlignment'] = horizontalAlignment;
    }
    return _json;
  }
}

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen
  /// readers. Required if image_uri is set for CarouselSelect.
  core.String accessibilityText;

  /// Optional. The public URI to an image file.
  core.String imageUri;

  GoogleCloudDialogflowV2beta1IntentMessageImage();

  GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(core.Map _json) {
    if (_json.containsKey('accessibilityText')) {
      accessibilityText = _json['accessibilityText'];
    }
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessibilityText != null) {
      _json['accessibilityText'] = accessibilityText;
    }
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    return _json;
  }
}

/// The suggestion chip message that allows the user to jump out to the app or
/// website associated with this agent.
class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion {
  /// Required. The name of the app or site this chip is linking to.
  core.String destinationName;

  /// Required. The URI of the app or site to open when the user taps the
  /// suggestion chip.
  core.String uri;

  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey('destinationName')) {
      destinationName = _json['destinationName'];
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (destinationName != null) {
      _json['destinationName'] = destinationName;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelect {
  /// Required. List items.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> items;

  /// Optional. Subtitle of the list.
  core.String subtitle;

  /// Optional. The overall title of the list.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelect();

  GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// An item in the list.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem {
  /// Optional. The main text describing the item.
  core.String description;

  /// Optional. The image to display.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Required. Additional information about this option.
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo info;

  /// Required. The title of the list item.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem();

  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('info')) {
      info = GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
          _json['info']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (info != null) {
      _json['info'] = info.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContent {
  /// Required. List of media objects.
  core.List<
          GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>
      mediaObjects;

  /// Optional. What type of media is the content (ie "audio").
  /// Possible string values are:
  /// - "RESPONSE_MEDIA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "AUDIO" : Response media type is audio.
  core.String mediaType;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContent();

  GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(
      core.Map _json) {
    if (_json.containsKey('mediaObjects')) {
      mediaObjects = (_json['mediaObjects'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('mediaType')) {
      mediaType = _json['mediaType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (mediaObjects != null) {
      _json['mediaObjects'] =
          mediaObjects.map((value) => value.toJson()).toList();
    }
    if (mediaType != null) {
      _json['mediaType'] = mediaType;
    }
    return _json;
  }
}

/// Response media object for media content card.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject {
  /// Required. Url where the media is stored.
  core.String contentUrl;

  /// Optional. Description of media card.
  core.String description;

  /// Optional. Icon to display above media content.
  GoogleCloudDialogflowV2beta1IntentMessageImage icon;

  /// Optional. Image to display above media content.
  GoogleCloudDialogflowV2beta1IntentMessageImage largeImage;

  /// Required. Name of media card.
  core.String name;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject();

  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject.fromJson(
      core.Map _json) {
    if (_json.containsKey('contentUrl')) {
      contentUrl = _json['contentUrl'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('icon')) {
      icon = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['icon']);
    }
    if (_json.containsKey('largeImage')) {
      largeImage = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['largeImage']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (contentUrl != null) {
      _json['contentUrl'] = contentUrl;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (icon != null) {
      _json['icon'] = icon.toJson();
    }
    if (largeImage != null) {
      _json['largeImage'] = largeImage.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The quick replies response message.
class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  core.List<core.String> quickReplies;

  /// Optional. The title of the collection of quick replies.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();

  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
      core.Map _json) {
    if (_json.containsKey('quickReplies')) {
      quickReplies = (_json['quickReplies'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (quickReplies != null) {
      _json['quickReplies'] = quickReplies;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent {
  /// Optional. Description of the card (at most 2000 bytes). At least one of
  /// the title, description or media must be set.
  core.String description;

  /// Optional. However at least one of the title, description or media must be
  /// set. Media (image, GIF or a video) to include in the card.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia media;

  /// Optional. List of suggestions to include in the card.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> suggestions;

  /// Optional. Title of the card (at most 200 bytes). At least one of the
  /// title, description or media must be set.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('media')) {
      media = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
          .fromJson(_json['media']);
    }
    if (_json.containsKey('suggestions')) {
      suggestions = (_json['suggestions'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (media != null) {
      _json['media'] = media.toJson();
    }
    if (suggestions != null) {
      _json['suggestions'] =
          suggestions.map((value) => value.toJson()).toList();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) Media displayed in Cards The following
/// media-types are currently supported: Image Types * image/jpeg * image/jpg' *
/// image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 *
/// video/mpeg * video/mpeg4 * video/webm
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia {
  /// Required. Publicly reachable URI of the file. The RBM platform determines
  /// the MIME type of the file from the content-type field in the HTTP headers
  /// when the platform fetches the file. The content-type field must be present
  /// and accurate in the HTTP response from the URL.
  core.String fileUri;

  /// Required for cards with vertical orientation. The height of the media
  /// within a rich card with a vertical layout. For a standalone card with
  /// horizontal layout, height is not customizable, and this field is ignored.
  /// Possible string values are:
  /// - "HEIGHT_UNSPECIFIED" : Not specified.
  /// - "SHORT" : 112 DP.
  /// - "MEDIUM" : 168 DP.
  /// - "TALL" : 264 DP. Not available for rich card carousels when the card
  /// width is set to small.
  core.String height;

  /// Optional. Publicly reachable URI of the thumbnail.If you don't provide a
  /// thumbnail URI, the RBM platform displays a blank placeholder thumbnail
  /// until the user's device downloads the file. Depending on the user's
  /// setting, the file may not download automatically and may require the user
  /// to tap a download button.
  core.String thumbnailUri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
      core.Map _json) {
    if (_json.containsKey('fileUri')) {
      fileUri = _json['fileUri'];
    }
    if (_json.containsKey('height')) {
      height = _json['height'];
    }
    if (_json.containsKey('thumbnailUri')) {
      thumbnailUri = _json['thumbnailUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (fileUri != null) {
      _json['fileUri'] = fileUri;
    }
    if (height != null) {
      _json['height'] = height;
    }
    if (thumbnailUri != null) {
      _json['thumbnailUri'] = thumbnailUri;
    }
    return _json;
  }
}

/// Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to
/// respond to users with more vivid content, e.g. with media and suggestions.
/// If you want to show a single card with more control over the layout, please
/// use RbmStandaloneCard instead.
class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard {
  /// Required. The cards in the carousel. A carousel must have at least 2 cards
  /// and at most 10.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>
      cardContents;

  /// Required. The width of the cards in the carousel.
  /// Possible string values are:
  /// - "CARD_WIDTH_UNSPECIFIED" : Not specified.
  /// - "SMALL" : 120 DP. Note that tall media cannot be used.
  /// - "MEDIUM" : 232 DP.
  core.String cardWidth;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();

  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
      core.Map _json) {
    if (_json.containsKey('cardContents')) {
      cardContents = (_json['cardContents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('cardWidth')) {
      cardWidth = _json['cardWidth'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cardContents != null) {
      _json['cardContents'] =
          cardContents.map((value) => value.toJson()).toList();
    }
    if (cardWidth != null) {
      _json['cardWidth'] = cardWidth;
    }
    return _json;
  }
}

/// Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to
/// respond to users with more vivid content, e.g. with media and suggestions.
/// You can group multiple rich cards into one using RbmCarouselCard but
/// carousel cards will give you less control over the card layout.
class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard {
  /// Required. Card content.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent cardContent;

  /// Required. Orientation of the card.
  /// Possible string values are:
  /// - "CARD_ORIENTATION_UNSPECIFIED" : Not specified.
  /// - "HORIZONTAL" : Horizontal layout.
  /// - "VERTICAL" : Vertical layout.
  core.String cardOrientation;

  /// Required if orientation is horizontal. Image preview alignment for
  /// standalone cards with horizontal layout.
  /// Possible string values are:
  /// - "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED" : Not specified.
  /// - "LEFT" : Thumbnail preview is left-aligned.
  /// - "RIGHT" : Thumbnail preview is right-aligned.
  core.String thumbnailImageAlignment;

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
      core.Map _json) {
    if (_json.containsKey('cardContent')) {
      cardContent =
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
              _json['cardContent']);
    }
    if (_json.containsKey('cardOrientation')) {
      cardOrientation = _json['cardOrientation'];
    }
    if (_json.containsKey('thumbnailImageAlignment')) {
      thumbnailImageAlignment = _json['thumbnailImageAlignment'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cardContent != null) {
      _json['cardContent'] = cardContent.toJson();
    }
    if (cardOrientation != null) {
      _json['cardOrientation'] = cardOrientation;
    }
    if (thumbnailImageAlignment != null) {
      _json['thumbnailImageAlignment'] = thumbnailImageAlignment;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggested client-side action that the user can
/// choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction {
  /// Suggested client side action: Dial a phone number
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
      dial;

  /// Suggested client side action: Open a URI on device
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
      openUrl;

  /// Opaque payload that the Dialogflow receives in a user event when the user
  /// taps the suggested action. This data will be also forwarded to webhook to
  /// allow performing custom business logic.
  core.String postbackData;

  /// Suggested client side action: Share user location
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
      shareLocation;

  /// Text to display alongside the action.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
      core.Map _json) {
    if (_json.containsKey('dial')) {
      dial =
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
              .fromJson(_json['dial']);
    }
    if (_json.containsKey('openUrl')) {
      openUrl =
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
              .fromJson(_json['openUrl']);
    }
    if (_json.containsKey('postbackData')) {
      postbackData = _json['postbackData'];
    }
    if (_json.containsKey('shareLocation')) {
      shareLocation =
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
              .fromJson(_json['shareLocation']);
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dial != null) {
      _json['dial'] = dial.toJson();
    }
    if (openUrl != null) {
      _json['openUrl'] = openUrl.toJson();
    }
    if (postbackData != null) {
      _json['postbackData'] = postbackData;
    }
    if (shareLocation != null) {
      _json['shareLocation'] = shareLocation.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Opens the user's default dialer app with the specified phone number but does
/// not dial automatically.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial {
  /// Required. The phone number to fill in the default dialer app. This field
  /// should be in [E.164](https://en.wikipedia.org/wiki/E.164) format. An
  /// example of a correctly formatted phone number: +15556767888.
  core.String phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
      core.Map _json) {
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (phoneNumber != null) {
      _json['phoneNumber'] = phoneNumber;
    }
    return _json;
  }
}

/// Opens the user's default web browser app to the specified uri If the user
/// has an app installed that is registered as the default handler for the URL,
/// then this app will be opened instead, and its icon will be used in the
/// suggested action UI.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri {
  /// Required. The uri to open on the user device
  core.String uri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
      core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// Opens the device's location chooser so the user can pick a location to send
/// back to the agent.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation {
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggested reply that the user can click
/// instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event when the user
  /// taps the suggested reply. This data will be also forwarded to webhook to
  /// allow performing custom business logic.
  core.String postbackData;

  /// Suggested reply text.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
      core.Map _json) {
    if (_json.containsKey('postbackData')) {
      postbackData = _json['postbackData'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (postbackData != null) {
      _json['postbackData'] = postbackData;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily
/// select/click a predefined response or perform an action (like opening a web
/// uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion {
  /// Predefined client side actions that user can choose
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction action;

  /// Predefined replies for user to select instead of typing
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply reply;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey('action')) {
      action =
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
              _json['action']);
    }
    if (_json.containsKey('reply')) {
      reply =
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
              _json['reply']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action.toJson();
    }
    if (reply != null) {
      _json['reply'] = reply.toJson();
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) text response with suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageRbmText {
  /// Optional. One or more suggestions to show to the user.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>
      rbmSuggestion;

  /// Required. Text sent and displayed to the user.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmText();

  GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(core.Map _json) {
    if (_json.containsKey('rbmSuggestion')) {
      rbmSuggestion = (_json['rbmSuggestion'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (rbmSuggestion != null) {
      _json['rbmSuggestion'] =
          rbmSuggestion.map((value) => value.toJson()).toList();
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo {
  /// Required. A unique key that will be sent back to the agent if this
  /// response is given.
  core.String key;

  /// Optional. A list of synonyms that can also be used to trigger this item in
  /// dialog.
  core.List<core.String> synonyms;

  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();

  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'];
    }
    if (_json.containsKey('synonyms')) {
      synonyms = (_json['synonyms'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (synonyms != null) {
      _json['synonyms'] = synonyms;
    }
    return _json;
  }
}

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse {
  /// Optional. The text to display.
  core.String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response
  /// to the user in the SSML format. Mutually exclusive with text_to_speech.
  core.String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the
  /// speech output. Mutually exclusive with ssml.
  core.String textToSpeech;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('displayText')) {
      displayText = _json['displayText'];
    }
    if (_json.containsKey('ssml')) {
      ssml = _json['ssml'];
    }
    if (_json.containsKey('textToSpeech')) {
      textToSpeech = _json['textToSpeech'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayText != null) {
      _json['displayText'] = displayText;
    }
    if (ssml != null) {
      _json['ssml'] = ssml;
    }
    if (textToSpeech != null) {
      _json['textToSpeech'] = textToSpeech;
    }
    return _json;
  }
}

/// The collection of simple response candidates. This message in
/// `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses {
  /// Required. The list of simple responses.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>
      simpleResponses;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
      core.Map _json) {
    if (_json.containsKey('simpleResponses')) {
      simpleResponses = (_json['simpleResponses'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
                  .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (simpleResponses != null) {
      _json['simpleResponses'] =
          simpleResponses.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The suggestion chip message that the user can tap to quickly post a reply to
/// the conversation.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestion {
  /// Required. The text shown the in the suggestion chip.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestions {
  /// Required. The list of suggested replies.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageSuggestion> suggestions;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestions();

  GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
      core.Map _json) {
    if (_json.containsKey('suggestions')) {
      suggestions = (_json['suggestions'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (suggestions != null) {
      _json['suggestions'] =
          suggestions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> buttons;

  /// Optional. Display properties for the columns in this table.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
      columnProperties;

  /// Optional. Image which should be displayed on the card.
  GoogleCloudDialogflowV2beta1IntentMessageImage image;

  /// Optional. Rows in this table of data.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow> rows;

  /// Optional. Subtitle to the title.
  core.String subtitle;

  /// Required. Title of the card.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageTableCard();

  GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(core.Map _json) {
    if (_json.containsKey('buttons')) {
      buttons = (_json['buttons'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('columnProperties')) {
      columnProperties = (_json['columnProperties'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>(
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json['image']);
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('subtitle')) {
      subtitle = _json['subtitle'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (buttons != null) {
      _json['buttons'] = buttons.map((value) => value.toJson()).toList();
    }
    if (columnProperties != null) {
      _json['columnProperties'] =
          columnProperties.map((value) => value.toJson()).toList();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (rows != null) {
      _json['rows'] = rows.map((value) => value.toJson()).toList();
    }
    if (subtitle != null) {
      _json['subtitle'] = subtitle;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell {
  /// Required. Text in this cell.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageTableCardCell();

  GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromJson(
      core.Map _json) {
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Row of TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow {
  /// Optional. List of cells that make up this row.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageTableCardCell> cells;

  /// Optional. Whether to add a visual divider after this row.
  core.bool dividerAfter;

  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow();

  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(
      core.Map _json) {
    if (_json.containsKey('cells')) {
      cells = (_json['cells'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>(
              (value) => GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
                  .fromJson(value))
          .toList();
    }
    if (_json.containsKey('dividerAfter')) {
      dividerAfter = _json['dividerAfter'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cells != null) {
      _json['cells'] = cells.map((value) => value.toJson()).toList();
    }
    if (dividerAfter != null) {
      _json['dividerAfter'] = dividerAfter;
    }
    return _json;
  }
}

/// Plays audio from a file in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio {
  /// Required. URI to a Google Cloud Storage object containing the audio to
  /// play, e.g., "gs://bucket/object". The object must contain a single channel
  /// (mono) of linear PCM audio (2 bytes / sample) at 8kHz. This object must be
  /// readable by the `service-@gcp-sa-dialogflow.iam.gserviceaccount.com`
  /// service account where is the number of the Telephony Gateway project
  /// (usually the same as the Dialogflow agent project). If the Google Cloud
  /// Storage bucket is in the Telephony Gateway project, this permission is
  /// added by default when enabling the Dialogflow V2 API. For audio from other
  /// sources, consider using the `TelephonySynthesizeSpeech` message with SSML.
  core.String audioUri;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
      core.Map _json) {
    if (_json.containsKey('audioUri')) {
      audioUri = _json['audioUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audioUri != null) {
      _json['audioUri'] = audioUri;
    }
    return _json;
  }
}

/// Synthesizes speech and plays back the synthesized audio to the caller in
/// Telephony Gateway. Telephony Gateway takes the synthesizer settings from
/// `DetectIntentResponse.output_audio_config` which can either be set at
/// request-level or can come from the agent-level synthesizer config.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech {
  /// The SSML to be synthesized. For more information, see
  /// [SSML](https://developers.google.com/actions/reference/ssml).
  core.String ssml;

  /// The raw text to be synthesized.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
      core.Map _json) {
    if (_json.containsKey('ssml')) {
      ssml = _json['ssml'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ssml != null) {
      _json['ssml'] = ssml;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Transfers the call in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall {
  /// Required. The phone number to transfer the call to in [E.164
  /// format](https://en.wikipedia.org/wiki/E.164). We currently only allow
  /// transferring to US numbers (+1xxxyyyzzzz).
  core.String phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
      core.Map _json) {
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (phoneNumber != null) {
      _json['phoneNumber'] = phoneNumber;
    }
    return _json;
  }
}

/// The text response message.
class GoogleCloudDialogflowV2beta1IntentMessageText {
  /// Optional. The collection of the agent's responses.
  core.List<core.String> text;

  GoogleCloudDialogflowV2beta1IntentMessageText();

  GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(core.Map _json) {
    if (_json.containsKey('text')) {
      text = (_json['text'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Represents intent parameters.
class GoogleCloudDialogflowV2beta1IntentParameter {
  /// Optional. The default value to use when the `value` yields an empty
  /// result. Default values can be extracted from contexts by using the
  /// following syntax: `#context_name.parameter_name`.
  core.String defaultValue;

  /// Required. The name of the parameter.
  core.String displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that describes
  /// values of the parameter. If the parameter is required, this must be
  /// provided.
  core.String entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  core.bool isList;

  /// Optional. Indicates whether the parameter is required. That is, whether
  /// the intent cannot be completed without collecting the parameter value.
  core.bool mandatory;

  /// The unique identifier of this parameter.
  core.String name;

  /// Optional. The collection of prompts that the agent can present to the user
  /// in order to collect a value for the parameter.
  core.List<core.String> prompts;

  /// Optional. The definition of the parameter value. It can be: - a constant
  /// string, - a parameter value defined as `$parameter_name`, - an original
  /// parameter value defined as `$parameter_name.original`, - a parameter value
  /// from some context defined as `#context_name.parameter_name`.
  core.String value;

  GoogleCloudDialogflowV2beta1IntentParameter();

  GoogleCloudDialogflowV2beta1IntentParameter.fromJson(core.Map _json) {
    if (_json.containsKey('defaultValue')) {
      defaultValue = _json['defaultValue'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('entityTypeDisplayName')) {
      entityTypeDisplayName = _json['entityTypeDisplayName'];
    }
    if (_json.containsKey('isList')) {
      isList = _json['isList'];
    }
    if (_json.containsKey('mandatory')) {
      mandatory = _json['mandatory'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('prompts')) {
      prompts = (_json['prompts'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (defaultValue != null) {
      _json['defaultValue'] = defaultValue;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (entityTypeDisplayName != null) {
      _json['entityTypeDisplayName'] = entityTypeDisplayName;
    }
    if (isList != null) {
      _json['isList'] = isList;
    }
    if (mandatory != null) {
      _json['mandatory'] = mandatory;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (prompts != null) {
      _json['prompts'] = prompts;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrase {
  /// Output only. The unique identifier of this training phrase.
  core.String name;

  /// Required. The ordered list of training phrase parts. The parts are
  /// concatenated in order to form the training phrase. Note: The API does not
  /// automatically annotate training phrases like the Dialogflow Console does.
  /// Note: Do not forget to include whitespace at part boundaries, so the
  /// training phrase is well formatted when the parts are concatenated. If the
  /// training phrase does not need to be annotated with parameters, you just
  /// need a single part with only the Part.text field set. If you want to
  /// annotate the training phrase, you must create multiple parts, where the
  /// fields of each part are populated in one of two ways: - `Part.text` is set
  /// to a part of the phrase that has no parameters. - `Part.text` is set to a
  /// part of the phrase that you want to annotate, and the `entity_type`,
  /// `alias`, and `user_defined` fields are all set.
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example was added to the intent.
  /// Each time a developer adds an existing sample by editing an intent or
  /// training, this counter is increased.
  core.int timesAddedCount;

  /// Required. The type of the training phrase.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "EXAMPLE" : Examples do not contain @-prefixed entity type names, but
  /// example parts can be annotated with entity types.
  /// - "TEMPLATE" : Templates are not annotated with entity types, but they can
  /// contain @-prefixed entity type names as substrings. Template mode has been
  /// deprecated. Example mode is the only supported way to create new training
  /// phrases. If you have existing training phrases that you've created in
  /// template mode, those will continue to work.
  core.String type;

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase();

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parts')) {
      parts = (_json['parts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>((value) =>
              GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey('timesAddedCount')) {
      timesAddedCount = _json['timesAddedCount'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (parts != null) {
      _json['parts'] = parts.map((value) => value.toJson()).toList();
    }
    if (timesAddedCount != null) {
      _json['timesAddedCount'] = timesAddedCount;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the annotated
  /// part of the example. This field is required for annotated parts of the
  /// training phrase.
  core.String alias;

  /// Optional. The entity type name prefixed with `@`. This field is required
  /// for annotated parts of the training phrase.
  core.String entityType;

  /// Required. The text for this part.
  core.String text;

  /// Optional. Indicates whether the text was manually annotated. This field is
  /// set to true when the Dialogflow Console is used to manually annotate the
  /// part. When creating an annotated part with the API, you must set this to
  /// true.
  core.bool userDefined;

  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();

  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
      core.Map _json) {
    if (_json.containsKey('alias')) {
      alias = _json['alias'];
    }
    if (_json.containsKey('entityType')) {
      entityType = _json['entityType'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
    if (_json.containsKey('userDefined')) {
      userDefined = _json['userDefined'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alias != null) {
      _json['alias'] = alias;
    }
    if (entityType != null) {
      _json['entityType'] = entityType;
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (userDefined != null) {
      _json['userDefined'] = userDefined;
    }
    return _json;
  }
}

/// Represents the result of querying a Knowledge base.
class GoogleCloudDialogflowV2beta1KnowledgeAnswers {
  /// A list of answers from Knowledge Connector.
  core.List<GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer> answers;

  GoogleCloudDialogflowV2beta1KnowledgeAnswers();

  GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(core.Map _json) {
    if (_json.containsKey('answers')) {
      answers = (_json['answers'] as core.List)
          .map<GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>((value) =>
              GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (answers != null) {
      _json['answers'] = answers.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An answer from Knowledge Connector.
class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer {
  /// The piece of text from the `source` knowledge base document that answers
  /// this conversational query.
  core.String answer;

  /// The corresponding FAQ question if the answer was extracted from a FAQ
  /// Document, empty otherwise.
  core.String faqQuestion;

  /// The system's confidence score that this Knowledge answer is a good match
  /// for this conversational query. The range is from 0.0 (completely
  /// uncertain) to 1.0 (completely certain). Note: The confidence score is
  /// likely to vary somewhat (possibly even for identical requests), as the
  /// underlying model is under constant improvement. It may be deprecated in
  /// the future. We recommend using `match_confidence_level` which should be
  /// generally more stable.
  core.double matchConfidence;

  /// The system's confidence level that this knowledge answer is a good match
  /// for this conversational query. NOTE: The confidence level for a given ``
  /// pair may change without notice, as it depends on models that are
  /// constantly being improved. However, it will change less frequently than
  /// the confidence score below, and should be preferred for referencing the
  /// quality of an answer.
  /// Possible string values are:
  /// - "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" : Not specified.
  /// - "LOW" : Indicates that the confidence is low.
  /// - "MEDIUM" : Indicates our confidence is medium.
  /// - "HIGH" : Indicates our confidence is high.
  core.String matchConfidenceLevel;

  /// Indicates which Knowledge Document this answer was extracted from. Format:
  /// `projects//knowledgeBases//documents/`.
  core.String source;

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(core.Map _json) {
    if (_json.containsKey('answer')) {
      answer = _json['answer'];
    }
    if (_json.containsKey('faqQuestion')) {
      faqQuestion = _json['faqQuestion'];
    }
    if (_json.containsKey('matchConfidence')) {
      matchConfidence = _json['matchConfidence'].toDouble();
    }
    if (_json.containsKey('matchConfidenceLevel')) {
      matchConfidenceLevel = _json['matchConfidenceLevel'];
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (answer != null) {
      _json['answer'] = answer;
    }
    if (faqQuestion != null) {
      _json['faqQuestion'] = faqQuestion;
    }
    if (matchConfidence != null) {
      _json['matchConfidence'] = matchConfidence;
    }
    if (matchConfidenceLevel != null) {
      _json['matchConfidenceLevel'] = matchConfidenceLevel;
    }
    if (source != null) {
      _json['source'] = source;
    }
    return _json;
  }
}

/// A knowledge base represents a collection of knowledge documents that you
/// provide to Dialogflow. Your knowledge documents contain information that may
/// be useful during conversations with end-users. Some Dialogflow features use
/// knowledge bases when looking for a response to an end-user input. For more
/// information, see the [knowledge base
/// guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases). Note:
/// The `projects.agent.knowledgeBases` resource is deprecated; only use
/// `projects.knowledgeBases`.
class GoogleCloudDialogflowV2beta1KnowledgeBase {
  /// Required. The display name of the knowledge base. The name must be 1024
  /// bytes or less; otherwise, the creation request fails.
  core.String displayName;

  /// Language which represents the KnowledgeBase. When the KnowledgeBase is
  /// created/updated, this is populated for all non en-us languages. If not
  /// populated, the default language en-us applies.
  core.String languageCode;

  /// The knowledge base resource name. The name must be empty when creating a
  /// knowledge base. Format: `projects//knowledgeBases/`.
  core.String name;

  GoogleCloudDialogflowV2beta1KnowledgeBase();

  GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Metadata in google::longrunning::Operation for Knowledge operations.
class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata {
  /// Required. Output only. The current state of this operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  core.String state;

  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();

  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// The response for ConversationDatasets.LabelConversation.
class GoogleCloudDialogflowV2beta1LabelConversationResponse {
  /// New annotated conversation dataset created by the labeling task.
  GoogleCloudDialogflowV2beta1AnnotatedConversationDataset
      annotatedConversationDataset;

  GoogleCloudDialogflowV2beta1LabelConversationResponse();

  GoogleCloudDialogflowV2beta1LabelConversationResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('annotatedConversationDataset')) {
      annotatedConversationDataset =
          GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.fromJson(
              _json['annotatedConversationDataset']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (annotatedConversationDataset != null) {
      _json['annotatedConversationDataset'] =
          annotatedConversationDataset.toJson();
    }
    return _json;
  }
}

/// The response message for Contexts.ListContexts.
class GoogleCloudDialogflowV2beta1ListContextsResponse {
  /// The list of contexts. There will be a maximum number of items returned
  /// based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1Context> contexts;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListContextsResponse();

  GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('contexts')) {
      contexts = (_json['contexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>(
              (value) => GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (contexts != null) {
      _json['contexts'] = contexts.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for Documents.ListDocuments.
class GoogleCloudDialogflowV2beta1ListDocumentsResponse {
  /// The list of documents.
  core.List<GoogleCloudDialogflowV2beta1Document> documents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListDocumentsResponse();

  GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('documents')) {
      documents = (_json['documents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Document>(
              (value) => GoogleCloudDialogflowV2beta1Document.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (documents != null) {
      _json['documents'] = documents.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowV2beta1ListEntityTypesResponse {
  /// The list of agent entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1EntityType> entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListEntityTypesResponse();

  GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('entityTypes')) {
      entityTypes = (_json['entityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityType>(
              (value) => GoogleCloudDialogflowV2beta1EntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entityTypes != null) {
      _json['entityTypes'] =
          entityTypes.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Environments.ListEnvironments.
class GoogleCloudDialogflowV2beta1ListEnvironmentsResponse {
  /// The list of agent environments. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1Environment> environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListEnvironmentsResponse();

  GoogleCloudDialogflowV2beta1ListEnvironmentsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('environments')) {
      environments = (_json['environments'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Environment>((value) =>
              GoogleCloudDialogflowV2beta1Environment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (environments != null) {
      _json['environments'] =
          environments.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Intents.ListIntents.
class GoogleCloudDialogflowV2beta1ListIntentsResponse {
  /// The list of agent intents. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1Intent> intents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListIntentsResponse();

  GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('intents')) {
      intents = (_json['intents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Intent>(
              (value) => GoogleCloudDialogflowV2beta1Intent.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (intents != null) {
      _json['intents'] = intents.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for KnowledgeBases.ListKnowledgeBases.
class GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse {
  /// The list of knowledge bases.
  core.List<GoogleCloudDialogflowV2beta1KnowledgeBase> knowledgeBases;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse();

  GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('knowledgeBases')) {
      knowledgeBases = (_json['knowledgeBases'] as core.List)
          .map<GoogleCloudDialogflowV2beta1KnowledgeBase>((value) =>
              GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (knowledgeBases != null) {
      _json['knowledgeBases'] =
          knowledgeBases.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// The list of session entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1SessionEntityType> sessionEntityTypes;

  GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse();

  GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('sessionEntityTypes')) {
      sessionEntityTypes = (_json['sessionEntityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SessionEntityType>((value) =>
              GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (sessionEntityTypes != null) {
      _json['sessionEntityTypes'] =
          sessionEntityTypes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents the contents of the original request that was passed to the
/// `[Streaming]DetectIntent` call.
class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest {
  /// Optional. This field is set to the value of the `QueryParameters.payload`
  /// field passed in the request. Some integrations that query a Dialogflow
  /// agent may provide additional information in the payload. In particular,
  /// for the Dialogflow Phone Gateway integration, this field has the form: {
  /// "telephony": { "caller_id": "+18558363987" } } Note: The caller ID field
  /// (`caller_id`) will be redacted for Trial Edition agents and populated with
  /// the caller ID in [E.164 format](https://en.wikipedia.org/wiki/E.164) for
  /// Essentials Edition agents.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  /// by Dialogflow-owned servers.
  core.String source;

  /// Optional. The version of the protocol used for this request. This field is
  /// AoG-specific.
  core.String version;

  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();

  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Instructs the speech synthesizer how to generate the output audio content.
/// If this audio config is supplied in a request, it overrides all existing
/// text-to-speech settings applied to the agent.
class GoogleCloudDialogflowV2beta1OutputAudioConfig {
  /// Required. Audio encoding of the synthesized audio content.
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed
  /// little-endian samples (Linear PCM). Audio content returned as LINEAR16
  /// also contains a WAV header.
  /// - "OUTPUT_AUDIO_ENCODING_MP3" : MP3 audio at 32kbps.
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio wrapped in an ogg
  /// container. The result will be a file which can be played natively on
  /// Android, and in browsers (at least Chrome and Firefox). The quality of the
  /// encoding is considerably higher than MP3 while using approximately the
  /// same bitrate.
  core.String audioEncoding;

  /// The synthesis sample rate (in hertz) for this audio. If not provided, then
  /// the synthesizer will use the default sample rate based on the audio
  /// encoding. If this is different from the voice's natural sample rate, then
  /// the synthesizer will honor this request by converting to the desired
  /// sample rate (which might result in worse audio quality).
  core.int sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig synthesizeSpeechConfig;

  GoogleCloudDialogflowV2beta1OutputAudioConfig();

  GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey('audioEncoding')) {
      audioEncoding = _json['audioEncoding'];
    }
    if (_json.containsKey('sampleRateHertz')) {
      sampleRateHertz = _json['sampleRateHertz'];
    }
    if (_json.containsKey('synthesizeSpeechConfig')) {
      synthesizeSpeechConfig =
          GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(
              _json['synthesizeSpeechConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audioEncoding != null) {
      _json['audioEncoding'] = audioEncoding;
    }
    if (sampleRateHertz != null) {
      _json['sampleRateHertz'] = sampleRateHertz;
    }
    if (synthesizeSpeechConfig != null) {
      _json['synthesizeSpeechConfig'] = synthesizeSpeechConfig.toJson();
    }
    return _json;
  }
}

/// Represents the query input. It can contain either: 1. An audio config which
/// instructs the speech recognizer how to process the speech audio. 2. A
/// conversational query in the form of text. 3. An event that specifies which
/// intent to trigger.
class GoogleCloudDialogflowV2beta1QueryInput {
  /// Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowV2beta1InputAudioConfig audioConfig;

  /// The event to be processed.
  GoogleCloudDialogflowV2beta1EventInput event;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2beta1TextInput text;

  GoogleCloudDialogflowV2beta1QueryInput();

  GoogleCloudDialogflowV2beta1QueryInput.fromJson(core.Map _json) {
    if (_json.containsKey('audioConfig')) {
      audioConfig = GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(
          _json['audioConfig']);
    }
    if (_json.containsKey('event')) {
      event = GoogleCloudDialogflowV2beta1EventInput.fromJson(_json['event']);
    }
    if (_json.containsKey('text')) {
      text = GoogleCloudDialogflowV2beta1TextInput.fromJson(_json['text']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (audioConfig != null) {
      _json['audioConfig'] = audioConfig.toJson();
    }
    if (event != null) {
      _json['event'] = event.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}

/// Represents the parameters of the conversational query.
class GoogleCloudDialogflowV2beta1QueryParameters {
  /// The collection of contexts to be activated before this query is executed.
  core.List<GoogleCloudDialogflowV2beta1Context> contexts;

  /// The geo location of this conversational query.
  GoogleTypeLatLng geoLocation;

  /// KnowledgeBases to get alternative results from. If not set, the
  /// KnowledgeBases enabled in the agent (through UI) will be used. Format:
  /// `projects//knowledgeBases/`.
  core.List<core.String> knowledgeBaseNames;

  /// This field can be used to pass custom data to your webhook. Arbitrary JSON
  /// objects are supported. If supplied, the value is used to populate the
  /// `WebhookRequest.original_detect_intent_request.payload` field sent to your
  /// webhook.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Specifies whether to delete all contexts in the current session before the
  /// new ones are activated.
  core.bool resetContexts;

  /// Configures the type of sentiment analysis to perform. If not provided,
  /// sentiment analysis is not performed. Note: Sentiment Analysis is only
  /// currently available for Essentials Edition agents.
  GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig
      sentimentAnalysisRequestConfig;

  /// Additional session entity types to replace or extend developer entity
  /// types with. The entity synonyms apply to all languages and persist for the
  /// session of this query.
  core.List<GoogleCloudDialogflowV2beta1SessionEntityType> sessionEntityTypes;

  /// For mega agent query, directly specify which sub agents to query. If any
  /// specified sub agent is not linked to the mega agent, an error will be
  /// returned. If empty, Dialogflow will decide which sub agents to query. If
  /// specified for a non-mega-agent query, will be silently ignored.
  core.List<GoogleCloudDialogflowV2beta1SubAgent> subAgents;

  /// The time zone of this conversational query from the [time zone
  /// database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris. If not provided, the time zone specified in agent settings
  /// is used.
  core.String timeZone;

  /// This field can be used to pass HTTP headers for a webhook call. These
  /// headers will be sent to webhook alone with the headers that have been
  /// configured through Dialogflow web console. The headers defined within this
  /// field will overwrite the headers configured through Dialogflow console if
  /// there is a conflict. Header names are case-insensitive. Google's specified
  /// headers are not allowed. Including: "Host", "Content-Length",
  /// "Connection", "From", "User-Agent", "Accept-Encoding",
  /// "If-Modified-Since", "If-None-Match", "X-Forwarded-For", etc.
  core.Map<core.String, core.String> webhookHeaders;

  GoogleCloudDialogflowV2beta1QueryParameters();

  GoogleCloudDialogflowV2beta1QueryParameters.fromJson(core.Map _json) {
    if (_json.containsKey('contexts')) {
      contexts = (_json['contexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>(
              (value) => GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('geoLocation')) {
      geoLocation = GoogleTypeLatLng.fromJson(_json['geoLocation']);
    }
    if (_json.containsKey('knowledgeBaseNames')) {
      knowledgeBaseNames =
          (_json['knowledgeBaseNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('resetContexts')) {
      resetContexts = _json['resetContexts'];
    }
    if (_json.containsKey('sentimentAnalysisRequestConfig')) {
      sentimentAnalysisRequestConfig =
          GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig.fromJson(
              _json['sentimentAnalysisRequestConfig']);
    }
    if (_json.containsKey('sessionEntityTypes')) {
      sessionEntityTypes = (_json['sessionEntityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SessionEntityType>((value) =>
              GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey('subAgents')) {
      subAgents = (_json['subAgents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SubAgent>(
              (value) => GoogleCloudDialogflowV2beta1SubAgent.fromJson(value))
          .toList();
    }
    if (_json.containsKey('timeZone')) {
      timeZone = _json['timeZone'];
    }
    if (_json.containsKey('webhookHeaders')) {
      webhookHeaders = (_json['webhookHeaders'] as core.Map)
          .cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (contexts != null) {
      _json['contexts'] = contexts.map((value) => value.toJson()).toList();
    }
    if (geoLocation != null) {
      _json['geoLocation'] = geoLocation.toJson();
    }
    if (knowledgeBaseNames != null) {
      _json['knowledgeBaseNames'] = knowledgeBaseNames;
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (resetContexts != null) {
      _json['resetContexts'] = resetContexts;
    }
    if (sentimentAnalysisRequestConfig != null) {
      _json['sentimentAnalysisRequestConfig'] =
          sentimentAnalysisRequestConfig.toJson();
    }
    if (sessionEntityTypes != null) {
      _json['sessionEntityTypes'] =
          sessionEntityTypes.map((value) => value.toJson()).toList();
    }
    if (subAgents != null) {
      _json['subAgents'] = subAgents.map((value) => value.toJson()).toList();
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone;
    }
    if (webhookHeaders != null) {
      _json['webhookHeaders'] = webhookHeaders;
    }
    return _json;
  }
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2beta1QueryResult {
  /// The action name from the matched intent.
  core.String action;

  /// This field is set to: - `false` if the matched intent has required
  /// parameters and not all of the required parameter values have been
  /// collected. - `true` if all required parameter values have been collected,
  /// or if the matched intent doesn't contain any required parameters.
  core.bool allRequiredParamsPresent;

  /// Free-form diagnostic information for the associated detect intent request.
  /// The fields of this data can change without notice, so you should not write
  /// code that depends on its structure. The data may contain: - webhook call
  /// latency - webhook errors
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen. Note: This
  /// is a legacy field, `fulfillment_messages` should be preferred.
  core.String fulfillmentText;

  /// The intent that matched the conversational query. Some, not all fields are
  /// filled in this message, including but not limited to: `name`,
  /// `display_name`, `end_interaction` and `is_fallback`.
  GoogleCloudDialogflowV2beta1Intent intent;

  /// The intent detection confidence. Values range from 0.0 (completely
  /// uncertain) to 1.0 (completely certain). This value is for informational
  /// purpose only and is only used to help match the best intent within the
  /// classification threshold. This value may change for the same end-user
  /// expression at any time due to a model retraining or change in
  /// implementation. If there are `multiple knowledge_answers` messages, this
  /// value is set to the greatest `knowledgeAnswers.match_confidence` value in
  /// the list.
  core.double intentDetectionConfidence;

  /// The result from Knowledge Connector (if any), ordered by decreasing
  /// `KnowledgeAnswers.match_confidence`.
  GoogleCloudDialogflowV2beta1KnowledgeAnswers knowledgeAnswers;

  /// The language that was triggered during intent detection. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes.
  core.String languageCode;

  /// The collection of output contexts. If applicable,
  /// `output_contexts.parameters` contains entries with name `.original`
  /// containing the original parameter values before the query.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// The collection of extracted parameters. Depending on your protocol or
  /// client library language, this is a map, associative array, symbol table,
  /// dictionary, or JSON object composed of a collection of (MapKey, MapValue)
  /// pairs: - MapKey type: string - MapKey value: parameter name - MapValue
  /// type: - If parameter's entity type is a composite entity: map - Else:
  /// string or number, depending on parameter value type - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// The original conversational query text: - If natural language text was
  /// provided as input, `query_text` contains a copy of the input. - If natural
  /// language speech audio was provided as input, `query_text` contains the
  /// speech recognition result. If speech recognizer produced multiple
  /// alternatives, a particular one is picked. - If automatic spell correction
  /// is enabled, `query_text` will contain the corrected user input.
  core.String queryText;

  /// The sentiment analysis result, which depends on the
  /// `sentiment_analysis_request_config` specified in the request.
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult sentimentAnalysisResult;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. The default of 0.0 is a sentinel value indicating that confidence
  /// was not set. This field is not guaranteed to be accurate or set. In
  /// particular this field isn't set for StreamingDetectIntent since the
  /// streaming endpoint has separate confidence estimates per portion of the
  /// audio in StreamingRecognitionResult.
  core.double speechRecognitionConfidence;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `payload` field returned in the webhook response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> webhookPayload;

  /// If the query was fulfilled by a webhook call, this field is set to the
  /// value of the `source` field returned in the webhook response.
  core.String webhookSource;

  GoogleCloudDialogflowV2beta1QueryResult();

  GoogleCloudDialogflowV2beta1QueryResult.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'];
    }
    if (_json.containsKey('allRequiredParamsPresent')) {
      allRequiredParamsPresent = _json['allRequiredParamsPresent'];
    }
    if (_json.containsKey('diagnosticInfo')) {
      diagnosticInfo = (_json['diagnosticInfo'] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey('fulfillmentMessages')) {
      fulfillmentMessages = (_json['fulfillmentMessages'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('fulfillmentText')) {
      fulfillmentText = _json['fulfillmentText'];
    }
    if (_json.containsKey('intent')) {
      intent = GoogleCloudDialogflowV2beta1Intent.fromJson(_json['intent']);
    }
    if (_json.containsKey('intentDetectionConfidence')) {
      intentDetectionConfidence = _json['intentDetectionConfidence'].toDouble();
    }
    if (_json.containsKey('knowledgeAnswers')) {
      knowledgeAnswers = GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(
          _json['knowledgeAnswers']);
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>(
              (value) => GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('queryText')) {
      queryText = _json['queryText'];
    }
    if (_json.containsKey('sentimentAnalysisResult')) {
      sentimentAnalysisResult =
          GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
              _json['sentimentAnalysisResult']);
    }
    if (_json.containsKey('speechRecognitionConfidence')) {
      speechRecognitionConfidence =
          _json['speechRecognitionConfidence'].toDouble();
    }
    if (_json.containsKey('webhookPayload')) {
      webhookPayload = (_json['webhookPayload'] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey('webhookSource')) {
      webhookSource = _json['webhookSource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (allRequiredParamsPresent != null) {
      _json['allRequiredParamsPresent'] = allRequiredParamsPresent;
    }
    if (diagnosticInfo != null) {
      _json['diagnosticInfo'] = diagnosticInfo;
    }
    if (fulfillmentMessages != null) {
      _json['fulfillmentMessages'] =
          fulfillmentMessages.map((value) => value.toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json['fulfillmentText'] = fulfillmentText;
    }
    if (intent != null) {
      _json['intent'] = intent.toJson();
    }
    if (intentDetectionConfidence != null) {
      _json['intentDetectionConfidence'] = intentDetectionConfidence;
    }
    if (knowledgeAnswers != null) {
      _json['knowledgeAnswers'] = knowledgeAnswers.toJson();
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    if (queryText != null) {
      _json['queryText'] = queryText;
    }
    if (sentimentAnalysisResult != null) {
      _json['sentimentAnalysisResult'] = sentimentAnalysisResult.toJson();
    }
    if (speechRecognitionConfidence != null) {
      _json['speechRecognitionConfidence'] = speechRecognitionConfidence;
    }
    if (webhookPayload != null) {
      _json['webhookPayload'] = webhookPayload;
    }
    if (webhookSource != null) {
      _json['webhookSource'] = webhookSource;
    }
    return _json;
  }
}

/// Request message for Documents.ReloadDocument.
class GoogleCloudDialogflowV2beta1ReloadDocumentRequest {
  /// The path for a Cloud Storage source file for reloading document content.
  /// If not provided, the Document's existing source will be reloaded.
  GoogleCloudDialogflowV2beta1GcsSource gcsSource;

  GoogleCloudDialogflowV2beta1ReloadDocumentRequest();

  GoogleCloudDialogflowV2beta1ReloadDocumentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('gcsSource')) {
      gcsSource =
          GoogleCloudDialogflowV2beta1GcsSource.fromJson(_json['gcsSource']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (gcsSource != null) {
      _json['gcsSource'] = gcsSource.toJson();
    }
    return _json;
  }
}

/// The request message for Agents.RestoreAgent.
class GoogleCloudDialogflowV2beta1RestoreAgentRequest {
  /// Zip compressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a Google Cloud Storage file containing the agent to restore.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  GoogleCloudDialogflowV2beta1RestoreAgentRequest();

  GoogleCloudDialogflowV2beta1RestoreAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// The response message for Agents.SearchAgents.
class GoogleCloudDialogflowV2beta1SearchAgentsResponse {
  /// The list of agents. There will be a maximum number of items returned based
  /// on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2beta1Agent> agents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2beta1SearchAgentsResponse();

  GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agents')) {
      agents = (_json['agents'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Agent>(
              (value) => GoogleCloudDialogflowV2beta1Agent.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agents != null) {
      _json['agents'] = agents.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
class GoogleCloudDialogflowV2beta1Sentiment {
  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score (positive or
  /// negative).
  core.double magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double score;

  GoogleCloudDialogflowV2beta1Sentiment();

  GoogleCloudDialogflowV2beta1Sentiment.fromJson(core.Map _json) {
    if (_json.containsKey('magnitude')) {
      magnitude = _json['magnitude'].toDouble();
    }
    if (_json.containsKey('score')) {
      score = _json['score'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (magnitude != null) {
      _json['magnitude'] = magnitude;
    }
    if (score != null) {
      _json['score'] = score;
    }
    return _json;
  }
}

/// Configures the types of sentiment analysis to perform.
class GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig {
  /// Instructs the service to perform sentiment analysis on `query_text`. If
  /// not provided, sentiment analysis is not performed on `query_text`.
  core.bool analyzeQueryTextSentiment;

  GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig();

  GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey('analyzeQueryTextSentiment')) {
      analyzeQueryTextSentiment = _json['analyzeQueryTextSentiment'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (analyzeQueryTextSentiment != null) {
      _json['analyzeQueryTextSentiment'] = analyzeQueryTextSentiment;
    }
    return _json;
  }
}

/// The result of sentiment analysis. Sentiment analysis inspects user input and
/// identifies the prevailing subjective opinion, especially to determine a
/// user's attitude as positive, negative, or neutral. For
/// Participants.DetectIntent, it needs to be configured in
/// DetectIntentRequest.query_params. For Participants.StreamingDetectIntent, it
/// needs to be configured in StreamingDetectIntentRequest.query_params. And for
/// Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it
/// needs to be configured in ConversationProfile.human_agent_assistant_config
class GoogleCloudDialogflowV2beta1SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2beta1Sentiment queryTextSentiment;

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult();

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(core.Map _json) {
    if (_json.containsKey('queryTextSentiment')) {
      queryTextSentiment = GoogleCloudDialogflowV2beta1Sentiment.fromJson(
          _json['queryTextSentiment']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (queryTextSentiment != null) {
      _json['queryTextSentiment'] = queryTextSentiment.toJson();
    }
    return _json;
  }
}

/// A session represents a conversation between a Dialogflow agent and an
/// end-user. You can create special entities, called session entities, during a
/// session. Session entities can extend or replace custom entity types and only
/// exist during the session that they were created for. All session data,
/// including session entities, is stored by Dialogflow for 20 minutes. For more
/// information, see the [session entity
/// guide](https://cloud.google.com/dialogflow/docs/entities-session).
class GoogleCloudDialogflowV2beta1SessionEntityType {
  /// Required. The collection of entities associated with this session entity
  /// type.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities;

  /// Required. Indicates whether the additional data should override or
  /// supplement the custom entity type definition.
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
  core.String entityOverrideMode;

  /// Required. The unique identifier of this session entity type. Supported
  /// formats: - `projects//agent/sessions//entityTypes/` -
  /// `projects//locations//agent/sessions//entityTypes/` -
  /// `projects//agent/environments//users//sessions//entityTypes/` -
  /// `projects//locations//agent/environments/ /users//sessions//entityTypes/`
  /// If `Location ID` is not specified we assume default 'us' location. If
  /// `Environment ID` is not specified, we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user. `` must be the
  /// display name of an existing entity type in the same agent that will be
  /// overridden or supplemented.
  core.String name;

  GoogleCloudDialogflowV2beta1SessionEntityType();

  GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(core.Map _json) {
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityTypeEntity>((value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey('entityOverrideMode')) {
      entityOverrideMode = _json['entityOverrideMode'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (entityOverrideMode != null) {
      _json['entityOverrideMode'] = entityOverrideMode;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Smart Messaging Entry resource.
class GoogleCloudDialogflowV2beta1SmartMessagingEntry {
  /// Output only. Metadata of the message entry
  GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo messageInfo;

  /// The unique identifier of this message entry. Required for
  /// [Documents.GetSmartMessagingEntry], [Documents.CreateSmartMessagingEntry],
  /// [Documents.UpdateSmartMessagingEntry], and
  /// [Documents.DeleteSmartMessagingEntry]. Format:
  /// `projects//knowledgeBases//documents//smartMessagingEntries/`
  core.String name;

  /// Required. The raw text of the message.
  core.String rawText;

  /// Required. Smart Messaging Entry's enabled/disabled state.
  /// Possible string values are:
  /// - "SMART_MESSAGING_ENTRY_STATE_UNSPECIFIED" : State unspecified.
  /// - "ENABLED" : This smart reply message is enabled and used when generating
  /// suggestions.
  /// - "DISABLED" : This smart reply message is disabled and is not used when
  /// generating suggestions.
  core.String state;

  GoogleCloudDialogflowV2beta1SmartMessagingEntry();

  GoogleCloudDialogflowV2beta1SmartMessagingEntry.fromJson(core.Map _json) {
    if (_json.containsKey('messageInfo')) {
      messageInfo =
          GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo.fromJson(
              _json['messageInfo']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('rawText')) {
      rawText = _json['rawText'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (messageInfo != null) {
      _json['messageInfo'] = messageInfo.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (rawText != null) {
      _json['rawText'] = rawText;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Smart messaging entry info.
class GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo {
  /// Output only. Method of how the smart messaging entry was created. When the
  /// smart messaging entry was generated from GenerateDocument, the value is
  /// AUTOMATIC; when the entry was manually added through
  /// CreateSmartMessagingEntry, the value is MANUAL.
  /// Possible string values are:
  /// - "CREATION_METHOD_UNSPECIFIED" : The creation method of the smart
  /// messaging entry is unspecified. The value is unused.
  /// - "AUTOMATIC" : The smart messaging entry was generated automatically from
  /// backend pipeline.
  /// - "MANUAL" : The smart messaging entry was added manually.
  core.String creationMethod;

  /// The number of times an entry's message text has been uttered
  core.int occurrenceCount;

  GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();

  GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo.fromJson(core.Map _json) {
    if (_json.containsKey('creationMethod')) {
      creationMethod = _json['creationMethod'];
    }
    if (_json.containsKey('occurrenceCount')) {
      occurrenceCount = _json['occurrenceCount'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (creationMethod != null) {
      _json['creationMethod'] = creationMethod;
    }
    if (occurrenceCount != null) {
      _json['occurrenceCount'] = occurrenceCount;
    }
    return _json;
  }
}

/// Hints for the speech recognizer to help with recognition in a specific
/// conversation state.
class GoogleCloudDialogflowV2beta1SpeechContext {
  /// Optional. Boost for this context compared to other contexts: * If the
  /// boost is positive, Dialogflow will increase the probability that the
  /// phrases in this context are recognized over similar sounding phrases. * If
  /// the boost is unspecified or non-positive, Dialogflow will not apply any
  /// boost. Dialogflow recommends that you use boosts in the range (0, 20] and
  /// that you find a value that fits your use case with binary search.
  core.double boost;

  /// Optional. A list of strings containing words and phrases that the speech
  /// recognizer should recognize with higher likelihood. This list can be used
  /// to: * improve accuracy for words and phrases you expect the user to say,
  /// e.g. typical commands for your Dialogflow agent * add additional words to
  /// the speech recognizer vocabulary * ... See the [Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/quotas) for usage
  /// limits.
  core.List<core.String> phrases;

  GoogleCloudDialogflowV2beta1SpeechContext();

  GoogleCloudDialogflowV2beta1SpeechContext.fromJson(core.Map _json) {
    if (_json.containsKey('boost')) {
      boost = _json['boost'].toDouble();
    }
    if (_json.containsKey('phrases')) {
      phrases = (_json['phrases'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (boost != null) {
      _json['boost'] = boost;
    }
    if (phrases != null) {
      _json['phrases'] = phrases;
    }
    return _json;
  }
}

/// Contains basic configuration for a sub-agent.
class GoogleCloudDialogflowV2beta1SubAgent {
  /// Optional. The unique identifier (`environment name` in dialogflow console)
  /// of this sub-agent environment. Assumes draft environment if `environment`
  /// is not set.
  core.String environment;

  /// Required. The project of this agent. Format: `projects/` or
  /// `projects//locations/`.
  core.String project;

  GoogleCloudDialogflowV2beta1SubAgent();

  GoogleCloudDialogflowV2beta1SubAgent.fromJson(core.Map _json) {
    if (_json.containsKey('environment')) {
      environment = _json['environment'];
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (project != null) {
      _json['project'] = project;
    }
    return _json;
  }
}

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig {
  /// Optional. An identifier which selects 'audio effects' profiles that are
  /// applied on (post synthesized) text to speech. Effects are applied on top
  /// of each other in the order they are given.
  core.List<core.String> effectsProfileId;

  /// Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20
  /// semitones from the original pitch. -20 means decrease 20 semitones from
  /// the original pitch.
  core.double pitch;

  /// Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal
  /// native speed supported by the specific voice. 2.0 is twice as fast, and
  /// 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any
  /// other values < 0.25 or > 4.0 will return an error.
  core.double speakingRate;

  /// Optional. The desired voice of the synthesized audio.
  GoogleCloudDialogflowV2beta1VoiceSelectionParams voice;

  /// Optional. Volume gain (in dB) of the normal native volume supported by the
  /// specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of
  /// 0.0 (dB), will play at normal native signal amplitude. A value of -6.0
  /// (dB) will play at approximately half the amplitude of the normal native
  /// signal amplitude. A value of +6.0 (dB) will play at approximately twice
  /// the amplitude of the normal native signal amplitude. We strongly recommend
  /// not to exceed +10 (dB) as there's usually no effective increase in
  /// loudness for any value greater than that.
  core.double volumeGainDb;

  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig();

  GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(core.Map _json) {
    if (_json.containsKey('effectsProfileId')) {
      effectsProfileId =
          (_json['effectsProfileId'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('pitch')) {
      pitch = _json['pitch'].toDouble();
    }
    if (_json.containsKey('speakingRate')) {
      speakingRate = _json['speakingRate'].toDouble();
    }
    if (_json.containsKey('voice')) {
      voice = GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromJson(
          _json['voice']);
    }
    if (_json.containsKey('volumeGainDb')) {
      volumeGainDb = _json['volumeGainDb'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (effectsProfileId != null) {
      _json['effectsProfileId'] = effectsProfileId;
    }
    if (pitch != null) {
      _json['pitch'] = pitch;
    }
    if (speakingRate != null) {
      _json['speakingRate'] = speakingRate;
    }
    if (voice != null) {
      _json['voice'] = voice.toJson();
    }
    if (volumeGainDb != null) {
      _json['volumeGainDb'] = volumeGainDb;
    }
    return _json;
  }
}

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowV2beta1TextInput {
  /// Required. The language of this conversational query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language) for
  /// a list of the currently supported language codes. Note that queries in the
  /// same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The UTF-8 encoded natural language text to be processed. Text
  /// length must not exceed 256 characters.
  core.String text;

  GoogleCloudDialogflowV2beta1TextInput();

  GoogleCloudDialogflowV2beta1TextInput.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'];
    }
    if (_json.containsKey('text')) {
      text = _json['text'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// The request message for Agents.TrainAgent.
class GoogleCloudDialogflowV2beta1TrainAgentRequest {
  GoogleCloudDialogflowV2beta1TrainAgentRequest();

  GoogleCloudDialogflowV2beta1TrainAgentRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a single validation error.
class GoogleCloudDialogflowV2beta1ValidationError {
  /// The names of the entries that the error is associated with. Format: -
  /// "projects//agent", if the error is associated with the entire agent. -
  /// "projects//agent/intents/", if the error is associated with certain
  /// intents. - "projects//agent/intents//trainingPhrases/", if the error is
  /// associated with certain intent training phrases. -
  /// "projects//agent/intents//parameters/", if the error is associated with
  /// certain intent parameters. - "projects//agent/entities/", if the error is
  /// associated with certain entities.
  core.List<core.String> entries;

  /// The detailed error messsage.
  core.String errorMessage;

  /// The severity of the error.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "INFO" : The agent doesn't follow Dialogflow best practicies.
  /// - "WARNING" : The agent may not behave as expected.
  /// - "ERROR" : The agent may experience partial failures.
  /// - "CRITICAL" : The agent may completely fail.
  core.String severity;

  GoogleCloudDialogflowV2beta1ValidationError();

  GoogleCloudDialogflowV2beta1ValidationError.fromJson(core.Map _json) {
    if (_json.containsKey('entries')) {
      entries = (_json['entries'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'];
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (entries != null) {
      _json['entries'] = entries;
    }
    if (errorMessage != null) {
      _json['errorMessage'] = errorMessage;
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    return _json;
  }
}

/// Represents the output of agent validation.
class GoogleCloudDialogflowV2beta1ValidationResult {
  /// Contains all validation errors.
  core.List<GoogleCloudDialogflowV2beta1ValidationError> validationErrors;

  GoogleCloudDialogflowV2beta1ValidationResult();

  GoogleCloudDialogflowV2beta1ValidationResult.fromJson(core.Map _json) {
    if (_json.containsKey('validationErrors')) {
      validationErrors = (_json['validationErrors'] as core.List)
          .map<GoogleCloudDialogflowV2beta1ValidationError>((value) =>
              GoogleCloudDialogflowV2beta1ValidationError.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (validationErrors != null) {
      _json['validationErrors'] =
          validationErrors.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2beta1VoiceSelectionParams {
  /// Optional. The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code and ssml_gender.
  core.String name;

  /// Optional. The preferred gender of the voice. If not set, the service will
  /// choose a voice based on the other parameters such as language_code and
  /// name. Note that this is only a preference, not requirement. If a voice of
  /// the appropriate gender is not available, the synthesizer should substitute
  /// a voice with a different gender rather than failing the request.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender, which means
  /// that the client doesn't care which gender the selected voice will have.
  /// - "SSML_VOICE_GENDER_MALE" : A male voice.
  /// - "SSML_VOICE_GENDER_FEMALE" : A female voice.
  /// - "SSML_VOICE_GENDER_NEUTRAL" : A gender-neutral voice.
  core.String ssmlGender;

  GoogleCloudDialogflowV2beta1VoiceSelectionParams();

  GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('ssmlGender')) {
      ssmlGender = _json['ssmlGender'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (ssmlGender != null) {
      _json['ssmlGender'] = ssmlGender;
    }
    return _json;
  }
}

/// The request message for a webhook call.
class GoogleCloudDialogflowV2beta1WebhookRequest {
  /// Alternative query results from KnowledgeService.
  core.List<GoogleCloudDialogflowV2beta1QueryResult> alternativeQueryResults;

  /// Optional. The contents of the original request that was passed to
  /// `[Streaming]DetectIntent` call.
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
      originalDetectIntentRequest;

  /// The result of the conversational query or event processing. Contains the
  /// same value as `[Streaming]DetectIntentResponse.query_result`.
  GoogleCloudDialogflowV2beta1QueryResult queryResult;

  /// The unique identifier of the response. Contains the same value as
  /// `[Streaming]DetectIntentResponse.response_id`.
  core.String responseId;

  /// The unique identifier of detectIntent request session. Can be used to
  /// identify end-user inside webhook implementation. Supported formats: -
  /// `projects//agent/sessions/, - `projects//locations//agent/sessions/`, -
  /// `projects//agent/environments//users//sessions/`, -
  /// `projects//locations//agent/environments//users//sessions/`,
  core.String session;

  GoogleCloudDialogflowV2beta1WebhookRequest();

  GoogleCloudDialogflowV2beta1WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey('alternativeQueryResults')) {
      alternativeQueryResults = (_json['alternativeQueryResults'] as core.List)
          .map<GoogleCloudDialogflowV2beta1QueryResult>((value) =>
              GoogleCloudDialogflowV2beta1QueryResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey('originalDetectIntentRequest')) {
      originalDetectIntentRequest =
          GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
              _json['originalDetectIntentRequest']);
    }
    if (_json.containsKey('queryResult')) {
      queryResult = GoogleCloudDialogflowV2beta1QueryResult.fromJson(
          _json['queryResult']);
    }
    if (_json.containsKey('responseId')) {
      responseId = _json['responseId'];
    }
    if (_json.containsKey('session')) {
      session = _json['session'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alternativeQueryResults != null) {
      _json['alternativeQueryResults'] =
          alternativeQueryResults.map((value) => value.toJson()).toList();
    }
    if (originalDetectIntentRequest != null) {
      _json['originalDetectIntentRequest'] =
          originalDetectIntentRequest.toJson();
    }
    if (queryResult != null) {
      _json['queryResult'] = queryResult.toJson();
    }
    if (responseId != null) {
      _json['responseId'] = responseId;
    }
    if (session != null) {
      _json['session'] = session;
    }
    return _json;
  }
}

/// The response message for a webhook call. This response is validated by the
/// Dialogflow server. If validation fails, an error will be returned in the
/// QueryResult.diagnostic_info field. Setting JSON fields to an empty value
/// with the wrong type is a common error. To avoid this error: - Use `""` for
/// empty strings - Use `{}` or `null` for empty objects - Use `[]` or `null`
/// for empty arrays For more information, see the [Protocol Buffers Language
/// Guide](https://developers.google.com/protocol-buffers/docs/proto3#json).
class GoogleCloudDialogflowV2beta1WebhookResponse {
  /// Optional. Indicates that this intent ends an interaction. Some
  /// integrations (e.g., Actions on Google or Dialogflow phone gateway) use
  /// this information to close interaction with an end user. Default is false.
  core.bool endInteraction;

  /// Optional. Invokes the supplied events. When this field is set, Dialogflow
  /// ignores the `fulfillment_text`, `fulfillment_messages`, and `payload`
  /// fields.
  GoogleCloudDialogflowV2beta1EventInput followupEventInput;

  /// Optional. The rich response messages intended for the end-user. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.fulfillment_messages sent to the integration or API caller.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> fulfillmentMessages;

  /// Optional. The text response message intended for the end-user. It is
  /// recommended to use `fulfillment_messages.text.text[0]` instead. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.fulfillment_text sent to the integration or API caller.
  core.String fulfillmentText;

  /// Optional. The collection of output contexts that will overwrite currently
  /// active contexts for the session and reset their lifespans. When provided,
  /// Dialogflow uses this field to populate QueryResult.output_contexts sent to
  /// the integration or API caller.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// Optional. This field can be used to pass custom data from your webhook to
  /// the integration or API caller. Arbitrary JSON objects are supported. When
  /// provided, Dialogflow uses this field to populate
  /// QueryResult.webhook_payload sent to the integration or API caller. This
  /// field is also used by the [Google Assistant
  /// integration](https://cloud.google.com/dialogflow/docs/integrations/aog)
  /// for rich response messages. See the format definition at [Google Assistant
  /// Dialogflow webhook
  /// format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. Additional session entity types to replace or extend developer
  /// entity types with. The entity synonyms apply to all languages and persist
  /// for the session. Setting this data from a webhook overwrites the session
  /// entity types that have been set using `detectIntent`,
  /// `streamingDetectIntent` or SessionEntityType management methods.
  core.List<GoogleCloudDialogflowV2beta1SessionEntityType> sessionEntityTypes;

  /// Optional. A custom field used to identify the webhook source. Arbitrary
  /// strings are supported. When provided, Dialogflow uses this field to
  /// populate QueryResult.webhook_source sent to the integration or API caller.
  core.String source;

  GoogleCloudDialogflowV2beta1WebhookResponse();

  GoogleCloudDialogflowV2beta1WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey('endInteraction')) {
      endInteraction = _json['endInteraction'];
    }
    if (_json.containsKey('followupEventInput')) {
      followupEventInput = GoogleCloudDialogflowV2beta1EventInput.fromJson(
          _json['followupEventInput']);
    }
    if (_json.containsKey('fulfillmentMessages')) {
      fulfillmentMessages = (_json['fulfillmentMessages'] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('fulfillmentText')) {
      fulfillmentText = _json['fulfillmentText'];
    }
    if (_json.containsKey('outputContexts')) {
      outputContexts = (_json['outputContexts'] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>(
              (value) => GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey('payload')) {
      payload = (_json['payload'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('sessionEntityTypes')) {
      sessionEntityTypes = (_json['sessionEntityTypes'] as core.List)
          .map<GoogleCloudDialogflowV2beta1SessionEntityType>((value) =>
              GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey('source')) {
      source = _json['source'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endInteraction != null) {
      _json['endInteraction'] = endInteraction;
    }
    if (followupEventInput != null) {
      _json['followupEventInput'] = followupEventInput.toJson();
    }
    if (fulfillmentMessages != null) {
      _json['fulfillmentMessages'] =
          fulfillmentMessages.map((value) => value.toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json['fulfillmentText'] = fulfillmentText;
    }
    if (outputContexts != null) {
      _json['outputContexts'] =
          outputContexts.map((value) => value.toJson()).toList();
    }
    if (payload != null) {
      _json['payload'] = payload;
    }
    if (sessionEntityTypes != null) {
      _json['sessionEntityTypes'] =
          sessionEntityTypes.map((value) => value.toJson()).toList();
    }
    if (source != null) {
      _json['source'] = source;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowV3alpha1ExportAgentResponse {
  /// Uncompressed raw byte content for agent.
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in ExportAgentRequest.
  core.String agentUri;

  GoogleCloudDialogflowV3alpha1ExportAgentResponse();

  GoogleCloudDialogflowV3alpha1ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agentContent')) {
      agentContent = _json['agentContent'];
    }
    if (_json.containsKey('agentUri')) {
      agentUri = _json['agentUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agentContent != null) {
      _json['agentContent'] = agentContent;
    }
    if (agentUri != null) {
      _json['agentUri'] = agentUri;
    }
    return _json;
  }
}

/// Metadata returned for the TestCases.ExportTestCases long running operation.
class GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata {
  GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata();

  GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// The response message for TestCases.ExportTestCases.
class GoogleCloudDialogflowV3alpha1ExportTestCasesResponse {
  /// Uncompressed raw byte content for test cases.
  core.String content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported test cases. This field is
  /// populated only if `gcs_uri` is specified in ExportTestCasesRequest.
  core.String gcsUri;

  GoogleCloudDialogflowV3alpha1ExportTestCasesResponse();

  GoogleCloudDialogflowV3alpha1ExportTestCasesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'];
    }
    if (_json.containsKey('gcsUri')) {
      gcsUri = _json['gcsUri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (gcsUri != null) {
      _json['gcsUri'] = gcsUri;
    }
    return _json;
  }
}

/// The response message for Agents.ImportAgent.
class GoogleCloudDialogflowV3alpha1ImportAgentResponse {
  /// The unique identifier of the new agent. Format:
  /// `projects//locations//agents/`.
  core.String agent;

  GoogleCloudDialogflowV3alpha1ImportAgentResponse();

  GoogleCloudDialogflowV3alpha1ImportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('agent')) {
      agent = _json['agent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (agent != null) {
      _json['agent'] = agent;
    }
    return _json;
  }
}

/// Metadata returned for the TestCases.ImportTestCases long running operation.
class GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata {
  GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata();

  GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// The response message for TestCases.ImportTestCases.
class GoogleCloudDialogflowV3alpha1ImportTestCasesResponse {
  /// The unique identifiers of the new test cases. Format:
  /// `projects//locations//agents//testCases/`.
  core.List<core.String> names;

  GoogleCloudDialogflowV3alpha1ImportTestCasesResponse();

  GoogleCloudDialogflowV3alpha1ImportTestCasesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('names')) {
      names = (_json['names'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (names != null) {
      _json['names'] = names;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation> operations;

  GoogleLongrunningListOperationsResponse();

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => GoogleLongrunningOperation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the WGS84 standard. Values must be
/// within normalized ranges.
class GoogleTypeLatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  GoogleTypeLatLng();

  GoogleTypeLatLng.fromJson(core.Map _json) {
    if (_json.containsKey('latitude')) {
      latitude = _json['latitude'].toDouble();
    }
    if (_json.containsKey('longitude')) {
      longitude = _json['longitude'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (latitude != null) {
      _json['latitude'] = latitude;
    }
    if (longitude != null) {
      _json['longitude'] = longitude;
    }
    return _json;
  }
}
