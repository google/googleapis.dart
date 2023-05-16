// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Workload Manager API - v1
///
/// For more information, see <https://cloud.google.com/workload-manager/docs>
///
/// Create an instance of [WorkloadManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEvaluationsResource]
///       - [ProjectsLocationsEvaluationsExecutionsResource]
///         - [ProjectsLocationsEvaluationsExecutionsResultsResource]
///         - [ProjectsLocationsEvaluationsExecutionsScannedResourcesResource]
///     - [ProjectsLocationsInsightsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRulesResource]
library;

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

class WorkloadManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  WorkloadManagerApi(http.Client client,
      {core.String rootUrl = 'https://workloadmanager.googleapis.com/',
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

  ProjectsLocationsEvaluationsResource get evaluations =>
      ProjectsLocationsEvaluationsResource(_requester);
  ProjectsLocationsInsightsResource get insights =>
      ProjectsLocationsInsightsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRulesResource get rules =>
      ProjectsLocationsRulesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Location> get(
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
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
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
  async.Future<ListLocationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResource get executions =>
      ProjectsLocationsEvaluationsExecutionsResource(_requester);

  ProjectsLocationsEvaluationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Evaluation in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the evaluation location using
  /// the form: `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [evaluationId] - Required. Id of the requesting object
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    Evaluation request,
    core.String parent, {
    core.String? evaluationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (evaluationId != null) 'evaluationId': [evaluationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Evaluation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Evaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Evaluation> get(
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
    return Evaluation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Evaluations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListEvaluationsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEvaluationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEvaluationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEvaluationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResultsResource get results =>
      ProjectsLocationsEvaluationsExecutionsResultsResource(_requester);
  ProjectsLocationsEvaluationsExecutionsScannedResourcesResource
      get scannedResources =>
          ProjectsLocationsEvaluationsExecutionsScannedResourcesResource(
              _requester);

  ProjectsLocationsEvaluationsExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(
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
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Executions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the Execution using the form:
  /// 'projects/{project}/locations/{location}/evaluations/{evaluation}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Execution in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Execution using the form:
  /// 'projects/{project}/locations/{location}/evaluations/{evaluation}/executions/{execution}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
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
  async.Future<Operation> run(
    RunEvaluationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/executions:run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEvaluationsExecutionsResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResultsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List the running result of a single Execution.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The execution results. Format: {parent}/evaluations /
  /// * /executions / * /results
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionResultsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/results';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionResultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEvaluationsExecutionsScannedResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsScannedResourcesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all scanned resources for a single Execution.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. parent for ListScannedResourcesRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [rule] - rule name
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScannedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScannedResourcesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? rule,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (rule != null) 'rule': [rule],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scannedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScannedResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInsightsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsResource(commons.ApiRequester client)
      : _requester = client;

  /// Write the data insights to workload manager data warehouse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The GCP location. The format is:
  /// projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteInsightResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteInsightResponse> writeInsight(
    WriteInsightRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$location') + '/insights:writeInsight';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteInsightResponse.fromJson(
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
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
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists rules in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The \[project\] on which to execute the request. The
  /// format is: projects/{project_id}/locations/{location} Currently, the
  /// pre-defined rules are global available to all projects and all regions
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter based on primary_category, secondary_category
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRulesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message describing Evaluation object
class Evaluation {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the Evaluation
  core.String? description;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// name of resource names have the form
  /// 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  core.String? name;

  /// annotations as key value pairs
  ResourceFilter? resourceFilter;

  /// The updated rule ids if exist.
  ///
  /// Output only.
  ResourceStatus? resourceStatus;

  /// the name of the rule
  core.List<core.String>? ruleNames;

  /// The updated rule ids if exist.
  ///
  /// Output only.
  core.List<core.String>? ruleVersions;

  /// crontab format schedule for scheduled evaluation, example: 0  * / 3 * * *
  core.String? schedule;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Evaluation({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.resourceFilter,
    this.resourceStatus,
    this.ruleNames,
    this.ruleVersions,
    this.schedule,
    this.updateTime,
  });

  Evaluation.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceFilter: json_.containsKey('resourceFilter')
              ? ResourceFilter.fromJson(json_['resourceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceStatus: json_.containsKey('resourceStatus')
              ? ResourceStatus.fromJson(json_['resourceStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ruleNames: json_.containsKey('ruleNames')
              ? (json_['ruleNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ruleVersions: json_.containsKey('ruleVersions')
              ? (json_['ruleVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          schedule: json_.containsKey('schedule')
              ? json_['schedule'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceFilter != null) 'resourceFilter': resourceFilter!,
        if (resourceStatus != null) 'resourceStatus': resourceStatus!,
        if (ruleNames != null) 'ruleNames': ruleNames!,
        if (ruleVersions != null) 'ruleVersions': ruleVersions!,
        if (schedule != null) 'schedule': schedule!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message describing Execution object
class Execution {
  /// End time stamp
  ///
  /// Output only.
  core.String? endTime;

  /// Evaluation ID
  ///
  /// Output only.
  core.String? evaluationId;

  /// Inventory time stamp
  ///
  /// Output only.
  core.String? inventoryTime;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// The name of execution resource.
  ///
  /// The format is
  /// projects/{project}/locations/{location}/evaluations/{evaluation}/executions/{execution}
  core.String? name;

  /// type represent whether the execution executed directly by user or
  /// scheduled according evaluation.schedule field.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : type of execution is unspecified
  /// - "ONE_TIME" : type of execution is one time
  /// - "SCHEDULED" : type of execution is scheduled
  core.String? runType;

  /// Start time stamp
  ///
  /// Output only.
  core.String? startTime;

  /// State
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : state of execution is unspecified
  /// - "RUNNING" : the execution is running in backend service
  /// - "SUCCEEDED" : the execution run success
  /// - "FAILED" : the execution run failed
  core.String? state;

  Execution({
    this.endTime,
    this.evaluationId,
    this.inventoryTime,
    this.labels,
    this.name,
    this.runType,
    this.startTime,
    this.state,
  });

  Execution.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          evaluationId: json_.containsKey('evaluationId')
              ? json_['evaluationId'] as core.String
              : null,
          inventoryTime: json_.containsKey('inventoryTime')
              ? json_['inventoryTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          runType: json_.containsKey('runType')
              ? json_['runType'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (evaluationId != null) 'evaluationId': evaluationId!,
        if (inventoryTime != null) 'inventoryTime': inventoryTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (runType != null) 'runType': runType!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Message describing the result of an execution
class ExecutionResult {
  /// the document url of the rule
  core.String? documentationUrl;

  /// the violate resource
  Resource? resource;

  /// the rule which violate in execution
  core.String? rule;

  /// severity of violation
  core.String? severity;

  /// the details of violation in result
  ViolationDetails? violationDetails;

  /// the violation message of an execution
  core.String? violationMessage;

  ExecutionResult({
    this.documentationUrl,
    this.resource,
    this.rule,
    this.severity,
    this.violationDetails,
    this.violationMessage,
  });

  ExecutionResult.fromJson(core.Map json_)
      : this(
          documentationUrl: json_.containsKey('documentationUrl')
              ? json_['documentationUrl'] as core.String
              : null,
          resource: json_.containsKey('resource')
              ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          rule: json_.containsKey('rule') ? json_['rule'] as core.String : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          violationDetails: json_.containsKey('violationDetails')
              ? ViolationDetails.fromJson(json_['violationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          violationMessage: json_.containsKey('violationMessage')
              ? json_['violationMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentationUrl != null) 'documentationUrl': documentationUrl!,
        if (resource != null) 'resource': resource!,
        if (rule != null) 'rule': rule!,
        if (severity != null) 'severity': severity!,
        if (violationDetails != null) 'violationDetails': violationDetails!,
        if (violationMessage != null) 'violationMessage': violationMessage!,
      };
}

/// Message describing compute engine instance filter
class GceInstanceFilter {
  /// Service account of compute engine
  core.List<core.String>? serviceAccounts;

  GceInstanceFilter({
    this.serviceAccounts,
  });

  GceInstanceFilter.fromJson(core.Map json_)
      : this(
          serviceAccounts: json_.containsKey('serviceAccounts')
              ? (json_['serviceAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccounts != null) 'serviceAccounts': serviceAccounts!,
      };
}

/// A presentation of host resource usage where the workload runs.
class Insight {
  /// The insights data for sap system discovery.
  ///
  /// This is a copy of SAP System proto and should get updated whenever that
  /// one changes.
  SapDiscovery? sapDiscovery;

  /// The insights data for the sap workload validation.
  SapValidation? sapValidation;

  /// Create time stamp
  ///
  /// Output only.
  core.String? sentTime;

  /// The insights data for the sqlserver workload validation.
  SqlserverValidation? sqlserverValidation;

  Insight({
    this.sapDiscovery,
    this.sapValidation,
    this.sentTime,
    this.sqlserverValidation,
  });

  Insight.fromJson(core.Map json_)
      : this(
          sapDiscovery: json_.containsKey('sapDiscovery')
              ? SapDiscovery.fromJson(
                  json_['sapDiscovery'] as core.Map<core.String, core.dynamic>)
              : null,
          sapValidation: json_.containsKey('sapValidation')
              ? SapValidation.fromJson(
                  json_['sapValidation'] as core.Map<core.String, core.dynamic>)
              : null,
          sentTime: json_.containsKey('sentTime')
              ? json_['sentTime'] as core.String
              : null,
          sqlserverValidation: json_.containsKey('sqlserverValidation')
              ? SqlserverValidation.fromJson(json_['sqlserverValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sapDiscovery != null) 'sapDiscovery': sapDiscovery!,
        if (sapValidation != null) 'sapValidation': sapValidation!,
        if (sentTime != null) 'sentTime': sentTime!,
        if (sqlserverValidation != null)
          'sqlserverValidation': sqlserverValidation!,
      };
}

/// Message for response to listing Evaluations
class ListEvaluationsResponse {
  /// The list of Evaluation
  core.List<Evaluation>? evaluations;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEvaluationsResponse({
    this.evaluations,
    this.nextPageToken,
    this.unreachable,
  });

  ListEvaluationsResponse.fromJson(core.Map json_)
      : this(
          evaluations: json_.containsKey('evaluations')
              ? (json_['evaluations'] as core.List)
                  .map((value) => Evaluation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluations != null) 'evaluations': evaluations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response of list execution results
class ListExecutionResultsResponse {
  /// The versions from the specified publisher.
  core.List<ExecutionResult>? executionResults;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListExecutionResultsResponse({
    this.executionResults,
    this.nextPageToken,
  });

  ListExecutionResultsResponse.fromJson(core.Map json_)
      : this(
          executionResults: json_.containsKey('executionResults')
              ? (json_['executionResults'] as core.List)
                  .map((value) => ExecutionResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionResults != null) 'executionResults': executionResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Message for response to listing Executions
class ListExecutionsResponse {
  /// The list of Execution
  core.List<Execution>? executions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
    this.unreachable,
  });

  ListExecutionsResponse.fromJson(core.Map json_)
      : this(
          executions: json_.containsKey('executions')
              ? (json_['executions'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executions != null) 'executions': executions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Mesesage of response of list rules
class ListRulesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// all rules in response
  core.List<Rule>? rules;

  ListRulesResponse({
    this.nextPageToken,
    this.rules,
  });

  ListRulesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rules != null) 'rules': rules!,
      };
}

/// Message for response to list scanned resources
class ListScannedResourcesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// All scanned resources in response
  core.List<ScannedResource>? scannedResources;

  ListScannedResourcesResponse({
    this.nextPageToken,
    this.scannedResources,
  });

  ListScannedResourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scannedResources: json_.containsKey('scannedResources')
              ? (json_['scannedResources'] as core.List)
                  .map((value) => ScannedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scannedResources != null) 'scannedResources': scannedResources!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
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

/// Message represent resource in execution result
class Resource {
  /// the name of the resource
  core.String? name;

  /// the service account accosiate with resource
  core.String? serviceAccount;

  /// the type of reresource
  core.String? type;

  Resource({
    this.name,
    this.serviceAccount,
    this.type,
  });

  Resource.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (type != null) 'type': type!,
      };
}

/// Message describing resource filters
class ResourceFilter {
  /// Filter compute engine resource
  GceInstanceFilter? gceInstanceFilter;

  /// The label used for filter resource
  core.Map<core.String, core.String>? inclusionLabels;

  /// The id pattern for filter resource
  core.List<core.String>? resourceIdPatterns;

  /// The scopes of evaluation resource
  core.List<core.String>? scopes;

  ResourceFilter({
    this.gceInstanceFilter,
    this.inclusionLabels,
    this.resourceIdPatterns,
    this.scopes,
  });

  ResourceFilter.fromJson(core.Map json_)
      : this(
          gceInstanceFilter: json_.containsKey('gceInstanceFilter')
              ? GceInstanceFilter.fromJson(json_['gceInstanceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inclusionLabels: json_.containsKey('inclusionLabels')
              ? (json_['inclusionLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceIdPatterns: json_.containsKey('resourceIdPatterns')
              ? (json_['resourceIdPatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gceInstanceFilter != null) 'gceInstanceFilter': gceInstanceFilter!,
        if (inclusionLabels != null) 'inclusionLabels': inclusionLabels!,
        if (resourceIdPatterns != null)
          'resourceIdPatterns': resourceIdPatterns!,
        if (scopes != null) 'scopes': scopes!,
      };
}

/// Message describing resource status
class ResourceStatus {
  /// the new version of rule id if exists
  core.List<core.String>? rulesNewerVersions;

  /// State of the resource
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state has not been populated in this message.
  /// - "CREATING" : Resource has an active Create operation.
  /// - "ACTIVE" : Resource has no outstanding operations on it or has active
  /// Update operations.
  /// - "DELETING" : Resource has an active Delete operation.
  core.String? state;

  ResourceStatus({
    this.rulesNewerVersions,
    this.state,
  });

  ResourceStatus.fromJson(core.Map json_)
      : this(
          rulesNewerVersions: json_.containsKey('rulesNewerVersions')
              ? (json_['rulesNewerVersions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rulesNewerVersions != null)
          'rulesNewerVersions': rulesNewerVersions!,
        if (state != null) 'state': state!,
      };
}

/// Message represent a rule
class Rule {
  /// descrite rule in plain language
  core.String? description;

  /// the name display in UI
  core.String? displayName;

  /// the message template for rule
  core.String? errorMessage;

  /// rule name
  core.String? name;

  /// the primary category
  core.String? primaryCategory;

  /// the remediation for the rule
  core.String? remediation;

  /// the version of the rule
  ///
  /// Output only.
  core.String? revisionId;

  /// the secondary category
  core.String? secondaryCategory;

  /// the severity of the rule
  core.String? severity;

  /// the docuement url for the rule
  core.String? uri;

  Rule({
    this.description,
    this.displayName,
    this.errorMessage,
    this.name,
    this.primaryCategory,
    this.remediation,
    this.revisionId,
    this.secondaryCategory,
    this.severity,
    this.uri,
  });

  Rule.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryCategory: json_.containsKey('primaryCategory')
              ? json_['primaryCategory'] as core.String
              : null,
          remediation: json_.containsKey('remediation')
              ? json_['remediation'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          secondaryCategory: json_.containsKey('secondaryCategory')
              ? json_['secondaryCategory'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (name != null) 'name': name!,
        if (primaryCategory != null) 'primaryCategory': primaryCategory!,
        if (remediation != null) 'remediation': remediation!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (secondaryCategory != null) 'secondaryCategory': secondaryCategory!,
        if (severity != null) 'severity': severity!,
        if (uri != null) 'uri': uri!,
      };
}

/// Message for creating a Execution
class RunEvaluationRequest {
  /// The resource being created
  ///
  /// Required.
  Execution? execution;

  /// Id of the requesting object If auto-generating Id server-side, remove this
  /// field and execution_id from the method_signature of Create RPC
  ///
  /// Required.
  core.String? executionId;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  RunEvaluationRequest({
    this.execution,
    this.executionId,
    this.requestId,
  });

  RunEvaluationRequest.fromJson(core.Map json_)
      : this(
          execution: json_.containsKey('execution')
              ? Execution.fromJson(
                  json_['execution'] as core.Map<core.String, core.dynamic>)
              : null,
          executionId: json_.containsKey('executionId')
              ? json_['executionId'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (execution != null) 'execution': execution!,
        if (executionId != null) 'executionId': executionId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The schema of SAP system discovery data.
class SapDiscovery {
  /// An SAP system may run without an application layer.
  SapDiscoveryComponent? applicationLayer;

  /// An SAP System must have a database.
  SapDiscoveryComponent? databaseLayer;

  /// The metadata for SAP system discovery data.
  SapDiscoveryMetadata? metadata;

  /// A combination of database SID, database instance URI and tenant DB name to
  /// make a unique identifier per-system.
  core.String? systemId;

  /// Unix timestamp this system has been updated last.
  core.String? updateTime;

  SapDiscovery({
    this.applicationLayer,
    this.databaseLayer,
    this.metadata,
    this.systemId,
    this.updateTime,
  });

  SapDiscovery.fromJson(core.Map json_)
      : this(
          applicationLayer: json_.containsKey('applicationLayer')
              ? SapDiscoveryComponent.fromJson(json_['applicationLayer']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databaseLayer: json_.containsKey('databaseLayer')
              ? SapDiscoveryComponent.fromJson(
                  json_['databaseLayer'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? SapDiscoveryMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          systemId: json_.containsKey('systemId')
              ? json_['systemId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationLayer != null) 'applicationLayer': applicationLayer!,
        if (databaseLayer != null) 'databaseLayer': databaseLayer!,
        if (metadata != null) 'metadata': metadata!,
        if (systemId != null) 'systemId': systemId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Message describing the system component.
class SapDiscoveryComponent {
  /// The component is a SAP application.
  core.String? applicationType;

  /// The component is a SAP database.
  core.String? databaseType;

  /// Pantheon Project in which the resources reside.
  core.String? hostProject;

  /// The resources in a component.
  core.List<SapDiscoveryResource>? resources;

  /// The sap identifier, used by the SAP software and helps differentiate
  /// systems for customers.
  core.String? sid;

  SapDiscoveryComponent({
    this.applicationType,
    this.databaseType,
    this.hostProject,
    this.resources,
    this.sid,
  });

  SapDiscoveryComponent.fromJson(core.Map json_)
      : this(
          applicationType: json_.containsKey('applicationType')
              ? json_['applicationType'] as core.String
              : null,
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          hostProject: json_.containsKey('hostProject')
              ? json_['hostProject'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => SapDiscoveryResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sid: json_.containsKey('sid') ? json_['sid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationType != null) 'applicationType': applicationType!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (hostProject != null) 'hostProject': hostProject!,
        if (resources != null) 'resources': resources!,
        if (sid != null) 'sid': sid!,
      };
}

/// Message describing SAP discovery system metadata
class SapDiscoveryMetadata {
  /// Customer region string for customer's use.
  ///
  /// Does not represent GCP region.
  core.String? customerRegion;

  /// Customer defined, something like "E-commerce pre prod"
  core.String? definedSystem;

  /// Should be "prod", "QA", "dev", "staging", etc.
  core.String? environmentType;

  /// This sap product name
  core.String? sapProduct;

  SapDiscoveryMetadata({
    this.customerRegion,
    this.definedSystem,
    this.environmentType,
    this.sapProduct,
  });

  SapDiscoveryMetadata.fromJson(core.Map json_)
      : this(
          customerRegion: json_.containsKey('customerRegion')
              ? json_['customerRegion'] as core.String
              : null,
          definedSystem: json_.containsKey('definedSystem')
              ? json_['definedSystem'] as core.String
              : null,
          environmentType: json_.containsKey('environmentType')
              ? json_['environmentType'] as core.String
              : null,
          sapProduct: json_.containsKey('sapProduct')
              ? json_['sapProduct'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerRegion != null) 'customerRegion': customerRegion!,
        if (definedSystem != null) 'definedSystem': definedSystem!,
        if (environmentType != null) 'environmentType': environmentType!,
        if (sapProduct != null) 'sapProduct': sapProduct!,
      };
}

/// Message describing a resource.
class SapDiscoveryResource {
  /// A list of resource URIs related to this resource.
  core.List<core.String>? relatedResources;

  /// ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
  core.String? resourceKind;

  /// The type of this resource.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Undefined resource type.
  /// - "COMPUTE" : This is a compute resource.
  /// - "STORAGE" : This a storage resource.
  /// - "NETWORK" : This is a network resource.
  core.String? resourceType;

  /// URI of the resource, includes project, location, and name.
  core.String? resourceUri;

  /// Unix timestamp of when this resource last had its discovery data updated.
  core.String? updateTime;

  SapDiscoveryResource({
    this.relatedResources,
    this.resourceKind,
    this.resourceType,
    this.resourceUri,
    this.updateTime,
  });

  SapDiscoveryResource.fromJson(core.Map json_)
      : this(
          relatedResources: json_.containsKey('relatedResources')
              ? (json_['relatedResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          resourceKind: json_.containsKey('resourceKind')
              ? json_['resourceKind'] as core.String
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relatedResources != null) 'relatedResources': relatedResources!,
        if (resourceKind != null) 'resourceKind': resourceKind!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A presentation of SAP workload insight.
///
/// The schema of SAP workloads validation related data.
class SapValidation {
  /// A list of SAP validation metrics data.
  core.List<SapValidationValidationDetail>? validationDetails;

  SapValidation({
    this.validationDetails,
  });

  SapValidation.fromJson(core.Map json_)
      : this(
          validationDetails: json_.containsKey('validationDetails')
              ? (json_['validationDetails'] as core.List)
                  .map((value) => SapValidationValidationDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (validationDetails != null) 'validationDetails': validationDetails!,
      };
}

/// Message describing the SAP validation metrics.
class SapValidationValidationDetail {
  /// The pairs of metrics data: field name & field value.
  core.Map<core.String, core.String>? details;

  /// The SAP system that the validation data is from.
  /// Possible string values are:
  /// - "SAP_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SYSTEM" : The SAP system named SYSTEM.
  /// - "COROSYNC" : The SAP system named COROSYNC.
  /// - "PACEMAKER" : The SAP system named PACEMAKER.
  /// - "HANA" : The SAP system named HANA.
  /// - "NETWEAVER" : The SAP system named NETWEAVER.
  core.String? sapValidationType;

  SapValidationValidationDetail({
    this.details,
    this.sapValidationType,
  });

  SapValidationValidationDetail.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          sapValidationType: json_.containsKey('sapValidationType')
              ? json_['sapValidationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (sapValidationType != null) 'sapValidationType': sapValidationType!,
      };
}

/// Message of scanned resource
class ScannedResource {
  /// resource name
  core.String? resource;

  ScannedResource({
    this.resource,
  });

  ScannedResource.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// A presentation of SQLServer workload insight.
///
/// The schema of SqlServer workloads validation related data.
class SqlserverValidation {
  /// The agent version collected this data point
  core.String? agentVersion;

  /// A list of SqlServer validation metrics data.
  core.List<SqlserverValidationValidationDetail>? validationDetails;

  SqlserverValidation({
    this.agentVersion,
    this.validationDetails,
  });

  SqlserverValidation.fromJson(core.Map json_)
      : this(
          agentVersion: json_.containsKey('agentVersion')
              ? json_['agentVersion'] as core.String
              : null,
          validationDetails: json_.containsKey('validationDetails')
              ? (json_['validationDetails'] as core.List)
                  .map((value) => SqlserverValidationValidationDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (validationDetails != null) 'validationDetails': validationDetails!,
      };
}

/// Message describing the Sqlserver validation metrics.
class SqlserverValidationValidationDetail {
  /// The pairs of metrics data: field name & field value.
  core.Map<core.String, core.String>? details;

  /// The instance id where the ValidationDetail is generated from
  core.String? instanceId;

  /// The Sqlserver system that the validation data is from.
  /// Possible string values are:
  /// - "SQLSERVER_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "OS" : The Sqlserver system named OS
  /// - "DB" : The Sqlserver system named DB
  core.String? type;

  SqlserverValidationValidationDetail({
    this.details,
    this.instanceId,
    this.type,
  });

  SqlserverValidationValidationDetail.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (type != null) 'type': type!,
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

/// Message describing the violdation in execution result
class ViolationDetails {
  /// the name of asset
  core.String? asset;

  /// observed
  core.Map<core.String, core.String>? observed;

  /// the service account associate with resource
  core.String? serviceAccount;

  ViolationDetails({
    this.asset,
    this.observed,
    this.serviceAccount,
  });

  ViolationDetails.fromJson(core.Map json_)
      : this(
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
          observed: json_.containsKey('observed')
              ? (json_['observed'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (observed != null) 'observed': observed!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Request for sending the data insights.
class WriteInsightRequest {
  /// The metrics data details.
  ///
  /// Required.
  Insight? insight;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  WriteInsightRequest({
    this.insight,
    this.requestId,
  });

  WriteInsightRequest.fromJson(core.Map json_)
      : this(
          insight: json_.containsKey('insight')
              ? Insight.fromJson(
                  json_['insight'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insight != null) 'insight': insight!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The response for write insights request.
typedef WriteInsightResponse = $Empty;
