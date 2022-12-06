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

/// Cloud Datastore API - v1
///
/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
///
/// For more information, see <https://cloud.google.com/datastore/>
///
/// Create an instance of [DatastoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsIndexesResource]
///   - [ProjectsOperationsResource]
library datastore.v1;

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

/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
class DatastoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatastoreApi(http.Client client,
      {core.String rootUrl = 'https://datastore.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsIndexesResource get indexes => ProjectsIndexesResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Allocates IDs for the given keys, which is useful for referencing an
  /// entity before it is inserted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    AllocateIdsRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':allocateIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AllocateIdsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Begins a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        ':beginTransaction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BeginTransactionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Commits a transaction, optionally creating, deleting or modifying some
  /// entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports a copy of all or a subset of entities from Google Cloud Datastore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to entities may not be reflected in the export. The export
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
  /// [projectId] - Required. Project ID against which to make the request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports entities into Google Cloud Datastore.
  ///
  /// Existing entities with the same key are overwritten. The import occurs in
  /// the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportEntities operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. Project ID against which to make the request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Looks up entities by key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    LookupRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LookupResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Prevents the supplied keys' IDs from being auto-allocated by Cloud
  /// Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    ReserveIdsRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':reserveIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReserveIdsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    RollbackRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RollbackResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs an aggregation query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        ':runAggregationQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunAggregationQueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries for entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':runQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunQueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsIndexesResource {
  final commons.ApiRequester _requester;

  ProjectsIndexesResource(commons.ApiRequester client) : _requester = client;

  /// Creates the specified index.
  ///
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned google.longrunning.Operation, the state will be `READY`. If the
  /// index already exists, the call will return an `ALREADY_EXISTS` status.
  /// During index creation, the process could result in an error, in which case
  /// the index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with delete,
  /// then re-creating the index with create. Indexes with a single property
  /// cannot be created.
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
  async.Future<GoogleLongrunningOperation> create(
    GoogleDatastoreAdminV1Index request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing index.
  ///
  /// An index can only be deleted if it is in a `READY` or `ERROR` state. On
  /// successful execution of the request, the index will be in a `DELETING`
  /// state. And on completion of the returned google.longrunning.Operation, the
  /// index will be removed. During index deletion, the process could result in
  /// an error, in which case the index will move to the `ERROR` state. The
  /// process can be recovered by fixing the data that caused the error,
  /// followed by calling delete again.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
  ///
  /// [indexId] - The resource ID of the index to delete.
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
    core.String projectId,
    core.String indexId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/indexes/' +
        commons.escapeVariable('$indexId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
    core.String projectId,
    core.String indexId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/indexes/' +
        commons.escapeVariable('$indexId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleDatastoreAdminV1Index.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the indexes that match the specified filters.
  ///
  /// Datastore uses an eventually consistent query to fetch the list of indexes
  /// and may occasionally return stale results.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - The maximum number of items to return. If zero, then all
  /// results will be returned.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
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
    core.String projectId, {
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
        'v1/projects/' + commons.escapeVariable('$projectId') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleDatastoreAdminV1ListIndexesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Defines a aggregation that produces a single result.
class Aggregation {
  /// Optional name of the property to store the result of the aggregation.
  ///
  /// If not provided, Datastore will pick a default name following the format
  /// `property_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
  /// COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT_UP_TO(4) OVER ( ...
  /// ); ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
  /// COUNT_UP_TO(2) AS property_1, COUNT_UP_TO(3) AS count_up_to_3,
  /// COUNT_UP_TO(4) AS property_2 OVER ( ... ); ``` Requires: * Must be unique
  /// across all aggregation aliases. * Conform to entity property name
  /// limitations.
  ///
  /// Optional.
  core.String? alias;

  /// Count aggregator.
  Count? count;

  Aggregation({
    this.alias,
    this.count,
  });

  Aggregation.fromJson(core.Map json_)
      : this(
          alias:
              json_.containsKey('alias') ? json_['alias'] as core.String : null,
          count: json_.containsKey('count')
              ? Count.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (count != null) 'count': count!,
      };
}

/// Datastore query for running an aggregation over a Query.
class AggregationQuery {
  /// Series of aggregations to apply over the results of the `nested_query`.
  ///
  /// Requires: * A minimum of one and maximum of five aggregations per query.
  ///
  /// Optional.
  core.List<Aggregation>? aggregations;

  /// Nested query for aggregation
  Query? nestedQuery;

  AggregationQuery({
    this.aggregations,
    this.nestedQuery,
  });

  AggregationQuery.fromJson(core.Map json_)
      : this(
          aggregations: json_.containsKey('aggregations')
              ? (json_['aggregations'] as core.List)
                  .map((value) => Aggregation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nestedQuery: json_.containsKey('nestedQuery')
              ? Query.fromJson(
                  json_['nestedQuery'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregations != null) 'aggregations': aggregations!,
        if (nestedQuery != null) 'nestedQuery': nestedQuery!,
      };
}

/// The result of a single bucket from a Datastore aggregation query.
///
/// The keys of `aggregate_properties` are the same for all results in an
/// aggregation query, unlike entity queries which can have different fields
/// present for each result.
class AggregationResult {
  /// The result of the aggregation functions, ex: `COUNT(*) AS total_entities`.
  ///
  /// The key is the alias assigned to the aggregation function on input and the
  /// size of this map equals the number of aggregation functions in the query.
  core.Map<core.String, Value>? aggregateProperties;

  AggregationResult({
    this.aggregateProperties,
  });

  AggregationResult.fromJson(core.Map json_)
      : this(
          aggregateProperties: json_.containsKey('aggregateProperties')
              ? (json_['aggregateProperties']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Value.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateProperties != null)
          'aggregateProperties': aggregateProperties!,
      };
}

/// A batch of aggregation results produced by an aggregation query.
class AggregationResultBatch {
  /// The aggregation results for this batch.
  core.List<AggregationResult>? aggregationResults;

  /// The state of the query after the current batch.
  ///
  /// Only COUNT(*) aggregations are supported in the initial launch. Therefore,
  /// expected result type is limited to `NO_MORE_RESULTS`.
  /// Possible string values are:
  /// - "MORE_RESULTS_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "NOT_FINISHED" : There may be additional batches to fetch from this
  /// query.
  /// - "MORE_RESULTS_AFTER_LIMIT" : The query is finished, but there may be
  /// more results after the limit.
  /// - "MORE_RESULTS_AFTER_CURSOR" : The query is finished, but there may be
  /// more results after the end cursor.
  /// - "NO_MORE_RESULTS" : The query is finished, and there are no more
  /// results.
  core.String? moreResults;

  /// Read timestamp this batch was returned from.
  ///
  /// In a single transaction, subsequent query result batches for the same
  /// query can have a greater timestamp. Each batch's read timestamp is valid
  /// for all preceding batches.
  core.String? readTime;

  AggregationResultBatch({
    this.aggregationResults,
    this.moreResults,
    this.readTime,
  });

  AggregationResultBatch.fromJson(core.Map json_)
      : this(
          aggregationResults: json_.containsKey('aggregationResults')
              ? (json_['aggregationResults'] as core.List)
                  .map((value) => AggregationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          moreResults: json_.containsKey('moreResults')
              ? json_['moreResults'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregationResults != null)
          'aggregationResults': aggregationResults!,
        if (moreResults != null) 'moreResults': moreResults!,
        if (readTime != null) 'readTime': readTime!,
      };
}

/// The request for Datastore.AllocateIds.
class AllocateIdsRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// A list of keys with incomplete key paths for which to allocate IDs.
  ///
  /// No key may be reserved/read-only.
  ///
  /// Required.
  core.List<Key>? keys;

  AllocateIdsRequest({
    this.databaseId,
    this.keys,
  });

  AllocateIdsRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (keys != null) 'keys': keys!,
      };
}

/// The response for Datastore.AllocateIds.
class AllocateIdsResponse {
  /// The keys specified in the request (in the same order), each with its key
  /// path completed with a newly allocated ID.
  core.List<Key>? keys;

  AllocateIdsResponse({
    this.keys,
  });

  AllocateIdsResponse.fromJson(core.Map json_)
      : this(
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  ///
  /// The order of values in an array is preserved as long as all values have
  /// identical settings for 'exclude_from_indexes'.
  core.List<Value>? values;

  ArrayValue({
    this.values,
  });

  ArrayValue.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// The request for Datastore.BeginTransaction.
class BeginTransactionRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// Options for a new transaction.
  TransactionOptions? transactionOptions;

  BeginTransactionRequest({
    this.databaseId,
    this.transactionOptions,
  });

  BeginTransactionRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          transactionOptions: json_.containsKey('transactionOptions')
              ? TransactionOptions.fromJson(json_['transactionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (transactionOptions != null)
          'transactionOptions': transactionOptions!,
      };
}

/// The response for Datastore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction identifier (always present).
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  BeginTransactionResponse({
    this.transaction,
  });

  BeginTransactionResponse.fromJson(core.Map json_)
      : this(
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The request for Datastore.Commit.
class CommitRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// The type of commit to perform.
  ///
  /// Defaults to `TRANSACTIONAL`.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "TRANSACTIONAL" : Transactional: The mutations are either all applied,
  /// or none are applied. Learn about transactions
  /// [here](https://cloud.google.com/datastore/docs/concepts/transactions).
  /// - "NON_TRANSACTIONAL" : Non-transactional: The mutations may not apply as
  /// all or none.
  core.String? mode;

  /// The mutations to perform.
  ///
  /// When mode is `TRANSACTIONAL`, mutations affecting a single entity are
  /// applied in order. The following sequences of mutations affecting a single
  /// entity are not permitted in a single `Commit` request: - `insert` followed
  /// by `insert` - `update` followed by `insert` - `upsert` followed by
  /// `insert` - `delete` followed by `update` When mode is `NON_TRANSACTIONAL`,
  /// no two mutations may affect a single entity.
  core.List<Mutation>? mutations;

  /// The identifier of the transaction associated with the commit.
  ///
  /// A transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  CommitRequest({
    this.databaseId,
    this.mode,
    this.mutations,
    this.transaction,
  });

  CommitRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          mutations: json_.containsKey('mutations')
              ? (json_['mutations'] as core.List)
                  .map((value) => Mutation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (mode != null) 'mode': mode!,
        if (mutations != null) 'mutations': mutations!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for Datastore.Commit.
class CommitResponse {
  /// The transaction commit timestamp.
  ///
  /// Not set for non-transactional commits.
  core.String? commitTime;

  /// The number of index entries updated during the commit, or zero if none
  /// were updated.
  core.int? indexUpdates;

  /// The result of performing the mutations.
  ///
  /// The i-th mutation result corresponds to the i-th mutation in the request.
  core.List<MutationResult>? mutationResults;

  CommitResponse({
    this.commitTime,
    this.indexUpdates,
    this.mutationResults,
  });

  CommitResponse.fromJson(core.Map json_)
      : this(
          commitTime: json_.containsKey('commitTime')
              ? json_['commitTime'] as core.String
              : null,
          indexUpdates: json_.containsKey('indexUpdates')
              ? json_['indexUpdates'] as core.int
              : null,
          mutationResults: json_.containsKey('mutationResults')
              ? (json_['mutationResults'] as core.List)
                  .map((value) => MutationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTime != null) 'commitTime': commitTime!,
        if (indexUpdates != null) 'indexUpdates': indexUpdates!,
        if (mutationResults != null) 'mutationResults': mutationResults!,
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
  /// - "AND" : The results are required to satisfy each of the combined
  /// filters.
  core.String? op;

  CompositeFilter({
    this.filters,
    this.op,
  });

  CompositeFilter.fromJson(core.Map json_)
      : this(
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          op: json_.containsKey('op') ? json_['op'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (op != null) 'op': op!,
      };
}

/// Count of entities that match the query.
///
/// The `COUNT(*)` aggregation function operates on the entire entity so it does
/// not require a field reference.
class Count {
  /// Optional constraint on the maximum number of entities to count.
  ///
  /// This provides a way to set an upper bound on the number of entities to
  /// scan, limiting latency and cost. Unspecified is interpreted as no bound.
  /// If a zero value is provided, a count result of zero should always be
  /// expected. High-Level Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER (
  /// SELECT * FROM k ); ``` Requires: * Must be non-negative when present.
  ///
  /// Optional.
  core.String? upTo;

  Count({
    this.upTo,
  });

  Count.fromJson(core.Map json_)
      : this(
          upTo: json_.containsKey('upTo') ? json_['upTo'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (upTo != null) 'upTo': upTo!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A Datastore data object.
///
/// An entity is limited to 1 megabyte when stored. That _roughly_ corresponds
/// to a limit of 1 megabyte for the serialized form of this message.
class Entity {
  /// The entity's key.
  ///
  /// An entity must have a key, unless otherwise documented (for example, an
  /// entity in `Value.entity_value` may have no key). An entity's kind is its
  /// key path's last element's kind, or null if it has no key.
  Key? key;

  /// The entity's properties.
  ///
  /// The map's keys are property names. A property name matching regex `__.*__`
  /// is reserved. A reserved property name is forbidden in certain documented
  /// contexts. The name must not contain more than 500 characters. The name
  /// cannot be `""`.
  core.Map<core.String, Value>? properties;

  Entity({
    this.key,
    this.properties,
  });

  Entity.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key')
              ? Key.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Value.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (properties != null) 'properties': properties!,
      };
}

/// The result of fetching an entity from Datastore.
class EntityResult {
  /// A cursor that points to the position after the result entity.
  ///
  /// Set only when the `EntityResult` is part of a `QueryResultBatch` message.
  core.String? cursor;
  core.List<core.int> get cursorAsBytes => convert.base64.decode(cursor!);

  set cursorAsBytes(core.List<core.int> bytes_) {
    cursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resulting entity.
  Entity? entity;

  /// The time at which the entity was last changed.
  ///
  /// This field is set for `FULL` entity results. If this entity is missing,
  /// this field will not be set.
  core.String? updateTime;

  /// The version of the entity, a strictly positive number that monotonically
  /// increases with changes to the entity.
  ///
  /// This field is set for `FULL` entity results. For missing entities in
  /// `LookupResponse`, this is the version of the snapshot that was used to
  /// look up the entity, and it is always set except for eventually consistent
  /// reads.
  core.String? version;

  EntityResult({
    this.cursor,
    this.entity,
    this.updateTime,
    this.version,
  });

  EntityResult.fromJson(core.Map json_)
      : this(
          cursor: json_.containsKey('cursor')
              ? json_['cursor'] as core.String
              : null,
          entity: json_.containsKey('entity')
              ? Entity.fromJson(
                  json_['entity'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cursor != null) 'cursor': cursor!,
        if (entity != null) 'entity': entity!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// A holder for any type of filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a property.
  PropertyFilter? propertyFilter;

  Filter({
    this.compositeFilter,
    this.propertyFilter,
  });

  Filter.fromJson(core.Map json_)
      : this(
          compositeFilter: json_.containsKey('compositeFilter')
              ? CompositeFilter.fromJson(json_['compositeFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          propertyFilter: json_.containsKey('propertyFilter')
              ? PropertyFilter.fromJson(json_['propertyFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compositeFilter != null) 'compositeFilter': compositeFilter!,
        if (propertyFilter != null) 'propertyFilter': propertyFilter!,
      };
}

/// Identifies a subset of entities in a project.
///
/// This is specified as combinations of kinds and namespaces (either or both of
/// which may be all, as described in the following examples). Example usage:
/// Entire project: kinds=\[\], namespace_ids=\[\] Kinds Foo and Bar in all
/// namespaces: kinds=\['Foo', 'Bar'\], namespace_ids=\[\] Kinds Foo and Bar
/// only in the default namespace: kinds=\['Foo', 'Bar'\], namespace_ids=\[''\]
/// Kinds Foo and Bar in both the default and Baz namespaces: kinds=\['Foo',
/// 'Bar'\], namespace_ids=\['', 'Baz'\] The entire Baz namespace: kinds=\[\],
/// namespace_ids=\['Baz'\]
class GoogleDatastoreAdminV1EntityFilter {
  /// If empty, then this represents all kinds.
  core.List<core.String>? kinds;

  /// An empty list represents all namespaces.
  ///
  /// This is the preferred usage for projects that don't use namespaces. An
  /// empty string element represents the default namespace. This should be used
  /// if the project has data in non-default namespaces, but doesn't want to
  /// include them. Each namespace in this list must be unique.
  core.List<core.String>? namespaceIds;

  GoogleDatastoreAdminV1EntityFilter({
    this.kinds,
    this.namespaceIds,
  });

  GoogleDatastoreAdminV1EntityFilter.fromJson(core.Map json_)
      : this(
          kinds: json_.containsKey('kinds')
              ? (json_['kinds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          namespaceIds: json_.containsKey('namespaceIds')
              ? (json_['namespaceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kinds != null) 'kinds': kinds!,
        if (namespaceIds != null) 'namespaceIds': namespaceIds!,
      };
}

/// The request for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.
class GoogleDatastoreAdminV1ExportEntitiesRequest {
  /// Description of what data from the project is included in the export.
  GoogleDatastoreAdminV1EntityFilter? entityFilter;

  /// Client-assigned labels.
  core.Map<core.String, core.String>? labels;

  /// Location for the export metadata and data files.
  ///
  /// The full resource URL of the external storage location. Currently, only
  /// Google Cloud Storage is supported. So output_url_prefix should be of the
  /// form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name
  /// of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud
  /// Storage namespace path (this is not a Cloud Datastore namespace). For more
  /// information about Cloud Storage namespace paths, see
  /// [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  /// The resulting files will be nested deeper than the specified URL prefix.
  /// The final output URL will be provided in the
  /// google.datastore.admin.v1.ExportEntitiesResponse.output_url field. That
  /// value should be used for subsequent ImportEntities operations. By nesting
  /// the data files deeper, the same Cloud Storage bucket can be used in
  /// multiple ExportEntities operations without conflict.
  ///
  /// Required.
  core.String? outputUrlPrefix;

  GoogleDatastoreAdminV1ExportEntitiesRequest({
    this.entityFilter,
    this.labels,
    this.outputUrlPrefix,
  });

  GoogleDatastoreAdminV1ExportEntitiesRequest.fromJson(core.Map json_)
      : this(
          entityFilter: json_.containsKey('entityFilter')
              ? GoogleDatastoreAdminV1EntityFilter.fromJson(
                  json_['entityFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          outputUrlPrefix: json_.containsKey('outputUrlPrefix')
              ? json_['outputUrlPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityFilter != null) 'entityFilter': entityFilter!,
        if (labels != null) 'labels': labels!,
        if (outputUrlPrefix != null) 'outputUrlPrefix': outputUrlPrefix!,
      };
}

/// The request for google.datastore.admin.v1.DatastoreAdmin.ImportEntities.
class GoogleDatastoreAdminV1ImportEntitiesRequest {
  /// Optionally specify which kinds/namespaces are to be imported.
  ///
  /// If provided, the list must be a subset of the EntityFilter used in
  /// creating the export, otherwise a FAILED_PRECONDITION error will be
  /// returned. If no filter is specified then all entities from the export are
  /// imported.
  GoogleDatastoreAdminV1EntityFilter? entityFilter;

  /// The full resource URL of the external storage location.
  ///
  /// Currently, only Google Cloud Storage is supported. So input_url should be
  /// of the form:
  /// `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where
  /// `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is
  /// an optional Cloud Storage namespace path (this is not a Cloud Datastore
  /// namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file
  /// written by the ExportEntities operation. For more information about Cloud
  /// Storage namespace paths, see
  /// [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  /// For more information, see
  /// google.datastore.admin.v1.ExportEntitiesResponse.output_url.
  ///
  /// Required.
  core.String? inputUrl;

  /// Client-assigned labels.
  core.Map<core.String, core.String>? labels;

  GoogleDatastoreAdminV1ImportEntitiesRequest({
    this.entityFilter,
    this.inputUrl,
    this.labels,
  });

  GoogleDatastoreAdminV1ImportEntitiesRequest.fromJson(core.Map json_)
      : this(
          entityFilter: json_.containsKey('entityFilter')
              ? GoogleDatastoreAdminV1EntityFilter.fromJson(
                  json_['entityFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          inputUrl: json_.containsKey('inputUrl')
              ? json_['inputUrl'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityFilter != null) 'entityFilter': entityFilter!,
        if (inputUrl != null) 'inputUrl': inputUrl!,
        if (labels != null) 'labels': labels!,
      };
}

/// Datastore composite index definition.
class GoogleDatastoreAdminV1Index {
  /// The index's ancestor mode.
  ///
  /// Must not be ANCESTOR_MODE_UNSPECIFIED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ANCESTOR_MODE_UNSPECIFIED" : The ancestor mode is unspecified.
  /// - "NONE" : Do not include the entity's ancestors in the index.
  /// - "ALL_ANCESTORS" : Include all the entity's ancestors in the index.
  core.String? ancestor;

  /// The resource ID of the index.
  ///
  /// Output only.
  core.String? indexId;

  /// The entity kind to which this index applies.
  ///
  /// Required.
  core.String? kind;

  /// Project ID.
  ///
  /// Output only.
  core.String? projectId;

  /// An ordered sequence of property names and their index attributes.
  ///
  /// Requires: * A maximum of 100 properties.
  ///
  /// Required.
  core.List<GoogleDatastoreAdminV1IndexedProperty>? properties;

  /// The state of the index.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created, and cannot be used by queries.
  /// There is an active long-running operation for the index. The index is
  /// updated when writing an entity. Some index data may exist.
  /// - "READY" : The index is ready to be used. The index is updated when
  /// writing an entity. The index is fully populated from all stored entities
  /// it applies to.
  /// - "DELETING" : The index is being deleted, and cannot be used by queries.
  /// There is an active long-running operation for the index. The index is not
  /// updated when writing an entity. Some index data may exist.
  /// - "ERROR" : The index was being created or deleted, but something went
  /// wrong. The index cannot by used by queries. There is no active
  /// long-running operation for the index, and the most recently finished
  /// long-running operation failed. The index is not updated when writing an
  /// entity. Some index data may exist.
  core.String? state;

  GoogleDatastoreAdminV1Index({
    this.ancestor,
    this.indexId,
    this.kind,
    this.projectId,
    this.properties,
    this.state,
  });

  GoogleDatastoreAdminV1Index.fromJson(core.Map json_)
      : this(
          ancestor: json_.containsKey('ancestor')
              ? json_['ancestor'] as core.String
              : null,
          indexId: json_.containsKey('indexId')
              ? json_['indexId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleDatastoreAdminV1IndexedProperty.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestor != null) 'ancestor': ancestor!,
        if (indexId != null) 'indexId': indexId!,
        if (kind != null) 'kind': kind!,
        if (projectId != null) 'projectId': projectId!,
        if (properties != null) 'properties': properties!,
        if (state != null) 'state': state!,
      };
}

/// A property of an index.
class GoogleDatastoreAdminV1IndexedProperty {
  /// The indexed property's direction.
  ///
  /// Must not be DIRECTION_UNSPECIFIED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : The direction is unspecified.
  /// - "ASCENDING" : The property's values are indexed so as to support
  /// sequencing in ascending order and also query by \<, \>, \<=, \>=, and =.
  /// - "DESCENDING" : The property's values are indexed so as to support
  /// sequencing in descending order and also query by \<, \>, \<=, \>=, and =.
  core.String? direction;

  /// The property name to index.
  ///
  /// Required.
  core.String? name;

  GoogleDatastoreAdminV1IndexedProperty({
    this.direction,
    this.name,
  });

  GoogleDatastoreAdminV1IndexedProperty.fromJson(core.Map json_)
      : this(
          direction: json_.containsKey('direction')
              ? json_['direction'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (direction != null) 'direction': direction!,
        if (name != null) 'name': name!,
      };
}

/// The response for google.datastore.admin.v1.DatastoreAdmin.ListIndexes.
class GoogleDatastoreAdminV1ListIndexesResponse {
  /// The indexes.
  core.List<GoogleDatastoreAdminV1Index>? indexes;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleDatastoreAdminV1ListIndexesResponse({
    this.indexes,
    this.nextPageToken,
  });

  GoogleDatastoreAdminV1ListIndexesResponse.fromJson(core.Map json_)
      : this(
          indexes: json_.containsKey('indexes')
              ? (json_['indexes'] as core.List)
                  .map((value) => GoogleDatastoreAdminV1Index.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexes != null) 'indexes': indexes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// A
/// [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
class GqlQuery {
  /// When false, the query string must not contain any literals and instead
  /// must bind all values.
  ///
  /// For example, `SELECT * FROM Kind WHERE a = 'string literal'` is not
  /// allowed, while `SELECT * FROM Kind WHERE a = @value` is.
  core.bool? allowLiterals;

  /// For each non-reserved named binding site in the query string, there must
  /// be a named parameter with that name, but not necessarily the inverse.
  ///
  /// Key must match regex `A-Za-z_$*`, must not match regex `__.*__`, and must
  /// not be `""`.
  core.Map<core.String, GqlQueryParameter>? namedBindings;

  /// Numbered binding site @1 references the first numbered parameter,
  /// effectively using 1-based indexing, rather than the usual 0.
  ///
  /// For each binding site numbered i in `query_string`, there must be an i-th
  /// numbered parameter. The inverse must also be true.
  core.List<GqlQueryParameter>? positionalBindings;

  /// A string of the format described
  /// [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
  core.String? queryString;

  GqlQuery({
    this.allowLiterals,
    this.namedBindings,
    this.positionalBindings,
    this.queryString,
  });

  GqlQuery.fromJson(core.Map json_)
      : this(
          allowLiterals: json_.containsKey('allowLiterals')
              ? json_['allowLiterals'] as core.bool
              : null,
          namedBindings: json_.containsKey('namedBindings')
              ? (json_['namedBindings'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GqlQueryParameter.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          positionalBindings: json_.containsKey('positionalBindings')
              ? (json_['positionalBindings'] as core.List)
                  .map((value) => GqlQueryParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          queryString: json_.containsKey('queryString')
              ? json_['queryString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowLiterals != null) 'allowLiterals': allowLiterals!,
        if (namedBindings != null) 'namedBindings': namedBindings!,
        if (positionalBindings != null)
          'positionalBindings': positionalBindings!,
        if (queryString != null) 'queryString': queryString!,
      };
}

/// A binding parameter for a GQL query.
class GqlQueryParameter {
  /// A query cursor.
  ///
  /// Query cursors are returned in query result batches.
  core.String? cursor;
  core.List<core.int> get cursorAsBytes => convert.base64.decode(cursor!);

  set cursorAsBytes(core.List<core.int> bytes_) {
    cursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A value parameter.
  Value? value;

  GqlQueryParameter({
    this.cursor,
    this.value,
  });

  GqlQueryParameter.fromJson(core.Map json_)
      : this(
          cursor: json_.containsKey('cursor')
              ? json_['cursor'] as core.String
              : null,
          value: json_.containsKey('value')
              ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cursor != null) 'cursor': cursor!,
        if (value != null) 'value': value!,
      };
}

/// A unique identifier for an entity.
///
/// If a key's partition ID or any of its path kinds or names are
/// reserved/read-only, the key is reserved/read-only. A reserved/read-only key
/// is forbidden in certain documented contexts.
class Key {
  /// Entities are partitioned into subsets, currently identified by a project
  /// ID and namespace ID.
  ///
  /// Queries are scoped to a single partition.
  PartitionId? partitionId;

  /// The entity path.
  ///
  /// An entity path consists of one or more elements composed of a kind and a
  /// string or numerical identifier, which identify entities. The first element
  /// identifies a _root entity_, the second element identifies a _child_ of the
  /// root entity, the third element identifies a child of the second entity,
  /// and so forth. The entities identified by all prefixes of the path are
  /// called the element's _ancestors_. An entity path is always fully complete:
  /// *all* of the entity's ancestors are required to be in the path along with
  /// the entity identifier itself. The only exception is that in some
  /// documented cases, the identifier in the last path element (for the entity)
  /// itself may be omitted. For example, the last path element of the key of
  /// `Mutation.insert` may have no identifier. A path can never be empty, and a
  /// path can have at most 100 elements.
  core.List<PathElement>? path;

  Key({
    this.partitionId,
    this.path,
  });

  Key.fromJson(core.Map json_)
      : this(
          partitionId: json_.containsKey('partitionId')
              ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path')
              ? (json_['path'] as core.List)
                  .map((value) => PathElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionId != null) 'partitionId': partitionId!,
        if (path != null) 'path': path!,
      };
}

/// A representation of a kind.
typedef KindExpression = $KindExpression;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The request for Datastore.Lookup.
class LookupRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// Keys of entities to look up.
  ///
  /// Required.
  core.List<Key>? keys;

  /// The options for this lookup request.
  ReadOptions? readOptions;

  LookupRequest({
    this.databaseId,
    this.keys,
    this.readOptions,
  });

  LookupRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readOptions: json_.containsKey('readOptions')
              ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (keys != null) 'keys': keys!,
        if (readOptions != null) 'readOptions': readOptions!,
      };
}

/// The response for Datastore.Lookup.
class LookupResponse {
  /// A list of keys that were not looked up due to resource constraints.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<Key>? deferred;

  /// Entities found as `ResultType.FULL` entities.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<EntityResult>? found;

  /// Entities not found as `ResultType.KEY_ONLY` entities.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<EntityResult>? missing;

  /// The time at which these entities were read or found missing.
  core.String? readTime;

  LookupResponse({
    this.deferred,
    this.found,
    this.missing,
    this.readTime,
  });

  LookupResponse.fromJson(core.Map json_)
      : this(
          deferred: json_.containsKey('deferred')
              ? (json_['deferred'] as core.List)
                  .map((value) => Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          found: json_.containsKey('found')
              ? (json_['found'] as core.List)
                  .map((value) => EntityResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          missing: json_.containsKey('missing')
              ? (json_['missing'] as core.List)
                  .map((value) => EntityResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deferred != null) 'deferred': deferred!,
        if (found != null) 'found': found!,
        if (missing != null) 'missing': missing!,
        if (readTime != null) 'readTime': readTime!,
      };
}

/// A mutation to apply to an entity.
class Mutation {
  /// The version of the entity that this mutation is being applied to.
  ///
  /// If this does not match the current version on the server, the mutation
  /// conflicts.
  core.String? baseVersion;

  /// The key of the entity to delete.
  ///
  /// The entity may or may not already exist. Must have a complete key path and
  /// must not be reserved/read-only.
  Key? delete;

  /// The entity to insert.
  ///
  /// The entity must not already exist. The entity key's final path element may
  /// be incomplete.
  Entity? insert;

  /// The entity to update.
  ///
  /// The entity must already exist. Must have a complete key path.
  Entity? update;

  /// The update time of the entity that this mutation is being applied to.
  ///
  /// If this does not match the current update time on the server, the mutation
  /// conflicts.
  core.String? updateTime;

  /// The entity to upsert.
  ///
  /// The entity may or may not already exist. The entity key's final path
  /// element may be incomplete.
  Entity? upsert;

  Mutation({
    this.baseVersion,
    this.delete,
    this.insert,
    this.update,
    this.updateTime,
    this.upsert,
  });

  Mutation.fromJson(core.Map json_)
      : this(
          baseVersion: json_.containsKey('baseVersion')
              ? json_['baseVersion'] as core.String
              : null,
          delete: json_.containsKey('delete')
              ? Key.fromJson(
                  json_['delete'] as core.Map<core.String, core.dynamic>)
              : null,
          insert: json_.containsKey('insert')
              ? Entity.fromJson(
                  json_['insert'] as core.Map<core.String, core.dynamic>)
              : null,
          update: json_.containsKey('update')
              ? Entity.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upsert: json_.containsKey('upsert')
              ? Entity.fromJson(
                  json_['upsert'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseVersion != null) 'baseVersion': baseVersion!,
        if (delete != null) 'delete': delete!,
        if (insert != null) 'insert': insert!,
        if (update != null) 'update': update!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upsert != null) 'upsert': upsert!,
      };
}

/// The result of applying a mutation.
class MutationResult {
  /// Whether a conflict was detected for this mutation.
  ///
  /// Always false when a conflict detection strategy field is not set in the
  /// mutation.
  core.bool? conflictDetected;

  /// The automatically allocated key.
  ///
  /// Set only when the mutation allocated a key.
  Key? key;

  /// The update time of the entity on the server after processing the mutation.
  ///
  /// If the mutation doesn't change anything on the server, then the timestamp
  /// will be the update timestamp of the current entity. This field will not be
  /// set after a 'delete'.
  core.String? updateTime;

  /// The version of the entity on the server after processing the mutation.
  ///
  /// If the mutation doesn't change anything on the server, then the version
  /// will be the version of the current entity or, if no entity is present, a
  /// version that is strictly greater than the version of any previous entity
  /// and less than the version of any possible future entity.
  core.String? version;

  MutationResult({
    this.conflictDetected,
    this.key,
    this.updateTime,
    this.version,
  });

  MutationResult.fromJson(core.Map json_)
      : this(
          conflictDetected: json_.containsKey('conflictDetected')
              ? json_['conflictDetected'] as core.bool
              : null,
          key: json_.containsKey('key')
              ? Key.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conflictDetected != null) 'conflictDetected': conflictDetected!,
        if (key != null) 'key': key!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// A partition ID identifies a grouping of entities.
///
/// The grouping is always by project and namespace, however the namespace ID
/// may be empty. A partition ID contains several dimensions: project ID and
/// namespace ID. Partition dimensions: - May be `""`. - Must be valid UTF-8
/// bytes. - Must have values that match regex `[A-Za-z\d\.\-_]{1,100}` If the
/// value of any dimension matches regex `__.*__`, the partition is
/// reserved/read-only. A reserved/read-only partition ID is forbidden in
/// certain documented contexts. Foreign partition IDs (in which the project ID
/// does not match the context project ID ) are discouraged. Reads and writes of
/// foreign partition IDs may fail if the project is not in an active state.
class PartitionId {
  /// If not empty, the ID of the database to which the entities belong.
  core.String? databaseId;

  /// If not empty, the ID of the namespace to which the entities belong.
  core.String? namespaceId;

  /// The ID of the project to which the entities belong.
  core.String? projectId;

  PartitionId({
    this.databaseId,
    this.namespaceId,
    this.projectId,
  });

  PartitionId.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          namespaceId: json_.containsKey('namespaceId')
              ? json_['namespaceId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (namespaceId != null) 'namespaceId': namespaceId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete. If neither is set, the
/// element is incomplete.
class PathElement {
  /// The auto-allocated ID of the entity.
  ///
  /// Never equal to zero. Values less than zero are discouraged and may not be
  /// supported in the future.
  core.String? id;

  /// The kind of the entity.
  ///
  /// A kind matching regex `__.*__` is reserved/read-only. A kind must not
  /// contain more than 1500 bytes when UTF-8 encoded. Cannot be `""`. Must be
  /// valid UTF-8 bytes. Legacy values that are not valid UTF-8 are encoded as
  /// `__bytes__` where `` is the base-64 encoding of the bytes.
  core.String? kind;

  /// The name of the entity.
  ///
  /// A name matching regex `__.*__` is reserved/read-only. A name must not be
  /// more than 1500 bytes when UTF-8 encoded. Cannot be `""`. Must be valid
  /// UTF-8 bytes. Legacy values that are not valid UTF-8 are encoded as
  /// `__bytes__` where `` is the base-64 encoding of the bytes.
  core.String? name;

  PathElement({
    this.id,
    this.kind,
    this.name,
  });

  PathElement.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// A representation of a property in a projection.
class Projection {
  /// The property to project.
  PropertyReference? property;

  Projection({
    this.property,
  });

  Projection.fromJson(core.Map json_)
      : this(
          property: json_.containsKey('property')
              ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (property != null) 'property': property!,
      };
}

/// A filter on a specific property.
class PropertyFilter {
  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : The given `property` is less than the given `value`.
  /// Requires: * That `property` comes first in `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : The given `property` is less than or equal to the
  /// given `value`. Requires: * That `property` comes first in `order_by`.
  /// - "GREATER_THAN" : The given `property` is greater than the given `value`.
  /// Requires: * That `property` comes first in `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : The given `property` is greater than or equal
  /// to the given `value`. Requires: * That `property` comes first in
  /// `order_by`.
  /// - "EQUAL" : The given `property` is equal to the given `value`.
  /// - "IN" : The given `property` is equal to at least one value in the given
  /// array. Requires: * That `value` is a non-empty `ArrayValue` with at most
  /// 10 values. * No other `IN` or `NOT_IN` is in the same query.
  /// - "NOT_EQUAL" : The given `property` is not equal to the given `value`.
  /// Requires: * No other `NOT_EQUAL` or `NOT_IN` is in the same query. * That
  /// `property` comes first in the `order_by`.
  /// - "HAS_ANCESTOR" : Limit the result set to the given entity and its
  /// descendants. Requires: * That `value` is an entity key.
  /// - "NOT_IN" : The value of the `property` is not in the given array.
  /// Requires: * That `value` is a non-empty `ArrayValue` with at most 10
  /// values. * No other `IN`, `NOT_IN`, `NOT_EQUAL` is in the same query. *
  /// That `field` comes first in the `order_by`.
  core.String? op;

  /// The property to filter by.
  PropertyReference? property;

  /// The value to compare the property to.
  Value? value;

  PropertyFilter({
    this.op,
    this.property,
    this.value,
  });

  PropertyFilter.fromJson(core.Map json_)
      : this(
          op: json_.containsKey('op') ? json_['op'] as core.String : null,
          property: json_.containsKey('property')
              ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          value: json_.containsKey('value')
              ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (op != null) 'op': op!,
        if (property != null) 'property': property!,
        if (value != null) 'value': value!,
      };
}

/// The desired order for a specific property.
class PropertyOrder {
  /// The direction to order by.
  ///
  /// Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String? direction;

  /// The property to order by.
  PropertyReference? property;

  PropertyOrder({
    this.direction,
    this.property,
  });

  PropertyOrder.fromJson(core.Map json_)
      : this(
          direction: json_.containsKey('direction')
              ? json_['direction'] as core.String
              : null,
          property: json_.containsKey('property')
              ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (direction != null) 'direction': direction!,
        if (property != null) 'property': property!,
      };
}

/// A reference to a property relative to the kind expressions.
class PropertyReference {
  /// The name of the property.
  ///
  /// If name includes "."s, it may be interpreted as a property name path.
  core.String? name;

  PropertyReference({
    this.name,
  });

  PropertyReference.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A query for entities.
class Query {
  /// The properties to make distinct.
  ///
  /// The query results will contain the first result for each distinct
  /// combination of values for the given properties (if empty, all results are
  /// returned).
  core.List<PropertyReference>? distinctOn;

  /// An ending point for the query results.
  ///
  /// Query cursors are returned in query result batches and
  /// [can only be used to limit the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String? endCursor;
  core.List<core.int> get endCursorAsBytes => convert.base64.decode(endCursor!);

  set endCursorAsBytes(core.List<core.int> bytes_) {
    endCursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The filter to apply.
  Filter? filter;

  /// The kinds to query (if empty, returns entities of all kinds).
  ///
  /// Currently at most 1 kind may be specified.
  core.List<KindExpression>? kind;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints. Optional. Unspecified is interpreted
  /// as no limit. Must be \>= 0 if specified.
  core.int? limit;

  /// The number of results to skip.
  ///
  /// Applies before limit, but after all other constraints. Optional. Must be
  /// \>= 0 if specified.
  core.int? offset;

  /// The order to apply to the query results (if empty, order is unspecified).
  core.List<PropertyOrder>? order;

  /// The projection to return.
  ///
  /// Defaults to returning all properties.
  core.List<Projection>? projection;

  /// A starting point for the query results.
  ///
  /// Query cursors are returned in query result batches and
  /// [can only be used to continue the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String? startCursor;
  core.List<core.int> get startCursorAsBytes =>
      convert.base64.decode(startCursor!);

  set startCursorAsBytes(core.List<core.int> bytes_) {
    startCursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Query({
    this.distinctOn,
    this.endCursor,
    this.filter,
    this.kind,
    this.limit,
    this.offset,
    this.order,
    this.projection,
    this.startCursor,
  });

  Query.fromJson(core.Map json_)
      : this(
          distinctOn: json_.containsKey('distinctOn')
              ? (json_['distinctOn'] as core.List)
                  .map((value) => PropertyReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          endCursor: json_.containsKey('endCursor')
              ? json_['endCursor'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind')
              ? (json_['kind'] as core.List)
                  .map((value) => KindExpression.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limit: json_.containsKey('limit') ? json_['limit'] as core.int : null,
          offset:
              json_.containsKey('offset') ? json_['offset'] as core.int : null,
          order: json_.containsKey('order')
              ? (json_['order'] as core.List)
                  .map((value) => PropertyOrder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          projection: json_.containsKey('projection')
              ? (json_['projection'] as core.List)
                  .map((value) => Projection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startCursor: json_.containsKey('startCursor')
              ? json_['startCursor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distinctOn != null) 'distinctOn': distinctOn!,
        if (endCursor != null) 'endCursor': endCursor!,
        if (filter != null) 'filter': filter!,
        if (kind != null) 'kind': kind!,
        if (limit != null) 'limit': limit!,
        if (offset != null) 'offset': offset!,
        if (order != null) 'order': order!,
        if (projection != null) 'projection': projection!,
        if (startCursor != null) 'startCursor': startCursor!,
      };
}

/// A batch of results produced by a query.
class QueryResultBatch {
  /// A cursor that points to the position after the last result in the batch.
  core.String? endCursor;
  core.List<core.int> get endCursorAsBytes => convert.base64.decode(endCursor!);

  set endCursorAsBytes(core.List<core.int> bytes_) {
    endCursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The result type for every entity in `entity_results`.
  /// Possible string values are:
  /// - "RESULT_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "FULL" : The key and properties.
  /// - "PROJECTION" : A projected subset of properties. The entity may have no
  /// key.
  /// - "KEY_ONLY" : Only the key.
  core.String? entityResultType;

  /// The results for this batch.
  core.List<EntityResult>? entityResults;

  /// The state of the query after the current batch.
  /// Possible string values are:
  /// - "MORE_RESULTS_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "NOT_FINISHED" : There may be additional batches to fetch from this
  /// query.
  /// - "MORE_RESULTS_AFTER_LIMIT" : The query is finished, but there may be
  /// more results after the limit.
  /// - "MORE_RESULTS_AFTER_CURSOR" : The query is finished, but there may be
  /// more results after the end cursor.
  /// - "NO_MORE_RESULTS" : The query is finished, and there are no more
  /// results.
  core.String? moreResults;

  /// Read timestamp this batch was returned from.
  ///
  /// This applies to the range of results from the query's `start_cursor` (or
  /// the beginning of the query if no cursor was given) to this batch's
  /// `end_cursor` (not the query's `end_cursor`). In a single transaction,
  /// subsequent query result batches for the same query can have a greater
  /// timestamp. Each batch's read timestamp is valid for all preceding batches.
  /// This value will not be set for eventually consistent queries in Cloud
  /// Datastore.
  core.String? readTime;

  /// A cursor that points to the position after the last skipped result.
  ///
  /// Will be set when `skipped_results` != 0.
  core.String? skippedCursor;
  core.List<core.int> get skippedCursorAsBytes =>
      convert.base64.decode(skippedCursor!);

  set skippedCursorAsBytes(core.List<core.int> bytes_) {
    skippedCursor =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The number of results skipped, typically because of an offset.
  core.int? skippedResults;

  /// The version number of the snapshot this batch was returned from.
  ///
  /// This applies to the range of results from the query's `start_cursor` (or
  /// the beginning of the query if no cursor was given) to this batch's
  /// `end_cursor` (not the query's `end_cursor`). In a single transaction,
  /// subsequent query result batches for the same query can have a greater
  /// snapshot version number. Each batch's snapshot version is valid for all
  /// preceding batches. The value will be zero for eventually consistent
  /// queries.
  core.String? snapshotVersion;

  QueryResultBatch({
    this.endCursor,
    this.entityResultType,
    this.entityResults,
    this.moreResults,
    this.readTime,
    this.skippedCursor,
    this.skippedResults,
    this.snapshotVersion,
  });

  QueryResultBatch.fromJson(core.Map json_)
      : this(
          endCursor: json_.containsKey('endCursor')
              ? json_['endCursor'] as core.String
              : null,
          entityResultType: json_.containsKey('entityResultType')
              ? json_['entityResultType'] as core.String
              : null,
          entityResults: json_.containsKey('entityResults')
              ? (json_['entityResults'] as core.List)
                  .map((value) => EntityResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          moreResults: json_.containsKey('moreResults')
              ? json_['moreResults'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          skippedCursor: json_.containsKey('skippedCursor')
              ? json_['skippedCursor'] as core.String
              : null,
          skippedResults: json_.containsKey('skippedResults')
              ? json_['skippedResults'] as core.int
              : null,
          snapshotVersion: json_.containsKey('snapshotVersion')
              ? json_['snapshotVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endCursor != null) 'endCursor': endCursor!,
        if (entityResultType != null) 'entityResultType': entityResultType!,
        if (entityResults != null) 'entityResults': entityResults!,
        if (moreResults != null) 'moreResults': moreResults!,
        if (readTime != null) 'readTime': readTime!,
        if (skippedCursor != null) 'skippedCursor': skippedCursor!,
        if (skippedResults != null) 'skippedResults': skippedResults!,
        if (snapshotVersion != null) 'snapshotVersion': snapshotVersion!,
      };
}

/// Options specific to read-only transactions.
class ReadOnly {
  /// Reads entities at the given time.
  ///
  /// This may not be older than 60 seconds.
  core.String? readTime;

  ReadOnly({
    this.readTime,
  });

  ReadOnly.fromJson(core.Map json_)
      : this(
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readTime != null) 'readTime': readTime!,
      };
}

/// The options shared by read requests.
class ReadOptions {
  /// The non-transactional read consistency to use.
  /// Possible string values are:
  /// - "READ_CONSISTENCY_UNSPECIFIED" : Unspecified. This value must not be
  /// used.
  /// - "STRONG" : Strong consistency.
  /// - "EVENTUAL" : Eventual consistency.
  core.String? readConsistency;

  /// Reads entities as they were at the given time.
  ///
  /// This may not be older than 270 seconds. This value is only supported for
  /// Cloud Firestore in Datastore mode.
  core.String? readTime;

  /// The identifier of the transaction in which to read.
  ///
  /// A transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  ReadOptions({
    this.readConsistency,
    this.readTime,
    this.transaction,
  });

  ReadOptions.fromJson(core.Map json_)
      : this(
          readConsistency: json_.containsKey('readConsistency')
              ? json_['readConsistency'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readConsistency != null) 'readConsistency': readConsistency!,
        if (readTime != null) 'readTime': readTime!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Options specific to read / write transactions.
class ReadWrite {
  /// The transaction identifier of the transaction being retried.
  core.String? previousTransaction;
  core.List<core.int> get previousTransactionAsBytes =>
      convert.base64.decode(previousTransaction!);

  set previousTransactionAsBytes(core.List<core.int> bytes_) {
    previousTransaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  ReadWrite({
    this.previousTransaction,
  });

  ReadWrite.fromJson(core.Map json_)
      : this(
          previousTransaction: json_.containsKey('previousTransaction')
              ? json_['previousTransaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (previousTransaction != null)
          'previousTransaction': previousTransaction!,
      };
}

/// The request for Datastore.ReserveIds.
class ReserveIdsRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// A list of keys with complete key paths whose numeric IDs should not be
  /// auto-allocated.
  ///
  /// Required.
  core.List<Key>? keys;

  ReserveIdsRequest({
    this.databaseId,
    this.keys,
  });

  ReserveIdsRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (keys != null) 'keys': keys!,
      };
}

/// The response for Datastore.ReserveIds.
typedef ReserveIdsResponse = $Empty;

/// The request for Datastore.Rollback.
class RollbackRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// The transaction identifier, returned by a call to
  /// Datastore.BeginTransaction.
  ///
  /// Required.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RollbackRequest({
    this.databaseId,
    this.transaction,
  });

  RollbackRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for Datastore.Rollback.
///
/// (an empty message).
typedef RollbackResponse = $Empty;

/// The request for Datastore.RunAggregationQuery.
class RunAggregationQueryRequest {
  /// The query to run.
  AggregationQuery? aggregationQuery;

  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// The GQL query to run.
  ///
  /// This query must be an aggregation query.
  GqlQuery? gqlQuery;

  /// Entities are partitioned into subsets, identified by a partition ID.
  ///
  /// Queries are scoped to a single partition. This partition ID is normalized
  /// with the standard default context partition ID.
  PartitionId? partitionId;

  /// The options for this query.
  ReadOptions? readOptions;

  RunAggregationQueryRequest({
    this.aggregationQuery,
    this.databaseId,
    this.gqlQuery,
    this.partitionId,
    this.readOptions,
  });

  RunAggregationQueryRequest.fromJson(core.Map json_)
      : this(
          aggregationQuery: json_.containsKey('aggregationQuery')
              ? AggregationQuery.fromJson(json_['aggregationQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          gqlQuery: json_.containsKey('gqlQuery')
              ? GqlQuery.fromJson(
                  json_['gqlQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          partitionId: json_.containsKey('partitionId')
              ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
          readOptions: json_.containsKey('readOptions')
              ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregationQuery != null) 'aggregationQuery': aggregationQuery!,
        if (databaseId != null) 'databaseId': databaseId!,
        if (gqlQuery != null) 'gqlQuery': gqlQuery!,
        if (partitionId != null) 'partitionId': partitionId!,
        if (readOptions != null) 'readOptions': readOptions!,
      };
}

/// The response for Datastore.RunAggregationQuery.
class RunAggregationQueryResponse {
  /// A batch of aggregation results.
  ///
  /// Always present.
  AggregationResultBatch? batch;

  /// The parsed form of the `GqlQuery` from the request, if it was set.
  AggregationQuery? query;

  RunAggregationQueryResponse({
    this.batch,
    this.query,
  });

  RunAggregationQueryResponse.fromJson(core.Map json_)
      : this(
          batch: json_.containsKey('batch')
              ? AggregationResultBatch.fromJson(
                  json_['batch'] as core.Map<core.String, core.dynamic>)
              : null,
          query: json_.containsKey('query')
              ? AggregationQuery.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batch != null) 'batch': batch!,
        if (query != null) 'query': query!,
      };
}

/// The request for Datastore.RunQuery.
class RunQueryRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// The GQL query to run.
  ///
  /// This query must be a non-aggregation query.
  GqlQuery? gqlQuery;

  /// Entities are partitioned into subsets, identified by a partition ID.
  ///
  /// Queries are scoped to a single partition. This partition ID is normalized
  /// with the standard default context partition ID.
  PartitionId? partitionId;

  /// The query to run.
  Query? query;

  /// The options for this query.
  ReadOptions? readOptions;

  RunQueryRequest({
    this.databaseId,
    this.gqlQuery,
    this.partitionId,
    this.query,
    this.readOptions,
  });

  RunQueryRequest.fromJson(core.Map json_)
      : this(
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          gqlQuery: json_.containsKey('gqlQuery')
              ? GqlQuery.fromJson(
                  json_['gqlQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          partitionId: json_.containsKey('partitionId')
              ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
          query: json_.containsKey('query')
              ? Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
          readOptions: json_.containsKey('readOptions')
              ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (gqlQuery != null) 'gqlQuery': gqlQuery!,
        if (partitionId != null) 'partitionId': partitionId!,
        if (query != null) 'query': query!,
        if (readOptions != null) 'readOptions': readOptions!,
      };
}

/// The response for Datastore.RunQuery.
class RunQueryResponse {
  /// A batch of query results (always present).
  QueryResultBatch? batch;

  /// The parsed form of the `GqlQuery` from the request, if it was set.
  Query? query;

  RunQueryResponse({
    this.batch,
    this.query,
  });

  RunQueryResponse.fromJson(core.Map json_)
      : this(
          batch: json_.containsKey('batch')
              ? QueryResultBatch.fromJson(
                  json_['batch'] as core.Map<core.String, core.dynamic>)
              : null,
          query: json_.containsKey('query')
              ? Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batch != null) 'batch': batch!,
        if (query != null) 'query': query!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Options for beginning a new transaction.
///
/// Transactions can be created explicitly with calls to
/// Datastore.BeginTransaction or implicitly by setting
/// ReadOptions.new_transaction in read requests.
class TransactionOptions {
  /// The transaction should only allow reads.
  ReadOnly? readOnly;

  /// The transaction should allow both reads and writes.
  ReadWrite? readWrite;

  TransactionOptions({
    this.readOnly,
    this.readWrite,
  });

  TransactionOptions.fromJson(core.Map json_)
      : this(
          readOnly: json_.containsKey('readOnly')
              ? ReadOnly.fromJson(
                  json_['readOnly'] as core.Map<core.String, core.dynamic>)
              : null,
          readWrite: json_.containsKey('readWrite')
              ? ReadWrite.fromJson(
                  json_['readWrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readOnly != null) 'readOnly': readOnly!,
        if (readWrite != null) 'readWrite': readWrite!,
      };
}

/// A message that can hold any of the supported value types and associated
/// metadata.
class Value {
  /// An array value.
  ///
  /// Cannot contain another array value. A `Value` instance that sets field
  /// `array_value` must not set fields `meaning` or `exclude_from_indexes`.
  ArrayValue? arrayValue;

  /// A blob value.
  ///
  /// May have at most 1,000,000 bytes. When `exclude_from_indexes` is false,
  /// may have at most 1500 bytes. In JSON requests, must be base64-encoded.
  core.String? blobValue;
  core.List<core.int> get blobValueAsBytes => convert.base64.decode(blobValue!);

  set blobValueAsBytes(core.List<core.int> bytes_) {
    blobValue =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A boolean value.
  core.bool? booleanValue;

  /// A double value.
  core.double? doubleValue;

  /// An entity value.
  ///
  /// - May have no key. - May have a key with an incomplete key path. - May
  /// have a reserved/read-only key.
  Entity? entityValue;

  /// If the value should be excluded from all indexes including those defined
  /// explicitly.
  core.bool? excludeFromIndexes;

  /// A geo point value representing a point on the surface of Earth.
  LatLng? geoPointValue;

  /// An integer value.
  core.String? integerValue;

  /// A key value.
  Key? keyValue;

  /// The `meaning` field should only be populated for backwards compatibility.
  core.int? meaning;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A UTF-8 encoded string value.
  ///
  /// When `exclude_from_indexes` is false (it is indexed) , may have at most
  /// 1500 bytes. Otherwise, may be set to at most 1,000,000 bytes.
  core.String? stringValue;

  /// A timestamp value.
  ///
  /// When stored in the Datastore, precise only to microseconds; any additional
  /// precision is rounded down.
  core.String? timestampValue;

  Value({
    this.arrayValue,
    this.blobValue,
    this.booleanValue,
    this.doubleValue,
    this.entityValue,
    this.excludeFromIndexes,
    this.geoPointValue,
    this.integerValue,
    this.keyValue,
    this.meaning,
    this.nullValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map json_)
      : this(
          arrayValue: json_.containsKey('arrayValue')
              ? ArrayValue.fromJson(
                  json_['arrayValue'] as core.Map<core.String, core.dynamic>)
              : null,
          blobValue: json_.containsKey('blobValue')
              ? json_['blobValue'] as core.String
              : null,
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          entityValue: json_.containsKey('entityValue')
              ? Entity.fromJson(
                  json_['entityValue'] as core.Map<core.String, core.dynamic>)
              : null,
          excludeFromIndexes: json_.containsKey('excludeFromIndexes')
              ? json_['excludeFromIndexes'] as core.bool
              : null,
          geoPointValue: json_.containsKey('geoPointValue')
              ? LatLng.fromJson(
                  json_['geoPointValue'] as core.Map<core.String, core.dynamic>)
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.String
              : null,
          keyValue: json_.containsKey('keyValue')
              ? Key.fromJson(
                  json_['keyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          meaning: json_.containsKey('meaning')
              ? json_['meaning'] as core.int
              : null,
          nullValue: json_.containsKey('nullValue') ? 'NULL_VALUE' : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? json_['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValue != null) 'arrayValue': arrayValue!,
        if (blobValue != null) 'blobValue': blobValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (entityValue != null) 'entityValue': entityValue!,
        if (excludeFromIndexes != null)
          'excludeFromIndexes': excludeFromIndexes!,
        if (geoPointValue != null) 'geoPointValue': geoPointValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (keyValue != null) 'keyValue': keyValue!,
        if (meaning != null) 'meaning': meaning!,
        if (nullValue != null) 'nullValue': nullValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}
