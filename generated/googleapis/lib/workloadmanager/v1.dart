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

/// Workload Manager API - v1
///
/// Workload Manager is a service that provides tooling for enterprise workloads
/// to automate the deployment and validation of your workloads against best
/// practices and recommendations.
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

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Workload Manager is a service that provides tooling for enterprise workloads
/// to automate the deployment and validation of your workloads against best
/// practices and recommendations.
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

  /// Deletes a single Evaluation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [force] - Optional. Followed the best practice from
  /// https://aip.dev/135#cascading-delete
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
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
  /// [filter] - Filter to be applied when listing the evaluation results.
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

  /// Deletes a single Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

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

  /// Lists the result of a single evaluation.
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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
  /// [customRulesBucket] - The Cloud Storage bucket name for custom rules.
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
    core.String? customRulesBucket,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customRulesBucket != null) 'customRulesBucket': [customRulesBucket],
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

/// * An AgentCommand specifies a one-time executable program for the agent to
/// run.
class AgentCommand {
  /// command is the name of the agent one-time executable that will be invoked.
  core.String? command;

  /// parameters is a map of key/value pairs that can be used to specify
  /// additional one-time executable settings.
  core.Map<core.String, core.String>? parameters;

  AgentCommand({
    this.command,
    this.parameters,
  });

