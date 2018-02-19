// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.firestore.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firestore/v1beta1';

class FirestoreApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and manage your Google Cloud Datastore data
  static const DatastoreScope = "https://www.googleapis.com/auth/datastore";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FirestoreApi(http.Client client,
      {core.String rootUrl: "https://firestore.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesResourceApi get databases =>
      new ProjectsDatabasesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResourceApi get documents =>
      new ProjectsDatabasesDocumentsResourceApi(_requester);
  ProjectsDatabasesIndexesResourceApi get indexes =>
      new ProjectsDatabasesIndexesResourceApi(_requester);

  ProjectsDatabasesResourceApi(commons.ApiRequester client)
      : _requester = client;
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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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

    _url = 'v1beta1/' +
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
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist.
  /// When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at
  /// that time.
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
      {core.bool currentDocument_exists,
      core.String currentDocument_updateTime,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (currentDocument_exists != null) {
      _queryParams["currentDocument.exists"] = ["${currentDocument_exists}"];
    }
    if (currentDocument_updateTime != null) {
      _queryParams["currentDocument.updateTime"] = [currentDocument_updateTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [orderBy] - The order to sort results by. For example: `priority desc,
  /// name`.
  ///
  /// [readTime] - Reads documents as they were at the given time.
  /// This may not be older than 60 seconds.
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
      core.String orderBy,
      core.String readTime,
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
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (readTime != null) {
      _queryParams["readTime"] = [readTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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

    _url = 'v1beta1/' +
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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at
  /// that time.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist.
  /// When set to `false`, the target document must not exist.
  ///
  /// [updateMask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field
  /// path syntax reference.
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
      {core.String currentDocument_updateTime,
      core.bool currentDocument_exists,
      core.List<core.String> updateMask_fieldPaths,
      core.List<core.String> mask_fieldPaths,
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
    if (currentDocument_updateTime != null) {
      _queryParams["currentDocument.updateTime"] = [currentDocument_updateTime];
    }
    if (currentDocument_exists != null) {
      _queryParams["currentDocument.exists"] = ["${currentDocument_exists}"];
    }
    if (updateMask_fieldPaths != null) {
      _queryParams["updateMask.fieldPaths"] = updateMask_fieldPaths;
    }
    if (mask_fieldPaths != null) {
      _queryParams["mask.fieldPaths"] = mask_fieldPaths;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':runQuery';

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
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
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

class ProjectsDatabasesIndexesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDatabasesIndexesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates the specified index.
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned google.longrunning.Operation, the state will be `READY`.
  /// If the index already exists, the call will return an `ALREADY_EXISTS`
  /// status.
  ///
  /// During creation, the process could result in an error, in which case the
  /// index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with
  /// delete, then re-creating the index with
  /// create.
  ///
  /// Indexes with a single field cannot be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the database this index will apply to. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
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
  async.Future<Operation> create(Index request, core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/indexes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The index name. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+/indexes/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the index. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+/indexes/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Index> get(core.String name, {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Index.fromJson(data));
  }

  /// Lists the indexes that match the specified filters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The database name. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern "^projects/[^/]+/databases/[^/]+$".
  ///
  /// [pageSize] - The standard List page size.
  ///
  /// [filter] - null
  ///
  /// [pageToken] - The standard List page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIndexesResponse> list(core.String parent,
      {core.int pageSize,
      core.String filter,
      core.String pageToken,
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
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/indexes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListIndexesResponse.fromJson(data));
  }
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  core.List<Value> values;

  ArrayValue();

  ArrayValue.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values =
          _json["values"].map((value) => new Value.fromJson(value)).toList();
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  BatchGetDocumentsRequest();

  BatchGetDocumentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = _json["documents"];
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      writes =
          _json["writes"].map((value) => new Write.fromJson(value)).toList();
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
      writeResults = _json["writeResults"]
          .map((value) => new WriteResult.fromJson(value))
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
      filters =
          _json["filters"].map((value) => new Filter.fromJson(value)).toList();
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
      values =
          _json["values"].map((value) => new Value.fromJson(value)).toList();
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
  /// This value is initally set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be
  /// compared to values from other documents and the `read_time` of a query.
  core.String updateTime;

  Document();

  Document.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("fields")) {
      fields = commons.mapMap<core.Map<core.String, core.Object>, Value>(
          _json["fields"],
          (core.Map<core.String, core.Object> item) =>
              new Value.fromJson(item));
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
      removedTargetIds = _json["removedTargetIds"];
    }
    if (_json.containsKey("targetIds")) {
      targetIds = _json["targetIds"];
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
      removedTargetIds = _json["removedTargetIds"];
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
      fieldPaths = _json["fieldPaths"];
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
      removedTargetIds = _json["removedTargetIds"];
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
      fieldTransforms = _json["fieldTransforms"]
          .map((value) => new FieldTransform.fromJson(value))
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
      documents = _json["documents"];
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
  /// The path of the field. See Document.fields for the field path syntax
  /// reference.
  core.String fieldPath;

  /// Sets the field to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond
  /// precision.
  core.String setToServerValue;

  FieldTransform();

  FieldTransform.fromJson(core.Map _json) {
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
    if (_json.containsKey("setToServerValue")) {
      setToServerValue = _json["setToServerValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
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

/// An index definition.
class Index {
  /// The collection ID to which this index applies. Required.
  core.String collectionId;

  /// The fields to index.
  core.List<IndexField> fields;

  /// The resource name of the index.
  /// Output only.
  core.String name;

  /// The state of the index.
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created.
  /// There is an active long-running operation for the index.
  /// The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used.
  /// The index is updated when writing a document.
  /// The index is fully populated from all stored documents it applies to.
  /// - "ERROR" : The index was being created, but something went wrong.
  /// There is no active long-running operation for the index,
  /// and the most recently finished long-running operation failed.
  /// The index is not updated when writing a document.
  /// Some index data may exist.
  core.String state;

  Index();

  Index.fromJson(core.Map _json) {
    if (_json.containsKey("collectionId")) {
      collectionId = _json["collectionId"];
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"]
          .map((value) => new IndexField.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectionId != null) {
      _json["collectionId"] = collectionId;
    }
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// A field of an index.
class IndexField {
  /// The path of the field. Must match the field path specification described
  /// by google.firestore.v1beta1.Document.fields.
  /// Special field path `__name__` may be used by itself or at the end of a
  /// path. `__type__` may be used only at the end of path.
  core.String fieldPath;

  /// The field's mode.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : The mode is unspecified.
  /// - "ASCENDING" : The field's values are indexed so as to support sequencing
  /// in
  /// ascending order and also query by <, >, <=, >=, and =.
  /// - "DESCENDING" : The field's values are indexed so as to support
  /// sequencing in
  /// descending order and also query by <, >, <=, >=, and =.
  core.String mode;

  IndexField();

  IndexField.fromJson(core.Map _json) {
    if (_json.containsKey("fieldPath")) {
      fieldPath = _json["fieldPath"];
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldPath != null) {
      _json["fieldPath"] = fieldPath;
    }
    if (mode != null) {
      _json["mode"] = mode;
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
      collectionIds = _json["collectionIds"];
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
      documents = _json["documents"]
          .map((value) => new Document.fromJson(value))
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

/// The response for FirestoreAdmin.ListIndexes.
class ListIndexesResponse {
  /// The indexes.
  core.List<Index> indexes;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListIndexesResponse();

  ListIndexesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("indexes")) {
      indexes =
          _json["indexes"].map((value) => new Index.fromJson(value)).toList();
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
      labels = _json["labels"];
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
      fields = commons.mapMap<core.Map<core.String, core.Object>, Value>(
          _json["fields"],
          (core.Map<core.String, core.Object> item) =>
              new Value.fromJson(item));
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
      fields = _json["fields"]
          .map((value) => new FieldReference.fromJson(value))
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
    return convert.BASE64.decode(retryTransaction);
  }

  void set retryTransactionAsBytes(core.List<core.int> _bytes) {
    retryTransaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      from = _json["from"]
          .map((value) => new CollectionSelector.fromJson(value))
          .toList();
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("orderBy")) {
      orderBy =
          _json["orderBy"].map((value) => new Order.fromJson(value)).toList();
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
    return convert.BASE64.decode(resumeToken);
  }

  void set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    return convert.BASE64.decode(resumeToken);
  }

  void set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      targetIds = _json["targetIds"];
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
  /// Cannot contain another array value.
  ArrayValue arrayValue;

  /// A boolean value.
  core.bool booleanValue;

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes.
  /// Only the first 1,500 bytes are considered by queries.
  core.String bytesValue;
  core.List<core.int> get bytesValueAsBytes {
    return convert.BASE64.decode(bytesValue);
  }

  void set bytesValueAsBytes(core.List<core.int> _bytes) {
    bytesValue =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      doubleValue = _json["doubleValue"];
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

  /// Applies a tranformation to a document.
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
    return convert.BASE64.decode(streamToken);
  }

  void set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      labels = _json["labels"];
    }
    if (_json.containsKey("streamId")) {
      streamId = _json["streamId"];
    }
    if (_json.containsKey("streamToken")) {
      streamToken = _json["streamToken"];
    }
    if (_json.containsKey("writes")) {
      writes =
          _json["writes"].map((value) => new Write.fromJson(value)).toList();
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
    return convert.BASE64.decode(streamToken);
  }

  void set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
      writeResults = _json["writeResults"]
          .map((value) => new WriteResult.fromJson(value))
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
      transformResults = _json["transformResults"]
          .map((value) => new Value.fromJson(value))
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
