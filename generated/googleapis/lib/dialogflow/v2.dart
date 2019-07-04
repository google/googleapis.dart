// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.dialogflow.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dialogflow/v2';

/// Builds conversational interfaces (for example, chatbots, and voice-powered
/// apps and devices).
class DialogflowApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View, manage and query your Dialogflow agents
  static const DialogflowScope = "https://www.googleapis.com/auth/dialogflow";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DialogflowApi(http.Client client,
      {core.String rootUrl = "https://dialogflow.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentResourceApi get agent_1 =>
      new ProjectsAgentResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      new ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates/updates the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of this agent.
  /// Format: `projects/<Project ID>`.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<GoogleCloudDialogflowV2Agent> agent(
      GoogleCloudDialogflowV2Agent request, core.String parent,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/agent';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Agent.fromJson(data));
  }

  /// Deletes the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to delete is associated
  /// with.
  /// Format: `projects/<Project ID>`.
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
  async.Future<GoogleProtobufEmpty> deleteAgent(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/agent';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to fetch is associated
  /// with.
  /// Format: `projects/<Project ID>`.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<GoogleCloudDialogflowV2Agent> getAgent(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/agent';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Agent.fromJson(data));
  }
}

class ProjectsAgentResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesResourceApi get entityTypes =>
      new ProjectsAgentEntityTypesResourceApi(_requester);
  ProjectsAgentIntentsResourceApi get intents =>
      new ProjectsAgentIntentsResourceApi(_requester);
  ProjectsAgentSessionsResourceApi get sessions =>
      new ProjectsAgentSessionsResourceApi(_requester);

  ProjectsAgentResourceApi(commons.ApiRequester client) : _requester = client;

  /// Exports the specified agent to a ZIP file.
  ///
  /// Operation <response: ExportAgentResponse>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to export is associated
  /// with.
  /// Format: `projects/<Project ID>`.
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
      GoogleCloudDialogflowV2ExportAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Imports the specified agent from a ZIP file.
  ///
  /// Uploads new intents and entity types without deleting the existing ones.
  /// Intents and entity types with the same name are replaced with the new
  /// versions from ImportAgentRequest.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to import is associated
  /// with.
  /// Format: `projects/<Project ID>`.
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
      GoogleCloudDialogflowV2ImportAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Restores the specified agent from a ZIP file.
  ///
  /// Replaces the current agent version with a new one. All the intents and
  /// entity types in the older version are deleted.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to restore is associated
  /// with.
  /// Format: `projects/<Project ID>`.
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
      GoogleCloudDialogflowV2RestoreAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:restore';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Returns the list of agents.
  ///
  /// Since there is at most one conversational agent per project, this method
  /// is
  /// useful primarily for listing all agents across projects the caller has
  /// access to. One can achieve that with a wildcard project collection id "-".
  /// Refer to [List
  /// Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to list agents from.
  /// Format: `projects/<Project ID or '-'>`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By
  /// default 100 and at most 1000.
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
      core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(data));
  }

  /// Trains the specified agent.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the agent to train is associated
  /// with.
  /// Format: `projects/<Project ID>`.
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
      GoogleCloudDialogflowV2TrainAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:train';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsAgentEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResourceApi get entities =>
      new ProjectsAgentEntityTypesEntitiesResourceApi(_requester);

  ProjectsAgentEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes entity types in the specified agent.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format:
  /// `projects/<Project ID>/agent`.
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
      GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple entity types in the specified agent.
  ///
  /// Operation <response: BatchUpdateEntityTypesResponse>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create entity
  /// types in.
  /// Format: `projects/<Project ID>/agent`.
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
      GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an entity type in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a entity type for.
  /// Format: `projects/<Project ID>/agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [languageCode] - Optional. The language of entity synonyms defined in
  /// `entity_type`. If not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      GoogleCloudDialogflowV2EntityType request, core.String parent,
      {core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2EntityType.fromJson(data));
  }

  /// Deletes the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete.
  /// Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type.
  /// Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language to retrieve entity synonyms for.
  /// If not specified,
  /// the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
  async.Future<GoogleCloudDialogflowV2EntityType> get(core.String name,
      {core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2EntityType.fromJson(data));
  }

  /// Returns the list of all entity types in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all entity types from.
  /// Format: `projects/<Project ID>/agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By
  /// default 100 and at most 1000.
  ///
  /// [languageCode] - Optional. The language to list entity synonyms for. If
  /// not specified,
  /// the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String languageCode,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(data));
  }

  /// Updates the specified entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of the entity type.
  /// Required for EntityTypes.UpdateEntityType and
  /// EntityTypes.BatchUpdateEntityTypes methods.
  /// Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language of entity synonyms defined in
  /// `entity_type`. If not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      GoogleCloudDialogflowV2EntityType request, core.String name,
      {core.String languageCode, core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2EntityType.fromJson(data));
  }
}

class ProjectsAgentEntityTypesEntitiesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to create entities in.
  /// Format:
  /// `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
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
      GoogleCloudDialogflowV2BatchCreateEntitiesRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchCreate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes entities in the specified entity type.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to delete entries for.
  /// Format:
  /// `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
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
      GoogleCloudDialogflowV2BatchDeleteEntitiesRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates or creates multiple entities in the specified entity type. This
  /// method does not affect entities in the entity type that aren't explicitly
  /// specified in the request.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update or create
  /// entities in.
  /// Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
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
      GoogleCloudDialogflowV2BatchUpdateEntitiesRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsAgentIntentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentIntentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes intents in the specified agent.
  ///
  /// Operation <response: google.protobuf.Empty>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to delete all entities types
  /// for. Format:
  /// `projects/<Project ID>/agent`.
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
      GoogleCloudDialogflowV2BatchDeleteIntentsRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Updates/Creates multiple intents in the specified agent.
  ///
  /// Operation <response: BatchUpdateIntentsResponse>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the agent to update or create intents in.
  /// Format: `projects/<Project ID>/agent`.
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
      GoogleCloudDialogflowV2BatchUpdateIntentsRequest request,
      core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates an intent in the specified agent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to create a intent for.
  /// Format: `projects/<Project ID>/agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : A INTENT_VIEW_UNSPECIFIED.
  /// - "INTENT_VIEW_FULL" : A INTENT_VIEW_FULL.
  ///
  /// [languageCode] - Optional. The language of training phrases, parameters
  /// and rich messages
  /// defined in `intent`. If not specified, the agent's default language is
  /// used. [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      GoogleCloudDialogflowV2Intent request, core.String parent,
      {core.String intentView, core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (intentView != null) {
      _queryParams["intentView"] = [intentView];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/intents';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Intent.fromJson(data));
  }

  /// Deletes the specified intent and its direct or indirect followup intents.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete. If this intent has
  /// direct or
  /// indirect followup intents, we also delete them.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : A INTENT_VIEW_UNSPECIFIED.
  /// - "INTENT_VIEW_FULL" : A INTENT_VIEW_FULL.
  ///
  /// [languageCode] - Optional. The language to retrieve training phrases,
  /// parameters and rich
  /// messages for. If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
  async.Future<GoogleCloudDialogflowV2Intent> get(core.String name,
      {core.String intentView, core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (intentView != null) {
      _queryParams["intentView"] = [intentView];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Intent.fromJson(data));
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from.
  /// Format: `projects/<Project ID>/agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By
  /// default 100 and at most 1000.
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : A INTENT_VIEW_UNSPECIFIED.
  /// - "INTENT_VIEW_FULL" : A INTENT_VIEW_FULL.
  ///
  /// [languageCode] - Optional. The language to list training phrases,
  /// parameters and rich
  /// messages for. If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String intentView,
      core.String languageCode,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (intentView != null) {
      _queryParams["intentView"] = [intentView];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/intents';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2ListIntentsResponse.fromJson(data));
  }

  /// Updates the specified intent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier of this intent.
  /// Required for Intents.UpdateIntent and Intents.BatchUpdateIntents
  /// methods.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
  ///
  /// [intentView] - Optional. The resource view to apply to the returned
  /// intent.
  /// Possible string values are:
  /// - "INTENT_VIEW_UNSPECIFIED" : A INTENT_VIEW_UNSPECIFIED.
  /// - "INTENT_VIEW_FULL" : A INTENT_VIEW_FULL.
  ///
  /// [languageCode] - Optional. The language of training phrases, parameters
  /// and rich messages
  /// defined in `intent`. If not specified, the agent's default language is
  /// used. [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
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
      GoogleCloudDialogflowV2Intent request, core.String name,
      {core.String intentView,
      core.String languageCode,
      core.String updateMask,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (intentView != null) {
      _queryParams["intentView"] = [intentView];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Intent.fromJson(data));
  }
}

class ProjectsAgentSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResourceApi get contexts =>
      new ProjectsAgentSessionsContextsResourceApi(_requester);
  ProjectsAgentSessionsEntityTypesResourceApi get entityTypes =>
      new ProjectsAgentSessionsEntityTypesResourceApi(_requester);

  ProjectsAgentSessionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all active contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the session to delete all contexts from.
  /// Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>`.
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
  async.Future<GoogleProtobufEmpty> deleteContexts(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/contexts';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause contexts
  /// and session entity types to be updated, which in turn might affect
  /// results of future queries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The name of the session this query is sent to.
  /// Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>`. It's up to the API
  /// caller to choose an appropriate session ID. It can be a random number or
  /// some type of user identifier (preferably hashed). The length of the
  /// session
  /// ID must not exceed 36 bytes.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
      GoogleCloudDialogflowV2DetectIntentRequest request, core.String session,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2DetectIntentResponse.fromJson(data));
  }
}

class ProjectsAgentSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
  ///
  /// If the specified context already exists, overrides the context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a context for.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
      GoogleCloudDialogflowV2Context request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/contexts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Context.fromJson(data));
  }

  /// Deletes the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to delete. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
  async.Future<GoogleCloudDialogflowV2Context> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Context.fromJson(data));
  }

  /// Returns the list of all contexts in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all contexts from.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By
  /// default 100 and at most 1000.
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
      core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/contexts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2ListContextsResponse.fromJson(data));
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
  ///
  /// The `Context ID` is always converted to lowercase, may only contain
  /// characters in [a-zA-Z0-9_-%] and may be at most 250 bytes long.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
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
      GoogleCloudDialogflowV2Context request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleCloudDialogflowV2Context.fromJson(data));
  }
}

class ProjectsAgentSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
  ///
  /// If the specified session entity type already exists, overrides the session
  /// entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to create a session entity type for.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
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
      GoogleCloudDialogflowV2SessionEntityType request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleCloudDialogflowV2SessionEntityType.fromJson(data));
  }

  /// Deletes the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entity type to delete. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity
  /// Type
  /// Display Name>`.
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Retrieves the specified session entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session entity type. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity
  /// Type
  /// Display Name>`.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
  async.Future<GoogleCloudDialogflowV2SessionEntityType> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleCloudDialogflowV2SessionEntityType.fromJson(data));
  }

  /// Returns the list of all session entity types in the specified session.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The session to list all session entity types from.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// list request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return in a single
  /// page. By
  /// default 100 and at most 1000.
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
      core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
            data));
  }

  /// Updates the specified session entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of this session entity type.
  /// Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity
  /// Type
  /// Display Name>`.
  ///
  /// `<Entity Type Display Name>` must be the display name of an existing
  /// entity
  /// type in the same agent that will be overridden or supplemented.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
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
      GoogleCloudDialogflowV2SessionEntityType request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleCloudDialogflowV2SessionEntityType.fromJson(data));
  }
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
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
  async.Future<GoogleLongrunningOperation> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

/// Represents a conversational agent.
class GoogleCloudDialogflowV2Agent {
  /// Optional. API version displayed in Dialogflow console. If not specified,
  /// V2 API is assumed. Clients are free to query different service endpoints
  /// for different API versions. However, bots connectors and webhook calls
  /// will
  /// follow the specified API version.
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED" : Not specified.
  /// - "API_VERSION_V1" : Legacy V1 API.
  /// - "API_VERSION_V2" : V2 API.
  /// - "API_VERSION_V2_BETA_1" : V2beta1 API.
  core.String apiVersion;

  /// Optional. The URI of the agent's avatar.
  /// Avatars are used throughout the Dialogflow console and in the self-hosted
  /// [Web
  /// Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo)
  /// integration.
  core.String avatarUri;

  /// Optional. To filter out false positive results and still get variety in
  /// matched natural language inputs for your agent, you can tune the machine
  /// learning classification threshold. If the returned score value is less
  /// than
  /// the threshold value, then a fallback intent will be triggered or, if there
  /// are no fallback intents defined, no intent will be triggered. The score
  /// values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// If set to 0.0, the default of 0.3 is used.
  core.double classificationThreshold;

  /// Required. The default language of the agent as a language tag. See
  /// [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be
  /// set by the `Update` method.
  core.String defaultLanguageCode;

  /// Optional. The description of this agent.
  /// The maximum length is 500 characters. If exceeded, the request is
  /// rejected.
  core.String description;

  /// Required. The name of this agent.
  core.String displayName;

  /// Optional. Determines whether this agent should log conversation queries.
  core.bool enableLogging;

  /// Optional. Determines how intents are detected from user queries.
  /// Possible string values are:
  /// - "MATCH_MODE_UNSPECIFIED" : Not specified.
  /// - "MATCH_MODE_HYBRID" : Best for agents with a small number of examples in
  /// intents and/or wide
  /// use of templates syntax and composite entities.
  /// - "MATCH_MODE_ML_ONLY" : Can be used for agents with a large number of
  /// examples in intents,
  /// especially the ones using @sys.any or very large developer entities.
  core.String matchMode;

  /// Required. The project of this agent.
  /// Format: `projects/<Project ID>`.
  core.String parent;

  /// Optional. The list of all languages supported by this agent (except for
  /// the
  /// `default_language_code`).
  core.List<core.String> supportedLanguageCodes;

  /// Optional. The agent tier. If not specified, TIER_STANDARD is assumed.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "TIER_STANDARD" : Standard tier.
  /// - "TIER_ENTERPRISE" : Enterprise tier (Essentials).
  /// - "TIER_ENTERPRISE_PLUS" : Enterprise tier (Plus).
  core.String tier;

  /// Required. The time zone of this agent from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  core.String timeZone;

  GoogleCloudDialogflowV2Agent();