  AgentCommand.fromJson(core.Map json_)
      : this(
          command: json_['command'] as core.String?,
          parameters:
              (json_['parameters'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Message describing big query destination
class BigQueryDestination {
  /// determine if results will be saved in a new table
  ///
  /// Optional.
  core.bool? createNewResultsTable;

  /// destination dataset to save evaluation results
  ///
  /// Optional.
  core.String? destinationDataset;

  BigQueryDestination({
    this.createNewResultsTable,
    this.destinationDataset,
  });

  BigQueryDestination.fromJson(core.Map json_)
      : this(
          createNewResultsTable: json_['createNewResultsTable'] as core.bool?,
          destinationDataset: json_['destinationDataset'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createNewResultsTable != null)
          'createNewResultsTable': createNewResultsTable!,
        if (destinationDataset != null)
          'destinationDataset': destinationDataset!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// * Command specifies the type of command to execute.
class Command {
  /// AgentCommand specifies a one-time executable program for the agent to run.
  AgentCommand? agentCommand;

  /// ShellCommand is invoked via the agent's command line executor.
  ShellCommand? shellCommand;

  Command({
    this.agentCommand,
    this.shellCommand,
  });

  Command.fromJson(core.Map json_)
      : this(
          agentCommand: json_.containsKey('agentCommand')
              ? AgentCommand.fromJson(
                  json_['agentCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          shellCommand: json_.containsKey('shellCommand')
              ? ShellCommand.fromJson(
                  json_['shellCommand'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentCommand != null) 'agentCommand': agentCommand!,
        if (shellCommand != null) 'shellCommand': shellCommand!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// LINT.IfChange Message describing Evaluation object
class Evaluation {
  /// BigQuery destination
  ///
  /// Optional.
  BigQueryDestination? bigQueryDestination;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// The Cloud Storage bucket name for custom rules.
  core.String? customRulesBucket;

  /// Description of the Evaluation
  core.String? description;

  /// Evaluation type
  /// Possible string values are:
  /// - "EVALUATION_TYPE_UNSPECIFIED" : Not specified
  /// - "SAP" : SAP best practices
  /// - "SQL_SERVER" : SQL best practices
  /// - "OTHER" : Customized best practices
  /// - "SCC_IAC" : SCC IaC (Infra as Code) best practices
  core.String? evaluationType;

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

  /// crontab format schedule for scheduled evaluation, currently only support
  /// the following schedule: "0 * / 1 * * *", "0 * / 6 * * *", "0 * / 12 * *
  /// *", "0 0 * / 1 * *", "0 0 * / 7 * *",
  core.String? schedule;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Evaluation({
    this.bigQueryDestination,
    this.createTime,
    this.customRulesBucket,
    this.description,
    this.evaluationType,
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
          bigQueryDestination: json_.containsKey('bigQueryDestination')
              ? BigQueryDestination.fromJson(json_['bigQueryDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          customRulesBucket: json_['customRulesBucket'] as core.String?,
          description: json_['description'] as core.String?,
          evaluationType: json_['evaluationType'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          resourceFilter: json_.containsKey('resourceFilter')
              ? ResourceFilter.fromJson(json_['resourceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceStatus: json_.containsKey('resourceStatus')
              ? ResourceStatus.fromJson(json_['resourceStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ruleNames: (json_['ruleNames'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          ruleVersions: (json_['ruleVersions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          schedule: json_['schedule'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryDestination != null)
          'bigQueryDestination': bigQueryDestination!,
        if (createTime != null) 'createTime': createTime!,
        if (customRulesBucket != null) 'customRulesBucket': customRulesBucket!,
        if (description != null) 'description': description!,
        if (evaluationType != null) 'evaluationType': evaluationType!,
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

  /// External data sources
  ///
  /// Optional.
  core.List<ExternalDataSources>? externalDataSources;

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

  /// Additional information generated by the execution
  ///
  /// Output only.
  core.List<Notice>? notices;

  /// Result summary
  ///
  /// Output only.
  Summary? resultSummary;

  /// execution result summary per rule
  ///
  /// Output only.
  core.List<RuleExecutionResult>? ruleResults;

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
    this.externalDataSources,
    this.inventoryTime,
    this.labels,
    this.name,
    this.notices,
    this.resultSummary,
    this.ruleResults,
    this.runType,
    this.startTime,
    this.state,
  });

  Execution.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          evaluationId: json_['evaluationId'] as core.String?,
          externalDataSources: (json_['externalDataSources'] as core.List?)
              ?.map((value) => ExternalDataSources.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          inventoryTime: json_['inventoryTime'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          notices: (json_['notices'] as core.List?)
              ?.map((value) =>
                  Notice.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          resultSummary: json_.containsKey('resultSummary')
              ? Summary.fromJson(
                  json_['resultSummary'] as core.Map<core.String, core.dynamic>)
              : null,
          ruleResults: (json_['ruleResults'] as core.List?)
              ?.map((value) => RuleExecutionResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          runType: json_['runType'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (evaluationId != null) 'evaluationId': evaluationId!,
        if (externalDataSources != null)
          'externalDataSources': externalDataSources!,
        if (inventoryTime != null) 'inventoryTime': inventoryTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notices != null) 'notices': notices!,
        if (resultSummary != null) 'resultSummary': resultSummary!,
        if (ruleResults != null) 'ruleResults': ruleResults!,
        if (runType != null) 'runType': runType!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Message describing the result of an execution
class ExecutionResult {
  /// The commands to remediate the violation.
  core.List<Command>? commands;

  /// The URL for the documentation of the rule.
  core.String? documentationUrl;

  /// The resource that violates the rule.
  Resource? resource;

  /// The rule that is violated in an evaluation.
  core.String? rule;

  /// The severity of violation.
  core.String? severity;

  /// Execution result type of the scanned resource
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown state
  /// - "TYPE_PASSED" : resource successfully passed the rule
  /// - "TYPE_VIOLATED" : resource violated the rule
  core.String? type;

  /// The details of violation in an evaluation result.
  ViolationDetails? violationDetails;

  /// The violation message of an execution.
  core.String? violationMessage;

  ExecutionResult({
    this.commands,
    this.documentationUrl,
    this.resource,
    this.rule,
    this.severity,
    this.type,
    this.violationDetails,
    this.violationMessage,
  });

  ExecutionResult.fromJson(core.Map json_)
      : this(
          commands: (json_['commands'] as core.List?)
              ?.map((value) => Command.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          documentationUrl: json_['documentationUrl'] as core.String?,
          resource: json_.containsKey('resource')
              ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          rule: json_['rule'] as core.String?,
          severity: json_['severity'] as core.String?,
          type: json_['type'] as core.String?,
          violationDetails: json_.containsKey('violationDetails')
              ? ViolationDetails.fromJson(json_['violationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          violationMessage: json_['violationMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commands != null) 'commands': commands!,
        if (documentationUrl != null) 'documentationUrl': documentationUrl!,
        if (resource != null) 'resource': resource!,
        if (rule != null) 'rule': rule!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
        if (violationDetails != null) 'violationDetails': violationDetails!,
        if (violationMessage != null) 'violationMessage': violationMessage!,
      };
}

/// Message for external data sources
class ExternalDataSources {
  /// The asset type of the external data source this can be one of
  /// go/cai-asset-types to override the default asset type or it can be a
  /// custom type defined by the user custom type must match the asset type in
  /// the rule
  ///
  /// Required.
  core.String? assetType;

  /// Name of external data source.
  ///
  /// The name will be used inside the rego/sql to refer the external data
  ///
  /// Optional.
  core.String? name;

  /// Type of external data source
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown type
  /// - "BIG_QUERY_TABLE" : BigQuery table
  core.String? type;

  /// URI of external data source.
  ///
  /// example of bq table {project_ID}.{dataset_ID}.{table_ID}
  ///
  /// Required.
  core.String? uri;

  ExternalDataSources({
    this.assetType,
    this.name,
    this.type,
    this.uri,
  });

  ExternalDataSources.fromJson(core.Map json_)
      : this(
          assetType: json_['assetType'] as core.String?,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetType != null) 'assetType': assetType!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (uri != null) 'uri': uri!,
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
          serviceAccounts: (json_['serviceAccounts'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccounts != null) 'serviceAccounts': serviceAccounts!,
      };
}

/// A presentation of host resource usage where the workload runs.
class Insight {
  /// The instance id where the insight is generated from
  ///
  /// Required.
  core.String? instanceId;

  /// The insights data for SAP system discovery.
  ///
  /// This is a copy of SAP System proto and should get updated whenever that
  /// one changes.
  SapDiscovery? sapDiscovery;

  /// The insights data for the SAP workload validation.
  SapValidation? sapValidation;

  /// Create time stamp
  ///
  /// Output only.
  core.String? sentTime;

  /// The insights data for the sqlserver workload validation.
  SqlserverValidation? sqlserverValidation;

  /// The insights data for workload validation of torso workloads.
  TorsoValidation? torsoValidation;

  Insight({
    this.instanceId,
    this.sapDiscovery,
    this.sapValidation,
    this.sentTime,
    this.sqlserverValidation,
    this.torsoValidation,
  });

  Insight.fromJson(core.Map json_)
      : this(
          instanceId: json_['instanceId'] as core.String?,
          sapDiscovery: json_.containsKey('sapDiscovery')
              ? SapDiscovery.fromJson(
                  json_['sapDiscovery'] as core.Map<core.String, core.dynamic>)
              : null,
          sapValidation: json_.containsKey('sapValidation')
              ? SapValidation.fromJson(
                  json_['sapValidation'] as core.Map<core.String, core.dynamic>)
              : null,
          sentTime: json_['sentTime'] as core.String?,
          sqlserverValidation: json_.containsKey('sqlserverValidation')
              ? SqlserverValidation.fromJson(json_['sqlserverValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          torsoValidation: json_.containsKey('torsoValidation')
              ? TorsoValidation.fromJson(json_['torsoValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
        if (sapDiscovery != null) 'sapDiscovery': sapDiscovery!,
        if (sapValidation != null) 'sapValidation': sapValidation!,
        if (sentTime != null) 'sentTime': sentTime!,
        if (sqlserverValidation != null)
          'sqlserverValidation': sqlserverValidation!,
        if (torsoValidation != null) 'torsoValidation': torsoValidation!,
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
          evaluations: (json_['evaluations'] as core.List?)
              ?.map((value) => Evaluation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
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
          executionResults: (json_['executionResults'] as core.List?)
              ?.map((value) => ExecutionResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
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
          executions: (json_['executions'] as core.List?)
              ?.map((value) => Execution.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
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
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          rules: (json_['rules'] as core.List?)
              ?.map((value) =>
                  Rule.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          scannedResources: (json_['scannedResources'] as core.List?)
              ?.map((value) => ScannedResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scannedResources != null) 'scannedResources': scannedResources!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message for additional information generated by the execution
class Notice {
  /// Message of the notice
  ///
  /// Output only.
  core.String? message;

  Notice({
    this.message,
  });

  Notice.fromJson(core.Map json_)
      : this(
          message: json_['message'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
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

/// Message represent resource in execution result
class Resource {
  /// The name of the resource.
  core.String? name;

  /// The service account associated with the resource.
  core.String? serviceAccount;

  /// The type of resource.
  core.String? type;

  Resource({
    this.name,
    this.serviceAccount,
    this.type,
  });

  Resource.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          type: json_['type'] as core.String?,
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
          inclusionLabels:
              (json_['inclusionLabels'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          resourceIdPatterns: (json_['resourceIdPatterns'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          scopes: (json_['scopes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
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
  /// Historical: Used before 2023-05-22 the new version of rule id if exists
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
          rulesNewerVersions: (json_['rulesNewerVersions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          state: json_['state'] as core.String?,
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

  /// List of user-defined tags
  core.List<core.String>? tags;

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
    this.tags,
    this.uri,
  });

  Rule.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          errorMessage: json_['errorMessage'] as core.String?,
          name: json_['name'] as core.String?,
          primaryCategory: json_['primaryCategory'] as core.String?,
          remediation: json_['remediation'] as core.String?,
          revisionId: json_['revisionId'] as core.String?,
          secondaryCategory: json_['secondaryCategory'] as core.String?,
          severity: json_['severity'] as core.String?,
          tags: (json_['tags'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          uri: json_['uri'] as core.String?,
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
        if (tags != null) 'tags': tags!,
        if (uri != null) 'uri': uri!,
      };
}

/// Message for execution result summary per rule
class RuleExecutionResult {
  /// Execution message, if any
  core.String? message;

  /// Number of violations
  core.String? resultCount;

  /// rule name
  core.String? rule;

  /// Number of total scanned resources
  core.String? scannedResourceCount;

  /// The execution status
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown state
  /// - "STATE_SUCCESS" : execution completed successfully
  /// - "STATE_FAILURE" : execution completed with failures
  /// - "STATE_SKIPPED" : execution was not executed
  core.String? state;

  RuleExecutionResult({
    this.message,
    this.resultCount,
    this.rule,
    this.scannedResourceCount,
    this.state,
  });

  RuleExecutionResult.fromJson(core.Map json_)
      : this(
          message: json_['message'] as core.String?,
          resultCount: json_['resultCount'] as core.String?,
          rule: json_['rule'] as core.String?,
          scannedResourceCount: json_['scannedResourceCount'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (resultCount != null) 'resultCount': resultCount!,
        if (rule != null) 'rule': rule!,
        if (scannedResourceCount != null)
          'scannedResourceCount': scannedResourceCount!,
        if (state != null) 'state': state!,
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
          executionId: json_['executionId'] as core.String?,
          requestId: json_['requestId'] as core.String?,
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
  ///
  /// Optional.
  SapDiscoveryComponent? applicationLayer;

  /// An SAP System must have a database.
  ///
  /// Required.
  SapDiscoveryComponent? databaseLayer;

  /// The metadata for SAP system discovery data.
  ///
  /// Optional.
  SapDiscoveryMetadata? metadata;

  /// The GCP project number that this SapSystem belongs to.
  ///
  /// Optional.
  core.String? projectNumber;

  /// A combination of database SID, database instance URI and tenant DB name to
  /// make a unique identifier per-system.
  ///
  /// Output only.
  core.String? systemId;

  /// Unix timestamp this system has been updated last.
  ///
  /// Required.
  core.String? updateTime;

  /// The properties of the workload.
  ///
  /// Optional.
  SapDiscoveryWorkloadProperties? workloadProperties;

  SapDiscovery({
    this.applicationLayer,
    this.databaseLayer,
    this.metadata,
    this.projectNumber,
    this.systemId,
    this.updateTime,
    this.workloadProperties,
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
          projectNumber: json_['projectNumber'] as core.String?,
          systemId: json_['systemId'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          workloadProperties: json_.containsKey('workloadProperties')
              ? SapDiscoveryWorkloadProperties.fromJson(
                  json_['workloadProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationLayer != null) 'applicationLayer': applicationLayer!,
        if (databaseLayer != null) 'databaseLayer': databaseLayer!,
        if (metadata != null) 'metadata': metadata!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (systemId != null) 'systemId': systemId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workloadProperties != null)
          'workloadProperties': workloadProperties!,
      };
}

/// Message describing the system component.
class SapDiscoveryComponent {
  /// The component is a SAP application.
  ///
  /// Optional.
  SapDiscoveryComponentApplicationProperties? applicationProperties;

  /// The component is a SAP database.
  ///
  /// Optional.
  SapDiscoveryComponentDatabaseProperties? databaseProperties;

  /// A list of host URIs that are part of the HA configuration if present.
  ///
  /// An empty list indicates the component is not configured for HA.
  ///
  /// Optional.
  core.List<core.String>? haHosts;

  /// Pantheon Project in which the resources reside.
  ///
  /// Required.
  core.String? hostProject;

  /// A list of replication sites used in Disaster Recovery (DR) configurations.
  ///
  /// Optional.
  core.List<SapDiscoveryComponent>? replicationSites;

  /// The resources in a component.
  ///
  /// Optional.
  core.List<SapDiscoveryResource>? resources;

  /// The SAP identifier, used by the SAP software and helps differentiate
  /// systems for customers.
  ///
  /// Optional.
  core.String? sid;

  /// The detected topology of the component.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TOPOLOGY_TYPE_UNSPECIFIED" : Unspecified topology.
  /// - "TOPOLOGY_SCALE_UP" : A scale-up single node system.
  /// - "TOPOLOGY_SCALE_OUT" : A scale-out multi-node system.
  core.String? topologyType;

  SapDiscoveryComponent({
    this.applicationProperties,
    this.databaseProperties,
    this.haHosts,
    this.hostProject,
    this.replicationSites,
    this.resources,
    this.sid,
    this.topologyType,
  });

  SapDiscoveryComponent.fromJson(core.Map json_)
      : this(
          applicationProperties: json_.containsKey('applicationProperties')
              ? SapDiscoveryComponentApplicationProperties.fromJson(
                  json_['applicationProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          databaseProperties: json_.containsKey('databaseProperties')
              ? SapDiscoveryComponentDatabaseProperties.fromJson(
                  json_['databaseProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          haHosts: (json_['haHosts'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          hostProject: json_['hostProject'] as core.String?,
          replicationSites: (json_['replicationSites'] as core.List?)
              ?.map((value) => SapDiscoveryComponent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          resources: (json_['resources'] as core.List?)
              ?.map((value) => SapDiscoveryResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          sid: json_['sid'] as core.String?,
          topologyType: json_['topologyType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationProperties != null)
          'applicationProperties': applicationProperties!,
        if (databaseProperties != null)
          'databaseProperties': databaseProperties!,
        if (haHosts != null) 'haHosts': haHosts!,
        if (hostProject != null) 'hostProject': hostProject!,
        if (replicationSites != null) 'replicationSites': replicationSites!,
        if (resources != null) 'resources': resources!,
        if (sid != null) 'sid': sid!,
        if (topologyType != null) 'topologyType': topologyType!,
      };
}

/// A set of properties describing an SAP Application layer.
class SapDiscoveryComponentApplicationProperties {
  /// Deprecated: ApplicationType now tells you whether this is ABAP or Java.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? abap;

  /// Instance number of the SAP application instance.
  ///
  /// Optional.
  core.String? appInstanceNumber;

  /// Type of the application.
  ///
  /// Netweaver, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "APPLICATION_TYPE_UNSPECIFIED" : Unspecified application type
  /// - "NETWEAVER" : SAP Netweaver
  /// - "NETWEAVER_ABAP" : SAP Netweaver ABAP
  /// - "NETWEAVER_JAVA" : SAP Netweaver Java
  core.String? applicationType;

  /// Instance number of the ASCS instance.
  ///
  /// Optional.
  core.String? ascsInstanceNumber;

  /// Resource URI of the recognized ASCS host of the application.
  ///
  /// Optional.
  core.String? ascsUri;

  /// Instance number of the ERS instance.
  ///
  /// Optional.
  core.String? ersInstanceNumber;

  /// Kernel version for Netweaver running in the system.
  ///
  /// Optional.
  core.String? kernelVersion;

  /// Resource URI of the recognized shared NFS of the application.
  ///
  /// May be empty if the application server has only a single node.
  ///
  /// Optional.
  core.String? nfsUri;

  SapDiscoveryComponentApplicationProperties({
    this.abap,
    this.appInstanceNumber,
    this.applicationType,
    this.ascsInstanceNumber,
    this.ascsUri,
    this.ersInstanceNumber,
    this.kernelVersion,
    this.nfsUri,
  });

  SapDiscoveryComponentApplicationProperties.fromJson(core.Map json_)
      : this(
          abap: json_['abap'] as core.bool?,
          appInstanceNumber: json_['appInstanceNumber'] as core.String?,
          applicationType: json_['applicationType'] as core.String?,
          ascsInstanceNumber: json_['ascsInstanceNumber'] as core.String?,
          ascsUri: json_['ascsUri'] as core.String?,
          ersInstanceNumber: json_['ersInstanceNumber'] as core.String?,
          kernelVersion: json_['kernelVersion'] as core.String?,
          nfsUri: json_['nfsUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abap != null) 'abap': abap!,
        if (appInstanceNumber != null) 'appInstanceNumber': appInstanceNumber!,
        if (applicationType != null) 'applicationType': applicationType!,
        if (ascsInstanceNumber != null)
          'ascsInstanceNumber': ascsInstanceNumber!,
        if (ascsUri != null) 'ascsUri': ascsUri!,
        if (ersInstanceNumber != null) 'ersInstanceNumber': ersInstanceNumber!,
        if (kernelVersion != null) 'kernelVersion': kernelVersion!,
        if (nfsUri != null) 'nfsUri': nfsUri!,
      };
}

/// A set of properties describing an SAP Database layer.
class SapDiscoveryComponentDatabaseProperties {
  /// SID of the system database.
  ///
  /// Optional.
  core.String? databaseSid;

  /// Type of the database.
  ///
  /// HANA, DB2, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Unspecified database type.
  /// - "HANA" : SAP HANA
  /// - "MAX_DB" : SAP MAX_DB
  /// - "DB2" : IBM DB2
  core.String? databaseType;

  /// The version of the database software running in the system.
  ///
  /// Optional.
  core.String? databaseVersion;

  /// Instance number of the SAP instance.
  ///
  /// Optional.
  core.String? instanceNumber;

  /// URI of the recognized primary instance of the database.
  ///
  /// Required.
  core.String? primaryInstanceUri;

  /// URI of the recognized shared NFS of the database.
  ///
  /// May be empty if the database has only a single node.
  ///
  /// Optional.
  core.String? sharedNfsUri;

  SapDiscoveryComponentDatabaseProperties({
    this.databaseSid,
    this.databaseType,
    this.databaseVersion,
    this.instanceNumber,
    this.primaryInstanceUri,
    this.sharedNfsUri,
  });

  SapDiscoveryComponentDatabaseProperties.fromJson(core.Map json_)
      : this(
          databaseSid: json_['databaseSid'] as core.String?,
          databaseType: json_['databaseType'] as core.String?,
          databaseVersion: json_['databaseVersion'] as core.String?,
          instanceNumber: json_['instanceNumber'] as core.String?,
          primaryInstanceUri: json_['primaryInstanceUri'] as core.String?,
          sharedNfsUri: json_['sharedNfsUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseSid != null) 'databaseSid': databaseSid!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (instanceNumber != null) 'instanceNumber': instanceNumber!,
        if (primaryInstanceUri != null)
          'primaryInstanceUri': primaryInstanceUri!,
        if (sharedNfsUri != null) 'sharedNfsUri': sharedNfsUri!,
      };
}

/// Message describing SAP discovery system metadata
class SapDiscoveryMetadata {
  /// Customer region string for customer's use.
  ///
  /// Does not represent GCP region.
  ///
  /// Optional.
  core.String? customerRegion;

  /// Customer defined, something like "E-commerce pre prod"
  ///
  /// Optional.
  core.String? definedSystem;

  /// Should be "prod", "QA", "dev", "staging", etc.
  ///
  /// Optional.
  core.String? environmentType;

  /// This SAP product name
  ///
  /// Optional.
  core.String? sapProduct;

  SapDiscoveryMetadata({
    this.customerRegion,
    this.definedSystem,
    this.environmentType,
    this.sapProduct,
  });

  SapDiscoveryMetadata.fromJson(core.Map json_)
      : this(
          customerRegion: json_['customerRegion'] as core.String?,
          definedSystem: json_['definedSystem'] as core.String?,
          environmentType: json_['environmentType'] as core.String?,
          sapProduct: json_['sapProduct'] as core.String?,
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
  /// A set of properties only applying to instance type resources.
  ///
  /// Optional.
  SapDiscoveryResourceInstanceProperties? instanceProperties;

  /// A list of resource URIs related to this resource.
  ///
  /// Optional.
  core.List<core.String>? relatedResources;

  /// ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOURCE_KIND_UNSPECIFIED" : Unspecified resource kind.
  /// - "RESOURCE_KIND_INSTANCE" : This is a compute instance.
  /// - "RESOURCE_KIND_DISK" : This is a compute disk.
  /// - "RESOURCE_KIND_ADDRESS" : This is a compute address.
  /// - "RESOURCE_KIND_FILESTORE" : This is a filestore instance.
  /// - "RESOURCE_KIND_HEALTH_CHECK" : This is a compute health check.
  /// - "RESOURCE_KIND_FORWARDING_RULE" : This is a compute forwarding rule.
  /// - "RESOURCE_KIND_BACKEND_SERVICE" : This is a compute backend service.
  /// - "RESOURCE_KIND_SUBNETWORK" : This is a compute subnetwork.
  /// - "RESOURCE_KIND_NETWORK" : This is a compute network.
  /// - "RESOURCE_KIND_PUBLIC_ADDRESS" : This is a public accessible IP Address.
  /// - "RESOURCE_KIND_INSTANCE_GROUP" : This is a compute instance group.
  core.String? resourceKind;

  /// The type of this resource.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Undefined resource type.
  /// - "RESOURCE_TYPE_COMPUTE" : This is a compute resource.
  /// - "RESOURCE_TYPE_STORAGE" : This a storage resource.
  /// - "RESOURCE_TYPE_NETWORK" : This is a network resource.
  core.String? resourceType;

  /// URI of the resource, includes project, location, and name.
  ///
  /// Required.
  core.String? resourceUri;

  /// Unix timestamp of when this resource last had its discovery data updated.
  ///
  /// Required.
  core.String? updateTime;

  SapDiscoveryResource({
    this.instanceProperties,
    this.relatedResources,
    this.resourceKind,
    this.resourceType,
    this.resourceUri,
    this.updateTime,
  });

  SapDiscoveryResource.fromJson(core.Map json_)
      : this(
          instanceProperties: json_.containsKey('instanceProperties')
              ? SapDiscoveryResourceInstanceProperties.fromJson(
                  json_['instanceProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          relatedResources: (json_['relatedResources'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          resourceKind: json_['resourceKind'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
          resourceUri: json_['resourceUri'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceProperties != null)
          'instanceProperties': instanceProperties!,
        if (relatedResources != null) 'relatedResources': relatedResources!,
        if (resourceKind != null) 'resourceKind': resourceKind!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A set of properties only present for an instance type resource
class SapDiscoveryResourceInstanceProperties {
  /// App server instances on the host
  ///
  /// Optional.
  core.List<SapDiscoveryResourceInstancePropertiesAppInstance>? appInstances;

  /// A list of instance URIs that are part of a cluster with this one.
  ///
  /// Optional.
  core.List<core.String>? clusterInstances;

  /// The VM's instance number.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceNumber;

  /// Bitmask of instance role, a resource may have multiple roles at once.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INSTANCE_ROLE_UNSPECIFIED" : Unspecified instance role.
  /// - "INSTANCE_ROLE_ASCS" : Application central services.
  /// - "INSTANCE_ROLE_ERS" : Enqueue replication server.
  /// - "INSTANCE_ROLE_APP_SERVER" : Application server.
  /// - "INSTANCE_ROLE_DATABASE" : Database node.
  /// - "INSTANCE_ROLE_ASCS_ERS" : Combinations of roles. Application central
  /// services and enqueue replication server.
  /// - "INSTANCE_ROLE_ASCS_APP_SERVER" : Application central services and
  /// application server.
  /// - "INSTANCE_ROLE_ASCS_DATABASE" : Application central services and
  /// database.
  /// - "INSTANCE_ROLE_ERS_APP_SERVER" : Enqueue replication server and
  /// application server.
  /// - "INSTANCE_ROLE_ERS_DATABASE" : Enqueue replication server and database.
  /// - "INSTANCE_ROLE_APP_SERVER_DATABASE" : Application server and database.
  /// - "INSTANCE_ROLE_ASCS_ERS_APP_SERVER" : Application central services,
  /// enqueue replication server and application server.
  /// - "INSTANCE_ROLE_ASCS_ERS_DATABASE" : Application central services,
  /// enqueue replication server and database.
  /// - "INSTANCE_ROLE_ASCS_APP_SERVER_DATABASE" : Application central services,
  /// application server and database.
  /// - "INSTANCE_ROLE_ERS_APP_SERVER_DATABASE" : Enqueue replication server,
  /// application server and database.
  /// - "INSTANCE_ROLE_ASCS_ERS_APP_SERVER_DATABASE" : Application central
  /// services, enqueue replication server, application server and database.
  core.String? instanceRole;

  /// Instance is part of a DR site.
  ///
  /// Optional.
  core.bool? isDrSite;

  /// A virtual hostname of the instance if it has one.
  ///
  /// Optional.
  core.String? virtualHostname;

  SapDiscoveryResourceInstanceProperties({
    this.appInstances,
    this.clusterInstances,
    this.instanceNumber,
    this.instanceRole,
    this.isDrSite,
    this.virtualHostname,
  });

  SapDiscoveryResourceInstanceProperties.fromJson(core.Map json_)
      : this(
          appInstances: (json_['appInstances'] as core.List?)
              ?.map((value) =>
                  SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          clusterInstances: (json_['clusterInstances'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          instanceNumber: json_['instanceNumber'] as core.String?,
          instanceRole: json_['instanceRole'] as core.String?,
          isDrSite: json_['isDrSite'] as core.bool?,
          virtualHostname: json_['virtualHostname'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInstances != null) 'appInstances': appInstances!,
        if (clusterInstances != null) 'clusterInstances': clusterInstances!,
        if (instanceNumber != null) 'instanceNumber': instanceNumber!,
        if (instanceRole != null) 'instanceRole': instanceRole!,
        if (isDrSite != null) 'isDrSite': isDrSite!,
        if (virtualHostname != null) 'virtualHostname': virtualHostname!,
      };
}

/// Fields to describe an SAP application server instance.
class SapDiscoveryResourceInstancePropertiesAppInstance {
  /// Instance name of the SAP application instance.
  ///
  /// Optional.
  core.String? name;

  /// Instance number of the SAP application instance.
  ///
  /// Optional.
  core.String? number;

  SapDiscoveryResourceInstancePropertiesAppInstance({
    this.name,
    this.number,
  });

  SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          number: json_['number'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
      };
}

/// A set of properties describing an SAP workload.
class SapDiscoveryWorkloadProperties {
  /// List of SAP Products and their versions running on the system.
  ///
  /// Optional.
  core.List<SapDiscoveryWorkloadPropertiesProductVersion>? productVersions;

  /// A list of SAP software components and their versions running on the
  /// system.
  ///
  /// Optional.
  core.List<SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>?
      softwareComponentVersions;

  SapDiscoveryWorkloadProperties({
    this.productVersions,
    this.softwareComponentVersions,
  });

  SapDiscoveryWorkloadProperties.fromJson(core.Map json_)
      : this(
          productVersions: (json_['productVersions'] as core.List?)
              ?.map((value) =>
                  SapDiscoveryWorkloadPropertiesProductVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          softwareComponentVersions: (json_['softwareComponentVersions']
                  as core.List?)
              ?.map((value) =>
                  SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (productVersions != null) 'productVersions': productVersions!,
        if (softwareComponentVersions != null)
          'softwareComponentVersions': softwareComponentVersions!,
      };
}

/// A product name and version.
class SapDiscoveryWorkloadPropertiesProductVersion {
  /// Name of the product.
  ///
  /// Optional.
  core.String? name;

  /// Version of the product.
  ///
  /// Optional.
  core.String? version;

  SapDiscoveryWorkloadPropertiesProductVersion({
    this.name,
    this.version,
  });

  SapDiscoveryWorkloadPropertiesProductVersion.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// A SAP software component name, version, and type.
class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties {
  /// The component's minor version.
  ///
  /// Optional.
  core.String? extVersion;

  /// Name of the component.
  ///
  /// Optional.
  core.String? name;

  /// The component's type.
  ///
  /// Optional.
  core.String? type;

  /// The component's major version.
  ///
  /// Optional.
  core.String? version;

  SapDiscoveryWorkloadPropertiesSoftwareComponentProperties({
    this.extVersion,
    this.name,
    this.type,
    this.version,
  });

  SapDiscoveryWorkloadPropertiesSoftwareComponentProperties.fromJson(
      core.Map json_)
      : this(
          extVersion: json_['extVersion'] as core.String?,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extVersion != null) 'extVersion': extVersion!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (version != null) 'version': version!,
      };
}

/// A presentation of SAP workload insight.
///
/// The schema of SAP workloads validation related data.
class SapValidation {
  /// The project_id of the cloud project that the Insight data comes from.
  ///
  /// Required.
  core.String? projectId;

  /// A list of SAP validation metrics data.
  ///
  /// Optional.
  core.List<SapValidationValidationDetail>? validationDetails;

  /// The zone of the instance that the Insight data comes from.
  ///
  /// Optional.
  core.String? zone;

  SapValidation({
    this.projectId,
    this.validationDetails,
    this.zone,
  });

  SapValidation.fromJson(core.Map json_)
      : this(
          projectId: json_['projectId'] as core.String?,
          validationDetails: (json_['validationDetails'] as core.List?)
              ?.map((value) => SapValidationValidationDetail.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (validationDetails != null) 'validationDetails': validationDetails!,
        if (zone != null) 'zone': zone!,
      };
}

/// Message describing the SAP validation metrics.
class SapValidationValidationDetail {
  /// The pairs of metrics data: field name & field value.
  ///
  /// Optional.
  core.Map<core.String, core.String>? details;

  /// Was there a SAP system detected for this validation type.
  ///
  /// Optional.
  core.bool? isPresent;

  /// The SAP system that the validation data is from.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SAP_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SYSTEM" : The SYSTEM validation type collects underlying system data
  /// from the VM.
  /// - "COROSYNC" : The COROSYNC validation type collects Corosync
  /// configuration and runtime data. Corosync enables servers to interact as a
  /// HA cluster.
  /// - "PACEMAKER" : The PACEMAKER validation type collects Pacemaker
  /// configuration data. Pacemaker is a high-availability cluster resource
  /// manager.
  /// - "HANA" : The HANA validation type collects HANA configuration data. SAP
  /// HANA is an in-memory, column-oriented, relational database management
  /// system.
  /// - "NETWEAVER" : The NETWEAVER validation type collects NetWeaver
  /// configuration data. SAP NetWeaver is a software stack for many of SAP SE's
  /// applications.
  /// - "HANA_SECURITY" : The HANA_SECURITY validation type collects HANA
  /// configuration data as it relates to SAP security best practices.
  /// - "CUSTOM" : The CUSTOM validation type collects any customer-defined data
  /// that does not fall into any of the other categories of validations.
  core.String? sapValidationType;

  SapValidationValidationDetail({
    this.details,
    this.isPresent,
    this.sapValidationType,
  });

  SapValidationValidationDetail.fromJson(core.Map json_)
      : this(
          details:
              (json_['details'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          isPresent: json_['isPresent'] as core.bool?,
          sapValidationType: json_['sapValidationType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (isPresent != null) 'isPresent': isPresent!,
        if (sapValidationType != null) 'sapValidationType': sapValidationType!,
      };
}

/// Message of scanned resource
class ScannedResource {
  /// resource name
  core.String? resource;

  /// resource type
  core.String? type;

  ScannedResource({
    this.resource,
    this.type,
  });

  ScannedResource.fromJson(core.Map json_)
      : this(
          resource: json_['resource'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
        if (type != null) 'type': type!,
      };
}

/// * A ShellCommand is invoked via the agent's command line executor
class ShellCommand {
  /// args is a string of arguments to be passed to the command.
  core.String? args;

  /// command is the name of the command to be executed.
  core.String? command;

  /// If not specified, the default timeout is 60 seconds.
  ///
  /// Optional.
  core.int? timeoutSeconds;

  ShellCommand({
    this.args,
    this.command,
    this.timeoutSeconds,
  });

  ShellCommand.fromJson(core.Map json_)
      : this(
          args: json_['args'] as core.String?,
          command: json_['command'] as core.String?,
          timeoutSeconds: json_['timeoutSeconds'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (command != null) 'command': command!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
      };
}

/// A presentation of SQLServer workload insight.
///
/// The schema of SqlServer workloads validation related data.
class SqlserverValidation {
  /// The agent version collected this data point
  ///
  /// Optional.
  core.String? agentVersion;

  /// The instance_name of the instance that the Insight data comes from.
  ///
  /// According to https://linter.aip.dev/122/name-suffix: field names should
  /// not use the _name suffix unless the field would be ambiguous without it.
  ///
  /// Required.
  core.String? instance;

  /// The project_id of the cloud project that the Insight data comes from.
  ///
  /// Required.
  core.String? projectId;

  /// A list of SqlServer validation metrics data.
  ///
  /// Optional.
  core.List<SqlserverValidationValidationDetail>? validationDetails;

  SqlserverValidation({
    this.agentVersion,
    this.instance,
    this.projectId,
    this.validationDetails,
  });

  SqlserverValidation.fromJson(core.Map json_)
      : this(
          agentVersion: json_['agentVersion'] as core.String?,
          instance: json_['instance'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          validationDetails: (json_['validationDetails'] as core.List?)
              ?.map((value) => SqlserverValidationValidationDetail.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (instance != null) 'instance': instance!,
        if (projectId != null) 'projectId': projectId!,
        if (validationDetails != null) 'validationDetails': validationDetails!,
      };
}

/// Message containing collected data names and values.
class SqlserverValidationDetails {
  /// Collected data is in format.
  ///
  /// Required.
  core.Map<core.String, core.String>? fields;

  SqlserverValidationDetails({
    this.fields,
  });

  SqlserverValidationDetails.fromJson(core.Map json_)
      : this(
          fields:
              (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Message describing the Sqlserver validation metrics.
class SqlserverValidationValidationDetail {
  /// Details wraps map that represents collected data names and values.
  ///
  /// Required.
  core.List<SqlserverValidationDetails>? details;

  /// The Sqlserver system that the validation data is from.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQLSERVER_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "OS" : The Sqlserver system named OS.
  /// - "DB_LOG_DISK_SEPARATION" : The LOG_DISK_SEPARATION table.
  /// - "DB_MAX_PARALLELISM" : The MAX_PARALLELISM table.
  /// - "DB_CXPACKET_WAITS" : The CXPACKET_WAITS table.
  /// - "DB_TRANSACTION_LOG_HANDLING" : The TRANSACTION_LOG_HANDLING table.
  /// - "DB_VIRTUAL_LOG_FILE_COUNT" : The VIRTUAL_LOG_FILE_COUNT table.
  /// - "DB_BUFFER_POOL_EXTENSION" : The BUFFER_POOL_EXTENSION table.
  /// - "DB_MAX_SERVER_MEMORY" : The MAX_SERVER_MEMORY table.
  /// - "INSTANCE_METRICS" : The INSTANCE_METRICS table.
  /// - "DB_INDEX_FRAGMENTATION" : The DB_INDEX_FRAGMENTATION table.
  /// - "DB_TABLE_INDEX_COMPRESSION" : The DB_TABLE_INDEX_COMPRESSION table.
  /// - "DB_BACKUP_POLICY" : The DB_BACKUP_POLICY table.
  core.String? type;

  SqlserverValidationValidationDetail({
    this.details,
    this.type,
  });

  SqlserverValidationValidationDetail.fromJson(core.Map json_)
      : this(
          details: (json_['details'] as core.List?)
              ?.map((value) => SqlserverValidationDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
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
typedef Status = $Status00;

/// Message for execution summary
class Summary {
  /// Number of failures
  ///
  /// Output only.
  core.String? failures;

  /// Number of new failures compared to the previous execution
  ///
  /// Output only.
  core.String? newFailures;

  /// Number of new fixes compared to the previous execution
  ///
  /// Output only.
  core.String? newFixes;

  Summary({
    this.failures,
    this.newFailures,
    this.newFixes,
  });

  Summary.fromJson(core.Map json_)
      : this(
          failures: json_['failures'] as core.String?,
          newFailures: json_['newFailures'] as core.String?,
          newFixes: json_['newFixes'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failures != null) 'failures': failures!,
        if (newFailures != null) 'newFailures': newFailures!,
        if (newFixes != null) 'newFixes': newFixes!,
      };
}

/// The schema of torso workload validation data.
class TorsoValidation {
  /// agent_version lists the version of the agent that collected this data.
  ///
  /// Required.
  core.String? agentVersion;

  /// instance_name lists the human readable name of the instance that the data
  /// comes from.
  ///
  /// Required.
  core.String? instanceName;

  /// project_id lists the human readable cloud project that the data comes
  /// from.
  ///
  /// Required.
  core.String? projectId;

  /// validation_details contains the pairs of validation data: field name &
  /// field value.
  ///
  /// Required.
  core.Map<core.String, core.String>? validationDetails;

  /// workload_type specifies the type of torso workload.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WORKLOAD_TYPE_UNSPECIFIED" : Unspecified workload type.
  /// - "MYSQL" : MySQL workload.
  /// - "ORACLE" : Oracle workload.
  /// - "REDIS" : Redis workload.
  core.String? workloadType;

  TorsoValidation({
    this.agentVersion,
    this.instanceName,
    this.projectId,
    this.validationDetails,
    this.workloadType,
  });

  TorsoValidation.fromJson(core.Map json_)
      : this(
          agentVersion: json_['agentVersion'] as core.String?,
          instanceName: json_['instanceName'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          validationDetails: (json_['validationDetails']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          workloadType: json_['workloadType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (instanceName != null) 'instanceName': instanceName!,
        if (projectId != null) 'projectId': projectId!,
        if (validationDetails != null) 'validationDetails': validationDetails!,
        if (workloadType != null) 'workloadType': workloadType!,
      };
}

/// Message describing the violation in an evaluation result.
class ViolationDetails {
  /// The name of the asset.
  core.String? asset;

  /// Details of the violation.
  core.Map<core.String, core.String>? observed;

  /// The service account associated with the resource.
  core.String? serviceAccount;

  ViolationDetails({
    this.asset,
    this.observed,
    this.serviceAccount,
  });

  ViolationDetails.fromJson(core.Map json_)
      : this(
          asset: json_['asset'] as core.String?,
          observed:
              (json_['observed'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          serviceAccount: json_['serviceAccount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (observed != null) 'observed': observed!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Request for sending the data insights.
class WriteInsightRequest {
  /// The agent version collected this data point.
  ///
  /// Optional.
  core.String? agentVersion;

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
    this.agentVersion,
    this.insight,
    this.requestId,
  });

  WriteInsightRequest.fromJson(core.Map json_)
      : this(
          agentVersion: json_['agentVersion'] as core.String?,
          insight: json_.containsKey('insight')
              ? Insight.fromJson(
                  json_['insight'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_['requestId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentVersion != null) 'agentVersion': agentVersion!,
        if (insight != null) 'insight': insight!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The response for write insights request.
typedef WriteInsightResponse = $Empty;
