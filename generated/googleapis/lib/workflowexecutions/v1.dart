// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Workflow Executions API - v1
///
/// Execute workflows created with Workflows API.
///
/// For more information, see <https://cloud.google.com/workflows>
///
/// Create an instance of [WorkflowExecutionsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsWorkflowsResource]
///       - [ProjectsLocationsWorkflowsExecutionsResource]
///         - [ProjectsLocationsWorkflowsExecutionsCallbacksResource]
///         - [ProjectsLocationsWorkflowsExecutionsStepEntriesResource]
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

/// Execute workflows created with Workflows API.
class WorkflowExecutionsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  WorkflowExecutionsApi(http.Client client,
      {core.String rootUrl = 'https://workflowexecutions.googleapis.com/',
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

  ProjectsLocationsWorkflowsResource get workflows =>
      ProjectsLocationsWorkflowsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsWorkflowsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowsExecutionsResource get executions =>
      ProjectsLocationsWorkflowsExecutionsResource(_requester);

  ProjectsLocationsWorkflowsResource(commons.ApiRequester client)
      : _requester = client;

  /// Triggers a new execution using the latest revision of the given workflow
  /// by a Pub/Sub push notification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workflow] - Required. Name of the workflow for which an execution should
  /// be created. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
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
  async.Future<Execution> triggerPubsubExecution(
    TriggerPubsubExecutionRequest request,
    core.String workflow, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$workflow') + ':triggerPubsubExecution';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkflowsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowsExecutionsCallbacksResource get callbacks =>
      ProjectsLocationsWorkflowsExecutionsCallbacksResource(_requester);
  ProjectsLocationsWorkflowsExecutionsStepEntriesResource get stepEntries =>
      ProjectsLocationsWorkflowsExecutionsStepEntriesResource(_requester);

  ProjectsLocationsWorkflowsExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancels an execution of the given name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the execution to be cancelled. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+$`.
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
  async.Future<Execution> cancel(
    CancelExecutionRequest request,
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
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new execution using the latest revision of the given workflow.
  ///
  /// For more information, see Execute a workflow.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the workflow for which an execution should be
  /// created. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow} The latest
  /// revision of the workflow will be used.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
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
  async.Future<Execution> create(
    Execution request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all metadata stored about an execution, excluding most data that
  /// is already accessible using other API methods.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the execution for which data is to be exported.
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExportDataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExportDataResponse> exportData(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':exportData';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ExportDataResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns an execution of the given name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the execution to be retrieved. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [view] - Optional. A view defining which fields should be filled in the
  /// returned execution. The API will default to the FULL view.
  /// Possible string values are:
  /// - "EXECUTION_VIEW_UNSPECIFIED" : The default / unset value.
  /// - "BASIC" : Includes only basic metadata about the execution. The
  /// following fields are returned: name, start_time, end_time, duration,
  /// state, and workflow_revision_id.
  /// - "FULL" : Includes all data.
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
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
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

  /// Returns a list of executions which belong to the workflow with the given
  /// name.
  ///
  /// The method returns executions of all workflow revisions. Returned
  /// executions are ordered by their start time (newest first).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the workflow for which the executions should
  /// be listed. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters applied to the `[Executions.ListExecutions]`
  /// results. The following fields are supported for filtering: `executionId`,
  /// `state`, `createTime`, `startTime`, `endTime`, `duration`,
  /// `workflowRevisionId`, `stepName`, and `label`. For details, see AIP-160.
  /// For more information, see Filter executions. For example, if you are using
  /// the Google APIs Explorer: `state="SUCCEEDED"` or `startTime>"2023-08-01"
  /// AND state="FAILED"`
  ///
  /// [orderBy] - Optional. Comma-separated list of fields that specify the
  /// ordering applied to the `[Executions.ListExecutions]` results. By default
  /// the ordering is based on descending `createTime`. The following fields are
  /// supported for ordering: `executionId`, `state`, `createTime`, `startTime`,
  /// `endTime`, `duration`, and `workflowRevisionId`. For details, see AIP-132.
  ///
  /// [pageSize] - Maximum number of executions to return per call. Max
  /// supported value depends on the selected Execution view: it's 1000 for
  /// BASIC and 100 for FULL. The default value used if the field is not
  /// specified is 100, regardless of the selected view. Values greater than the
  /// max value will be coerced down to it.
  ///
  /// [pageToken] - A page token, received from a previous `ListExecutions`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListExecutions` must match the call that
  /// provided the page token. Note that pagination is applied to dynamic data.
  /// The list of executions returned can change between page requests.
  ///
  /// [view] - Optional. A view defining which fields should be filled in the
  /// returned executions. The API will default to the BASIC view.
  /// Possible string values are:
  /// - "EXECUTION_VIEW_UNSPECIFIED" : The default / unset value.
  /// - "BASIC" : Includes only basic metadata about the execution. The
  /// following fields are returned: name, start_time, end_time, duration,
  /// state, and workflow_revision_id.
  /// - "FULL" : Includes all data.
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
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
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
}

class ProjectsLocationsWorkflowsExecutionsCallbacksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowsExecutionsCallbacksResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Returns a list of active callbacks that belong to the execution with the
  /// given name.
  ///
  /// The returned callbacks are ordered by callback ID.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the execution for which the callbacks should
  /// be listed. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of callbacks to return per call. The default
  /// value is 100 and is also the maximum value.
  ///
  /// [pageToken] - A page token, received from a previous `ListCallbacks` call.
  /// Provide this to retrieve the subsequent page. Note that pagination is
  /// applied to dynamic data. The list of callbacks returned can change between
  /// page requests if callbacks are created or deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCallbacksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCallbacksResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/callbacks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCallbacksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkflowsExecutionsStepEntriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkflowsExecutionsStepEntriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a step entry.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the step entry to retrieve. Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}/stepEntries/{step_entry}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+/stepEntries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StepEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StepEntry> get(
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
    return StepEntry.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists step entries for the corresponding workflow execution.
  ///
  /// Returned entries are ordered by their create_time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the workflow execution to list entries for.
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}/stepEntries/
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workflows/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters applied to the
  /// `[StepEntries.ListStepEntries]` results. The following fields are
  /// supported for filtering: `entryId`, `createTime`, `updateTime`, `routine`,
  /// `step`, `stepType`, `state`. For details, see AIP-160. For example, if you
  /// are using the Google APIs Explorer: `state="SUCCEEDED"` or
  /// `createTime>"2023-08-01" AND state="FAILED"`
  ///
  /// [orderBy] - Optional. Comma-separated list of fields that specify the
  /// ordering applied to the `[StepEntries.ListStepEntries]` results. By
  /// default the ordering is based on ascending `entryId`. The following fields
  /// are supported for ordering: `entryId`, `createTime`, `updateTime`,
  /// `routine`, `step`, `stepType`, `state`. For details, see AIP-132.
  ///
  /// [pageSize] - Optional. Number of step entries to return per call. The
  /// default max is 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListStepEntries` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListStepEntries` must match
  /// the call that provided the page token.
  ///
  /// [skip] - Optional. The number of step entries to skip. It can be used with
  /// or without a pageToken. If used with a pageToken, then it indicates the
  /// number of step entries to skip starting from the requested page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStepEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStepEntriesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.int? skip,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (skip != null) 'skip': ['${skip}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/stepEntries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListStepEntriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An instance of a Callback created by an execution.
class Callback {
  /// The payloads received by the callback that have not been processed by a
  /// waiting execution step.
  ///
  /// Output only.
  core.List<core.String>? availablePayloads;

  /// The method accepted by the callback.
  ///
  /// For example: GET, POST, PUT.
  ///
  /// Output only.
  core.String? method;

  /// The resource name of the callback.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}/callback/{callback}
  ///
  /// Output only.
  core.String? name;

  /// Number of execution steps waiting on this callback.
  ///
  /// Output only.
  core.String? waiters;

  Callback({
    this.availablePayloads,
    this.method,
    this.name,
    this.waiters,
  });

  Callback.fromJson(core.Map json_)
      : this(
          availablePayloads: json_.containsKey('availablePayloads')
              ? (json_['availablePayloads'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          method: json_['method'] as core.String?,
          name: json_['name'] as core.String?,
          waiters: json_['waiters'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availablePayloads != null) 'availablePayloads': availablePayloads!,
        if (method != null) 'method': method!,
        if (name != null) 'name': name!,
        if (waiters != null) 'waiters': waiters!,
      };
}

/// Request for the CancelExecution method.
typedef CancelExecutionRequest = $Empty;

/// Error describes why the execution was abnormally terminated.
class Error {
  /// Human-readable stack trace string.
  core.String? context;

  /// Error message and data returned represented as a JSON string.
  core.String? payload;

  /// Stack trace with detailed information of where error was generated.
  StackTrace? stackTrace;

  Error({
    this.context,
    this.payload,
    this.stackTrace,
  });

  Error.fromJson(core.Map json_)
      : this(
          context: json_['context'] as core.String?,
          payload: json_['payload'] as core.String?,
          stackTrace: json_.containsKey('stackTrace')
              ? StackTrace.fromJson(
                  json_['stackTrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (payload != null) 'payload': payload!,
        if (stackTrace != null) 'stackTrace': stackTrace!,
      };
}

/// Exception describes why the step entry failed.
class Exception {
  /// Error message represented as a JSON string.
  core.String? payload;

  Exception({
    this.payload,
  });

  Exception.fromJson(core.Map json_)
      : this(
          payload: json_['payload'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
      };
}

/// A running instance of a
/// \[Workflow\](/workflows/docs/reference/rest/v1/projects.locations.workflows).
class Execution {
  /// Input parameters of the execution represented as a JSON string.
  ///
  /// The size limit is 32KB. *Note*: If you are using the REST API directly to
  /// run your workflow, you must escape any JSON string value of `argument`.
  /// Example:
  /// `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  core.String? argument;

  /// The call logging level associated to this execution.
  /// Possible string values are:
  /// - "CALL_LOG_LEVEL_UNSPECIFIED" : No call logging level specified.
  /// - "LOG_ALL_CALLS" : Log all call steps within workflows, all call returns,
  /// and all exceptions raised.
  /// - "LOG_ERRORS_ONLY" : Log only exceptions that are raised from call steps
  /// within workflows.
  /// - "LOG_NONE" : Explicitly log nothing.
  core.String? callLogLevel;

  /// Marks the creation of the execution.
  ///
  /// Output only.
  core.String? createTime;

  /// If set to true, the execution will not be backlogged when the concurrency
  /// quota is exhausted.
  ///
  /// The backlog execution starts when the concurrency quota becomes available.
  ///
  /// Optional.
  core.bool? disableConcurrencyQuotaOverflowBuffering;

  /// Measures the duration of the execution.
  ///
  /// Output only.
  core.String? duration;

  /// Marks the end of execution, successful or not.
  ///
  /// Output only.
  core.String? endTime;

  /// The error which caused the execution to finish prematurely.
  ///
  /// The value is only present if the execution's state is `FAILED` or
  /// `CANCELLED`.
  ///
  /// Output only.
  Error? error;

  /// Labels associated with this execution.
  ///
  /// Labels can contain at most 64 entries. Keys and values can be no longer
  /// than 63 characters and can only contain lowercase letters, numeric
  /// characters, underscores, and dashes. Label keys must start with a letter.
  /// International characters are allowed. By default, labels are inherited
  /// from the workflow but are overridden by any labels associated with the
  /// execution.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the execution.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  ///
  /// Output only.
  core.String? name;

  /// Output of the execution represented as a JSON string.
  ///
  /// The value can only be present if the execution's state is `SUCCEEDED`.
  ///
  /// Output only.
  core.String? result;

  /// Marks the beginning of execution.
  ///
  /// Output only.
  core.String? startTime;

  /// Current state of the execution.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid state.
  /// - "ACTIVE" : The execution is in progress.
  /// - "SUCCEEDED" : The execution finished successfully.
  /// - "FAILED" : The execution failed with an error.
  /// - "CANCELLED" : The execution was stopped intentionally.
  /// - "UNAVAILABLE" : Execution data is unavailable. See the `state_error`
  /// field.
  /// - "QUEUED" : Request has been placed in the backlog for processing at a
  /// later time.
  core.String? state;

  /// Error regarding the state of the Execution resource.
  ///
  /// For example, this field will have error details if the execution data is
  /// unavailable due to revoked KMS key permissions.
  ///
  /// Output only.
  StateError? stateError;

  /// Status tracks the current steps and progress data of this execution.
  ///
  /// Output only.
  Status? status;

  /// Revision of the workflow this execution is using.
  ///
  /// Output only.
  core.String? workflowRevisionId;

  Execution({
    this.argument,
    this.callLogLevel,
    this.createTime,
    this.disableConcurrencyQuotaOverflowBuffering,
    this.duration,
    this.endTime,
    this.error,
    this.labels,
    this.name,
    this.result,
    this.startTime,
    this.state,
    this.stateError,
    this.status,
    this.workflowRevisionId,
  });

  Execution.fromJson(core.Map json_)
      : this(
          argument: json_['argument'] as core.String?,
          callLogLevel: json_['callLogLevel'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          disableConcurrencyQuotaOverflowBuffering:
              json_['disableConcurrencyQuotaOverflowBuffering'] as core.bool?,
          duration: json_['duration'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          error: json_.containsKey('error')
              ? Error.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_['name'] as core.String?,
          result: json_['result'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
          stateError: json_.containsKey('stateError')
              ? StateError.fromJson(
                  json_['stateError'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          workflowRevisionId: json_['workflowRevisionId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (callLogLevel != null) 'callLogLevel': callLogLevel!,
        if (createTime != null) 'createTime': createTime!,
        if (disableConcurrencyQuotaOverflowBuffering != null)
          'disableConcurrencyQuotaOverflowBuffering':
              disableConcurrencyQuotaOverflowBuffering!,
        if (duration != null) 'duration': duration!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (stateError != null) 'stateError': stateError!,
        if (status != null) 'status': status!,
        if (workflowRevisionId != null)
          'workflowRevisionId': workflowRevisionId!,
      };
}

/// Response for the ExportData method.
class ExportDataResponse {
  /// The JSON string with customer data and metadata for an execution with the
  /// given name
  core.String? data;

  ExportDataResponse({
    this.data,
  });

  ExportDataResponse.fromJson(core.Map json_)
      : this(
          data: json_['data'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
      };
}

/// RPC response object for the ListCallbacks method.
class ListCallbacksResponse {
  /// The callbacks which match the request.
  core.List<Callback>? callbacks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListCallbacksResponse({
    this.callbacks,
    this.nextPageToken,
  });

  ListCallbacksResponse.fromJson(core.Map json_)
      : this(
          callbacks: json_.containsKey('callbacks')
              ? (json_['callbacks'] as core.List)
                  .map((value) => Callback.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbacks != null) 'callbacks': callbacks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the ListExecutions method.
class ListExecutionsResponse {
  /// The executions which match the request.
  core.List<Execution>? executions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
  });

  ListExecutionsResponse.fromJson(core.Map json_)
      : this(
          executions: json_.containsKey('executions')
              ? (json_['executions'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executions != null) 'executions': executions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ExecutionHistory.ListStepEntries.
class ListStepEntriesResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the ListStepEntriesRequest.page_token field in the
  /// subsequent call to `ListStepEntries` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  /// The list of entries.
  core.List<StepEntry>? stepEntries;

  /// Indicates the total number of StepEntries that matched the request filter.
  ///
  /// For running executions, this number shows the number of StepEntries that
  /// are executed thus far.
  core.int? totalSize;

  ListStepEntriesResponse({
    this.nextPageToken,
    this.stepEntries,
    this.totalSize,
  });

  ListStepEntriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          stepEntries: json_.containsKey('stepEntries')
              ? (json_['stepEntries'] as core.List)
                  .map((value) => StepEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (stepEntries != null) 'stepEntries': stepEntries!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// NavigationInfo describes what steps if any come before or after this step,
/// or what steps are parents or children of this step.
class NavigationInfo {
  /// Step entries that can be reached by "stepping into" e.g. a subworkflow
  /// call.
  core.List<core.String>? children;

  /// The index of the next step in the current workflow, if any.
  core.String? next;

  /// The step entry, if any, that can be reached by "stepping out" of the
  /// current workflow being executed.
  core.String? parent;

  /// The index of the previous step in the current workflow, if any.
  core.String? previous;

  NavigationInfo({
    this.children,
    this.next,
    this.parent,
    this.previous,
  });

  NavigationInfo.fromJson(core.Map json_)
      : this(
          children: json_.containsKey('children')
              ? (json_['children'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          next: json_['next'] as core.String?,
          parent: json_['parent'] as core.String?,
          previous: json_['previous'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (children != null) 'children': children!,
        if (next != null) 'next': next!,
        if (parent != null) 'parent': parent!,
        if (previous != null) 'previous': previous!,
      };
}

/// Position contains source position information about the stack trace element
/// such as line number, column number and length of the code block in bytes.
class Position {
  /// The source code column position (of the line) the current instruction was
  /// generated from.
  core.String? column;

  /// The number of bytes of source code making up this stack trace element.
  core.String? length;

  /// The source code line number the current instruction was generated from.
  core.String? line;

  Position({
    this.column,
    this.length,
    this.line,
  });

  Position.fromJson(core.Map json_)
      : this(
          column: json_['column'] as core.String?,
          length: json_['length'] as core.String?,
          line: json_['line'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (length != null) 'length': length!,
        if (line != null) 'line': line!,
      };
}

/// A message that is published by publishers and consumed by subscribers.
///
/// The message must contain either a non-empty data field or at least one
/// attribute. Note that client libraries represent this object differently
/// depending on the language. See the corresponding
/// [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries)
/// for more information. See
/// [quotas and limits](https://cloud.google.com/pubsub/quotas) for more
/// information about message limits.
typedef PubsubMessage = $PubsubMessage;

/// A collection of stack elements (frames) where an error occurred.
class StackTrace {
  /// An array of stack elements.
  core.List<StackTraceElement>? elements;

  StackTrace({
    this.elements,
  });

  StackTrace.fromJson(core.Map json_)
      : this(
          elements: json_.containsKey('elements')
              ? (json_['elements'] as core.List)
                  .map((value) => StackTraceElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A single stack element (frame) where an error occurred.
class StackTraceElement {
  /// The source position information of the stack trace element.
  Position? position;

  /// The routine where the error occurred.
  core.String? routine;

  /// The step the error occurred at.
  core.String? step;

  StackTraceElement({
    this.position,
    this.routine,
    this.step,
  });

  StackTraceElement.fromJson(core.Map json_)
      : this(
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          routine: json_['routine'] as core.String?,
          step: json_['step'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (routine != null) 'routine': routine!,
        if (step != null) 'step': step!,
      };
}

/// Describes an error related to the current state of the Execution resource.
typedef StateError = $StateError;

/// Represents the current status of this execution.
class Status {
  /// A list of currently executing or last executed step names for the workflow
  /// execution currently running.
  ///
  /// If the workflow has succeeded or failed, this is the last attempted or
  /// executed step. Presently, if the current step is inside a subworkflow, the
  /// list only includes that step. In the future, the list will contain items
  /// for each step in the call stack, starting with the outermost step in the
  /// `main` subworkflow, and ending with the most deeply nested step.
  core.List<Step>? currentSteps;

  Status({
    this.currentSteps,
  });

  Status.fromJson(core.Map json_)
      : this(
          currentSteps: json_.containsKey('currentSteps')
              ? (json_['currentSteps'] as core.List)
                  .map((value) => Step.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentSteps != null) 'currentSteps': currentSteps!,
      };
}

/// Represents a step of the workflow this execution is running.
class Step {
  /// Name of a routine within the workflow.
  core.String? routine;

  /// Name of a step within the routine.
  core.String? step;

  Step({
    this.routine,
    this.step,
  });

  Step.fromJson(core.Map json_)
      : this(
          routine: json_['routine'] as core.String?,
          step: json_['step'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (routine != null) 'routine': routine!,
        if (step != null) 'step': step!,
      };
}

/// An StepEntry contains debugging information for a step transition in a
/// workflow execution.
class StepEntry {
  /// The creation time of the step entry.
  ///
  /// Output only.
  core.String? createTime;

  /// The numeric ID of this step entry, used for navigation.
  ///
  /// Output only.
  core.String? entryId;

  /// The exception thrown by the step entry.
  ///
  /// Output only.
  Exception? exception;

  /// The full resource name of the step entry.
  ///
  /// Each step entry has a unique entry ID, which is a monotonically increasing
  /// counter. Step entry names have the format:
  /// `projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}/stepEntries/{step_entry}`.
  ///
  /// Output only.
  core.String? name;

  /// The NavigationInfo associated to this step.
  ///
  /// Output only.
  NavigationInfo? navigationInfo;

  /// The name of the routine this step entry belongs to.
  ///
  /// A routine name is the subworkflow name defined in the YAML source code.
  /// The top level routine name is `main`.
  ///
  /// Output only.
  core.String? routine;

  /// The state of the step entry.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid state.
  /// - "STATE_IN_PROGRESS" : The step entry is in progress.
  /// - "STATE_SUCCEEDED" : The step entry finished successfully.
  /// - "STATE_FAILED" : The step entry failed with an error.
  core.String? state;

  /// The name of the step this step entry belongs to.
  ///
  /// Output only.
  core.String? step;

  /// The StepEntryMetadata associated to this step.
  ///
  /// Output only.
  StepEntryMetadata? stepEntryMetadata;

  /// The type of the step this step entry belongs to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STEP_TYPE_UNSPECIFIED" : Invalid step type.
  /// - "STEP_ASSIGN" : The step entry assigns new variable(s).
  /// - "STEP_STD_LIB_CALL" : The step entry calls a standard library routine.
  /// - "STEP_CONNECTOR_CALL" : The step entry calls a connector.
  /// - "STEP_SUBWORKFLOW_CALL" : The step entry calls a subworklfow.
  /// - "STEP_CALL" : The step entry calls a subworkflow/stdlib.
  /// - "STEP_SWITCH" : The step entry executes a switch-case block.
  /// - "STEP_CONDITION" : The step entry executes a condition inside a switch.
  /// - "STEP_FOR" : The step entry executes a for loop.
  /// - "STEP_FOR_ITERATION" : The step entry executes a iteration of a for
  /// loop.
  /// - "STEP_PARALLEL_FOR" : The step entry executes a parallel for loop.
  /// - "STEP_PARALLEL_BRANCH" : The step entry executes a series of parallel
  /// branch(es).
  /// - "STEP_PARALLEL_BRANCH_ENTRY" : The step entry executes a branch of a
  /// parallel branch.
  /// - "STEP_TRY_RETRY_EXCEPT" : The step entry executes a try/retry/except
  /// block.
  /// - "STEP_TRY" : The step entry executes the try part of a try/retry/except
  /// block.
  /// - "STEP_RETRY" : The step entry executes the retry part of a
  /// try/retry/except block.
  /// - "STEP_EXCEPT" : The step entry executes the except part of a
  /// try/retry/except block.
  /// - "STEP_RETURN" : The step entry returns.
  /// - "STEP_RAISE" : The step entry raises an error.
  /// - "STEP_GOTO" : The step entry jumps to another step.
  core.String? stepType;

  /// The most recently updated time of the step entry.
  ///
  /// Output only.
  core.String? updateTime;

  StepEntry({
    this.createTime,
    this.entryId,
    this.exception,
    this.name,
    this.navigationInfo,
    this.routine,
    this.state,
    this.step,
    this.stepEntryMetadata,
    this.stepType,
    this.updateTime,
  });

  StepEntry.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          entryId: json_['entryId'] as core.String?,
          exception: json_.containsKey('exception')
              ? Exception.fromJson(
                  json_['exception'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          navigationInfo: json_.containsKey('navigationInfo')
              ? NavigationInfo.fromJson(json_['navigationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routine: json_['routine'] as core.String?,
          state: json_['state'] as core.String?,
          step: json_['step'] as core.String?,
          stepEntryMetadata: json_.containsKey('stepEntryMetadata')
              ? StepEntryMetadata.fromJson(json_['stepEntryMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          stepType: json_['stepType'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (entryId != null) 'entryId': entryId!,
        if (exception != null) 'exception': exception!,
        if (name != null) 'name': name!,
        if (navigationInfo != null) 'navigationInfo': navigationInfo!,
        if (routine != null) 'routine': routine!,
        if (state != null) 'state': state!,
        if (step != null) 'step': step!,
        if (stepEntryMetadata != null) 'stepEntryMetadata': stepEntryMetadata!,
        if (stepType != null) 'stepType': stepType!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// StepEntryMetadata contains metadata information about this step.
class StepEntryMetadata {
  /// Expected iteration represents the expected number of iterations in the
  /// step's progress.
  core.String? expectedIteration;

  /// Progress number represents the current state of the current progress.
  ///
  /// eg: A step entry represents the 4th iteration in a progress of
  /// PROGRESS_TYPE_FOR.
  core.String? progressNumber;

  /// Progress type of this step entry.
  /// Possible string values are:
  /// - "PROGRESS_TYPE_UNSPECIFIED" : Current step entry does not have any
  /// progress data.
  /// - "PROGRESS_TYPE_FOR" : Current step entry is in progress of a FOR step.
  /// - "PROGRESS_TYPE_SWITCH" : Current step entry is in progress of a SWITCH
  /// step.
  /// - "PROGRESS_TYPE_RETRY" : Current step entry is in progress of a RETRY
  /// step.
  /// - "PROGRESS_TYPE_PARALLEL_FOR" : Current step entry is in progress of a
  /// PARALLEL FOR step.
  /// - "PROGRESS_TYPE_PARALLEL_BRANCH" : Current step entry is in progress of a
  /// PARALLEL BRANCH step.
  core.String? progressType;

  /// Child thread id that this step entry belongs to.
  core.String? threadId;

  StepEntryMetadata({
    this.expectedIteration,
    this.progressNumber,
    this.progressType,
    this.threadId,
  });

  StepEntryMetadata.fromJson(core.Map json_)
      : this(
          expectedIteration: json_['expectedIteration'] as core.String?,
          progressNumber: json_['progressNumber'] as core.String?,
          progressType: json_['progressType'] as core.String?,
          threadId: json_['threadId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedIteration != null) 'expectedIteration': expectedIteration!,
        if (progressNumber != null) 'progressNumber': progressNumber!,
        if (progressType != null) 'progressType': progressType!,
        if (threadId != null) 'threadId': threadId!,
      };
}

/// Request for the TriggerPubsubExecution method.
class TriggerPubsubExecutionRequest {
  /// LINT: LEGACY_NAMES The query parameter value for __GCP_CloudEventsMode,
  /// set by the Eventarc service when configuring triggers.
  ///
  /// Required.
  core.String? GCPCloudEventsMode;

  /// The number of attempts that have been made to deliver this message.
  ///
  /// This is set by Pub/Sub for subscriptions that have the "dead letter"
  /// feature enabled, and hence provided here for compatibility, but is ignored
  /// by Workflows.
  core.int? deliveryAttempt;

  /// The message of the Pub/Sub push notification.
  ///
  /// Required.
  PubsubMessage? message;

  /// The subscription of the Pub/Sub push notification.
  ///
  /// Format: projects/{project}/subscriptions/{sub}
  ///
  /// Required.
  core.String? subscription;

  TriggerPubsubExecutionRequest({
    this.GCPCloudEventsMode,
    this.deliveryAttempt,
    this.message,
    this.subscription,
  });

  TriggerPubsubExecutionRequest.fromJson(core.Map json_)
      : this(
          GCPCloudEventsMode: json_['GCPCloudEventsMode'] as core.String?,
          deliveryAttempt: json_['deliveryAttempt'] as core.int?,
          message: json_.containsKey('message')
              ? PubsubMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
          subscription: json_['subscription'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (GCPCloudEventsMode != null)
          'GCPCloudEventsMode': GCPCloudEventsMode!,
        if (deliveryAttempt != null) 'deliveryAttempt': deliveryAttempt!,
        if (message != null) 'message': message!,
        if (subscription != null) 'subscription': subscription!,
      };
}