  GoogleCloudDialogflowV2Agent.fromJson(core.Map _json) {
    if (_json.containsKey("apiVersion")) {
      apiVersion = _json["apiVersion"];
    }
    if (_json.containsKey("avatarUri")) {
      avatarUri = _json["avatarUri"];
    }
    if (_json.containsKey("classificationThreshold")) {
      classificationThreshold = _json["classificationThreshold"].toDouble();
    }
    if (_json.containsKey("defaultLanguageCode")) {
      defaultLanguageCode = _json["defaultLanguageCode"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("enableLogging")) {
      enableLogging = _json["enableLogging"];
    }
    if (_json.containsKey("matchMode")) {
      matchMode = _json["matchMode"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("supportedLanguageCodes")) {
      supportedLanguageCodes =
          (_json["supportedLanguageCodes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tier")) {
      tier = _json["tier"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiVersion != null) {
      _json["apiVersion"] = apiVersion;
    }
    if (avatarUri != null) {
      _json["avatarUri"] = avatarUri;
    }
    if (classificationThreshold != null) {
      _json["classificationThreshold"] = classificationThreshold;
    }
    if (defaultLanguageCode != null) {
      _json["defaultLanguageCode"] = defaultLanguageCode;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (enableLogging != null) {
      _json["enableLogging"] = enableLogging;
    }
    if (matchMode != null) {
      _json["matchMode"] = matchMode;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (supportedLanguageCodes != null) {
      _json["supportedLanguageCodes"] = supportedLanguageCodes;
    }
    if (tier != null) {
      _json["tier"] = tier;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchCreateEntities.
class GoogleCloudDialogflowV2BatchCreateEntitiesRequest {
  /// Required. The entities to create.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
  core.String languageCode;

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest();

  GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = (_json["entities"] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              new GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entities != null) {
      _json["entities"] = entities.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchDeleteEntities.
class GoogleCloudDialogflowV2BatchDeleteEntitiesRequest {
  /// Required. The canonical `values` of the entities to delete. Note that
  /// these are not fully-qualified names, i.e. they don't start with
  /// `projects/<Project ID>`.
  core.List<core.String> entityValues;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
  core.String languageCode;

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest();

  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityValues")) {
      entityValues = (_json["entityValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityValues != null) {
      _json["entityValues"] = entityValues;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchDeleteEntityTypes.
class GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest {
  /// Required. The names entity types to delete. All names must point to the
  /// same agent as `parent`.
  core.List<core.String> entityTypeNames;

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();

  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("entityTypeNames")) {
      entityTypeNames =
          (_json["entityTypeNames"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypeNames != null) {
      _json["entityTypeNames"] = entityTypeNames;
    }
    return _json;
  }
}

/// The request message for Intents.BatchDeleteIntents.
class GoogleCloudDialogflowV2BatchDeleteIntentsRequest {
  /// Required. The collection of intents to delete. Only intent `name` must be
  /// filled in.
  core.List<GoogleCloudDialogflowV2Intent> intents;

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest();

  GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents = (_json["intents"] as core.List)
          .map<GoogleCloudDialogflowV2Intent>(
              (value) => new GoogleCloudDialogflowV2Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intents != null) {
      _json["intents"] = intents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchUpdateEntities.
class GoogleCloudDialogflowV2BatchUpdateEntitiesRequest {
  /// Required. The entities to update or create.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest();

  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = (_json["entities"] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              new GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entities != null) {
      _json["entities"] = entities.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchUpdateEntityTypes.
class GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest {
  /// The collection of entity types to update or create.
  GoogleCloudDialogflowV2EntityTypeBatch entityTypeBatchInline;

  /// The URI to a Google Cloud Storage file containing entity types to update
  /// or create. The file format can either be a serialized proto (of
  /// EntityBatch type) or a JSON object. Note: The URI must start with
  /// "gs://".
  core.String entityTypeBatchUri;

  /// Optional. The language of entity synonyms defined in `entity_types`. If
  /// not
  /// specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();

  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("entityTypeBatchInline")) {
      entityTypeBatchInline =
          new GoogleCloudDialogflowV2EntityTypeBatch.fromJson(
              _json["entityTypeBatchInline"]);
    }
    if (_json.containsKey("entityTypeBatchUri")) {
      entityTypeBatchUri = _json["entityTypeBatchUri"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypeBatchInline != null) {
      _json["entityTypeBatchInline"] = (entityTypeBatchInline).toJson();
    }
    if (entityTypeBatchUri != null) {
      _json["entityTypeBatchUri"] = entityTypeBatchUri;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
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
    if (_json.containsKey("entityTypes")) {
      entityTypes = (_json["entityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2EntityType>(
              (value) => new GoogleCloudDialogflowV2EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypes != null) {
      _json["entityTypes"] =
          entityTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request message for Intents.BatchUpdateIntents.
class GoogleCloudDialogflowV2BatchUpdateIntentsRequest {
  /// The collection of intents to update or create.
  GoogleCloudDialogflowV2IntentBatch intentBatchInline;

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

  /// Optional. The language of training phrases, parameters and rich messages
  /// defined in `intents`. If not specified, the agent's default language is
  /// used. [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported. Note: languages must be enabled in the agent before they
  /// can
  /// be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest();

  GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("intentBatchInline")) {
      intentBatchInline = new GoogleCloudDialogflowV2IntentBatch.fromJson(
          _json["intentBatchInline"]);
    }
    if (_json.containsKey("intentBatchUri")) {
      intentBatchUri = _json["intentBatchUri"];
    }
    if (_json.containsKey("intentView")) {
      intentView = _json["intentView"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intentBatchInline != null) {
      _json["intentBatchInline"] = (intentBatchInline).toJson();
    }
    if (intentBatchUri != null) {
      _json["intentBatchUri"] = intentBatchUri;
    }
    if (intentView != null) {
      _json["intentView"] = intentView;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
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
    if (_json.containsKey("intents")) {
      intents = (_json["intents"] as core.List)
          .map<GoogleCloudDialogflowV2Intent>(
              (value) => new GoogleCloudDialogflowV2Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intents != null) {
      _json["intents"] = intents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a context.
class GoogleCloudDialogflowV2Context {
  /// Optional. The number of conversational query requests after which the
  /// context expires. If set to `0` (the default) the context expires
  /// immediately. Contexts expire automatically after 20 minutes if there
  /// are no matching queries.
  core.int lifespanCount;

  /// Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
  ///
  /// The `Context ID` is always converted to lowercase, may only contain
  /// characters in [a-zA-Z0-9_-%] and may be at most 250 bytes long.
  core.String name;

  /// Optional. The collection of parameters associated with this context.
  /// Refer to [this
  /// doc](https://cloud.google.com/dialogflow/docs/intents-actions-parameters)
  /// for syntax.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2Context();

  GoogleCloudDialogflowV2Context.fromJson(core.Map _json) {
    if (_json.containsKey("lifespanCount")) {
      lifespanCount = _json["lifespanCount"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lifespanCount != null) {
      _json["lifespanCount"] = lifespanCount;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/// The request to detect user's intent.
class GoogleCloudDialogflowV2DetectIntentRequest {
  /// Optional. The natural language speech audio to be processed. This field
  /// should be populated iff `query_input` is set to an input audio config.
  /// A single request can contain up to 1 minute of speech audio data.
  core.String inputAudio;
  core.List<core.int> get inputAudioAsBytes {
    return convert.base64.decode(inputAudio);
  }

  set inputAudioAsBytes(core.List<core.int> _bytes) {
    inputAudio =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Optional. Instructs the speech synthesizer how to generate the output
  /// audio. If this field is not set and agent-level speech synthesizer is not
  /// configured, no output audio is generated.
  GoogleCloudDialogflowV2OutputAudioConfig outputAudioConfig;

  /// Required. The input specification. It can be set to:
  ///
  /// 1.  an audio config
  /// which instructs the speech recognizer how to process the speech audio,
  ///
  /// 2.  a conversational query in the form of text, or
  ///
  /// 3.  an event that specifies which intent to trigger.
  GoogleCloudDialogflowV2QueryInput queryInput;

  /// Optional. The parameters of this query.
  GoogleCloudDialogflowV2QueryParameters queryParams;

  GoogleCloudDialogflowV2DetectIntentRequest();

  GoogleCloudDialogflowV2DetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inputAudio")) {
      inputAudio = _json["inputAudio"];
    }
    if (_json.containsKey("outputAudioConfig")) {
      outputAudioConfig = new GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
          _json["outputAudioConfig"]);
    }
    if (_json.containsKey("queryInput")) {
      queryInput =
          new GoogleCloudDialogflowV2QueryInput.fromJson(_json["queryInput"]);
    }
    if (_json.containsKey("queryParams")) {
      queryParams = new GoogleCloudDialogflowV2QueryParameters.fromJson(
          _json["queryParams"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputAudio != null) {
      _json["inputAudio"] = inputAudio;
    }
    if (outputAudioConfig != null) {
      _json["outputAudioConfig"] = (outputAudioConfig).toJson();
    }
    if (queryInput != null) {
      _json["queryInput"] = (queryInput).toJson();
    }
    if (queryParams != null) {
      _json["queryParams"] = (queryParams).toJson();
    }
    return _json;
  }
}

/// The message returned from the DetectIntent method.
class GoogleCloudDialogflowV2DetectIntentResponse {
  /// The audio data bytes encoded as specified in the request.
  /// Note: The output audio is generated based on the values of default
  /// platform
  /// text responses found in the `query_result.fulfillment_messages` field. If
  /// multiple default text responses exist, they will be concatenated when
  /// generating audio. If no default platform text responses exist, the
  /// generated audio content will be empty.
  core.String outputAudio;
  core.List<core.int> get outputAudioAsBytes {
    return convert.base64.decode(outputAudio);
  }

  set outputAudioAsBytes(core.List<core.int> _bytes) {
    outputAudio =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The config used by the speech synthesizer to generate the output audio.
  GoogleCloudDialogflowV2OutputAudioConfig outputAudioConfig;

  /// The selected results of the conversational query or event processing.
  /// See `alternative_query_results` for additional potential results.
  GoogleCloudDialogflowV2QueryResult queryResult;

  /// The unique identifier of the response. It can be used to
  /// locate a response in the training example set or for reporting issues.
  core.String responseId;

  /// Specifies the status of the webhook request.
  GoogleRpcStatus webhookStatus;

  GoogleCloudDialogflowV2DetectIntentResponse();

  GoogleCloudDialogflowV2DetectIntentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputAudio")) {
      outputAudio = _json["outputAudio"];
    }
    if (_json.containsKey("outputAudioConfig")) {
      outputAudioConfig = new GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
          _json["outputAudioConfig"]);
    }
    if (_json.containsKey("queryResult")) {
      queryResult =
          new GoogleCloudDialogflowV2QueryResult.fromJson(_json["queryResult"]);
    }
    if (_json.containsKey("responseId")) {
      responseId = _json["responseId"];
    }
    if (_json.containsKey("webhookStatus")) {
      webhookStatus = new GoogleRpcStatus.fromJson(_json["webhookStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputAudio != null) {
      _json["outputAudio"] = outputAudio;
    }
    if (outputAudioConfig != null) {
      _json["outputAudioConfig"] = (outputAudioConfig).toJson();
    }
    if (queryResult != null) {
      _json["queryResult"] = (queryResult).toJson();
    }
    if (responseId != null) {
      _json["responseId"] = responseId;
    }
    if (webhookStatus != null) {
      _json["webhookStatus"] = (webhookStatus).toJson();
    }
    return _json;
  }
}

/// Represents an entity type.
/// Entity types serve as a tool for extracting parameter values from natural
/// language queries.
class GoogleCloudDialogflowV2EntityType {
  /// Optional. Indicates whether the entity type can be automatically
  /// expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly
  /// listed in the entity.
  core.String autoExpansionMode;

  /// Required. The name of the entity type.
  core.String displayName;

  /// Optional. The collection of entity entries associated with the entity
  /// type.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Required. Indicates the kind of entity type.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// canonical
  /// value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to canonical
  /// values. However, list entity types can contain references to other entity
  /// types (with or without aliases).
  core.String kind;

  /// The unique identifier of the entity type.
  /// Required for EntityTypes.UpdateEntityType and
  /// EntityTypes.BatchUpdateEntityTypes methods.
  /// Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  core.String name;

  GoogleCloudDialogflowV2EntityType();

  GoogleCloudDialogflowV2EntityType.fromJson(core.Map _json) {
    if (_json.containsKey("autoExpansionMode")) {
      autoExpansionMode = _json["autoExpansionMode"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("entities")) {
      entities = (_json["entities"] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              new GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoExpansionMode != null) {
      _json["autoExpansionMode"] = autoExpansionMode;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (entities != null) {
      _json["entities"] = entities.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// This message is a wrapper around a collection of entity types.
class GoogleCloudDialogflowV2EntityTypeBatch {
  /// A collection of entity types.
  core.List<GoogleCloudDialogflowV2EntityType> entityTypes;

  GoogleCloudDialogflowV2EntityTypeBatch();

  GoogleCloudDialogflowV2EntityTypeBatch.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypes")) {
      entityTypes = (_json["entityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2EntityType>(
              (value) => new GoogleCloudDialogflowV2EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypes != null) {
      _json["entityTypes"] =
          entityTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowV2EntityTypeEntity {
  /// Required. A collection of value synonyms. For example, if the entity type
  /// is *vegetable*, and `value` is *scallions*, a synonym could be *green
  /// onions*.
  ///
  /// For `KIND_LIST` entity types:
  ///
  /// *   This collection must contain exactly one synonym equal to `value`.
  core.List<core.String> synonyms;

  /// Required. The primary value associated with this entity entry.
  /// For example, if the entity type is *vegetable*, the value could be
  /// *scallions*.
  ///
  /// For `KIND_MAP` entity types:
  ///
  /// *   A canonical value to be used in place of synonyms.
  ///
  /// For `KIND_LIST` entity types:
  ///
  /// *   A string that can contain references to other entity types (with or
  ///     without aliases).
  core.String value;

  GoogleCloudDialogflowV2EntityTypeEntity();

  GoogleCloudDialogflowV2EntityTypeEntity.fromJson(core.Map _json) {
    if (_json.containsKey("synonyms")) {
      synonyms = (_json["synonyms"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (synonyms != null) {
      _json["synonyms"] = synonyms;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Events allow for matching intents by event name instead of the natural
/// language input. For instance, input `<event: { name: "welcome_event",
/// parameters: { name: "Sam" } }>` can trigger a personalized welcome response.
/// The parameter `name` may be used by the agent in the response:
/// `"Hello #welcome_event.name! What can I do for you today?"`.
class GoogleCloudDialogflowV2EventInput {
  /// Required. The language of this query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The unique identifier of the event.
  core.String name;

  /// Optional. The collection of parameters associated with the event.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2EventInput();

  GoogleCloudDialogflowV2EventInput.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/// The request message for Agents.ExportAgent.
class GoogleCloudDialogflowV2ExportAgentRequest {
  /// Optional. The
  /// [Google Cloud Storage](https://cloud.google.com/storage/docs/)
  /// URI to export the agent to.
  /// The format of this URI must be `gs://<bucket-name>/<object-name>`.
  /// If left unspecified, the serialized agent is returned inline.
  core.String agentUri;

  GoogleCloudDialogflowV2ExportAgentRequest();

  GoogleCloudDialogflowV2ExportAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("agentUri")) {
      agentUri = _json["agentUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agentUri != null) {
      _json["agentUri"] = agentUri;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowV2ExportAgentResponse {
  /// The exported agent.
  ///
  /// Example for how to export an agent to a zip file via a command line:
  /// <pre>curl \
  /// 'https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:export'\
  ///   -X POST \
  ///   -H 'Authorization: Bearer '$(gcloud auth application-default
  ///   print-access-token) \
  ///   -H 'Accept: application/json' \
  ///   -H 'Content-Type: application/json' \
  ///   --compressed \
  ///   --data-binary '{}' \
  /// | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)". * / \1/' \
  /// | base64 --decode > &lt;agent zip file&gt;</pre>
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.base64.decode(agentContent);
  }

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in `ExportAgentRequest`.
  core.String agentUri;

  GoogleCloudDialogflowV2ExportAgentResponse();

  GoogleCloudDialogflowV2ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("agentContent")) {
      agentContent = _json["agentContent"];
    }
    if (_json.containsKey("agentUri")) {
      agentUri = _json["agentUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agentContent != null) {
      _json["agentContent"] = agentContent;
    }
    if (agentUri != null) {
      _json["agentUri"] = agentUri;
    }
    return _json;
  }
}

/// The request message for Agents.ImportAgent.
class GoogleCloudDialogflowV2ImportAgentRequest {
  /// The agent to import.
  ///
  /// Example for how to import an agent via the command line:
  /// <pre>curl \
  /// 'https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:import\
  ///    -X POST \
  ///    -H 'Authorization: Bearer '$(gcloud auth application-default
  ///    print-access-token) \
  ///    -H 'Accept: application/json' \
  ///    -H 'Content-Type: application/json' \
  ///    --compressed \
  ///    --data-binary "{
  ///       'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
  ///    }"</pre>
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.base64.decode(agentContent);
  }

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The URI to a Google Cloud Storage file containing the agent to import.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  GoogleCloudDialogflowV2ImportAgentRequest();

  GoogleCloudDialogflowV2ImportAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("agentContent")) {
      agentContent = _json["agentContent"];
    }
    if (_json.containsKey("agentUri")) {
      agentUri = _json["agentUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agentContent != null) {
      _json["agentContent"] = agentContent;
    }
    if (agentUri != null) {
      _json["agentUri"] = agentUri;
    }
    return _json;
  }
}

/// Instructs the speech recognizer how to process the audio content.
class GoogleCloudDialogflowV2InputAudioConfig {
  /// Required. Audio encoding of the audio content to process.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed little-endian
  /// samples (Linear PCM).
  /// - "AUDIO_ENCODING_FLAC" :
  /// [`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio
  /// Codec) is the recommended encoding because it is lossless (therefore
  /// recognition is not compromised) and requires only about half the
  /// bandwidth of `LINEAR16`. `FLAC` stream encoding supports 16-bit and
  /// 24-bit samples, however, not all fields in `STREAMINFO` are supported.
  /// - "AUDIO_ENCODING_MULAW" : 8-bit samples that compand 14-bit audio samples
  /// using G.711 PCMU/mu-law.
  /// - "AUDIO_ENCODING_AMR" : Adaptive Multi-Rate Narrowband codec.
  /// `sample_rate_hertz` must be 8000.
  /// - "AUDIO_ENCODING_AMR_WB" : Adaptive Multi-Rate Wideband codec.
  /// `sample_rate_hertz` must be 16000.
  /// - "AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio frames in Ogg container
  /// ([OggOpus](https://wiki.xiph.org/OggOpus)).
  /// `sample_rate_hertz` must be 16000.
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" : Although the use of lossy
  /// encodings is not recommended, if a very low
  /// bitrate encoding is required, `OGG_OPUS` is highly preferred over
  /// Speex encoding. The [Speex](https://speex.org/) encoding supported by
  /// Dialogflow API has a header byte in each block, as in MIME type
  /// `audio/x-speex-with-header-byte`.
  /// It is a variant of the RTP Speex encoding defined in
  /// [RFC 5574](https://tools.ietf.org/html/rfc5574).
  /// The stream is a sequence of blocks, one block per RTP packet. Each block
  /// starts with a byte containing the length of the block, in bytes, followed
  /// by one or more frames of Speex data, padded to an integral number of
  /// bytes (octets) as specified in RFC 5574. In other words, each RTP header
  /// is replaced with a single byte containing the block length. Only Speex
  /// wideband is supported. `sample_rate_hertz` must be 16000.
  core.String audioEncoding;

  /// Required. The language of the supplied audio. Dialogflow does not do
  /// translations. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Optional. Which variant of the Speech model to use.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to
  /// USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for.
  ///
  /// Please see the [Dialogflow
  /// docs](https://cloud.google.com/dialogflow/docs/data-logging) for
  /// how to make your project eligible for enhanced models.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available.  See the
  /// [Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant:
  ///
  /// * If an enhanced variant does not exist for the given
  ///   model and request language, Dialogflow falls
  ///   back to the standard variant.
  ///
  ///   The [Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  ///   describes which models have enhanced variants.
  ///
  /// * If the API caller isn't eligible for enhanced models, Dialogflow returns
  ///   an error. Please see the [Dialogflow
  ///   docs](https://cloud.google.com/dialogflow/docs/data-logging)
  ///   for how to make your project eligible.
  core.String modelVariant;

  /// Optional. A list of strings containing words and phrases that the speech
  /// recognizer should recognize with higher likelihood.
  ///
  /// See [the Cloud Speech
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details.
  core.List<core.String> phraseHints;

  /// Required. Sample rate (in Hertz) of the audio content sent in the query.
  /// Refer to
  /// [Cloud Speech API
  /// documentation](https://cloud.google.com/speech-to-text/docs/basics) for
  /// more details.
  core.int sampleRateHertz;

  /// Optional. If `false` (default), recognition does not cease until the
  /// client closes the stream.
  /// If `true`, the recognizer will detect a single spoken utterance in input
  /// audio. Recognition ceases when it detects the audio's voice has
  /// stopped or paused. In this case, once a detected intent is received, the
  /// client should close the stream and start a new request with a new stream
  /// as
  /// needed.
  /// Note: This setting is relevant only for streaming methods.
  /// Note: When specified, InputAudioConfig.single_utterance takes precedence
  /// over StreamingDetectIntentRequest.single_utterance.
  core.bool singleUtterance;

  GoogleCloudDialogflowV2InputAudioConfig();

  GoogleCloudDialogflowV2InputAudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey("audioEncoding")) {
      audioEncoding = _json["audioEncoding"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("modelVariant")) {
      modelVariant = _json["modelVariant"];
    }
    if (_json.containsKey("phraseHints")) {
      phraseHints = (_json["phraseHints"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("sampleRateHertz")) {
      sampleRateHertz = _json["sampleRateHertz"];
    }
    if (_json.containsKey("singleUtterance")) {
      singleUtterance = _json["singleUtterance"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioEncoding != null) {
      _json["audioEncoding"] = audioEncoding;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (modelVariant != null) {
      _json["modelVariant"] = modelVariant;
    }
    if (phraseHints != null) {
      _json["phraseHints"] = phraseHints;
    }
    if (sampleRateHertz != null) {
      _json["sampleRateHertz"] = sampleRateHertz;
    }
    if (singleUtterance != null) {
      _json["singleUtterance"] = singleUtterance;
    }
    return _json;
  }
}

/// Represents an intent.
/// Intents convert a number of user expressions or patterns into an action. An
/// action is an extraction of a user command or sentence semantics.
class GoogleCloudDialogflowV2Intent {
  /// Optional. The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  core.String action;

  /// Optional. The list of platforms for which the first responses will be
  /// copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  core.List<core.String> defaultResponsePlatforms;

  /// Required. The name of this intent.
  core.String displayName;

  /// Optional. The collection of event names that trigger the intent.
  /// If the collection of input contexts is not empty, all of the contexts must
  /// be present in the active user session for an event to trigger this intent.
  core.List<core.String> events;

  /// Read-only. Information about all followup intents that have this intent as
  /// a direct or indirect parent. We populate this field only in the output.
  core.List<GoogleCloudDialogflowV2IntentFollowupIntentInfo> followupIntentInfo;

  /// Optional. The list of context names required for this intent to be
  /// triggered.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<core.String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  core.bool isFallback;

  /// Optional. The collection of rich messages corresponding to the
  /// `Response` field in the Dialogflow console.
  core.List<GoogleCloudDialogflowV2IntentMessage> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent.
  /// Note: If `ml_diabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  core.bool mlDisabled;

  /// The unique identifier of this intent.
  /// Required for Intents.UpdateIntent and Intents.BatchUpdateIntents
  /// methods.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String name;

  /// Optional. The collection of contexts that are activated when the intent
  /// is matched. Context messages in this collection should not set the
  /// parameters field. Setting the `lifespan_count` to 0 will reset the context
  /// when the intent is matched.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowV2IntentParameter> parameters;

  /// Read-only after creation. The unique identifier of the parent intent in
  /// the
  /// chain of followup intents. You can set this field when creating an intent,
  /// for example with CreateIntent or BatchUpdateIntents, in order to
  /// make this intent a followup intent.
  ///
  /// It identifies the parent followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher
  /// priorities. If this is zero or unspecified, we use the default
  /// priority 500000.
  ///
  /// Negative numbers mean that the intent is disabled.
  core.int priority;

  /// Optional. Indicates whether to delete all contexts in the current
  /// session when this intent is matched.
  core.bool resetContexts;

  /// Read-only. The unique identifier of the root intent in the chain of
  /// followup intents. It identifies the correct followup intents chain for
  /// this intent. We populate this field only in the output.
  ///
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is
  /// trained on.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrase> trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  core.String webhookState;

  GoogleCloudDialogflowV2Intent();

  GoogleCloudDialogflowV2Intent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("defaultResponsePlatforms")) {
      defaultResponsePlatforms =
          (_json["defaultResponsePlatforms"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("followupIntentInfo")) {
      followupIntentInfo = (_json["followupIntentInfo"] as core.List)
          .map<GoogleCloudDialogflowV2IntentFollowupIntentInfo>((value) =>
              new GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("inputContextNames")) {
      inputContextNames =
          (_json["inputContextNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("isFallback")) {
      isFallback = _json["isFallback"];
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>((value) =>
              new GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mlDisabled")) {
      mlDisabled = _json["mlDisabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => new GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<GoogleCloudDialogflowV2IntentParameter>((value) =>
              new GoogleCloudDialogflowV2IntentParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parentFollowupIntentName")) {
      parentFollowupIntentName = _json["parentFollowupIntentName"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("resetContexts")) {
      resetContexts = _json["resetContexts"];
    }
    if (_json.containsKey("rootFollowupIntentName")) {
      rootFollowupIntentName = _json["rootFollowupIntentName"];
    }
    if (_json.containsKey("trainingPhrases")) {
      trainingPhrases = (_json["trainingPhrases"] as core.List)
          .map<GoogleCloudDialogflowV2IntentTrainingPhrase>((value) =>
              new GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webhookState")) {
      webhookState = _json["webhookState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (defaultResponsePlatforms != null) {
      _json["defaultResponsePlatforms"] = defaultResponsePlatforms;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (events != null) {
      _json["events"] = events;
    }
    if (followupIntentInfo != null) {
      _json["followupIntentInfo"] =
          followupIntentInfo.map((value) => (value).toJson()).toList();
    }
    if (inputContextNames != null) {
      _json["inputContextNames"] = inputContextNames;
    }
    if (isFallback != null) {
      _json["isFallback"] = isFallback;
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (mlDisabled != null) {
      _json["mlDisabled"] = mlDisabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (parentFollowupIntentName != null) {
      _json["parentFollowupIntentName"] = parentFollowupIntentName;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (resetContexts != null) {
      _json["resetContexts"] = resetContexts;
    }
    if (rootFollowupIntentName != null) {
      _json["rootFollowupIntentName"] = rootFollowupIntentName;
    }
    if (trainingPhrases != null) {
      _json["trainingPhrases"] =
          trainingPhrases.map((value) => (value).toJson()).toList();
    }
    if (webhookState != null) {
      _json["webhookState"] = webhookState;
    }
    return _json;
  }
}

/// This message is a wrapper around a collection of intents.
class GoogleCloudDialogflowV2IntentBatch {
  /// A collection of intents.
  core.List<GoogleCloudDialogflowV2Intent> intents;

  GoogleCloudDialogflowV2IntentBatch();

  GoogleCloudDialogflowV2IntentBatch.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents = (_json["intents"] as core.List)
          .map<GoogleCloudDialogflowV2Intent>(
              (value) => new GoogleCloudDialogflowV2Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intents != null) {
      _json["intents"] = intents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String followupIntentName;

  /// The unique identifier of the followup intent's parent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  GoogleCloudDialogflowV2IntentFollowupIntentInfo();

  GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(core.Map _json) {
    if (_json.containsKey("followupIntentName")) {
      followupIntentName = _json["followupIntentName"];
    }
    if (_json.containsKey("parentFollowupIntentName")) {
      parentFollowupIntentName = _json["parentFollowupIntentName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (followupIntentName != null) {
      _json["followupIntentName"] = followupIntentName;
    }
    if (parentFollowupIntentName != null) {
      _json["parentFollowupIntentName"] = parentFollowupIntentName;
    }
    return _json;
  }
}

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2IntentMessage {
  /// The basic card response for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageBasicCard basicCard;

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

  /// Returns a response containing a custom, platform-specific payload.
  /// See the Intent.Message.Platform type for a description of the
  /// structure that may be required for your platform.
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
  /// - "ACTIONS_ON_GOOGLE" : Actions on Google.
  /// When using Actions on Google, you can choose one of the specific
  /// Intent.Message types that mention support for Actions on Google,
  /// or you can use the advanced Intent.Message.payload field.
  /// The payload field provides access to AoG features not available in the
  /// specific message types.
  /// If using the Intent.Message.payload field, it should have a structure
  /// similar to the JSON message shown here. For more information, see
  /// [Actions on Google Webhook
  /// Format](https://developers.google.com/actions/dialogflow/webhook)
  /// <pre>{
  ///   "expectUserResponse": true,
  ///   "isSsml": false,
  ///   "noInputPrompts": [],
  ///   "richResponse": {
  ///     "items": [
  ///       {
  ///         "simpleResponse": {
  ///           "displayText": "hi",
  ///           "textToSpeech": "hello"
  ///         }
  ///       }
  ///     ],
  ///     "suggestions": [
  ///       {
  ///         "title": "Say this"
  ///       },
  ///       {
  ///         "title": "or this"
  ///       }
  ///     ]
  ///   },
  ///   "systemIntent": {
  ///     "data": {
  ///       "@type": "type.googleapis.com/google.actions.v2.OptionValueSpec",
  ///       "listSelect": {
  ///         "items": [
  ///           {
  ///             "optionInfo": {
  ///               "key": "key1",
  ///               "synonyms": [
  ///                 "key one"
  ///               ]
  ///             },
  ///             "title": "must not be empty, but unique"
  ///           },
  ///           {
  ///             "optionInfo": {
  ///               "key": "key2",
  ///               "synonyms": [
  ///                 "key two"
  ///               ]
  ///             },
  ///             "title": "must not be empty, but unique"
  ///           }
  ///         ]
  ///       }
  ///     },
  ///     "intent": "actions.intent.OPTION"
  ///   }
  /// }</pre>
  /// - "GOOGLE_HANGOUTS" : Google Hangouts.
  core.String platform;

  /// The quick replies response.
  GoogleCloudDialogflowV2IntentMessageQuickReplies quickReplies;

  /// The voice and text-only responses for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSimpleResponses simpleResponses;

  /// The suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2IntentMessageSuggestions suggestions;

  /// The text response.
  GoogleCloudDialogflowV2IntentMessageText text;

  GoogleCloudDialogflowV2IntentMessage();

  GoogleCloudDialogflowV2IntentMessage.fromJson(core.Map _json) {
    if (_json.containsKey("basicCard")) {
      basicCard = new GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          _json["basicCard"]);
    }
    if (_json.containsKey("card")) {
      card =
          new GoogleCloudDialogflowV2IntentMessageCard.fromJson(_json["card"]);
    }
    if (_json.containsKey("carouselSelect")) {
      carouselSelect =
          new GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
              _json["carouselSelect"]);
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("linkOutSuggestion")) {
      linkOutSuggestion =
          new GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
              _json["linkOutSuggestion"]);
    }
    if (_json.containsKey("listSelect")) {
      listSelect = new GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          _json["listSelect"]);
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
    if (_json.containsKey("quickReplies")) {
      quickReplies =
          new GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
              _json["quickReplies"]);
    }
    if (_json.containsKey("simpleResponses")) {
      simpleResponses =
          new GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
              _json["simpleResponses"]);
    }
    if (_json.containsKey("suggestions")) {
      suggestions =
          new GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
              _json["suggestions"]);
    }
    if (_json.containsKey("text")) {
      text =
          new GoogleCloudDialogflowV2IntentMessageText.fromJson(_json["text"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (basicCard != null) {
      _json["basicCard"] = (basicCard).toJson();
    }
    if (card != null) {
      _json["card"] = (card).toJson();
    }
    if (carouselSelect != null) {
      _json["carouselSelect"] = (carouselSelect).toJson();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (linkOutSuggestion != null) {
      _json["linkOutSuggestion"] = (linkOutSuggestion).toJson();
    }
    if (listSelect != null) {
      _json["listSelect"] = (listSelect).toJson();
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    if (quickReplies != null) {
      _json["quickReplies"] = (quickReplies).toJson();
    }
    if (simpleResponses != null) {
      _json["simpleResponses"] = (simpleResponses).toJson();
    }
    if (suggestions != null) {
      _json["suggestions"] = (suggestions).toJson();
    }
    if (text != null) {
      _json["text"] = (text).toJson();
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
    if (_json.containsKey("buttons")) {
      buttons = (_json["buttons"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageBasicCardButton>((value) =>
              new GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("formattedText")) {
      formattedText = _json["formattedText"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buttons != null) {
      _json["buttons"] = buttons.map((value) => (value).toJson()).toList();
    }
    if (formattedText != null) {
      _json["formattedText"] = formattedText;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("openUriAction")) {
      openUriAction =
          new GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
              .fromJson(_json["openUriAction"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (openUriAction != null) {
      _json["openUriAction"] = (openUriAction).toJson();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
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
    if (_json.containsKey("buttons")) {
      buttons = (_json["buttons"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageCardButton>((value) =>
              new GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buttons != null) {
      _json["buttons"] = buttons.map((value) => (value).toJson()).toList();
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Optional. Contains information about a button.
class GoogleCloudDialogflowV2IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to
  /// open.
  core.String postback;

  /// Optional. The text to show on the button.
  core.String text;

  GoogleCloudDialogflowV2IntentMessageCardButton();

  GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(core.Map _json) {
    if (_json.containsKey("postback")) {
      postback = _json["postback"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (postback != null) {
      _json["postback"] = postback;
    }
    if (text != null) {
      _json["text"] = text;
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
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>(
              (value) =>
                  new GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("info")) {
      info = new GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
          _json["info"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("accessibilityText")) {
      accessibilityText = _json["accessibilityText"];
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessibilityText != null) {
      _json["accessibilityText"] = accessibilityText;
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    return _json;
  }
}

/// The suggestion chip message that allows the user to jump out to the app
/// or website associated with this agent.
class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion {
  /// Required. The name of the app or site this chip is linking to.
  core.String destinationName;

  /// Required. The URI of the app or site to open when the user taps the
  /// suggestion chip.
  core.String uri;

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey("destinationName")) {
      destinationName = _json["destinationName"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationName != null) {
      _json["destinationName"] = destinationName;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelect {
  /// Required. List items.
  core.List<GoogleCloudDialogflowV2IntentMessageListSelectItem> items;

  /// Optional. The overall title of the list.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageListSelect();

  GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageListSelectItem>((value) =>
              new GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("info")) {
      info = new GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
          _json["info"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("quickReplies")) {
      quickReplies = (_json["quickReplies"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quickReplies != null) {
      _json["quickReplies"] = quickReplies;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Additional info about the select item for when it is triggered in a
/// dialog.
class GoogleCloudDialogflowV2IntentMessageSelectItemInfo {
  /// Required. A unique key that will be sent back to the agent if this
  /// response is given.
  core.String key;

  /// Optional. A list of synonyms that can also be used to trigger this
  /// item in dialog.
  core.List<core.String> synonyms;

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo();

  GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("synonyms")) {
      synonyms = (_json["synonyms"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (synonyms != null) {
      _json["synonyms"] = synonyms;
    }
    return _json;
  }
}

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2IntentMessageSimpleResponse {
  /// Optional. The text to display.
  core.String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken
  /// response to the user in the SSML format. Mutually exclusive with
  /// text_to_speech.
  core.String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the
  /// speech output. Mutually exclusive with ssml.
  core.String textToSpeech;

  GoogleCloudDialogflowV2IntentMessageSimpleResponse();

  GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(core.Map _json) {
    if (_json.containsKey("displayText")) {
      displayText = _json["displayText"];
    }
    if (_json.containsKey("ssml")) {
      ssml = _json["ssml"];
    }
    if (_json.containsKey("textToSpeech")) {
      textToSpeech = _json["textToSpeech"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayText != null) {
      _json["displayText"] = displayText;
    }
    if (ssml != null) {
      _json["ssml"] = ssml;
    }
    if (textToSpeech != null) {
      _json["textToSpeech"] = textToSpeech;
    }
    return _json;
  }
}

/// The collection of simple response candidates.
/// This message in `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponses {
  /// Required. The list of simple responses.
  core.List<GoogleCloudDialogflowV2IntentMessageSimpleResponse> simpleResponses;

  GoogleCloudDialogflowV2IntentMessageSimpleResponses();

  GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(core.Map _json) {
    if (_json.containsKey("simpleResponses")) {
      simpleResponses = (_json["simpleResponses"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageSimpleResponse>((value) =>
              new GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (simpleResponses != null) {
      _json["simpleResponses"] =
          simpleResponses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The suggestion chip message that the user can tap to quickly post a reply
/// to the conversation.
class GoogleCloudDialogflowV2IntentMessageSuggestion {
  /// Required. The text shown the in the suggestion chip.
  core.String title;

  GoogleCloudDialogflowV2IntentMessageSuggestion();

  GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("suggestions")) {
      suggestions = (_json["suggestions"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessageSuggestion>((value) =>
              new GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (suggestions != null) {
      _json["suggestions"] =
          suggestions.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("text")) {
      text = (_json["text"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Represents intent parameters.
class GoogleCloudDialogflowV2IntentParameter {
  /// Optional. The default value to use when the `value` yields an empty
  /// result.
  /// Default values can be extracted from contexts by using the following
  /// syntax: `#context_name.parameter_name`.
  core.String defaultValue;

  /// Required. The name of the parameter.
  core.String displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that
  /// describes values of the parameter. If the parameter is
  /// required, this must be provided.
  core.String entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  core.bool isList;

  /// Optional. Indicates whether the parameter is required. That is,
  /// whether the intent cannot be completed without collecting the parameter
  /// value.
  core.bool mandatory;

  /// The unique identifier of this parameter.
  core.String name;

  /// Optional. The collection of prompts that the agent can present to the
  /// user in order to collect a value for the parameter.
  core.List<core.String> prompts;

  /// Optional. The definition of the parameter value. It can be:
  /// - a constant string,
  /// - a parameter value defined as `$parameter_name`,
  /// - an original parameter value defined as `$parameter_name.original`,
  /// - a parameter value from some context defined as
  ///   `#context_name.parameter_name`.
  core.String value;

  GoogleCloudDialogflowV2IntentParameter();

  GoogleCloudDialogflowV2IntentParameter.fromJson(core.Map _json) {
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("entityTypeDisplayName")) {
      entityTypeDisplayName = _json["entityTypeDisplayName"];
    }
    if (_json.containsKey("isList")) {
      isList = _json["isList"];
    }
    if (_json.containsKey("mandatory")) {
      mandatory = _json["mandatory"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("prompts")) {
      prompts = (_json["prompts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (entityTypeDisplayName != null) {
      _json["entityTypeDisplayName"] = entityTypeDisplayName;
    }
    if (isList != null) {
      _json["isList"] = isList;
    }
    if (mandatory != null) {
      _json["mandatory"] = mandatory;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (prompts != null) {
      _json["prompts"] = prompts;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2IntentTrainingPhrase {
  /// Output only. The unique identifier of this training phrase.
  core.String name;

  /// Required. The ordered list of training phrase parts.
  /// The parts are concatenated in order to form the training phrase.
  ///
  /// Note: The API does not automatically annotate training phrases like the
  /// Dialogflow Console does.
  ///
  /// Note: Do not forget to include whitespace at part boundaries,
  /// so the training phrase is well formatted when the parts are concatenated.
  ///
  /// If the training phrase does not need to be annotated with parameters,
  /// you just need a single part with only the Part.text field set.
  ///
  /// If you want to annotate the training phrase, you must create multiple
  /// parts, where the fields of each part are populated in one of two ways:
  ///
  /// -   `Part.text` is set to a part of the phrase that has no parameters.
  /// -   `Part.text` is set to a part of the phrase that you want to annotate,
  ///     and the `entity_type`, `alias`, and `user_defined` fields are all
  ///     set.
  core.List<GoogleCloudDialogflowV2IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example was added to
  /// the intent. Each time a developer adds an existing sample by editing an
  /// intent or training, this counter is increased.
  core.int timesAddedCount;

  /// Required. The type of the training phrase.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "EXAMPLE" : Examples do not contain @-prefixed entity type names, but
  /// example parts
  /// can be annotated with entity types.
  /// - "TEMPLATE" : Templates are not annotated with entity types, but they can
  /// contain
  /// @-prefixed entity type names as substrings.
  /// Template mode has been deprecated. Example mode is the only supported
  /// way to create new training phrases. If you have existing training
  /// phrases that you've created in template mode, those will continue to
  /// work.
  core.String type;

  GoogleCloudDialogflowV2IntentTrainingPhrase();

  GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parts")) {
      parts = (_json["parts"] as core.List)
          .map<GoogleCloudDialogflowV2IntentTrainingPhrasePart>((value) =>
              new GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("timesAddedCount")) {
      timesAddedCount = _json["timesAddedCount"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (parts != null) {
      _json["parts"] = parts.map((value) => (value).toJson()).toList();
    }
    if (timesAddedCount != null) {
      _json["timesAddedCount"] = timesAddedCount;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the
  /// annotated part of the example.
  /// This field is required for annotated parts of the training phrase.
  core.String alias;

  /// Optional. The entity type name prefixed with `@`.
  /// This field is required for annotated parts of the training phrase.
  core.String entityType;

  /// Required. The text for this part.
  core.String text;

  /// Optional. Indicates whether the text was manually annotated.
  /// This field is set to true when the Dialogflow Console is used to
  /// manually annotate the part. When creating an annotated part with the
  /// API, you must set this to true.
  core.bool userDefined;

  GoogleCloudDialogflowV2IntentTrainingPhrasePart();

  GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(core.Map _json) {
    if (_json.containsKey("alias")) {
      alias = _json["alias"];
    }
    if (_json.containsKey("entityType")) {
      entityType = _json["entityType"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("userDefined")) {
      userDefined = _json["userDefined"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alias != null) {
      _json["alias"] = alias;
    }
    if (entityType != null) {
      _json["entityType"] = entityType;
    }
    if (text != null) {
      _json["text"] = text;
    }
    if (userDefined != null) {
      _json["userDefined"] = userDefined;
    }
    return _json;
  }
}

/// The response message for Contexts.ListContexts.
class GoogleCloudDialogflowV2ListContextsResponse {
  /// The list of contexts. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2Context> contexts;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2ListContextsResponse();

  GoogleCloudDialogflowV2ListContextsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = (_json["contexts"] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => new GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contexts != null) {
      _json["contexts"] = contexts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for EntityTypes.ListEntityTypes.
class GoogleCloudDialogflowV2ListEntityTypesResponse {
  /// The list of agent entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2EntityType> entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2ListEntityTypesResponse();

  GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypes")) {
      entityTypes = (_json["entityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2EntityType>(
              (value) => new GoogleCloudDialogflowV2EntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypes != null) {
      _json["entityTypes"] =
          entityTypes.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Intents.ListIntents.
class GoogleCloudDialogflowV2ListIntentsResponse {
  /// The list of agent intents. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2Intent> intents;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2ListIntentsResponse();

  GoogleCloudDialogflowV2ListIntentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents = (_json["intents"] as core.List)
          .map<GoogleCloudDialogflowV2Intent>(
              (value) => new GoogleCloudDialogflowV2Intent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intents != null) {
      _json["intents"] = intents.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for SessionEntityTypes.ListSessionEntityTypes.
class GoogleCloudDialogflowV2ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  /// The list of session entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2SessionEntityType> sessionEntityTypes;

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse();

  GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sessionEntityTypes")) {
      sessionEntityTypes = (_json["sessionEntityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2SessionEntityType>((value) =>
              new GoogleCloudDialogflowV2SessionEntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sessionEntityTypes != null) {
      _json["sessionEntityTypes"] =
          sessionEntityTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents the contents of the original request that was passed to
/// the `[Streaming]DetectIntent` call.
class GoogleCloudDialogflowV2OriginalDetectIntentRequest {
  /// Optional. This field is set to the value of the `QueryParameters.payload`
  /// field passed in the request. Some integrations that query a Dialogflow
  /// agent may provide additional information in the payload.
  ///
  /// In particular for the Telephony Gateway this field has the form:
  /// <pre>{
  ///  "telephony": {
  ///    "caller_id": "+18558363987"
  ///  }
  /// }</pre>
  /// Note: The caller ID field (`caller_id`) will be redacted for Standard
  /// Edition agents and populated with the caller ID in [E.164
  /// format](https://en.wikipedia.org/wiki/E.164) for Enterprise Edition
  /// agents.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  /// by Dialogflow-owned servers.
  core.String source;

  /// Optional. The version of the protocol used for this request.
  /// This field is AoG-specific.
  core.String version;

  GoogleCloudDialogflowV2OriginalDetectIntentRequest();

  GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Instructs the speech synthesizer on how to generate the output audio
/// content.
class GoogleCloudDialogflowV2OutputAudioConfig {
  /// Required. Audio encoding of the synthesized audio content.
  /// Possible string values are:
  /// - "OUTPUT_AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "OUTPUT_AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed
  /// little-endian samples (Linear PCM).
  /// Audio content returned as LINEAR16 also contains a WAV header.
  /// - "OUTPUT_AUDIO_ENCODING_MP3" : MP3 audio.
  /// - "OUTPUT_AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio wrapped in an ogg
  /// container. The result will be a
  /// file which can be played natively on Android, and in browsers (at least
  /// Chrome and Firefox). The quality of the encoding is considerably higher
  /// than MP3 while using approximately the same bitrate.
  core.String audioEncoding;

  /// Optional. The synthesis sample rate (in hertz) for this audio. If not
  /// provided, then the synthesizer will use the default sample rate based on
  /// the audio encoding. If this is different from the voice's natural sample
  /// rate, then the synthesizer will honor this request by converting to the
  /// desired sample rate (which might result in worse audio quality).
  core.int sampleRateHertz;

  /// Optional. Configuration of how speech should be synthesized.
  GoogleCloudDialogflowV2SynthesizeSpeechConfig synthesizeSpeechConfig;

  GoogleCloudDialogflowV2OutputAudioConfig();

  GoogleCloudDialogflowV2OutputAudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey("audioEncoding")) {
      audioEncoding = _json["audioEncoding"];
    }
    if (_json.containsKey("sampleRateHertz")) {
      sampleRateHertz = _json["sampleRateHertz"];
    }
    if (_json.containsKey("synthesizeSpeechConfig")) {
      synthesizeSpeechConfig =
          new GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
              _json["synthesizeSpeechConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioEncoding != null) {
      _json["audioEncoding"] = audioEncoding;
    }
    if (sampleRateHertz != null) {
      _json["sampleRateHertz"] = sampleRateHertz;
    }
    if (synthesizeSpeechConfig != null) {
      _json["synthesizeSpeechConfig"] = (synthesizeSpeechConfig).toJson();
    }
    return _json;
  }
}

/// Represents the query input. It can contain either:
///
/// 1.  An audio config which
///     instructs the speech recognizer how to process the speech audio.
///
/// 2.  A conversational query in the form of text,.
///
/// 3.  An event that specifies which intent to trigger.
class GoogleCloudDialogflowV2QueryInput {
  /// Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowV2InputAudioConfig audioConfig;

  /// The event to be processed.
  GoogleCloudDialogflowV2EventInput event;

  /// The natural language text to be processed.
  GoogleCloudDialogflowV2TextInput text;

  GoogleCloudDialogflowV2QueryInput();

  GoogleCloudDialogflowV2QueryInput.fromJson(core.Map _json) {
    if (_json.containsKey("audioConfig")) {
      audioConfig = new GoogleCloudDialogflowV2InputAudioConfig.fromJson(
          _json["audioConfig"]);
    }
    if (_json.containsKey("event")) {
      event = new GoogleCloudDialogflowV2EventInput.fromJson(_json["event"]);
    }
    if (_json.containsKey("text")) {
      text = new GoogleCloudDialogflowV2TextInput.fromJson(_json["text"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioConfig != null) {
      _json["audioConfig"] = (audioConfig).toJson();
    }
    if (event != null) {
      _json["event"] = (event).toJson();
    }
    if (text != null) {
      _json["text"] = (text).toJson();
    }
    return _json;
  }
}

/// Represents the parameters of the conversational query.
class GoogleCloudDialogflowV2QueryParameters {
  /// Optional. The collection of contexts to be activated before this query is
  /// executed.
  core.List<GoogleCloudDialogflowV2Context> contexts;

  /// Optional. The geo location of this conversational query.
  GoogleTypeLatLng geoLocation;

  /// Optional. This field can be used to pass custom data into the webhook
  /// associated with the agent. Arbitrary JSON objects are supported.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. Specifies whether to delete all contexts in the current session
  /// before the new ones are activated.
  core.bool resetContexts;

  /// Optional. Configures the type of sentiment analysis to perform. If not
  /// provided, sentiment analysis is not performed.
  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
      sentimentAnalysisRequestConfig;

  /// Optional. Additional session entity types to replace or extend developer
  /// entity types with. The entity synonyms apply to all languages and persist
  /// for the session of this query.
  core.List<GoogleCloudDialogflowV2SessionEntityType> sessionEntityTypes;

  /// Optional. The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris. If not provided, the time zone specified
  /// in
  /// agent settings is used.
  core.String timeZone;

  GoogleCloudDialogflowV2QueryParameters();

  GoogleCloudDialogflowV2QueryParameters.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = (_json["contexts"] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => new GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("geoLocation")) {
      geoLocation = new GoogleTypeLatLng.fromJson(_json["geoLocation"]);
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("resetContexts")) {
      resetContexts = _json["resetContexts"];
    }
    if (_json.containsKey("sentimentAnalysisRequestConfig")) {
      sentimentAnalysisRequestConfig =
          new GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
              _json["sentimentAnalysisRequestConfig"]);
    }
    if (_json.containsKey("sessionEntityTypes")) {
      sessionEntityTypes = (_json["sessionEntityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2SessionEntityType>((value) =>
              new GoogleCloudDialogflowV2SessionEntityType.fromJson(value))
          .toList();
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contexts != null) {
      _json["contexts"] = contexts.map((value) => (value).toJson()).toList();
    }
    if (geoLocation != null) {
      _json["geoLocation"] = (geoLocation).toJson();
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (resetContexts != null) {
      _json["resetContexts"] = resetContexts;
    }
    if (sentimentAnalysisRequestConfig != null) {
      _json["sentimentAnalysisRequestConfig"] =
          (sentimentAnalysisRequestConfig).toJson();
    }
    if (sessionEntityTypes != null) {
      _json["sessionEntityTypes"] =
          sessionEntityTypes.map((value) => (value).toJson()).toList();
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2QueryResult {
  /// The action name from the matched intent.
  core.String action;

  /// This field is set to:
  ///
  /// - `false` if the matched intent has required parameters and not all of
  ///    the required parameter values have been collected.
  /// - `true` if all required parameter values have been collected, or if the
  ///    matched intent doesn't contain any required parameters.
  core.bool allRequiredParamsPresent;

  /// The free-form diagnostic info. For example, this field could contain
  /// webhook call latency. The string keys of the Struct's fields map can
  /// change
  /// without notice.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<GoogleCloudDialogflowV2IntentMessage> fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen.
  /// Note: This is a legacy field, `fulfillment_messages` should be preferred.
  core.String fulfillmentText;

  /// The intent that matched the conversational query. Some, not
  /// all fields are filled in this message, including but not limited to:
  /// `name`, `display_name` and `webhook_state`.
  GoogleCloudDialogflowV2Intent intent;

  /// The intent detection confidence. Values range from 0.0
  /// (completely uncertain) to 1.0 (completely certain).
  /// If there are `multiple knowledge_answers` messages, this value is set to
  /// the greatest `knowledgeAnswers.match_confidence` value in the list.
  core.double intentDetectionConfidence;

  /// The language that was triggered during intent detection.
  /// See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  core.String languageCode;

  /// The collection of output contexts. If applicable,
  /// `output_contexts.parameters` contains entries with name
  /// `<parameter name>.original` containing the original parameter values
  /// before the query.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// The collection of extracted parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// The original conversational query text:
  ///
  /// - If natural language text was provided as input, `query_text` contains
  ///   a copy of the input.
  /// - If natural language speech audio was provided as input, `query_text`
  ///   contains the speech recognition result. If speech recognizer produced
  ///   multiple alternatives, a particular one is picked.
  /// - If automatic spell correction is enabled, `query_text` will contain the
  ///   corrected user input.
  core.String queryText;

  /// The sentiment analysis result, which depends on the
  /// `sentiment_analysis_request_config` specified in the request.
  GoogleCloudDialogflowV2SentimentAnalysisResult sentimentAnalysisResult;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. The default of 0.0 is a sentinel value indicating that confidence
  /// was not set.
  ///
  /// This field is not guaranteed to be accurate or set. In particular this
  /// field isn't set for StreamingDetectIntent since the streaming endpoint has
  /// separate confidence estimates per portion of the audio in
  /// StreamingRecognitionResult.
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
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("allRequiredParamsPresent")) {
      allRequiredParamsPresent = _json["allRequiredParamsPresent"];
    }
    if (_json.containsKey("diagnosticInfo")) {
      diagnosticInfo = (_json["diagnosticInfo"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = (_json["fulfillmentMessages"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>((value) =>
              new GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("intent")) {
      intent = new GoogleCloudDialogflowV2Intent.fromJson(_json["intent"]);
    }
    if (_json.containsKey("intentDetectionConfidence")) {
      intentDetectionConfidence = _json["intentDetectionConfidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => new GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("queryText")) {
      queryText = _json["queryText"];
    }
    if (_json.containsKey("sentimentAnalysisResult")) {
      sentimentAnalysisResult =
          new GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
              _json["sentimentAnalysisResult"]);
    }
    if (_json.containsKey("speechRecognitionConfidence")) {
      speechRecognitionConfidence =
          _json["speechRecognitionConfidence"].toDouble();
    }
    if (_json.containsKey("webhookPayload")) {
      webhookPayload = (_json["webhookPayload"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("webhookSource")) {
      webhookSource = _json["webhookSource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (allRequiredParamsPresent != null) {
      _json["allRequiredParamsPresent"] = allRequiredParamsPresent;
    }
    if (diagnosticInfo != null) {
      _json["diagnosticInfo"] = diagnosticInfo;
    }
    if (fulfillmentMessages != null) {
      _json["fulfillmentMessages"] =
          fulfillmentMessages.map((value) => (value).toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json["fulfillmentText"] = fulfillmentText;
    }
    if (intent != null) {
      _json["intent"] = (intent).toJson();
    }
    if (intentDetectionConfidence != null) {
      _json["intentDetectionConfidence"] = intentDetectionConfidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (queryText != null) {
      _json["queryText"] = queryText;
    }
    if (sentimentAnalysisResult != null) {
      _json["sentimentAnalysisResult"] = (sentimentAnalysisResult).toJson();
    }
    if (speechRecognitionConfidence != null) {
      _json["speechRecognitionConfidence"] = speechRecognitionConfidence;
    }
    if (webhookPayload != null) {
      _json["webhookPayload"] = webhookPayload;
    }
    if (webhookSource != null) {
      _json["webhookSource"] = webhookSource;
    }
    return _json;
  }
}

/// The request message for Agents.RestoreAgent.
class GoogleCloudDialogflowV2RestoreAgentRequest {
  /// The agent to restore.
  ///
  /// Example for how to restore an agent via the command line:
  /// <pre>curl \
  /// 'https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:restore\
  ///    -X POST \
  ///    -H 'Authorization: Bearer '$(gcloud auth application-default
  ///    print-access-token) \
  ///    -H 'Accept: application/json' \
  ///    -H 'Content-Type: application/json' \
  ///    --compressed \
  ///    --data-binary "{
  ///        'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
  ///    }"</pre>
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.base64.decode(agentContent);
  }

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The URI to a Google Cloud Storage file containing the agent to restore.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  GoogleCloudDialogflowV2RestoreAgentRequest();

  GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("agentContent")) {
      agentContent = _json["agentContent"];
    }
    if (_json.containsKey("agentUri")) {
      agentUri = _json["agentUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agentContent != null) {
      _json["agentContent"] = agentContent;
    }
    if (agentUri != null) {
      _json["agentUri"] = agentUri;
    }
    return _json;
  }
}

/// The response message for Agents.SearchAgents.
class GoogleCloudDialogflowV2SearchAgentsResponse {
  /// The list of agents. There will be a maximum number of items returned based
  /// on the page_size field in the request.
  core.List<GoogleCloudDialogflowV2Agent> agents;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  GoogleCloudDialogflowV2SearchAgentsResponse();

  GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("agents")) {
      agents = (_json["agents"] as core.List)
          .map<GoogleCloudDialogflowV2Agent>(
              (value) => new GoogleCloudDialogflowV2Agent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agents != null) {
      _json["agents"] = agents.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
class GoogleCloudDialogflowV2Sentiment {
  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute
  /// magnitude of sentiment, regardless of score (positive or negative).
  core.double magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double score;

  GoogleCloudDialogflowV2Sentiment();

  GoogleCloudDialogflowV2Sentiment.fromJson(core.Map _json) {
    if (_json.containsKey("magnitude")) {
      magnitude = _json["magnitude"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (magnitude != null) {
      _json["magnitude"] = magnitude;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Configures the types of sentiment analysis to perform.
class GoogleCloudDialogflowV2SentimentAnalysisRequestConfig {
  /// Optional. Instructs the service to perform sentiment analysis on
  /// `query_text`. If not provided, sentiment analysis is not performed on
  /// `query_text`.
  core.bool analyzeQueryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig();

  GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey("analyzeQueryTextSentiment")) {
      analyzeQueryTextSentiment = _json["analyzeQueryTextSentiment"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyzeQueryTextSentiment != null) {
      _json["analyzeQueryTextSentiment"] = analyzeQueryTextSentiment;
    }
    return _json;
  }
}

/// The result of sentiment analysis as configured by
/// `sentiment_analysis_request_config`.
class GoogleCloudDialogflowV2SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2Sentiment queryTextSentiment;

  GoogleCloudDialogflowV2SentimentAnalysisResult();

  GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(core.Map _json) {
    if (_json.containsKey("queryTextSentiment")) {
      queryTextSentiment = new GoogleCloudDialogflowV2Sentiment.fromJson(
          _json["queryTextSentiment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (queryTextSentiment != null) {
      _json["queryTextSentiment"] = (queryTextSentiment).toJson();
    }
    return _json;
  }
}

/// Represents a session entity type.
///
/// Extends or replaces a developer entity type at the user session level (we
/// refer to the entity types defined at the agent level as "developer entity
/// types").
///
/// Note: session entity types apply to all queries, regardless of the language.
class GoogleCloudDialogflowV2SessionEntityType {
  /// Required. The collection of entities associated with this session entity
  /// type.
  core.List<GoogleCloudDialogflowV2EntityTypeEntity> entities;

  /// Required. Indicates whether the additional data should override or
  /// supplement the developer entity type definition.
  /// Possible string values are:
  /// - "ENTITY_OVERRIDE_MODE_UNSPECIFIED" : Not specified. This value should be
  /// never used.
  /// - "ENTITY_OVERRIDE_MODE_OVERRIDE" : The collection of session entities
  /// overrides the collection of entities
  /// in the corresponding developer entity type.
  /// - "ENTITY_OVERRIDE_MODE_SUPPLEMENT" : The collection of session entities
  /// extends the collection of entities in
  /// the corresponding developer entity type.
  ///
  /// Note: Even in this override mode calls to `ListSessionEntityTypes`,
  /// `GetSessionEntityType`, `CreateSessionEntityType` and
  /// `UpdateSessionEntityType` only return the additional entities added in
  /// this session entity type. If you want to get the supplemented list,
  /// please call EntityTypes.GetEntityType on the developer entity type
  /// and merge.
  core.String entityOverrideMode;

  /// Required. The unique identifier of this session entity type. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity
  /// Type
  /// Display Name>`.
  ///
  /// `<Entity Type Display Name>` must be the display name of an existing
  /// entity
  /// type in the same agent that will be overridden or supplemented.
  core.String name;

  GoogleCloudDialogflowV2SessionEntityType();

  GoogleCloudDialogflowV2SessionEntityType.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = (_json["entities"] as core.List)
          .map<GoogleCloudDialogflowV2EntityTypeEntity>((value) =>
              new GoogleCloudDialogflowV2EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("entityOverrideMode")) {
      entityOverrideMode = _json["entityOverrideMode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entities != null) {
      _json["entities"] = entities.map((value) => (value).toJson()).toList();
    }
    if (entityOverrideMode != null) {
      _json["entityOverrideMode"] = entityOverrideMode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2SynthesizeSpeechConfig {
  /// Optional. An identifier which selects 'audio effects' profiles that are
  /// applied on (post synthesized) text to speech. Effects are applied on top
  /// of
  /// each other in the order they are given.
  core.List<core.String> effectsProfileId;

  /// Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20
  /// semitones from the original pitch. -20 means decrease 20 semitones from
  /// the
  /// original pitch.
  core.double pitch;

  /// Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal
  /// native speed supported by the specific voice. 2.0 is twice as fast, and
  /// 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any
  /// other values < 0.25 or > 4.0 will return an error.
  core.double speakingRate;

  /// Optional. The desired voice of the synthesized audio.
  GoogleCloudDialogflowV2VoiceSelectionParams voice;

  /// Optional. Volume gain (in dB) of the normal native volume supported by the
  /// specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of
  /// 0.0 (dB), will play at normal native signal amplitude. A value of -6.0
  /// (dB)
  /// will play at approximately half the amplitude of the normal native signal
  /// amplitude. A value of +6.0 (dB) will play at approximately twice the
  /// amplitude of the normal native signal amplitude. We strongly recommend not
  /// to exceed +10 (dB) as there's usually no effective increase in loudness
  /// for
  /// any value greater than that.
  core.double volumeGainDb;

  GoogleCloudDialogflowV2SynthesizeSpeechConfig();

  GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(core.Map _json) {
    if (_json.containsKey("effectsProfileId")) {
      effectsProfileId =
          (_json["effectsProfileId"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("pitch")) {
      pitch = _json["pitch"].toDouble();
    }
    if (_json.containsKey("speakingRate")) {
      speakingRate = _json["speakingRate"].toDouble();
    }
    if (_json.containsKey("voice")) {
      voice = new GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
          _json["voice"]);
    }
    if (_json.containsKey("volumeGainDb")) {
      volumeGainDb = _json["volumeGainDb"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (effectsProfileId != null) {
      _json["effectsProfileId"] = effectsProfileId;
    }
    if (pitch != null) {
      _json["pitch"] = pitch;
    }
    if (speakingRate != null) {
      _json["speakingRate"] = speakingRate;
    }
    if (voice != null) {
      _json["voice"] = (voice).toJson();
    }
    if (volumeGainDb != null) {
      _json["volumeGainDb"] = volumeGainDb;
    }
    return _json;
  }
}

/// Represents the natural language text to be processed.
class GoogleCloudDialogflowV2TextInput {
  /// Required. The language of this conversational query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The UTF-8 encoded natural language text to be processed.
  /// Text length must not exceed 256 characters.
  core.String text;

  GoogleCloudDialogflowV2TextInput();

  GoogleCloudDialogflowV2TextInput.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// The request message for Agents.TrainAgent.
class GoogleCloudDialogflowV2TrainAgentRequest {
  GoogleCloudDialogflowV2TrainAgentRequest();

  GoogleCloudDialogflowV2TrainAgentRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2VoiceSelectionParams {
  /// Optional. The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code and gender.
  core.String name;

  /// Optional. The preferred gender of the voice. If not set, the service will
  /// choose a voice based on the other parameters such as language_code and
  /// name. Note that this is only a preference, not requirement. If a
  /// voice of the appropriate gender is not available, the synthesizer should
  /// substitute a voice with a different gender rather than failing the
  /// request.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender, which means
  /// that the client doesn't care which
  /// gender the selected voice will have.
  /// - "SSML_VOICE_GENDER_MALE" : A male voice.
  /// - "SSML_VOICE_GENDER_FEMALE" : A female voice.
  /// - "SSML_VOICE_GENDER_NEUTRAL" : A gender-neutral voice.
  core.String ssmlGender;

  GoogleCloudDialogflowV2VoiceSelectionParams();

  GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ssmlGender")) {
      ssmlGender = _json["ssmlGender"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (ssmlGender != null) {
      _json["ssmlGender"] = ssmlGender;
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

  /// The unique identifier of detectIntent request session.
  /// Can be used to identify end-user inside webhook implementation.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`, or
  /// `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>`.
  core.String session;

  GoogleCloudDialogflowV2WebhookRequest();

  GoogleCloudDialogflowV2WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey("originalDetectIntentRequest")) {
      originalDetectIntentRequest =
          new GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(
              _json["originalDetectIntentRequest"]);
    }
    if (_json.containsKey("queryResult")) {
      queryResult =
          new GoogleCloudDialogflowV2QueryResult.fromJson(_json["queryResult"]);
    }
    if (_json.containsKey("responseId")) {
      responseId = _json["responseId"];
    }
    if (_json.containsKey("session")) {
      session = _json["session"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (originalDetectIntentRequest != null) {
      _json["originalDetectIntentRequest"] =
          (originalDetectIntentRequest).toJson();
    }
    if (queryResult != null) {
      _json["queryResult"] = (queryResult).toJson();
    }
    if (responseId != null) {
      _json["responseId"] = responseId;
    }
    if (session != null) {
      _json["session"] = session;
    }
    return _json;
  }
}

/// The response message for a webhook call.
class GoogleCloudDialogflowV2WebhookResponse {
  /// Optional. Makes the platform immediately invoke another `DetectIntent`
  /// call
  /// internally with the specified event as input.
  /// When this field is set, Dialogflow ignores the `fulfillment_text`,
  /// `fulfillment_messages`, and `payload` fields.
  GoogleCloudDialogflowV2EventInput followupEventInput;

  /// Optional. The collection of rich messages to present to the user. This
  /// value is passed directly to `QueryResult.fulfillment_messages`.
  core.List<GoogleCloudDialogflowV2IntentMessage> fulfillmentMessages;

  /// Optional. The text to be shown on the screen. This value is passed
  /// directly
  /// to `QueryResult.fulfillment_text`.
  core.String fulfillmentText;

  /// Optional. The collection of output contexts. This value is passed directly
  /// to `QueryResult.output_contexts`.
  core.List<GoogleCloudDialogflowV2Context> outputContexts;

  /// Optional. This value is passed directly to `QueryResult.webhook_payload`.
  /// See the related `fulfillment_messages[i].payload field`, which may be used
  /// as an alternative to this field.
  ///
  /// This field can be used for Actions on Google responses.
  /// It should have a structure similar to the JSON message shown here. For
  /// more
  /// information, see
  /// [Actions on Google Webhook
  /// Format](https://developers.google.com/actions/dialogflow/webhook)
  /// <pre>{
  ///   "google": {
  ///     "expectUserResponse": true,
  ///     "richResponse": {
  ///       "items": [
  ///         {
  ///           "simpleResponse": {
  ///             "textToSpeech": "this is a simple response"
  ///           }
  ///         }
  ///       ]
  ///     }
  ///   }
  /// }</pre>
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. This value is passed directly to `QueryResult.webhook_source`.
  core.String source;

  GoogleCloudDialogflowV2WebhookResponse();

  GoogleCloudDialogflowV2WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey("followupEventInput")) {
      followupEventInput = new GoogleCloudDialogflowV2EventInput.fromJson(
          _json["followupEventInput"]);
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = (_json["fulfillmentMessages"] as core.List)
          .map<GoogleCloudDialogflowV2IntentMessage>((value) =>
              new GoogleCloudDialogflowV2IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2Context>(
              (value) => new GoogleCloudDialogflowV2Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (followupEventInput != null) {
      _json["followupEventInput"] = (followupEventInput).toJson();
    }
    if (fulfillmentMessages != null) {
      _json["fulfillmentMessages"] =
          fulfillmentMessages.map((value) => (value).toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json["fulfillmentText"] = fulfillmentText;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (source != null) {
      _json["source"] = source;
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
    if (_json.containsKey("entityTypes")) {
      entityTypes = (_json["entityTypes"] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityType>((value) =>
              new GoogleCloudDialogflowV2beta1EntityType.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityTypes != null) {
      _json["entityTypes"] =
          entityTypes.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("intents")) {
      intents = (_json["intents"] as core.List)
          .map<GoogleCloudDialogflowV2beta1Intent>(
              (value) => new GoogleCloudDialogflowV2beta1Intent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intents != null) {
      _json["intents"] = intents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a context.
class GoogleCloudDialogflowV2beta1Context {
  /// Optional. The number of conversational query requests after which the
  /// context expires. If set to `0` (the default) the context expires
  /// immediately. Contexts expire automatically after 20 minutes if there
  /// are no matching queries.
  core.int lifespanCount;

  /// Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`,
  /// or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>/contexts/<Context ID>`.
  ///
  /// The `Context ID` is always converted to lowercase, may only contain
  /// characters in a-zA-Z0-9_-% and may be at most 250 bytes long.
  ///
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  core.String name;

  /// Optional. The collection of parameters associated with this context.
  /// Refer to [this
  /// doc](https://cloud.google.com/dialogflow/docs/intents-actions-parameters)
  /// for syntax.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2beta1Context();

  GoogleCloudDialogflowV2beta1Context.fromJson(core.Map _json) {
    if (_json.containsKey("lifespanCount")) {
      lifespanCount = _json["lifespanCount"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lifespanCount != null) {
      _json["lifespanCount"] = lifespanCount;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/// Represents an entity type.
/// Entity types serve as a tool for extracting parameter values from natural
/// language queries.
class GoogleCloudDialogflowV2beta1EntityType {
  /// Optional. Indicates whether the entity type can be automatically
  /// expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly
  /// listed in the entity.
  core.String autoExpansionMode;

  /// Required. The name of the entity type.
  core.String displayName;

  /// Optional. The collection of entity entries associated with the entity
  /// type.
  core.List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities;

  /// Required. Indicates the kind of entity type.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified. This value should be never used.
  /// - "KIND_MAP" : Map entity types allow mapping of a group of synonyms to a
  /// canonical
  /// value.
  /// - "KIND_LIST" : List entity types contain a set of entries that do not map
  /// to canonical
  /// values. However, list entity types can contain references to other entity
  /// types (with or without aliases).
  core.String kind;

  /// The unique identifier of the entity type.
  /// Required for EntityTypes.UpdateEntityType and
  /// EntityTypes.BatchUpdateEntityTypes methods.
  /// Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  core.String name;

  GoogleCloudDialogflowV2beta1EntityType();

  GoogleCloudDialogflowV2beta1EntityType.fromJson(core.Map _json) {
    if (_json.containsKey("autoExpansionMode")) {
      autoExpansionMode = _json["autoExpansionMode"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("entities")) {
      entities = (_json["entities"] as core.List)
          .map<GoogleCloudDialogflowV2beta1EntityTypeEntity>((value) =>
              new GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoExpansionMode != null) {
      _json["autoExpansionMode"] = autoExpansionMode;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (entities != null) {
      _json["entities"] = entities.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// An **entity entry** for an associated entity type.
class GoogleCloudDialogflowV2beta1EntityTypeEntity {
  /// Required. A collection of value synonyms. For example, if the entity type
  /// is *vegetable*, and `value` is *scallions*, a synonym could be *green
  /// onions*.
  ///
  /// For `KIND_LIST` entity types:
  ///
  /// *   This collection must contain exactly one synonym equal to `value`.
  core.List<core.String> synonyms;

  /// Required. The primary value associated with this entity entry.
  /// For example, if the entity type is *vegetable*, the value could be
  /// *scallions*.
  ///
  /// For `KIND_MAP` entity types:
  ///
  /// *   A canonical value to be used in place of synonyms.
  ///
  /// For `KIND_LIST` entity types:
  ///
  /// *   A string that can contain references to other entity types (with or
  ///     without aliases).
  core.String value;

  GoogleCloudDialogflowV2beta1EntityTypeEntity();

  GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(core.Map _json) {
    if (_json.containsKey("synonyms")) {
      synonyms = (_json["synonyms"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (synonyms != null) {
      _json["synonyms"] = synonyms;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Events allow for matching intents by event name instead of the natural
/// language input. For instance, input `<event: { name: "welcome_event",
/// parameters: { name: "Sam" } }>` can trigger a personalized welcome response.
/// The parameter `name` may be used by the agent in the response:
/// `"Hello #welcome_event.name! What can I do for you today?"`.
class GoogleCloudDialogflowV2beta1EventInput {
  /// Required. The language of this query. See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The unique identifier of the event.
  core.String name;

  /// Optional. The collection of parameters associated with the event.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  GoogleCloudDialogflowV2beta1EventInput();

  GoogleCloudDialogflowV2beta1EventInput.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/// The response message for Agents.ExportAgent.
class GoogleCloudDialogflowV2beta1ExportAgentResponse {
  /// The exported agent.
  ///
  /// Example for how to export an agent to a zip file via a command line:
  /// <pre>curl \
  /// 'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/agent:export'\
  ///   -X POST \
  ///   -H 'Authorization: Bearer '$(gcloud auth application-default
  ///   print-access-token) \
  ///   -H 'Accept: application/json' \
  ///   -H 'Content-Type: application/json' \
  ///   --compressed \
  ///   --data-binary '{}' \
  /// | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)". * / \1/' \
  /// | base64 --decode > &lt;agent zip file&gt;</pre>
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.base64.decode(agentContent);
  }

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in `ExportAgentRequest`.
  core.String agentUri;

  GoogleCloudDialogflowV2beta1ExportAgentResponse();

  GoogleCloudDialogflowV2beta1ExportAgentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("agentContent")) {
      agentContent = _json["agentContent"];
    }
    if (_json.containsKey("agentUri")) {
      agentUri = _json["agentUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (agentContent != null) {
      _json["agentContent"] = agentContent;
    }
    if (agentUri != null) {
      _json["agentUri"] = agentUri;
    }
    return _json;
  }
}

/// Represents an intent.
/// Intents convert a number of user expressions or patterns into an action. An
/// action is an extraction of a user command or sentence semantics.
class GoogleCloudDialogflowV2beta1Intent {
  /// Optional. The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  core.String action;

  /// Optional. The list of platforms for which the first responses will be
  /// copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  core.List<core.String> defaultResponsePlatforms;

  /// Required. The name of this intent.
  core.String displayName;

  /// Optional. Indicates that this intent ends an interaction. Some
  /// integrations
  /// (e.g., Actions on Google or Dialogflow phone gateway) use this information
  /// to close interaction with an end user. Default is false.
  core.bool endInteraction;

  /// Optional. The collection of event names that trigger the intent.
  /// If the collection of input contexts is not empty, all of the contexts must
  /// be present in the active user session for an event to trigger this intent.
  core.List<core.String> events;

  /// Read-only. Information about all followup intents that have this intent as
  /// a direct or indirect parent. We populate this field only in the output.
  core.List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>
      followupIntentInfo;

  /// Optional. The list of context names required for this intent to be
  /// triggered.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<core.String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  core.bool isFallback;

  /// Optional. The collection of rich messages corresponding to the
  /// `Response` field in the Dialogflow console.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent.
  /// Note: If `ml_disabled` setting is set to true, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  core.bool mlDisabled;

  /// Optional. Indicates whether Machine Learning is enabled for the intent.
  /// Note: If `ml_enabled` setting is set to false, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  /// DEPRECATED! Please use `ml_disabled` field instead.
  /// NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false,
  /// then the default value is determined as follows:
  /// - Before April 15th, 2018 the default is:
  ///   ml_enabled = false / ml_disabled = true.
  /// - After April 15th, 2018 the default is:
  ///   ml_enabled = true / ml_disabled = false.
  core.bool mlEnabled;

  /// The unique identifier of this intent.
  /// Required for Intents.UpdateIntent and Intents.BatchUpdateIntents
  /// methods.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String name;

  /// Optional. The collection of contexts that are activated when the intent
  /// is matched. Context messages in this collection should not set the
  /// parameters field. Setting the `lifespan_count` to 0 will reset the context
  /// when the intent is matched.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  core.List<GoogleCloudDialogflowV2beta1IntentParameter> parameters;

  /// Read-only after creation. The unique identifier of the parent intent in
  /// the
  /// chain of followup intents. You can set this field when creating an intent,
  /// for example with CreateIntent or BatchUpdateIntents, in order to
  /// make this intent a followup intent.
  ///
  /// It identifies the parent followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher
  /// priorities. If this is zero or unspecified, we use the default
  /// priority 500000.
  ///
  /// Negative numbers mean that the intent is disabled.
  core.int priority;

  /// Optional. Indicates whether to delete all contexts in the current
  /// session when this intent is matched.
  core.bool resetContexts;

  /// Read-only. The unique identifier of the root intent in the chain of
  /// followup intents. It identifies the correct followup intents chain for
  /// this intent. We populate this field only in the output.
  ///
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is
  /// trained on.
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrase> trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  core.String webhookState;

  GoogleCloudDialogflowV2beta1Intent();

  GoogleCloudDialogflowV2beta1Intent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("defaultResponsePlatforms")) {
      defaultResponsePlatforms =
          (_json["defaultResponsePlatforms"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("endInteraction")) {
      endInteraction = _json["endInteraction"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("followupIntentInfo")) {
      followupIntentInfo = (_json["followupIntentInfo"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>((value) =>
              new GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("inputContextNames")) {
      inputContextNames =
          (_json["inputContextNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("isFallback")) {
      isFallback = _json["isFallback"];
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              new GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mlDisabled")) {
      mlDisabled = _json["mlDisabled"];
    }
    if (_json.containsKey("mlEnabled")) {
      mlEnabled = _json["mlEnabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>((value) =>
              new GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentParameter>((value) =>
              new GoogleCloudDialogflowV2beta1IntentParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parentFollowupIntentName")) {
      parentFollowupIntentName = _json["parentFollowupIntentName"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("resetContexts")) {
      resetContexts = _json["resetContexts"];
    }
    if (_json.containsKey("rootFollowupIntentName")) {
      rootFollowupIntentName = _json["rootFollowupIntentName"];
    }
    if (_json.containsKey("trainingPhrases")) {
      trainingPhrases = (_json["trainingPhrases"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>((value) =>
              new GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webhookState")) {
      webhookState = _json["webhookState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (defaultResponsePlatforms != null) {
      _json["defaultResponsePlatforms"] = defaultResponsePlatforms;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (endInteraction != null) {
      _json["endInteraction"] = endInteraction;
    }
    if (events != null) {
      _json["events"] = events;
    }
    if (followupIntentInfo != null) {
      _json["followupIntentInfo"] =
          followupIntentInfo.map((value) => (value).toJson()).toList();
    }
    if (inputContextNames != null) {
      _json["inputContextNames"] = inputContextNames;
    }
    if (isFallback != null) {
      _json["isFallback"] = isFallback;
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (mlDisabled != null) {
      _json["mlDisabled"] = mlDisabled;
    }
    if (mlEnabled != null) {
      _json["mlEnabled"] = mlEnabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (parentFollowupIntentName != null) {
      _json["parentFollowupIntentName"] = parentFollowupIntentName;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (resetContexts != null) {
      _json["resetContexts"] = resetContexts;
    }
    if (rootFollowupIntentName != null) {
      _json["rootFollowupIntentName"] = rootFollowupIntentName;
    }
    if (trainingPhrases != null) {
      _json["trainingPhrases"] =
          trainingPhrases.map((value) => (value).toJson()).toList();
    }
    if (webhookState != null) {
      _json["webhookState"] = webhookState;
    }
    return _json;
  }
}

/// Represents a single followup intent in the chain.
class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String followupIntentName;

  /// The unique identifier of the followup intent's parent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();

  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey("followupIntentName")) {
      followupIntentName = _json["followupIntentName"];
    }
    if (_json.containsKey("parentFollowupIntentName")) {
      parentFollowupIntentName = _json["parentFollowupIntentName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (followupIntentName != null) {
      _json["followupIntentName"] = followupIntentName;
    }
    if (parentFollowupIntentName != null) {
      _json["parentFollowupIntentName"] = parentFollowupIntentName;
    }
    return _json;
  }
}

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessage {
  /// Displays a basic card for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard basicCard;

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

  /// Returns a response containing a custom, platform-specific payload.
  /// See the Intent.Message.Platform type for a description of the
  /// structure that may be required for your platform.
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
  /// - "ACTIONS_ON_GOOGLE" : Actions on Google.
  /// When using Actions on Google, you can choose one of the specific
  /// Intent.Message types that mention support for Actions on Google,
  /// or you can use the advanced Intent.Message.payload field.
  /// The payload field provides access to AoG features not available in the
  /// specific message types.
  /// If using the Intent.Message.payload field, it should have a structure
  /// similar to the JSON message shown here. For more information, see
  /// [Actions on Google Webhook
  /// Format](https://developers.google.com/actions/dialogflow/webhook)
  /// <pre>{
  ///   "expectUserResponse": true,
  ///   "isSsml": false,
  ///   "noInputPrompts": [],
  ///   "richResponse": {
  ///     "items": [
  ///       {
  ///         "simpleResponse": {
  ///           "displayText": "hi",
  ///           "textToSpeech": "hello"
  ///         }
  ///       }
  ///     ],
  ///     "suggestions": [
  ///       {
  ///         "title": "Say this"
  ///       },
  ///       {
  ///         "title": "or this"
  ///       }
  ///     ]
  ///   },
  ///   "systemIntent": {
  ///     "data": {
  ///       "@type": "type.googleapis.com/google.actions.v2.OptionValueSpec",
  ///       "listSelect": {
  ///         "items": [
  ///           {
  ///             "optionInfo": {
  ///               "key": "key1",
  ///               "synonyms": [
  ///                 "key one"
  ///               ]
  ///             },
  ///             "title": "must not be empty, but unique"
  ///           },
  ///           {
  ///             "optionInfo": {
  ///               "key": "key2",
  ///               "synonyms": [
  ///                 "key two"
  ///               ]
  ///             },
  ///             "title": "must not be empty, but unique"
  ///           }
  ///         ]
  ///       }
  ///     },
  ///     "intent": "actions.intent.OPTION"
  ///   }
  /// }</pre>
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

  /// Rich Business Messaging (RBM) text response.
  ///
  /// RBM allows businesses to send enriched and branded versions of SMS. See
  /// https://jibe.google.com/business-messaging.
  GoogleCloudDialogflowV2beta1IntentMessageRbmText rbmText;

  /// Returns a voice or text-only response for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses simpleResponses;

  /// Displays suggestion chips for Actions on Google.
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions suggestions;

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
    if (_json.containsKey("basicCard")) {
      basicCard =
          new GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
              _json["basicCard"]);
    }
    if (_json.containsKey("card")) {
      card = new GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(
          _json["card"]);
    }
    if (_json.containsKey("carouselSelect")) {
      carouselSelect =
          new GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
              _json["carouselSelect"]);
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("linkOutSuggestion")) {
      linkOutSuggestion =
          new GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
              .fromJson(_json["linkOutSuggestion"]);
    }
    if (_json.containsKey("listSelect")) {
      listSelect =
          new GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
              _json["listSelect"]);
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
    if (_json.containsKey("quickReplies")) {
      quickReplies =
          new GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
              _json["quickReplies"]);
    }
    if (_json.containsKey("rbmCarouselRichCard")) {
      rbmCarouselRichCard =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
              _json["rbmCarouselRichCard"]);
    }
    if (_json.containsKey("rbmStandaloneRichCard")) {
      rbmStandaloneRichCard =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
              .fromJson(_json["rbmStandaloneRichCard"]);
    }
    if (_json.containsKey("rbmText")) {
      rbmText = new GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
          _json["rbmText"]);
    }
    if (_json.containsKey("simpleResponses")) {
      simpleResponses =
          new GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
              _json["simpleResponses"]);
    }
    if (_json.containsKey("suggestions")) {
      suggestions =
          new GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
              _json["suggestions"]);
    }
    if (_json.containsKey("telephonyPlayAudio")) {
      telephonyPlayAudio =
          new GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
              .fromJson(_json["telephonyPlayAudio"]);
    }
    if (_json.containsKey("telephonySynthesizeSpeech")) {
      telephonySynthesizeSpeech =
          new GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
              .fromJson(_json["telephonySynthesizeSpeech"]);
    }
    if (_json.containsKey("telephonyTransferCall")) {
      telephonyTransferCall =
          new GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
              .fromJson(_json["telephonyTransferCall"]);
    }
    if (_json.containsKey("text")) {
      text = new GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(
          _json["text"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (basicCard != null) {
      _json["basicCard"] = (basicCard).toJson();
    }
    if (card != null) {
      _json["card"] = (card).toJson();
    }
    if (carouselSelect != null) {
      _json["carouselSelect"] = (carouselSelect).toJson();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (linkOutSuggestion != null) {
      _json["linkOutSuggestion"] = (linkOutSuggestion).toJson();
    }
    if (listSelect != null) {
      _json["listSelect"] = (listSelect).toJson();
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    if (quickReplies != null) {
      _json["quickReplies"] = (quickReplies).toJson();
    }
    if (rbmCarouselRichCard != null) {
      _json["rbmCarouselRichCard"] = (rbmCarouselRichCard).toJson();
    }
    if (rbmStandaloneRichCard != null) {
      _json["rbmStandaloneRichCard"] = (rbmStandaloneRichCard).toJson();
    }
    if (rbmText != null) {
      _json["rbmText"] = (rbmText).toJson();
    }
    if (simpleResponses != null) {
      _json["simpleResponses"] = (simpleResponses).toJson();
    }
    if (suggestions != null) {
      _json["suggestions"] = (suggestions).toJson();
    }
    if (telephonyPlayAudio != null) {
      _json["telephonyPlayAudio"] = (telephonyPlayAudio).toJson();
    }
    if (telephonySynthesizeSpeech != null) {
      _json["telephonySynthesizeSpeech"] = (telephonySynthesizeSpeech).toJson();
    }
    if (telephonyTransferCall != null) {
      _json["telephonyTransferCall"] = (telephonyTransferCall).toJson();
    }
    if (text != null) {
      _json["text"] = (text).toJson();
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
    if (_json.containsKey("buttons")) {
      buttons = (_json["buttons"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("formattedText")) {
      formattedText = _json["formattedText"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buttons != null) {
      _json["buttons"] = buttons.map((value) => (value).toJson()).toList();
    }
    if (formattedText != null) {
      _json["formattedText"] = formattedText;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("openUriAction")) {
      openUriAction =
          new GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
              .fromJson(_json["openUriAction"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (openUriAction != null) {
      _json["openUriAction"] = (openUriAction).toJson();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
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
    if (_json.containsKey("buttons")) {
      buttons = (_json["buttons"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageCardButton>((value) =>
              new GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buttons != null) {
      _json["buttons"] = buttons.map((value) => (value).toJson()).toList();
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Optional. Contains information about a button.
class GoogleCloudDialogflowV2beta1IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to
  /// open.
  core.String postback;

  /// Optional. The text to show on the button.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageCardButton();

  GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(core.Map _json) {
    if (_json.containsKey("postback")) {
      postback = _json["postback"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (postback != null) {
      _json["postback"] = postback;
    }
    if (text != null) {
      _json["text"] = text;
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
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("info")) {
      info =
          new GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
              _json["info"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility,
  /// e.g., screen readers. Required if image_uri is set for CarouselSelect.
  core.String accessibilityText;

  /// Optional. The public URI to an image file.
  core.String imageUri;

  GoogleCloudDialogflowV2beta1IntentMessageImage();

  GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(core.Map _json) {
    if (_json.containsKey("accessibilityText")) {
      accessibilityText = _json["accessibilityText"];
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessibilityText != null) {
      _json["accessibilityText"] = accessibilityText;
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    return _json;
  }
}

/// The suggestion chip message that allows the user to jump out to the app
/// or website associated with this agent.
class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion {
  /// Required. The name of the app or site this chip is linking to.
  core.String destinationName;

  /// Required. The URI of the app or site to open when the user taps the
  /// suggestion chip.
  core.String uri;

  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey("destinationName")) {
      destinationName = _json["destinationName"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationName != null) {
      _json["destinationName"] = destinationName;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelect {
  /// Required. List items.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> items;

  /// Optional. The overall title of the list.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelect();

  GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          _json["image"]);
    }
    if (_json.containsKey("info")) {
      info =
          new GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
              _json["info"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("quickReplies")) {
      quickReplies = (_json["quickReplies"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quickReplies != null) {
      _json["quickReplies"] = quickReplies;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent {
  /// Optional. Description of the card (at most 2000 bytes).
  ///
  /// At least one of the title, description or media must be set.
  core.String description;

  /// Optional. However at least one of the title, description or media must
  /// be set. Media (image, GIF or a video) to include in the card.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia media;

  /// Optional. List of suggestions to include in the card.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> suggestions;

  /// Optional. Title of the card (at most 200 bytes).
  ///
  /// At least one of the title, description or media must be set.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
      core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("media")) {
      media =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
              .fromJson(_json["media"]);
    }
    if (_json.containsKey("suggestions")) {
      suggestions = (_json["suggestions"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (media != null) {
      _json["media"] = (media).toJson();
    }
    if (suggestions != null) {
      _json["suggestions"] =
          suggestions.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) Media displayed in Cards
/// The following media-types are currently supported:
///
/// ## Image Types
///
///  image/jpeg
///  image/jpg'
///  image/gif
///  image/png
///
/// ## Video Types
///
///  video/h263
///  video/m4v
///  video/mp4
///  video/mpeg
///  video/mpeg4
///  video/webm
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia {
  /// Required. Publicly reachable URI of the file. The RBM platform
  /// determines the MIME type of the file from the content-type field in
  /// the HTTP headers when the platform fetches the file. The content-type
  /// field must be present and accurate in the HTTP response from the URL.
  core.String fileUri;

  /// Required for cards with vertical orientation. The height of the media
  /// within a rich card with a vertical layout. (https://goo.gl/NeFCjz).
  /// For a standalone card with horizontal layout, height is not
  /// customizable, and this field is ignored.
  /// Possible string values are:
  /// - "HEIGHT_UNSPECIFIED" : Not specified.
  /// - "SHORT" : 112 DP.
  /// - "MEDIUM" : 168 DP.
  /// - "TALL" : 264 DP. Not available for rich card carousels when the card
  /// width
  /// is set to small.
  core.String height;

  /// Optional. Publicly reachable URI of the thumbnail.If you don't
  /// provide a thumbnail URI, the RBM platform displays a blank
  /// placeholder thumbnail until the user's device downloads the file.
  /// Depending on the user's setting, the file may not download
  /// automatically and may require the user to tap a download button.
  core.String thumbnailUri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
      core.Map _json) {
    if (_json.containsKey("fileUri")) {
      fileUri = _json["fileUri"];
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("thumbnailUri")) {
      thumbnailUri = _json["thumbnailUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileUri != null) {
      _json["fileUri"] = fileUri;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (thumbnailUri != null) {
      _json["thumbnailUri"] = thumbnailUri;
    }
    return _json;
  }
}

/// Carousel Rich Business Messaging (RBM) rich card.
///
/// Rich cards allow you to respond to users with more vivid content, e.g.
/// with media and suggestions.
///
/// For more details about RBM rich cards, please see:
/// https://developers.google.com/rcs-business-messaging/rbm/guides/build/send-messages#rich-cards.
/// If you want to show a single card with more control over the layout,
/// please use RbmStandaloneCard instead.
class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard {
  /// Required. The cards in the carousel. A carousel must have at least
  /// 2 cards and at most 10.
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
    if (_json.containsKey("cardContents")) {
      cardContents = (_json["cardContents"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("cardWidth")) {
      cardWidth = _json["cardWidth"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardContents != null) {
      _json["cardContents"] =
          cardContents.map((value) => (value).toJson()).toList();
    }
    if (cardWidth != null) {
      _json["cardWidth"] = cardWidth;
    }
    return _json;
  }
}

/// Standalone Rich Business Messaging (RBM) rich card.
///
/// Rich cards allow you to respond to users with more vivid content, e.g.
/// with media and suggestions.
///
/// For more details about RBM rich cards, please see:
/// https://developers.google.com/rcs-business-messaging/rbm/guides/build/send-messages#rich-cards.
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

  /// Required if orientation is horizontal.
  /// Image preview alignment for standalone cards with horizontal layout.
  /// Possible string values are:
  /// - "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED" : Not specified.
  /// - "LEFT" : Thumbnail preview is left-aligned.
  /// - "RIGHT" : Thumbnail preview is right-aligned.
  core.String thumbnailImageAlignment;

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();

  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
      core.Map _json) {
    if (_json.containsKey("cardContent")) {
      cardContent =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
              _json["cardContent"]);
    }
    if (_json.containsKey("cardOrientation")) {
      cardOrientation = _json["cardOrientation"];
    }
    if (_json.containsKey("thumbnailImageAlignment")) {
      thumbnailImageAlignment = _json["thumbnailImageAlignment"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardContent != null) {
      _json["cardContent"] = (cardContent).toJson();
    }
    if (cardOrientation != null) {
      _json["cardOrientation"] = cardOrientation;
    }
    if (thumbnailImageAlignment != null) {
      _json["thumbnailImageAlignment"] = thumbnailImageAlignment;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggested client-side action that the user
/// can choose from the card.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction {
  /// Suggested client side action: Dial a phone number
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
      dial;

  /// Suggested client side action: Open a URI on device
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
      openUrl;

  /// Opaque payload that the Dialogflow receives in a user event
  /// when the user taps the suggested action. This data will be also
  /// forwarded to webhook to allow performing custom business logic.
  core.String postbackData;

  /// Suggested client side action: Share user location
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
      shareLocation;

  /// Text to display alongside the action.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
      core.Map _json) {
    if (_json.containsKey("dial")) {
      dial =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
              .fromJson(_json["dial"]);
    }
    if (_json.containsKey("openUrl")) {
      openUrl =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
              .fromJson(_json["openUrl"]);
    }
    if (_json.containsKey("postbackData")) {
      postbackData = _json["postbackData"];
    }
    if (_json.containsKey("shareLocation")) {
      shareLocation =
          new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
              .fromJson(_json["shareLocation"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dial != null) {
      _json["dial"] = (dial).toJson();
    }
    if (openUrl != null) {
      _json["openUrl"] = (openUrl).toJson();
    }
    if (postbackData != null) {
      _json["postbackData"] = postbackData;
    }
    if (shareLocation != null) {
      _json["shareLocation"] = (shareLocation).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Opens the user's default dialer app with the specified phone number
/// but does not dial automatically (https://goo.gl/ergbB2).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial {
  /// Required. The phone number to fill in the default dialer app.
  /// This field should be in [E.164](https://en.wikipedia.org/wiki/E.164)
  /// format. An example of a correctly formatted phone number:
  /// +15556767888.
  core.String phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
      core.Map _json) {
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    return _json;
  }
}

/// Opens the user's default web browser app to the specified uri
/// (https://goo.gl/6GLJD2). If the user has an app installed that is
/// registered as the default handler for the URL, then this app will be
/// opened instead, and its icon will be used in the suggested action UI.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri {
  /// Required. The uri to open on the user device
  core.String uri;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
      core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Opens the device's location chooser so the user can pick a location
/// to send back to the agent (https://goo.gl/GXotJW).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation {
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation.fromJson(
      core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggested reply that the user can click
/// instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event
  /// when the user taps the suggested reply. This data will be also
  /// forwarded to webhook to allow performing custom business logic.
  core.String postbackData;

  /// Suggested reply text.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
      core.Map _json) {
    if (_json.containsKey("postbackData")) {
      postbackData = _json["postbackData"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (postbackData != null) {
      _json["postbackData"] = postbackData;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Rich Business Messaging (RBM) suggestion. Suggestions allow user to
/// easily select/click a predefined response or perform an action (like
/// opening a web uri).
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion {
  /// Predefined client side actions that user can choose
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction action;

  /// Predefined replies for user to select instead of typing
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply reply;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
      core.Map _json) {
    if (_json.containsKey("action")) {
      action = new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
          .fromJson(_json["action"]);
    }
    if (_json.containsKey("reply")) {
      reply = new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
          .fromJson(_json["reply"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (reply != null) {
      _json["reply"] = (reply).toJson();
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
    if (_json.containsKey("rbmSuggestion")) {
      rbmSuggestion = (_json["rbmSuggestion"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rbmSuggestion != null) {
      _json["rbmSuggestion"] =
          rbmSuggestion.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Additional info about the select item for when it is triggered in a
/// dialog.
class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo {
  /// Required. A unique key that will be sent back to the agent if this
  /// response is given.
  core.String key;

  /// Optional. A list of synonyms that can also be used to trigger this
  /// item in dialog.
  core.List<core.String> synonyms;

  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();

  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
      core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("synonyms")) {
      synonyms = (_json["synonyms"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (synonyms != null) {
      _json["synonyms"] = synonyms;
    }
    return _json;
  }
}

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse {
  /// Optional. The text to display.
  core.String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken
  /// response to the user in the SSML format. Mutually exclusive with
  /// text_to_speech.
  core.String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the
  /// speech output. Mutually exclusive with ssml.
  core.String textToSpeech;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("displayText")) {
      displayText = _json["displayText"];
    }
    if (_json.containsKey("ssml")) {
      ssml = _json["ssml"];
    }
    if (_json.containsKey("textToSpeech")) {
      textToSpeech = _json["textToSpeech"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayText != null) {
      _json["displayText"] = displayText;
    }
    if (ssml != null) {
      _json["ssml"] = ssml;
    }
    if (textToSpeech != null) {
      _json["textToSpeech"] = textToSpeech;
    }
    return _json;
  }
}

/// The collection of simple response candidates.
/// This message in `QueryResult.fulfillment_messages` and
/// `WebhookResponse.fulfillment_messages` should contain only one
/// `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses {
  /// Required. The list of simple responses.
  core.List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>
      simpleResponses;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
      core.Map _json) {
    if (_json.containsKey("simpleResponses")) {
      simpleResponses = (_json["simpleResponses"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>(
              (value) =>
                  new GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (simpleResponses != null) {
      _json["simpleResponses"] =
          simpleResponses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The suggestion chip message that the user can tap to quickly post a reply
/// to the conversation.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestion {
  /// Required. The text shown the in the suggestion chip.
  core.String title;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestion();

  GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("suggestions")) {
      suggestions = (_json["suggestions"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>((value) =>
              new GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (suggestions != null) {
      _json["suggestions"] =
          suggestions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Plays audio from a file in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio {
  /// Required. URI to a Google Cloud Storage object containing the audio to
  /// play, e.g., "gs://bucket/object". The object must contain a single
  /// channel (mono) of linear PCM audio (2 bytes / sample) at 8kHz.
  ///
  /// This object must be readable by the `service-<Project
  /// Number>@gcp-sa-dialogflow.iam.gserviceaccount.com` service account
  /// where <Project Number> is the number of the Telephony Gateway project
  /// (usually the same as the Dialogflow agent project). If the Google Cloud
  /// Storage bucket is in the Telephony Gateway project, this permission is
  /// added by default when enabling the Dialogflow V2 API.
  ///
  /// For audio from other sources, consider using the
  /// `TelephonySynthesizeSpeech` message with SSML.
  core.String audioUri;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
      core.Map _json) {
    if (_json.containsKey("audioUri")) {
      audioUri = _json["audioUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioUri != null) {
      _json["audioUri"] = audioUri;
    }
    return _json;
  }
}

/// Synthesizes speech and plays back the synthesized audio to the caller in
/// Telephony Gateway.
///
/// Telephony Gateway takes the synthesizer settings from
/// `DetectIntentResponse.output_audio_config` which can either be set
/// at request-level or can come from the agent-level synthesizer config.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech {
  /// The SSML to be synthesized. For more information, see
  /// [SSML](https://developers.google.com/actions/reference/ssml).
  core.String ssml;

  /// The raw text to be synthesized.
  core.String text;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
      core.Map _json) {
    if (_json.containsKey("ssml")) {
      ssml = _json["ssml"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ssml != null) {
      _json["ssml"] = ssml;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Transfers the call in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall {
  /// Required. The phone number to transfer the call to
  /// in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  ///
  /// We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  core.String phoneNumber;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();

  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
      core.Map _json) {
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
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
    if (_json.containsKey("text")) {
      text = (_json["text"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Represents intent parameters.
class GoogleCloudDialogflowV2beta1IntentParameter {
  /// Optional. The default value to use when the `value` yields an empty
  /// result.
  /// Default values can be extracted from contexts by using the following
  /// syntax: `#context_name.parameter_name`.
  core.String defaultValue;

  /// Required. The name of the parameter.
  core.String displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that
  /// describes values of the parameter. If the parameter is
  /// required, this must be provided.
  core.String entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  core.bool isList;

  /// Optional. Indicates whether the parameter is required. That is,
  /// whether the intent cannot be completed without collecting the parameter
  /// value.
  core.bool mandatory;

  /// The unique identifier of this parameter.
  core.String name;

  /// Optional. The collection of prompts that the agent can present to the
  /// user in order to collect a value for the parameter.
  core.List<core.String> prompts;

  /// Optional. The definition of the parameter value. It can be:
  /// - a constant string,
  /// - a parameter value defined as `$parameter_name`,
  /// - an original parameter value defined as `$parameter_name.original`,
  /// - a parameter value from some context defined as
  ///   `#context_name.parameter_name`.
  core.String value;

  GoogleCloudDialogflowV2beta1IntentParameter();

  GoogleCloudDialogflowV2beta1IntentParameter.fromJson(core.Map _json) {
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("entityTypeDisplayName")) {
      entityTypeDisplayName = _json["entityTypeDisplayName"];
    }
    if (_json.containsKey("isList")) {
      isList = _json["isList"];
    }
    if (_json.containsKey("mandatory")) {
      mandatory = _json["mandatory"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("prompts")) {
      prompts = (_json["prompts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (entityTypeDisplayName != null) {
      _json["entityTypeDisplayName"] = entityTypeDisplayName;
    }
    if (isList != null) {
      _json["isList"] = isList;
    }
    if (mandatory != null) {
      _json["mandatory"] = mandatory;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (prompts != null) {
      _json["prompts"] = prompts;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrase {
  /// Output only. The unique identifier of this training phrase.
  core.String name;

  /// Required. The ordered list of training phrase parts.
  /// The parts are concatenated in order to form the training phrase.
  ///
  /// Note: The API does not automatically annotate training phrases like the
  /// Dialogflow Console does.
  ///
  /// Note: Do not forget to include whitespace at part boundaries,
  /// so the training phrase is well formatted when the parts are concatenated.
  ///
  /// If the training phrase does not need to be annotated with parameters,
  /// you just need a single part with only the Part.text field set.
  ///
  /// If you want to annotate the training phrase, you must create multiple
  /// parts, where the fields of each part are populated in one of two ways:
  ///
  /// -   `Part.text` is set to a part of the phrase that has no parameters.
  /// -   `Part.text` is set to a part of the phrase that you want to annotate,
  ///     and the `entity_type`, `alias`, and `user_defined` fields are all
  ///     set.
  core.List<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example was added to
  /// the intent. Each time a developer adds an existing sample by editing an
  /// intent or training, this counter is increased.
  core.int timesAddedCount;

  /// Required. The type of the training phrase.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified. This value should never be used.
  /// - "EXAMPLE" : Examples do not contain @-prefixed entity type names, but
  /// example parts
  /// can be annotated with entity types.
  /// - "TEMPLATE" : Templates are not annotated with entity types, but they can
  /// contain
  /// @-prefixed entity type names as substrings.
  /// Template mode has been deprecated. Example mode is the only supported
  /// way to create new training phrases. If you have existing training
  /// phrases that you've created in template mode, those will continue to
  /// work.
  core.String type;

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase();

  GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parts")) {
      parts = (_json["parts"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>((value) =>
              new GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("timesAddedCount")) {
      timesAddedCount = _json["timesAddedCount"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (parts != null) {
      _json["parts"] = parts.map((value) => (value).toJson()).toList();
    }
    if (timesAddedCount != null) {
      _json["timesAddedCount"] = timesAddedCount;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the
  /// annotated part of the example.
  /// This field is required for annotated parts of the training phrase.
  core.String alias;

  /// Optional. The entity type name prefixed with `@`.
  /// This field is required for annotated parts of the training phrase.
  core.String entityType;

  /// Required. The text for this part.
  core.String text;

  /// Optional. Indicates whether the text was manually annotated.
  /// This field is set to true when the Dialogflow Console is used to
  /// manually annotate the part. When creating an annotated part with the
  /// API, you must set this to true.
  core.bool userDefined;

  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();

  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
      core.Map _json) {
    if (_json.containsKey("alias")) {
      alias = _json["alias"];
    }
    if (_json.containsKey("entityType")) {
      entityType = _json["entityType"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("userDefined")) {
      userDefined = _json["userDefined"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alias != null) {
      _json["alias"] = alias;
    }
    if (entityType != null) {
      _json["entityType"] = entityType;
    }
    if (text != null) {
      _json["text"] = text;
    }
    if (userDefined != null) {
      _json["userDefined"] = userDefined;
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
    if (_json.containsKey("answers")) {
      answers = (_json["answers"] as core.List)
          .map<GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>((value) =>
              new GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (answers != null) {
      _json["answers"] = answers.map((value) => (value).toJson()).toList();
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
  /// for this conversational query.
  /// The range is from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// Note: The confidence score is likely to vary somewhat (possibly even for
  /// identical requests), as the underlying model is under constant
  /// improvement. It may be deprecated in the future. We recommend using
  /// `match_confidence_level` which should be generally more stable.
  core.double matchConfidence;

  /// The system's confidence level that this knowledge answer is a good match
  /// for this conversational query.
  /// NOTE: The confidence level for a given `<query, answer>` pair may change
  /// without notice, as it depends on models that are constantly being
  /// improved. However, it will change less frequently than the confidence
  /// score below, and should be preferred for referencing the quality of an
  /// answer.
  /// Possible string values are:
  /// - "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" : Not specified.
  /// - "LOW" : Indicates that the confidence is low.
  /// - "MEDIUM" : Indicates our confidence is medium.
  /// - "HIGH" : Indicates our confidence is high.
  core.String matchConfidenceLevel;

  /// Indicates which Knowledge Document this answer was extracted from.
  /// Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
  /// ID>/documents/<Document ID>`.
  core.String source;

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();

  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(core.Map _json) {
    if (_json.containsKey("answer")) {
      answer = _json["answer"];
    }
    if (_json.containsKey("faqQuestion")) {
      faqQuestion = _json["faqQuestion"];
    }
    if (_json.containsKey("matchConfidence")) {
      matchConfidence = _json["matchConfidence"].toDouble();
    }
    if (_json.containsKey("matchConfidenceLevel")) {
      matchConfidenceLevel = _json["matchConfidenceLevel"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (answer != null) {
      _json["answer"] = answer;
    }
    if (faqQuestion != null) {
      _json["faqQuestion"] = faqQuestion;
    }
    if (matchConfidence != null) {
      _json["matchConfidence"] = matchConfidence;
    }
    if (matchConfidenceLevel != null) {
      _json["matchConfidenceLevel"] = matchConfidenceLevel;
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}

/// Metadata in google::longrunning::Operation for Knowledge operations.
class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata {
  /// Required. The current state of this operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  core.String state;

  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();

  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Represents the contents of the original request that was passed to
/// the `[Streaming]DetectIntent` call.
class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest {
  /// Optional. This field is set to the value of the `QueryParameters.payload`
  /// field passed in the request. Some integrations that query a Dialogflow
  /// agent may provide additional information in the payload.
  ///
  /// In particular for the Telephony Gateway this field has the form:
  /// <pre>{
  ///  "telephony": {
  ///    "caller_id": "+18558363987"
  ///  }
  /// }</pre>
  /// Note: The caller ID field (`caller_id`) will be redacted for Standard
  /// Edition agents and populated with the caller ID in [E.164
  /// format](https://en.wikipedia.org/wiki/E.164) for Enterprise Edition
  /// agents.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  /// by Dialogflow-owned servers.
  core.String source;

  /// Optional. The version of the protocol used for this request.
  /// This field is AoG-specific.
  core.String version;

  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();

  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Represents the result of conversational query or event processing.
class GoogleCloudDialogflowV2beta1QueryResult {
  /// The action name from the matched intent.
  core.String action;

  /// This field is set to:
  ///
  /// - `false` if the matched intent has required parameters and not all of
  ///    the required parameter values have been collected.
  /// - `true` if all required parameter values have been collected, or if the
  ///    matched intent doesn't contain any required parameters.
  core.bool allRequiredParamsPresent;

  /// The free-form diagnostic info. For example, this field could contain
  /// webhook call latency. The string keys of the Struct's fields map can
  /// change
  /// without notice.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen.
  /// Note: This is a legacy field, `fulfillment_messages` should be preferred.
  core.String fulfillmentText;

  /// The intent that matched the conversational query. Some, not
  /// all fields are filled in this message, including but not limited to:
  /// `name`, `display_name` and `webhook_state`.
  GoogleCloudDialogflowV2beta1Intent intent;

  /// The intent detection confidence. Values range from 0.0
  /// (completely uncertain) to 1.0 (completely certain).
  /// If there are `multiple knowledge_answers` messages, this value is set to
  /// the greatest `knowledgeAnswers.match_confidence` value in the list.
  core.double intentDetectionConfidence;

  /// The result from Knowledge Connector (if any), ordered by decreasing
  /// `KnowledgeAnswers.match_confidence`.
  GoogleCloudDialogflowV2beta1KnowledgeAnswers knowledgeAnswers;

  /// The language that was triggered during intent detection.
  /// See [Language
  /// Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  core.String languageCode;

  /// The collection of output contexts. If applicable,
  /// `output_contexts.parameters` contains entries with name
  /// `<parameter name>.original` containing the original parameter values
  /// before the query.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// The collection of extracted parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// The original conversational query text:
  ///
  /// - If natural language text was provided as input, `query_text` contains
  ///   a copy of the input.
  /// - If natural language speech audio was provided as input, `query_text`
  ///   contains the speech recognition result. If speech recognizer produced
  ///   multiple alternatives, a particular one is picked.
  /// - If automatic spell correction is enabled, `query_text` will contain the
  ///   corrected user input.
  core.String queryText;

  /// The sentiment analysis result, which depends on the
  /// `sentiment_analysis_request_config` specified in the request.
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult sentimentAnalysisResult;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. The default of 0.0 is a sentinel value indicating that confidence
  /// was not set.
  ///
  /// This field is not guaranteed to be accurate or set. In particular this
  /// field isn't set for StreamingDetectIntent since the streaming endpoint has
  /// separate confidence estimates per portion of the audio in
  /// StreamingRecognitionResult.
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
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("allRequiredParamsPresent")) {
      allRequiredParamsPresent = _json["allRequiredParamsPresent"];
    }
    if (_json.containsKey("diagnosticInfo")) {
      diagnosticInfo = (_json["diagnosticInfo"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = (_json["fulfillmentMessages"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              new GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("intent")) {
      intent = new GoogleCloudDialogflowV2beta1Intent.fromJson(_json["intent"]);
    }
    if (_json.containsKey("intentDetectionConfidence")) {
      intentDetectionConfidence = _json["intentDetectionConfidence"].toDouble();
    }
    if (_json.containsKey("knowledgeAnswers")) {
      knowledgeAnswers =
          new GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(
              _json["knowledgeAnswers"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>((value) =>
              new GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters =
          (_json["parameters"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("queryText")) {
      queryText = _json["queryText"];
    }
    if (_json.containsKey("sentimentAnalysisResult")) {
      sentimentAnalysisResult =
          new GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
              _json["sentimentAnalysisResult"]);
    }
    if (_json.containsKey("speechRecognitionConfidence")) {
      speechRecognitionConfidence =
          _json["speechRecognitionConfidence"].toDouble();
    }
    if (_json.containsKey("webhookPayload")) {
      webhookPayload = (_json["webhookPayload"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("webhookSource")) {
      webhookSource = _json["webhookSource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (allRequiredParamsPresent != null) {
      _json["allRequiredParamsPresent"] = allRequiredParamsPresent;
    }
    if (diagnosticInfo != null) {
      _json["diagnosticInfo"] = diagnosticInfo;
    }
    if (fulfillmentMessages != null) {
      _json["fulfillmentMessages"] =
          fulfillmentMessages.map((value) => (value).toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json["fulfillmentText"] = fulfillmentText;
    }
    if (intent != null) {
      _json["intent"] = (intent).toJson();
    }
    if (intentDetectionConfidence != null) {
      _json["intentDetectionConfidence"] = intentDetectionConfidence;
    }
    if (knowledgeAnswers != null) {
      _json["knowledgeAnswers"] = (knowledgeAnswers).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (queryText != null) {
      _json["queryText"] = queryText;
    }
    if (sentimentAnalysisResult != null) {
      _json["sentimentAnalysisResult"] = (sentimentAnalysisResult).toJson();
    }
    if (speechRecognitionConfidence != null) {
      _json["speechRecognitionConfidence"] = speechRecognitionConfidence;
    }
    if (webhookPayload != null) {
      _json["webhookPayload"] = webhookPayload;
    }
    if (webhookSource != null) {
      _json["webhookSource"] = webhookSource;
    }
    return _json;
  }
}

/// The sentiment, such as positive/negative feeling or association, for a unit
/// of analysis, such as the query text.
class GoogleCloudDialogflowV2beta1Sentiment {
  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute
  /// magnitude of sentiment, regardless of score (positive or negative).
  core.double magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double score;

  GoogleCloudDialogflowV2beta1Sentiment();

  GoogleCloudDialogflowV2beta1Sentiment.fromJson(core.Map _json) {
    if (_json.containsKey("magnitude")) {
      magnitude = _json["magnitude"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (magnitude != null) {
      _json["magnitude"] = magnitude;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// The result of sentiment analysis as configured by
/// `sentiment_analysis_request_config`.
class GoogleCloudDialogflowV2beta1SentimentAnalysisResult {
  /// The sentiment analysis result for `query_text`.
  GoogleCloudDialogflowV2beta1Sentiment queryTextSentiment;

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult();

  GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(core.Map _json) {
    if (_json.containsKey("queryTextSentiment")) {
      queryTextSentiment = new GoogleCloudDialogflowV2beta1Sentiment.fromJson(
          _json["queryTextSentiment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (queryTextSentiment != null) {
      _json["queryTextSentiment"] = (queryTextSentiment).toJson();
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

  /// The unique identifier of detectIntent request session.
  /// Can be used to identify end-user inside webhook implementation.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`, or
  /// `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>`.
  core.String session;

  GoogleCloudDialogflowV2beta1WebhookRequest();

  GoogleCloudDialogflowV2beta1WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey("alternativeQueryResults")) {
      alternativeQueryResults = (_json["alternativeQueryResults"] as core.List)
          .map<GoogleCloudDialogflowV2beta1QueryResult>((value) =>
              new GoogleCloudDialogflowV2beta1QueryResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("originalDetectIntentRequest")) {
      originalDetectIntentRequest =
          new GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
              _json["originalDetectIntentRequest"]);
    }
    if (_json.containsKey("queryResult")) {
      queryResult = new GoogleCloudDialogflowV2beta1QueryResult.fromJson(
          _json["queryResult"]);
    }
    if (_json.containsKey("responseId")) {
      responseId = _json["responseId"];
    }
    if (_json.containsKey("session")) {
      session = _json["session"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternativeQueryResults != null) {
      _json["alternativeQueryResults"] =
          alternativeQueryResults.map((value) => (value).toJson()).toList();
    }
    if (originalDetectIntentRequest != null) {
      _json["originalDetectIntentRequest"] =
          (originalDetectIntentRequest).toJson();
    }
    if (queryResult != null) {
      _json["queryResult"] = (queryResult).toJson();
    }
    if (responseId != null) {
      _json["responseId"] = responseId;
    }
    if (session != null) {
      _json["session"] = session;
    }
    return _json;
  }
}

/// The response message for a webhook call.
class GoogleCloudDialogflowV2beta1WebhookResponse {
  /// Optional. Indicates that this intent ends an interaction. Some
  /// integrations
  /// (e.g., Actions on Google or Dialogflow phone gateway) use this information
  /// to close interaction with an end user. Default is false.
  core.bool endInteraction;

  /// Optional. Makes the platform immediately invoke another `DetectIntent`
  /// call
  /// internally with the specified event as input.
  /// When this field is set, Dialogflow ignores the `fulfillment_text`,
  /// `fulfillment_messages`, and `payload` fields.
  GoogleCloudDialogflowV2beta1EventInput followupEventInput;

  /// Optional. The collection of rich messages to present to the user. This
  /// value is passed directly to `QueryResult.fulfillment_messages`.
  core.List<GoogleCloudDialogflowV2beta1IntentMessage> fulfillmentMessages;

  /// Optional. The text to be shown on the screen. This value is passed
  /// directly
  /// to `QueryResult.fulfillment_text`.
  core.String fulfillmentText;

  /// Optional. The collection of output contexts. This value is passed directly
  /// to `QueryResult.output_contexts`.
  core.List<GoogleCloudDialogflowV2beta1Context> outputContexts;

  /// Optional. This value is passed directly to `QueryResult.webhook_payload`.
  /// See the related `fulfillment_messages[i].payload field`, which may be used
  /// as an alternative to this field.
  ///
  /// This field can be used for Actions on Google responses.
  /// It should have a structure similar to the JSON message shown here. For
  /// more
  /// information, see
  /// [Actions on Google Webhook
  /// Format](https://developers.google.com/actions/dialogflow/webhook)
  /// <pre>{
  ///   "google": {
  ///     "expectUserResponse": true,
  ///     "richResponse": {
  ///       "items": [
  ///         {
  ///           "simpleResponse": {
  ///             "textToSpeech": "this is a simple response"
  ///           }
  ///         }
  ///       ]
  ///     }
  ///   }
  /// }</pre>
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. This value is passed directly to `QueryResult.webhook_source`.
  core.String source;

  GoogleCloudDialogflowV2beta1WebhookResponse();

  GoogleCloudDialogflowV2beta1WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey("endInteraction")) {
      endInteraction = _json["endInteraction"];
    }
    if (_json.containsKey("followupEventInput")) {
      followupEventInput = new GoogleCloudDialogflowV2beta1EventInput.fromJson(
          _json["followupEventInput"]);
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = (_json["fulfillmentMessages"] as core.List)
          .map<GoogleCloudDialogflowV2beta1IntentMessage>((value) =>
              new GoogleCloudDialogflowV2beta1IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = (_json["outputContexts"] as core.List)
          .map<GoogleCloudDialogflowV2beta1Context>((value) =>
              new GoogleCloudDialogflowV2beta1Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endInteraction != null) {
      _json["endInteraction"] = endInteraction;
    }
    if (followupEventInput != null) {
      _json["followupEventInput"] = (followupEventInput).toJson();
    }
    if (fulfillmentMessages != null) {
      _json["fulfillmentMessages"] =
          fulfillmentMessages.map((value) => (value).toJson()).toList();
    }
    if (fulfillmentText != null) {
      _json["fulfillmentText"] = fulfillmentText;
    }
    if (outputContexts != null) {
      _json["outputContexts"] =
          outputContexts.map((value) => (value).toJson()).toList();
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
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
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair
/// of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the
/// <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
/// standard</a>. Values must be within normalized ranges.
class GoogleTypeLatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  GoogleTypeLatLng();

  GoogleTypeLatLng.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"].toDouble();
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}
