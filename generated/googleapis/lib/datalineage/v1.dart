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

/// Data Lineage API - v1
///
/// For more information, see <https://cloud.google.com/data-catalog>
///
/// Create an instance of [DatalineageApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProcessesResource]
///       - [ProjectsLocationsProcessesRunsResource]
///         - [ProjectsLocationsProcessesRunsLineageEventsResource]
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

class DatalineageApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatalineageApi(http.Client client,
      {core.String rootUrl = 'https://datalineage.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProcessesResource get processes =>
      ProjectsLocationsProcessesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve information about LineageProcesses associated with specific
  /// links.
  ///
  /// LineageProcesses are transformation pipelines that result in data flowing
  /// from **source** to **target** assets. Links between assets represent this
  /// operation. If you have specific link names, you can use this method to
  /// verify which LineageProcesses contribute to creating those links. See the
  /// SearchLinks method for more information on how to retrieve link name. You
  /// can retrieve the LineageProcess information in every project where you
  /// have the `datalineage.events.get` permission. The project provided in the
  /// URL is used for Billing and Quota.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location where you want to search.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse>
      batchSearchLinkProcesses(
    GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':batchSearchLinkProcesses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates new lineage events together with their parents: process and run.
  ///
  /// Updates the process and run if they already exist. Mapped from Open
  /// Lineage specification:
  /// https://github.com/OpenLineage/OpenLineage/blob/main/spec/OpenLineage.json.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project and its location that should
  /// own the process, run, and lineage event.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - A unique identifier for this request. Restricted to 36 ASCII
  /// characters. A random UUID is recommended. This request is idempotent only
  /// if a `request_id` is provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async
      .Future<GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse>
      processOpenLineageRunEvent(
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':processOpenLineageRunEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a list of links connected to a specific asset.
  ///
  /// Links represent the data flow between **source** (upstream) and **target**
  /// (downstream) assets in transformation pipelines. Links are stored in the
  /// same project as the Lineage Events that create them. You can retrieve
  /// links in every project where you have the `datalineage.events.get`
  /// permission. The project provided in the URL is used for Billing and Quota.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location you want search in.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1SearchLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1SearchLinksResponse> searchLinks(
    GoogleCloudDatacatalogLineageV1SearchLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':searchLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1SearchLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsProcessesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessesRunsResource get runs =>
      ProjectsLocationsProcessesRunsResource(_requester);

  ProjectsLocationsProcessesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project and its location that should
  /// own the process.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - A unique identifier for this request. Restricted to 36 ASCII
  /// characters. A random UUID is recommended. This request is idempotent only
  /// if a `request_id` is provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Process].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Process> create(
    GoogleCloudDatacatalogLineageV1Process request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1Process.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the process with the specified name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the process to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true and the process is not found, the request
  /// succeeds but the server doesn't perform any actions.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of the specified process.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the process to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Process].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Process> get(
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
    return GoogleCloudDatacatalogLineageV1Process.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List processes in the given project and location.
  ///
  /// List order is descending by insertion time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project and its location that owns
  /// this collection of processes.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processes to return. The service may
  /// return fewer than this value. If unspecified, at most 50 processes are
  /// returned. The maximum value is 100; values greater than 100 are cut to
  /// 100.
  ///
  /// [pageToken] - The page token received from a previous `ListProcesses`
  /// call. Specify it to get the next page. When paginating, all other
  /// parameters specified in this call must match the parameters of the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1ListProcessesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1ListProcessesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1ListProcessesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the lineage process. Format:
  /// `projects/{project}/locations/{location}/processes/{process}`. Can be
  /// specified or auto-assigned. {process} must be not longer than 200
  /// characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true and the process is not found, the request
  /// inserts it.
  ///
  /// [updateMask] - The list of fields to update. Currently not used. The whole
  /// message is updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Process].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Process> patch(
    GoogleCloudDatacatalogLineageV1Process request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1Process.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessesRunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessesRunsLineageEventsResource get lineageEvents =>
      ProjectsLocationsProcessesRunsLineageEventsResource(_requester);

  ProjectsLocationsProcessesRunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the process that should own the run.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+$`.
  ///
  /// [requestId] - A unique identifier for this request. Restricted to 36 ASCII
  /// characters. A random UUID is recommended. This request is idempotent only
  /// if a `request_id` is provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Run].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Run> create(
    GoogleCloudDatacatalogLineageV1Run request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/runs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1Run.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the run with the specified name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the run to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true and the run is not found, the request
  /// succeeds but the server doesn't perform any actions.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of the specified run.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the run to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Run].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Run> get(
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
    return GoogleCloudDatacatalogLineageV1Run.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists runs in the given project and location.
  ///
  /// List order is descending by `start_time`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of process that owns this collection of
  /// runs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of runs to return. The service may return
  /// fewer than this value. If unspecified, at most 50 runs are returned. The
  /// maximum value is 100; values greater than 100 are cut to 100.
  ///
  /// [pageToken] - The page token received from a previous `ListRuns` call.
  /// Specify it to get the next page. When paginating, all other parameters
  /// specified in this call must match the parameters of the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1ListRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1ListRunsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/runs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1ListRunsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the run. Format:
  /// `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
  /// Can be specified or auto-assigned. {run} must be not longer than 200
  /// characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true and the run is not found, the request
  /// creates it.
  ///
  /// [updateMask] - The list of fields to update. Currently not used. The whole
  /// message is updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1Run].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1Run> patch(
    GoogleCloudDatacatalogLineageV1Run request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1Run.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessesRunsLineageEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessesRunsLineageEventsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new lineage event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the run that should own the lineage
  /// event.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [requestId] - A unique identifier for this request. Restricted to 36 ASCII
  /// characters. A random UUID is recommended. This request is idempotent only
  /// if a `request_id` is provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1LineageEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1LineageEvent> create(
    GoogleCloudDatacatalogLineageV1LineageEvent request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lineageEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the lineage event with the specified name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the lineage event to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+/lineageEvents/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true and the lineage event is not found, the
  /// request succeeds but the server doesn't perform any actions.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a specified lineage event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the lineage event to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+/lineageEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogLineageV1LineageEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1LineageEvent> get(
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
    return GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists lineage events in the given project and location.
  ///
  /// The list order is not defined.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the run that owns the collection of
  /// lineage events to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processes/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of lineage events to return. The service
  /// may return fewer events than this value. If unspecified, at most 50 events
  /// are returned. The maximum value is 100; values greater than 100 are cut to
  /// 100.
  ///
  /// [pageToken] - The page token received from a previous `ListLineageEvents`
  /// call. Specify it to get the next page. When paginating, all other
  /// parameters specified in this call must match the parameters of the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDatacatalogLineageV1ListLineageEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogLineageV1ListLineageEventsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lineageEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogLineageV1ListLineageEventsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for BatchSearchLinkProcesses.
class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest {
  /// An array of links to check for their associated LineageProcesses.
  ///
  /// The maximum number of items in this array is 100. If the request contains
  /// more than 100 links, it returns the `INVALID_ARGUMENT` error. Format:
  /// `projects/{project}/locations/{location}/links/{link}`.
  ///
  /// Required.
  core.List<core.String>? links;

  /// The maximum number of processes to return in a single page of the
  /// response.
  ///
  /// A page may contain fewer results than this value.
  core.int? pageSize;

  /// The page token received from a previous `BatchSearchLinkProcesses` call.
  ///
  /// Use it to get the next page. When requesting subsequent pages of a
  /// response, remember that all parameters must match the values you provided
  /// in the original request.
  core.String? pageToken;

  GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest({
    this.links,
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest.fromJson(
      core.Map json_)
      : this(
          links: (json_['links'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          pageSize: json_['pageSize'] as core.int?,
          pageToken: json_['pageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (links != null) 'links': links!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Response message for BatchSearchLinkProcesses.
class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse {
  /// The token to specify as `page_token` in the subsequent call to get the
  /// next page.
  ///
  /// Omitted if there are no more pages in the response.
  core.String? nextPageToken;

  /// An array of processes associated with the specified links.
  core.List<GoogleCloudDatacatalogLineageV1ProcessLinks>? processLinks;

  GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse({
    this.nextPageToken,
    this.processLinks,
  });

  GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          processLinks: (json_['processLinks'] as core.List?)
              ?.map((value) =>
                  GoogleCloudDatacatalogLineageV1ProcessLinks.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processLinks != null) 'processLinks': processLinks!,
      };
}

/// The soft reference to everything you can attach a lineage event to.
class GoogleCloudDatacatalogLineageV1EntityReference {
  /// \[Fully Qualified Name
  /// (FQN)\](https://cloud.google.com/data-catalog/docs/fully-qualified-names)
  /// of the entity.
  ///
  /// Required.
  core.String? fullyQualifiedName;

  GoogleCloudDatacatalogLineageV1EntityReference({
    this.fullyQualifiedName,
  });

  GoogleCloudDatacatalogLineageV1EntityReference.fromJson(core.Map json_)
      : this(
          fullyQualifiedName: json_['fullyQualifiedName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullyQualifiedName != null)
          'fullyQualifiedName': fullyQualifiedName!,
      };
}

/// A lineage between source and target entities.
class GoogleCloudDatacatalogLineageV1EventLink {
  /// Reference to the source entity
  ///
  /// Required.
  GoogleCloudDatacatalogLineageV1EntityReference? source;

  /// Reference to the target entity
  ///
  /// Required.
  GoogleCloudDatacatalogLineageV1EntityReference? target;

  GoogleCloudDatacatalogLineageV1EventLink({
    this.source,
    this.target,
  });

  GoogleCloudDatacatalogLineageV1EventLink.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
      };
}

/// A lineage event represents an operation on assets.
///
/// Within the operation, the data flows from the source to the target defined
/// in the links field.
class GoogleCloudDatacatalogLineageV1LineageEvent {
  /// The end of the transformation which resulted in this lineage event.
  ///
  /// For streaming scenarios, it should be the end of the period from which the
  /// lineage is being reported.
  ///
  /// Optional.
  core.String? endTime;

  /// List of source-target pairs.
  ///
  /// Can't contain more than 100 tuples.
  ///
  /// Optional.
  core.List<GoogleCloudDatacatalogLineageV1EventLink>? links;

  /// The resource name of the lineage event.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`.
  /// Can be specified or auto-assigned. {lineage_event} must be not longer than
  /// 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  ///
  /// Immutable.
  core.String? name;

  /// The beginning of the transformation which resulted in this lineage event.
  ///
  /// For streaming scenarios, it should be the beginning of the period from
  /// which the lineage is being reported.
  ///
  /// Required.
  core.String? startTime;

  GoogleCloudDatacatalogLineageV1LineageEvent({
    this.endTime,
    this.links,
    this.name,
    this.startTime,
  });

  GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          links: (json_['links'] as core.List?)
              ?.map((value) =>
                  GoogleCloudDatacatalogLineageV1EventLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (links != null) 'links': links!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Links represent the data flow between **source** (upstream) and **target**
/// (downstream) assets in transformation pipelines.
///
/// Links are created when LineageEvents record data transformation between
/// related assets.
class GoogleCloudDatacatalogLineageV1Link {
  /// The end of the last event establishing this link.
  core.String? endTime;

  /// The name of the link.
  ///
  /// Format: `projects/{project}/locations/{location}/links/{link}`.
  ///
  /// Output only. Immutable.
  core.String? name;

  /// The pointer to the entity that is the **source** of this link.
  GoogleCloudDatacatalogLineageV1EntityReference? source;

  /// The start of the first event establishing this link.
  core.String? startTime;

  /// The pointer to the entity that is the **target** of this link.
  GoogleCloudDatacatalogLineageV1EntityReference? target;

  GoogleCloudDatacatalogLineageV1Link({
    this.endTime,
    this.name,
    this.source,
    this.startTime,
    this.target,
  });

  GoogleCloudDatacatalogLineageV1Link.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          source: json_.containsKey('source')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_['startTime'] as core.String?,
          target: json_.containsKey('target')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (source != null) 'source': source!,
        if (startTime != null) 'startTime': startTime!,
        if (target != null) 'target': target!,
      };
}

/// Response message for ListLineageEvents.
class GoogleCloudDatacatalogLineageV1ListLineageEventsResponse {
  /// Lineage events from the specified project and location.
  core.List<GoogleCloudDatacatalogLineageV1LineageEvent>? lineageEvents;

  /// The token to specify as `page_token` in the next call to get the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDatacatalogLineageV1ListLineageEventsResponse({
    this.lineageEvents,
    this.nextPageToken,
  });

  GoogleCloudDatacatalogLineageV1ListLineageEventsResponse.fromJson(
      core.Map json_)
      : this(
          lineageEvents: (json_['lineageEvents'] as core.List?)
              ?.map((value) =>
                  GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineageEvents != null) 'lineageEvents': lineageEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListProcesses.
class GoogleCloudDatacatalogLineageV1ListProcessesResponse {
  /// The token to specify as `page_token` in the next call to get the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The processes from the specified project and location.
  core.List<GoogleCloudDatacatalogLineageV1Process>? processes;

  GoogleCloudDatacatalogLineageV1ListProcessesResponse({
    this.nextPageToken,
    this.processes,
  });

  GoogleCloudDatacatalogLineageV1ListProcessesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          processes: (json_['processes'] as core.List?)
              ?.map((value) => GoogleCloudDatacatalogLineageV1Process.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processes != null) 'processes': processes!,
      };
}

/// Response message for ListRuns.
class GoogleCloudDatacatalogLineageV1ListRunsResponse {
  /// The token to specify as `page_token` in the next call to get the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The runs from the specified project and location.
  core.List<GoogleCloudDatacatalogLineageV1Run>? runs;

  GoogleCloudDatacatalogLineageV1ListRunsResponse({
    this.nextPageToken,
    this.runs,
  });

  GoogleCloudDatacatalogLineageV1ListRunsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          runs: (json_['runs'] as core.List?)
              ?.map((value) => GoogleCloudDatacatalogLineageV1Run.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (runs != null) 'runs': runs!,
      };
}

/// Origin of a process.
class GoogleCloudDatacatalogLineageV1Origin {
  /// If the source_type isn't CUSTOM, the value of this field should be a GCP
  /// resource name of the system, which reports lineage.
  ///
  /// The project and location parts of the resource name must match the project
  /// and location of the lineage resource being created. Examples: -
  /// `{source_type: COMPOSER, name:
  /// "projects/foo/locations/us/environments/bar"}` - `{source_type: BIGQUERY,
  /// name: "projects/foo/locations/eu"}` - `{source_type: CUSTOM, name:
  /// "myCustomIntegration"}`
  core.String? name;

  /// Type of the source.
  ///
  /// Use of a source_type other than `CUSTOM` for process creation or updating
  /// is highly discouraged, and may be restricted in the future without notice.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Source is Unspecified
  /// - "CUSTOM" : A custom source
  /// - "BIGQUERY" : BigQuery
  /// - "DATA_FUSION" : Data Fusion
  /// - "COMPOSER" : Composer
  /// - "LOOKER_STUDIO" : Looker Studio
  /// - "DATAPROC" : Dataproc
  core.String? sourceType;

  GoogleCloudDatacatalogLineageV1Origin({
    this.name,
    this.sourceType,
  });

  GoogleCloudDatacatalogLineageV1Origin.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          sourceType: json_['sourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// A process is the definition of a data transformation operation.
class GoogleCloudDatacatalogLineageV1Process {
  /// The attributes of the process.
  ///
  /// Should only be used for the purpose of non-semantic management
  /// (classifying, describing or labeling the process). Up to 100 attributes
  /// are allowed.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? attributes;

  /// A human-readable name you can set to display in a user interface.
  ///
  /// Must be not longer than 200 characters and only contain UTF-8 letters or
  /// numbers, spaces or characters like `_-:&.`
  ///
  /// Optional.
  core.String? displayName;

  /// The resource name of the lineage process.
  ///
  /// Format: `projects/{project}/locations/{location}/processes/{process}`. Can
  /// be specified or auto-assigned. {process} must be not longer than 200
  /// characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  ///
  /// Immutable.
  core.String? name;

  /// The origin of this process and its runs and lineage events.
  ///
  /// Optional.
  GoogleCloudDatacatalogLineageV1Origin? origin;

  GoogleCloudDatacatalogLineageV1Process({
    this.attributes,
    this.displayName,
    this.name,
    this.origin,
  });

  GoogleCloudDatacatalogLineageV1Process.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? json_['attributes'] as core.Map<core.String, core.dynamic>
              : null,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          origin: json_.containsKey('origin')
              ? GoogleCloudDatacatalogLineageV1Origin.fromJson(
                  json_['origin'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
      };
}

/// Link details.
class GoogleCloudDatacatalogLineageV1ProcessLinkInfo {
  /// The end of the last event establishing this link-process tuple.
  core.String? endTime;

  /// The name of the link in the format of
  /// `projects/{project}/locations/{location}/links/{link}`.
  core.String? link;

  /// The start of the first event establishing this link-process tuple.
  core.String? startTime;

  GoogleCloudDatacatalogLineageV1ProcessLinkInfo({
    this.endTime,
    this.link,
    this.startTime,
  });

  GoogleCloudDatacatalogLineageV1ProcessLinkInfo.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          link: json_['link'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (link != null) 'link': link!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Links associated with a specific process.
class GoogleCloudDatacatalogLineageV1ProcessLinks {
  /// An array containing link details objects of the links provided in the
  /// original request.
  ///
  /// A single process can result in creating multiple links. If any of the
  /// links you provide in the request are created by the same process, they all
  /// are included in this array.
  core.List<GoogleCloudDatacatalogLineageV1ProcessLinkInfo>? links;

  /// The process name in the format of
  /// `projects/{project}/locations/{location}/processes/{process}`.
  core.String? process;

  GoogleCloudDatacatalogLineageV1ProcessLinks({
    this.links,
    this.process,
  });

  GoogleCloudDatacatalogLineageV1ProcessLinks.fromJson(core.Map json_)
      : this(
          links: (json_['links'] as core.List?)
              ?.map((value) =>
                  GoogleCloudDatacatalogLineageV1ProcessLinkInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          process: json_['process'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (links != null) 'links': links!,
        if (process != null) 'process': process!,
      };
}

/// Response message for ProcessOpenLineageRunEvent.
class GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse {
  /// Created lineage event names.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`.
  core.List<core.String>? lineageEvents;

  /// Created process name.
  ///
  /// Format: `projects/{project}/locations/{location}/processes/{process}`.
  core.String? process;

  /// Created run name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
  core.String? run;

  GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse({
    this.lineageEvents,
    this.process,
    this.run,
  });

  GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse.fromJson(
      core.Map json_)
      : this(
          lineageEvents: (json_['lineageEvents'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          process: json_['process'] as core.String?,
          run: json_['run'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineageEvents != null) 'lineageEvents': lineageEvents!,
        if (process != null) 'process': process!,
        if (run != null) 'run': run!,
      };
}

/// A lineage run represents an execution of a process that creates lineage
/// events.
class GoogleCloudDatacatalogLineageV1Run {
  /// The attributes of the run.
  ///
  /// Should only be used for the purpose of non-semantic management
  /// (classifying, describing or labeling the run). Up to 100 attributes are
  /// allowed.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? attributes;

  /// A human-readable name you can set to display in a user interface.
  ///
  /// Must be not longer than 1024 characters and only contain UTF-8 letters or
  /// numbers, spaces or characters like `_-:&.`
  ///
  /// Optional.
  core.String? displayName;

  /// The timestamp of the end of the run.
  ///
  /// Optional.
  core.String? endTime;

  /// The resource name of the run.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
  /// Can be specified or auto-assigned. {run} must be not longer than 200
  /// characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  ///
  /// Immutable.
  core.String? name;

  /// The timestamp of the start of the run.
  ///
  /// Required.
  core.String? startTime;

  /// The state of the run.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : The state is unknown. The true state may be any of the below
  /// or a different state that is not supported here explicitly.
  /// - "STARTED" : The run is still executing.
  /// - "COMPLETED" : The run completed.
  /// - "FAILED" : The run failed.
  /// - "ABORTED" : The run aborted.
  core.String? state;

  GoogleCloudDatacatalogLineageV1Run({
    this.attributes,
    this.displayName,
    this.endTime,
    this.name,
    this.startTime,
    this.state,
  });

  GoogleCloudDatacatalogLineageV1Run.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? json_['attributes'] as core.Map<core.String, core.dynamic>
              : null,
          displayName: json_['displayName'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (displayName != null) 'displayName': displayName!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Request message for SearchLinks.
class GoogleCloudDatacatalogLineageV1SearchLinksRequest {
  /// The maximum number of links to return in a single page of the response.
  ///
  /// A page may contain fewer links than this value. If unspecified, at most 10
  /// links are returned. Maximum value is 100; values greater than 100 are
  /// reduced to 100.
  ///
  /// Optional.
  core.int? pageSize;

  /// The page token received from a previous `SearchLinksRequest` call.
  ///
  /// Use it to get the next page. When requesting subsequent pages of a
  /// response, remember that all parameters must match the values you provided
  /// in the original request.
  ///
  /// Optional.
  core.String? pageToken;

  /// Send asset information in the **source** field to retrieve all links that
  /// lead from the specified asset to downstream assets.
  ///
  /// Optional.
  GoogleCloudDatacatalogLineageV1EntityReference? source;

  /// Send asset information in the **target** field to retrieve all links that
  /// lead from upstream assets to the specified asset.
  ///
  /// Optional.
  GoogleCloudDatacatalogLineageV1EntityReference? target;

  GoogleCloudDatacatalogLineageV1SearchLinksRequest({
    this.pageSize,
    this.pageToken,
    this.source,
    this.target,
  });

  GoogleCloudDatacatalogLineageV1SearchLinksRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_['pageSize'] as core.int?,
          pageToken: json_['pageToken'] as core.String?,
          source: json_.containsKey('source')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
      };
}

/// Response message for SearchLinks.
class GoogleCloudDatacatalogLineageV1SearchLinksResponse {
  /// The list of links for a given asset.
  ///
  /// Can be empty if the asset has no relations of requested type (source or
  /// target).
  core.List<GoogleCloudDatacatalogLineageV1Link>? links;

  /// The token to specify as `page_token` in the subsequent call to get the
  /// next page.
  ///
  /// Omitted if there are no more pages in the response.
  core.String? nextPageToken;

  GoogleCloudDatacatalogLineageV1SearchLinksResponse({
    this.links,
    this.nextPageToken,
  });

  GoogleCloudDatacatalogLineageV1SearchLinksResponse.fromJson(core.Map json_)
      : this(
          links: (json_['links'] as core.List?)
              ?.map((value) => GoogleCloudDatacatalogLineageV1Link.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (links != null) 'links': links!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

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
          operations: (json_['operations'] as core.List?)
              ?.map((value) => GoogleLongrunningOperation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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
typedef GoogleRpcStatus = $Status;
