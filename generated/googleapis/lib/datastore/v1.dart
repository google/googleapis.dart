// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.datastore.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client datastore/v1';

/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
class DatastoreApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and manage your Google Cloud Datastore data
  static const DatastoreScope = "https://www.googleapis.com/auth/datastore";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DatastoreApi(http.Client client,
      {core.String rootUrl = "https://datastore.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIndexesResourceApi get indexes =>
      new ProjectsIndexesResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      new ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Allocates IDs for the given keys, which is useful for referencing an
  /// entity
  /// before it is inserted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AllocateIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AllocateIdsResponse> allocateIds(
      AllocateIdsRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':allocateIds';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AllocateIdsResponse.fromJson(data));
  }

  /// Begins a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BeginTransactionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BeginTransactionResponse> beginTransaction(
      BeginTransactionRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':beginTransaction';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BeginTransactionResponse.fromJson(data));
  }

  /// Commits a transaction, optionally creating, deleting or modifying some
  /// entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
      CommitRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':commit';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CommitResponse.fromJson(data));
  }

  /// Exports a copy of all or a subset of entities from Google Cloud Datastore
  /// to another storage system, such as Google Cloud Storage. Recent updates to
  /// entities may not be reflected in the export. The export occurs in the
  /// background and its progress can be monitored and managed via the
  /// Operation resource that is created. The output of an export may only be
  /// used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
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
      GoogleDatastoreAdminV1ExportEntitiesRequest request,
      core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Imports entities into Google Cloud Datastore. Existing entities with the
  /// same key are overwritten. The import occurs in the background and its
  /// progress can be monitored and managed via the Operation resource that is
  /// created. If an ImportEntities operation is cancelled, it is possible
  /// that a subset of the data has already been imported to Cloud Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
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
      GoogleDatastoreAdminV1ImportEntitiesRequest request,
      core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Looks up entities by key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupResponse> lookup(
      LookupRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':lookup';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LookupResponse.fromJson(data));
  }

  /// Prevents the supplied keys' IDs from being auto-allocated by Cloud
  /// Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReserveIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReserveIdsResponse> reserveIds(
      ReserveIdsRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':reserveIds';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReserveIdsResponse.fromJson(data));
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RollbackResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RollbackResponse> rollback(
      RollbackRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':rollback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RollbackResponse.fromJson(data));
  }

  /// Queries for entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the project against which to make the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunQueryResponse> runQuery(
      RunQueryRequest request, core.String projectId,
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
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        ':runQuery';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RunQueryResponse.fromJson(data));
  }
}

class ProjectsIndexesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIndexesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets an index.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
  ///
  /// [indexId] - The resource ID of the index to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleDatastoreAdminV1Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleDatastoreAdminV1Index> get(
      core.String projectId, core.String indexId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/indexes/' +
        commons.Escaper.ecapeVariable('$indexId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleDatastoreAdminV1Index.fromJson(data));
  }

  /// Lists the indexes that match the specified filters.  Datastore uses an
  /// eventually consistent query to fetch the list of indexes and may
  /// occasionally return stale results.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of items to return.  If zero, then all
  /// results will be
  /// returned.
  ///
  /// [filter] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleDatastoreAdminV1ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleDatastoreAdminV1ListIndexesResponse> list(
      core.String projectId,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/indexes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleDatastoreAdminV1ListIndexesResponse.fromJson(data));
  }
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
  async.Future<GoogleLongrunningListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

/// The request for Datastore.AllocateIds.
class AllocateIdsRequest {
  /// A list of keys with incomplete key paths for which to allocate IDs.
  /// No key may be reserved/read-only.
  core.List<Key> keys;

  AllocateIdsRequest();

  AllocateIdsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<Key>((value) => new Key.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response for Datastore.AllocateIds.
class AllocateIdsResponse {
  /// The keys specified in the request (in the same order), each with
  /// its key path completed with a newly allocated ID.
  core.List<Key> keys;

  AllocateIdsResponse();

  AllocateIdsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<Key>((value) => new Key.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  /// The order of values in an array is preserved as long as all values have
  /// identical settings for 'exclude_from_indexes'.
  core.List<Value> values;

  ArrayValue();

  ArrayValue.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<Value>((value) => new Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request for Datastore.BeginTransaction.
class BeginTransactionRequest {
  /// Options for a new transaction.
  TransactionOptions transactionOptions;

  BeginTransactionRequest();

  BeginTransactionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("transactionOptions")) {
      transactionOptions =
          new TransactionOptions.fromJson(_json["transactionOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transactionOptions != null) {
      _json["transactionOptions"] = (transactionOptions).toJson();
    }
    return _json;
  }
}

/// The response for Datastore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction identifier (always present).
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  BeginTransactionResponse();

  BeginTransactionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The request for Datastore.Commit.
class CommitRequest {
  /// The type of commit to perform. Defaults to `TRANSACTIONAL`.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "TRANSACTIONAL" : Transactional: The mutations are either all applied,
  /// or none are applied.
  /// Learn about transactions
  /// [here](https://cloud.google.com/datastore/docs/concepts/transactions).
  /// - "NON_TRANSACTIONAL" : Non-transactional: The mutations may not apply as
  /// all or none.
  core.String mode;

  /// The mutations to perform.
  ///
  /// When mode is `TRANSACTIONAL`, mutations affecting a single entity are
  /// applied in order. The following sequences of mutations affecting a single
  /// entity are not permitted in a single `Commit` request:
  ///
  /// - `insert` followed by `insert`
  /// - `update` followed by `insert`
  /// - `upsert` followed by `insert`
  /// - `delete` followed by `update`
  ///
  /// When mode is `NON_TRANSACTIONAL`, no two mutations may affect a single
  /// entity.
  core.List<Mutation> mutations;

  /// The identifier of the transaction associated with the commit. A
  /// transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  CommitRequest();

  CommitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("mutations")) {
      mutations = (_json["mutations"] as core.List)
          .map<Mutation>((value) => new Mutation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mode != null) {
      _json["mode"] = mode;
    }
    if (mutations != null) {
      _json["mutations"] = mutations.map((value) => (value).toJson()).toList();
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The response for Datastore.Commit.
class CommitResponse {
  /// The number of index entries updated during the commit, or zero if none
  /// were
  /// updated.
  core.int indexUpdates;

  /// The result of performing the mutations.
  /// The i-th mutation result corresponds to the i-th mutation in the request.
  core.List<MutationResult> mutationResults;

  CommitResponse();

  CommitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("indexUpdates")) {
      indexUpdates = _json["indexUpdates"];
    }
    if (_json.containsKey("mutationResults")) {
      mutationResults = (_json["mutationResults"] as core.List)
          .map<MutationResult>((value) => new MutationResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexUpdates != null) {
      _json["indexUpdates"] = indexUpdates;
    }
    if (mutationResults != null) {
      _json["mutationResults"] =
          mutationResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A filter that merges multiple other filters using the given operator.
class CompositeFilter {
  /// The list of filters to combine.
  /// Must contain at least one filter.
  core.List<Filter> filters;

  /// The operator for combining multiple filters.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "AND" : The results are required to satisfy each of the combined
  /// filters.
  core.String op;

  CompositeFilter();

  CompositeFilter.fromJson(core.Map _json) {
    if (_json.containsKey("filters")) {
      filters = (_json["filters"] as core.List)
          .map<Filter>((value) => new Filter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (op != null) {
      _json["op"] = op;
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

/// A Datastore data object.
///
/// An entity is limited to 1 megabyte when stored. That _roughly_
/// corresponds to a limit of 1 megabyte for the serialized form of this
/// message.
class Entity {
  /// The entity's key.
  ///
  /// An entity must have a key, unless otherwise documented (for example,
  /// an entity in `Value.entity_value` may have no key).
  /// An entity's kind is its key path's last element's kind,
  /// or null if it has no key.
  Key key;

  /// The entity's properties.
  /// The map's keys are property names.
  /// A property name matching regex `__.*__` is reserved.
  /// A reserved property name is forbidden in certain documented contexts.
  /// The name must not contain more than 500 characters.
  /// The name cannot be `""`.
  core.Map<core.String, Value> properties;

  Entity();

  Entity.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = new Key.fromJson(_json["key"]);
    }
    if (_json.containsKey("properties")) {
      properties = commons.mapMap<core.Map, Value>(
          _json["properties"].cast<core.String, core.Map>(),
          (core.Map item) => new Value.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = (key).toJson();
    }
    if (properties != null) {
      _json["properties"] =
          commons.mapMap<Value, core.Map<core.String, core.Object>>(
              properties, (Value item) => (item).toJson());
    }
    return _json;
  }
}

/// The result of fetching an entity from Datastore.
class EntityResult {
  /// A cursor that points to the position after the result entity.
  /// Set only when the `EntityResult` is part of a `QueryResultBatch` message.
  core.String cursor;
  core.List<core.int> get cursorAsBytes {
    return convert.base64.decode(cursor);
  }

  set cursorAsBytes(core.List<core.int> _bytes) {
    cursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The resulting entity.
  Entity entity;

  /// The version of the entity, a strictly positive number that monotonically
  /// increases with changes to the entity.
  ///
  /// This field is set for `FULL` entity
  /// results.
  ///
  /// For missing entities in `LookupResponse`, this
  /// is the version of the snapshot that was used to look up the entity, and it
  /// is always set except for eventually consistent reads.
  core.String version;

  EntityResult();

  EntityResult.fromJson(core.Map _json) {
    if (_json.containsKey("cursor")) {
      cursor = _json["cursor"];
    }
    if (_json.containsKey("entity")) {
      entity = new Entity.fromJson(_json["entity"]);
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cursor != null) {
      _json["cursor"] = cursor;
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A holder for any type of filter.
class Filter {
  /// A composite filter.
  CompositeFilter compositeFilter;

  /// A filter on a property.
  PropertyFilter propertyFilter;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(_json["compositeFilter"]);
    }
    if (_json.containsKey("propertyFilter")) {
      propertyFilter = new PropertyFilter.fromJson(_json["propertyFilter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compositeFilter != null) {
      _json["compositeFilter"] = (compositeFilter).toJson();
    }
    if (propertyFilter != null) {
      _json["propertyFilter"] = (propertyFilter).toJson();
    }
    return _json;
  }
}

/// Metadata common to all Datastore Admin operations.
class GoogleDatastoreAdminV1CommonMetadata {
  /// The time the operation ended, either successfully or otherwise.
  core.String endTime;

  /// The client-assigned labels which were provided when the operation was
  /// created. May also include additional labels.
  core.Map<core.String, core.String> labels;

  /// The type of the operation. Can be used as a filter in
  /// ListOperationsRequest.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Unspecified.
  /// - "EXPORT_ENTITIES" : ExportEntities.
  /// - "IMPORT_ENTITIES" : ImportEntities.
  /// - "CREATE_INDEX" : CreateIndex.
  /// - "DELETE_INDEX" : DeleteIndex.
  core.String operationType;

  /// The time that work began on the operation.
  core.String startTime;

  /// The current state of the Operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "INITIALIZING" : Request is being prepared for processing.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "CANCELLING" : Request is in the process of being cancelled after user
  /// called
  /// google.longrunning.Operations.CancelOperation on the operation.
  /// - "FINALIZING" : Request has been processed and is in its finalization
  /// stage.
  /// - "SUCCESSFUL" : Request has completed successfully.
  /// - "FAILED" : Request has finished being processed, but encountered an
  /// error.
  /// - "CANCELLED" : Request has finished being cancelled after user called
  /// google.longrunning.Operations.CancelOperation.
  core.String state;

  GoogleDatastoreAdminV1CommonMetadata();

  GoogleDatastoreAdminV1CommonMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Identifies a subset of entities in a project. This is specified as
/// combinations of kinds and namespaces (either or both of which may be all, as
/// described in the following examples).
/// Example usage:
///
/// Entire project:
///   kinds=[], namespace_ids=[]
///
/// Kinds Foo and Bar in all namespaces:
///   kinds=['Foo', 'Bar'], namespace_ids=[]
///
/// Kinds Foo and Bar only in the default namespace:
///   kinds=['Foo', 'Bar'], namespace_ids=['']
///
/// Kinds Foo and Bar in both the default and Baz namespaces:
///   kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz']
///
/// The entire Baz namespace:
///   kinds=[], namespace_ids=['Baz']
class GoogleDatastoreAdminV1EntityFilter {
  /// If empty, then this represents all kinds.
  core.List<core.String> kinds;

  /// An empty list represents all namespaces. This is the preferred
  /// usage for projects that don't use namespaces.
  ///
  /// An empty string element represents the default namespace. This should be
  /// used if the project has data in non-default namespaces, but doesn't want
  /// to
  /// include them.
  /// Each namespace in this list must be unique.
  core.List<core.String> namespaceIds;

  GoogleDatastoreAdminV1EntityFilter();

  GoogleDatastoreAdminV1EntityFilter.fromJson(core.Map _json) {
    if (_json.containsKey("kinds")) {
      kinds = (_json["kinds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("namespaceIds")) {
      namespaceIds = (_json["namespaceIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kinds != null) {
      _json["kinds"] = kinds;
    }
    if (namespaceIds != null) {
      _json["namespaceIds"] = namespaceIds;
    }
    return _json;
  }
}

/// Metadata for ExportEntities operations.
class GoogleDatastoreAdminV1ExportEntitiesMetadata {
  /// Metadata common to all Datastore Admin operations.
  GoogleDatastoreAdminV1CommonMetadata common;

  /// Description of which entities are being exported.
  GoogleDatastoreAdminV1EntityFilter entityFilter;

  /// Location for the export metadata and data files. This will be the same
  /// value as the
  /// google.datastore.admin.v1.ExportEntitiesRequest.output_url_prefix
  /// field. The final output location is provided in
  /// google.datastore.admin.v1.ExportEntitiesResponse.output_url.
  core.String outputUrlPrefix;

  /// An estimate of the number of bytes processed.
  GoogleDatastoreAdminV1Progress progressBytes;

  /// An estimate of the number of entities processed.
  GoogleDatastoreAdminV1Progress progressEntities;

  GoogleDatastoreAdminV1ExportEntitiesMetadata();

  GoogleDatastoreAdminV1ExportEntitiesMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("common")) {
      common =
          new GoogleDatastoreAdminV1CommonMetadata.fromJson(_json["common"]);
    }
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("outputUrlPrefix")) {
      outputUrlPrefix = _json["outputUrlPrefix"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleDatastoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressEntities")) {
      progressEntities = new GoogleDatastoreAdminV1Progress.fromJson(
          _json["progressEntities"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (common != null) {
      _json["common"] = (common).toJson();
    }
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (outputUrlPrefix != null) {
      _json["outputUrlPrefix"] = outputUrlPrefix;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressEntities != null) {
      _json["progressEntities"] = (progressEntities).toJson();
    }
    return _json;
  }
}

/// The request for
/// google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
class GoogleDatastoreAdminV1ExportEntitiesRequest {
  /// Description of what data from the project is included in the export.
  GoogleDatastoreAdminV1EntityFilter entityFilter;

  /// Client-assigned labels.
  core.Map<core.String, core.String> labels;

  /// Location for the export metadata and data files.
  ///
  /// The full resource URL of the external storage location. Currently, only
  /// Google Cloud Storage is supported. So output_url_prefix should be of the
  /// form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the
  /// name of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud
  /// Storage namespace path (this is not a Cloud Datastore namespace). For more
  /// information about Cloud Storage namespace paths, see
  /// [Object name
  /// considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  ///
  /// The resulting files will be nested deeper than the specified URL prefix.
  /// The final output URL will be provided in the
  /// google.datastore.admin.v1.ExportEntitiesResponse.output_url field. That
  /// value should be used for subsequent ImportEntities operations.
  ///
  /// By nesting the data files deeper, the same Cloud Storage bucket can be
  /// used
  /// in multiple ExportEntities operations without conflict.
  core.String outputUrlPrefix;

  GoogleDatastoreAdminV1ExportEntitiesRequest();

  GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("outputUrlPrefix")) {
      outputUrlPrefix = _json["outputUrlPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (outputUrlPrefix != null) {
      _json["outputUrlPrefix"] = outputUrlPrefix;
    }
    return _json;
  }
}

/// The response for
/// google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
class GoogleDatastoreAdminV1ExportEntitiesResponse {
  /// Location of the output metadata file. This can be used to begin an import
  /// into Cloud Datastore (this project or another project). See
  /// google.datastore.admin.v1.ImportEntitiesRequest.input_url.
  /// Only present if the operation completed successfully.
  core.String outputUrl;

  GoogleDatastoreAdminV1ExportEntitiesResponse();

  GoogleDatastoreAdminV1ExportEntitiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputUrl")) {
      outputUrl = _json["outputUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputUrl != null) {
      _json["outputUrl"] = outputUrl;
    }
    return _json;
  }
}

/// Metadata for ImportEntities operations.
class GoogleDatastoreAdminV1ImportEntitiesMetadata {
  /// Metadata common to all Datastore Admin operations.
  GoogleDatastoreAdminV1CommonMetadata common;

  /// Description of which entities are being imported.
  GoogleDatastoreAdminV1EntityFilter entityFilter;

  /// The location of the import metadata file. This will be the same value as
  /// the google.datastore.admin.v1.ExportEntitiesResponse.output_url field.
  core.String inputUrl;

  /// An estimate of the number of bytes processed.
  GoogleDatastoreAdminV1Progress progressBytes;

  /// An estimate of the number of entities processed.
  GoogleDatastoreAdminV1Progress progressEntities;

  GoogleDatastoreAdminV1ImportEntitiesMetadata();

  GoogleDatastoreAdminV1ImportEntitiesMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("common")) {
      common =
          new GoogleDatastoreAdminV1CommonMetadata.fromJson(_json["common"]);
    }
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("inputUrl")) {
      inputUrl = _json["inputUrl"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleDatastoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressEntities")) {
      progressEntities = new GoogleDatastoreAdminV1Progress.fromJson(
          _json["progressEntities"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (common != null) {
      _json["common"] = (common).toJson();
    }
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (inputUrl != null) {
      _json["inputUrl"] = inputUrl;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressEntities != null) {
      _json["progressEntities"] = (progressEntities).toJson();
    }
    return _json;
  }
}

/// The request for
/// google.datastore.admin.v1.DatastoreAdmin.ImportEntities.
class GoogleDatastoreAdminV1ImportEntitiesRequest {
  /// Optionally specify which kinds/namespaces are to be imported. If provided,
  /// the list must be a subset of the EntityFilter used in creating the export,
  /// otherwise a FAILED_PRECONDITION error will be returned. If no filter is
  /// specified then all entities from the export are imported.
  GoogleDatastoreAdminV1EntityFilter entityFilter;

  /// The full resource URL of the external storage location. Currently, only
  /// Google Cloud Storage is supported. So input_url should be of the form:
  /// `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where
  /// `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is
  /// an optional Cloud Storage namespace path (this is not a Cloud Datastore
  /// namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file
  /// written
  /// by the ExportEntities operation. For more information about Cloud Storage
  /// namespace paths, see
  /// [Object name
  /// considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  ///
  /// For more information, see
  /// google.datastore.admin.v1.ExportEntitiesResponse.output_url.
  core.String inputUrl;

  /// Client-assigned labels.
  core.Map<core.String, core.String> labels;

  GoogleDatastoreAdminV1ImportEntitiesRequest();

  GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("inputUrl")) {
      inputUrl = _json["inputUrl"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (inputUrl != null) {
      _json["inputUrl"] = inputUrl;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    return _json;
  }
}

/// A minimal index definition.
class GoogleDatastoreAdminV1Index {
  /// The index's ancestor mode.  Must not be ANCESTOR_MODE_UNSPECIFIED.
  /// Required.
  /// Possible string values are:
  /// - "ANCESTOR_MODE_UNSPECIFIED" : The ancestor mode is unspecified.
  /// - "NONE" : Do not include the entity's ancestors in the index.
  /// - "ALL_ANCESTORS" : Include all the entity's ancestors in the index.
  core.String ancestor;

  /// The resource ID of the index.
  /// Output only.
  core.String indexId;

  /// The entity kind to which this index applies.
  /// Required.
  core.String kind;

  /// Project ID.
  /// Output only.
  core.String projectId;

  /// An ordered sequence of property names and their index attributes.
  /// Required.
  core.List<GoogleDatastoreAdminV1IndexedProperty> properties;

  /// The state of the index.
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created, and cannot be used by queries.
  /// There is an active long-running operation for the index.
  /// The index is updated when writing an entity.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used.
  /// The index is updated when writing an entity.
  /// The index is fully populated from all stored entities it applies to.
  /// - "DELETING" : The index is being deleted, and cannot be used by queries.
  /// There is an active long-running operation for the index.
  /// The index is not updated when writing an entity.
  /// Some index data may exist.
  /// - "ERROR" : The index was being created or deleted, but something went
  /// wrong.
  /// The index cannot by used by queries.
  /// There is no active long-running operation for the index,
  /// and the most recently finished long-running operation failed.
  /// The index is not updated when writing an entity.
  /// Some index data may exist.
  core.String state;

  GoogleDatastoreAdminV1Index();

  GoogleDatastoreAdminV1Index.fromJson(core.Map _json) {
    if (_json.containsKey("ancestor")) {
      ancestor = _json["ancestor"];
    }
    if (_json.containsKey("indexId")) {
      indexId = _json["indexId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleDatastoreAdminV1IndexedProperty>((value) =>
              new GoogleDatastoreAdminV1IndexedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ancestor != null) {
      _json["ancestor"] = ancestor;
    }
    if (indexId != null) {
      _json["indexId"] = indexId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Metadata for Index operations.
class GoogleDatastoreAdminV1IndexOperationMetadata {
  /// Metadata common to all Datastore Admin operations.
  GoogleDatastoreAdminV1CommonMetadata common;

  /// The index resource ID that this operation is acting on.
  core.String indexId;

  /// An estimate of the number of entities processed.
  GoogleDatastoreAdminV1Progress progressEntities;

  GoogleDatastoreAdminV1IndexOperationMetadata();

  GoogleDatastoreAdminV1IndexOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("common")) {
      common =
          new GoogleDatastoreAdminV1CommonMetadata.fromJson(_json["common"]);
    }
    if (_json.containsKey("indexId")) {
      indexId = _json["indexId"];
    }
    if (_json.containsKey("progressEntities")) {
      progressEntities = new GoogleDatastoreAdminV1Progress.fromJson(
          _json["progressEntities"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (common != null) {
      _json["common"] = (common).toJson();
    }
    if (indexId != null) {
      _json["indexId"] = indexId;
    }
    if (progressEntities != null) {
      _json["progressEntities"] = (progressEntities).toJson();
    }
    return _json;
  }
}

/// A property of an index.
class GoogleDatastoreAdminV1IndexedProperty {
  /// The indexed property's direction.  Must not be DIRECTION_UNSPECIFIED.
  /// Required.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : The direction is unspecified.
  /// - "ASCENDING" : The property's values are indexed so as to support
  /// sequencing in
  /// ascending order and also query by <, >, <=, >=, and =.
  /// - "DESCENDING" : The property's values are indexed so as to support
  /// sequencing in
  /// descending order and also query by <, >, <=, >=, and =.
  core.String direction;

  /// The property name to index.
  /// Required.
  core.String name;

  GoogleDatastoreAdminV1IndexedProperty();

  GoogleDatastoreAdminV1IndexedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// The response for
/// google.datastore.admin.v1.DatastoreAdmin.ListIndexes.
class GoogleDatastoreAdminV1ListIndexesResponse {
  /// The indexes.
  core.List<GoogleDatastoreAdminV1Index> indexes;

  /// The standard List next-page token.
  core.String nextPageToken;

  GoogleDatastoreAdminV1ListIndexesResponse();

  GoogleDatastoreAdminV1ListIndexesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("indexes")) {
      indexes = (_json["indexes"] as core.List)
          .map<GoogleDatastoreAdminV1Index>(
              (value) => new GoogleDatastoreAdminV1Index.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexes != null) {
      _json["indexes"] = indexes.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Measures the progress of a particular metric.
class GoogleDatastoreAdminV1Progress {
  /// The amount of work that has been completed. Note that this may be greater
  /// than work_estimated.
  core.String workCompleted;

  /// An estimate of how much work needs to be performed. May be zero if the
  /// work estimate is unavailable.
  core.String workEstimated;

  GoogleDatastoreAdminV1Progress();

  GoogleDatastoreAdminV1Progress.fromJson(core.Map _json) {
    if (_json.containsKey("workCompleted")) {
      workCompleted = _json["workCompleted"];
    }
    if (_json.containsKey("workEstimated")) {
      workEstimated = _json["workEstimated"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (workCompleted != null) {
      _json["workCompleted"] = workCompleted;
    }
    if (workEstimated != null) {
      _json["workEstimated"] = workEstimated;
    }
    return _json;
  }
}

/// Metadata common to all Datastore Admin operations.
class GoogleDatastoreAdminV1beta1CommonMetadata {
  /// The time the operation ended, either successfully or otherwise.
  core.String endTime;

  /// The client-assigned labels which were provided when the operation was
  /// created. May also include additional labels.
  core.Map<core.String, core.String> labels;

  /// The type of the operation. Can be used as a filter in
  /// ListOperationsRequest.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Unspecified.
  /// - "EXPORT_ENTITIES" : ExportEntities.
  /// - "IMPORT_ENTITIES" : ImportEntities.
  core.String operationType;

  /// The time that work began on the operation.
  core.String startTime;

  /// The current state of the Operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "INITIALIZING" : Request is being prepared for processing.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "CANCELLING" : Request is in the process of being cancelled after user
  /// called
  /// google.longrunning.Operations.CancelOperation on the operation.
  /// - "FINALIZING" : Request has been processed and is in its finalization
  /// stage.
  /// - "SUCCESSFUL" : Request has completed successfully.
  /// - "FAILED" : Request has finished being processed, but encountered an
  /// error.
  /// - "CANCELLED" : Request has finished being cancelled after user called
  /// google.longrunning.Operations.CancelOperation.
  core.String state;

  GoogleDatastoreAdminV1beta1CommonMetadata();

  GoogleDatastoreAdminV1beta1CommonMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Identifies a subset of entities in a project. This is specified as
/// combinations of kinds and namespaces (either or both of which may be all, as
/// described in the following examples).
/// Example usage:
///
/// Entire project:
///   kinds=[], namespace_ids=[]
///
/// Kinds Foo and Bar in all namespaces:
///   kinds=['Foo', 'Bar'], namespace_ids=[]
///
/// Kinds Foo and Bar only in the default namespace:
///   kinds=['Foo', 'Bar'], namespace_ids=['']
///
/// Kinds Foo and Bar in both the default and Baz namespaces:
///   kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz']
///
/// The entire Baz namespace:
///   kinds=[], namespace_ids=['Baz']
class GoogleDatastoreAdminV1beta1EntityFilter {
  /// If empty, then this represents all kinds.
  core.List<core.String> kinds;

  /// An empty list represents all namespaces. This is the preferred
  /// usage for projects that don't use namespaces.
  ///
  /// An empty string element represents the default namespace. This should be
  /// used if the project has data in non-default namespaces, but doesn't want
  /// to
  /// include them.
  /// Each namespace in this list must be unique.
  core.List<core.String> namespaceIds;

  GoogleDatastoreAdminV1beta1EntityFilter();

  GoogleDatastoreAdminV1beta1EntityFilter.fromJson(core.Map _json) {
    if (_json.containsKey("kinds")) {
      kinds = (_json["kinds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("namespaceIds")) {
      namespaceIds = (_json["namespaceIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kinds != null) {
      _json["kinds"] = kinds;
    }
    if (namespaceIds != null) {
      _json["namespaceIds"] = namespaceIds;
    }
    return _json;
  }
}

/// Metadata for ExportEntities operations.
class GoogleDatastoreAdminV1beta1ExportEntitiesMetadata {
  /// Metadata common to all Datastore Admin operations.
  GoogleDatastoreAdminV1beta1CommonMetadata common;

  /// Description of which entities are being exported.
  GoogleDatastoreAdminV1beta1EntityFilter entityFilter;

  /// Location for the export metadata and data files. This will be the same
  /// value as the
  /// google.datastore.admin.v1beta1.ExportEntitiesRequest.output_url_prefix
  /// field. The final output location is provided in
  /// google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url.
  core.String outputUrlPrefix;

  /// An estimate of the number of bytes processed.
  GoogleDatastoreAdminV1beta1Progress progressBytes;

  /// An estimate of the number of entities processed.
  GoogleDatastoreAdminV1beta1Progress progressEntities;

  GoogleDatastoreAdminV1beta1ExportEntitiesMetadata();

  GoogleDatastoreAdminV1beta1ExportEntitiesMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("common")) {
      common = new GoogleDatastoreAdminV1beta1CommonMetadata.fromJson(
          _json["common"]);
    }
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1beta1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("outputUrlPrefix")) {
      outputUrlPrefix = _json["outputUrlPrefix"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes = new GoogleDatastoreAdminV1beta1Progress.fromJson(
          _json["progressBytes"]);
    }
    if (_json.containsKey("progressEntities")) {
      progressEntities = new GoogleDatastoreAdminV1beta1Progress.fromJson(
          _json["progressEntities"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (common != null) {
      _json["common"] = (common).toJson();
    }
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (outputUrlPrefix != null) {
      _json["outputUrlPrefix"] = outputUrlPrefix;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressEntities != null) {
      _json["progressEntities"] = (progressEntities).toJson();
    }
    return _json;
  }
}

/// The response for
/// google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.
class GoogleDatastoreAdminV1beta1ExportEntitiesResponse {
  /// Location of the output metadata file. This can be used to begin an import
  /// into Cloud Datastore (this project or another project). See
  /// google.datastore.admin.v1beta1.ImportEntitiesRequest.input_url.
  /// Only present if the operation completed successfully.
  core.String outputUrl;

  GoogleDatastoreAdminV1beta1ExportEntitiesResponse();

  GoogleDatastoreAdminV1beta1ExportEntitiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputUrl")) {
      outputUrl = _json["outputUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputUrl != null) {
      _json["outputUrl"] = outputUrl;
    }
    return _json;
  }
}

/// Metadata for ImportEntities operations.
class GoogleDatastoreAdminV1beta1ImportEntitiesMetadata {
  /// Metadata common to all Datastore Admin operations.
  GoogleDatastoreAdminV1beta1CommonMetadata common;

  /// Description of which entities are being imported.
  GoogleDatastoreAdminV1beta1EntityFilter entityFilter;

  /// The location of the import metadata file. This will be the same value as
  /// the google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url
  /// field.
  core.String inputUrl;

  /// An estimate of the number of bytes processed.
  GoogleDatastoreAdminV1beta1Progress progressBytes;

  /// An estimate of the number of entities processed.
  GoogleDatastoreAdminV1beta1Progress progressEntities;

  GoogleDatastoreAdminV1beta1ImportEntitiesMetadata();

  GoogleDatastoreAdminV1beta1ImportEntitiesMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("common")) {
      common = new GoogleDatastoreAdminV1beta1CommonMetadata.fromJson(
          _json["common"]);
    }
    if (_json.containsKey("entityFilter")) {
      entityFilter = new GoogleDatastoreAdminV1beta1EntityFilter.fromJson(
          _json["entityFilter"]);
    }
    if (_json.containsKey("inputUrl")) {
      inputUrl = _json["inputUrl"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes = new GoogleDatastoreAdminV1beta1Progress.fromJson(
          _json["progressBytes"]);
    }
    if (_json.containsKey("progressEntities")) {
      progressEntities = new GoogleDatastoreAdminV1beta1Progress.fromJson(
          _json["progressEntities"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (common != null) {
      _json["common"] = (common).toJson();
    }
    if (entityFilter != null) {
      _json["entityFilter"] = (entityFilter).toJson();
    }
    if (inputUrl != null) {
      _json["inputUrl"] = inputUrl;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressEntities != null) {
      _json["progressEntities"] = (progressEntities).toJson();
    }
    return _json;
  }
}

/// Measures the progress of a particular metric.
class GoogleDatastoreAdminV1beta1Progress {
  /// The amount of work that has been completed. Note that this may be greater
  /// than work_estimated.
  core.String workCompleted;

  /// An estimate of how much work needs to be performed. May be zero if the
  /// work estimate is unavailable.
  core.String workEstimated;

  GoogleDatastoreAdminV1beta1Progress();

  GoogleDatastoreAdminV1beta1Progress.fromJson(core.Map _json) {
    if (_json.containsKey("workCompleted")) {
      workCompleted = _json["workCompleted"];
    }
    if (_json.containsKey("workEstimated")) {
      workEstimated = _json["workEstimated"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (workCompleted != null) {
      _json["workCompleted"] = workCompleted;
    }
    if (workEstimated != null) {
      _json["workEstimated"] = workEstimated;
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
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => new GoogleLongrunningOperation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
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

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
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

/// A [GQL
/// query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
class GqlQuery {
  /// When false, the query string must not contain any literals and instead
  /// must
  /// bind all values. For example,
  /// `SELECT * FROM Kind WHERE a = 'string literal'` is not allowed, while
  /// `SELECT * FROM Kind WHERE a = @value` is.
  core.bool allowLiterals;

  /// For each non-reserved named binding site in the query string, there must
  /// be
  /// a named parameter with that name, but not necessarily the inverse.
  ///
  /// Key must match regex `A-Za-z_$*`, must not match regex
  /// `__.*__`, and must not be `""`.
  core.Map<core.String, GqlQueryParameter> namedBindings;

  /// Numbered binding site @1 references the first numbered parameter,
  /// effectively using 1-based indexing, rather than the usual 0.
  ///
  /// For each binding site numbered i in `query_string`, there must be an i-th
  /// numbered parameter. The inverse must also be true.
  core.List<GqlQueryParameter> positionalBindings;

  /// A string of the format described
  /// [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
  core.String queryString;

  GqlQuery();

  GqlQuery.fromJson(core.Map _json) {
    if (_json.containsKey("allowLiterals")) {
      allowLiterals = _json["allowLiterals"];
    }
    if (_json.containsKey("namedBindings")) {
      namedBindings = commons.mapMap<core.Map, GqlQueryParameter>(
          _json["namedBindings"].cast<core.String, core.Map>(),
          (core.Map item) => new GqlQueryParameter.fromJson(item));
    }
    if (_json.containsKey("positionalBindings")) {
      positionalBindings = (_json["positionalBindings"] as core.List)
          .map<GqlQueryParameter>(
              (value) => new GqlQueryParameter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("queryString")) {
      queryString = _json["queryString"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowLiterals != null) {
      _json["allowLiterals"] = allowLiterals;
    }
    if (namedBindings != null) {
      _json["namedBindings"] =
          commons.mapMap<GqlQueryParameter, core.Map<core.String, core.Object>>(
              namedBindings, (GqlQueryParameter item) => (item).toJson());
    }
    if (positionalBindings != null) {
      _json["positionalBindings"] =
          positionalBindings.map((value) => (value).toJson()).toList();
    }
    if (queryString != null) {
      _json["queryString"] = queryString;
    }
    return _json;
  }
}

/// A binding parameter for a GQL query.
class GqlQueryParameter {
  /// A query cursor. Query cursors are returned in query
  /// result batches.
  core.String cursor;
  core.List<core.int> get cursorAsBytes {
    return convert.base64.decode(cursor);
  }

  set cursorAsBytes(core.List<core.int> _bytes) {
    cursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A value parameter.
  Value value;

  GqlQueryParameter();

  GqlQueryParameter.fromJson(core.Map _json) {
    if (_json.containsKey("cursor")) {
      cursor = _json["cursor"];
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cursor != null) {
      _json["cursor"] = cursor;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// A unique identifier for an entity.
/// If a key's partition ID or any of its path kinds or names are
/// reserved/read-only, the key is reserved/read-only.
/// A reserved/read-only key is forbidden in certain documented contexts.
class Key {
  /// Entities are partitioned into subsets, currently identified by a project
  /// ID and namespace ID.
  /// Queries are scoped to a single partition.
  PartitionId partitionId;

  /// The entity path.
  /// An entity path consists of one or more elements composed of a kind and a
  /// string or numerical identifier, which identify entities. The first
  /// element identifies a _root entity_, the second element identifies
  /// a _child_ of the root entity, the third element identifies a child of the
  /// second entity, and so forth. The entities identified by all prefixes of
  /// the path are called the element's _ancestors_.
  ///
  /// An entity path is always fully complete: *all* of the entity's ancestors
  /// are required to be in the path along with the entity identifier itself.
  /// The only exception is that in some documented cases, the identifier in the
  /// last path element (for the entity) itself may be omitted. For example,
  /// the last path element of the key of `Mutation.insert` may have no
  /// identifier.
  ///
  /// A path can never be empty, and a path can have at most 100 elements.
  core.List<PathElement> path;

  Key();

  Key.fromJson(core.Map _json) {
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("path")) {
      path = (_json["path"] as core.List)
          .map<PathElement>((value) => new PathElement.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (path != null) {
      _json["path"] = path.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A representation of a kind.
class KindExpression {
  /// The name of the kind.
  core.String name;

  KindExpression();

  KindExpression.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
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

/// The request for Datastore.Lookup.
class LookupRequest {
  /// Keys of entities to look up.
  core.List<Key> keys;

  /// The options for this lookup request.
  ReadOptions readOptions;

  LookupRequest();

  LookupRequest.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<Key>((value) => new Key.fromJson(value))
          .toList();
    }
    if (_json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(_json["readOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    if (readOptions != null) {
      _json["readOptions"] = (readOptions).toJson();
    }
    return _json;
  }
}

/// The response for Datastore.Lookup.
class LookupResponse {
  /// A list of keys that were not looked up due to resource constraints. The
  /// order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<Key> deferred;

  /// Entities found as `ResultType.FULL` entities. The order of results in this
  /// field is undefined and has no relation to the order of the keys in the
  /// input.
  core.List<EntityResult> found;

  /// Entities not found as `ResultType.KEY_ONLY` entities. The order of results
  /// in this field is undefined and has no relation to the order of the keys
  /// in the input.
  core.List<EntityResult> missing;

  LookupResponse();

  LookupResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deferred")) {
      deferred = (_json["deferred"] as core.List)
          .map<Key>((value) => new Key.fromJson(value))
          .toList();
    }
    if (_json.containsKey("found")) {
      found = (_json["found"] as core.List)
          .map<EntityResult>((value) => new EntityResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("missing")) {
      missing = (_json["missing"] as core.List)
          .map<EntityResult>((value) => new EntityResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deferred != null) {
      _json["deferred"] = deferred.map((value) => (value).toJson()).toList();
    }
    if (found != null) {
      _json["found"] = found.map((value) => (value).toJson()).toList();
    }
    if (missing != null) {
      _json["missing"] = missing.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A mutation to apply to an entity.
class Mutation {
  /// The version of the entity that this mutation is being applied to. If this
  /// does not match the current version on the server, the mutation conflicts.
  core.String baseVersion;

  /// The key of the entity to delete. The entity may or may not already exist.
  /// Must have a complete key path and must not be reserved/read-only.
  Key delete;

  /// The entity to insert. The entity must not already exist.
  /// The entity key's final path element may be incomplete.
  Entity insert;

  /// The entity to update. The entity must already exist.
  /// Must have a complete key path.
  Entity update;

  /// The entity to upsert. The entity may or may not already exist.
  /// The entity key's final path element may be incomplete.
  Entity upsert;

  Mutation();

  Mutation.fromJson(core.Map _json) {
    if (_json.containsKey("baseVersion")) {
      baseVersion = _json["baseVersion"];
    }
    if (_json.containsKey("delete")) {
      delete = new Key.fromJson(_json["delete"]);
    }
    if (_json.containsKey("insert")) {
      insert = new Entity.fromJson(_json["insert"]);
    }
    if (_json.containsKey("update")) {
      update = new Entity.fromJson(_json["update"]);
    }
    if (_json.containsKey("upsert")) {
      upsert = new Entity.fromJson(_json["upsert"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (baseVersion != null) {
      _json["baseVersion"] = baseVersion;
    }
    if (delete != null) {
      _json["delete"] = (delete).toJson();
    }
    if (insert != null) {
      _json["insert"] = (insert).toJson();
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (upsert != null) {
      _json["upsert"] = (upsert).toJson();
    }
    return _json;
  }
}

/// The result of applying a mutation.
class MutationResult {
  /// Whether a conflict was detected for this mutation. Always false when a
  /// conflict detection strategy field is not set in the mutation.
  core.bool conflictDetected;

  /// The automatically allocated key.
  /// Set only when the mutation allocated a key.
  Key key;

  /// The version of the entity on the server after processing the mutation. If
  /// the mutation doesn't change anything on the server, then the version will
  /// be the version of the current entity or, if no entity is present, a
  /// version
  /// that is strictly greater than the version of any previous entity and less
  /// than the version of any possible future entity.
  core.String version;

  MutationResult();

  MutationResult.fromJson(core.Map _json) {
    if (_json.containsKey("conflictDetected")) {
      conflictDetected = _json["conflictDetected"];
    }
    if (_json.containsKey("key")) {
      key = new Key.fromJson(_json["key"]);
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conflictDetected != null) {
      _json["conflictDetected"] = conflictDetected;
    }
    if (key != null) {
      _json["key"] = (key).toJson();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A partition ID identifies a grouping of entities. The grouping is always
/// by project and namespace, however the namespace ID may be empty.
///
/// A partition ID contains several dimensions:
/// project ID and namespace ID.
///
/// Partition dimensions:
///
/// - May be `""`.
/// - Must be valid UTF-8 bytes.
/// - Must have values that match regex `[A-Za-z\d\.\-_]{1,100}`
/// If the value of any dimension matches regex `__.*__`, the partition is
/// reserved/read-only.
/// A reserved/read-only partition ID is forbidden in certain documented
/// contexts.
///
/// Foreign partition IDs (in which the project ID does
/// not match the context project ID ) are discouraged.
/// Reads and writes of foreign partition IDs may fail if the project is not in
/// an active state.
class PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  core.String namespaceId;

  /// The ID of the project to which the entities belong.
  core.String projectId;

  PartitionId();

  PartitionId.fromJson(core.Map _json) {
    if (_json.containsKey("namespaceId")) {
      namespaceId = _json["namespaceId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namespaceId != null) {
      _json["namespaceId"] = namespaceId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete.
/// If neither is set, the element is incomplete.
class PathElement {
  /// The auto-allocated ID of the entity.
  /// Never equal to zero. Values less than zero are discouraged and may not
  /// be supported in the future.
  core.String id;

  /// The kind of the entity.
  /// A kind matching regex `__.*__` is reserved/read-only.
  /// A kind must not contain more than 1500 bytes when UTF-8 encoded.
  /// Cannot be `""`.
  core.String kind;

  /// The name of the entity.
  /// A name matching regex `__.*__` is reserved/read-only.
  /// A name must not be more than 1500 bytes when UTF-8 encoded.
  /// Cannot be `""`.
  core.String name;

  PathElement();

  PathElement.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
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
    if (id != null) {
      _json["id"] = id;
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

/// A representation of a property in a projection.
class Projection {
  /// The property to project.
  PropertyReference property;

  Projection();

  Projection.fromJson(core.Map _json) {
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A filter on a specific property.
class PropertyFilter {
  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : Less than.
  /// - "LESS_THAN_OR_EQUAL" : Less than or equal.
  /// - "GREATER_THAN" : Greater than.
  /// - "GREATER_THAN_OR_EQUAL" : Greater than or equal.
  /// - "EQUAL" : Equal.
  /// - "HAS_ANCESTOR" : Has ancestor.
  core.String op;

  /// The property to filter by.
  PropertyReference property;

  /// The value to compare the property to.
  Value value;

  PropertyFilter();

  PropertyFilter.fromJson(core.Map _json) {
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (op != null) {
      _json["op"] = op;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// The desired order for a specific property.
class PropertyOrder {
  /// The direction to order by. Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String direction;

  /// The property to order by.
  PropertyReference property;

  PropertyOrder();

  PropertyOrder.fromJson(core.Map _json) {
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A reference to a property relative to the kind expressions.
class PropertyReference {
  /// The name of the property.
  /// If name includes "."s, it may be interpreted as a property name path.
  core.String name;

  PropertyReference();

  PropertyReference.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A query for entities.
class Query {
  /// The properties to make distinct. The query results will contain the first
  /// result for each distinct combination of values for the given properties
  /// (if empty, all results are returned).
  core.List<PropertyReference> distinctOn;

  /// An ending point for the query results. Query cursors are
  /// returned in query result batches and
  /// [can only be used to limit the same
  /// query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String endCursor;
  core.List<core.int> get endCursorAsBytes {
    return convert.base64.decode(endCursor);
  }

  set endCursorAsBytes(core.List<core.int> _bytes) {
    endCursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The filter to apply.
  Filter filter;

  /// The kinds to query (if empty, returns entities of all kinds).
  /// Currently at most 1 kind may be specified.
  core.List<KindExpression> kind;

  /// The maximum number of results to return. Applies after all other
  /// constraints. Optional.
  /// Unspecified is interpreted as no limit.
  /// Must be >= 0 if specified.
  core.int limit;

  /// The number of results to skip. Applies before limit, but after all other
  /// constraints. Optional. Must be >= 0 if specified.
  core.int offset;

  /// The order to apply to the query results (if empty, order is unspecified).
  core.List<PropertyOrder> order;

  /// The projection to return. Defaults to returning all properties.
  core.List<Projection> projection;

  /// A starting point for the query results. Query cursors are
  /// returned in query result batches and
  /// [can only be used to continue the same
  /// query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String startCursor;
  core.List<core.int> get startCursorAsBytes {
    return convert.base64.decode(startCursor);
  }

  set startCursorAsBytes(core.List<core.int> _bytes) {
    startCursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Query();

  Query.fromJson(core.Map _json) {
    if (_json.containsKey("distinctOn")) {
      distinctOn = (_json["distinctOn"] as core.List)
          .map<PropertyReference>(
              (value) => new PropertyReference.fromJson(value))
          .toList();
    }
    if (_json.containsKey("endCursor")) {
      endCursor = _json["endCursor"];
    }
    if (_json.containsKey("filter")) {
      filter = new Filter.fromJson(_json["filter"]);
    }
    if (_json.containsKey("kind")) {
      kind = (_json["kind"] as core.List)
          .map<KindExpression>((value) => new KindExpression.fromJson(value))
          .toList();
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("order")) {
      order = (_json["order"] as core.List)
          .map<PropertyOrder>((value) => new PropertyOrder.fromJson(value))
          .toList();
    }
    if (_json.containsKey("projection")) {
      projection = (_json["projection"] as core.List)
          .map<Projection>((value) => new Projection.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startCursor")) {
      startCursor = _json["startCursor"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (distinctOn != null) {
      _json["distinctOn"] =
          distinctOn.map((value) => (value).toJson()).toList();
    }
    if (endCursor != null) {
      _json["endCursor"] = endCursor;
    }
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind.map((value) => (value).toJson()).toList();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (order != null) {
      _json["order"] = order.map((value) => (value).toJson()).toList();
    }
    if (projection != null) {
      _json["projection"] =
          projection.map((value) => (value).toJson()).toList();
    }
    if (startCursor != null) {
      _json["startCursor"] = startCursor;
    }
    return _json;
  }
}

/// A batch of results produced by a query.
class QueryResultBatch {
  /// A cursor that points to the position after the last result in the batch.
  core.String endCursor;
  core.List<core.int> get endCursorAsBytes {
    return convert.base64.decode(endCursor);
  }

  set endCursorAsBytes(core.List<core.int> _bytes) {
    endCursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The result type for every entity in `entity_results`.
  /// Possible string values are:
  /// - "RESULT_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "FULL" : The key and properties.
  /// - "PROJECTION" : A projected subset of properties. The entity may have no
  /// key.
  /// - "KEY_ONLY" : Only the key.
  core.String entityResultType;

  /// The results for this batch.
  core.List<EntityResult> entityResults;

  /// The state of the query after the current batch.
  /// Possible string values are:
  /// - "MORE_RESULTS_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "NOT_FINISHED" : There may be additional batches to fetch from this
  /// query.
  /// - "MORE_RESULTS_AFTER_LIMIT" : The query is finished, but there may be
  /// more results after the limit.
  /// - "MORE_RESULTS_AFTER_CURSOR" : The query is finished, but there may be
  /// more results after the end
  /// cursor.
  /// - "NO_MORE_RESULTS" : The query is finished, and there are no more
  /// results.
  core.String moreResults;

  /// A cursor that points to the position after the last skipped result.
  /// Will be set when `skipped_results` != 0.
  core.String skippedCursor;
  core.List<core.int> get skippedCursorAsBytes {
    return convert.base64.decode(skippedCursor);
  }

  set skippedCursorAsBytes(core.List<core.int> _bytes) {
    skippedCursor =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The number of results skipped, typically because of an offset.
  core.int skippedResults;

  /// The version number of the snapshot this batch was returned from.
  /// This applies to the range of results from the query's `start_cursor` (or
  /// the beginning of the query if no cursor was given) to this batch's
  /// `end_cursor` (not the query's `end_cursor`).
  ///
  /// In a single transaction, subsequent query result batches for the same
  /// query
  /// can have a greater snapshot version number. Each batch's snapshot version
  /// is valid for all preceding batches.
  /// The value will be zero for eventually consistent queries.
  core.String snapshotVersion;

  QueryResultBatch();

  QueryResultBatch.fromJson(core.Map _json) {
    if (_json.containsKey("endCursor")) {
      endCursor = _json["endCursor"];
    }
    if (_json.containsKey("entityResultType")) {
      entityResultType = _json["entityResultType"];
    }
    if (_json.containsKey("entityResults")) {
      entityResults = (_json["entityResults"] as core.List)
          .map<EntityResult>((value) => new EntityResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("moreResults")) {
      moreResults = _json["moreResults"];
    }
    if (_json.containsKey("skippedCursor")) {
      skippedCursor = _json["skippedCursor"];
    }
    if (_json.containsKey("skippedResults")) {
      skippedResults = _json["skippedResults"];
    }
    if (_json.containsKey("snapshotVersion")) {
      snapshotVersion = _json["snapshotVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endCursor != null) {
      _json["endCursor"] = endCursor;
    }
    if (entityResultType != null) {
      _json["entityResultType"] = entityResultType;
    }
    if (entityResults != null) {
      _json["entityResults"] =
          entityResults.map((value) => (value).toJson()).toList();
    }
    if (moreResults != null) {
      _json["moreResults"] = moreResults;
    }
    if (skippedCursor != null) {
      _json["skippedCursor"] = skippedCursor;
    }
    if (skippedResults != null) {
      _json["skippedResults"] = skippedResults;
    }
    if (snapshotVersion != null) {
      _json["snapshotVersion"] = snapshotVersion;
    }
    return _json;
  }
}

/// Options specific to read-only transactions.
class ReadOnly {
  ReadOnly();

  ReadOnly.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The options shared by read requests.
class ReadOptions {
  /// The non-transactional read consistency to use.
  /// Cannot be set to `STRONG` for global queries.
  /// Possible string values are:
  /// - "READ_CONSISTENCY_UNSPECIFIED" : Unspecified. This value must not be
  /// used.
  /// - "STRONG" : Strong consistency.
  /// - "EVENTUAL" : Eventual consistency.
  core.String readConsistency;

  /// The identifier of the transaction in which to read. A
  /// transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ReadOptions();

  ReadOptions.fromJson(core.Map _json) {
    if (_json.containsKey("readConsistency")) {
      readConsistency = _json["readConsistency"];
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (readConsistency != null) {
      _json["readConsistency"] = readConsistency;
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// Options specific to read / write transactions.
class ReadWrite {
  /// The transaction identifier of the transaction being retried.
  core.String previousTransaction;
  core.List<core.int> get previousTransactionAsBytes {
    return convert.base64.decode(previousTransaction);
  }

  set previousTransactionAsBytes(core.List<core.int> _bytes) {
    previousTransaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ReadWrite();

  ReadWrite.fromJson(core.Map _json) {
    if (_json.containsKey("previousTransaction")) {
      previousTransaction = _json["previousTransaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (previousTransaction != null) {
      _json["previousTransaction"] = previousTransaction;
    }
    return _json;
  }
}

/// The request for Datastore.ReserveIds.
class ReserveIdsRequest {
  /// If not empty, the ID of the database against which to make the request.
  core.String databaseId;

  /// A list of keys with complete key paths whose numeric IDs should not be
  /// auto-allocated.
  core.List<Key> keys;

  ReserveIdsRequest();

  ReserveIdsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("databaseId")) {
      databaseId = _json["databaseId"];
    }
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<Key>((value) => new Key.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (databaseId != null) {
      _json["databaseId"] = databaseId;
    }
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response for Datastore.ReserveIds.
class ReserveIdsResponse {
  ReserveIdsResponse();

  ReserveIdsResponse.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The request for Datastore.Rollback.
class RollbackRequest {
  /// The transaction identifier, returned by a call to
  /// Datastore.BeginTransaction.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  RollbackRequest();

  RollbackRequest.fromJson(core.Map _json) {
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The response for Datastore.Rollback.
/// (an empty message).
class RollbackResponse {
  RollbackResponse();

  RollbackResponse.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The request for Datastore.RunQuery.
class RunQueryRequest {
  /// The GQL query to run.
  GqlQuery gqlQuery;

  /// Entities are partitioned into subsets, identified by a partition ID.
  /// Queries are scoped to a single partition.
  /// This partition ID is normalized with the standard default context
  /// partition ID.
  PartitionId partitionId;

  /// The query to run.
  Query query;

  /// The options for this query.
  ReadOptions readOptions;

  RunQueryRequest();

  RunQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("gqlQuery")) {
      gqlQuery = new GqlQuery.fromJson(_json["gqlQuery"]);
    }
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
    if (_json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(_json["readOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gqlQuery != null) {
      _json["gqlQuery"] = (gqlQuery).toJson();
    }
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (readOptions != null) {
      _json["readOptions"] = (readOptions).toJson();
    }
    return _json;
  }
}

/// The response for Datastore.RunQuery.
class RunQueryResponse {
  /// A batch of query results (always present).
  QueryResultBatch batch;

  /// The parsed form of the `GqlQuery` from the request, if it was set.
  Query query;

  RunQueryResponse();

  RunQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("batch")) {
      batch = new QueryResultBatch.fromJson(_json["batch"]);
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batch != null) {
      _json["batch"] = (batch).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message, and error details. The error code should be an enum value of
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

/// Options for beginning a new transaction.
///
/// Transactions can be created explicitly with calls to
/// Datastore.BeginTransaction or implicitly by setting
/// ReadOptions.new_transaction in read requests.
class TransactionOptions {
  /// The transaction should only allow reads.
  ReadOnly readOnly;

  /// The transaction should allow both reads and writes.
  ReadWrite readWrite;

  TransactionOptions();

  TransactionOptions.fromJson(core.Map _json) {
    if (_json.containsKey("readOnly")) {
      readOnly = new ReadOnly.fromJson(_json["readOnly"]);
    }
    if (_json.containsKey("readWrite")) {
      readWrite = new ReadWrite.fromJson(_json["readWrite"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (readOnly != null) {
      _json["readOnly"] = (readOnly).toJson();
    }
    if (readWrite != null) {
      _json["readWrite"] = (readWrite).toJson();
    }
    return _json;
  }
}

/// A message that can hold any of the supported value types and associated
/// metadata.
class Value {
  /// An array value.
  /// Cannot contain another array value.
  /// A `Value` instance that sets field `array_value` must not set fields
  /// `meaning` or `exclude_from_indexes`.
  ArrayValue arrayValue;

  /// A blob value.
  /// May have at most 1,000,000 bytes.
  /// When `exclude_from_indexes` is false, may have at most 1500 bytes.
  /// In JSON requests, must be base64-encoded.
  core.String blobValue;
  core.List<core.int> get blobValueAsBytes {
    return convert.base64.decode(blobValue);
  }

  set blobValueAsBytes(core.List<core.int> _bytes) {
    blobValue =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A boolean value.
  core.bool booleanValue;

  /// A double value.
  core.double doubleValue;

  /// An entity value.
  ///
  /// - May have no key.
  /// - May have a key with an incomplete key path.
  /// - May have a reserved/read-only key.
  Entity entityValue;

  /// If the value should be excluded from all indexes including those defined
  /// explicitly.
  core.bool excludeFromIndexes;

  /// A geo point value representing a point on the surface of Earth.
  LatLng geoPointValue;

  /// An integer value.
  core.String integerValue;

  /// A key value.
  Key keyValue;

  /// The `meaning` field should only be populated for backwards compatibility.
  core.int meaning;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String nullValue;

  /// A UTF-8 encoded string value.
  /// When `exclude_from_indexes` is false (it is indexed) , may have at most
  /// 1500 bytes.
  /// Otherwise, may be set to at least 1,000,000 bytes.
  core.String stringValue;

  /// A timestamp value.
  /// When stored in the Datastore, precise only to microseconds;
  /// any additional precision is rounded down.
  core.String timestampValue;

  Value();

  Value.fromJson(core.Map _json) {
    if (_json.containsKey("arrayValue")) {
      arrayValue = new ArrayValue.fromJson(_json["arrayValue"]);
    }
    if (_json.containsKey("blobValue")) {
      blobValue = _json["blobValue"];
    }
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"].toDouble();
    }
    if (_json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(_json["entityValue"]);
    }
    if (_json.containsKey("excludeFromIndexes")) {
      excludeFromIndexes = _json["excludeFromIndexes"];
    }
    if (_json.containsKey("geoPointValue")) {
      geoPointValue = new LatLng.fromJson(_json["geoPointValue"]);
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(_json["keyValue"]);
    }
    if (_json.containsKey("meaning")) {
      meaning = _json["meaning"];
    }
    if (_json.containsKey("nullValue")) {
      nullValue = _json["nullValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
    if (_json.containsKey("timestampValue")) {
      timestampValue = _json["timestampValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (arrayValue != null) {
      _json["arrayValue"] = (arrayValue).toJson();
    }
    if (blobValue != null) {
      _json["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      _json["entityValue"] = (entityValue).toJson();
    }
    if (excludeFromIndexes != null) {
      _json["excludeFromIndexes"] = excludeFromIndexes;
    }
    if (geoPointValue != null) {
      _json["geoPointValue"] = (geoPointValue).toJson();
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      _json["keyValue"] = (keyValue).toJson();
    }
    if (meaning != null) {
      _json["meaning"] = meaning;
    }
    if (nullValue != null) {
      _json["nullValue"] = nullValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    if (timestampValue != null) {
      _json["timestampValue"] = timestampValue;
    }
    return _json;
  }
}
