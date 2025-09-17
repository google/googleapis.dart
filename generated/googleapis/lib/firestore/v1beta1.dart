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

/// Cloud Firestore API - v1beta1
///
/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
///
/// For more information, see <https://cloud.google.com/firestore>
///
/// Create an instance of [FirestoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsDatabasesResource]
///     - [ProjectsDatabasesDocumentsResource]
///     - [ProjectsDatabasesIndexesResource]
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

/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
class FirestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirestoreApi(
    http.Client client, {
    core.String rootUrl = 'https://firestore.googleapis.com/',
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

  ProjectsDatabasesResource get databases =>
      ProjectsDatabasesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResource get documents =>
      ProjectsDatabasesDocumentsResource(_requester);
  ProjectsDatabasesIndexesResource get indexes =>
      ProjectsDatabasesIndexesResource(_requester);

  ProjectsDatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to documents may not be reflected in the export. The export
  /// occurs in the background and its progress can be monitored and managed via
  /// the Operation resource that is created. The output of an export may only
  /// be used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to export. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    GoogleFirestoreAdminV1beta1ExportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':exportDocuments';

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

  /// Imports documents into Google Cloud Firestore.
  ///
  /// Existing documents with the same name are overwritten. The import occurs
  /// in the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportDocuments operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Firestore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to import into. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    GoogleFirestoreAdminV1beta1ImportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':importDocuments';

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

class ProjectsDatabasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResource(commons.ApiRequester client)
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
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    BatchGetDocumentsRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:batchGet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Applies a batch of write operations.
  ///
  /// The BatchWrite method does not apply the write operations atomically and
  /// can apply them out of order. Method does not allow more than one write per
  /// document. Each write succeeds or fails independently. See the
  /// BatchWriteResponse for the success status of each write. If you require an
  /// atomically applied set of writes, use Commit instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchWriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchWriteResponse> batchWrite(
    BatchWriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:batchWrite';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchWriteResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Starts a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    BeginTransactionRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$database') +
        '/documents:beginTransaction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BeginTransactionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Commits a transaction, while optionally updating documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    CommitRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource. For example:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/.*$`.
  ///
  /// [collectionId] - Required. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms`.
  ///
  /// [documentId] - The client-assigned document ID to use for this document.
  /// Optional. If not specified, an ID will be assigned by the service.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
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
    Document request,
    core.String parent,
    core.String collectionId, {
    core.String? documentId,
    core.List<core.String>? mask_fieldPaths,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (documentId != null) 'documentId': [documentId],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to delete. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to get. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [readTime] - Reads the version of the document at the given time. This
  /// must be a microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
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
  async.Future<Document> get(
    core.String name, {
    core.List<core.String>? mask_fieldPaths,
    core.String? readTime,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (readTime != null) 'readTime': [readTime],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [collectionId] - Optional. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms` or `messages`. This is optional, and when
  /// not provided, Firestore will list documents from all collections under the
  /// provided `parent`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [orderBy] - Optional. The optional ordering of the documents to return.
  /// For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY`
  /// used in Firestore queries but in a string representation. When absent,
  /// documents are ordered based on `__name__ ASC`.
  ///
  /// [pageSize] - Optional. The maximum number of documents to return in a
  /// single response. Firestore may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDocuments` response. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (with the exception of `page_size`)
  /// must match the values set in the request that generated the page token.
  ///
  /// [readTime] - Perform the read at the provided time. This must be a
  /// microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  ///
  /// [showMissing] - If the list should show missing documents. A document is
  /// missing if it does not exist, but there are sub-documents nested
  /// underneath it. When true, such missing documents will be returned with a
  /// key but will not have fields, `create_time`, or `update_time` set.
  /// Requests with `show_missing` may not specify `where` or `order_by`.
  ///
  /// [transaction] - Perform the read as part of an already active transaction.
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
    core.String parent,
    core.String collectionId, {
    core.List<core.String>? mask_fieldPaths,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.bool? showMissing,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (showMissing != null) 'showMissing': ['${showMissing}'],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the collection IDs underneath a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent document. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
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
    ListCollectionIdsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':listCollectionIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListCollectionIdsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+/documents$`.
  ///
  /// [collectionId] - Optional. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms` or `messages`. This is optional, and when
  /// not provided, Firestore will list documents from all collections under the
  /// provided `parent`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [orderBy] - Optional. The optional ordering of the documents to return.
  /// For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY`
  /// used in Firestore queries but in a string representation. When absent,
  /// documents are ordered based on `__name__ ASC`.
  ///
  /// [pageSize] - Optional. The maximum number of documents to return in a
  /// single response. Firestore may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDocuments` response. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (with the exception of `page_size`)
  /// must match the values set in the request that generated the page token.
  ///
  /// [readTime] - Perform the read at the provided time. This must be a
  /// microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  ///
  /// [showMissing] - If the list should show missing documents. A document is
  /// missing if it does not exist, but there are sub-documents nested
  /// underneath it. When true, such missing documents will be returned with a
  /// key but will not have fields, `create_time`, or `update_time` set.
  /// Requests with `show_missing` may not specify `where` or `order_by`.
  ///
  /// [transaction] - Perform the read as part of an already active transaction.
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
  async.Future<ListDocumentsResponse> listDocuments(
    core.String parent,
    core.String collectionId, {
    core.List<core.String>? mask_fieldPaths,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.bool? showMissing,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (showMissing != null) 'showMissing': ['${showMissing}'],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Listens to changes.
  ///
  /// This method is only available via gRPC or WebChannel (not REST).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    ListenRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:listen';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Partitions a query by returning partition cursors that can be used to run
  /// the query in parallel.
  ///
  /// The returned partition cursors are split points that can be used by
  /// RunQuery as starting/end points for the query results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents`. Document
  /// resource names are not supported; only database resource names can be
  /// specified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionQueryResponse> partitionQuery(
    PartitionQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':partitionQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PartitionQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [updateMask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
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
  async.Future<Document> patch(
    Document request,
    core.String name, {
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.List<core.String>? mask_fieldPaths,
    core.List<core.String>? updateMask_fieldPaths,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (updateMask_fieldPaths != null)
        'updateMask.fieldPaths': updateMask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Empty> rollback(
    RollbackRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs an aggregation query.
  ///
  /// Rather than producing Document results like Firestore.RunQuery, this API
  /// allows running an aggregation to produce a series of AggregationResult
  /// server-side. High-Level Example: ``` -- Return the number of documents in
  /// table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a =
  /// true ); ```
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunAggregationQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunAggregationQueryResponse> runAggregationQuery(
    RunAggregationQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':runAggregationQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunAggregationQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Runs a query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
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
    RunQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':runQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Streams batches of document updates and deletes, in order.
  ///
  /// This method is only available via gRPC or WebChannel (not REST).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`. This is only required in
  /// the first message.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<WriteResponse> write(
    WriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsDatabasesIndexesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesIndexesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates the specified index.
  ///
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned google.longrunning.Operation, the state will be `READY`. If the
  /// index already exists, the call will return an `ALREADY_EXISTS` status.
  /// During creation, the process could result in an error, in which case the
  /// index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with delete,
  /// then re-creating the index with create. Indexes with a single field cannot
  /// be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the database this index will apply to. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    GoogleFirestoreAdminV1beta1Index request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/indexes';

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

  /// Deletes an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The index name. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/indexes/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the index. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/indexes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta1Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta1Index> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta1Index.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the indexes that match the specified filters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The database name. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - The standard List page size.
  ///
  /// [pageToken] - The standard List page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta1ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta1ListIndexesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta1ListIndexesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Defines an aggregation that produces a single result.
class Aggregation {
  /// Optional name of the field to store the result of the aggregation into.
  ///
  /// If not provided, Firestore will pick a default name following the format
  /// `field_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
  /// COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... );
  /// ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2)
  /// AS field_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS field_2 OVER (
  /// ... ); ``` Requires: * Must be unique across all aggregation aliases. *
  /// Conform to document field name limitations.
  ///
  /// Optional.
  core.String? alias;

  /// Average aggregator.
  Avg? avg;

  /// Count aggregator.
  Count? count;

  /// Sum aggregator.
  Sum? sum;

  Aggregation({this.alias, this.avg, this.count, this.sum});

  Aggregation.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        avg:
            json_.containsKey('avg')
                ? Avg.fromJson(
                  json_['avg'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        count:
            json_.containsKey('count')
                ? Count.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sum:
            json_.containsKey('sum')
                ? Sum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alias != null) 'alias': alias!,
    if (avg != null) 'avg': avg!,
    if (count != null) 'count': count!,
    if (sum != null) 'sum': sum!,
  };
}

/// The result of a single bucket from a Firestore aggregation query.
///
/// The keys of `aggregate_fields` are the same for all results in an
/// aggregation query, unlike document queries which can have different fields
/// present for each result.
class AggregationResult {
  /// The result of the aggregation functions, ex: `COUNT(*) AS total_docs`.
  ///
  /// The key is the alias assigned to the aggregation function on input and the
  /// size of this map equals the number of aggregation functions in the query.
  core.Map<core.String, Value>? aggregateFields;

  AggregationResult({this.aggregateFields});

  AggregationResult.fromJson(core.Map json_)
    : this(
        aggregateFields: (json_['aggregateFields']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregateFields != null) 'aggregateFields': aggregateFields!,
  };
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  core.List<Value>? values;

  ArrayValue({this.values});

  ArrayValue.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// Average of the values of the requested field.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns `NULL`. * Always returns the result as a double.
class Avg {
  /// The field to aggregate on.
  FieldReference? field;

  Avg({this.field});

  Avg.fromJson(core.Map json_)
    : this(
        field:
            json_.containsKey('field')
                ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
  };
}

/// The request for Firestore.BatchGetDocuments.
class BatchGetDocumentsRequest {
  /// The names of the documents to retrieve.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  core.List<core.String>? documents;

  /// The fields to return.
  ///
  /// If not set, returns all fields. If a document has a field that is not
  /// present in this mask, that field will not be returned in the response.
  DocumentMask? mask;

  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// Reads documents in a transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  BatchGetDocumentsRequest({
    this.documents,
    this.mask,
    this.newTransaction,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsRequest.fromJson(core.Map json_)
    : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mask:
            json_.containsKey('mask')
                ? DocumentMask.fromJson(
                  json_['mask'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        newTransaction:
            json_.containsKey('newTransaction')
                ? TransactionOptions.fromJson(
                  json_['newTransaction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
    if (mask != null) 'mask': mask!,
    if (newTransaction != null) 'newTransaction': newTransaction!,
    if (readTime != null) 'readTime': readTime!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The streamed response for Firestore.BatchGetDocuments.
class BatchGetDocumentsResponse {
  /// A document that was requested.
  Document? found;

  /// A document name that was requested but does not exist.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? missing;

  /// The time at which the document was read.
  ///
  /// This may be monotically increasing, in this case the previous documents in
  /// the result stream are guaranteed not to have changed between their
  /// read_time and this one.
  core.String? readTime;

  /// The transaction that was started as part of this request.
  ///
  /// Will only be set in the first response, and only if
  /// BatchGetDocumentsRequest.new_transaction was set in the request.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  BatchGetDocumentsResponse({
    this.found,
    this.missing,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsResponse.fromJson(core.Map json_)
    : this(
        found:
            json_.containsKey('found')
                ? Document.fromJson(
                  json_['found'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        missing: json_['missing'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (found != null) 'found': found!,
    if (missing != null) 'missing': missing!,
    if (readTime != null) 'readTime': readTime!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The request for Firestore.BatchWrite.
class BatchWriteRequest {
  /// Labels associated with this batch write.
  core.Map<core.String, core.String>? labels;

  /// The writes to apply.
  ///
  /// Method does not apply writes atomically and does not guarantee ordering.
  /// Each write succeeds or fails independently. You cannot write to the same
  /// document more than once per request.
  core.List<Write>? writes;

  BatchWriteRequest({this.labels, this.writes});

  BatchWriteRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        writes:
            (json_['writes'] as core.List?)
                ?.map(
                  (value) => Write.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (writes != null) 'writes': writes!,
  };
}

/// The response from Firestore.BatchWrite.
class BatchWriteResponse {
  /// The status of applying the writes.
  ///
  /// This i-th write status corresponds to the i-th write in the request.
  core.List<Status>? status;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  BatchWriteResponse({this.status, this.writeResults});

  BatchWriteResponse.fromJson(core.Map json_)
    : this(
        status:
            (json_['status'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        writeResults:
            (json_['writeResults'] as core.List?)
                ?.map(
                  (value) => WriteResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
    if (writeResults != null) 'writeResults': writeResults!,
  };
}

/// The request for Firestore.BeginTransaction.
class BeginTransactionRequest {
  /// The options for the transaction.
  ///
  /// Defaults to a read-write transaction.
  TransactionOptions? options;

  BeginTransactionRequest({this.options});

  BeginTransactionRequest.fromJson(core.Map json_)
    : this(
        options:
            json_.containsKey('options')
                ? TransactionOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// The response for Firestore.BeginTransaction.
typedef BeginTransactionResponse = $BeginTransactionResponse01;

/// A sequence of bits, encoded in a byte array.
///
/// Each byte in the `bitmap` byte array stores 8 bits of the sequence. The only
/// exception is the last byte, which may store 8 _or fewer_ bits. The `padding`
/// defines the number of bits of the last byte to be ignored as "padding". The
/// values of these "padding" bits are unspecified and must be ignored. To
/// retrieve the first bit, bit 0, calculate: `(bitmap[0] & 0x01) != 0`. To
/// retrieve the second bit, bit 1, calculate: `(bitmap[0] & 0x02) != 0`. To
/// retrieve the third bit, bit 2, calculate: `(bitmap[0] & 0x04) != 0`. To
/// retrieve the fourth bit, bit 3, calculate: `(bitmap[0] & 0x08) != 0`. To
/// retrieve bit n, calculate: `(bitmap[n / 8] & (0x01 << (n % 8))) != 0`. The
/// "size" of a `BitSequence` (the number of bits it contains) is calculated by
/// this formula: `(bitmap.length * 8) - padding`.
typedef BitSequence = $BitSequence;

/// A bloom filter (https://en.wikipedia.org/wiki/Bloom_filter).
///
/// The bloom filter hashes the entries with MD5 and treats the resulting
/// 128-bit hash as 2 distinct 64-bit hash values, interpreted as unsigned
/// integers using 2's complement encoding. These two hash values, named `h1`
/// and `h2`, are then used to compute the `hash_count` hash values using the
/// formula, starting at `i=0`: h(i) = h1 + (i * h2) These resulting values are
/// then taken modulo the number of bits in the bloom filter to get the bits of
/// the bloom filter to test for the given entry.
class BloomFilter {
  /// The bloom filter data.
  BitSequence? bits;

  /// The number of hashes used by the algorithm.
  core.int? hashCount;

  BloomFilter({this.bits, this.hashCount});

  BloomFilter.fromJson(core.Map json_)
    : this(
        bits:
            json_.containsKey('bits')
                ? BitSequence.fromJson(
                  json_['bits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hashCount: json_['hashCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bits != null) 'bits': bits!,
    if (hashCount != null) 'hashCount': hashCount!,
  };
}

/// A selection of a collection, such as `messages as m1`.
typedef CollectionSelector = $CollectionSelector;

/// The request for Firestore.Commit.
class CommitRequest {
  /// If set, applies all writes in this transaction, and commits it.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  core.List<Write>? writes;

  CommitRequest({this.transaction, this.writes});

  CommitRequest.fromJson(core.Map json_)
    : this(
        transaction: json_['transaction'] as core.String?,
        writes:
            (json_['writes'] as core.List?)
                ?.map(
                  (value) => Write.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (transaction != null) 'transaction': transaction!,
    if (writes != null) 'writes': writes!,
  };
}

/// The response for Firestore.Commit.
class CommitResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the commit.
  core.String? commitTime;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  CommitResponse({this.commitTime, this.writeResults});

  CommitResponse.fromJson(core.Map json_)
    : this(
        commitTime: json_['commitTime'] as core.String?,
        writeResults:
            (json_['writeResults'] as core.List?)
                ?.map(
                  (value) => WriteResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitTime != null) 'commitTime': commitTime!,
    if (writeResults != null) 'writeResults': writeResults!,
  };
}

/// A filter that merges multiple other filters using the given operator.
class CompositeFilter {
  /// The list of filters to combine.
  ///
  /// Requires: * At least one filter is present.
  core.List<Filter>? filters;

  /// The operator for combining multiple filters.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "AND" : Documents are required to satisfy all of the combined filters.
  /// - "OR" : Documents are required to satisfy at least one of the combined
  /// filters.
  core.String? op;

  CompositeFilter({this.filters, this.op});

  CompositeFilter.fromJson(core.Map json_)
    : this(
        filters:
            (json_['filters'] as core.List?)
                ?.map(
                  (value) => Filter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        op: json_['op'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filters != null) 'filters': filters!,
    if (op != null) 'op': op!,
  };
}

/// Count of documents that match the query.
///
/// The `COUNT(*)` aggregation function operates on the entire document so it
/// does not require a field reference.
typedef Count = $Count01;

/// A position in a query result set.
class Cursor {
  /// If the position is just before or just after the given values, relative to
  /// the sort order defined by the query.
  core.bool? before;

  /// The values that represent a position, in the order they appear in the
  /// order by clause of a query.
  ///
  /// Can contain fewer values than specified in the order by clause.
  core.List<Value>? values;

  Cursor({this.before, this.values});

  Cursor.fromJson(core.Map json_)
    : this(
        before: json_['before'] as core.bool?,
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (before != null) 'before': before!,
    if (values != null) 'values': values!,
  };
}

/// A Firestore document.
///
/// Must not exceed 1 MiB - 4 bytes.
class Document {
  /// The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and the
  /// `read_time` of a query.
  ///
  /// Output only.
  core.String? createTime;

  /// The document's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except in certain documented contexts. The field names, represented as
  /// UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may be
  /// used in other contexts to refer to structured fields defined here. For
  /// `map_value`, the field path is represented by a dot-delimited (`.`) string
  /// of segments. Each segment is either a simple field name (defined below) or
  /// a quoted field name. For example, the structured field `"foo" : {
  /// map_value: { "x&y" : { string_value: "hello" }}}` would be represented by
  /// the field path `` foo.`x&y` ``. A simple field name contains only
  /// characters `a` to `z`, `A` to `Z`, `0` to `9`, or `_`, and must not start
  /// with `0` to `9`. For example, `foo_bar_17`. A quoted field name starts and
  /// ends with `` ` `` and may contain any character. Some characters,
  /// including `` ` ``, must be escaped using a `\`. For example, `` `x&y` ``
  /// represents `x&y` and `` `bak\`tik` `` represents `` bak`tik ``.
  core.Map<core.String, Value>? fields;

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? name;

  /// The time at which the document was last changed.
  ///
  /// This value is initially set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be compared to
  /// values from other documents and the `read_time` of a query.
  ///
  /// Output only.
  core.String? updateTime;

  Document({this.createTime, this.fields, this.name, this.updateTime});

  Document.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        fields: (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Value.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (fields != null) 'fields': fields!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A Document has changed.
///
/// May be the result of multiple writes, including deletes, that ultimately
/// resulted in a new value for the Document. Multiple DocumentChange messages
/// may be returned for the same logical change, if multiple targets are
/// affected.
class DocumentChange {
  /// The new state of the Document.
  ///
  /// If `mask` is set, contains only fields that were updated or added.
  Document? document;

  /// A set of target IDs for targets that no longer match this document.
  core.List<core.int>? removedTargetIds;

  /// A set of target IDs of targets that match this document.
  core.List<core.int>? targetIds;

  DocumentChange({this.document, this.removedTargetIds, this.targetIds});

  DocumentChange.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        removedTargetIds:
            (json_['removedTargetIds'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        targetIds:
            (json_['targetIds'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (removedTargetIds != null) 'removedTargetIds': removedTargetIds!,
    if (targetIds != null) 'targetIds': targetIds!,
  };
}

/// A Document has been deleted.
///
/// May be the result of multiple writes, including updates, the last of which
/// deleted the Document. Multiple DocumentDelete messages may be returned for
/// the same logical delete, if multiple targets are affected.
typedef DocumentDelete = $DocumentDelete;

/// A set of field paths on a document.
///
/// Used to restrict a get or update operation on a document to a subset of its
/// fields. This is different from standard field masks, as this is always
/// scoped to a Document, and takes in account the dynamic nature of Value.
typedef DocumentMask = $DocumentMask;

/// A Document has been removed from the view of the targets.
///
/// Sent if the document is no longer relevant to a target and is out of view.
/// Can be sent instead of a DocumentDelete or a DocumentChange if the server
/// can not send the new value of the document. Multiple DocumentRemove messages
/// may be returned for the same logical write or delete, if multiple targets
/// are affected.
typedef DocumentRemove = $DocumentRemove;

/// A transformation of a document.
class DocumentTransform {
  /// The name of the document to transform.
  core.String? document;

  /// The list of transformations to apply to the fields of the document, in
  /// order.
  ///
  /// This must not be empty.
  core.List<FieldTransform>? fieldTransforms;

  DocumentTransform({this.document, this.fieldTransforms});

  DocumentTransform.fromJson(core.Map json_)
    : this(
        document: json_['document'] as core.String?,
        fieldTransforms:
            (json_['fieldTransforms'] as core.List?)
                ?.map(
                  (value) => FieldTransform.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (fieldTransforms != null) 'fieldTransforms': fieldTransforms!,
  };
}

/// A target specified by a set of documents names.
typedef DocumentsTarget = $DocumentsTarget;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Execution statistics for the query.
typedef ExecutionStats = $ExecutionStats;

/// A digest of all the documents that match a given target.
class ExistenceFilter {
  /// The total count of documents that match target_id.
  ///
  /// If different from the count of documents in the client that match, the
  /// client must manually determine which documents no longer match the target.
  /// The client can use the `unchanged_names` bloom filter to assist with this
  /// determination by testing ALL the document names against the filter; if the
  /// document name is NOT in the filter, it means the document no longer
  /// matches the target.
  core.int? count;

  /// The target ID to which this filter applies.
  core.int? targetId;

  /// A bloom filter that, despite its name, contains the UTF-8 byte encodings
  /// of the resource names of ALL the documents that match target_id, in the
  /// form
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  ///
  /// This bloom filter may be omitted at the server's discretion, such as if it
  /// is deemed that the client will not make use of it or if it is too
  /// computationally expensive to calculate or transmit. Clients must
  /// gracefully handle this field being absent by falling back to the logic
  /// used before this field existed; that is, re-add the target without a
  /// resume token to figure out which documents in the client's cache are out
  /// of sync.
  BloomFilter? unchangedNames;

  ExistenceFilter({this.count, this.targetId, this.unchangedNames});

  ExistenceFilter.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        targetId: json_['targetId'] as core.int?,
        unchangedNames:
            json_.containsKey('unchangedNames')
                ? BloomFilter.fromJson(
                  json_['unchangedNames']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (targetId != null) 'targetId': targetId!,
    if (unchangedNames != null) 'unchangedNames': unchangedNames!,
  };
}

/// Explain metrics for the query.
class ExplainMetrics {
  /// Aggregated stats from the execution of the query.
  ///
  /// Only present when ExplainOptions.analyze is set to true.
  ExecutionStats? executionStats;

  /// Planning phase information for the query.
  PlanSummary? planSummary;

  ExplainMetrics({this.executionStats, this.planSummary});

  ExplainMetrics.fromJson(core.Map json_)
    : this(
        executionStats:
            json_.containsKey('executionStats')
                ? ExecutionStats.fromJson(
                  json_['executionStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        planSummary:
            json_.containsKey('planSummary')
                ? PlanSummary.fromJson(
                  json_['planSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionStats != null) 'executionStats': executionStats!,
    if (planSummary != null) 'planSummary': planSummary!,
  };
}

/// Explain options for the query.
typedef ExplainOptions = $ExplainOptions;

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter by.
  FieldReference? field;

  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : The given `field` is less than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : The given `field` is less than or equal to the
  /// given `value`. Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN" : The given `field` is greater than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : The given `field` is greater than or equal to
  /// the given `value`. Requires: * That `field` come first in `order_by`.
  /// - "EQUAL" : The given `field` is equal to the given `value`.
  /// - "NOT_EQUAL" : The given `field` is not equal to the given `value`.
  /// Requires: * No other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or
  /// `IS_NOT_NAN`. * That `field` comes first in the `order_by`.
  /// - "ARRAY_CONTAINS" : The given `field` is an array that contains the given
  /// `value`.
  /// - "IN" : The given `field` is equal to at least one value in the given
  /// array. Requires: * That `value` is a non-empty `ArrayValue`, subject to
  /// disjunction limits. * No `NOT_IN` filters in the same query.
  /// - "ARRAY_CONTAINS_ANY" : The given `field` is an array that contains any
  /// of the values in the given array. Requires: * That `value` is a non-empty
  /// `ArrayValue`, subject to disjunction limits. * No other
  /// `ARRAY_CONTAINS_ANY` filters within the same disjunction. * No `NOT_IN`
  /// filters in the same query.
  /// - "NOT_IN" : The value of the `field` is not in the given array. Requires:
  /// * That `value` is a non-empty `ArrayValue` with at most 10 values. * No
  /// other `OR`, `IN`, `ARRAY_CONTAINS_ANY`, `NOT_IN`, `NOT_EQUAL`,
  /// `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the
  /// `order_by`.
  core.String? op;

  /// The value to compare to.
  Value? value;

  FieldFilter({this.field, this.op, this.value});

  FieldFilter.fromJson(core.Map json_)
    : this(
        field:
            json_.containsKey('field')
                ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        op: json_['op'] as core.String?,
        value:
            json_.containsKey('value')
                ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
    if (op != null) 'op': op!,
    if (value != null) 'value': value!,
  };
}

/// A reference to a field in a document, ex: `stats.operations`.
typedef FieldReference = $FieldReference;

/// A transformation of a field of the document.
class FieldTransform {
  /// Append the given elements in order if they are not already present in the
  /// current field value.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// first set to the empty array. Equivalent numbers of different types (e.g.
  /// 3L and 3.0) are considered equal when checking if a value is missing. NaN
  /// is equal to NaN, and Null is equal to Null. If the input contains multiple
  /// equivalent values, only the first will be considered. The corresponding
  /// transform_result will be the null value.
  ArrayValue? appendMissingElements;

  /// The path of the field.
  ///
  /// See Document.fields for the field path syntax reference.
  core.String? fieldPath;

  /// Adds the given value to the field's current value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If either of the given value or the current
  /// field value are doubles, both values will be interpreted as doubles.
  /// Double arithmetic and representation of double values follow IEEE 754
  /// semantics. If there is positive/negative integer overflow, the field is
  /// resolved to the largest magnitude positive/negative integer.
  Value? increment;

  /// Sets the field to the maximum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If a maximum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the larger operand. If
  /// the operands are equivalent (e.g. 3 and 3.0), the field does not change.
  /// 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero
  /// input value is always the stored value. The maximum of any numeric value x
  /// and NaN is NaN.
  Value? maximum;

  /// Sets the field to the minimum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the input value. If a minimum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the smaller operand.
  /// If the operands are equivalent (e.g. 3 and 3.0), the field does not
  /// change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value
  /// and zero input value is always the stored value. The minimum of any
  /// numeric value x and NaN is NaN.
  Value? minimum;

  /// Remove all of the given elements from the array in the field.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// set to the empty array. Equivalent numbers of the different types (e.g. 3L
  /// and 3.0) are considered equal when deciding whether an element should be
  /// removed. NaN is equal to NaN, and Null is equal to Null. This will remove
  /// all equivalent values if there are duplicates. The corresponding
  /// transform_result will be the null value.
  ArrayValue? removeAllFromArray;

  /// Sets the field to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond precision. If used on multiple fields (same or different
  /// documents) in a transaction, all the fields will get the same server
  /// timestamp.
  core.String? setToServerValue;

  FieldTransform({
    this.appendMissingElements,
    this.fieldPath,
    this.increment,
    this.maximum,
    this.minimum,
    this.removeAllFromArray,
    this.setToServerValue,
  });

  FieldTransform.fromJson(core.Map json_)
    : this(
        appendMissingElements:
            json_.containsKey('appendMissingElements')
                ? ArrayValue.fromJson(
                  json_['appendMissingElements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldPath: json_['fieldPath'] as core.String?,
        increment:
            json_.containsKey('increment')
                ? Value.fromJson(
                  json_['increment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximum:
            json_.containsKey('maximum')
                ? Value.fromJson(
                  json_['maximum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimum:
            json_.containsKey('minimum')
                ? Value.fromJson(
                  json_['minimum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        removeAllFromArray:
            json_.containsKey('removeAllFromArray')
                ? ArrayValue.fromJson(
                  json_['removeAllFromArray']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        setToServerValue: json_['setToServerValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appendMissingElements != null)
      'appendMissingElements': appendMissingElements!,
    if (fieldPath != null) 'fieldPath': fieldPath!,
    if (increment != null) 'increment': increment!,
    if (maximum != null) 'maximum': maximum!,
    if (minimum != null) 'minimum': minimum!,
    if (removeAllFromArray != null) 'removeAllFromArray': removeAllFromArray!,
    if (setToServerValue != null) 'setToServerValue': setToServerValue!,
  };
}

/// A filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a document field.
  FieldFilter? fieldFilter;

  /// A filter that takes exactly one argument.
  UnaryFilter? unaryFilter;

  Filter({this.compositeFilter, this.fieldFilter, this.unaryFilter});

  Filter.fromJson(core.Map json_)
    : this(
        compositeFilter:
            json_.containsKey('compositeFilter')
                ? CompositeFilter.fromJson(
                  json_['compositeFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldFilter:
            json_.containsKey('fieldFilter')
                ? FieldFilter.fromJson(
                  json_['fieldFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        unaryFilter:
            json_.containsKey('unaryFilter')
                ? UnaryFilter.fromJson(
                  json_['unaryFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compositeFilter != null) 'compositeFilter': compositeFilter!,
    if (fieldFilter != null) 'fieldFilter': fieldFilter!,
    if (unaryFilter != null) 'unaryFilter': unaryFilter!,
  };
}

/// Nearest Neighbors search config.
///
/// The ordering provided by FindNearest supersedes the order_by stage. If
/// multiple documents have the same vector distance, the returned document
/// order is not guaranteed to be stable between queries.
class FindNearest {
  /// The distance measure to use, required.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_MEASURE_UNSPECIFIED" : Should not be set.
  /// - "EUCLIDEAN" : Measures the EUCLIDEAN distance between the vectors. See
  /// [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) to learn
  /// more. The resulting distance decreases the more similar two vectors are.
  /// - "COSINE" : COSINE distance compares vectors based on the angle between
  /// them, which allows you to measure similarity that isn't based on the
  /// vectors magnitude. We recommend using DOT_PRODUCT with unit normalized
  /// vectors instead of COSINE distance, which is mathematically equivalent
  /// with better performance. See
  /// [Cosine Similarity](https://en.wikipedia.org/wiki/Cosine_similarity) to
  /// learn more about COSINE similarity and COSINE distance. The resulting
  /// COSINE distance decreases the more similar two vectors are.
  /// - "DOT_PRODUCT" : Similar to cosine but is affected by the magnitude of
  /// the vectors. See [Dot Product](https://en.wikipedia.org/wiki/Dot_product)
  /// to learn more. The resulting distance increases the more similar two
  /// vectors are.
  core.String? distanceMeasure;

  /// Optional name of the field to output the result of the vector distance
  /// calculation.
  ///
  /// Must conform to document field name limitations.
  ///
  /// Optional.
  core.String? distanceResultField;

  /// Option to specify a threshold for which no less similar documents will be
  /// returned.
  ///
  /// The behavior of the specified `distance_measure` will affect the meaning
  /// of the distance threshold. Since DOT_PRODUCT distances increase when the
  /// vectors are more similar, the comparison is inverted. * For EUCLIDEAN,
  /// COSINE: `WHERE distance <= distance_threshold` * For DOT_PRODUCT: `WHERE
  /// distance >= distance_threshold`
  ///
  /// Optional.
  core.double? distanceThreshold;

  /// The number of nearest neighbors to return.
  ///
  /// Must be a positive integer of no more than 1000.
  ///
  /// Required.
  core.int? limit;

  /// The query vector that we are searching on.
  ///
  /// Must be a vector of no more than 2048 dimensions.
  ///
  /// Required.
  Value? queryVector;

  /// An indexed vector field to search upon.
  ///
  /// Only documents which contain vectors whose dimensionality match the
  /// query_vector can be returned.
  ///
  /// Required.
  FieldReference? vectorField;

  FindNearest({
    this.distanceMeasure,
    this.distanceResultField,
    this.distanceThreshold,
    this.limit,
    this.queryVector,
    this.vectorField,
  });

  FindNearest.fromJson(core.Map json_)
    : this(
        distanceMeasure: json_['distanceMeasure'] as core.String?,
        distanceResultField: json_['distanceResultField'] as core.String?,
        distanceThreshold:
            (json_['distanceThreshold'] as core.num?)?.toDouble(),
        limit: json_['limit'] as core.int?,
        queryVector:
            json_.containsKey('queryVector')
                ? Value.fromJson(
                  json_['queryVector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vectorField:
            json_.containsKey('vectorField')
                ? FieldReference.fromJson(
                  json_['vectorField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (distanceMeasure != null) 'distanceMeasure': distanceMeasure!,
    if (distanceResultField != null)
      'distanceResultField': distanceResultField!,
    if (distanceThreshold != null) 'distanceThreshold': distanceThreshold!,
    if (limit != null) 'limit': limit!,
    if (queryVector != null) 'queryVector': queryVector!,
    if (vectorField != null) 'vectorField': vectorField!,
  };
}

/// The request for FirestoreAdmin.ExportDocuments.
typedef GoogleFirestoreAdminV1beta1ExportDocumentsRequest =
    $ExportDocumentsRequest;

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1beta1ImportDocumentsRequest {
  /// Which collection ids to import.
  ///
  /// Unspecified means all collections included in the import.
  core.List<core.String>? collectionIds;

  /// Location of the exported files.
  ///
  /// This must match the output_uri_prefix of an ExportDocumentsResponse from
  /// an export that has completed successfully. See:
  /// google.firestore.admin.v1beta1.ExportDocumentsResponse.output_uri_prefix.
  core.String? inputUriPrefix;

  GoogleFirestoreAdminV1beta1ImportDocumentsRequest({
    this.collectionIds,
    this.inputUriPrefix,
  });

  GoogleFirestoreAdminV1beta1ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        collectionIds:
            (json_['collectionIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        inputUriPrefix: json_['inputUriPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (collectionIds != null) 'collectionIds': collectionIds!,
    if (inputUriPrefix != null) 'inputUriPrefix': inputUriPrefix!,
  };
}

/// An index definition.
class GoogleFirestoreAdminV1beta1Index {
  /// The collection ID to which this index applies.
  ///
  /// Required.
  core.String? collectionId;

  /// The fields to index.
  core.List<GoogleFirestoreAdminV1beta1IndexField>? fields;

  /// The resource name of the index.
  ///
  /// Output only.
  core.String? name;

  /// The state of the index.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created. There is an active long-running
  /// operation for the index. The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used. The index is updated when
  /// writing a document. The index is fully populated from all stored documents
  /// it applies to.
  /// - "ERROR" : The index was being created, but something went wrong. There
  /// is no active long-running operation for the index, and the most recently
  /// finished long-running operation failed. The index is not updated when
  /// writing a document. Some index data may exist.
  core.String? state;

  GoogleFirestoreAdminV1beta1Index({
    this.collectionId,
    this.fields,
    this.name,
    this.state,
  });

  GoogleFirestoreAdminV1beta1Index.fromJson(core.Map json_)
    : this(
        collectionId: json_['collectionId'] as core.String?,
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta1IndexField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (collectionId != null) 'collectionId': collectionId!,
    if (fields != null) 'fields': fields!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// A field of an index.
class GoogleFirestoreAdminV1beta1IndexField {
  /// The path of the field.
  ///
  /// Must match the field path specification described by
  /// google.firestore.v1beta1.Document.fields. Special field path `__name__`
  /// may be used by itself or at the end of a path. `__type__` may be used only
  /// at the end of path.
  core.String? fieldPath;

  /// The field's mode.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : The mode is unspecified.
  /// - "ASCENDING" : The field's values are indexed so as to support sequencing
  /// in ascending order and also query by \<, \>, \<=, \>=, and =.
  /// - "DESCENDING" : The field's values are indexed so as to support
  /// sequencing in descending order and also query by \<, \>, \<=, \>=, and =.
  /// - "ARRAY_CONTAINS" : The field's array values are indexed so as to support
  /// membership using ARRAY_CONTAINS queries.
  core.String? mode;

  GoogleFirestoreAdminV1beta1IndexField({this.fieldPath, this.mode});

  GoogleFirestoreAdminV1beta1IndexField.fromJson(core.Map json_)
    : this(
        fieldPath: json_['fieldPath'] as core.String?,
        mode: json_['mode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldPath != null) 'fieldPath': fieldPath!,
    if (mode != null) 'mode': mode!,
  };
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1beta1ListIndexesResponse {
  /// The indexes.
  core.List<GoogleFirestoreAdminV1beta1Index>? indexes;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1beta1ListIndexesResponse({
    this.indexes,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1beta1ListIndexesResponse.fromJson(core.Map json_)
    : this(
        indexes:
            (json_['indexes'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta1Index.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (indexes != null) 'indexes': indexes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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
  Status? error;

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
                ? Status.fromJson(
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

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The request for Firestore.ListCollectionIds.
typedef ListCollectionIdsRequest = $ListCollectionIdsRequest;

/// The response from Firestore.ListCollectionIds.
typedef ListCollectionIdsResponse = $ListCollectionIdsResponse;

/// The response for Firestore.ListDocuments.
class ListDocumentsResponse {
  /// The Documents found.
  core.List<Document>? documents;

  /// A token to retrieve the next page of documents.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDocumentsResponse({this.documents, this.nextPageToken});

  ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => Document.fromJson(
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

/// A request for Firestore.Listen
class ListenRequest {
  /// A target to add to this stream.
  Target? addTarget;

  /// Labels associated with this target change.
  core.Map<core.String, core.String>? labels;

  /// The ID of a target to remove from this stream.
  core.int? removeTarget;

  ListenRequest({this.addTarget, this.labels, this.removeTarget});

  ListenRequest.fromJson(core.Map json_)
    : this(
        addTarget:
            json_.containsKey('addTarget')
                ? Target.fromJson(
                  json_['addTarget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        removeTarget: json_['removeTarget'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addTarget != null) 'addTarget': addTarget!,
    if (labels != null) 'labels': labels!,
    if (removeTarget != null) 'removeTarget': removeTarget!,
  };
}

/// The response for Firestore.Listen.
class ListenResponse {
  /// A Document has changed.
  DocumentChange? documentChange;

  /// A Document has been deleted.
  DocumentDelete? documentDelete;

  /// A Document has been removed from a target (because it is no longer
  /// relevant to that target).
  DocumentRemove? documentRemove;

  /// A filter to apply to the set of documents previously returned for the
  /// given target.
  ///
  /// Returned when documents may have been removed from the given target, but
  /// the exact documents are unknown.
  ExistenceFilter? filter;

  /// Targets have changed.
  TargetChange? targetChange;

  ListenResponse({
    this.documentChange,
    this.documentDelete,
    this.documentRemove,
    this.filter,
    this.targetChange,
  });

  ListenResponse.fromJson(core.Map json_)
    : this(
        documentChange:
            json_.containsKey('documentChange')
                ? DocumentChange.fromJson(
                  json_['documentChange']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        documentDelete:
            json_.containsKey('documentDelete')
                ? DocumentDelete.fromJson(
                  json_['documentDelete']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        documentRemove:
            json_.containsKey('documentRemove')
                ? DocumentRemove.fromJson(
                  json_['documentRemove']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter:
            json_.containsKey('filter')
                ? ExistenceFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetChange:
            json_.containsKey('targetChange')
                ? TargetChange.fromJson(
                  json_['targetChange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentChange != null) 'documentChange': documentChange!,
    if (documentDelete != null) 'documentDelete': documentDelete!,
    if (documentRemove != null) 'documentRemove': documentRemove!,
    if (filter != null) 'filter': filter!,
    if (targetChange != null) 'targetChange': targetChange!,
  };
}

/// A map value.
class MapValue {
  /// The map's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except in certain documented contexts. The map keys, represented as UTF-8,
  /// must not exceed 1,500 bytes and cannot be empty.
  core.Map<core.String, Value>? fields;

  MapValue({this.fields});

  MapValue.fromJson(core.Map json_)
    : this(
        fields: (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Value.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fields != null) 'fields': fields!,
  };
}

/// An order on a field.
class Order {
  /// The direction to order by.
  ///
  /// Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String? direction;

  /// The field to order by.
  FieldReference? field;

  Order({this.direction, this.field});

  Order.fromJson(core.Map json_)
    : this(
        direction: json_['direction'] as core.String?,
        field:
            json_.containsKey('field')
                ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (direction != null) 'direction': direction!,
    if (field != null) 'field': field!,
  };
}

/// The request for Firestore.PartitionQuery.
class PartitionQueryRequest {
  /// The maximum number of partitions to return in this call, subject to
  /// `partition_count`.
  ///
  /// For example, if `partition_count` = 10 and `page_size` = 8, the first call
  /// to PartitionQuery will return up to 8 partitions and a `next_page_token`
  /// if more results exist. A second call to PartitionQuery will return up to 2
  /// partitions, to complete the total of 10 specified in `partition_count`.
  core.int? pageSize;

  /// The `next_page_token` value returned from a previous call to
  /// PartitionQuery that may be used to get an additional set of results.
  ///
  /// There are no ordering guarantees between sets of results. Thus, using
  /// multiple sets of results will require merging the different result sets.
  /// For example, two subsequent calls using a page_token may return: * cursor
  /// B, cursor M, cursor Q * cursor A, cursor U, cursor W To obtain a complete
  /// result set ordered with respect to the results of the query supplied to
  /// PartitionQuery, the results sets should be merged: cursor A, cursor B,
  /// cursor M, cursor Q, cursor U, cursor W
  core.String? pageToken;

  /// The desired maximum number of partition points.
  ///
  /// The partitions may be returned across multiple pages of results. The
  /// number must be positive. The actual number of partitions returned may be
  /// fewer. For example, this may be set to one fewer than the number of
  /// parallel queries to be run, or in running a data pipeline job, one fewer
  /// than the number of workers or compute instances available.
  core.String? partitionCount;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// A structured query.
  ///
  /// Query must specify collection with all descendants and be ordered by name
  /// ascending. Other filters, order bys, limits, offsets, and start/end
  /// cursors are not supported.
  StructuredQuery? structuredQuery;

  PartitionQueryRequest({
    this.pageSize,
    this.pageToken,
    this.partitionCount,
    this.readTime,
    this.structuredQuery,
  });

  PartitionQueryRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        partitionCount: json_['partitionCount'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        structuredQuery:
            json_.containsKey('structuredQuery')
                ? StructuredQuery.fromJson(
                  json_['structuredQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (partitionCount != null) 'partitionCount': partitionCount!,
    if (readTime != null) 'readTime': readTime!,
    if (structuredQuery != null) 'structuredQuery': structuredQuery!,
  };
}

/// The response for Firestore.PartitionQuery.
class PartitionQueryResponse {
  /// A page token that may be used to request an additional set of results, up
  /// to the number specified by `partition_count` in the PartitionQuery
  /// request.
  ///
  /// If blank, there are no more results.
  core.String? nextPageToken;

  /// Partition results.
  ///
  /// Each partition is a split point that can be used by RunQuery as a starting
  /// or end point for the query results. The RunQuery requests must be made
  /// with the same query supplied to this PartitionQuery request. The partition
  /// cursors will be ordered according to same ordering as the results of the
  /// query supplied to PartitionQuery. For example, if a PartitionQuery request
  /// returns partition cursors A and B, running the following three queries
  /// will return the entire result set of the original query: * query, end_at A
  /// * query, start_at A, end_at B * query, start_at B An empty result may
  /// indicate that the query has too few results to be partitioned, or that the
  /// query is not yet supported for partitioning.
  core.List<Cursor>? partitions;

  PartitionQueryResponse({this.nextPageToken, this.partitions});

  PartitionQueryResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partitions:
            (json_['partitions'] as core.List?)
                ?.map(
                  (value) => Cursor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (partitions != null) 'partitions': partitions!,
  };
}

/// Planning phase information for the query.
typedef PlanSummary = $PlanSummary;

/// A precondition on a document, used for conditional operations.
typedef Precondition = $Precondition;

/// The projection of document's fields to return.
class Projection {
  /// The fields to return.
  ///
  /// If empty, all fields are returned. To only return the name of the
  /// document, use `['__name__']`.
  core.List<FieldReference>? fields;

  Projection({this.fields});

  Projection.fromJson(core.Map json_)
    : this(
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => FieldReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fields != null) 'fields': fields!,
  };
}

/// A target specified by a query.
class QueryTarget {
  /// The parent resource name.
  ///
  /// In the format: `projects/{project_id}/databases/{database_id}/documents`
  /// or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  core.String? parent;

  /// A structured query.
  StructuredQuery? structuredQuery;

  QueryTarget({this.parent, this.structuredQuery});

  QueryTarget.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        structuredQuery:
            json_.containsKey('structuredQuery')
                ? StructuredQuery.fromJson(
                  json_['structuredQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parent != null) 'parent': parent!,
    if (structuredQuery != null) 'structuredQuery': structuredQuery!,
  };
}

/// Options for a transaction that can only be used to read documents.
typedef ReadOnly = $ReadOnly01;

/// Options for a transaction that can be used to read and write documents.
///
/// Firestore does not allow 3rd party auth requests to create read-write.
/// transactions.
typedef ReadWrite = $ReadWrite01;

/// The request for Firestore.Rollback.
typedef RollbackRequest = $RollbackRequest;

/// The request for Firestore.RunAggregationQuery.
class RunAggregationQueryRequest {
  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// Starts a new transaction as part of the query, defaulting to read-only.
  ///
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  TransactionOptions? newTransaction;

  /// Executes the query at the given timestamp.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// An aggregation query.
  StructuredAggregationQuery? structuredAggregationQuery;

  /// Run the aggregation within an already active transaction.
  ///
  /// The value here is the opaque transaction ID to execute the query in.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RunAggregationQueryRequest({
    this.explainOptions,
    this.newTransaction,
    this.readTime,
    this.structuredAggregationQuery,
    this.transaction,
  });

  RunAggregationQueryRequest.fromJson(core.Map json_)
    : this(
        explainOptions:
            json_.containsKey('explainOptions')
                ? ExplainOptions.fromJson(
                  json_['explainOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        newTransaction:
            json_.containsKey('newTransaction')
                ? TransactionOptions.fromJson(
                  json_['newTransaction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        structuredAggregationQuery:
            json_.containsKey('structuredAggregationQuery')
                ? StructuredAggregationQuery.fromJson(
                  json_['structuredAggregationQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (explainOptions != null) 'explainOptions': explainOptions!,
    if (newTransaction != null) 'newTransaction': newTransaction!,
    if (readTime != null) 'readTime': readTime!,
    if (structuredAggregationQuery != null)
      'structuredAggregationQuery': structuredAggregationQuery!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The response for Firestore.RunAggregationQuery.
class RunAggregationQueryResponse {
  /// Query explain metrics.
  ///
  /// This is only present when the RunAggregationQueryRequest.explain_options
  /// is provided, and it is sent only once with the last response in the
  /// stream.
  ExplainMetrics? explainMetrics;

  /// The time at which the aggregate result was computed.
  ///
  /// This is always monotonically increasing; in this case, the previous
  /// AggregationResult in the result stream are guaranteed not to have changed
  /// between their `read_time` and this one. If the query returns no results, a
  /// response with `read_time` and no `result` will be sent, and this
  /// represents the time at which the query was run.
  core.String? readTime;

  /// A single aggregation result.
  ///
  /// Not present when reporting partial progress.
  AggregationResult? result;

  /// The transaction that was started as part of this request.
  ///
  /// Only present on the first response when the request requested to start a
  /// new transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RunAggregationQueryResponse({
    this.explainMetrics,
    this.readTime,
    this.result,
    this.transaction,
  });

  RunAggregationQueryResponse.fromJson(core.Map json_)
    : this(
        explainMetrics:
            json_.containsKey('explainMetrics')
                ? ExplainMetrics.fromJson(
                  json_['explainMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        result:
            json_.containsKey('result')
                ? AggregationResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (explainMetrics != null) 'explainMetrics': explainMetrics!,
    if (readTime != null) 'readTime': readTime!,
    if (result != null) 'result': result!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The request for Firestore.RunQuery.
class RunQueryRequest {
  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// A structured query.
  StructuredQuery? structuredQuery;

  /// Run the query within an already active transaction.
  ///
  /// The value here is the opaque transaction ID to execute the query in.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RunQueryRequest({
    this.explainOptions,
    this.newTransaction,
    this.readTime,
    this.structuredQuery,
    this.transaction,
  });

  RunQueryRequest.fromJson(core.Map json_)
    : this(
        explainOptions:
            json_.containsKey('explainOptions')
                ? ExplainOptions.fromJson(
                  json_['explainOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        newTransaction:
            json_.containsKey('newTransaction')
                ? TransactionOptions.fromJson(
                  json_['newTransaction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        structuredQuery:
            json_.containsKey('structuredQuery')
                ? StructuredQuery.fromJson(
                  json_['structuredQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (explainOptions != null) 'explainOptions': explainOptions!,
    if (newTransaction != null) 'newTransaction': newTransaction!,
    if (readTime != null) 'readTime': readTime!,
    if (structuredQuery != null) 'structuredQuery': structuredQuery!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The response for Firestore.RunQuery.
class RunQueryResponse {
  /// A query result, not set when reporting partial progress.
  Document? document;

  /// If present, Firestore has completely finished the request and no more
  /// documents will be returned.
  core.bool? done;

  /// Query explain metrics.
  ///
  /// This is only present when the RunQueryRequest.explain_options is provided,
  /// and it is sent only once with the last response in the stream.
  ExplainMetrics? explainMetrics;

  /// The time at which the document was read.
  ///
  /// This may be monotonically increasing; in this case, the previous documents
  /// in the result stream are guaranteed not to have changed between their
  /// `read_time` and this one. If the query returns no results, a response with
  /// `read_time` and no `document` will be sent, and this represents the time
  /// at which the query was run.
  core.String? readTime;

  /// The number of results that have been skipped due to an offset between the
  /// last response and the current response.
  core.int? skippedResults;

  /// The transaction that was started as part of this request.
  ///
  /// Can only be set in the first response, and only if
  /// RunQueryRequest.new_transaction was set in the request. If set, no other
  /// fields will be set in this response.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RunQueryResponse({
    this.document,
    this.done,
    this.explainMetrics,
    this.readTime,
    this.skippedResults,
    this.transaction,
  });

  RunQueryResponse.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        done: json_['done'] as core.bool?,
        explainMetrics:
            json_.containsKey('explainMetrics')
                ? ExplainMetrics.fromJson(
                  json_['explainMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        skippedResults: json_['skippedResults'] as core.int?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (done != null) 'done': done!,
    if (explainMetrics != null) 'explainMetrics': explainMetrics!,
    if (readTime != null) 'readTime': readTime!,
    if (skippedResults != null) 'skippedResults': skippedResults!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Firestore query for running an aggregation over a StructuredQuery.
class StructuredAggregationQuery {
  /// Series of aggregations to apply over the results of the
  /// `structured_query`.
  ///
  /// Requires: * A minimum of one and maximum of five aggregations per query.
  ///
  /// Optional.
  core.List<Aggregation>? aggregations;

  /// Nested structured query.
  StructuredQuery? structuredQuery;

  StructuredAggregationQuery({this.aggregations, this.structuredQuery});

  StructuredAggregationQuery.fromJson(core.Map json_)
    : this(
        aggregations:
            (json_['aggregations'] as core.List?)
                ?.map(
                  (value) => Aggregation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        structuredQuery:
            json_.containsKey('structuredQuery')
                ? StructuredQuery.fromJson(
                  json_['structuredQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregations != null) 'aggregations': aggregations!,
    if (structuredQuery != null) 'structuredQuery': structuredQuery!,
  };
}

/// A Firestore query.
///
/// The query stages are executed in the following order: 1. from 2. where 3.
/// select 4. order_by + start_at + end_at 5. offset 6. limit 7. find_nearest
class StructuredQuery {
  /// A potential prefix of a position in the result set to end the query at.
  ///
  /// This is similar to `START_AT` but with it controlling the end position
  /// rather than the start position. Requires: * The number of values cannot be
  /// greater than the number of fields specified in the `ORDER BY` clause.
  Cursor? endAt;

  /// A potential nearest neighbors search.
  ///
  /// Applies after all other filters and ordering. Finds the closest vector
  /// embeddings to the given query vector.
  ///
  /// Optional.
  FindNearest? findNearest;

  /// The collections to query.
  core.List<CollectionSelector>? from;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints. Requires: * The value must be greater
  /// than or equal to zero if specified.
  core.int? limit;

  /// The number of documents to skip before returning the first result.
  ///
  /// This applies after the constraints specified by the `WHERE`, `START AT`, &
  /// `END AT` but before the `LIMIT` clause. Requires: * The value must be
  /// greater than or equal to zero if specified.
  core.int? offset;

  /// The order to apply to the query results.
  ///
  /// Firestore allows callers to provide a full ordering, a partial ordering,
  /// or no ordering at all. In all cases, Firestore guarantees a stable
  /// ordering through the following rules: * The `order_by` is required to
  /// reference all fields used with an inequality filter. * All fields that are
  /// required to be in the `order_by` but are not already present are appended
  /// in lexicographical ordering of the field name. * If an order on `__name__`
  /// is not specified, it is appended by default. Fields are appended with the
  /// same sort direction as the last order specified, or 'ASCENDING' if no
  /// order was specified. For example: * `ORDER BY a` becomes `ORDER BY a ASC,
  /// __name__ ASC` * `ORDER BY a DESC` becomes `ORDER BY a DESC, __name__ DESC`
  /// * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__ ASC` *
  /// `WHERE __name__ > ... AND a > 1` becomes `WHERE __name__ > ... AND a > 1
  /// ORDER BY a ASC, __name__ ASC`
  core.List<Order>? orderBy;

  /// Optional sub-set of the fields to return.
  ///
  /// This acts as a DocumentMask over the documents returned from a query. When
  /// not set, assumes that the caller wants all fields returned.
  Projection? select;

  /// A potential prefix of a position in the result set to start the query at.
  ///
  /// The ordering of the result set is based on the `ORDER BY` clause of the
  /// original query. ``` SELECT * FROM k WHERE a = 1 AND b > 2 ORDER BY b ASC,
  /// __name__ ASC; ``` This query's results are ordered by `(b ASC, __name__
  /// ASC)`. Cursors can reference either the full ordering or a prefix of the
  /// location, though it cannot reference more fields than what are in the
  /// provided `ORDER BY`. Continuing off the example above, attaching the
  /// following start cursors will have varying impact: - `START BEFORE (2,
  /// /k/123)`: start the query right before `a = 1 AND b > 2 AND __name__ >
  /// /k/123`. - `START AFTER (10)`: start the query right after `a = 1 AND b >
  /// 10`. Unlike `OFFSET` which requires scanning over the first N results to
  /// skip, a start cursor allows the query to begin at a logical position. This
  /// position is not required to match an actual result, it will scan forward
  /// from this position to find the next document. Requires: * The number of
  /// values cannot be greater than the number of fields specified in the `ORDER
  /// BY` clause.
  Cursor? startAt;

  /// The filter to apply.
  Filter? where;

  StructuredQuery({
    this.endAt,
    this.findNearest,
    this.from,
    this.limit,
    this.offset,
    this.orderBy,
    this.select,
    this.startAt,
    this.where,
  });

  StructuredQuery.fromJson(core.Map json_)
    : this(
        endAt:
            json_.containsKey('endAt')
                ? Cursor.fromJson(
                  json_['endAt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        findNearest:
            json_.containsKey('findNearest')
                ? FindNearest.fromJson(
                  json_['findNearest'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        from:
            (json_['from'] as core.List?)
                ?.map(
                  (value) => CollectionSelector.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        limit: json_['limit'] as core.int?,
        offset: json_['offset'] as core.int?,
        orderBy:
            (json_['orderBy'] as core.List?)
                ?.map(
                  (value) => Order.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        select:
            json_.containsKey('select')
                ? Projection.fromJson(
                  json_['select'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startAt:
            json_.containsKey('startAt')
                ? Cursor.fromJson(
                  json_['startAt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        where:
            json_.containsKey('where')
                ? Filter.fromJson(
                  json_['where'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endAt != null) 'endAt': endAt!,
    if (findNearest != null) 'findNearest': findNearest!,
    if (from != null) 'from': from!,
    if (limit != null) 'limit': limit!,
    if (offset != null) 'offset': offset!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (select != null) 'select': select!,
    if (startAt != null) 'startAt': startAt!,
    if (where != null) 'where': where!,
  };
}

/// Sum of the values of the requested field.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns 0. * Returns a 64-bit integer if all aggregated numbers are
/// integers and the sum result does not overflow. Otherwise, the result is
/// returned as a double. Note that even if all the aggregated values are
/// integers, the result is returned as a double if it cannot fit within a
/// 64-bit signed integer. When this occurs, the returned value will lose
/// precision. * When underflow occurs, floating-point aggregation is
/// non-deterministic. This means that running the same query repeatedly without
/// any changes to the underlying values could produce slightly different
/// results each time. In those cases, values should be stored as integers over
/// floating-point numbers.
class Sum {
  /// The field to aggregate on.
  FieldReference? field;

  Sum({this.field});

  Sum.fromJson(core.Map json_)
    : this(
        field:
            json_.containsKey('field')
                ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
  };
}

/// A specification of a set of documents to listen to.
class Target {
  /// A target specified by a set of document names.
  DocumentsTarget? documents;

  /// The number of documents that last matched the query at the resume token or
  /// read time.
  ///
  /// This value is only relevant when a `resume_type` is provided. This value
  /// being present and greater than zero signals that the client wants
  /// `ExistenceFilter.unchanged_names` to be included in the response.
  core.int? expectedCount;

  /// If the target should be removed once it is current and consistent.
  core.bool? once;

  /// A target specified by a query.
  QueryTarget? query;

  /// Start listening after a specific `read_time`.
  ///
  /// The client must know the state of matching documents at this time.
  core.String? readTime;

  /// A resume token from a prior TargetChange for an identical target.
  ///
  /// Using a resume token with a different target is unsupported and may fail.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> bytes_) {
    resumeToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The target ID that identifies the target on the stream.
  ///
  /// Must be a positive number and non-zero. If `target_id` is 0 (or
  /// unspecified), the server will assign an ID for this target and return that
  /// in a `TargetChange::ADD` event. Once a target with `target_id=0` is added,
  /// all subsequent targets must also have `target_id=0`. If an `AddTarget`
  /// request with `target_id != 0` is sent to the server after a target with
  /// `target_id=0` is added, the server will immediately send a response with a
  /// `TargetChange::Remove` event. Note that if the client sends multiple
  /// `AddTarget` requests without an ID, the order of IDs returned in
  /// `TargetChange.target_ids` are undefined. Therefore, clients should provide
  /// a target ID instead of relying on the server to assign one. If `target_id`
  /// is non-zero, there must not be an existing active target on this stream
  /// with the same ID.
  core.int? targetId;

  Target({
    this.documents,
    this.expectedCount,
    this.once,
    this.query,
    this.readTime,
    this.resumeToken,
    this.targetId,
  });

  Target.fromJson(core.Map json_)
    : this(
        documents:
            json_.containsKey('documents')
                ? DocumentsTarget.fromJson(
                  json_['documents'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        expectedCount: json_['expectedCount'] as core.int?,
        once: json_['once'] as core.bool?,
        query:
            json_.containsKey('query')
                ? QueryTarget.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        resumeToken: json_['resumeToken'] as core.String?,
        targetId: json_['targetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
    if (expectedCount != null) 'expectedCount': expectedCount!,
    if (once != null) 'once': once!,
    if (query != null) 'query': query!,
    if (readTime != null) 'readTime': readTime!,
    if (resumeToken != null) 'resumeToken': resumeToken!,
    if (targetId != null) 'targetId': targetId!,
  };
}

/// Targets being watched have changed.
class TargetChange {
  /// The error that resulted in this change, if applicable.
  Status? cause;

  /// The consistent `read_time` for the given `target_ids` (omitted when the
  /// target_ids are not at a consistent snapshot).
  ///
  /// The stream is guaranteed to send a `read_time` with `target_ids` empty
  /// whenever the entire stream reaches a new consistent snapshot. ADD,
  /// CURRENT, and RESET messages are guaranteed to (eventually) result in a new
  /// consistent snapshot (while NO_CHANGE and REMOVE messages are not). For a
  /// given stream, `read_time` is guaranteed to be monotonically increasing.
  core.String? readTime;

  /// A token that can be used to resume the stream for the given `target_ids`,
  /// or all targets if `target_ids` is empty.
  ///
  /// Not set on every target change.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> bytes_) {
    resumeToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The type of change that occurred.
  /// Possible string values are:
  /// - "NO_CHANGE" : No change has occurred. Used only to send an updated
  /// `resume_token`.
  /// - "ADD" : The targets have been added.
  /// - "REMOVE" : The targets have been removed.
  /// - "CURRENT" : The targets reflect all changes committed before the targets
  /// were added to the stream. This will be sent after or with a `read_time`
  /// that is greater than or equal to the time at which the targets were added.
  /// Listeners can wait for this change if read-after-write semantics are
  /// desired.
  /// - "RESET" : The targets have been reset, and a new initial state for the
  /// targets will be returned in subsequent changes. After the initial state is
  /// complete, `CURRENT` will be returned even if the target was previously
  /// indicated to be `CURRENT`.
  core.String? targetChangeType;

  /// The target IDs of targets that have changed.
  ///
  /// If empty, the change applies to all targets. The order of the target IDs
  /// is not defined.
  core.List<core.int>? targetIds;

  TargetChange({
    this.cause,
    this.readTime,
    this.resumeToken,
    this.targetChangeType,
    this.targetIds,
  });

  TargetChange.fromJson(core.Map json_)
    : this(
        cause:
            json_.containsKey('cause')
                ? Status.fromJson(
                  json_['cause'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        resumeToken: json_['resumeToken'] as core.String?,
        targetChangeType: json_['targetChangeType'] as core.String?,
        targetIds:
            (json_['targetIds'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cause != null) 'cause': cause!,
    if (readTime != null) 'readTime': readTime!,
    if (resumeToken != null) 'resumeToken': resumeToken!,
    if (targetChangeType != null) 'targetChangeType': targetChangeType!,
    if (targetIds != null) 'targetIds': targetIds!,
  };
}

/// Options for creating a new transaction.
class TransactionOptions {
  /// The transaction can only be used for read operations.
  ReadOnly? readOnly;

  /// The transaction can be used for both read and write operations.
  ReadWrite? readWrite;

  TransactionOptions({this.readOnly, this.readWrite});

  TransactionOptions.fromJson(core.Map json_)
    : this(
        readOnly:
            json_.containsKey('readOnly')
                ? ReadOnly.fromJson(
                  json_['readOnly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readWrite:
            json_.containsKey('readWrite')
                ? ReadWrite.fromJson(
                  json_['readWrite'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (readOnly != null) 'readOnly': readOnly!,
    if (readWrite != null) 'readWrite': readWrite!,
  };
}

/// A filter with a single operand.
class UnaryFilter {
  /// The field to which to apply the operator.
  FieldReference? field;

  /// The unary operator to apply.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "IS_NAN" : The given `field` is equal to `NaN`.
  /// - "IS_NULL" : The given `field` is equal to `NULL`.
  /// - "IS_NOT_NAN" : The given `field` is not equal to `NaN`. Requires: * No
  /// other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  /// - "IS_NOT_NULL" : The given `field` is not equal to `NULL`. Requires: * A
  /// single `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  core.String? op;

  UnaryFilter({this.field, this.op});

  UnaryFilter.fromJson(core.Map json_)
    : this(
        field:
            json_.containsKey('field')
                ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        op: json_['op'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
    if (op != null) 'op': op!,
  };
}

/// A message that can hold any of the supported value types.
class Value {
  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain a map
  /// which contains another array.
  ArrayValue? arrayValue;

  /// A boolean value.
  core.bool? booleanValue;

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are
  /// considered by queries.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> bytes_) {
    bytesValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A double value.
  core.double? doubleValue;

  /// A geo point value representing a point on the surface of Earth.
  LatLng? geoPointValue;

  /// An integer value.
  core.String? integerValue;

  /// A map value.
  MapValue? mapValue;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A reference to a document.
  ///
  /// For example:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? referenceValue;

  /// A string value.
  ///
  /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only
  /// the first 1,500 bytes of the UTF-8 representation are considered by
  /// queries.
  core.String? stringValue;

  /// A timestamp value.
  ///
  /// Precise only to microseconds. When stored, any additional precision is
  /// rounded down.
  core.String? timestampValue;

  Value({
    this.arrayValue,
    this.booleanValue,
    this.bytesValue,
    this.doubleValue,
    this.geoPointValue,
    this.integerValue,
    this.mapValue,
    this.nullValue,
    this.referenceValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map json_)
    : this(
        arrayValue:
            json_.containsKey('arrayValue')
                ? ArrayValue.fromJson(
                  json_['arrayValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        bytesValue: json_['bytesValue'] as core.String?,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        geoPointValue:
            json_.containsKey('geoPointValue')
                ? LatLng.fromJson(
                  json_['geoPointValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        integerValue: json_['integerValue'] as core.String?,
        mapValue:
            json_.containsKey('mapValue')
                ? MapValue.fromJson(
                  json_['mapValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nullValue: json_.containsKey('nullValue') ? 'NULL_VALUE' : null,
        referenceValue: json_['referenceValue'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
        timestampValue: json_['timestampValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arrayValue != null) 'arrayValue': arrayValue!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (bytesValue != null) 'bytesValue': bytesValue!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (geoPointValue != null) 'geoPointValue': geoPointValue!,
    if (integerValue != null) 'integerValue': integerValue!,
    if (mapValue != null) 'mapValue': mapValue!,
    if (nullValue != null) 'nullValue': nullValue!,
    if (referenceValue != null) 'referenceValue': referenceValue!,
    if (stringValue != null) 'stringValue': stringValue!,
    if (timestampValue != null) 'timestampValue': timestampValue!,
  };
}

/// A write on a document.
class Write {
  /// An optional precondition on the document.
  ///
  /// The write will fail if this is set and not met by the target document.
  Precondition? currentDocument;

  /// A document name to delete.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? delete;

  /// Applies a transformation to a document.
  DocumentTransform? transform;

  /// A document to write.
  Document? update;

  /// The fields to update in this write.
  ///
  /// This field can be set only when the operation is `update`. If the mask is
  /// not set for an `update` and the document exists, any existing data will be
  /// overwritten. If the mask is set and the document on the server has fields
  /// not covered by the mask, they are left unchanged. Fields referenced in the
  /// mask, but not present in the input document, are deleted from the document
  /// on the server. The field paths in this mask must not contain a reserved
  /// field name.
  DocumentMask? updateMask;

  /// The transforms to perform after update.
  ///
  /// This field can be set only when the operation is `update`. If present,
  /// this write is equivalent to performing `update` and `transform` to the
  /// same document atomically and in order.
  core.List<FieldTransform>? updateTransforms;

  Write({
    this.currentDocument,
    this.delete,
    this.transform,
    this.update,
    this.updateMask,
    this.updateTransforms,
  });

  Write.fromJson(core.Map json_)
    : this(
        currentDocument:
            json_.containsKey('currentDocument')
                ? Precondition.fromJson(
                  json_['currentDocument']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        delete: json_['delete'] as core.String?,
        transform:
            json_.containsKey('transform')
                ? DocumentTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        update:
            json_.containsKey('update')
                ? Document.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask:
            json_.containsKey('updateMask')
                ? DocumentMask.fromJson(
                  json_['updateMask'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTransforms:
            (json_['updateTransforms'] as core.List?)
                ?.map(
                  (value) => FieldTransform.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentDocument != null) 'currentDocument': currentDocument!,
    if (delete != null) 'delete': delete!,
    if (transform != null) 'transform': transform!,
    if (update != null) 'update': update!,
    if (updateMask != null) 'updateMask': updateMask!,
    if (updateTransforms != null) 'updateTransforms': updateTransforms!,
  };
}

/// The request for Firestore.Write.
///
/// The first request creates a stream, or resumes an existing one from a token.
/// When creating a new stream, the server replies with a response containing
/// only an ID and a token, to use in the next request. When resuming a stream,
/// the server first streams any responses later than the given token, then a
/// response containing only an up-to-date token, to use in the next request.
class WriteRequest {
  /// Labels associated with this write request.
  core.Map<core.String, core.String>? labels;

  /// The ID of the write stream to resume.
  ///
  /// This may only be set in the first message. When left empty, a new write
  /// stream will be created.
  core.String? streamId;

  /// A stream token that was previously sent by the server.
  ///
  /// The client should set this field to the token from the most recent
  /// WriteResponse it has received. This acknowledges that the client has
  /// received responses up to this token. After sending this token, earlier
  /// tokens may not be used anymore. The server may close the stream if there
  /// are too many unacknowledged responses. Leave this field unset when
  /// creating a new stream. To resume a stream at a specific point, set this
  /// field and the `stream_id` field. Leave this field unset when creating a
  /// new stream.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> bytes_) {
    streamToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order. This must be empty on the first
  /// request. This may be empty on the last request. This must not be empty on
  /// all other requests.
  core.List<Write>? writes;

  WriteRequest({this.labels, this.streamId, this.streamToken, this.writes});

  WriteRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        streamId: json_['streamId'] as core.String?,
        streamToken: json_['streamToken'] as core.String?,
        writes:
            (json_['writes'] as core.List?)
                ?.map(
                  (value) => Write.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (streamId != null) 'streamId': streamId!,
    if (streamToken != null) 'streamToken': streamToken!,
    if (writes != null) 'writes': writes!,
  };
}

/// The response for Firestore.Write.
class WriteResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the write.
  core.String? commitTime;

  /// The ID of the stream.
  ///
  /// Only set on the first message, when a new stream was created.
  core.String? streamId;

  /// A token that represents the position of this response in the stream.
  ///
  /// This can be used by a client to resume the stream at this point. This
  /// field is always set.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> bytes_) {
    streamToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  WriteResponse({
    this.commitTime,
    this.streamId,
    this.streamToken,
    this.writeResults,
  });

  WriteResponse.fromJson(core.Map json_)
    : this(
        commitTime: json_['commitTime'] as core.String?,
        streamId: json_['streamId'] as core.String?,
        streamToken: json_['streamToken'] as core.String?,
        writeResults:
            (json_['writeResults'] as core.List?)
                ?.map(
                  (value) => WriteResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitTime != null) 'commitTime': commitTime!,
    if (streamId != null) 'streamId': streamId!,
    if (streamToken != null) 'streamToken': streamToken!,
    if (writeResults != null) 'writeResults': writeResults!,
  };
}

/// The result of applying a write.
class WriteResult {
  /// The results of applying each DocumentTransform.FieldTransform, in the same
  /// order.
  core.List<Value>? transformResults;

  /// The last update time of the document after applying the write.
  ///
  /// Not set after a `delete`. If the write did not actually change the
  /// document, this will be the previous update_time.
  core.String? updateTime;

  WriteResult({this.transformResults, this.updateTime});

  WriteResult.fromJson(core.Map json_)
    : this(
        transformResults:
            (json_['transformResults'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (transformResults != null) 'transformResults': transformResults!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}
