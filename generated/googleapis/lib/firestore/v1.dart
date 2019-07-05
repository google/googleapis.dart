// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.firestore.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firestore/v1';

/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
class FirestoreApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and manage your Google Cloud Datastore data
  static const DatastoreScope = "https://www.googleapis.com/auth/datastore";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FirestoreApi(http.Client client,
      {core.String rootUrl = "https://firestore.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesResourceApi get databases =>
      new ProjectsDatabasesResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsResourceApi get collectionGroups =>
      new ProjectsDatabasesCollectionGroupsResourceApi(_requester);
  ProjectsDatabasesDocumentsResourceApi get documents =>
      new ProjectsDatabasesDocumentsResourceApi(_requester);
  ProjectsDatabasesOperationsResourceApi get operations =>
      new ProjectsDatabasesOperationsResourceApi(_requester);

  ProjectsDatabasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage. Recent updates to
  /// documents may not be reflected in the export. The export occurs in the
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
  /// [name] - Database to export. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> exportDocuments(
      GoogleFirestoreAdminV1ExportDocumentsRequest request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':exportDocuments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Imports documents into Google Cloud Firestore. Existing documents with the
  /// same name are overwritten. The import occurs in the background and its
  /// progress can be monitored and managed via the Operation resource that is
  /// created. If an ImportDocuments operation is cancelled, it is possible
  /// that a subset of the data has already been imported to Cloud Firestore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to import into. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> importDocuments(
      GoogleFirestoreAdminV1ImportDocumentsRequest request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':importDocuments';

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

class ProjectsDatabasesCollectionGroupsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResourceApi get fields =>
      new ProjectsDatabasesCollectionGroupsFieldsResourceApi(_requester);
  ProjectsDatabasesCollectionGroupsIndexesResourceApi get indexes =>
      new ProjectsDatabasesCollectionGroupsIndexesResourceApi(_requester);

  ProjectsDatabasesCollectionGroupsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsDatabasesCollectionGroupsFieldsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the metadata and configuration for a Field.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/fields/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Field].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Field> get(core.String name,
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
        .then((data) => new GoogleFirestoreAdminV1Field.fromJson(data));
  }

  /// Lists the field configuration and metadata for this database.
  ///
  /// Currently, FirestoreAdmin.ListFields only supports listing fields
  /// that have been explicitly overridden. To issue this query, call
  /// FirestoreAdmin.ListFields with the filter set to
  /// `indexConfig.usesAncestorConfig:false`.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$".
  ///
  /// [filter] - The filter to apply to list results. Currently,
  /// FirestoreAdmin.ListFields only supports listing fields
  /// that have been explicitly overridden. To issue this query, call
  /// FirestoreAdmin.ListFields with the filter set to
  /// `indexConfig.usesAncestorConfig:false`.
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListFields, that may be used to get the next
  /// page of results.
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListFieldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListFieldsResponse> list(
      core.String parent,
      {core.String filter,
      core.String pageToken,
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
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/fields';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleFirestoreAdminV1ListFieldsResponse.fromJson(data));
  }

  /// Updates a field configuration. Currently, field updates apply only to
  /// single field index configuration. However, calls to
  /// FirestoreAdmin.UpdateField should provide a field mask to avoid
  /// changing any configuration that the caller isn't aware of. The field mask
  /// should be specified as: `{ paths: "index_config" }`.
  ///
  /// This call returns a google.longrunning.Operation which may be used to
  /// track the status of the field update. The metadata for
  /// the operation will be the type FieldOperationMetadata.
  ///
  /// To configure the default field settings for the database, use
  /// the special `Field` with resource name:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * `.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  ///
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields
  /// within map_value , e.g. `address.city`,
  /// or a special field path. The only valid special field is `*`, which
  /// represents any field.
  ///
  /// Field paths may be quoted using ` (backtick). The only character that
  /// needs
  /// to be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that
  /// must be quoted include: `*`, `.`,
  /// ``` (backtick), `[`, `]`, as well as any ascii symbolic characters.
  ///
  /// Examples:
  /// (Note: Comments here are written in markdown syntax, so there is an
  ///  additional layer of backticks to represent a code block)
  /// `\`address.city\`` represents a field named `address.city`, not the map
  /// key
  /// `city` in the field `address`.
  /// `\`*\`` represents a field named `*`, not any field.
  ///
  /// A special `Field` contains the default indexing settings for all fields.
  /// This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * `
  /// Indexes defined on this `Field` will be applied to all fields which do not
  /// have their own `Field` index configuration.
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/fields/[^/]+$".
  ///
  /// [updateMask] - A mask, relative to the field. If specified, only
  /// configuration specified
  /// by this field_mask will be updated in the field.
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
      GoogleFirestoreAdminV1Field request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

class ProjectsDatabasesCollectionGroupsIndexesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsIndexesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a composite index. This returns a google.longrunning.Operation
  /// which may be used to track the status of the creation. The metadata for
  /// the operation will be the type IndexOperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$".
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
      GoogleFirestoreAdminV1Index request, core.String parent,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/indexes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Deletes a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/indexes/[^/]+$".
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

  /// Gets a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/indexes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Index> get(core.String name,
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
        .then((data) => new GoogleFirestoreAdminV1Index.fromJson(data));
  }

  /// Lists composite indexes.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$".
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListIndexes, that may be used to get the next
  /// page of results.
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [filter] - The filter to apply to list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListIndexesResponse> list(
      core.String parent,
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

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/indexes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleFirestoreAdminV1ListIndexesResponse.fromJson(data));
  }
}

class ProjectsDatabasesDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets multiple documents.
  ///
  /// Documents returned by this method are not guaranteed to be returned in the
  /// same order that they were requested.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetDocumentsResponse> batchGet(
      BatchGetDocumentsRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:batchGet';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchGetDocumentsResponse.fromJson(data));
  }

  /// Starts a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
      BeginTransactionRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:beginTransaction';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BeginTransactionResponse.fromJson(data));
  }

  /// Commits a transaction, while optionally updating documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
      CommitRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:commit';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CommitResponse.fromJson(data));
  }

  /// Creates a new document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource. For example:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+/documents/.+$".
  ///
  /// [collectionId] - The collection ID, relative to `parent`, to list. For
  /// example: `chatrooms`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [documentId] - The client-assigned document ID to use for this document.
  ///
  /// Optional. If not specified, an ID will be assigned by the service.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> createDocument(
      Document request, core.String parent, core.String collectionId,
      {core.List<core.String> mask_fieldPaths,
      core.String documentId,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (mask_fieldPaths != null) {
      _queryParams["mask.fieldPaths"] = mask_fieldPaths;
    }
    if (documentId != null) {
      _queryParams["documentId"] = [documentId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/' +
        commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Document.fromJson(data));
  }

  /// Deletes a document.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Document to delete. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at
  /// that time.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist.
  /// When set to `false`, the target document must not exist.
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
  async.Future<Empty> delete(core.String name,
      {core.String currentDocument_updateTime,
      core.bool currentDocument_exists,
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
    if (currentDocument_updateTime != null) {
      _queryParams["currentDocument.updateTime"] = [currentDocument_updateTime];
    }
    if (currentDocument_exists != null) {
      _queryParams["currentDocument.exists"] = ["${currentDocument_exists}"];
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

  /// Gets a single document.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Document to get. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [readTime] - Reads the version of the document at the given time.
  /// This may not be older than 60 seconds.
  ///
  /// [transaction] - Reads the document in a transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> get(core.String name,
      {core.List<core.String> mask_fieldPaths,
      core.String readTime,
      core.String transaction,
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
    if (mask_fieldPaths != null) {
      _queryParams["mask.fieldPaths"] = mask_fieldPaths;
    }
    if (readTime != null) {
      _queryParams["readTime"] = [readTime];
    }
    if (transaction != null) {
      _queryParams["transaction"] = [transaction];
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
    return _response.then((data) => new Document.fromJson(data));
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
  ///
  /// [collectionId] - The collection ID, relative to `parent`, to list. For
  /// example: `chatrooms`
  /// or `messages`.
  ///
  /// [showMissing] - If the list should show missing documents. A missing
  /// document is a
  /// document that does not exist but has sub-documents. These documents will
  /// be returned with a key but will not have fields, Document.create_time,
  /// or Document.update_time set.
  ///
  /// Requests with `show_missing` may not specify `where` or
  /// `order_by`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of documents to return.
  ///
  /// [transaction] - Reads documents in a transaction.
  ///
  /// [readTime] - Reads documents as they were at the given time.
  /// This may not be older than 60 seconds.
  ///
  /// [orderBy] - The order to sort results by. For example: `priority desc,
  /// name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDocumentsResponse> list(
      core.String parent, core.String collectionId,
      {core.bool showMissing,
      core.List<core.String> mask_fieldPaths,
      core.String pageToken,
      core.int pageSize,
      core.String transaction,
      core.String readTime,
      core.String orderBy,
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
    if (collectionId == null) {
      throw new core.ArgumentError("Parameter collectionId is required.");
    }
    if (showMissing != null) {
      _queryParams["showMissing"] = ["${showMissing}"];
    }
    if (mask_fieldPaths != null) {
      _queryParams["mask.fieldPaths"] = mask_fieldPaths;
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (transaction != null) {
      _queryParams["transaction"] = [transaction];
    }
    if (readTime != null) {
      _queryParams["readTime"] = [readTime];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/' +
        commons.Escaper.ecapeVariable('$collectionId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDocumentsResponse.fromJson(data));
  }

  /// Lists all the collection IDs underneath a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent document. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCollectionIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCollectionIdsResponse> listCollectionIds(
      ListCollectionIdsRequest request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':listCollectionIds';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListCollectionIdsResponse.fromJson(data));
  }

  /// Listens to changes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListenResponse> listen(
      ListenRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:listen';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListenResponse.fromJson(data));
  }

  /// Updates or inserts a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
  ///
  /// [updateMask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at
  /// that time.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist.
  /// When set to `false`, the target document must not exist.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> patch(Document request, core.String name,
      {core.List<core.String> updateMask_fieldPaths,
      core.List<core.String> mask_fieldPaths,
      core.String currentDocument_updateTime,
      core.bool currentDocument_exists,
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
    if (updateMask_fieldPaths != null) {
      _queryParams["updateMask.fieldPaths"] = updateMask_fieldPaths;
    }
    if (mask_fieldPaths != null) {
      _queryParams["mask.fieldPaths"] = mask_fieldPaths;
    }
    if (currentDocument_updateTime != null) {
      _queryParams["currentDocument.updateTime"] = [currentDocument_updateTime];
    }
    if (currentDocument_exists != null) {
      _queryParams["currentDocument.exists"] = ["${currentDocument_exists}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Document.fromJson(data));
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
  async.Future<Empty> rollback(RollbackRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:rollback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Runs a query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.+$".
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
      RunQueryRequest request, core.String parent,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + ':runQuery';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RunQueryResponse.fromJson(data));
  }

  /// Streams batches of document updates and deletes, in order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// This is only required in the first message.
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteResponse> write(WriteRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/documents:write';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new WriteResponse.fromJson(data));
  }
}

class ProjectsDatabasesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesOperationsResourceApi(commons.ApiRequester client)
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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/operations/[^/]+$".
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
      GoogleLongrunningCancelOperationRequest request, core.String name,
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
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/operations/[^/]+$".
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
  /// Value must have pattern
  /// "^projects/[^/]+/databases/[^/]+/operations/[^/]+$".
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
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
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
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
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
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Location> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
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
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(core.String name,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

/// An array value.
class ArrayValue {
  /// Values in the array.
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

/// The request for Firestore.BatchGetDocuments.
class BatchGetDocumentsRequest {
  /// The names of the documents to retrieve. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the
  /// given `database`. Duplicate names will be elided.
  core.List<core.String> documents;

  /// The fields to return. If not set, returns all fields.
  ///
  /// If a document has a field that is not present in this mask, that field
  /// will
  /// not be returned in the response.
  DocumentMask mask;

  /// Starts a new transaction and reads the documents.
  /// Defaults to a read-only transaction.
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  TransactionOptions newTransaction;

  /// Reads documents as they were at the given time.
  /// This may not be older than 60 seconds.
  core.String readTime;

  /// Reads documents in a transaction.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  BatchGetDocumentsRequest();

  BatchGetDocumentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = (_json["documents"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("mask")) {
      mask = new DocumentMask.fromJson(_json["mask"]);
    }
    if (_json.containsKey("newTransaction")) {
      newTransaction = new TransactionOptions.fromJson(_json["newTransaction"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documents != null) {
      _json["documents"] = documents;
    }
    if (mask != null) {
      _json["mask"] = (mask).toJson();
    }
    if (newTransaction != null) {
      _json["newTransaction"] = (newTransaction).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The streamed response for Firestore.BatchGetDocuments.
class BatchGetDocumentsResponse {
  /// A document that was requested.
  Document found;

  /// A document name that was requested but does not exist. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String missing;

  /// The time at which the document was read.
  /// This may be monotically increasing, in this case the previous documents in
  /// the result stream are guaranteed not to have changed between their
  /// read_time and this one.
  core.String readTime;

  /// The transaction that was started as part of this request.
  /// Will only be set in the first response, and only if
  /// BatchGetDocumentsRequest.new_transaction was set in the request.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  BatchGetDocumentsResponse();

  BatchGetDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("found")) {
      found = new Document.fromJson(_json["found"]);
    }
    if (_json.containsKey("missing")) {
      missing = _json["missing"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (found != null) {
      _json["found"] = (found).toJson();
    }
    if (missing != null) {
      _json["missing"] = missing;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The request for Firestore.BeginTransaction.
class BeginTransactionRequest {
  /// The options for the transaction.
  /// Defaults to a read-write transaction.
  TransactionOptions options;

  BeginTransactionRequest();

  BeginTransactionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("options")) {
      options = new TransactionOptions.fromJson(_json["options"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (options != null) {
      _json["options"] = (options).toJson();
    }
    return _json;
  }
}

/// The response for Firestore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction that was started.
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

/// A selection of a collection, such as `messages as m1`.
class CollectionSelector {
  /// When false, selects only collections that are immediate children of
  /// the `parent` specified in the containing `RunQueryRequest`.
  /// When true, selects all descendant collections.
  core.bool allDescendants;

  /// The collection ID.
  /// When set, selects only collections with this ID.
  core.String collectionId;

  CollectionSelector();

  CollectionSelector.fromJson(core.Map _json) {
    if (_json.containsKey("allDescendants")) {
      allDescendants = _json["allDescendants"];
    }
    if (_json.containsKey("collectionId")) {
      collectionId = _json["collectionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allDescendants != null) {
      _json["allDescendants"] = allDescendants;
    }
    if (collectionId != null) {
      _json["collectionId"] = collectionId;
    }
    return _json;
  }
}

/// The request for Firestore.Commit.
class CommitRequest {
  /// If set, applies all writes in this transaction, and commits it.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  core.List<Write> writes;

  CommitRequest();

  CommitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
    if (_json.containsKey("writes")) {
      writes = (_json["writes"] as core.List)
          .map<Write>((value) => new Write.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    if (writes != null) {
      _json["writes"] = writes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response for Firestore.Commit.
class CommitResponse {
  /// The time at which the commit occurred.
  core.String commitTime;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the
  /// request.
  core.List<WriteResult> writeResults;

  CommitResponse();

  CommitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("commitTime")) {
      commitTime = _json["commitTime"];
    }
    if (_json.containsKey("writeResults")) {
      writeResults = (_json["writeResults"] as core.List)
          .map<WriteResult>((value) => new WriteResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commitTime != null) {
      _json["commitTime"] = commitTime;
    }
    if (writeResults != null) {
      _json["writeResults"] =
          writeResults.map((value) => (value).toJson()).toList();
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

/// A position in a query result set.
class Cursor {
  /// If the position is just before or just after the given values, relative
  /// to the sort order defined by the query.
  core.bool before;

  /// The values that represent a position, in the order they appear in
  /// the order by clause of a query.
  ///
  /// Can contain fewer values than specified in the order by clause.
  core.List<Value> values;

  Cursor();

  Cursor.fromJson(core.Map _json) {
    if (_json.containsKey("before")) {
      before = _json["before"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<Value>((value) => new Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (before != null) {
      _json["before"] = before;
    }
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Firestore document.
///
/// Must not exceed 1 MiB - 4 bytes.
class Document {
  /// Output only. The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and
  /// the `read_time` of a query.
  core.String createTime;

  /// The document's fields.
  ///
  /// The map keys represent field names.
  ///
  /// A simple field name contains only characters `a` to `z`, `A` to `Z`,
  /// `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
  /// `foo_bar_17`.
  ///
  /// Field names matching the regular expression `__.*__` are reserved.
  /// Reserved
  /// field names are forbidden except in certain documented contexts. The map
  /// keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
  /// empty.
  ///
  /// Field paths may be used in other contexts to refer to structured fields
  /// defined here. For `map_value`, the field path is represented by the simple
  /// or quoted field names of the containing fields, delimited by `.`. For
  /// example, the structured field
  /// `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
  /// represented by the field path `foo.x&y`.
  ///
  /// Within a field path, a quoted field name starts and ends with `` ` `` and
  /// may contain any character. Some characters, including `` ` ``, must be
  /// escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
  /// `` `bak\`tik` `` represents `` bak`tik ``.
  core.Map<core.String, Value> fields;

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String name;

  /// Output only. The time at which the document was last changed.
  ///
  /// This value is initially set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be
  /// compared to values from other documents and the `read_time` of a query.
  core.String updateTime;

  Document();

  Document.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("fields")) {
      fields = commons.mapMap<core.Map, Value>(
          _json["fields"].cast<core.String, core.Map>(),
          (core.Map item) => new Value.fromJson(item));
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (fields != null) {
      _json["fields"] =
          commons.mapMap<Value, core.Map<core.String, core.Object>>(
              fields, (Value item) => (item).toJson());
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// A Document has changed.
///
/// May be the result of multiple writes, including deletes, that
/// ultimately resulted in a new value for the Document.
///
/// Multiple DocumentChange messages may be returned for the same logical
/// change, if multiple targets are affected.
class DocumentChange {
  /// The new state of the Document.
  ///
  /// If `mask` is set, contains only fields that were updated or added.
  Document document;

  /// A set of target IDs for targets that no longer match this document.
  core.List<core.int> removedTargetIds;

  /// A set of target IDs of targets that match this document.
  core.List<core.int> targetIds;

  DocumentChange();

  DocumentChange.fromJson(core.Map _json) {
    if (_json.containsKey("document")) {
      document = new Document.fromJson(_json["document"]);
    }
    if (_json.containsKey("removedTargetIds")) {
      removedTargetIds =
          (_json["removedTargetIds"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("targetIds")) {
      targetIds = (_json["targetIds"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (document != null) {
      _json["document"] = (document).toJson();
    }
    if (removedTargetIds != null) {
      _json["removedTargetIds"] = removedTargetIds;
    }
    if (targetIds != null) {
      _json["targetIds"] = targetIds;
    }
    return _json;
  }
}

/// A Document has been deleted.
///
/// May be the result of multiple writes, including updates, the
/// last of which deleted the Document.
///
/// Multiple DocumentDelete messages may be returned for the same logical
/// delete, if multiple targets are affected.
class DocumentDelete {
  /// The resource name of the Document that was deleted.
  core.String document;

  /// The read timestamp at which the delete was observed.
  ///
  /// Greater or equal to the `commit_time` of the delete.
  core.String readTime;

  /// A set of target IDs for targets that previously matched this entity.
  core.List<core.int> removedTargetIds;

  DocumentDelete();

  DocumentDelete.fromJson(core.Map _json) {
    if (_json.containsKey("document")) {
      document = _json["document"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("removedTargetIds")) {
      removedTargetIds =
          (_json["removedTargetIds"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (document != null) {
      _json["document"] = document;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (removedTargetIds != null) {
      _json["removedTargetIds"] = removedTargetIds;
    }
    return _json;
  }
}

/// A set of field paths on a document.
/// Used to restrict a get or update operation on a document to a subset of its
/// fields.
/// This is different from standard field masks, as this is always scoped to a
/// Document, and takes in account the dynamic nature of Value.
class DocumentMask {
  /// The list of field paths in the mask. See Document.fields for a field
  /// path syntax reference.
  core.List<core.String> fieldPaths;

  DocumentMask();

  DocumentMask.fromJson(core.Map _json) {
    if (_json.containsKey("fieldPaths")) {
      fieldPaths = (_json["fieldPaths"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldPaths != null) {
      _json["fieldPaths"] = fieldPaths;
    }
    return _json;
  }
}

/// A Document has been removed from the view of the targets.
///
/// Sent if the document is no longer relevant to a target and is out of view.
/// Can be sent instead of a DocumentDelete or a DocumentChange if the server
/// can not send the new value of the document.
///
/// Multiple DocumentRemove messages may be returned for the same logical
/// write or delete, if multiple targets are affected.
class DocumentRemove {
  /// The resource name of the Document that has gone out of view.
  core.String document;

  /// The read timestamp at which the remove was observed.
  ///
  /// Greater or equal to the `commit_time` of the change/delete/remove.
  core.String readTime;

  /// A set of target IDs for targets that previously matched this document.
  core.List<core.int> removedTargetIds;

  DocumentRemove();

  DocumentRemove.fromJson(core.Map _json) {
    if (_json.containsKey("document")) {
      document = _json["document"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("removedTargetIds")) {
      removedTargetIds =
          (_json["removedTargetIds"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (document != null) {
      _json["document"] = document;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (removedTargetIds != null) {
      _json["removedTargetIds"] = removedTargetIds;
    }
    return _json;
  }
}

/// A transformation of a document.
class DocumentTransform {
  /// The name of the document to transform.
  core.String document;

  /// The list of transformations to apply to the fields of the document, in
  /// order.
  /// This must not be empty.
  core.List<FieldTransform> fieldTransforms;

  DocumentTransform();

  DocumentTransform.fromJson(core.Map _json) {
    if (_json.containsKey("document")) {
      document = _json["document"];
    }
    if (_json.containsKey("fieldTransforms")) {
      fieldTransforms = (_json["fieldTransforms"] as core.List)
          .map<FieldTransform>((value) => new FieldTransform.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (document != null) {
      _json["document"] = document;
    }
    if (fieldTransforms != null) {
      _json["fieldTransforms"] =
          fieldTransforms.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A target specified by a set of documents names.
class DocumentsTarget {
  /// The names of the documents to retrieve. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  core.List<core.String> documents;

  DocumentsTarget();

  DocumentsTarget.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = (_json["documents"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documents != null) {
      _json["documents"] = documents;
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

/// A digest of all the documents that match a given target.
class ExistenceFilter {
  /// The total count of documents that match target_id.
  ///
  /// If different from the count of documents in the client that match, the
  /// client must manually determine which documents no longer match the target.
  core.int count;

  /// The target ID to which this filter applies.
  core.int targetId;

  ExistenceFilter();

  ExistenceFilter.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    return _json;
  }
}

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter by.
  FieldReference field;

  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : Less than. Requires that the field come first in
  /// `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : Less than or equal. Requires that the field come
  /// first in `order_by`.
  /// - "GREATER_THAN" : Greater than. Requires that the field come first in
  /// `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : Greater than or equal. Requires that the field
  /// come first in
  /// `order_by`.
  /// - "EQUAL" : Equal.
  /// - "ARRAY_CONTAINS" : Contains. Requires that the field is an array.
  core.String op;

  /// The value to compare to.
  Value value;

  FieldFilter();

  FieldFilter.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new FieldReference.fromJson(_json["field"]);
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    if (op != null) {
      _json["op"] = op;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// A reference to a field, such as `max(messages.time) as max_time`.
class FieldReference {
  core.String fieldPath;

  FieldReference();

  FieldReference.fromJson(core.Map _json) {
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
    }
    return _json;
  }
}

/// A transformation of a field of the document.
class FieldTransform {
  /// Append the given elements in order if they are not already present in
  /// the current field value.
  /// If the field is not an array, or if the field does not yet exist, it is
  /// first set to the empty array.
  ///
  /// Equivalent numbers of different types (e.g. 3L and 3.0) are
  /// considered equal when checking if a value is missing.
  /// NaN is equal to NaN, and Null is equal to Null.
  /// If the input contains multiple equivalent values, only the first will
  /// be considered.
  ///
  /// The corresponding transform_result will be the null value.
  ArrayValue appendMissingElements;

  /// The path of the field. See Document.fields for the field path syntax
  /// reference.
  core.String fieldPath;

  /// Adds the given value to the field's current value.
  ///
  /// This must be an integer or a double value.
  /// If the field is not an integer or double, or if the field does not yet
  /// exist, the transformation will set the field to the given value.
  /// If either of the given value or the current field value are doubles,
  /// both values will be interpreted as doubles. Double arithmetic and
  /// representation of double values follow IEEE 754 semantics.
  /// If there is positive/negative integer overflow, the field is resolved
  /// to the largest magnitude positive/negative integer.
  Value increment;

  /// Sets the field to the maximum of its current value and the given value.
  ///
  /// This must be an integer or a double value.
  /// If the field is not an integer or double, or if the field does not yet
  /// exist, the transformation will set the field to the given value.
  /// If a maximum operation is applied where the field and the input value
  /// are of mixed types (that is - one is an integer and one is a double)
  /// the field takes on the type of the larger operand. If the operands are
  /// equivalent (e.g. 3 and 3.0), the field does not change.
  /// 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and
  /// zero input value is always the stored value.
  /// The maximum of any numeric value x and NaN is NaN.
  Value maximum;

  /// Sets the field to the minimum of its current value and the given value.
  ///
  /// This must be an integer or a double value.
  /// If the field is not an integer or double, or if the field does not yet
  /// exist, the transformation will set the field to the input value.
  /// If a minimum operation is applied where the field and the input value
  /// are of mixed types (that is - one is an integer and one is a double)
  /// the field takes on the type of the smaller operand. If the operands are
  /// equivalent (e.g. 3 and 3.0), the field does not change.
  /// 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value and
  /// zero input value is always the stored value.
  /// The minimum of any numeric value x and NaN is NaN.
  Value minimum;

  /// Remove all of the given elements from the array in the field.
  /// If the field is not an array, or if the field does not yet exist, it is
  /// set to the empty array.
  ///
  /// Equivalent numbers of the different types (e.g. 3L and 3.0) are
  /// considered equal when deciding whether an element should be removed.
  /// NaN is equal to NaN, and Null is equal to Null.
  /// This will remove all equivalent values if there are duplicates.
  ///
  /// The corresponding transform_result will be the null value.
  ArrayValue removeAllFromArray;

  /// Sets the field to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond
  /// precision.
  core.String setToServerValue;

  FieldTransform();

  FieldTransform.fromJson(core.Map _json) {
    if (_json.containsKey("appendMissingElements")) {
      appendMissingElements =
          new ArrayValue.fromJson(_json["appendMissingElements"]);
    }
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
    if (_json.containsKey("increment")) {
      increment = new Value.fromJson(_json["increment"]);
    }
    if (_json.containsKey("maximum")) {
      maximum = new Value.fromJson(_json["maximum"]);
    }
    if (_json.containsKey("minimum")) {
      minimum = new Value.fromJson(_json["minimum"]);
    }
    if (_json.containsKey("removeAllFromArray")) {
      removeAllFromArray = new ArrayValue.fromJson(_json["removeAllFromArray"]);
    }
    if (_json.containsKey("setToServerValue")) {
      setToServerValue = _json["setToServerValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appendMissingElements != null) {
      _json["appendMissingElements"] = (appendMissingElements).toJson();
    }
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
    }
    if (increment != null) {
      _json["increment"] = (increment).toJson();
    }
    if (maximum != null) {
      _json["maximum"] = (maximum).toJson();
    }
    if (minimum != null) {
      _json["minimum"] = (minimum).toJson();
    }
    if (removeAllFromArray != null) {
      _json["removeAllFromArray"] = (removeAllFromArray).toJson();
    }
    if (setToServerValue != null) {
      _json["setToServerValue"] = setToServerValue;
    }
    return _json;
  }
}

/// A filter.
class Filter {
  /// A composite filter.
  CompositeFilter compositeFilter;

  /// A filter on a document field.
  FieldFilter fieldFilter;

  /// A filter that takes exactly one argument.
  UnaryFilter unaryFilter;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(_json["compositeFilter"]);
    }
    if (_json.containsKey("fieldFilter")) {
      fieldFilter = new FieldFilter.fromJson(_json["fieldFilter"]);
    }
    if (_json.containsKey("unaryFilter")) {
      unaryFilter = new UnaryFilter.fromJson(_json["unaryFilter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compositeFilter != null) {
      _json["compositeFilter"] = (compositeFilter).toJson();
    }
    if (fieldFilter != null) {
      _json["fieldFilter"] = (fieldFilter).toJson();
    }
    if (unaryFilter != null) {
      _json["unaryFilter"] = (unaryFilter).toJson();
    }
    return _json;
  }
}

/// Metadata for google.longrunning.Operation results from
/// FirestoreAdmin.ExportDocuments.
class GoogleFirestoreAdminV1ExportDocumentsMetadata {
  /// Which collection ids are being exported.
  core.List<core.String> collectionIds;

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  core.String endTime;

  /// The state of the export operation.
  /// Possible string values are:
  /// - "OPERATION_STATE_UNSPECIFIED" : Unspecified.
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
  core.String operationState;

  /// Where the entities are being exported to.
  core.String outputUriPrefix;

  /// The progress, in bytes, of this operation.
  GoogleFirestoreAdminV1Progress progressBytes;

  /// The progress, in documents, of this operation.
  GoogleFirestoreAdminV1Progress progressDocuments;

  /// The time this operation started.
  core.String startTime;

  GoogleFirestoreAdminV1ExportDocumentsMetadata();

  GoogleFirestoreAdminV1ExportDocumentsMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("collectionIds")) {
      collectionIds = (_json["collectionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("operationState")) {
      operationState = _json["operationState"];
    }
    if (_json.containsKey("outputUriPrefix")) {
      outputUriPrefix = _json["outputUriPrefix"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleFirestoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressDocuments")) {
      progressDocuments = new GoogleFirestoreAdminV1Progress.fromJson(
          _json["progressDocuments"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionIds != null) {
      _json["collectionIds"] = collectionIds;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (operationState != null) {
      _json["operationState"] = operationState;
    }
    if (outputUriPrefix != null) {
      _json["outputUriPrefix"] = outputUriPrefix;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressDocuments != null) {
      _json["progressDocuments"] = (progressDocuments).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// The request for FirestoreAdmin.ExportDocuments.
class GoogleFirestoreAdminV1ExportDocumentsRequest {
  /// Which collection ids to export. Unspecified means all collections.
  core.List<core.String> collectionIds;

  /// The output URI. Currently only supports Google Cloud Storage URIs of the
  /// form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name
  /// of the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional
  /// Google Cloud Storage namespace path. When
  /// choosing a name, be sure to consider Google Cloud Storage naming
  /// guidelines: https://cloud.google.com/storage/docs/naming.
  /// If the URI is a bucket (without a namespace path), a prefix will be
  /// generated based on the start time.
  core.String outputUriPrefix;

  GoogleFirestoreAdminV1ExportDocumentsRequest();

  GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("collectionIds")) {
      collectionIds = (_json["collectionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("outputUriPrefix")) {
      outputUriPrefix = _json["outputUriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionIds != null) {
      _json["collectionIds"] = collectionIds;
    }
    if (outputUriPrefix != null) {
      _json["outputUriPrefix"] = outputUriPrefix;
    }
    return _json;
  }
}

/// Returned in the google.longrunning.Operation response field.
class GoogleFirestoreAdminV1ExportDocumentsResponse {
  /// Location of the output files. This can be used to begin an import
  /// into Cloud Firestore (this project or another project) after the operation
  /// completes successfully.
  core.String outputUriPrefix;

  GoogleFirestoreAdminV1ExportDocumentsResponse();

  GoogleFirestoreAdminV1ExportDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputUriPrefix")) {
      outputUriPrefix = _json["outputUriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputUriPrefix != null) {
      _json["outputUriPrefix"] = outputUriPrefix;
    }
    return _json;
  }
}

/// Represents a single field in the database.
///
/// Fields are grouped by their "Collection Group", which represent all
/// collections in the database with the same id.
class GoogleFirestoreAdminV1Field {
  /// The index configuration for this field. If unset, field indexing will
  /// revert to the configuration defined by the `ancestor_field`. To
  /// explicitly remove all indexes for this field, specify an index config
  /// with an empty list of indexes.
  GoogleFirestoreAdminV1IndexConfig indexConfig;

  /// A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  ///
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields
  /// within map_value , e.g. `address.city`,
  /// or a special field path. The only valid special field is `*`, which
  /// represents any field.
  ///
  /// Field paths may be quoted using ` (backtick). The only character that
  /// needs
  /// to be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that
  /// must be quoted include: `*`, `.`,
  /// ``` (backtick), `[`, `]`, as well as any ascii symbolic characters.
  ///
  /// Examples:
  /// (Note: Comments here are written in markdown syntax, so there is an
  ///  additional layer of backticks to represent a code block)
  /// `\`address.city\`` represents a field named `address.city`, not the map
  /// key
  /// `city` in the field `address`.
  /// `\`*\`` represents a field named `*`, not any field.
  ///
  /// A special `Field` contains the default indexing settings for all fields.
  /// This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * `
  /// Indexes defined on this `Field` will be applied to all fields which do not
  /// have their own `Field` index configuration.
  core.String name;

  GoogleFirestoreAdminV1Field();

  GoogleFirestoreAdminV1Field.fromJson(core.Map _json) {
    if (_json.containsKey("indexConfig")) {
      indexConfig =
          new GoogleFirestoreAdminV1IndexConfig.fromJson(_json["indexConfig"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexConfig != null) {
      _json["indexConfig"] = (indexConfig).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Metadata for google.longrunning.Operation results from
/// FirestoreAdmin.UpdateField.
class GoogleFirestoreAdminV1FieldOperationMetadata {
  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  core.String endTime;

  /// The field resource that this operation is acting on. For example:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  core.String field;

  /// A list of IndexConfigDelta, which describe the intent of this
  /// operation.
  core.List<GoogleFirestoreAdminV1IndexConfigDelta> indexConfigDeltas;

  /// The progress, in bytes, of this operation.
  GoogleFirestoreAdminV1Progress progressBytes;

  /// The progress, in documents, of this operation.
  GoogleFirestoreAdminV1Progress progressDocuments;

  /// The time this operation started.
  core.String startTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "OPERATION_STATE_UNSPECIFIED" : Unspecified.
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

  GoogleFirestoreAdminV1FieldOperationMetadata();

  GoogleFirestoreAdminV1FieldOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
    if (_json.containsKey("indexConfigDeltas")) {
      indexConfigDeltas = (_json["indexConfigDeltas"] as core.List)
          .map<GoogleFirestoreAdminV1IndexConfigDelta>((value) =>
              new GoogleFirestoreAdminV1IndexConfigDelta.fromJson(value))
          .toList();
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleFirestoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressDocuments")) {
      progressDocuments = new GoogleFirestoreAdminV1Progress.fromJson(
          _json["progressDocuments"]);
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
    if (field != null) {
      _json["field"] = field;
    }
    if (indexConfigDeltas != null) {
      _json["indexConfigDeltas"] =
          indexConfigDeltas.map((value) => (value).toJson()).toList();
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressDocuments != null) {
      _json["progressDocuments"] = (progressDocuments).toJson();
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

/// Metadata for google.longrunning.Operation results from
/// FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1ImportDocumentsMetadata {
  /// Which collection ids are being imported.
  core.List<core.String> collectionIds;

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  core.String endTime;

  /// The location of the documents being imported.
  core.String inputUriPrefix;

  /// The state of the import operation.
  /// Possible string values are:
  /// - "OPERATION_STATE_UNSPECIFIED" : Unspecified.
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
  core.String operationState;

  /// The progress, in bytes, of this operation.
  GoogleFirestoreAdminV1Progress progressBytes;

  /// The progress, in documents, of this operation.
  GoogleFirestoreAdminV1Progress progressDocuments;

  /// The time this operation started.
  core.String startTime;

  GoogleFirestoreAdminV1ImportDocumentsMetadata();

  GoogleFirestoreAdminV1ImportDocumentsMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("collectionIds")) {
      collectionIds = (_json["collectionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("inputUriPrefix")) {
      inputUriPrefix = _json["inputUriPrefix"];
    }
    if (_json.containsKey("operationState")) {
      operationState = _json["operationState"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleFirestoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressDocuments")) {
      progressDocuments = new GoogleFirestoreAdminV1Progress.fromJson(
          _json["progressDocuments"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionIds != null) {
      _json["collectionIds"] = collectionIds;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (inputUriPrefix != null) {
      _json["inputUriPrefix"] = inputUriPrefix;
    }
    if (operationState != null) {
      _json["operationState"] = operationState;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressDocuments != null) {
      _json["progressDocuments"] = (progressDocuments).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1ImportDocumentsRequest {
  /// Which collection ids to import. Unspecified means all collections included
  /// in the import.
  core.List<core.String> collectionIds;

  /// Location of the exported files.
  /// This must match the output_uri_prefix of an ExportDocumentsResponse from
  /// an export that has completed successfully.
  /// See:
  /// google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix.
  core.String inputUriPrefix;

  GoogleFirestoreAdminV1ImportDocumentsRequest();

  GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("collectionIds")) {
      collectionIds = (_json["collectionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("inputUriPrefix")) {
      inputUriPrefix = _json["inputUriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionIds != null) {
      _json["collectionIds"] = collectionIds;
    }
    if (inputUriPrefix != null) {
      _json["inputUriPrefix"] = inputUriPrefix;
    }
    return _json;
  }
}

/// Cloud Firestore indexes enable simple and complex queries against
/// documents in a database.
class GoogleFirestoreAdminV1Index {
  /// The fields supported by this index.
  ///
  /// For composite indexes, this is always 2 or more fields.
  /// The last field entry is always for the field path `__name__`. If, on
  /// creation, `__name__` was not specified as the last field, it will be added
  /// automatically with the same direction as that of the last field defined.
  /// If
  /// the final field in a composite index is not directional, the `__name__`
  /// will be ordered ASCENDING (unless explicitly specified).
  ///
  /// For single field indexes, this will always be exactly one entry with a
  /// field path equal to the field path of the associated field.
  core.List<GoogleFirestoreAdminV1IndexField> fields;

  /// Output only.
  /// A server defined name for this index.
  /// The form of this name for composite indexes will be:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}`
  /// For single field indexes, this field will be empty.
  core.String name;

  /// Indexes with a collection query scope specified allow queries
  /// against a collection that is the child of a specific document, specified
  /// at
  /// query time, and that has the same collection id.
  ///
  /// Indexes with a collection group query scope specified allow queries
  /// against
  /// all collections descended from a specific document, specified at query
  /// time, and that have the same collection id as this index.
  /// Possible string values are:
  /// - "QUERY_SCOPE_UNSPECIFIED" : The query scope is unspecified. Not a valid
  /// option.
  /// - "COLLECTION" : Indexes with a collection query scope specified allow
  /// queries
  /// against a collection that is the child of a specific document, specified
  /// at query time, and that has the collection id specified by the index.
  core.String queryScope;

  /// Output only.
  /// The serving state of the index.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created.
  /// There is an active long-running operation for the index.
  /// The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used.
  /// The index is updated when writing a document.
  /// The index is fully populated from all stored documents it applies to.
  /// - "NEEDS_REPAIR" : The index was being created, but something went wrong.
  /// There is no active long-running operation for the index,
  /// and the most recently finished long-running operation failed.
  /// The index is not updated when writing a document.
  /// Some index data may exist.
  /// Use the google.longrunning.Operations API to determine why the operation
  /// that last attempted to create this index failed, then re-create the
  /// index.
  core.String state;

  GoogleFirestoreAdminV1Index();

  GoogleFirestoreAdminV1Index.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<GoogleFirestoreAdminV1IndexField>(
              (value) => new GoogleFirestoreAdminV1IndexField.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("queryScope")) {
      queryScope = _json["queryScope"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (queryScope != null) {
      _json["queryScope"] = queryScope;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// The index configuration for this field.
class GoogleFirestoreAdminV1IndexConfig {
  /// Output only.
  /// Specifies the resource name of the `Field` from which this field's
  /// index configuration is set (when `uses_ancestor_config` is true),
  /// or from which it *would* be set if this field had no index configuration
  /// (when `uses_ancestor_config` is false).
  core.String ancestorField;

  /// The indexes supported for this field.
  core.List<GoogleFirestoreAdminV1Index> indexes;

  /// Output only
  /// When true, the `Field`'s index configuration is in the process of being
  /// reverted. Once complete, the index config will transition to the same
  /// state as the field specified by `ancestor_field`, at which point
  /// `uses_ancestor_config` will be `true` and `reverting` will be `false`.
  core.bool reverting;

  /// Output only.
  /// When true, the `Field`'s index configuration is set from the
  /// configuration specified by the `ancestor_field`.
  /// When false, the `Field`'s index configuration is defined explicitly.
  core.bool usesAncestorConfig;

  GoogleFirestoreAdminV1IndexConfig();

  GoogleFirestoreAdminV1IndexConfig.fromJson(core.Map _json) {
    if (_json.containsKey("ancestorField")) {
      ancestorField = _json["ancestorField"];
    }
    if (_json.containsKey("indexes")) {
      indexes = (_json["indexes"] as core.List)
          .map<GoogleFirestoreAdminV1Index>(
              (value) => new GoogleFirestoreAdminV1Index.fromJson(value))
          .toList();
    }
    if (_json.containsKey("reverting")) {
      reverting = _json["reverting"];
    }
    if (_json.containsKey("usesAncestorConfig")) {
      usesAncestorConfig = _json["usesAncestorConfig"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ancestorField != null) {
      _json["ancestorField"] = ancestorField;
    }
    if (indexes != null) {
      _json["indexes"] = indexes.map((value) => (value).toJson()).toList();
    }
    if (reverting != null) {
      _json["reverting"] = reverting;
    }
    if (usesAncestorConfig != null) {
      _json["usesAncestorConfig"] = usesAncestorConfig;
    }
    return _json;
  }
}

/// Information about an index configuration change.
class GoogleFirestoreAdminV1IndexConfigDelta {
  /// Specifies how the index is changing.
  /// Possible string values are:
  /// - "CHANGE_TYPE_UNSPECIFIED" : The type of change is not specified or
  /// known.
  /// - "ADD" : The single field index is being added.
  /// - "REMOVE" : The single field index is being removed.
  core.String changeType;

  /// The index being changed.
  GoogleFirestoreAdminV1Index index;

  GoogleFirestoreAdminV1IndexConfigDelta();

  GoogleFirestoreAdminV1IndexConfigDelta.fromJson(core.Map _json) {
    if (_json.containsKey("changeType")) {
      changeType = _json["changeType"];
    }
    if (_json.containsKey("index")) {
      index = new GoogleFirestoreAdminV1Index.fromJson(_json["index"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeType != null) {
      _json["changeType"] = changeType;
    }
    if (index != null) {
      _json["index"] = (index).toJson();
    }
    return _json;
  }
}

/// A field in an index.
/// The field_path describes which field is indexed, the value_mode describes
/// how the field value is indexed.
class GoogleFirestoreAdminV1IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  /// Possible string values are:
  /// - "ARRAY_CONFIG_UNSPECIFIED" : The index does not support additional array
  /// queries.
  /// - "CONTAINS" : The index supports array containment queries.
  core.String arrayConfig;

  /// Can be __name__.
  /// For single field indexes, this must match the name of the field or may
  /// be omitted.
  core.String fieldPath;

  /// Indicates that this field supports ordering by the specified order or
  /// comparing using =, <, <=, >, >=.
  /// Possible string values are:
  /// - "ORDER_UNSPECIFIED" : The ordering is unspecified. Not a valid option.
  /// - "ASCENDING" : The field is ordered by ascending field value.
  /// - "DESCENDING" : The field is ordered by descending field value.
  core.String order;

  GoogleFirestoreAdminV1IndexField();

  GoogleFirestoreAdminV1IndexField.fromJson(core.Map _json) {
    if (_json.containsKey("arrayConfig")) {
      arrayConfig = _json["arrayConfig"];
    }
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
    if (_json.containsKey("order")) {
      order = _json["order"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (arrayConfig != null) {
      _json["arrayConfig"] = arrayConfig;
    }
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
    }
    if (order != null) {
      _json["order"] = order;
    }
    return _json;
  }
}

/// Metadata for google.longrunning.Operation results from
/// FirestoreAdmin.CreateIndex.
class GoogleFirestoreAdminV1IndexOperationMetadata {
  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  core.String endTime;

  /// The index resource that this operation is acting on. For example:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  core.String index;

  /// The progress, in bytes, of this operation.
  GoogleFirestoreAdminV1Progress progressBytes;

  /// The progress, in documents, of this operation.
  GoogleFirestoreAdminV1Progress progressDocuments;

  /// The time this operation started.
  core.String startTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "OPERATION_STATE_UNSPECIFIED" : Unspecified.
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

  GoogleFirestoreAdminV1IndexOperationMetadata();

  GoogleFirestoreAdminV1IndexOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("progressBytes")) {
      progressBytes =
          new GoogleFirestoreAdminV1Progress.fromJson(_json["progressBytes"]);
    }
    if (_json.containsKey("progressDocuments")) {
      progressDocuments = new GoogleFirestoreAdminV1Progress.fromJson(
          _json["progressDocuments"]);
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
    if (index != null) {
      _json["index"] = index;
    }
    if (progressBytes != null) {
      _json["progressBytes"] = (progressBytes).toJson();
    }
    if (progressDocuments != null) {
      _json["progressDocuments"] = (progressDocuments).toJson();
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

/// The response for FirestoreAdmin.ListFields.
class GoogleFirestoreAdminV1ListFieldsResponse {
  /// The requested fields.
  core.List<GoogleFirestoreAdminV1Field> fields;

  /// A page token that may be used to request another page of results. If
  /// blank,
  /// this is the last page.
  core.String nextPageToken;

  GoogleFirestoreAdminV1ListFieldsResponse();

  GoogleFirestoreAdminV1ListFieldsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<GoogleFirestoreAdminV1Field>(
              (value) => new GoogleFirestoreAdminV1Field.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1ListIndexesResponse {
  /// The requested indexes.
  core.List<GoogleFirestoreAdminV1Index> indexes;

  /// A page token that may be used to request another page of results. If
  /// blank,
  /// this is the last page.
  core.String nextPageToken;

  GoogleFirestoreAdminV1ListIndexesResponse();

  GoogleFirestoreAdminV1ListIndexesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("indexes")) {
      indexes = (_json["indexes"] as core.List)
          .map<GoogleFirestoreAdminV1Index>(
              (value) => new GoogleFirestoreAdminV1Index.fromJson(value))
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

/// The metadata message for google.cloud.location.Location.metadata.
class GoogleFirestoreAdminV1LocationMetadata {
  GoogleFirestoreAdminV1LocationMetadata();

  GoogleFirestoreAdminV1LocationMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Describes the progress of the operation.
/// Unit of work is generic and must be interpreted based on where Progress
/// is used.
class GoogleFirestoreAdminV1Progress {
  /// The amount of work completed.
  core.String completedWork;

  /// The amount of work estimated.
  core.String estimatedWork;

  GoogleFirestoreAdminV1Progress();

  GoogleFirestoreAdminV1Progress.fromJson(core.Map _json) {
    if (_json.containsKey("completedWork")) {
      completedWork = _json["completedWork"];
    }
    if (_json.containsKey("estimatedWork")) {
      estimatedWork = _json["estimatedWork"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (completedWork != null) {
      _json["completedWork"] = completedWork;
    }
    if (estimatedWork != null) {
      _json["estimatedWork"] = estimatedWork;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class GoogleLongrunningCancelOperationRequest {
  GoogleLongrunningCancelOperationRequest();

  GoogleLongrunningCancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// The request for Firestore.ListCollectionIds.
class ListCollectionIdsRequest {
  /// The maximum number of results to return.
  core.int pageSize;

  /// A page token. Must be a value from
  /// ListCollectionIdsResponse.
  core.String pageToken;

  ListCollectionIdsRequest();

  ListCollectionIdsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}

/// The response from Firestore.ListCollectionIds.
class ListCollectionIdsResponse {
  /// The collection ids.
  core.List<core.String> collectionIds;

  /// A page token that may be used to continue the list.
  core.String nextPageToken;

  ListCollectionIdsResponse();

  ListCollectionIdsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("collectionIds")) {
      collectionIds = (_json["collectionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionIds != null) {
      _json["collectionIds"] = collectionIds;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response for Firestore.ListDocuments.
class ListDocumentsResponse {
  /// The Documents found.
  core.List<Document> documents;

  /// The next page token.
  core.String nextPageToken;

  ListDocumentsResponse();

  ListDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = (_json["documents"] as core.List)
          .map<Document>((value) => new Document.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documents != null) {
      _json["documents"] = documents.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A request for Firestore.Listen
class ListenRequest {
  /// A target to add to this stream.
  Target addTarget;

  /// Labels associated with this target change.
  core.Map<core.String, core.String> labels;

  /// The ID of a target to remove from this stream.
  core.int removeTarget;

  ListenRequest();

  ListenRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addTarget")) {
      addTarget = new Target.fromJson(_json["addTarget"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("removeTarget")) {
      removeTarget = _json["removeTarget"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addTarget != null) {
      _json["addTarget"] = (addTarget).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (removeTarget != null) {
      _json["removeTarget"] = removeTarget;
    }
    return _json;
  }
}

/// The response for Firestore.Listen.
class ListenResponse {
  /// A Document has changed.
  DocumentChange documentChange;

  /// A Document has been deleted.
  DocumentDelete documentDelete;

  /// A Document has been removed from a target (because it is no longer
  /// relevant to that target).
  DocumentRemove documentRemove;

  /// A filter to apply to the set of documents previously returned for the
  /// given target.
  ///
  /// Returned when documents may have been removed from the given target, but
  /// the exact documents are unknown.
  ExistenceFilter filter;

  /// Targets have changed.
  TargetChange targetChange;

  ListenResponse();

  ListenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("documentChange")) {
      documentChange = new DocumentChange.fromJson(_json["documentChange"]);
    }
    if (_json.containsKey("documentDelete")) {
      documentDelete = new DocumentDelete.fromJson(_json["documentDelete"]);
    }
    if (_json.containsKey("documentRemove")) {
      documentRemove = new DocumentRemove.fromJson(_json["documentRemove"]);
    }
    if (_json.containsKey("filter")) {
      filter = new ExistenceFilter.fromJson(_json["filter"]);
    }
    if (_json.containsKey("targetChange")) {
      targetChange = new TargetChange.fromJson(_json["targetChange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documentChange != null) {
      _json["documentChange"] = (documentChange).toJson();
    }
    if (documentDelete != null) {
      _json["documentDelete"] = (documentDelete).toJson();
    }
    if (documentRemove != null) {
      _json["documentRemove"] = (documentRemove).toJson();
    }
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    if (targetChange != null) {
      _json["targetChange"] = (targetChange).toJson();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A map value.
class MapValue {
  /// The map's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except
  /// in certain documented contexts. The map keys, represented as UTF-8, must
  /// not exceed 1,500 bytes and cannot be empty.
  core.Map<core.String, Value> fields;

  MapValue();

  MapValue.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = commons.mapMap<core.Map, Value>(
          _json["fields"].cast<core.String, core.Map>(),
          (core.Map item) => new Value.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] =
          commons.mapMap<Value, core.Map<core.String, core.Object>>(
              fields, (Value item) => (item).toJson());
    }
    return _json;
  }
}

/// An order on a field.
class Order {
  /// The direction to order by. Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String direction;

  /// The field to order by.
  FieldReference field;

  Order();

  Order.fromJson(core.Map _json) {
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("field")) {
      field = new FieldReference.fromJson(_json["field"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    return _json;
  }
}

/// A precondition on a document, used for conditional operations.
class Precondition {
  /// When set to `true`, the target document must exist.
  /// When set to `false`, the target document must not exist.
  core.bool exists;

  /// When set, the target document must exist and have been last updated at
  /// that time.
  core.String updateTime;

  Precondition();

  Precondition.fromJson(core.Map _json) {
    if (_json.containsKey("exists")) {
      exists = _json["exists"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exists != null) {
      _json["exists"] = exists;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The projection of document's fields to return.
class Projection {
  /// The fields to return.
  ///
  /// If empty, all fields are returned. To only return the name
  /// of the document, use `['__name__']`.
  core.List<FieldReference> fields;

  Projection();

  Projection.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<FieldReference>((value) => new FieldReference.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A target specified by a query.
class QueryTarget {
  /// The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  core.String parent;

  /// A structured query.
  StructuredQuery structuredQuery;

  QueryTarget();

  QueryTarget.fromJson(core.Map _json) {
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("structuredQuery")) {
      structuredQuery = new StructuredQuery.fromJson(_json["structuredQuery"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (structuredQuery != null) {
      _json["structuredQuery"] = (structuredQuery).toJson();
    }
    return _json;
  }
}

/// Options for a transaction that can only be used to read documents.
class ReadOnly {
  /// Reads documents at the given time.
  /// This may not be older than 60 seconds.
  core.String readTime;

  ReadOnly();

  ReadOnly.fromJson(core.Map _json) {
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    return _json;
  }
}

/// Options for a transaction that can be used to read and write documents.
class ReadWrite {
  /// An optional transaction to retry.
  core.String retryTransaction;
  core.List<core.int> get retryTransactionAsBytes {
    return convert.base64.decode(retryTransaction);
  }

  set retryTransactionAsBytes(core.List<core.int> _bytes) {
    retryTransaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ReadWrite();

  ReadWrite.fromJson(core.Map _json) {
    if (_json.containsKey("retryTransaction")) {
      retryTransaction = _json["retryTransaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (retryTransaction != null) {
      _json["retryTransaction"] = retryTransaction;
    }
    return _json;
  }
}

/// The request for Firestore.Rollback.
class RollbackRequest {
  /// The transaction to roll back.
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

/// The request for Firestore.RunQuery.
class RunQueryRequest {
  /// Starts a new transaction and reads the documents.
  /// Defaults to a read-only transaction.
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  TransactionOptions newTransaction;

  /// Reads documents as they were at the given time.
  /// This may not be older than 60 seconds.
  core.String readTime;

  /// A structured query.
  StructuredQuery structuredQuery;

  /// Reads documents in a transaction.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  RunQueryRequest();

  RunQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("newTransaction")) {
      newTransaction = new TransactionOptions.fromJson(_json["newTransaction"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("structuredQuery")) {
      structuredQuery = new StructuredQuery.fromJson(_json["structuredQuery"]);
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newTransaction != null) {
      _json["newTransaction"] = (newTransaction).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (structuredQuery != null) {
      _json["structuredQuery"] = (structuredQuery).toJson();
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

/// The response for Firestore.RunQuery.
class RunQueryResponse {
  /// A query result.
  /// Not set when reporting partial progress.
  Document document;

  /// The time at which the document was read. This may be monotonically
  /// increasing; in this case, the previous documents in the result stream are
  /// guaranteed not to have changed between their `read_time` and this one.
  ///
  /// If the query returns no results, a response with `read_time` and no
  /// `document` will be sent, and this represents the time at which the query
  /// was run.
  core.String readTime;

  /// The number of results that have been skipped due to an offset between
  /// the last response and the current response.
  core.int skippedResults;

  /// The transaction that was started as part of this request.
  /// Can only be set in the first response, and only if
  /// RunQueryRequest.new_transaction was set in the request.
  /// If set, no other fields will be set in this response.
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.base64.decode(transaction);
  }

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  RunQueryResponse();

  RunQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("document")) {
      document = new Document.fromJson(_json["document"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("skippedResults")) {
      skippedResults = _json["skippedResults"];
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (document != null) {
      _json["document"] = (document).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (skippedResults != null) {
      _json["skippedResults"] = skippedResults;
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
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

/// A Firestore query.
class StructuredQuery {
  /// A end point for the query results.
  Cursor endAt;

  /// The collections to query.
  core.List<CollectionSelector> from;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints.
  /// Must be >= 0 if specified.
  core.int limit;

  /// The number of results to skip.
  ///
  /// Applies before limit, but after all other constraints. Must be >= 0 if
  /// specified.
  core.int offset;

  /// The order to apply to the query results.
  ///
  /// Firestore guarantees a stable ordering through the following rules:
  ///
  ///  * Any field required to appear in `order_by`, that is not already
  ///    specified in `order_by`, is appended to the order in field name order
  ///    by default.
  ///  * If an order on `__name__` is not specified, it is appended by default.
  ///
  /// Fields are appended with the same sort direction as the last order
  /// specified, or 'ASCENDING' if no order was specified. For example:
  ///
  ///  * `SELECT * FROM Foo ORDER BY A` becomes
  ///    `SELECT * FROM Foo ORDER BY A, __name__`
  ///  * `SELECT * FROM Foo ORDER BY A DESC` becomes
  ///    `SELECT * FROM Foo ORDER BY A DESC, __name__ DESC`
  ///  * `SELECT * FROM Foo WHERE A > 1` becomes
  ///    `SELECT * FROM Foo WHERE A > 1 ORDER BY A, __name__`
  core.List<Order> orderBy;

  /// The projection to return.
  Projection select;

  /// A starting point for the query results.
  Cursor startAt;

  /// The filter to apply.
  Filter where;

  StructuredQuery();

  StructuredQuery.fromJson(core.Map _json) {
    if (_json.containsKey("endAt")) {
      endAt = new Cursor.fromJson(_json["endAt"]);
    }
    if (_json.containsKey("from")) {
      from = (_json["from"] as core.List)
          .map<CollectionSelector>(
              (value) => new CollectionSelector.fromJson(value))
          .toList();
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("orderBy")) {
      orderBy = (_json["orderBy"] as core.List)
          .map<Order>((value) => new Order.fromJson(value))
          .toList();
    }
    if (_json.containsKey("select")) {
      select = new Projection.fromJson(_json["select"]);
    }
    if (_json.containsKey("startAt")) {
      startAt = new Cursor.fromJson(_json["startAt"]);
    }
    if (_json.containsKey("where")) {
      where = new Filter.fromJson(_json["where"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endAt != null) {
      _json["endAt"] = (endAt).toJson();
    }
    if (from != null) {
      _json["from"] = from.map((value) => (value).toJson()).toList();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (orderBy != null) {
      _json["orderBy"] = orderBy.map((value) => (value).toJson()).toList();
    }
    if (select != null) {
      _json["select"] = (select).toJson();
    }
    if (startAt != null) {
      _json["startAt"] = (startAt).toJson();
    }
    if (where != null) {
      _json["where"] = (where).toJson();
    }
    return _json;
  }
}

/// A specification of a set of documents to listen to.
class Target {
  /// A target specified by a set of document names.
  DocumentsTarget documents;

  /// If the target should be removed once it is current and consistent.
  core.bool once;

  /// A target specified by a query.
  QueryTarget query;

  /// Start listening after a specific `read_time`.
  ///
  /// The client must know the state of matching documents at this time.
  core.String readTime;

  /// A resume token from a prior TargetChange for an identical target.
  ///
  /// Using a resume token with a different target is unsupported and may fail.
  core.String resumeToken;
  core.List<core.int> get resumeTokenAsBytes {
    return convert.base64.decode(resumeToken);
  }

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A client provided target ID.
  ///
  /// If not set, the server will assign an ID for the target.
  ///
  /// Used for resuming a target without changing IDs. The IDs can either be
  /// client-assigned or be server-assigned in a previous stream. All targets
  /// with client provided IDs must be added before adding a target that needs
  /// a server-assigned id.
  core.int targetId;

  Target();

  Target.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = new DocumentsTarget.fromJson(_json["documents"]);
    }
    if (_json.containsKey("once")) {
      once = _json["once"];
    }
    if (_json.containsKey("query")) {
      query = new QueryTarget.fromJson(_json["query"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("resumeToken")) {
      resumeToken = _json["resumeToken"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (documents != null) {
      _json["documents"] = (documents).toJson();
    }
    if (once != null) {
      _json["once"] = once;
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (resumeToken != null) {
      _json["resumeToken"] = resumeToken;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    return _json;
  }
}

/// Targets being watched have changed.
class TargetChange {
  /// The error that resulted in this change, if applicable.
  Status cause;

  /// The consistent `read_time` for the given `target_ids` (omitted when the
  /// target_ids are not at a consistent snapshot).
  ///
  /// The stream is guaranteed to send a `read_time` with `target_ids` empty
  /// whenever the entire stream reaches a new consistent snapshot. ADD,
  /// CURRENT, and RESET messages are guaranteed to (eventually) result in a
  /// new consistent snapshot (while NO_CHANGE and REMOVE messages are not).
  ///
  /// For a given stream, `read_time` is guaranteed to be monotonically
  /// increasing.
  core.String readTime;

  /// A token that can be used to resume the stream for the given `target_ids`,
  /// or all targets if `target_ids` is empty.
  ///
  /// Not set on every target change.
  core.String resumeToken;
  core.List<core.int> get resumeTokenAsBytes {
    return convert.base64.decode(resumeToken);
  }

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The type of change that occurred.
  /// Possible string values are:
  /// - "NO_CHANGE" : No change has occurred. Used only to send an updated
  /// `resume_token`.
  /// - "ADD" : The targets have been added.
  /// - "REMOVE" : The targets have been removed.
  /// - "CURRENT" : The targets reflect all changes committed before the targets
  /// were added
  /// to the stream.
  ///
  /// This will be sent after or with a `read_time` that is greater than or
  /// equal to the time at which the targets were added.
  ///
  /// Listeners can wait for this change if read-after-write semantics
  /// are desired.
  /// - "RESET" : The targets have been reset, and a new initial state for the
  /// targets
  /// will be returned in subsequent changes.
  ///
  /// After the initial state is complete, `CURRENT` will be returned even
  /// if the target was previously indicated to be `CURRENT`.
  core.String targetChangeType;

  /// The target IDs of targets that have changed.
  ///
  /// If empty, the change applies to all targets.
  ///
  /// For `target_change_type=ADD`, the order of the target IDs matches the
  /// order
  /// of the requests to add the targets. This allows clients to unambiguously
  /// associate server-assigned target IDs with added targets.
  ///
  /// For other states, the order of the target IDs is not defined.
  core.List<core.int> targetIds;

  TargetChange();

  TargetChange.fromJson(core.Map _json) {
    if (_json.containsKey("cause")) {
      cause = new Status.fromJson(_json["cause"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("resumeToken")) {
      resumeToken = _json["resumeToken"];
    }
    if (_json.containsKey("targetChangeType")) {
      targetChangeType = _json["targetChangeType"];
    }
    if (_json.containsKey("targetIds")) {
      targetIds = (_json["targetIds"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cause != null) {
      _json["cause"] = (cause).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (resumeToken != null) {
      _json["resumeToken"] = resumeToken;
    }
    if (targetChangeType != null) {
      _json["targetChangeType"] = targetChangeType;
    }
    if (targetIds != null) {
      _json["targetIds"] = targetIds;
    }
    return _json;
  }
}

/// Options for creating a new transaction.
class TransactionOptions {
  /// The transaction can only be used for read operations.
  ReadOnly readOnly;

  /// The transaction can be used for both read and write operations.
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

/// A filter with a single operand.
class UnaryFilter {
  /// The field to which to apply the operator.
  FieldReference field;

  /// The unary operator to apply.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "IS_NAN" : Test if a field is equal to NaN.
  /// - "IS_NULL" : Test if an exprestion evaluates to Null.
  core.String op;

  UnaryFilter();

  UnaryFilter.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = new FieldReference.fromJson(_json["field"]);
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = (field).toJson();
    }
    if (op != null) {
      _json["op"] = op;
    }
    return _json;
  }
}

/// A message that can hold any of the supported value types.
class Value {
  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain an
  /// map which contains another array.
  ArrayValue arrayValue;

  /// A boolean value.
  core.bool booleanValue;

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes.
  /// Only the first 1,500 bytes are considered by queries.
  core.String bytesValue;
  core.List<core.int> get bytesValueAsBytes {
    return convert.base64.decode(bytesValue);
  }

  set bytesValueAsBytes(core.List<core.int> _bytes) {
    bytesValue =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A double value.
  core.double doubleValue;

  /// A geo point value representing a point on the surface of Earth.
  LatLng geoPointValue;

  /// An integer value.
  core.String integerValue;

  /// A map value.
  MapValue mapValue;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String nullValue;

  /// A reference to a document. For example:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String referenceValue;

  /// A string value.
  ///
  /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes.
  /// Only the first 1,500 bytes of the UTF-8 representation are considered by
  /// queries.
  core.String stringValue;

  /// A timestamp value.
  ///
  /// Precise only to microseconds. When stored, any additional precision is
  /// rounded down.
  core.String timestampValue;

  Value();

  Value.fromJson(core.Map _json) {
    if (_json.containsKey("arrayValue")) {
      arrayValue = new ArrayValue.fromJson(_json["arrayValue"]);
    }
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("bytesValue")) {
      bytesValue = _json["bytesValue"];
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"].toDouble();
    }
    if (_json.containsKey("geoPointValue")) {
      geoPointValue = new LatLng.fromJson(_json["geoPointValue"]);
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("mapValue")) {
      mapValue = new MapValue.fromJson(_json["mapValue"]);
    }
    if (_json.containsKey("nullValue")) {
      nullValue = _json["nullValue"];
    }
    if (_json.containsKey("referenceValue")) {
      referenceValue = _json["referenceValue"];
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
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (bytesValue != null) {
      _json["bytesValue"] = bytesValue;
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (geoPointValue != null) {
      _json["geoPointValue"] = (geoPointValue).toJson();
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (mapValue != null) {
      _json["mapValue"] = (mapValue).toJson();
    }
    if (nullValue != null) {
      _json["nullValue"] = nullValue;
    }
    if (referenceValue != null) {
      _json["referenceValue"] = referenceValue;
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

/// A write on a document.
class Write {
  /// An optional precondition on the document.
  ///
  /// The write will fail if this is set and not met by the target document.
  Precondition currentDocument;

  /// A document name to delete. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String delete;

  /// Applies a transformation to a document.
  /// At most one `transform` per document is allowed in a given request.
  /// An `update` cannot follow a `transform` on the same document in a given
  /// request.
  DocumentTransform transform;

  /// A document to write.
  Document update;

  /// The fields to update in this write.
  ///
  /// This field can be set only when the operation is `update`.
  /// If the mask is not set for an `update` and the document exists, any
  /// existing data will be overwritten.
  /// If the mask is set and the document on the server has fields not covered
  /// by
  /// the mask, they are left unchanged.
  /// Fields referenced in the mask, but not present in the input document, are
  /// deleted from the document on the server.
  /// The field paths in this mask must not contain a reserved field name.
  DocumentMask updateMask;

  Write();

  Write.fromJson(core.Map _json) {
    if (_json.containsKey("currentDocument")) {
      currentDocument = new Precondition.fromJson(_json["currentDocument"]);
    }
    if (_json.containsKey("delete")) {
      delete = _json["delete"];
    }
    if (_json.containsKey("transform")) {
      transform = new DocumentTransform.fromJson(_json["transform"]);
    }
    if (_json.containsKey("update")) {
      update = new Document.fromJson(_json["update"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = new DocumentMask.fromJson(_json["updateMask"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currentDocument != null) {
      _json["currentDocument"] = (currentDocument).toJson();
    }
    if (delete != null) {
      _json["delete"] = delete;
    }
    if (transform != null) {
      _json["transform"] = (transform).toJson();
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = (updateMask).toJson();
    }
    return _json;
  }
}

/// The request for Firestore.Write.
///
/// The first request creates a stream, or resumes an existing one from a token.
///
/// When creating a new stream, the server replies with a response containing
/// only an ID and a token, to use in the next request.
///
/// When resuming a stream, the server first streams any responses later than
/// the
/// given token, then a response containing only an up-to-date token, to use in
/// the next request.
class WriteRequest {
  /// Labels associated with this write request.
  core.Map<core.String, core.String> labels;

  /// The ID of the write stream to resume.
  /// This may only be set in the first message. When left empty, a new write
  /// stream will be created.
  core.String streamId;

  /// A stream token that was previously sent by the server.
  ///
  /// The client should set this field to the token from the most recent
  /// WriteResponse it has received. This acknowledges that the client has
  /// received responses up to this token. After sending this token, earlier
  /// tokens may not be used anymore.
  ///
  /// The server may close the stream if there are too many unacknowledged
  /// responses.
  ///
  /// Leave this field unset when creating a new stream. To resume a stream at
  /// a specific point, set this field and the `stream_id` field.
  ///
  /// Leave this field unset when creating a new stream.
  core.String streamToken;
  core.List<core.int> get streamTokenAsBytes {
    return convert.base64.decode(streamToken);
  }

  set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  /// This must be empty on the first request.
  /// This may be empty on the last request.
  /// This must not be empty on all other requests.
  core.List<Write> writes;

  WriteRequest();

  WriteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("streamId")) {
      streamId = _json["streamId"];
    }
    if (_json.containsKey("streamToken")) {
      streamToken = _json["streamToken"];
    }
    if (_json.containsKey("writes")) {
      writes = (_json["writes"] as core.List)
          .map<Write>((value) => new Write.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (streamId != null) {
      _json["streamId"] = streamId;
    }
    if (streamToken != null) {
      _json["streamToken"] = streamToken;
    }
    if (writes != null) {
      _json["writes"] = writes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response for Firestore.Write.
class WriteResponse {
  /// The time at which the commit occurred.
  core.String commitTime;

  /// The ID of the stream.
  /// Only set on the first message, when a new stream was created.
  core.String streamId;

  /// A token that represents the position of this response in the stream.
  /// This can be used by a client to resume the stream at this point.
  ///
  /// This field is always set.
  core.String streamToken;
  core.List<core.int> get streamTokenAsBytes {
    return convert.base64.decode(streamToken);
  }

  set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the
  /// request.
  core.List<WriteResult> writeResults;

  WriteResponse();

  WriteResponse.fromJson(core.Map _json) {
    if (_json.containsKey("commitTime")) {
      commitTime = _json["commitTime"];
    }
    if (_json.containsKey("streamId")) {
      streamId = _json["streamId"];
    }
    if (_json.containsKey("streamToken")) {
      streamToken = _json["streamToken"];
    }
    if (_json.containsKey("writeResults")) {
      writeResults = (_json["writeResults"] as core.List)
          .map<WriteResult>((value) => new WriteResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commitTime != null) {
      _json["commitTime"] = commitTime;
    }
    if (streamId != null) {
      _json["streamId"] = streamId;
    }
    if (streamToken != null) {
      _json["streamToken"] = streamToken;
    }
    if (writeResults != null) {
      _json["writeResults"] =
          writeResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The result of applying a write.
class WriteResult {
  /// The results of applying each DocumentTransform.FieldTransform, in the
  /// same order.
  core.List<Value> transformResults;

  /// The last update time of the document after applying the write. Not set
  /// after a `delete`.
  ///
  /// If the write did not actually change the document, this will be the
  /// previous update_time.
  core.String updateTime;

  WriteResult();

  WriteResult.fromJson(core.Map _json) {
    if (_json.containsKey("transformResults")) {
      transformResults = (_json["transformResults"] as core.List)
          .map<Value>((value) => new Value.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transformResults != null) {
      _json["transformResults"] =
          transformResults.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}
