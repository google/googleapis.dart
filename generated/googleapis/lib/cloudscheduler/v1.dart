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

/// Cloud Scheduler API - v1
///
/// Creates and manages jobs run on a regular recurring schedule.
///
/// For more information, see <https://cloud.google.com/scheduler/>
///
/// Create an instance of [CloudSchedulerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobsResource]
///     - [ProjectsLocationsOperationsResource]
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

/// Creates and manages jobs run on a regular recurring schedule.
class CloudSchedulerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudSchedulerApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudscheduler.googleapis.com/',
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

  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
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
  /// [extraLocationTypes] - Optional. Unless explicitly documented otherwise,
  /// don't use this unsupported field which is primarily intended for internal
  /// usage.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 500. If
  /// unspecified, the page size will be the maximum. Fewer jobs than requested
  /// might be returned, even if more jobs exist; use next_page_token to
  /// determine if more jobs exist.
  ///
  /// [pageToken] - A token identifying a page of results the server will
  /// return. To request the first page results, page_token must be empty. To
  /// request the next page of results, page_token must be the value of
  /// next_page_token returned from the previous call to ListJobs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a job.
  ///
  /// If successful, the updated Job is returned. If the job does not exist,
  /// `NOT_FOUND` is returned. If UpdateJob does not successfully return, it is
  /// possible for the job to be in an Job.State.UPDATE_FAILED state. A job in
  /// this state may not be executed. If this happens, retry the UpdateJob
  /// request until a successful response is received.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optionally caller-specified in CreateJob, after which it becomes
  /// output only. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), colons
  /// (:), or periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the job's location. The list of
  /// available locations can be obtained by calling ListLocations. For more
  /// information, see https://cloud.google.com/about/locations/. * `JOB_ID` can
  /// contain only letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), or
  /// underscores (_). The maximum length is 500 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [updateMask] - A mask used to specify which fields of the job are being
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> patch(
    Job request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pauses a job.
  ///
  /// If a job is paused then the system will stop executing the job until it is
  /// re-enabled via ResumeJob. The state of the job is stored in state; if
  /// paused it will be set to Job.State.PAUSED. A job must be in
  /// Job.State.ENABLED to be paused.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> pause(
    PauseJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resume a job.
  ///
  /// This method reenables a job after it has been Job.State.PAUSED. The state
  /// of a job is stored in Job.state; after calling this method it will be set
  /// to Job.State.ENABLED. A job must be in Job.State.PAUSED to be resumed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> resume(
    ResumeJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Forces a job to run now.
  ///
  /// When this method is called, Cloud Scheduler will dispatch the job, even if
  /// the job is already running.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> run(
    RunJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// App Engine target.
///
/// The job will be pushed to a job handler by means of an HTTP request via an
/// http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by
/// means of an HTTP response code in the range \[200 - 299\]. Error 503 is
/// considered an App Engine system error instead of an application error.
/// Requests returning error 503 will be retried regardless of retry
/// configuration and not counted against retry counts. Any other response code,
/// or a failure to receive a response before the deadline, constitutes a failed
/// attempt.
class AppEngineHttpTarget {
  /// App Engine Routing setting for the job.
  AppEngineRouting? appEngineRouting;

  /// Body.
  ///
  /// HTTP request body. A request body is allowed only if the HTTP method is
  /// POST or PUT. It will result in invalid argument error to set a body on a
  /// job with an incompatible HttpMethod.
  core.String? body;
  core.List<core.int> get bodyAsBytes => convert.base64.decode(body!);

  set bodyAsBytes(core.List<core.int> bytes_) {
    body = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values. Headers can be set
  /// when the job is created. Cloud Scheduler sets some headers to default
  /// values: * `User-Agent`: By default, this header is `"AppEngine-Google;
  /// (+http://code.google.com/appengine)"`. This header can be modified, but
  /// Cloud Scheduler will append `"AppEngine-Google;
  /// (+http://code.google.com/appengine)"` to the modified `User-Agent`. *
  /// `X-CloudScheduler`: This header will be set to true. *
  /// `X-CloudScheduler-JobName`: This header will contain the job name. *
  /// `X-CloudScheduler-ScheduleTime`: For Cloud Scheduler jobs specified in the
  /// unix-cron format, this header will contain the job schedule as an offset
  /// of UTC parsed according to RFC3339. If the job has a body and the
  /// following headers are not set by the user, Cloud Scheduler sets default
  /// values: * `Content-Type`: This will be set to
  /// `"application/octet-stream"`. You can override this default by explicitly
  /// setting `Content-Type` to a particular media type when creating the job.
  /// For example, you can set `Content-Type` to `"application/json"`. The
  /// headers below are output only. They cannot be set or overridden: *
  /// `Content-Length`: This is computed by Cloud Scheduler. * `X-Google-*`: For
  /// Google internal use only. * `X-AppEngine-*`: For Google internal use only.
  /// In addition, some App Engine headers, which contain job-specific
  /// information, are also be sent to the job handler.
  core.Map<core.String, core.String>? headers;

  /// The HTTP method to use for the request.
  ///
  /// PATCH and OPTIONS are not permitted.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified. Defaults to POST.
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String? httpMethod;

  /// The relative URI.
  ///
  /// The relative URL must begin with "/" and must be a valid HTTP relative
  /// URL. It can contain a path, query string arguments, and `#` fragments. If
  /// the relative URL is empty, then the root path "/" will be used. No spaces
  /// are allowed, and the maximum length allowed is 2083 characters.
  core.String? relativeUri;

  AppEngineHttpTarget({
    this.appEngineRouting,
    this.body,
    this.headers,
    this.httpMethod,
    this.relativeUri,
  });

  AppEngineHttpTarget.fromJson(core.Map json_)
    : this(
        appEngineRouting:
            json_.containsKey('appEngineRouting')
                ? AppEngineRouting.fromJson(
                  json_['appEngineRouting']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        body: json_['body'] as core.String?,
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        httpMethod: json_['httpMethod'] as core.String?,
        relativeUri: json_['relativeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appEngineRouting != null) 'appEngineRouting': appEngineRouting!,
    if (body != null) 'body': body!,
    if (headers != null) 'headers': headers!,
    if (httpMethod != null) 'httpMethod': httpMethod!,
    if (relativeUri != null) 'relativeUri': relativeUri!,
  };
}

/// App Engine Routing.
///
/// For more information about services, versions, and instances see
/// [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine),
/// [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine),
/// [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed),
/// and
/// [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
class AppEngineRouting {
  /// The host that the job is sent to.
  ///
  /// For more information about how App Engine requests are routed, see
  /// [here](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed).
  /// The host is constructed as: * `host = [application_domain_name]` `|
  /// [service] + '.' + [application_domain_name]` `| [version] + '.' +
  /// [application_domain_name]` `| [version_dot_service]+ '.' +
  /// [application_domain_name]` `| [instance] + '.' +
  /// [application_domain_name]` `| [instance_dot_service] + '.' +
  /// [application_domain_name]` `| [instance_dot_version] + '.' +
  /// [application_domain_name]` `| [instance_dot_version_dot_service] + '.' +
  /// [application_domain_name]` * `application_domain_name` = The domain name
  /// of the app, for example .appspot.com, which is associated with the job's
  /// project ID. * `service =` service * `version =` version *
  /// `version_dot_service =` version `+ '.' +` service * `instance =` instance
  /// * `instance_dot_service =` instance `+ '.' +` service *
  /// `instance_dot_version =` instance `+ '.' +` version *
  /// `instance_dot_version_dot_service =` instance `+ '.' +` version `+ '.' +`
  /// service If service is empty, then the job will be sent to the service
  /// which is the default service when the job is attempted. If version is
  /// empty, then the job will be sent to the version which is the default
  /// version when the job is attempted. If instance is empty, then the job will
  /// be sent to an instance which is available when the job is attempted. If
  /// service, version, or instance is invalid, then the job will be sent to the
  /// default version of the default service when the job is attempted.
  ///
  /// Output only.
  core.String? host;

  /// App instance.
  ///
  /// By default, the job is sent to an instance which is available when the job
  /// is attempted. Requests can only be sent to a specific instance if
  /// [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?#scaling_types_and_instance_classes).
  /// App Engine Flex does not support instances. For more information, see
  /// [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
  /// and
  /// [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  core.String? instance;

  /// App service.
  ///
  /// By default, the job is sent to the service which is the default service
  /// when the job is attempted.
  core.String? service;

  /// App version.
  ///
  /// By default, the job is sent to the version which is the default version
  /// when the job is attempted.
  core.String? version;

  AppEngineRouting({this.host, this.instance, this.service, this.version});

  AppEngineRouting.fromJson(core.Map json_)
    : this(
        host: json_['host'] as core.String?,
        instance: json_['instance'] as core.String?,
        service: json_['service'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (host != null) 'host': host!,
    if (instance != null) 'instance': instance!,
    if (service != null) 'service': service!,
    if (version != null) 'version': version!,
  };
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

/// Http target.
///
/// The job will be pushed to the job handler by means of an HTTP request via an
/// http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by
/// means of an HTTP response code in the range \[200 - 299\]. A failure to
/// receive a response constitutes a failed execution. For a redirected request,
/// the response returned by the redirected request is considered.
class HttpTarget {
  /// HTTP request body.
  ///
  /// A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
  /// It is an error to set body on a job with an incompatible HttpMethod.
  core.String? body;
  core.List<core.int> get bodyAsBytes => convert.base64.decode(body!);

  set bodyAsBytes(core.List<core.int> bytes_) {
    body = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values. The user can specify
  /// HTTP request headers to send with the job's HTTP request. Repeated headers
  /// are not supported, but a header value can contain commas. The following
  /// headers represent a subset of the headers that accompany the job's HTTP
  /// request. Some HTTP request headers are ignored or replaced. A partial list
  /// of headers that are ignored or replaced is below: * Host: This will be
  /// computed by Cloud Scheduler and derived from uri. * `Content-Length`: This
  /// will be computed by Cloud Scheduler. * `User-Agent`: This will be set to
  /// `"Google-Cloud-Scheduler"`. * `X-Google-*`: Google internal use only. *
  /// `X-AppEngine-*`: Google internal use only. * `X-CloudScheduler`: This
  /// header will be set to true. * `X-CloudScheduler-JobName`: This header will
  /// contain the job name. * `X-CloudScheduler-ScheduleTime`: For Cloud
  /// Scheduler jobs specified in the unix-cron format, this header will contain
  /// the job schedule as an offset of UTC parsed according to RFC3339. If the
  /// job has a body and the following headers are not set by the user, Cloud
  /// Scheduler sets default values: * `Content-Type`: This will be set to
  /// `"application/octet-stream"`. You can override this default by explicitly
  /// setting `Content-Type` to a particular media type when creating the job.
  /// For example, you can set `Content-Type` to `"application/json"`. The total
  /// size of headers must be less than 80KB.
  core.Map<core.String, core.String>? headers;

  /// Which HTTP method to use for the request.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified. Defaults to POST.
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String? httpMethod;

  /// If specified, an
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2)
  /// will be generated and attached as an `Authorization` header in the HTTP
  /// request.
  ///
  /// This type of authorization should generally only be used when calling
  /// Google APIs hosted on *.googleapis.com.
  OAuthToken? oauthToken;

  /// If specified, an
  /// [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect)
  /// token will be generated and attached as an `Authorization` header in the
  /// HTTP request.
  ///
  /// This type of authorization can be used for many scenarios, including
  /// calling Cloud Run, or endpoints where you intend to validate the token
  /// yourself.
  OidcToken? oidcToken;

  /// The full URI path that the request will be sent to.
  ///
  /// This string must begin with either "http://" or "https://". Some examples
  /// of valid values for uri are: `http://acme.com` and
  /// `https://acme.com/sales:8080`. Cloud Scheduler will encode some characters
  /// for safety and compatibility. The maximum allowed URL length is 2083
  /// characters after encoding.
  ///
  /// Required.
  core.String? uri;

  HttpTarget({
    this.body,
    this.headers,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    this.uri,
  });

  HttpTarget.fromJson(core.Map json_)
    : this(
        body: json_['body'] as core.String?,
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        httpMethod: json_['httpMethod'] as core.String?,
        oauthToken:
            json_.containsKey('oauthToken')
                ? OAuthToken.fromJson(
                  json_['oauthToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        oidcToken:
            json_.containsKey('oidcToken')
                ? OidcToken.fromJson(
                  json_['oidcToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (body != null) 'body': body!,
    if (headers != null) 'headers': headers!,
    if (httpMethod != null) 'httpMethod': httpMethod!,
    if (oauthToken != null) 'oauthToken': oauthToken!,
    if (oidcToken != null) 'oidcToken': oidcToken!,
    if (uri != null) 'uri': uri!,
  };
}

/// Configuration for a job.
///
/// The maximum allowed size for a job is 1MB.
class Job {
  /// App Engine HTTP target.
  AppEngineHttpTarget? appEngineHttpTarget;

  /// The deadline for job attempts.
  ///
  /// If the request handler does not respond by this deadline then the request
  /// is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure.
  /// The failed attempt can be viewed in execution logs. Cloud Scheduler will
  /// retry the job according to the RetryConfig. The default and the allowed
  /// values depend on the type of target: * For HTTP targets, the default is 3
  /// minutes. The deadline must be in the interval \[15 seconds, 30 minutes\].
  /// * For App Engine HTTP targets, 0 indicates that the request has the
  /// default deadline. The default deadline depends on the scaling type of the
  /// service: 10 minutes for standard apps with automatic scaling, 24 hours for
  /// standard apps with manual and basic scaling, and 60 minutes for flex apps.
  /// If the request deadline is set, it must be in the interval \[15 seconds,
  /// 24 hours 15 seconds\]. * For Pub/Sub targets, this field is ignored.
  core.String? attemptDeadline;

  /// Optionally caller-specified in CreateJob or UpdateJob.
  ///
  /// A human-readable description for the job. This string must not contain
  /// more than 500 characters.
  core.String? description;

  /// HTTP target.
  HttpTarget? httpTarget;

  /// The time the last job attempt started.
  ///
  /// Output only.
  core.String? lastAttemptTime;

  /// Optionally caller-specified in CreateJob, after which it becomes output
  /// only.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID`
  /// can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), colons
  /// (:), or periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the job's location. The list of
  /// available locations can be obtained by calling ListLocations. For more
  /// information, see https://cloud.google.com/about/locations/. * `JOB_ID` can
  /// contain only letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-), or
  /// underscores (_). The maximum length is 500 characters.
  core.String? name;

  /// Pub/Sub target.
  PubsubTarget? pubsubTarget;

  /// Settings that determine the retry behavior.
  RetryConfig? retryConfig;

  /// Whether or not this Job satisfies the requirements of physical zone
  /// separation
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Required, except when used with UpdateJob.
  ///
  /// Describes the schedule on which the job will be executed. The schedule can
  /// be either of the following types: *
  /// [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like
  /// [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules)
  /// As a general rule, execution `n + 1` of a job will not begin until
  /// execution `n` has finished. Cloud Scheduler will never allow two
  /// simultaneously outstanding executions. For example, this implies that if
  /// the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution
  /// takes until 16:15, the `n+1`th execution will not start until `16:15`. A
  /// scheduled start time will be delayed if the previous execution has not
  /// ended when its scheduled time occurs. If retry_count \> 0 and a job
  /// attempt fails, the job will be tried a total of retry_count times, with
  /// exponential backoff, until the next scheduled start time. If retry_count
  /// is 0, a job attempt will not be retried if it fails. Instead the Cloud
  /// Scheduler system will wait for the next scheduled execution time. Setting
  /// retry_count to 0 does not prevent failed jobs from running according to
  /// schedule after the failure.
  core.String? schedule;

  /// The next time the job is scheduled.
  ///
  /// Note that this may be a retry of a previously failed attempt or the next
  /// execution time according to the schedule.
  ///
  /// Output only.
  core.String? scheduleTime;

  /// State of the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ENABLED" : The job is executing normally.
  /// - "PAUSED" : The job is paused by the user. It will not execute. A user
  /// can intentionally pause the job using PauseJobRequest.
  /// - "DISABLED" : The job is disabled by the system due to error. The user
  /// cannot directly set a job to be disabled.
  /// - "UPDATE_FAILED" : The job state resulting from a failed
  /// CloudScheduler.UpdateJob operation. To recover a job from this state,
  /// retry CloudScheduler.UpdateJob until a successful response is received.
  core.String? state;

  /// The response from the target for the last attempted execution.
  ///
  /// Output only.
  Status? status;

  /// Specifies the time zone to be used in interpreting schedule.
  ///
  /// The value of this field must be a time zone name from the
  /// [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some
  /// time zones include a provision for daylight savings time. The rules for
  /// daylight saving time are determined by the chosen tz. For UTC use the
  /// string "utc". If a time zone is not specified, the default will be in UTC
  /// (also known as GMT).
  core.String? timeZone;

  /// The creation time of the job.
  ///
  /// Output only.
  core.String? userUpdateTime;

  Job({
    this.appEngineHttpTarget,
    this.attemptDeadline,
    this.description,
    this.httpTarget,
    this.lastAttemptTime,
    this.name,
    this.pubsubTarget,
    this.retryConfig,
    this.satisfiesPzs,
    this.schedule,
    this.scheduleTime,
    this.state,
    this.status,
    this.timeZone,
    this.userUpdateTime,
  });

  Job.fromJson(core.Map json_)
    : this(
        appEngineHttpTarget:
            json_.containsKey('appEngineHttpTarget')
                ? AppEngineHttpTarget.fromJson(
                  json_['appEngineHttpTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        attemptDeadline: json_['attemptDeadline'] as core.String?,
        description: json_['description'] as core.String?,
        httpTarget:
            json_.containsKey('httpTarget')
                ? HttpTarget.fromJson(
                  json_['httpTarget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastAttemptTime: json_['lastAttemptTime'] as core.String?,
        name: json_['name'] as core.String?,
        pubsubTarget:
            json_.containsKey('pubsubTarget')
                ? PubsubTarget.fromJson(
                  json_['pubsubTarget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retryConfig:
            json_.containsKey('retryConfig')
                ? RetryConfig.fromJson(
                  json_['retryConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        schedule: json_['schedule'] as core.String?,
        scheduleTime: json_['scheduleTime'] as core.String?,
        state: json_['state'] as core.String?,
        status:
            json_.containsKey('status')
                ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeZone: json_['timeZone'] as core.String?,
        userUpdateTime: json_['userUpdateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appEngineHttpTarget != null)
      'appEngineHttpTarget': appEngineHttpTarget!,
    if (attemptDeadline != null) 'attemptDeadline': attemptDeadline!,
    if (description != null) 'description': description!,
    if (httpTarget != null) 'httpTarget': httpTarget!,
    if (lastAttemptTime != null) 'lastAttemptTime': lastAttemptTime!,
    if (name != null) 'name': name!,
    if (pubsubTarget != null) 'pubsubTarget': pubsubTarget!,
    if (retryConfig != null) 'retryConfig': retryConfig!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (schedule != null) 'schedule': schedule!,
    if (scheduleTime != null) 'scheduleTime': scheduleTime!,
    if (state != null) 'state': state!,
    if (status != null) 'status': status!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (userUpdateTime != null) 'userUpdateTime': userUpdateTime!,
  };
}

/// Response message for listing jobs using ListJobs.
class ListJobsResponse {
  /// The list of jobs.
  core.List<Job>? jobs;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to ListJobs
  /// to retrieve the next page of results. If this is empty it indicates that
  /// there are no more results through which to paginate. The page token is
  /// valid for only 2 hours.
  core.String? nextPageToken;

  ListJobsResponse({this.jobs, this.nextPageToken});

  ListJobsResponse.fromJson(core.Map json_)
    : this(
        jobs:
            (json_['jobs'] as core.List?)
                ?.map(
                  (value) => Job.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobs != null) 'jobs': jobs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
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

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Contains information needed for generating an
/// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
///
/// This type of authorization should generally only be used when calling Google
/// APIs hosted on *.googleapis.com.
class OAuthToken {
  /// OAuth scope to be used for generating OAuth access token.
  ///
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform" will be
  /// used.
  core.String? scope;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OAuth token.
  ///
  /// The service account must be within the same project as the job. The caller
  /// must have iam.serviceAccounts.actAs permission for the service account.
  core.String? serviceAccountEmail;

  OAuthToken({this.scope, this.serviceAccountEmail});

  OAuthToken.fromJson(core.Map json_)
    : this(
        scope: json_['scope'] as core.String?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (scope != null) 'scope': scope!,
    if (serviceAccountEmail != null)
      'serviceAccountEmail': serviceAccountEmail!,
  };
}

/// Contains information needed for generating an
/// [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
///
/// This type of authorization can be used for many scenarios, including calling
/// Cloud Run, or endpoints where you intend to validate the token yourself.
class OidcToken {
  /// Audience to be used when generating OIDC token.
  ///
  /// If not specified, the URI specified in target will be used.
  core.String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OIDC token.
  ///
  /// The service account must be within the same project as the job. The caller
  /// must have iam.serviceAccounts.actAs permission for the service account.
  core.String? serviceAccountEmail;

  OidcToken({this.audience, this.serviceAccountEmail});

  OidcToken.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
    if (serviceAccountEmail != null)
      'serviceAccountEmail': serviceAccountEmail!,
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
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

/// Request message for PauseJob.
typedef PauseJobRequest = $Empty;

/// Pub/Sub target.
///
/// The job will be delivered by publishing a message to the given Pub/Sub
/// topic.
class PubsubTarget {
  /// Attributes for PubsubMessage.
  ///
  /// Pubsub message must contain either non-empty data, or at least one
  /// attribute.
  core.Map<core.String, core.String>? attributes;

  /// The message payload for PubsubMessage.
  ///
  /// Pubsub message must contain either non-empty data, or at least one
  /// attribute.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The name of the Cloud Pub/Sub topic to which messages will be published
  /// when a job is delivered.
  ///
  /// The topic name must be in the same format as required by Pub/Sub's
  /// [PublishRequest.name](https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#publishrequest),
  /// for example `projects/PROJECT_ID/topics/TOPIC_ID`. The topic must be in
  /// the same project as the Cloud Scheduler job.
  ///
  /// Required.
  core.String? topicName;

  PubsubTarget({this.attributes, this.data, this.topicName});

  PubsubTarget.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        data: json_['data'] as core.String?,
        topicName: json_['topicName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (data != null) 'data': data!,
    if (topicName != null) 'topicName': topicName!,
  };
}

/// Request message for ResumeJob.
typedef ResumeJobRequest = $Empty;

/// Settings that determine the retry behavior.
///
/// For more information, see
/// [Retry jobs](https://cloud.google.com/scheduler/docs/configuring/retry-jobs).
/// By default, if a job does not complete successfully (meaning that an
/// acknowledgement is not received from the handler, then it will be retried
/// with exponential backoff according to the settings in RetryConfig.
class RetryConfig {
  /// The maximum amount of time to wait before retrying a job after it fails.
  ///
  /// The default value of this field is 1 hour.
  core.String? maxBackoffDuration;

  /// The time between retries will double `max_doublings` times.
  ///
  /// A job's retry interval starts at min_backoff_duration, then doubles
  /// `max_doublings` times, then increases linearly, and finally retries at
  /// intervals of max_backoff_duration up to retry_count times. For examples,
  /// see
  /// [Retry jobs](https://cloud.google.com/scheduler/docs/configuring/retry-jobs#max-doublings).
  /// The default value of this field is 5.
  core.int? maxDoublings;

  /// The time limit for retrying a failed job, measured from the time when an
  /// execution was first attempted.
  ///
  /// If specified with retry_count, the job will be retried until both limits
  /// are reached. The default value for max_retry_duration is zero, which means
  /// retry duration is unlimited. However, if retry_count is also 0, a job
  /// attempt won't be retried if it fails.
  core.String? maxRetryDuration;

  /// The minimum amount of time to wait before retrying a job after it fails.
  ///
  /// The default value of this field is 5 seconds.
  core.String? minBackoffDuration;

  /// The number of attempts that the system will make to run a job using the
  /// exponential backoff procedure described by max_doublings.
  ///
  /// The default value of retry_count is zero. If retry_count is 0 (and if
  /// max_retry_duration is also 0), a job attempt won't be retried if it fails.
  /// Instead, Cloud Scheduler system will wait for the next scheduled execution
  /// time. Setting retry_count to 0 doesn't prevent failed jobs from running
  /// according to schedule after the failure. If retry_count is set to a
  /// non-zero number, Cloud Scheduler will retry the failed job, using
  /// exponential backoff, for retry_count times until the job succeeds or the
  /// number of retries is exhausted. Note that the next scheduled execution
  /// time might be skipped if the retries continue through that time. Values
  /// greater than 5 and negative values are not allowed.
  core.int? retryCount;

  RetryConfig({
    this.maxBackoffDuration,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoffDuration,
    this.retryCount,
  });

  RetryConfig.fromJson(core.Map json_)
    : this(
        maxBackoffDuration: json_['maxBackoffDuration'] as core.String?,
        maxDoublings: json_['maxDoublings'] as core.int?,
        maxRetryDuration: json_['maxRetryDuration'] as core.String?,
        minBackoffDuration: json_['minBackoffDuration'] as core.String?,
        retryCount: json_['retryCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxBackoffDuration != null) 'maxBackoffDuration': maxBackoffDuration!,
    if (maxDoublings != null) 'maxDoublings': maxDoublings!,
    if (maxRetryDuration != null) 'maxRetryDuration': maxRetryDuration!,
    if (minBackoffDuration != null) 'minBackoffDuration': minBackoffDuration!,
    if (retryCount != null) 'retryCount': retryCount!,
  };
}

/// Request message for forcing a job to run now using RunJob.
typedef RunJobRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
