// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dialogflow.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dialogflow/v2beta1';

/// An end-to-end development suite for conversational interfaces (e.g.,
/// chatbots, voice-powered apps and devices).
class DialogflowApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DialogflowApi(http.Client client,
      {core.String rootUrl: "https://dialogflow.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentResourceApi get agent =>
      new ProjectsAgentResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      new ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

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
  /// Completes with a [Agent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Agent> getAgent(core.String parent, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Agent.fromJson(data));
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
  ///
  /// Operation <response: ExportAgentResponse,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> export(ExportAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Imports the specified agent from a ZIP file.
  ///
  /// Uploads new intents and entity types without deleting the existing ones.
  /// Intents and entity types with the same name are replaced with the new
  /// versions from ImportAgentRequest.
  ///
  ///
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> import(ImportAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Restores the specified agent from a ZIP file.
  ///
  /// Replaces the current agent version with a new one. All the intents and
  /// entity types in the older version are deleted.
  ///
  ///
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> restore(
      RestoreAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:restore';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// Completes with a [SearchAgentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAgentsResponse> search(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchAgentsResponse.fromJson(data));
  }

  /// Trains the specified agent.
  ///
  ///
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> train(TrainAgentRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/agent:train';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchDelete(
      BatchDeleteEntityTypesRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates/Creates multiple entity types in the specified agent.
  ///
  /// Operation <response: BatchUpdateEntityTypesResponse,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchUpdate(
      BatchUpdateEntityTypesRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityType> create(EntityType request, core.String parent,
      {core.String languageCode, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EntityType.fromJson(data));
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityType> get(core.String name,
      {core.String languageCode, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EntityType.fromJson(data));
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
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEntityTypesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String languageCode,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListEntityTypesResponse.fromJson(data));
  }

  /// Updates the specified entity type.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required for all methods except `create` (`create` populates the
  /// name
  /// automatically.
  /// The unique identifier of the entity type. Format:
  /// `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
  ///
  /// [languageCode] - Optional. The language of entity synonyms defined in
  /// `entity_type`. If not
  /// specified, the agent's default language is used.
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityType> patch(EntityType request, core.String name,
      {core.String languageCode, core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EntityType.fromJson(data));
  }
}

class ProjectsAgentEntityTypesEntitiesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentEntityTypesEntitiesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new entities in the specified entity type (extends the
  /// existing collection of entries).
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchCreate(
      BatchCreateEntitiesRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchCreate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes entities in the specified entity type.
  ///
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchDelete(
      BatchDeleteEntitiesRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates entities in the specified entity type (replaces the existing
  /// collection of entries).
  ///
  /// Operation <response: google.protobuf.Empty,
  ///            metadata: google.protobuf.Struct>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entity type to update the entities
  /// in. Format:
  /// `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/entityTypes/[^/]+$".
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
  async.Future<Operation> batchUpdate(
      BatchUpdateEntitiesRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entities:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchDelete(
      BatchDeleteIntentsRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> batchUpdate(
      BatchUpdateIntentsRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  /// used. [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Intent> create(Intent request, core.String parent,
      {core.String intentView, core.String languageCode, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Intent.fromJson(data));
  }

  /// Deletes the specified intent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the intent to delete.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  /// Value must have pattern "^projects/[^/]+/agent/intents/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Intent> get(core.String name,
      {core.String intentView, core.String languageCode, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Intent.fromJson(data));
  }

  /// Returns the list of all intents in the specified agent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The agent to list all intents from.
  /// Format: `projects/<Project ID>/agent`.
  /// Value must have pattern "^projects/[^/]+/agent$".
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
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent before they can be used.
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
  /// Completes with a [ListIntentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIntentsResponse> list(core.String parent,
      {core.String intentView,
      core.String languageCode,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (intentView != null) {
      _queryParams["intentView"] = [intentView];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/intents';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListIntentsResponse.fromJson(data));
  }

  /// Updates the specified intent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required for all methods except `create` (`create` populates the
  /// name
  /// automatically.
  /// The unique identifier of this intent.
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
  /// used. [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Intent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Intent> patch(Intent request, core.String name,
      {core.String intentView,
      core.String languageCode,
      core.String updateMask,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Intent.fromJson(data));
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> deleteContexts(core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// `projects/<Project ID>/agent/sessions/<Session ID>`.
  /// It's up to the API caller to choose an appropriate session ID. It can be
  /// a random number or some type of user identifier (preferably hashed).
  /// The length of the session ID must not exceed 36 bytes.
  /// Value must have pattern "^projects/[^/]+/agent/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetectIntentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetectIntentResponse> detectIntent(
      DetectIntentRequest request, core.String session,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':detectIntent';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DetectIntentResponse.fromJson(data));
  }
}

class ProjectsAgentSessionsContextsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsContextsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a context.
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
  /// Completes with a [Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Context> create(Context request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Context.fromJson(data));
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// Completes with a [Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Context> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Context.fromJson(data));
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
  /// Completes with a [ListContextsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContextsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/contexts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListContextsResponse.fromJson(data));
  }

  /// Updates the specified context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
  /// Note: The Context ID is always converted to lowercase.
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/contexts/[^/]+$".
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Context> patch(Context request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Context.fromJson(data));
  }
}

class ProjectsAgentSessionsEntityTypesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAgentSessionsEntityTypesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a session entity type.
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
  /// Completes with a [SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionEntityType> create(
      SessionEntityType request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SessionEntityType.fromJson(data));
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// Completes with a [SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionEntityType> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SessionEntityType.fromJson(data));
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
  /// Completes with a [ListSessionEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSessionEntityTypesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v2beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/entityTypes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListSessionEntityTypesResponse.fromJson(data));
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
  /// Value must have pattern
  /// "^projects/[^/]+/agent/sessions/[^/]+/entityTypes/[^/]+$".
  ///
  /// [updateMask] - Optional. The mask to control which fields get updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SessionEntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SessionEntityType> patch(
      SessionEntityType request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SessionEntityType.fromJson(data));
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// Represents a conversational agent.
class Agent {
  /// Optional. The URI of the agent's avatar.
  /// Avatars are used throughout API.AI console and in the self-hosted
  /// [Web Demo](https://dialogflow.com/docs/integrations/web-demo) integration.
  core.String avatarUri;

  /// Optional. To filter out false positive results and still get variety in
  /// matched natural language inputs for your agent, you can tune the machine
  /// learning classification threshold. If the returned score value is less
  /// than
  /// the threshold value, then a fallback intent is be triggered or, if there
  /// are no fallback intents defined, no intent will be triggered. The score
  /// values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// If set to 0.0, the default of 0.3 is used.
  core.double classificationThreshold;

  /// Required. The default language of the agent as a language tag. See
  /// [Language Support](https://dialogflow.com/docs/reference/language) for a
  /// list of the currently supported language codes.
  /// This field cannot be set by the `Update` method.
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

  /// Required. The time zone of this agent from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris.
  core.String timeZone;

  Agent();

  Agent.fromJson(core.Map _json) {
    if (_json.containsKey("avatarUri")) {
      avatarUri = _json["avatarUri"];
    }
    if (_json.containsKey("classificationThreshold")) {
      classificationThreshold = _json["classificationThreshold"];
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
      supportedLanguageCodes = _json["supportedLanguageCodes"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

/// The request message for EntityTypes.BatchCreateEntities.
class BatchCreateEntitiesRequest {
  /// Required. The collection of entities to create.
  core.List<EntityTypeEntity> entities;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  core.String languageCode;

  BatchCreateEntitiesRequest();

  BatchCreateEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = _json["entities"]
          .map((value) => new EntityTypeEntity.fromJson(value))
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
class BatchDeleteEntitiesRequest {
  /// Required. The canonical `values` of the entities to delete. Note that
  /// these are not fully-qualified names, i.e. they don't start with
  /// `projects/<Project ID>`.
  core.List<core.String> entityValues;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  core.String languageCode;

  BatchDeleteEntitiesRequest();

  BatchDeleteEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityValues")) {
      entityValues = _json["entityValues"];
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
class BatchDeleteEntityTypesRequest {
  /// Required. The names entity types to delete. All names must point to the
  /// same agent as `parent`.
  core.List<core.String> entityTypeNames;

  BatchDeleteEntityTypesRequest();

  BatchDeleteEntityTypesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypeNames")) {
      entityTypeNames = _json["entityTypeNames"];
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
class BatchDeleteIntentsRequest {
  /// Required. The collection of intents to delete. Only intent `name` must be
  /// filled in.
  core.List<Intent> intents;

  BatchDeleteIntentsRequest();

  BatchDeleteIntentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents =
          _json["intents"].map((value) => new Intent.fromJson(value)).toList();
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

/// The response message for EntityTypes.BatchCreateEntities.
class BatchUpdateEntitiesRequest {
  /// Required. The collection of new entities to replace the existing entities.
  core.List<EntityTypeEntity> entities;

  /// Optional. The language of entity synonyms defined in `entities`. If not
  /// specified, the agent's default language is used.
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  BatchUpdateEntitiesRequest();

  BatchUpdateEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = _json["entities"]
          .map((value) => new EntityTypeEntity.fromJson(value))
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
class BatchUpdateEntityTypesRequest {
  /// The collection of entity type to update or create.
  EntityTypeBatch entityTypeBatchInline;

  /// Warning: Importing entity types from a URI is not implemented yet.
  /// This feature is coming soon.
  /// The URI to a Google Cloud Storage file containing entity types to update
  /// or create. The file format can either be a serialized proto (of
  /// EntityBatch type) or a JSON object. Note: The URI must start with
  /// "gs://".
  core.String entityTypeBatchUri;

  /// Optional. The language of entity synonyms defined in `entity_types`. If
  /// not
  /// specified, the agent's default language is used.
  /// [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  BatchUpdateEntityTypesRequest();

  BatchUpdateEntityTypesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypeBatchInline")) {
      entityTypeBatchInline =
          new EntityTypeBatch.fromJson(_json["entityTypeBatchInline"]);
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
class BatchUpdateEntityTypesResponse {
  /// The collection of updated or created entity types.
  core.List<EntityType> entityTypes;

  BatchUpdateEntityTypesResponse();

  BatchUpdateEntityTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypes")) {
      entityTypes = _json["entityTypes"]
          .map((value) => new EntityType.fromJson(value))
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
class BatchUpdateIntentsRequest {
  /// The collection of intents to update or create.
  IntentBatch intentBatchInline;

  /// Warning: Importing intents from a URI is not implemented yet.
  /// This feature is coming soon.
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
  /// used. [More than a dozen
  /// languages](https://dialogflow.com/docs/reference/language) are supported.
  /// Note: languages must be enabled in the agent, before they can be used.
  core.String languageCode;

  /// Optional. The mask to control which fields get updated.
  core.String updateMask;

  BatchUpdateIntentsRequest();

  BatchUpdateIntentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("intentBatchInline")) {
      intentBatchInline = new IntentBatch.fromJson(_json["intentBatchInline"]);
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
class BatchUpdateIntentsResponse {
  /// The collection of updated or created intents.
  core.List<Intent> intents;

  BatchUpdateIntentsResponse();

  BatchUpdateIntentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents =
          _json["intents"].map((value) => new Intent.fromJson(value)).toList();
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
class Context {
  /// Optional. The number of conversational query requests after which the
  /// context expires. If set to `0` (the default) the context expires
  /// immediately. Contexts expire automatically after 10 minutes even if there
  /// are no matching queries.
  core.int lifespanCount;

  /// Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
  /// Note: The Context ID is always converted to lowercase.
  core.String name;

  /// Optional. The collection of parameters associated with this context.
  /// Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters)
  /// for
  /// syntax.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  Context();

  Context.fromJson(core.Map _json) {
    if (_json.containsKey("lifespanCount")) {
      lifespanCount = _json["lifespanCount"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
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
class DetectIntentRequest {
  /// Optional. The natural language speech audio to be processed. This field
  /// should be populated iff `query_input` is set to an input audio config.
  /// A single request can contain up to 1 minute of speech audio data.
  core.String inputAudio;
  core.List<core.int> get inputAudioAsBytes {
    return convert.BASE64.decode(inputAudio);
  }

  void set inputAudioAsBytes(core.List<core.int> _bytes) {
    inputAudio =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Required. The input specification. It can be set to:
  ///
  /// 1.  an audio config
  /// which instructs the speech recognizer how to process the speech audio,
  ///
  /// 2.  a conversational query in the form of text, or
  ///
  /// 3.  an event that specifies which intent to trigger.
  QueryInput queryInput;

  /// Optional. The parameters of this query.
  QueryParameters queryParams;

  DetectIntentRequest();

  DetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inputAudio")) {
      inputAudio = _json["inputAudio"];
    }
    if (_json.containsKey("queryInput")) {
      queryInput = new QueryInput.fromJson(_json["queryInput"]);
    }
    if (_json.containsKey("queryParams")) {
      queryParams = new QueryParameters.fromJson(_json["queryParams"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputAudio != null) {
      _json["inputAudio"] = inputAudio;
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
class DetectIntentResponse {
  /// The results of the conversational query or event processing.
  QueryResult queryResult;

  /// The unique identifier of the response. It can be used to
  /// locate a response in the training example set or for reporting issues.
  core.String responseId;

  /// Specifies the status of the webhook request. `webhook_status`
  /// is never populated in webhook requests.
  Status webhookStatus;

  DetectIntentResponse();

  DetectIntentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("queryResult")) {
      queryResult = new QueryResult.fromJson(_json["queryResult"]);
    }
    if (_json.containsKey("responseId")) {
      responseId = _json["responseId"];
    }
    if (_json.containsKey("webhookStatus")) {
      webhookStatus = new Status.fromJson(_json["webhookStatus"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents an entity type.
/// Entity types serve as a tool for extracting parameter values from natural
/// language queries.
class EntityType {
  /// Optional. Indicates whether the entity type can be automatically
  /// expanded.
  /// Possible string values are:
  /// - "AUTO_EXPANSION_MODE_UNSPECIFIED" : Auto expansion disabled for the
  /// entity.
  /// - "AUTO_EXPANSION_MODE_DEFAULT" : Allows an agent to recognize values that
  /// have not been explicitly
  /// listed in the entity.
  core.String autoExpansionMode;

  /// Required. The name of the entity.
  core.String displayName;

  /// Optional. The collection of entities associated with the entity type.
  core.List<EntityTypeEntity> entities;

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

  /// Required for all methods except `create` (`create` populates the name
  /// automatically.
  /// The unique identifier of the entity type. Format:
  /// `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
  core.String name;

  EntityType();

  EntityType.fromJson(core.Map _json) {
    if (_json.containsKey("autoExpansionMode")) {
      autoExpansionMode = _json["autoExpansionMode"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("entities")) {
      entities = _json["entities"]
          .map((value) => new EntityTypeEntity.fromJson(value))
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
class EntityTypeBatch {
  /// A collection of entity types.
  core.List<EntityType> entityTypes;

  EntityTypeBatch();

  EntityTypeBatch.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypes")) {
      entityTypes = _json["entityTypes"]
          .map((value) => new EntityType.fromJson(value))
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

/// Optional. Represents an entity.
class EntityTypeEntity {
  /// Required. A collection of synonyms. For `KIND_LIST` entity types this
  /// must contain exactly one synonym equal to `value`.
  core.List<core.String> synonyms;

  /// Required.
  /// For `KIND_MAP` entity types:
  ///   A canonical name to be used in place of synonyms.
  /// For `KIND_LIST` entity types:
  ///   A string that can contain references to other entity types (with or
  ///   without aliases).
  core.String value;

  EntityTypeEntity();

  EntityTypeEntity.fromJson(core.Map _json) {
    if (_json.containsKey("synonyms")) {
      synonyms = _json["synonyms"];
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
/// language input. For instance, input `<event: { name: “welcome_event”,
/// parameters: { name: “Sam” } }>` can trigger a personalized welcome response.
/// The parameter `name` may be used by the agent in the response:
/// `“Hello #welcome_event.name! What can I do for you today?”`.
class EventInput {
  /// Required. The language of this query. See [Language
  /// Support](https://dialogflow.com/docs/languages) for a list of the
  /// currently supported language codes. Note that queries in the same session
  /// do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The unique identifier of the event.
  core.String name;

  /// Optional. The collection of parameters associated with the event.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  EventInput();

  EventInput.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
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
class ExportAgentRequest {
  /// Warning: Exporting agents to a URI is not implemented yet.
  /// This feature is coming soon.
  ///
  /// Optional. The Google Cloud Storage URI to export the agent to.
  /// Note: The URI must start with
  /// "gs://". If left unspecified, the serialized agent is returned inline.
  core.String agentUri;

  ExportAgentRequest();

  ExportAgentRequest.fromJson(core.Map _json) {
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
class ExportAgentResponse {
  /// The exported agent.
  ///
  /// Example for how to export an agent to a zip file via a command line:
  ///
  /// curl \
  /// 'https://dialogflow.googleapis.com/v2beta1/projects/<project_name>/agent:export'\
  ///   -X POST \
  ///   -H 'Authorization: Bearer '$(gcloud auth print-access-token) \
  ///   -H 'Accept: application/json' \
  ///   -H 'Content-Type: application/json' \
  ///   --compressed \
  ///   --data-binary '{}' \
  /// | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)". * / \1/' \
  /// | base64 --decode > <agent zip file>
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.BASE64.decode(agentContent);
  }

  void set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The URI to a file containing the exported agent. This field is populated
  /// only if `agent_uri` is specified in `ExportAgentRequest`.
  core.String agentUri;

  ExportAgentResponse();

  ExportAgentResponse.fromJson(core.Map _json) {
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
class ImportAgentRequest {
  /// The agent to import.
  ///
  /// Example for how to import an agent via the command line:
  ///
  /// curl \
  /// 'https://dialogflow.googleapis.com/v2beta1/projects/<project_name>/agent:import\
  ///    -X POST \
  ///    -H 'Authorization: Bearer '$(gcloud auth print-access-token) \
  ///    -H 'Accept: application/json' \
  ///    -H 'Content-Type: application/json' \
  ///    --compressed \
  ///    --data-binary "{
  ///       'agentContent': '$(cat <agent zip file> | base64 -w 0)'
  ///    }"
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.BASE64.decode(agentContent);
  }

  void set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Warning: Importing agents from a URI is not implemented yet.
  /// This feature is coming soon.
  ///
  /// The URI to a Google Cloud Storage file containing the agent to import.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  ImportAgentRequest();

  ImportAgentRequest.fromJson(core.Map _json) {
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
class InputAudioConfig {
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
  /// Support](https://dialogflow.com/docs/languages) for a list of the
  /// currently supported language codes. Note that queries in the same session
  /// do not necessarily need to specify the same language.
  core.String languageCode;

  /// Optional. The collection of phrase hints which are used to boost accuracy
  /// of speech recognition.
  /// Refer to [Cloud Speech API
  /// documentation](/speech/docs/basics#phrase-hints)
  /// for more details.
  core.List<core.String> phraseHints;

  /// Required. Sample rate (in Hertz) of the audio content sent in the query.
  /// Refer to [Cloud Speech API documentation](/speech/docs/basics) for more
  /// details.
  core.int sampleRateHertz;

  InputAudioConfig();

  InputAudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey("audioEncoding")) {
      audioEncoding = _json["audioEncoding"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("phraseHints")) {
      phraseHints = _json["phraseHints"];
    }
    if (_json.containsKey("sampleRateHertz")) {
      sampleRateHertz = _json["sampleRateHertz"];
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
    if (phraseHints != null) {
      _json["phraseHints"] = phraseHints;
    }
    if (sampleRateHertz != null) {
      _json["sampleRateHertz"] = sampleRateHertz;
    }
    return _json;
  }
}

/// Represents an intent.
/// Intents convert a number of user expressions or patterns into an action. An
/// action is an extraction of a user command or sentence semantics.
class Intent {
  /// Optional. The name of the action associated with the intent.
  core.String action;

  /// Optional. The list of platforms for which the first response will be
  /// taken from among the messages assigned to the DEFAULT_PLATFORM.
  core.List<core.String> defaultResponsePlatforms;

  /// Required. The name of this intent.
  core.String displayName;

  /// Optional. The collection of event names that trigger the intent.
  /// If the collection of input contexts is not empty, all of the contexts must
  /// be present in the active user session for an event to trigger this intent.
  core.List<core.String> events;

  /// Optional. Collection of information about all followup intents that have
  /// name of this intent as a root_name.
  core.List<IntentFollowupIntentInfo> followupIntentInfo;

  /// Optional. The list of context names required for this intent to be
  /// triggered.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<core.String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  core.bool isFallback;

  /// Optional. The collection of rich messages corresponding to the
  /// `Response` field in API.AI console.
  core.List<IntentMessage> messages;

  /// Optional. Indicates whether Machine Learning is enabled for the intent.
  /// Note: If `ml_enabled` setting is set to false, then this intent is not
  /// taken into account during inference in `ML ONLY` match mode. Also,
  /// auto-markup in the UI is turned off.
  core.bool mlEnabled;

  /// Required for all methods except `create` (`create` populates the name
  /// automatically.
  /// The unique identifier of this intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String name;

  /// Optional. The collection of contexts that are activated when the intent
  /// is matched. Context messages in this collection should not set the
  /// parameters field. Setting the `lifespan_count` to 0 will reset the context
  /// when the intent is matched.
  /// Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
  core.List<Context> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  core.List<IntentParameter> parameters;

  /// The unique identifier of the parent intent in the chain of followup
  /// intents.
  /// It identifies the parent followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher
  /// priorities. Zero or negative numbers mean that the intent is disabled.
  core.int priority;

  /// Optional. Indicates whether to delete all contexts in the current
  /// session when this intent is matched.
  core.bool resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents.
  /// It identifies the correct followup intents chain for this intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String rootFollowupIntentName;

  /// Optional. The collection of examples/templates that the agent is
  /// trained on.
  core.List<IntentTrainingPhrase> trainingPhrases;

  /// Required. Indicates whether webhooks are enabled for the intent.
  /// Possible string values are:
  /// - "WEBHOOK_STATE_UNSPECIFIED" : Webhook is disabled in the agent and in
  /// the intent.
  /// - "WEBHOOK_STATE_ENABLED" : Webhook is enabled in the agent and in the
  /// intent.
  /// - "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" : Webhook is enabled in the
  /// agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  core.String webhookState;

  Intent();

  Intent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("defaultResponsePlatforms")) {
      defaultResponsePlatforms = _json["defaultResponsePlatforms"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("events")) {
      events = _json["events"];
    }
    if (_json.containsKey("followupIntentInfo")) {
      followupIntentInfo = _json["followupIntentInfo"]
          .map((value) => new IntentFollowupIntentInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("inputContextNames")) {
      inputContextNames = _json["inputContextNames"];
    }
    if (_json.containsKey("isFallback")) {
      isFallback = _json["isFallback"];
    }
    if (_json.containsKey("messages")) {
      messages = _json["messages"]
          .map((value) => new IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mlEnabled")) {
      mlEnabled = _json["mlEnabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = _json["outputContexts"]
          .map((value) => new Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"]
          .map((value) => new IntentParameter.fromJson(value))
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
      trainingPhrases = _json["trainingPhrases"]
          .map((value) => new IntentTrainingPhrase.fromJson(value))
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

/// This message is a wrapper around a collection of intents.
class IntentBatch {
  /// A collection of intents.
  core.List<Intent> intents;

  IntentBatch();

  IntentBatch.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents =
          _json["intents"].map((value) => new Intent.fromJson(value)).toList();
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
class IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String followupIntentName;

  /// The unique identifier of the followup intent parent.
  /// Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
  core.String parentFollowupIntentName;

  IntentFollowupIntentInfo();

  IntentFollowupIntentInfo.fromJson(core.Map _json) {
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

/// Corresponds to the `Response` field in API.AI console.
class IntentMessage {
  /// The basic card response for Actions on Google.
  IntentMessageBasicCard basicCard;

  /// The card response.
  IntentMessageCard card;

  /// The carousel card response for Actions on Google.
  IntentMessageCarouselSelect carouselSelect;

  /// The image response.
  IntentMessageImage image;

  /// The link out suggestion chip for Actions on Google.
  IntentMessageLinkOutSuggestion linkOutSuggestion;

  /// The list card response for Actions on Google.
  IntentMessageListSelect listSelect;

  /// The response containing a custom payload.
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
  core.String platform;

  /// The quick replies response.
  IntentMessageQuickReplies quickReplies;

  /// The voice and text-only responses for Actions on Google.
  IntentMessageSimpleResponses simpleResponses;

  /// The suggestion chips for Actions on Google.
  IntentMessageSuggestions suggestions;

  /// The text response.
  IntentMessageText text;

  IntentMessage();

  IntentMessage.fromJson(core.Map _json) {
    if (_json.containsKey("basicCard")) {
      basicCard = new IntentMessageBasicCard.fromJson(_json["basicCard"]);
    }
    if (_json.containsKey("card")) {
      card = new IntentMessageCard.fromJson(_json["card"]);
    }
    if (_json.containsKey("carouselSelect")) {
      carouselSelect =
          new IntentMessageCarouselSelect.fromJson(_json["carouselSelect"]);
    }
    if (_json.containsKey("image")) {
      image = new IntentMessageImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("linkOutSuggestion")) {
      linkOutSuggestion = new IntentMessageLinkOutSuggestion.fromJson(
          _json["linkOutSuggestion"]);
    }
    if (_json.containsKey("listSelect")) {
      listSelect = new IntentMessageListSelect.fromJson(_json["listSelect"]);
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
    if (_json.containsKey("quickReplies")) {
      quickReplies =
          new IntentMessageQuickReplies.fromJson(_json["quickReplies"]);
    }
    if (_json.containsKey("simpleResponses")) {
      simpleResponses =
          new IntentMessageSimpleResponses.fromJson(_json["simpleResponses"]);
    }
    if (_json.containsKey("suggestions")) {
      suggestions = new IntentMessageSuggestions.fromJson(_json["suggestions"]);
    }
    if (_json.containsKey("text")) {
      text = new IntentMessageText.fromJson(_json["text"]);
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
class IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  core.List<IntentMessageBasicCardButton> buttons;

  /// Required, unless image is present. The body text of the card.
  core.String formattedText;

  /// Optional. The image for the card.
  IntentMessageImage image;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  IntentMessageBasicCard();

  IntentMessageBasicCard.fromJson(core.Map _json) {
    if (_json.containsKey("buttons")) {
      buttons = _json["buttons"]
          .map((value) => new IntentMessageBasicCardButton.fromJson(value))
          .toList();
    }
    if (_json.containsKey("formattedText")) {
      formattedText = _json["formattedText"];
    }
    if (_json.containsKey("image")) {
      image = new IntentMessageImage.fromJson(_json["image"]);
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
class IntentMessageBasicCardButton {
  /// Required. Action to take when a user taps on the button.
  IntentMessageBasicCardButtonOpenUriAction openUriAction;

  /// Required. The title of the button.
  core.String title;

  IntentMessageBasicCardButton();

  IntentMessageBasicCardButton.fromJson(core.Map _json) {
    if (_json.containsKey("openUriAction")) {
      openUriAction = new IntentMessageBasicCardButtonOpenUriAction.fromJson(
          _json["openUriAction"]);
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
class IntentMessageBasicCardButtonOpenUriAction {
  /// Required. The HTTP or HTTPS scheme URI.
  core.String uri;

  IntentMessageBasicCardButtonOpenUriAction();

  IntentMessageBasicCardButtonOpenUriAction.fromJson(core.Map _json) {
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
class IntentMessageCard {
  /// Optional. The collection of card buttons.
  core.List<IntentMessageCardButton> buttons;

  /// Optional. The public URI to an image file for the card.
  core.String imageUri;

  /// Optional. The subtitle of the card.
  core.String subtitle;

  /// Optional. The title of the card.
  core.String title;

  IntentMessageCard();

  IntentMessageCard.fromJson(core.Map _json) {
    if (_json.containsKey("buttons")) {
      buttons = _json["buttons"]
          .map((value) => new IntentMessageCardButton.fromJson(value))
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
class IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to
  /// open.
  core.String postback;

  /// Optional. The text to show on the button.
  core.String text;

  IntentMessageCardButton();

  IntentMessageCardButton.fromJson(core.Map _json) {
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
class IntentMessageCarouselSelect {
  /// Required. Carousel items.
  core.List<IntentMessageCarouselSelectItem> items;

  IntentMessageCarouselSelect();

  IntentMessageCarouselSelect.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"]
          .map((value) => new IntentMessageCarouselSelectItem.fromJson(value))
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
class IntentMessageCarouselSelectItem {
  /// Optional. The body text of the card.
  core.String description;

  /// Optional. The image to display.
  IntentMessageImage image;

  /// Required. Additional info about the option item.
  IntentMessageSelectItemInfo info;

  /// Required. Title of the carousel item.
  core.String title;

  IntentMessageCarouselSelectItem();

  IntentMessageCarouselSelectItem.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new IntentMessageImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("info")) {
      info = new IntentMessageSelectItemInfo.fromJson(_json["info"]);
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
class IntentMessageImage {
  /// Optional. A text description of the image to be used for accessibility,
  /// e.g., screen readers.
  core.String accessibilityText;

  /// Optional. The public URI to an image file.
  core.String imageUri;

  IntentMessageImage();

  IntentMessageImage.fromJson(core.Map _json) {
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
class IntentMessageLinkOutSuggestion {
  /// Required. The name of the app or site this chip is linking to.
  core.String destinationName;

  /// Required. The URI of the app or site to open when the user taps the
  /// suggestion chip.
  core.String uri;

  IntentMessageLinkOutSuggestion();

  IntentMessageLinkOutSuggestion.fromJson(core.Map _json) {
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
class IntentMessageListSelect {
  /// Required. List items.
  core.List<IntentMessageListSelectItem> items;

  /// Optional. The overall title of the list.
  core.String title;

  IntentMessageListSelect();

  IntentMessageListSelect.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"]
          .map((value) => new IntentMessageListSelectItem.fromJson(value))
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
class IntentMessageListSelectItem {
  /// Optional. The main text describing the item.
  core.String description;

  /// Optional. The image to display.
  IntentMessageImage image;

  /// Required. Additional information about this option.
  IntentMessageSelectItemInfo info;

  /// Required. The title of the list item.
  core.String title;

  IntentMessageListSelectItem();

  IntentMessageListSelectItem.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new IntentMessageImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("info")) {
      info = new IntentMessageSelectItemInfo.fromJson(_json["info"]);
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
class IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  core.List<core.String> quickReplies;

  /// Optional. The title of the collection of quick replies.
  core.String title;

  IntentMessageQuickReplies();

  IntentMessageQuickReplies.fromJson(core.Map _json) {
    if (_json.containsKey("quickReplies")) {
      quickReplies = _json["quickReplies"];
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
class IntentMessageSelectItemInfo {
  /// Required. A unique key that will be sent back to the agent if this
  /// response is given.
  core.String key;

  /// Optional. A list of synonyms that can also be used to trigger this
  /// item in dialog.
  core.List<core.String> synonyms;

  IntentMessageSelectItemInfo();

  IntentMessageSelectItemInfo.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("synonyms")) {
      synonyms = _json["synonyms"];
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
class IntentMessageSimpleResponse {
  /// Optional. The text to display.
  core.String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken
  /// response to the user in the SSML format. Mutually exclusive with
  /// text_to_speech.
  core.String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the
  /// speech output. Mutually exclusive with ssml.
  core.String textToSpeech;

  IntentMessageSimpleResponse();

  IntentMessageSimpleResponse.fromJson(core.Map _json) {
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
class IntentMessageSimpleResponses {
  /// Required. The list of simple responses.
  core.List<IntentMessageSimpleResponse> simpleResponses;

  IntentMessageSimpleResponses();

  IntentMessageSimpleResponses.fromJson(core.Map _json) {
    if (_json.containsKey("simpleResponses")) {
      simpleResponses = _json["simpleResponses"]
          .map((value) => new IntentMessageSimpleResponse.fromJson(value))
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
class IntentMessageSuggestion {
  /// Required. The text shown the in the suggestion chip.
  core.String title;

  IntentMessageSuggestion();

  IntentMessageSuggestion.fromJson(core.Map _json) {
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
class IntentMessageSuggestions {
  /// Required. The list of suggested replies.
  core.List<IntentMessageSuggestion> suggestions;

  IntentMessageSuggestions();

  IntentMessageSuggestions.fromJson(core.Map _json) {
    if (_json.containsKey("suggestions")) {
      suggestions = _json["suggestions"]
          .map((value) => new IntentMessageSuggestion.fromJson(value))
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
class IntentMessageText {
  /// Optional. The collection of the agent's responses.
  core.List<core.String> text;

  IntentMessageText();

  IntentMessageText.fromJson(core.Map _json) {
    if (_json.containsKey("text")) {
      text = _json["text"];
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
class IntentParameter {
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
  /// user in order to collect value for the parameter.
  core.List<core.String> prompts;

  /// Optional. The definition of the parameter value. It can be:
  /// - a constant string,
  /// - a parameter value defined as `$parameter_name`,
  /// - an original parameter value defined as `$parameter_name.original`,
  /// - a parameter value from some context defined as
  ///   `#context_name.parameter_name`.
  core.String value;

  IntentParameter();

  IntentParameter.fromJson(core.Map _json) {
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
      prompts = _json["prompts"];
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

/// Represents an example or template that the agent is trained on.
class IntentTrainingPhrase {
  /// Required. The unique identifier of this training phrase.
  core.String name;

  /// Required. The collection of training phrase parts (can be annotated).
  /// Fields: `entity_type`, `alias` and `user_defined` should be populated
  /// only for the annotated parts of the training phrase.
  core.List<IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example or template was added to
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
  core.String type;

  IntentTrainingPhrase();

  IntentTrainingPhrase.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parts")) {
      parts = _json["parts"]
          .map((value) => new IntentTrainingPhrasePart.fromJson(value))
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
class IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the
  /// annotated part of the example.
  core.String alias;

  /// Optional. The entity type name prefixed with `@`. This field is
  /// required for the annotated part of the text and applies only to
  /// examples.
  core.String entityType;

  /// Required. The text corresponding to the example or template,
  /// if there are no annotations. For
  /// annotated examples, it is the text for one of the example's parts.
  core.String text;

  /// Optional. Indicates whether the text was manually annotated by the
  /// developer.
  core.bool userDefined;

  IntentTrainingPhrasePart();

  IntentTrainingPhrasePart.fromJson(core.Map _json) {
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

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair
/// of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the
/// <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
/// standard</a>. Values must be within normalized ranges.
class LatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  LatLng();

  LatLng.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"];
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"];
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

/// The response message for Contexts.ListContexts.
class ListContextsResponse {
  /// The list of contexts. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<Context> contexts;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListContextsResponse();

  ListContextsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = _json["contexts"]
          .map((value) => new Context.fromJson(value))
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
class ListEntityTypesResponse {
  /// The list of agent entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<EntityType> entityTypes;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListEntityTypesResponse();

  ListEntityTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entityTypes")) {
      entityTypes = _json["entityTypes"]
          .map((value) => new EntityType.fromJson(value))
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
class ListIntentsResponse {
  /// The list of agent intents. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<Intent> intents;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListIntentsResponse();

  ListIntentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("intents")) {
      intents =
          _json["intents"].map((value) => new Intent.fromJson(value)).toList();
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
class ListSessionEntityTypesResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  /// The list of session entity types. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  core.List<SessionEntityType> sessionEntityTypes;

  ListSessionEntityTypesResponse();

  ListSessionEntityTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sessionEntityTypes")) {
      sessionEntityTypes = _json["sessionEntityTypes"]
          .map((value) => new SessionEntityType.fromJson(value))
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

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
  /// `name` should have the format of `operations/some/unique/name`.
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

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
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

/// Represents the contents of the original request that was passed to
/// the `[Streaming]DetectIntent` call.
class OriginalDetectIntentRequest {
  /// Optional. This field is set to the value of `QueryParameters.payload`
  /// field
  /// passed in the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  /// by Dialogflow-owned servers. Possible values of this field correspond to
  /// Intent.Message.Platform.
  core.String source;

  OriginalDetectIntentRequest();

  OriginalDetectIntentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
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
class QueryInput {
  /// Instructs the speech recognizer how to process the speech audio.
  InputAudioConfig audioConfig;

  /// The event to be processed.
  EventInput event;

  /// The natural language text to be processed.
  TextInput text;

  QueryInput();

  QueryInput.fromJson(core.Map _json) {
    if (_json.containsKey("audioConfig")) {
      audioConfig = new InputAudioConfig.fromJson(_json["audioConfig"]);
    }
    if (_json.containsKey("event")) {
      event = new EventInput.fromJson(_json["event"]);
    }
    if (_json.containsKey("text")) {
      text = new TextInput.fromJson(_json["text"]);
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
class QueryParameters {
  /// Optional. The collection of contexts to be activated before this query is
  /// executed.
  core.List<Context> contexts;

  /// Optional. The geo location of this conversational query.
  LatLng geoLocation;

  /// Optional. This field can be used to pass custom data into the webhook
  /// associated with the agent. Arbitrary JSON objects are supported.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. Specifies whether to delete all contexts in the current session
  /// before the new ones are activated.
  core.bool resetContexts;

  /// Optional. The collection of session entity types to replace or extend
  /// developer entities with for this query only. The entity synonyms apply
  /// to all languages.
  core.List<SessionEntityType> sessionEntityTypes;

  /// Optional. The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones), e.g.,
  /// America/New_York, Europe/Paris. If not provided, the time zone specified
  /// in
  /// agent settings is used.
  core.String timeZone;

  QueryParameters();

  QueryParameters.fromJson(core.Map _json) {
    if (_json.containsKey("contexts")) {
      contexts = _json["contexts"]
          .map((value) => new Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("geoLocation")) {
      geoLocation = new LatLng.fromJson(_json["geoLocation"]);
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("resetContexts")) {
      resetContexts = _json["resetContexts"];
    }
    if (_json.containsKey("sessionEntityTypes")) {
      sessionEntityTypes = _json["sessionEntityTypes"]
          .map((value) => new SessionEntityType.fromJson(value))
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
class QueryResult {
  /// The action name from the matched intent.
  core.String action;

  /// This field is set to:
  /// - `false` if the matched intent has required parameters and not all of
  ///    the required parameter values have been collected.
  /// - `true` if all required parameter values have been collected, or if the
  ///    matched intent doesn't contain any required parameters.
  core.bool allRequiredParamsPresent;

  /// The free-form diagnostic info. For example, this field
  /// could contain webhook call latency.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> diagnosticInfo;

  /// The collection of rich messages to present to the user.
  core.List<IntentMessage> fulfillmentMessages;

  /// The text to be pronounced to the user or shown on the screen.
  core.String fulfillmentText;

  /// The intent that matched the conversational query. Some, not
  /// all fields are filled in this message, including but not limited to:
  /// `name`, `display_name` and `webhook_state`.
  Intent intent;

  /// The intent detection confidence. Values range from 0.0
  /// (completely uncertain) to 1.0 (completely certain).
  core.double intentDetectionConfidence;

  /// The language that was triggered during intent detection.
  /// See [Language Support](https://dialogflow.com/docs/reference/language)
  /// for a list of the currently supported language codes.
  core.String languageCode;

  /// The collection of output contexts. If applicable,
  /// `output_contexts.parameters` contains entries with name
  /// `<parameter name>.original` containing the original parameter values
  /// before the query.
  core.List<Context> outputContexts;

  /// The collection of extracted parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> parameters;

  /// The original conversational query text:
  /// - If natural language text was provided as input, `query_text` contains
  ///   a copy of the input.
  /// - If natural language speech audio was provided as input, `query_text`
  ///   contains the speech recognition result. If speech recognizer produced
  ///   multiple alternatives, a particular one is picked.
  /// - If an event was provided as input, `query_text` is not set.
  core.String queryText;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. The default of 0.0 is a sentinel value indicating that confidence
  /// was not set.
  ///
  /// You should not rely on this field as it isn't guaranteed to be accurate,
  /// or
  /// even set. In particular this field isn't set in Webhook calls and for
  /// StreamingDetectIntent since the streaming endpoint has separate confidence
  /// estimates per portion of the audio in StreamingRecognitionResult.
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

  QueryResult();

  QueryResult.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("allRequiredParamsPresent")) {
      allRequiredParamsPresent = _json["allRequiredParamsPresent"];
    }
    if (_json.containsKey("diagnosticInfo")) {
      diagnosticInfo = _json["diagnosticInfo"];
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = _json["fulfillmentMessages"]
          .map((value) => new IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("intent")) {
      intent = new Intent.fromJson(_json["intent"]);
    }
    if (_json.containsKey("intentDetectionConfidence")) {
      intentDetectionConfidence = _json["intentDetectionConfidence"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = _json["outputContexts"]
          .map((value) => new Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
    }
    if (_json.containsKey("queryText")) {
      queryText = _json["queryText"];
    }
    if (_json.containsKey("speechRecognitionConfidence")) {
      speechRecognitionConfidence = _json["speechRecognitionConfidence"];
    }
    if (_json.containsKey("webhookPayload")) {
      webhookPayload = _json["webhookPayload"];
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
class RestoreAgentRequest {
  /// The agent to restore.
  ///
  /// Example for how to restore an agent via the command line:
  ///
  /// curl \
  /// 'https://dialogflow.googleapis.com/v2beta1/projects/<project_name>/agent:restore\
  ///    -X POST \
  ///    -H 'Authorization: Bearer '$(gcloud auth print-access-token) \
  ///    -H 'Accept: application/json' \
  ///    -H 'Content-Type: application/json' \
  ///    --compressed \
  ///    --data-binary "{
  ///        'agentContent': '$(cat <agent zip file> | base64 -w 0)'
  ///    }" \
  core.String agentContent;
  core.List<core.int> get agentContentAsBytes {
    return convert.BASE64.decode(agentContent);
  }

  void set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Warning: Restoring agents from a URI is not implemented yet.
  /// This feature is coming soon.
  ///
  /// The URI to a Google Cloud Storage file containing the agent to restore.
  /// Note: The URI must start with "gs://".
  core.String agentUri;

  RestoreAgentRequest();

  RestoreAgentRequest.fromJson(core.Map _json) {
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
class SearchAgentsResponse {
  /// The list of agents. There will be a maximum number of items returned based
  /// on the page_size field in the request.
  core.List<Agent> agents;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  SearchAgentsResponse();

  SearchAgentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("agents")) {
      agents =
          _json["agents"].map((value) => new Agent.fromJson(value)).toList();
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

/// Represents a session entity type.
///
/// Extends or replaces a developer entity type at the user session level (we
/// refer to the entity types defined at the agent level as "developer entity
/// types").
///
/// Note: session entity types apply to all queries, regardless of the language.
class SessionEntityType {
  /// Required. The collection of entities associated with this session entity
  /// type.
  core.List<EntityTypeEntity> entities;

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
  /// Calls to `ListSessionEntityTypes`, `GetSessionEntityType`,
  /// `CreateSessionEntityType` and `UpdateSessionEntityType` return the full
  /// collection of entities from the developer entity type in the agent's
  /// default language and the session entity type.
  core.String entityOverrideMode;

  /// Required. The unique identifier of this session entity type. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity
  /// Type
  /// Display Name>`.
  core.String name;

  SessionEntityType();

  SessionEntityType.fromJson(core.Map _json) {
    if (_json.containsKey("entities")) {
      entities = _json["entities"]
          .map((value) => new EntityTypeEntity.fromJson(value))
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

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
class Status {
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

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
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

/// Represents the natural language text to be processed.
class TextInput {
  /// Required. The language of this conversational query. See [Language
  /// Support](https://dialogflow.com/docs/languages) for a list of the
  /// currently supported language codes. Note that queries in the same session
  /// do not necessarily need to specify the same language.
  core.String languageCode;

  /// Required. The UTF-8 encoded natural language text to be processed.
  /// Text length must not exceed 256 bytes.
  core.String text;

  TextInput();

  TextInput.fromJson(core.Map _json) {
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
class TrainAgentRequest {
  TrainAgentRequest();

  TrainAgentRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The request message for a webhook call.
class WebhookRequest {
  /// Optional. The contents of the original request that was passed to
  /// `[Streaming]DetectIntent` call.
  OriginalDetectIntentRequest originalDetectIntentRequest;

  /// The result of the conversational query or event processing. Contains the
  /// same value as `[Streaming]DetectIntentResponse.query_result`.
  QueryResult queryResult;

  /// The unique identifier of the response. Contains the same value as
  /// `[Streaming]DetectIntentResponse.response_id`.
  core.String responseId;

  /// The unique identifier of detectIntent request session.
  /// Can be used to identify end-user inside webhook implementation.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
  core.String session;

  WebhookRequest();

  WebhookRequest.fromJson(core.Map _json) {
    if (_json.containsKey("originalDetectIntentRequest")) {
      originalDetectIntentRequest = new OriginalDetectIntentRequest.fromJson(
          _json["originalDetectIntentRequest"]);
    }
    if (_json.containsKey("queryResult")) {
      queryResult = new QueryResult.fromJson(_json["queryResult"]);
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
class WebhookResponse {
  /// Optional. Makes the platform immediately invoke another `DetectIntent`
  /// call
  /// internally with the specified event as input.
  EventInput followupEventInput;

  /// Optional. The collection of rich messages to present to the user. This
  /// value is passed directly to `QueryResult.fulfillment_messages`.
  core.List<IntentMessage> fulfillmentMessages;

  /// Optional. The text to be shown on the screen. This value is passed
  /// directly
  /// to `QueryResult.fulfillment_text`.
  core.String fulfillmentText;

  /// Optional. The collection of output contexts. This value is passed directly
  /// to `QueryResult.output_contexts`.
  core.List<Context> outputContexts;

  /// Optional. This value is passed directly to `QueryResult.webhook_payload`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  /// Optional. This value is passed directly to `QueryResult.webhook_source`.
  core.String source;

  WebhookResponse();

  WebhookResponse.fromJson(core.Map _json) {
    if (_json.containsKey("followupEventInput")) {
      followupEventInput = new EventInput.fromJson(_json["followupEventInput"]);
    }
    if (_json.containsKey("fulfillmentMessages")) {
      fulfillmentMessages = _json["fulfillmentMessages"]
          .map((value) => new IntentMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fulfillmentText")) {
      fulfillmentText = _json["fulfillmentText"];
    }
    if (_json.containsKey("outputContexts")) {
      outputContexts = _json["outputContexts"]
          .map((value) => new Context.fromJson(value))
          .toList();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
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
