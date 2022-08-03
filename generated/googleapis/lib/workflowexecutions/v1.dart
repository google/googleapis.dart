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
library workflowexecutions.v1;

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
  /// - "BASIC" : Includes only basic metadata about the execution. Following
  /// fields are returned: name, start_time, end_time, state and
  /// workflow_revision_id.
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
  /// [pageSize] - Maximum number of executions to return per call. Max
  /// supported value depends on the selected Execution view: it's 10000 for
  /// BASIC and 100 for FULL. The default value used if the field is not
  /// specified is 100, regardless of the selected view. Values greater than the
  /// max value will be coerced down to it.
  ///
  /// [pageToken] - A page token, received from a previous `ListExecutions`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListExecutions` must match the call that
  /// provided the page token.
  ///
  /// [view] - Optional. A view defining which fields should be filled in the
  /// returned executions. The API will default to the BASIC view.
  /// Possible string values are:
  /// - "EXECUTION_VIEW_UNSPECIFIED" : The default / unset value.
  /// - "BASIC" : Includes only basic metadata about the execution. Following
  /// fields are returned: name, start_time, end_time, state and
  /// workflow_revision_id.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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
          context: json_.containsKey('context')
              ? json_['context'] as core.String
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
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
  /// - "CALL_LOG_LEVEL_UNSPECIFIED" : No call logging specified.
  /// - "LOG_ALL_CALLS" : Log all call steps within workflows, all call returns,
  /// and all exceptions raised.
  /// - "LOG_ERRORS_ONLY" : Log only exceptions that are raised from call steps
  /// within workflows.
  core.String? callLogLevel;

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
  core.String? state;

  /// Revision of the workflow this execution is using.
  ///
  /// Output only.
  core.String? workflowRevisionId;

  Execution({
    this.argument,
    this.callLogLevel,
    this.endTime,
    this.error,
    this.name,
    this.result,
    this.startTime,
    this.state,
    this.workflowRevisionId,
  });

  Execution.fromJson(core.Map json_)
      : this(
          argument: json_.containsKey('argument')
              ? json_['argument'] as core.String
              : null,
          callLogLevel: json_.containsKey('callLogLevel')
              ? json_['callLogLevel'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Error.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          workflowRevisionId: json_.containsKey('workflowRevisionId')
              ? json_['workflowRevisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (argument != null) 'argument': argument!,
        if (callLogLevel != null) 'callLogLevel': callLogLevel!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (workflowRevisionId != null)
          'workflowRevisionId': workflowRevisionId!,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executions != null) 'executions': executions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          line: json_.containsKey('line') ? json_['line'] as core.String : null,
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
          routine: json_.containsKey('routine')
              ? json_['routine'] as core.String
              : null,
          step: json_.containsKey('step') ? json_['step'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (routine != null) 'routine': routine!,
        if (step != null) 'step': step!,
      };
}

/// Request for the TriggerPubsubExecution method.
class TriggerPubsubExecutionRequest {
  /// LINT: LEGACY_NAMES The query parameter value for __GCP_CloudEventsMode,
  /// set by the Eventarc service when configuring triggers.
  ///
  /// Required.
  core.String? GCPCloudEventsMode;

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
    this.message,
    this.subscription,
  });

  TriggerPubsubExecutionRequest.fromJson(core.Map json_)
      : this(
          GCPCloudEventsMode: json_.containsKey('GCPCloudEventsMode')
              ? json_['GCPCloudEventsMode'] as core.String
              : null,
          message: json_.containsKey('message')
              ? PubsubMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
          subscription: json_.containsKey('subscription')
              ? json_['subscription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (GCPCloudEventsMode != null)
          'GCPCloudEventsMode': GCPCloudEventsMode!,
        if (message != null) 'message': message!,
        if (subscription != null) 'subscription': subscription!,
      };
}
