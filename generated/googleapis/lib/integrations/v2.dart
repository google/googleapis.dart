// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Application Integration API - v2
///
/// For more information, see <https://cloud.google.com/application-integration>
///
/// Create an instance of [IntegrationsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsIntegrationsResource]
///       - [ProjectsLocationsIntegrationsExecutionsResource]
///         - [ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource]
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

class IntegrationsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  IntegrationsApi(
    http.Client client, {
    core.String rootUrl = 'https://integrations.googleapis.com/',
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

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsResource get integrations =>
      ProjectsLocationsIntegrationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Generates an integration skeleton based on a natural language prompt.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location in which the integration will be
  /// generated. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse>
  generateIntegration(
    GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + ':generateIntegration';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsResource get executions =>
      ProjectsLocationsIntegrationsExecutionsResource(_requester);

  ProjectsLocationsIntegrationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Executes integrations synchronously.
  ///
  /// The response is not returned until the requested execution is either
  /// fulfilled or experienced an error. Only one integration can be executed.
  /// Request format URL:
  /// https://integrations.googleapis.com/v2/projects/$PROJECT/locations/$LOCATION/integrations/$INTEGRATION_NAME:execute
  /// Request payload: (the entire payload is optional unless input variables
  /// need to be set.) {"variable1": "hello world", "variable2": 1, "variable3":
  /// {"my_json_key": "my json string value" }
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. This is used to de-dup incoming request: if the
  /// duplicate request was detected, the response from the previous execution
  /// is returned.
  ///
  /// [triggerId] - Required. The API trigger id associated with the
  /// integration. An integration can have multiple trigger_id. This field is
  /// required to disambiguate which trigger should be invoked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> execute(
    core.String parent, {
    core.String? requestId,
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'triggerId': ?triggerId == null ? null : [triggerId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generates an integration branch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `projects/{project}/locations/{location}/integrations/{integration}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse>
  generateIntegrationBranch(
    GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + ':generateIntegrationBranch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generates documentation for an integration version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `projects/{project}/locations/{location}/integrations/{integration}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse>
  generateIntegrationDocument(
    GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + ':generateIntegrationDocument';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generates Javascript code for data mapping.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `projects/{project}/locations/{location}/integrations/{integration}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse>
  generateJavascript(
    GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':generateJavascript';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Recommends tasks to replace a selected task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `projects/{project}/locations/{location}/integrations/{integration}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV2DuetRecommendTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetRecommendTasksResponse>
  recommendTasks(
    GoogleCloudIntegrationsV2DuetRecommendTasksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':recommendTasks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetRecommendTasksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Schedules an integration for execution.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. This is used to de-dup incoming request: if the
  /// duplicate request was detected, the response from the previous execution
  /// is returned.
  ///
  /// [scheduleTime] - Optional. The time that the integration should be
  /// executed. If the time is less or equal to the current time, the
  /// integration is executed immediately.
  ///
  /// [triggerId] - Required. The API trigger id associated with the
  /// integration. An integration can have multiple trigger_id. This field is
  /// required to disambiguate which trigger should be invoked
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> schedule(
    core.String parent, {
    core.String? requestId,
    core.String? scheduleTime,
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'scheduleTime': ?scheduleTime == null ? null : [scheduleTime],
      'triggerId': ?triggerId == null ? null : [triggerId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':schedule';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource
  get taskExecutions =>
      ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource(_requester);

  ProjectsLocationsIntegrationsExecutionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the results of all the integration executions.
  ///
  /// The response includes the same information as the
  /// [execution log](https://cloud.google.com/application-integration/docs/viewing-logs)
  /// in the Integration UI.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. parent resource name of integration execution.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Standard filter field, we support filtering on
  /// following fields: integration_name: the name of the integration.
  /// create_time: the execution created time. update_time: the execution last
  /// update time. state: the state of the executions. execution_id: the id of
  /// the execution. trigger_id: the id of the trigger. All fields support for
  /// EQUALS, in additional: create_time and update_time support for LESS_THAN,
  /// GREATER_THAN Also supports operators like AND, OR, NOT For example:
  /// trigger_id=\"id1\" AND integration_name=\"testIntegration\"
  ///
  /// [pageSize] - Optional. The size of entries in the response.
  ///
  /// [pageToken] - Optional. The token returned in the previous response.
  ///
  /// [readMask] - Optional. View mask for the response data. If set, only the
  /// field specified will be returned as part of the result. If not set, all
  /// fields in execution info will be filled and returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV2ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2ListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readMask': ?readMask == null ? null : [readMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2ListExecutionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// View detailed explanation of why an integration execution failed, using
  /// LLM
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Execution resource name. Format:
  /// `projects/{project}/locations/{location}/integrations/{integration}/executions/{execution_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse>
  troubleshoot(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':troubleshoot';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsTaskExecutionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Get a TaskExecution in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The TaskExecution to retrieve. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/executions/{execution}/taskExecutions/{task_execution}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+/taskExecutions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV2TaskExecution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV2TaskExecution> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV2TaskExecution.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef GoogleApiHttpBody = $HttpBody;

/// Status for the execution attempt.
class GoogleCloudIntegrationsV2AttemptStats {
  /// The end time of the execution for the current attempt.
  core.String? endTime;

  /// The start time of the execution for the current attempt.
  ///
  /// This could be in the future if it's been scheduled.
  core.String? startTime;

  GoogleCloudIntegrationsV2AttemptStats({this.endTime, this.startTime});

  GoogleCloudIntegrationsV2AttemptStats.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final startTime = this.startTime;
    return {'endTime': ?endTime, 'startTime': ?startTime};
  }
}

/// Cloud Logging details for execution info
typedef GoogleCloudIntegrationsV2CloudLoggingDetails = $CloudLoggingDetails;

/// This message only contains a field of boolean array.
typedef GoogleCloudIntegrationsV2DuetBooleanParameterArray =
    $BooleanParameterArray;

/// Cloud Scheduler Trigger configuration
typedef GoogleCloudIntegrationsV2DuetCloudSchedulerConfig =
    $CloudSchedulerConfig;

/// This message only contains a field of double number array.
typedef GoogleCloudIntegrationsV2DuetDoubleParameterArray =
    $DoubleParameterArray;

/// Configuration detail of a error catch task
class GoogleCloudIntegrationsV2DuetErrorCatcherConfig {
  /// User-provided description intended to give more business context about the
  /// error catcher config.
  ///
  /// Optional.
  core.String? description;

  /// An error catcher id is string representation for the error catcher config.
  ///
  /// Within a workflow, error_catcher_id uniquely identifies an error catcher
  /// config among all error catcher configs for the workflow
  ///
  /// Required.
  core.String? errorCatcherId;

  /// A number to uniquely identify each error catcher config within the
  /// workflow on UI.
  ///
  /// Required.
  core.String? errorCatcherNumber;

  /// The user created label for a particular error catcher.
  ///
  /// Optional.
  ///
  /// Optional.
  core.String? label;

  /// The set of start tasks that are to be executed for the error catch flow
  ///
  /// Required.
  core.List<GoogleCloudIntegrationsV2DuetNextTask>? startErrorTasks;

  GoogleCloudIntegrationsV2DuetErrorCatcherConfig({
    this.description,
    this.errorCatcherId,
    this.errorCatcherNumber,
    this.label,
    this.startErrorTasks,
  });

  GoogleCloudIntegrationsV2DuetErrorCatcherConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        errorCatcherNumber: json_['errorCatcherNumber'] as core.String?,
        label: json_['label'] as core.String?,
        startErrorTasks: (json_['startErrorTasks'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetNextTask.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final errorCatcherId = this.errorCatcherId;
    final errorCatcherNumber = this.errorCatcherNumber;
    final label = this.label;
    final startErrorTasks = this.startErrorTasks;
    return {
      'description': ?description,
      'errorCatcherId': ?errorCatcherId,
      'errorCatcherNumber': ?errorCatcherNumber,
      'label': ?label,
      'startErrorTasks': ?startErrorTasks,
    };
  }
}

/// This message is used for processing and persisting (when applicable) key
/// value pair parameters for each event in the event bus.
class GoogleCloudIntegrationsV2DuetEventParameter {
  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the integration definition.
  core.String? key;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message.
  GoogleCloudIntegrationsV2DuetValueType? value;

  GoogleCloudIntegrationsV2DuetEventParameter({this.key, this.value});

  GoogleCloudIntegrationsV2DuetEventParameter.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_.containsKey('value')
            ? GoogleCloudIntegrationsV2DuetValueType.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final value = this.value;
    return {'key': ?key, 'value': ?value};
  }
}

/// Request message for generating an integration branch containing tasks.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest {
  /// The integration branch request payload.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetIntegrationBranchRequest?
  integrationBranchRequest;

  /// User prompt.
  ///
  /// Required.
  core.String? prompt;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest({
    this.integrationBranchRequest,
    this.prompt,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest.fromJson(
    core.Map json_,
  ) : this(
        integrationBranchRequest: json_.containsKey('integrationBranchRequest')
            ? GoogleCloudIntegrationsV2DuetIntegrationBranchRequest.fromJson(
                json_['integrationBranchRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final integrationBranchRequest = this.integrationBranchRequest;
    final prompt = this.prompt;
    return {
      'integrationBranchRequest': ?integrationBranchRequest,
      'prompt': ?prompt,
    };
  }
}

/// Response message containing the generated integration branch data.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse {
  /// The integration branch returned by Duet
  GoogleCloudIntegrationsV2DuetIntegrationBranch? integrationBranch;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse({
    this.integrationBranch,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse.fromJson(
    core.Map json_,
  ) : this(
        integrationBranch: json_.containsKey('integrationBranch')
            ? GoogleCloudIntegrationsV2DuetIntegrationBranch.fromJson(
                json_['integrationBranch']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final integrationBranch = this.integrationBranch;
    return {'integrationBranch': ?integrationBranch};
  }
}

/// Request message for generating documentation for an integration version.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest {
  /// The integration document request payload.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest?
  integrationDocumentRequest;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest({
    this.integrationDocumentRequest,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest.fromJson(
    core.Map json_,
  ) : this(
        integrationDocumentRequest:
            json_.containsKey('integrationDocumentRequest')
            ? GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest.fromJson(
                json_['integrationDocumentRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final integrationDocumentRequest = this.integrationDocumentRequest;
    return {'integrationDocumentRequest': ?integrationDocumentRequest};
  }
}

/// Response message containing generated integration documentation text.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse {
  /// The description of the integration returned by Duet AI.
  core.String? document;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse({
    this.document,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse.fromJson(
    core.Map json_,
  ) : this(document: json_['document'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final document = this.document;
    return {'document': ?document};
  }
}

/// Request for generating an integration.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest {
  /// Indicates if copilot is enabled.
  ///
  /// Copilot features may alter the generated integration structure.
  ///
  /// Optional.
  core.bool? copilotEnabled;

  /// The natural language prompt based on which the integration will be
  /// generated.
  ///
  /// Required.
  core.String? prompt;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest({
    this.copilotEnabled,
    this.prompt,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest.fromJson(
    core.Map json_,
  ) : this(
        copilotEnabled: json_['copilotEnabled'] as core.bool?,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final copilotEnabled = this.copilotEnabled;
    final prompt = this.prompt;
    return {'copilotEnabled': ?copilotEnabled, 'prompt': ?prompt};
  }
}

/// Response for generating an integration.
class GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse {
  /// The list of integration skeletons returned.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationSkeleton>?
  skeletonIntegrations;

  GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse({
    this.skeletonIntegrations,
  });

  GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse.fromJson(
    core.Map json_,
  ) : this(
        skeletonIntegrations: (json_['skeletonIntegrations'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetIntegrationSkeleton.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final skeletonIntegrations = this.skeletonIntegrations;
    return {'skeletonIntegrations': ?skeletonIntegrations};
  }
}

/// Request message for generating data mapping Javascript.
class GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest {
  /// The javascript request payload.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetJavascriptRequest? javascriptRequest;

  /// User prompt.
  ///
  /// Optional.
  core.String? prompt;

  GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest({
    this.javascriptRequest,
    this.prompt,
  });

  GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest.fromJson(
    core.Map json_,
  ) : this(
        javascriptRequest: json_.containsKey('javascriptRequest')
            ? GoogleCloudIntegrationsV2DuetJavascriptRequest.fromJson(
                json_['javascriptRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        prompt: json_['prompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final javascriptRequest = this.javascriptRequest;
    final prompt = this.prompt;
    return {'javascriptRequest': ?javascriptRequest, 'prompt': ?prompt};
  }
}

/// Response message containing generated Javascript code recommendations.
class GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse {
  /// List of the Javascript recommendations.
  core.List<GoogleCloudIntegrationsV2DuetJavascriptRecommendation>?
  recommendations;

  GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse({
    this.recommendations,
  });

  GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse.fromJson(
    core.Map json_,
  ) : this(
        recommendations: (json_['recommendations'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetJavascriptRecommendation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recommendations = this.recommendations;
    return {'recommendations': ?recommendations};
  }
}

/// This message only contains a field of integer array.
typedef GoogleCloudIntegrationsV2DuetIntParameterArray = $IntParameterArray;

/// An integration branch skeleton containing basic fields which can be used to
/// create an integration branch on the UI.
class GoogleCloudIntegrationsV2DuetIntegrationBranch {
  /// The condition for the branch.
  core.String? branchCondition;

  /// Explanation of why this integration branch was generated.
  core.String? explanation;

  /// The newly generated workflow parameters.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationParameter>?
  integrationParameters;

  /// The newly generated tasks which can be branched into the current
  /// integration.
  core.List<GoogleCloudIntegrationsV2DuetTaskConfig>? taskConfigs;

  GoogleCloudIntegrationsV2DuetIntegrationBranch({
    this.branchCondition,
    this.explanation,
    this.integrationParameters,
    this.taskConfigs,
  });

  GoogleCloudIntegrationsV2DuetIntegrationBranch.fromJson(core.Map json_)
    : this(
        branchCondition: json_['branchCondition'] as core.String?,
        explanation: json_['explanation'] as core.String?,
        integrationParameters: (json_['integrationParameters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        taskConfigs: (json_['taskConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final branchCondition = this.branchCondition;
    final explanation = this.explanation;
    final integrationParameters = this.integrationParameters;
    final taskConfigs = this.taskConfigs;
    return {
      'branchCondition': ?branchCondition,
      'explanation': ?explanation,
      'integrationParameters': ?integrationParameters,
      'taskConfigs': ?taskConfigs,
    };
  }
}

/// The request for generating an integration branch.
class GoogleCloudIntegrationsV2DuetIntegrationBranchRequest {
  /// The condition for the particular branch which the user selected.
  ///
  /// Optional.
  core.String? branchCondition;

  /// A list of all the workflow parameters of the current integration.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationParameter>?
  integrationParameters;

  /// A list of all the tasks of the current integration.
  ///
  /// Required.
  core.List<GoogleCloudIntegrationsV2DuetTaskConfig>? taskConfigs;

  GoogleCloudIntegrationsV2DuetIntegrationBranchRequest({
    this.branchCondition,
    this.integrationParameters,
    this.taskConfigs,
  });

  GoogleCloudIntegrationsV2DuetIntegrationBranchRequest.fromJson(core.Map json_)
    : this(
        branchCondition: json_['branchCondition'] as core.String?,
        integrationParameters: (json_['integrationParameters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        taskConfigs: (json_['taskConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final branchCondition = this.branchCondition;
    final integrationParameters = this.integrationParameters;
    final taskConfigs = this.taskConfigs;
    return {
      'branchCondition': ?branchCondition,
      'integrationParameters': ?integrationParameters,
      'taskConfigs': ?taskConfigs,
    };
  }
}

/// Integration Config Parameter is defined in the integration config and are
/// used to provide external configuration for integration.
///
/// It provide information about data types of the expected parameters and
/// provide any default values or value. They can also be used to add custom
/// attributes.
class GoogleCloudIntegrationsV2DuetIntegrationConfigParameter {
  /// Integration Parameter to provide the default value, data type and
  /// attributes required for the Integration config variables.
  ///
  /// Optional.
  GoogleCloudIntegrationsV2DuetIntegrationParameter? parameter;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  GoogleCloudIntegrationsV2DuetValueType? value;

  GoogleCloudIntegrationsV2DuetIntegrationConfigParameter({
    this.parameter,
    this.value,
  });

  GoogleCloudIntegrationsV2DuetIntegrationConfigParameter.fromJson(
    core.Map json_,
  ) : this(
        parameter: json_.containsKey('parameter')
            ? GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
                json_['parameter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        value: json_.containsKey('value')
            ? GoogleCloudIntegrationsV2DuetValueType.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    final value = this.value;
    return {'parameter': ?parameter, 'value': ?value};
  }
}

/// The request for generating description of an integration.
class GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest {
  /// The current integrtion on the canvas.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetIntegrationVersion? integrationVersion;

  GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest({
    this.integrationVersion,
  });

  GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest.fromJson(
    core.Map json_,
  ) : this(
        integrationVersion: json_.containsKey('integrationVersion')
            ? GoogleCloudIntegrationsV2DuetIntegrationVersion.fromJson(
                json_['integrationVersion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final integrationVersion = this.integrationVersion;
    return {'integrationVersion': ?integrationVersion};
  }
}

/// Integration Parameter is defined in the integration config and are used to
/// provide information about data types of the expected parameters and provide
/// any default values if needed.
///
/// They can also be used to add custom attributes. These are static in nature
/// and should not be used for dynamic event definition.
class GoogleCloudIntegrationsV2DuetIntegrationParameter {
  /// Type of the parameter.
  /// Possible string values are:
  /// - "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "STRING_VALUE" : String.
  /// - "INT_VALUE" : Integer.
  /// - "DOUBLE_VALUE" : Double Number.
  /// - "BOOLEAN_VALUE" : Boolean.
  /// - "STRING_ARRAY" : String Array.
  /// - "INT_ARRAY" : Integer Array.
  /// - "DOUBLE_ARRAY" : Double Number Array.
  /// - "BOOLEAN_ARRAY" : Boolean Array.
  /// - "JSON_VALUE" : Json.
  /// - "PROTO_VALUE" : Proto Value (Internal use only).
  /// - "PROTO_ARRAY" : Proto Array (Internal use only).
  core.String? dataType;

  /// Default values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  GoogleCloudIntegrationsV2DuetValueType? defaultValue;

  /// Description of the parameter.
  ///
  /// Optional.
  core.String? description;

  /// The name (without prefix) to be displayed in the UI for this parameter.
  ///
  /// E.g. if the key is "foo.bar.myName", then the name would be "myName".
  core.String? displayName;

  /// Specifies the input/output type for the parameter.
  /// Possible string values are:
  /// - "IN_OUT_TYPE_UNSPECIFIED" : Default.
  /// - "IN" : Input parameters for the integration. EventBus validates that
  /// these parameters exist in the integrations before execution.
  /// - "OUT" : Output Parameters for the integration. EventBus will only return
  /// the integration parameters tagged with OUT in the response back.
  /// - "IN_OUT" : Input and Output Parameters. These can be used as both input
  /// and output. EventBus will validate for the existence of these parameters
  /// before execution and will also return this parameter back in the response.
  core.String? inputOutputType;

  /// Whether this parameter is a transient parameter.
  core.bool? isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this
  /// parameter.
  core.String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the integration definition.
  core.String? key;

  GoogleCloudIntegrationsV2DuetIntegrationParameter({
    this.dataType,
    this.defaultValue,
    this.description,
    this.displayName,
    this.inputOutputType,
    this.isTransient,
    this.jsonSchema,
    this.key,
  });

  GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_.containsKey('defaultValue')
            ? GoogleCloudIntegrationsV2DuetValueType.fromJson(
                json_['defaultValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputOutputType: json_['inputOutputType'] as core.String?,
        isTransient: json_['isTransient'] as core.bool?,
        jsonSchema: json_['jsonSchema'] as core.String?,
        key: json_['key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataType = this.dataType;
    final defaultValue = this.defaultValue;
    final description = this.description;
    final displayName = this.displayName;
    final inputOutputType = this.inputOutputType;
    final isTransient = this.isTransient;
    final jsonSchema = this.jsonSchema;
    final key = this.key;
    return {
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'displayName': ?displayName,
      'inputOutputType': ?inputOutputType,
      'isTransient': ?isTransient,
      'jsonSchema': ?jsonSchema,
      'key': ?key,
    };
  }
}

/// An integration skeleton containing basic fields which can be used to create
/// an integration on the UI.
class GoogleCloudIntegrationsV2DuetIntegrationSkeleton {
  /// Explanation of why this integration was generated.
  core.String? explanation;

  /// The integration version containing basic triggers and tasks.
  GoogleCloudIntegrationsV2DuetIntegrationVersion? integrationVersion;

  /// The name of the integration.
  core.String? name;

  /// Indicate the strategy/methodology used to generate the integration.
  core.String? tag;

  GoogleCloudIntegrationsV2DuetIntegrationSkeleton({
    this.explanation,
    this.integrationVersion,
    this.name,
    this.tag,
  });

  GoogleCloudIntegrationsV2DuetIntegrationSkeleton.fromJson(core.Map json_)
    : this(
        explanation: json_['explanation'] as core.String?,
        integrationVersion: json_.containsKey('integrationVersion')
            ? GoogleCloudIntegrationsV2DuetIntegrationVersion.fromJson(
                json_['integrationVersion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explanation = this.explanation;
    final integrationVersion = this.integrationVersion;
    final name = this.name;
    final tag = this.tag;
    return {
      'explanation': ?explanation,
      'integrationVersion': ?integrationVersion,
      'name': ?name,
      'tag': ?tag,
    };
  }
}

/// The integration version definition.
class GoogleCloudIntegrationsV2DuetIntegrationVersion {
  /// The integration description.
  ///
  /// Optional.
  core.String? description;

  /// Error Catch Task configuration for the integration.
  ///
  /// It's optional.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetErrorCatcherConfig>?
  errorCatcherConfigs;

  /// Config Parameters that are expected to be passed to the integration when
  /// an integration is published.
  ///
  /// This consists of all the parameters that are expected to provide
  /// configuration in the integration execution. This gives the user the
  /// ability to provide default values, value, add information like connection
  /// url, project based configuration value and also provide data types of each
  /// parameter.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationConfigParameter>?
  integrationConfigParameters;

  /// Parameters that are expected to be passed to the integration when an event
  /// is triggered.
  ///
  /// This consists of all the parameters that are expected in the integration
  /// execution. This gives the user the ability to provide default values, add
  /// information like PII and also provide data types of each parameter.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationParameter>?
  integrationParameters;

  /// Auto-generated primary key.
  ///
  /// Optional.
  core.String? name;

  /// An increasing sequence that is set when a new snapshot is created.
  ///
  /// The last created snapshot can be identified by \[workflow_name, org_id
  /// latest(snapshot_number)\]. However, last created snapshot need not be same
  /// as the HEAD. So users should always use "HEAD" tag to identify the head.
  ///
  /// Optional.
  core.String? snapshotNumber;

  /// User should not set it as an input.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATION_STATE_UNSPECIFIED" : Default.
  /// - "DRAFT" : Draft.
  /// - "ACTIVE" : Active.
  /// - "ARCHIVED" : Archived.
  /// - "SNAPSHOT" : Snapshot.
  core.String? state;

  /// Task configuration for the integration.
  ///
  /// It's optional, but the integration doesn't do anything without
  /// task_configs.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetTaskConfig>? taskConfigs;

  /// Trigger configurations.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetTriggerConfig>? triggerConfigs;

  /// A user-defined label that annotates an integration version.
  ///
  /// Typically, this is only set when the integration version is created.
  ///
  /// Optional.
  core.String? userLabel;

  GoogleCloudIntegrationsV2DuetIntegrationVersion({
    this.description,
    this.errorCatcherConfigs,
    this.integrationConfigParameters,
    this.integrationParameters,
    this.name,
    this.snapshotNumber,
    this.state,
    this.taskConfigs,
    this.triggerConfigs,
    this.userLabel,
  });

  GoogleCloudIntegrationsV2DuetIntegrationVersion.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        errorCatcherConfigs: (json_['errorCatcherConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetErrorCatcherConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        integrationConfigParameters:
            (json_['integrationConfigParameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV2DuetIntegrationConfigParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        integrationParameters: (json_['integrationParameters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        snapshotNumber: json_['snapshotNumber'] as core.String?,
        state: json_['state'] as core.String?,
        taskConfigs: (json_['taskConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        triggerConfigs: (json_['triggerConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetTriggerConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        userLabel: json_['userLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final errorCatcherConfigs = this.errorCatcherConfigs;
    final integrationConfigParameters = this.integrationConfigParameters;
    final integrationParameters = this.integrationParameters;
    final name = this.name;
    final snapshotNumber = this.snapshotNumber;
    final state = this.state;
    final taskConfigs = this.taskConfigs;
    final triggerConfigs = this.triggerConfigs;
    final userLabel = this.userLabel;
    return {
      'description': ?description,
      'errorCatcherConfigs': ?errorCatcherConfigs,
      'integrationConfigParameters': ?integrationConfigParameters,
      'integrationParameters': ?integrationParameters,
      'name': ?name,
      'snapshotNumber': ?snapshotNumber,
      'state': ?state,
      'taskConfigs': ?taskConfigs,
      'triggerConfigs': ?triggerConfigs,
      'userLabel': ?userLabel,
    };
  }
}

/// Individual Javascript recommendation containing the task config with the new
/// code, integration parameters and the explanation.
class GoogleCloudIntegrationsV2DuetJavascriptRecommendation {
  /// The explanation of the Javascript code.
  core.String? explanation;

  /// The list of the new integration parameters.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetIntegrationParameter>?
  integrationParameters;

  /// The task config of the Javascript task.
  ///
  /// Optional.
  GoogleCloudIntegrationsV2DuetTaskConfig? taskConfig;

  GoogleCloudIntegrationsV2DuetJavascriptRecommendation({
    this.explanation,
    this.integrationParameters,
    this.taskConfig,
  });

  GoogleCloudIntegrationsV2DuetJavascriptRecommendation.fromJson(core.Map json_)
    : this(
        explanation: json_['explanation'] as core.String?,
        integrationParameters: (json_['integrationParameters'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetIntegrationParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        taskConfig: json_.containsKey('taskConfig')
            ? GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                json_['taskConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explanation = this.explanation;
    final integrationParameters = this.integrationParameters;
    final taskConfig = this.taskConfig;
    return {
      'explanation': ?explanation,
      'integrationParameters': ?integrationParameters,
      'taskConfig': ?taskConfig,
    };
  }
}

/// Request message for Javascript Task using Gemini.
class GoogleCloudIntegrationsV2DuetJavascriptRequest {
  /// If this request is for copilot.
  ///
  /// Optional.
  core.bool? copilotEnabled;

  /// The integration version which contains all the integration parameters, all
  /// triggers and tasks including the Javascript task.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetIntegrationVersion? integrationVersion;

  /// The task id of the Javascript task.
  ///
  /// Required.
  core.String? taskId;

  /// Whether to use the current javascript task config (JS code) to generate
  /// the Javascript code.
  ///
  /// Optional.
  core.bool? useCurrentScript;

  GoogleCloudIntegrationsV2DuetJavascriptRequest({
    this.copilotEnabled,
    this.integrationVersion,
    this.taskId,
    this.useCurrentScript,
  });

  GoogleCloudIntegrationsV2DuetJavascriptRequest.fromJson(core.Map json_)
    : this(
        copilotEnabled: json_['copilotEnabled'] as core.bool?,
        integrationVersion: json_.containsKey('integrationVersion')
            ? GoogleCloudIntegrationsV2DuetIntegrationVersion.fromJson(
                json_['integrationVersion']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        taskId: json_['taskId'] as core.String?,
        useCurrentScript: json_['useCurrentScript'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final copilotEnabled = this.copilotEnabled;
    final integrationVersion = this.integrationVersion;
    final taskId = this.taskId;
    final useCurrentScript = this.useCurrentScript;
    return {
      'copilotEnabled': ?copilotEnabled,
      'integrationVersion': ?integrationVersion,
      'taskId': ?taskId,
      'useCurrentScript': ?useCurrentScript,
    };
  }
}

/// The task that is next in line to be executed, if the condition specified
/// evaluated to true.
typedef GoogleCloudIntegrationsV2DuetNextTask = $NextTask;

/// Request message for recommending tasks to replace a selected task.
class GoogleCloudIntegrationsV2DuetRecommendTasksRequest {
  /// User prompt.
  ///
  /// Optional.
  core.String? prompt;

  /// The current task to replace and options.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetReplaceTaskRequest? replaceTaskRequest;

  GoogleCloudIntegrationsV2DuetRecommendTasksRequest({
    this.prompt,
    this.replaceTaskRequest,
  });

  GoogleCloudIntegrationsV2DuetRecommendTasksRequest.fromJson(core.Map json_)
    : this(
        prompt: json_['prompt'] as core.String?,
        replaceTaskRequest: json_.containsKey('replaceTaskRequest')
            ? GoogleCloudIntegrationsV2DuetReplaceTaskRequest.fromJson(
                json_['replaceTaskRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final prompt = this.prompt;
    final replaceTaskRequest = this.replaceTaskRequest;
    return {'prompt': ?prompt, 'replaceTaskRequest': ?replaceTaskRequest};
  }
}

/// Response message containing recommended tasks for replacement.
class GoogleCloudIntegrationsV2DuetRecommendTasksResponse {
  /// The list of recommended tasks.
  core.List<GoogleCloudIntegrationsV2DuetTaskConfig>? taskConfigs;

  /// The list of task response status based on the task_types in the request.
  core.List<GoogleCloudIntegrationsV2DuetTaskResponseStatus>?
  taskResponseStatuses;

  GoogleCloudIntegrationsV2DuetRecommendTasksResponse({
    this.taskConfigs,
    this.taskResponseStatuses,
  });

  GoogleCloudIntegrationsV2DuetRecommendTasksResponse.fromJson(core.Map json_)
    : this(
        taskConfigs: (json_['taskConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        taskResponseStatuses: (json_['taskResponseStatuses'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudIntegrationsV2DuetTaskResponseStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final taskConfigs = this.taskConfigs;
    final taskResponseStatuses = this.taskResponseStatuses;
    return {
      'taskConfigs': ?taskConfigs,
      'taskResponseStatuses': ?taskResponseStatuses,
    };
  }
}

/// Message for Replace Task Scenario.
class GoogleCloudIntegrationsV2DuetReplaceTaskRequest {
  /// If this request is for copilot.
  ///
  /// Optional.
  core.bool? copilotEnabled;

  /// The current task selected on the UI.
  ///
  /// Required.
  GoogleCloudIntegrationsV2DuetTaskConfig? taskConfig;

  /// The list of task types.
  core.List<core.String>? taskTypes;

  GoogleCloudIntegrationsV2DuetReplaceTaskRequest({
    this.copilotEnabled,
    this.taskConfig,
    this.taskTypes,
  });

  GoogleCloudIntegrationsV2DuetReplaceTaskRequest.fromJson(core.Map json_)
    : this(
        copilotEnabled: json_['copilotEnabled'] as core.bool?,
        taskConfig: json_.containsKey('taskConfig')
            ? GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(
                json_['taskConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        taskTypes: (json_['taskTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final copilotEnabled = this.copilotEnabled;
    final taskConfig = this.taskConfig;
    final taskTypes = this.taskTypes;
    return {
      'copilotEnabled': ?copilotEnabled,
      'taskConfig': ?taskConfig,
      'taskTypes': ?taskTypes,
    };
  }
}

/// This message only contains a field of string array.
typedef GoogleCloudIntegrationsV2DuetStringParameterArray =
    $StringParameterArray;

/// The task configuration details.
///
/// This is not the implementation of Task. There might be multiple TaskConfigs
/// for the same Task.
class GoogleCloudIntegrationsV2DuetTaskConfig {
  /// User-provided description intended to give additional business context
  /// about the task.
  ///
  /// Optional.
  core.String? description;

  /// User-provided label that is attached to this TaskConfig in the UI.
  ///
  /// Optional.
  core.String? displayName;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  ///
  /// Optional.
  core.String? errorCatcherId;

  /// External task type of the task
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_TASK_TYPE_UNSPECIFIED" : Default value. External task type is
  /// not specified
  /// - "NORMAL_TASK" : Tasks belongs to the normal task flows
  /// - "ERROR_TASK" : Task belongs to the error catch task flows
  core.String? externalTaskType;

  /// The set of tasks that are next in line to be executed as per the execution
  /// graph defined for the parent event, specified by `event_config_id`.
  ///
  /// Each of these next tasks are executed only if the condition associated
  /// with them evaluates to true.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetNextTask>? nextTasks;

  /// The customized parameters the user can pass to this task.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV2DuetEventParameter>?
  parameters;

  /// The name for the task.
  ///
  /// Optional.
  core.String? task;

  /// The identifier of this task within its parent event config, specified by
  /// the client.
  ///
  /// This should be unique among all the tasks belong to the same event config.
  /// We use this field as the identifier to find next tasks (via field
  /// `next_tasks.task_id`).
  ///
  /// Required.
  core.String? taskId;

  GoogleCloudIntegrationsV2DuetTaskConfig({
    this.description,
    this.displayName,
    this.errorCatcherId,
    this.externalTaskType,
    this.nextTasks,
    this.parameters,
    this.task,
    this.taskId,
  });

  GoogleCloudIntegrationsV2DuetTaskConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        externalTaskType: json_['externalTaskType'] as core.String?,
        nextTasks: (json_['nextTasks'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetNextTask.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV2DuetEventParameter.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        task: json_['task'] as core.String?,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final errorCatcherId = this.errorCatcherId;
    final externalTaskType = this.externalTaskType;
    final nextTasks = this.nextTasks;
    final parameters = this.parameters;
    final task = this.task;
    final taskId = this.taskId;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'errorCatcherId': ?errorCatcherId,
      'externalTaskType': ?externalTaskType,
      'nextTasks': ?nextTasks,
      'parameters': ?parameters,
      'task': ?task,
      'taskId': ?taskId,
    };
  }
}

/// Message for task response status.
class GoogleCloudIntegrationsV2DuetTaskResponseStatus {
  /// The error message of the task response in case of failure.
  core.String? errorMessage;

  /// The http code of the task response.
  core.int? httpCode;

  /// The task type.
  /// Possible string values are:
  /// - "TASK_TYPE_UNSPECIFIED" : Unspecified.
  /// - "CONNECTOR_TASK" : Connector Task.
  /// - "REST_TASK" : Rest task.
  core.String? taskType;

  GoogleCloudIntegrationsV2DuetTaskResponseStatus({
    this.errorMessage,
    this.httpCode,
    this.taskType,
  });

  GoogleCloudIntegrationsV2DuetTaskResponseStatus.fromJson(core.Map json_)
    : this(
        errorMessage: json_['errorMessage'] as core.String?,
        httpCode: json_['httpCode'] as core.int?,
        taskType: json_['taskType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorMessage = this.errorMessage;
    final httpCode = this.httpCode;
    final taskType = this.taskType;
    return {
      'errorMessage': ?errorMessage,
      'httpCode': ?httpCode,
      'taskType': ?taskType,
    };
  }
}

/// Configuration detail of a trigger.
class GoogleCloudIntegrationsV2DuetTriggerConfig {
  /// Cloud Scheduler Trigger related metadata
  ///
  /// Optional.
  GoogleCloudIntegrationsV2DuetCloudSchedulerConfig? cloudSchedulerConfig;

  /// User-provided description intended to give additional business context
  /// about the task.
  ///
  /// Optional.
  core.String? description;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  ///
  /// Optional.
  core.String? errorCatcherId;

  /// List of input variables for the api trigger.
  ///
  /// Optional.
  GoogleCloudIntegrationsV2DuetTriggerConfigVariables? inputVariables;

  /// The user created label for a particular trigger.
  ///
  /// Optional.
  core.String? label;

  /// List of output variables for the api trigger.
  ///
  /// Optional.
  GoogleCloudIntegrationsV2DuetTriggerConfigVariables? outputVariables;

  /// Configurable properties of the trigger, not to be confused with
  /// integration parameters.
  ///
  /// E.g. "name" is a property for API triggers and "subscription" is a
  /// property for Pub/sub triggers.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// Set of tasks numbers from where the integration execution is started by
  /// this trigger.
  ///
  /// If this is empty, then integration is executed with default start tasks.
  /// In the list of start tasks, none of two tasks can have direct
  /// ancestor-descendant relationships (i.e. in a same integration execution
  /// graph).
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2DuetNextTask>? startTasks;

  /// Name of the trigger.
  ///
  /// Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out
  /// to monitoring dashabord for tracking purpose.
  ///
  /// Optional.
  core.String? trigger;

  /// The backend trigger ID.
  ///
  /// Optional.
  core.String? triggerId;

  /// A number to uniquely identify each trigger config within the integration
  /// on UI.
  ///
  /// Required.
  core.String? triggerNumber;

  /// Type of trigger
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRIGGER_TYPE_UNSPECIFIED" : Unknown.
  /// - "CRON" : Trigger by scheduled time.
  /// - "API" : Trigger by API call.
  /// - "SFDC_CHANNEL" : Trigger by Salesforce Channel.
  /// - "CLOUD_PUBSUB_EXTERNAL" : Trigger by Pub/Sub external.
  /// - "SFDC_CDC_CHANNEL" : SFDC Channel Trigger for CDC.
  /// - "CLOUD_SCHEDULER" : Trigger by Cloud Scheduler job.
  /// - "INTEGRATION_CONNECTOR_TRIGGER" : Trigger by Connector Event
  /// - "PRIVATE_TRIGGER" : Trigger for private workflow
  core.String? triggerType;

  GoogleCloudIntegrationsV2DuetTriggerConfig({
    this.cloudSchedulerConfig,
    this.description,
    this.errorCatcherId,
    this.inputVariables,
    this.label,
    this.outputVariables,
    this.properties,
    this.startTasks,
    this.trigger,
    this.triggerId,
    this.triggerNumber,
    this.triggerType,
  });

  GoogleCloudIntegrationsV2DuetTriggerConfig.fromJson(core.Map json_)
    : this(
        cloudSchedulerConfig: json_.containsKey('cloudSchedulerConfig')
            ? GoogleCloudIntegrationsV2DuetCloudSchedulerConfig.fromJson(
                json_['cloudSchedulerConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        inputVariables: json_.containsKey('inputVariables')
            ? GoogleCloudIntegrationsV2DuetTriggerConfigVariables.fromJson(
                json_['inputVariables'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        label: json_['label'] as core.String?,
        outputVariables: json_.containsKey('outputVariables')
            ? GoogleCloudIntegrationsV2DuetTriggerConfigVariables.fromJson(
                json_['outputVariables'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        startTasks: (json_['startTasks'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2DuetNextTask.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        trigger: json_['trigger'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        triggerNumber: json_['triggerNumber'] as core.String?,
        triggerType: json_['triggerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudSchedulerConfig = this.cloudSchedulerConfig;
    final description = this.description;
    final errorCatcherId = this.errorCatcherId;
    final inputVariables = this.inputVariables;
    final label = this.label;
    final outputVariables = this.outputVariables;
    final properties = this.properties;
    final startTasks = this.startTasks;
    final trigger = this.trigger;
    final triggerId = this.triggerId;
    final triggerNumber = this.triggerNumber;
    final triggerType = this.triggerType;
    return {
      'cloudSchedulerConfig': ?cloudSchedulerConfig,
      'description': ?description,
      'errorCatcherId': ?errorCatcherId,
      'inputVariables': ?inputVariables,
      'label': ?label,
      'outputVariables': ?outputVariables,
      'properties': ?properties,
      'startTasks': ?startTasks,
      'trigger': ?trigger,
      'triggerId': ?triggerId,
      'triggerNumber': ?triggerNumber,
      'triggerType': ?triggerType,
    };
  }
}

/// Variables names mapped to api trigger.
typedef GoogleCloudIntegrationsV2DuetTriggerConfigVariables =
    $TriggerConfigVariables;

/// Response for troubleshooting an integration execution.
class GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse {
  /// Detailed explanation of the root cause of the integration execution
  /// failure.
  core.String? detailedExplanation;

  /// Display message to be shown to the user.
  ///
  /// Example - If integration execution succeeded, this field value can be
  /// "Integration execution succeeded. No troubleshooting needed.".
  core.String? displayMessage;

  /// Error message of the integration execution, if the execution failed.
  core.String? errorMessage;

  /// The execution id of the integration execution to be troubleshooted.
  core.String? executionId;

  /// Root cause of the integration execution failure.
  core.String? rootCause;

  GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse({
    this.detailedExplanation,
    this.displayMessage,
    this.errorMessage,
    this.executionId,
    this.rootCause,
  });

  GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse.fromJson(
    core.Map json_,
  ) : this(
        detailedExplanation: json_['detailedExplanation'] as core.String?,
        displayMessage: json_['displayMessage'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        executionId: json_['executionId'] as core.String?,
        rootCause: json_['rootCause'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detailedExplanation = this.detailedExplanation;
    final displayMessage = this.displayMessage;
    final errorMessage = this.errorMessage;
    final executionId = this.executionId;
    final rootCause = this.rootCause;
    return {
      'detailedExplanation': ?detailedExplanation,
      'displayMessage': ?displayMessage,
      'errorMessage': ?errorMessage,
      'executionId': ?executionId,
      'rootCause': ?rootCause,
    };
  }
}

/// The type of the parameter.
class GoogleCloudIntegrationsV2DuetValueType {
  /// Boolean Array.
  GoogleCloudIntegrationsV2DuetBooleanParameterArray? booleanArray;

  /// Boolean.
  core.bool? booleanValue;

  /// Double Number Array.
  GoogleCloudIntegrationsV2DuetDoubleParameterArray? doubleArray;

  /// Double Number.
  core.double? doubleValue;

  /// Integer Array.
  GoogleCloudIntegrationsV2DuetIntParameterArray? intArray;

  /// Integer.
  core.String? intValue;

  /// Json.
  core.String? jsonValue;

  /// String Array.
  GoogleCloudIntegrationsV2DuetStringParameterArray? stringArray;

  /// String.
  core.String? stringValue;

  GoogleCloudIntegrationsV2DuetValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.stringArray,
    this.stringValue,
  });

  GoogleCloudIntegrationsV2DuetValueType.fromJson(core.Map json_)
    : this(
        booleanArray: json_.containsKey('booleanArray')
            ? GoogleCloudIntegrationsV2DuetBooleanParameterArray.fromJson(
                json_['booleanArray'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleArray: json_.containsKey('doubleArray')
            ? GoogleCloudIntegrationsV2DuetDoubleParameterArray.fromJson(
                json_['doubleArray'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intArray: json_.containsKey('intArray')
            ? GoogleCloudIntegrationsV2DuetIntParameterArray.fromJson(
                json_['intArray'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intValue: json_['intValue'] as core.String?,
        jsonValue: json_['jsonValue'] as core.String?,
        stringArray: json_.containsKey('stringArray')
            ? GoogleCloudIntegrationsV2DuetStringParameterArray.fromJson(
                json_['stringArray'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final booleanArray = this.booleanArray;
    final booleanValue = this.booleanValue;
    final doubleArray = this.doubleArray;
    final doubleValue = this.doubleValue;
    final intArray = this.intArray;
    final intValue = this.intValue;
    final jsonValue = this.jsonValue;
    final stringArray = this.stringArray;
    final stringValue = this.stringValue;
    return {
      'booleanArray': ?booleanArray,
      'booleanValue': ?booleanValue,
      'doubleArray': ?doubleArray,
      'doubleValue': ?doubleValue,
      'intArray': ?intArray,
      'intValue': ?intValue,
      'jsonValue': ?jsonValue,
      'stringArray': ?stringArray,
      'stringValue': ?stringValue,
    };
  }
}

/// The Execution contains detailed information of an individual integration
/// execution.
class GoogleCloudIntegrationsV2Execution {
  /// Cloud Logging details for the integration version
  GoogleCloudIntegrationsV2CloudLoggingDetails? cloudLoggingDetails;

  /// Indicates if the task execution contains variables.
  core.bool? containTaskVariables;

  /// Time the execution is created.
  ///
  /// Output only.
  core.String? createTime;

  /// Start and end time of each execution attempt.
  core.List<GoogleCloudIntegrationsV2AttemptStats>? executionAttemptStats;

  /// Indicates which snapshot of integration is used for this execution.
  core.String? integrationVersionNumber;

  /// User-defined label that annotates the executed integration version.
  ///
  /// Optional.
  core.String? integrationVersionUserLabel;

  /// Identifier.
  ///
  /// Execution resource name.
  core.String? name;

  /// Replay info for the execution
  ///
  /// Output only.
  GoogleCloudIntegrationsV2ExecutionReplayInfo? replayInfo;

  /// Variables provided in the request.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? requestVariables;

  /// Variables returned as part of the response.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? responseVariables;

  /// Status of the execution.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default.
  /// - "ON_HOLD" : Execution is scheduled and awaiting to be triggered.
  /// - "IN_PROCESS" : Execution is processing.
  /// - "SUCCEEDED" : Execution successfully finished. There are no more changes
  /// after this state.
  /// - "FAILED" : Execution failed. There's no more change after this state.
  /// - "CANCELLED" : Execution is cancelled. There's no more change after this
  /// state.
  /// - "RETRY_ON_HOLD" : Execution failed and is waiting for retry.
  /// - "SUSPENDED" : Execution suspended and waiting for manual intervention.
  core.String? state;

  /// List of task executions.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV2TaskExecution>? taskExecutions;

  /// The ID of the trigger invoked at the start of the execution.
  core.String? triggerId;

  /// Time the execution is recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudIntegrationsV2Execution({
    this.cloudLoggingDetails,
    this.containTaskVariables,
    this.createTime,
    this.executionAttemptStats,
    this.integrationVersionNumber,
    this.integrationVersionUserLabel,
    this.name,
    this.replayInfo,
    this.requestVariables,
    this.responseVariables,
    this.state,
    this.taskExecutions,
    this.triggerId,
    this.updateTime,
  });

  GoogleCloudIntegrationsV2Execution.fromJson(core.Map json_)
    : this(
        cloudLoggingDetails: json_.containsKey('cloudLoggingDetails')
            ? GoogleCloudIntegrationsV2CloudLoggingDetails.fromJson(
                json_['cloudLoggingDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        containTaskVariables: json_['containTaskVariables'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        executionAttemptStats: (json_['executionAttemptStats'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2AttemptStats.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        integrationVersionNumber:
            json_['integrationVersionNumber'] as core.String?,
        integrationVersionUserLabel:
            json_['integrationVersionUserLabel'] as core.String?,
        name: json_['name'] as core.String?,
        replayInfo: json_.containsKey('replayInfo')
            ? GoogleCloudIntegrationsV2ExecutionReplayInfo.fromJson(
                json_['replayInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestVariables: json_.containsKey('requestVariables')
            ? json_['requestVariables'] as core.Map<core.String, core.dynamic>
            : null,
        responseVariables: json_.containsKey('responseVariables')
            ? json_['responseVariables'] as core.Map<core.String, core.dynamic>
            : null,
        state: json_['state'] as core.String?,
        taskExecutions: (json_['taskExecutions'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2TaskExecution.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        triggerId: json_['triggerId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudLoggingDetails = this.cloudLoggingDetails;
    final containTaskVariables = this.containTaskVariables;
    final createTime = this.createTime;
    final executionAttemptStats = this.executionAttemptStats;
    final integrationVersionNumber = this.integrationVersionNumber;
    final integrationVersionUserLabel = this.integrationVersionUserLabel;
    final name = this.name;
    final replayInfo = this.replayInfo;
    final requestVariables = this.requestVariables;
    final responseVariables = this.responseVariables;
    final state = this.state;
    final taskExecutions = this.taskExecutions;
    final triggerId = this.triggerId;
    final updateTime = this.updateTime;
    return {
      'cloudLoggingDetails': ?cloudLoggingDetails,
      'containTaskVariables': ?containTaskVariables,
      'createTime': ?createTime,
      'executionAttemptStats': ?executionAttemptStats,
      'integrationVersionNumber': ?integrationVersionNumber,
      'integrationVersionUserLabel': ?integrationVersionUserLabel,
      'name': ?name,
      'replayInfo': ?replayInfo,
      'requestVariables': ?requestVariables,
      'responseVariables': ?responseVariables,
      'state': ?state,
      'taskExecutions': ?taskExecutions,
      'triggerId': ?triggerId,
      'updateTime': ?updateTime,
    };
  }
}

/// Contains the details of the execution info: this includes the replay reason
/// and replay tree connecting executions in a parent-child relationship
class GoogleCloudIntegrationsV2ExecutionReplayInfo {
  /// If this execution is a replay of another execution, then this field
  /// contains the original execution id.
  core.String? originalExecutionId;

  /// Replay mode for the execution
  /// Possible string values are:
  /// - "REPLAY_MODE_UNSPECIFIED" : Default value.
  /// - "REPLAY_MODE_FROM_BEGINNING" : Replay the original execution from the
  /// beginning.
  /// - "REPLAY_MODE_POINT_OF_FAILURE" : Replay the execution from the first
  /// failed task.
  core.String? replayMode;

  /// reason for replay
  core.String? replayReason;

  /// If this execution has been replayed, then this field contains the
  /// execution ids of the replayed executions.
  core.List<core.String>? replayedExecutionIds;

  GoogleCloudIntegrationsV2ExecutionReplayInfo({
    this.originalExecutionId,
    this.replayMode,
    this.replayReason,
    this.replayedExecutionIds,
  });

  GoogleCloudIntegrationsV2ExecutionReplayInfo.fromJson(core.Map json_)
    : this(
        originalExecutionId: json_['originalExecutionId'] as core.String?,
        replayMode: json_['replayMode'] as core.String?,
        replayReason: json_['replayReason'] as core.String?,
        replayedExecutionIds: (json_['replayedExecutionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final originalExecutionId = this.originalExecutionId;
    final replayMode = this.replayMode;
    final replayReason = this.replayReason;
    final replayedExecutionIds = this.replayedExecutionIds;
    return {
      'originalExecutionId': ?originalExecutionId,
      'replayMode': ?replayMode,
      'replayReason': ?replayReason,
      'replayedExecutionIds': ?replayedExecutionIds,
    };
  }
}

/// Response for listing the Integration executions.
class GoogleCloudIntegrationsV2ListExecutionsResponse {
  /// The list of executions.
  ///
  /// Required.
  core.List<GoogleCloudIntegrationsV2Execution>? executions;

  /// The token for retrieving the next page of results.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV2ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV2ListExecutionsResponse.fromJson(core.Map json_)
    : this(
        executions: (json_['executions'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2Execution.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executions = this.executions;
    final nextPageToken = this.nextPageToken;
    return {'executions': ?executions, 'nextPageToken': ?nextPageToken};
  }
}

/// Execution of a single task within an integration
class GoogleCloudIntegrationsV2TaskExecution {
  /// Identifier.
  ///
  /// Task execution resource name.
  core.String? name;

  /// Details of the task execution.
  core.List<GoogleCloudIntegrationsV2TaskExecutionDetails>?
  taskExecutionDetails;

  /// Metadata of the task execution.
  ///
  /// Optional.
  GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata?
  taskExecutionMetadata;

  /// Variables used during the execution.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  GoogleCloudIntegrationsV2TaskExecution({
    this.name,
    this.taskExecutionDetails,
    this.taskExecutionMetadata,
    this.variables,
  });

  GoogleCloudIntegrationsV2TaskExecution.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        taskExecutionDetails: (json_['taskExecutionDetails'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2TaskExecutionDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        taskExecutionMetadata: json_.containsKey('taskExecutionMetadata')
            ? GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata.fromJson(
                json_['taskExecutionMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final taskExecutionDetails = this.taskExecutionDetails;
    final taskExecutionMetadata = this.taskExecutionMetadata;
    final variables = this.variables;
    return {
      'name': ?name,
      'taskExecutionDetails': ?taskExecutionDetails,
      'taskExecutionMetadata': ?taskExecutionMetadata,
      'variables': ?variables,
    };
  }
}

/// Details of the task execution.
class GoogleCloudIntegrationsV2TaskExecutionDetails {
  /// List for the current task execution attempts.
  core.List<GoogleCloudIntegrationsV2AttemptStats>? taskAttemptStats;

  /// The execution state of this task.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "IN_PROCESS" : Task is under processing.
  /// - "SUCCEED" : Task execution successfully finished. There are no more
  /// changes after this state.
  /// - "FAILED" : Task execution failed. There's no more change after this
  /// state.
  /// - "FATAL" : Task execution failed and cause the whole integration
  /// execution to fail immediately. There's no more change after this state.
  /// - "RETRY_ON_HOLD" : Task execution failed and is waiting for retry.
  /// - "CANCELLED" : Task execution cancelled when in progress. This happens
  /// when integration execution was cancelled or any other task fell into a
  /// fatal state.
  /// - "SUSPENDED" : Task is a SuspensionTask which has executed once, creating
  /// a pending suspension.
  core.String? taskExecutionState;

  /// Pointer to the task config it used for execution.
  core.String? taskNumber;

  GoogleCloudIntegrationsV2TaskExecutionDetails({
    this.taskAttemptStats,
    this.taskExecutionState,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV2TaskExecutionDetails.fromJson(core.Map json_)
    : this(
        taskAttemptStats: (json_['taskAttemptStats'] as core.List?)
            ?.map(
              (value) => GoogleCloudIntegrationsV2AttemptStats.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        taskExecutionState: json_['taskExecutionState'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final taskAttemptStats = this.taskAttemptStats;
    final taskExecutionState = this.taskExecutionState;
    final taskNumber = this.taskNumber;
    return {
      'taskAttemptStats': ?taskAttemptStats,
      'taskExecutionState': ?taskExecutionState,
      'taskNumber': ?taskNumber,
    };
  }
}

/// Metadata of the task execution.
class GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata {
  /// Ancestor iteration number for the task (it will only be non-empty if the
  /// task is under 'private integration').
  ///
  /// Optional.
  core.List<core.String>? ancestorIterationNumbers;

  /// Ancestor task number for the task (it will only be non-empty if the task
  /// is under 'private integration').
  ///
  /// Optional.
  core.List<core.String>? ancestorTaskNumbers;

  /// The execution attempt number this execution belongs to.
  core.int? executionAttempt;

  /// The direct integration which the execution belongs to.
  ///
  /// Optional.
  core.String? privateIntegrationName;

  /// The task name associated with this execution.
  core.String? task;

  /// The task attempt number this execution belongs to.
  core.int? taskAttempt;

  /// The task label associated with this execution.
  core.String? taskLabel;

  /// The task number associated with this execution.
  core.String? taskNumber;

  GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata({
    this.ancestorIterationNumbers,
    this.ancestorTaskNumbers,
    this.executionAttempt,
    this.privateIntegrationName,
    this.task,
    this.taskAttempt,
    this.taskLabel,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata.fromJson(
    core.Map json_,
  ) : this(
        ancestorIterationNumbers:
            (json_['ancestorIterationNumbers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ancestorTaskNumbers: (json_['ancestorTaskNumbers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        executionAttempt: json_['executionAttempt'] as core.int?,
        privateIntegrationName: json_['privateIntegrationName'] as core.String?,
        task: json_['task'] as core.String?,
        taskAttempt: json_['taskAttempt'] as core.int?,
        taskLabel: json_['taskLabel'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ancestorIterationNumbers = this.ancestorIterationNumbers;
    final ancestorTaskNumbers = this.ancestorTaskNumbers;
    final executionAttempt = this.executionAttempt;
    final privateIntegrationName = this.privateIntegrationName;
    final task = this.task;
    final taskAttempt = this.taskAttempt;
    final taskLabel = this.taskLabel;
    final taskNumber = this.taskNumber;
    return {
      'ancestorIterationNumbers': ?ancestorIterationNumbers,
      'ancestorTaskNumbers': ?ancestorTaskNumbers,
      'executionAttempt': ?executionAttempt,
      'privateIntegrationName': ?privateIntegrationName,
      'task': ?task,
      'taskAttempt': ?taskAttempt,
      'taskLabel': ?taskLabel,
      'taskNumber': ?taskNumber,
    };
  }
}
