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

/// Batch API - v1
///
/// An API to manage the running of batch jobs on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/batch/>
///
/// Create an instance of [BatchApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobsResource]
///       - [ProjectsLocationsJobsTaskGroupsResource]
///         - [ProjectsLocationsJobsTaskGroupsTasksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsStateResource]
library batch.v1;

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

/// An API to manage the running of batch jobs on Google Cloud Platform.
class BatchApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BatchApi(http.Client client,
      {core.String rootUrl = 'https://batch.googleapis.com/',
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

  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsStateResource get state =>
      ProjectsLocationsStateResource(_requester);

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

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsTaskGroupsResource get taskGroups =>
      ProjectsLocationsJobsTaskGroupsResource(_requester);

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a Job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the Job will be
  /// created. Pattern: "projects/{project}/locations/{location}"
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [jobId] - ID used to uniquely identify the Job within its parent scope.
  /// This field should contain at most 63 characters and must start with
  /// lowercase characters. Only lowercase characters, numbers and '-' are
  /// accepted. The '-' character cannot be the first or the last one. A system
  /// generated ID will be used if the field is not set. The job.name field in
  /// the request will be ignored and the created resource name of the Job will
  /// be "{parent}/jobs/{job_id}".
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
    core.String? jobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (requestId != null) 'requestId': [requestId],
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

  /// Delete a Job.
  ///
  /// Request parameters:
  ///
  /// [name] - Job name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [reason] - Optional. Reason for this deletion.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
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
    core.String? reason,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reason != null) 'reason': [reason],
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

  /// Get a Job specified by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Job name.
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
  async.Future<Job> get(
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
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Jobs for a project within a region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent path.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsTaskGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsTaskGroupsTasksResource get tasks =>
      ProjectsLocationsJobsTaskGroupsTasksResource(_requester);

  ProjectsLocationsJobsTaskGroupsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsJobsTaskGroupsTasksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsTaskGroupsTasksResource(commons.ApiRequester client)
      : _requester = client;

  /// Return a single Task.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Task name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/taskGroups/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
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
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Tasks associated with a job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of a TaskGroup from which Tasks are being
  /// requested. Pattern:
  /// "projects/{project}/locations/{location}/jobs/{job}/taskGroups/{task_group}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+/taskGroups/\[^/\]+$`.
  ///
  /// [filter] - Task filter, null filter matches all Tasks. Filter string
  /// should be of the format State=TaskStatus.State e.g. State=RUNNING
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTasksResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTasksResponse.fromJson(
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

class ProjectsLocationsStateResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStateResource(commons.ApiRequester client)
      : _requester = client;

  /// Report agent's state, e.g. agent status and tasks information
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: projects/{project}/locations/{location}
  /// {project} should be a project number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportAgentStateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportAgentStateResponse> report(
    ReportAgentStateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/state:report';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportAgentStateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Accelerator describes Compute Engine accelerators to be attached to the VM.
class Accelerator {
  /// The number of accelerators of this type.
  core.String? count;

  /// Deprecated: please use instances\[0\].install_gpu_drivers instead.
  core.bool? installGpuDrivers;

  /// The accelerator type.
  ///
  /// For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types
  /// list`.
  core.String? type;

  Accelerator({
    this.count,
    this.installGpuDrivers,
    this.type,
  });

  Accelerator.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          installGpuDrivers: json_.containsKey('installGpuDrivers')
              ? json_['installGpuDrivers'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (installGpuDrivers != null) 'installGpuDrivers': installGpuDrivers!,
        if (type != null) 'type': type!,
      };
}

/// Conditions for actions to deal with task failures.
class ActionCondition {
  /// Exit codes of a task execution.
  ///
  /// If there are more than 1 exit codes, when task executes with any of the
  /// exit code in the list, the condition is met and the action will be
  /// executed.
  core.List<core.int>? exitCodes;

  ActionCondition({
    this.exitCodes,
  });

  ActionCondition.fromJson(core.Map json_)
      : this(
          exitCodes: json_.containsKey('exitCodes')
              ? (json_['exitCodes'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exitCodes != null) 'exitCodes': exitCodes!,
      };
}

/// VM Agent Info.
class AgentInfo {
  /// The assigned Job ID
  core.String? jobId;

  /// When the AgentInfo is generated.
  core.String? reportTime;

  /// Agent state.
  /// Possible string values are:
  /// - "AGENT_STATE_UNSPECIFIED" : Unspecified state.
  /// - "AGENT_STARTING" : The agent is starting on the VM instance.
  /// - "AGENT_RUNNING" : The agent is running. The agent in the RUNNING state
  /// can never go back to the STARTING state.
  /// - "AGENT_STOPPED" : The agent has stopped, either on request or due to a
  /// failure.
  core.String? state;

  /// The assigned task group ID.
  core.String? taskGroupId;

  /// Task Info.
  core.List<AgentTaskInfo>? tasks;

  AgentInfo({
    this.jobId,
    this.reportTime,
    this.state,
    this.taskGroupId,
    this.tasks,
  });

  AgentInfo.fromJson(core.Map json_)
      : this(
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          taskGroupId: json_.containsKey('taskGroupId')
              ? json_['taskGroupId'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => AgentTaskInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (state != null) 'state': state!,
        if (taskGroupId != null) 'taskGroupId': taskGroupId!,
        if (tasks != null) 'tasks': tasks!,
      };
}

/// VM Agent Metadata.
class AgentMetadata {
  /// When the VM agent started.
  ///
  /// Use agent_startup_time instead.
  core.String? creationTime;

  /// Full name of the entity that created this vm.
  ///
  /// For MIG, this path is:
  /// projects/{project}/regions/{region}/InstanceGroupManagers/{igm} The value
  /// is retrieved from the vm metadata key of "created-by".
  core.String? creator;

  /// image version for the VM that this agent is installed on.
  core.String? imageVersion;

  /// GCP instance name (go/instance-name).
  core.String? instance;

  /// GCP instance ID (go/instance-id).
  core.String? instanceId;

  /// If the GCP instance has received preemption notice.
  core.bool? instancePreemptionNoticeReceived;

  /// parsed contents of /etc/os-release
  core.Map<core.String, core.String>? osRelease;

  /// agent binary version running on VM
  core.String? version;

  /// Agent zone.
  core.String? zone;

  AgentMetadata({
    this.creationTime,
    this.creator,
    this.imageVersion,
    this.instance,
    this.instanceId,
    this.instancePreemptionNoticeReceived,
    this.osRelease,
    this.version,
    this.zone,
  });

  AgentMetadata.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          imageVersion: json_.containsKey('imageVersion')
              ? json_['imageVersion'] as core.String
              : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          instancePreemptionNoticeReceived:
              json_.containsKey('instancePreemptionNoticeReceived')
                  ? json_['instancePreemptionNoticeReceived'] as core.bool
                  : null,
          osRelease: json_.containsKey('osRelease')
              ? (json_['osRelease'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (creator != null) 'creator': creator!,
        if (imageVersion != null) 'imageVersion': imageVersion!,
        if (instance != null) 'instance': instance!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (instancePreemptionNoticeReceived != null)
          'instancePreemptionNoticeReceived': instancePreemptionNoticeReceived!,
        if (osRelease != null) 'osRelease': osRelease!,
        if (version != null) 'version': version!,
        if (zone != null) 'zone': zone!,
      };
}

/// TODO(b/182501497) The message needs to be redefined when the Agent API
/// server updates data in storage per the backend design.
class AgentTask {
  /// The intended state of the task.
  /// Possible string values are:
  /// - "INTENDED_STATE_UNSPECIFIED" : Unspecified state.
  /// - "ASSIGNED" : Assigned state (includes running and finished).
  /// - "CANCELLED" : The agent should cancel the execution of this task.
  /// - "DELETED" : Delete task from agent storage, stop reporting its state.
  core.String? intendedState;

  /// The highest barrier reached by all tasks in the task's TaskGroup.
  core.String? reachedBarrier;

  /// Task Spec.
  TaskSpec? spec;

  /// Task status.
  TaskStatus? status;

  /// Task name.
  core.String? task;

  AgentTask({
    this.intendedState,
    this.reachedBarrier,
    this.spec,
    this.status,
    this.task,
  });

  AgentTask.fromJson(core.Map json_)
      : this(
          intendedState: json_.containsKey('intendedState')
              ? json_['intendedState'] as core.String
              : null,
          reachedBarrier: json_.containsKey('reachedBarrier')
              ? json_['reachedBarrier'] as core.String
              : null,
          spec: json_.containsKey('spec')
              ? TaskSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? TaskStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          task: json_.containsKey('task') ? json_['task'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intendedState != null) 'intendedState': intendedState!,
        if (reachedBarrier != null) 'reachedBarrier': reachedBarrier!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
        if (task != null) 'task': task!,
      };
}

/// Task Info
class AgentTaskInfo {
  /// The highest index of a runnable started by the agent for this task.
  ///
  /// The runnables are indexed from 1. Value 0 is undefined.
  core.String? runnable;

  /// ID of the Task
  core.String? taskId;

  /// The status of the Task.
  ///
  /// If we need agent specific fields we should fork the public TaskStatus into
  /// an agent specific one. Or add them below.
  TaskStatus? taskStatus;

  AgentTaskInfo({
    this.runnable,
    this.taskId,
    this.taskStatus,
  });

  AgentTaskInfo.fromJson(core.Map json_)
      : this(
          runnable: json_.containsKey('runnable')
              ? json_['runnable'] as core.String
              : null,
          taskId: json_.containsKey('taskId')
              ? json_['taskId'] as core.String
              : null,
          taskStatus: json_.containsKey('taskStatus')
              ? TaskStatus.fromJson(
                  json_['taskStatus'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runnable != null) 'runnable': runnable!,
        if (taskId != null) 'taskId': taskId!,
        if (taskStatus != null) 'taskStatus': taskStatus!,
      };
}

/// VM timing information
class AgentTimingInfo {
  /// Agent startup time
  core.String? agentStartupTime;

  /// Boot timestamp of the VM OS
  core.String? bootTime;

  /// Startup time of the Batch VM script.
  core.String? scriptStartupTime;

  AgentTimingInfo({
    this.agentStartupTime,
    this.bootTime,
    this.scriptStartupTime,
  });

  AgentTimingInfo.fromJson(core.Map json_)
      : this(
          agentStartupTime: json_.containsKey('agentStartupTime')
              ? json_['agentStartupTime'] as core.String
              : null,
          bootTime: json_.containsKey('bootTime')
              ? json_['bootTime'] as core.String
              : null,
          scriptStartupTime: json_.containsKey('scriptStartupTime')
              ? json_['scriptStartupTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentStartupTime != null) 'agentStartupTime': agentStartupTime!,
        if (bootTime != null) 'bootTime': bootTime!,
        if (scriptStartupTime != null) 'scriptStartupTime': scriptStartupTime!,
      };
}

/// A Job's resource allocation policy describes when, where, and how compute
/// resources should be allocated for the Job.
class AllocationPolicy {
  /// Describe instances that can be created by this AllocationPolicy.
  ///
  /// Only instances\[0\] is supported now.
  core.List<InstancePolicyOrTemplate>? instances;

  /// Labels applied to all VM instances and other resources created by
  /// AllocationPolicy.
  ///
  /// Labels could be user provided or system generated. You can assign up to 64
  /// labels.
  /// [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// apply. Label names that start with "goog-" or "google-" are reserved.
  core.Map<core.String, core.String>? labels;

  /// Location where compute resources should be allocated for the Job.
  LocationPolicy? location;

  /// The network policy.
  NetworkPolicy? network;

  /// Service account that VMs will run as.
  ServiceAccount? serviceAccount;

  AllocationPolicy({
    this.instances,
    this.labels,
    this.location,
    this.network,
    this.serviceAccount,
  });

  AllocationPolicy.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => InstancePolicyOrTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? LocationPolicy.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          network: json_.containsKey('network')
              ? NetworkPolicy.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? ServiceAccount.fromJson(json_['serviceAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (network != null) 'network': network!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// A new or an existing persistent disk (PD) or a local ssd attached to a VM
/// instance.
class AttachedDisk {
  /// Device name that the guest operating system will see.
  ///
  /// It is used by Runnable.volumes field to mount disks. So please specify the
  /// device_name if you want Batch to help mount the disk, and it should match
  /// the device_name field in volumes.
  core.String? deviceName;

  /// Name of an existing PD.
  core.String? existingDisk;
  Disk? newDisk;

  AttachedDisk({
    this.deviceName,
    this.existingDisk,
    this.newDisk,
  });

  AttachedDisk.fromJson(core.Map json_)
      : this(
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
          existingDisk: json_.containsKey('existingDisk')
              ? json_['existingDisk'] as core.String
              : null,
          newDisk: json_.containsKey('newDisk')
              ? Disk.fromJson(
                  json_['newDisk'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceName != null) 'deviceName': deviceName!,
        if (existingDisk != null) 'existingDisk': existingDisk!,
        if (newDisk != null) 'newDisk': newDisk!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Barrier runnable blocks until all tasks in a taskgroup reach it.
class Barrier {
  /// Barriers are identified by their index in runnable list.
  ///
  /// Names are not required, but if present should be an identifier.
  core.String? name;

  Barrier({
    this.name,
  });

  Barrier.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Compute resource requirements
class ComputeResource {
  /// Extra boot disk size in MiB for each task.
  core.String? bootDiskMib;

  /// The milliCPU count.
  core.String? cpuMilli;

  /// Memory in MiB.
  core.String? memoryMib;

  ComputeResource({
    this.bootDiskMib,
    this.cpuMilli,
    this.memoryMib,
  });

  ComputeResource.fromJson(core.Map json_)
      : this(
          bootDiskMib: json_.containsKey('bootDiskMib')
              ? json_['bootDiskMib'] as core.String
              : null,
          cpuMilli: json_.containsKey('cpuMilli')
              ? json_['cpuMilli'] as core.String
              : null,
          memoryMib: json_.containsKey('memoryMib')
              ? json_['memoryMib'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskMib != null) 'bootDiskMib': bootDiskMib!,
        if (cpuMilli != null) 'cpuMilli': cpuMilli!,
        if (memoryMib != null) 'memoryMib': memoryMib!,
      };
}

/// Container runnable.
class Container {
  /// If set to true, external network access to and from container will be
  /// blocked.
  ///
  /// The container will use the default internal network 'goog-internal'.
  core.bool? blockExternalNetwork;

  /// Overrides the `CMD` specified in the container.
  ///
  /// If there is an ENTRYPOINT (either in the container image or with the
  /// entrypoint field below) then commands are appended as arguments to the
  /// ENTRYPOINT.
  core.List<core.String>? commands;

  /// Overrides the `ENTRYPOINT` specified in the container.
  core.String? entrypoint;

  /// The URI to pull the container image from.
  core.String? imageUri;

  /// Arbitrary additional options to include in the "docker run" command when
  /// running this container, e.g. "--network host".
  core.String? options;

  /// Optional password for logging in to a docker registry.
  ///
  /// If password matches `projects / * /secrets / * /versions / * ` then Batch
  /// will read the password from the Secret Manager;
  core.String? password;

  /// Optional username for logging in to a docker registry.
  ///
  /// If username matches `projects / * /secrets / * /versions / * ` then Batch
  /// will read the username from the Secret Manager.
  core.String? username;

  /// Volumes to mount (bind mount) from the host machine files or directories
  /// into the container, formatted to match docker run's --volume option, e.g.
  /// /foo:/bar, or /foo:/bar:ro
  core.List<core.String>? volumes;

  Container({
    this.blockExternalNetwork,
    this.commands,
    this.entrypoint,
    this.imageUri,
    this.options,
    this.password,
    this.username,
    this.volumes,
  });

  Container.fromJson(core.Map json_)
      : this(
          blockExternalNetwork: json_.containsKey('blockExternalNetwork')
              ? json_['blockExternalNetwork'] as core.bool
              : null,
          commands: json_.containsKey('commands')
              ? (json_['commands'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          entrypoint: json_.containsKey('entrypoint')
              ? json_['entrypoint'] as core.String
              : null,
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
              : null,
          options: json_.containsKey('options')
              ? json_['options'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockExternalNetwork != null)
          'blockExternalNetwork': blockExternalNetwork!,
        if (commands != null) 'commands': commands!,
        if (entrypoint != null) 'entrypoint': entrypoint!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (options != null) 'options': options!,
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// A new persistent disk or a local ssd.
///
/// A VM can only have one local SSD setting but multiple local SSD partitions.
/// https://cloud.google.com/compute/docs/disks#pdspecs.
/// https://cloud.google.com/compute/docs/disks#localssds.
class Disk {
  /// Local SSDs are available through both "SCSI" and "NVMe" interfaces.
  ///
  /// If not indicated, "NVMe" will be the default one for local ssds. We only
  /// support "SCSI" for persistent disks now.
  core.String? diskInterface;

  /// Name of a public or custom image used as the data source.
  ///
  /// For example, the following are all valid URLs: (1) Specify the image by
  /// its family name: projects/{project}/global/images/family/{image_family}
  /// (2) Specify the image version:
  /// projects/{project}/global/images/{image_version} You can also use Batch
  /// customized image in short names. The following image values are supported
  /// for a boot disk: "batch-debian": use Batch Debian images. "batch-centos":
  /// use Batch CentOS images. "batch-cos": use Batch Container-Optimized
  /// images.
  core.String? image;

  /// Disk size in GB.
  ///
  /// For persistent disk, this field is ignored if `data_source` is `image` or
  /// `snapshot`. For local SSD, size_gb should be a multiple of 375GB,
  /// otherwise, the final size will be the next greater multiple of 375 GB. For
  /// boot disk, Batch will calculate the boot disk size based on source image
  /// and task requirements if you do not speicify the size. If both this field
  /// and the boot_disk_mib field in task spec's compute_resource are defined,
  /// Batch will only honor this field.
  core.String? sizeGb;

  /// Name of a snapshot used as the data source.
  core.String? snapshot;

  /// Disk type as shown in `gcloud compute disk-types list`.
  ///
  /// For example, local SSD uses type "local-ssd". Persistent disks and boot
  /// disks use "pd-balanced", "pd-extreme", "pd-ssd" or "pd-standard".
  core.String? type;

  Disk({
    this.diskInterface,
    this.image,
    this.sizeGb,
    this.snapshot,
    this.type,
  });

  Disk.fromJson(core.Map json_)
      : this(
          diskInterface: json_.containsKey('diskInterface')
              ? json_['diskInterface'] as core.String
              : null,
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          sizeGb: json_.containsKey('sizeGb')
              ? json_['sizeGb'] as core.String
              : null,
          snapshot: json_.containsKey('snapshot')
              ? json_['snapshot'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskInterface != null) 'diskInterface': diskInterface!,
        if (image != null) 'image': image!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (snapshot != null) 'snapshot': snapshot!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// An Environment describes a collection of environment variables to set when
/// executing Tasks.
class Environment {
  /// An encrypted JSON dictionary where the key/value pairs correspond to
  /// environment variable names and their values.
  KMSEnvMap? encryptedVariables;

  /// A map of environment variable names to Secret Manager secret names.
  ///
  /// The VM will access the named secrets to set the value of each environment
  /// variable.
  core.Map<core.String, core.String>? secretVariables;

  /// A map of environment variable names to values.
  core.Map<core.String, core.String>? variables;

  Environment({
    this.encryptedVariables,
    this.secretVariables,
    this.variables,
  });

  Environment.fromJson(core.Map json_)
      : this(
          encryptedVariables: json_.containsKey('encryptedVariables')
              ? KMSEnvMap.fromJson(json_['encryptedVariables']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secretVariables: json_.containsKey('secretVariables')
              ? (json_['secretVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          variables: json_.containsKey('variables')
              ? (json_['variables'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptedVariables != null)
          'encryptedVariables': encryptedVariables!,
        if (secretVariables != null) 'secretVariables': secretVariables!,
        if (variables != null) 'variables': variables!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Represents a Google Cloud Storage volume.
class GCS {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.:
  /// bucket_name, bucket_name/subdirectory/
  core.String? remotePath;

  GCS({
    this.remotePath,
  });

  GCS.fromJson(core.Map json_)
      : this(
          remotePath: json_.containsKey('remotePath')
              ? json_['remotePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (remotePath != null) 'remotePath': remotePath!,
      };
}

/// InstancePolicy describes an instance type and resources attached to each VM
/// created by this InstancePolicy.
class InstancePolicy {
  /// The accelerators attached to each VM instance.
  core.List<Accelerator>? accelerators;

  /// Book disk to be created and attached to each VM by this InstancePolicy.
  ///
  /// Boot disk will be deleted when the VM is deleted.
  Disk? bootDisk;

  /// Non-boot disks to be attached for each VM created by this InstancePolicy.
  ///
  /// New disks will be deleted when the VM is deleted.
  core.List<AttachedDisk>? disks;

  /// The Compute Engine machine type.
  core.String? machineType;

  /// The minimum CPU platform.
  ///
  /// See
  /// `https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform`.
  /// Not yet implemented.
  core.String? minCpuPlatform;

  /// The provisioning model.
  /// Possible string values are:
  /// - "PROVISIONING_MODEL_UNSPECIFIED" : Unspecified.
  /// - "STANDARD" : Standard VM.
  /// - "SPOT" : SPOT VM.
  /// - "PREEMPTIBLE" : Preemptible VM (PVM). Above SPOT VM is the preferable
  /// model for preemptible VM instances: the old preemptible VM model
  /// (indicated by this field) is the older model, and has been migrated to use
  /// the SPOT model as the underlying technology. This old model will still be
  /// supported.
  core.String? provisioningModel;

  InstancePolicy({
    this.accelerators,
    this.bootDisk,
    this.disks,
    this.machineType,
    this.minCpuPlatform,
    this.provisioningModel,
  });

  InstancePolicy.fromJson(core.Map json_)
      : this(
          accelerators: json_.containsKey('accelerators')
              ? (json_['accelerators'] as core.List)
                  .map((value) => Accelerator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bootDisk: json_.containsKey('bootDisk')
              ? Disk.fromJson(
                  json_['bootDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => AttachedDisk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          minCpuPlatform: json_.containsKey('minCpuPlatform')
              ? json_['minCpuPlatform'] as core.String
              : null,
          provisioningModel: json_.containsKey('provisioningModel')
              ? json_['provisioningModel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (bootDisk != null) 'bootDisk': bootDisk!,
        if (disks != null) 'disks': disks!,
        if (machineType != null) 'machineType': machineType!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (provisioningModel != null) 'provisioningModel': provisioningModel!,
      };
}

/// Either an InstancePolicy or an instance template.
class InstancePolicyOrTemplate {
  /// Set this field true if users want Batch to help fetch drivers from a third
  /// party location and install them for GPUs specified in policy.accelerators
  /// or instance_template on their behalf.
  ///
  /// Default is false.
  core.bool? installGpuDrivers;

  /// Name of an instance template used to create VMs.
  ///
  /// Named the field as 'instance_template' instead of 'template' to avoid c++
  /// keyword conflict.
  core.String? instanceTemplate;

  /// InstancePolicy.
  InstancePolicy? policy;

  InstancePolicyOrTemplate({
    this.installGpuDrivers,
    this.instanceTemplate,
    this.policy,
  });

  InstancePolicyOrTemplate.fromJson(core.Map json_)
      : this(
          installGpuDrivers: json_.containsKey('installGpuDrivers')
              ? json_['installGpuDrivers'] as core.bool
              : null,
          instanceTemplate: json_.containsKey('instanceTemplate')
              ? json_['instanceTemplate'] as core.String
              : null,
          policy: json_.containsKey('policy')
              ? InstancePolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installGpuDrivers != null) 'installGpuDrivers': installGpuDrivers!,
        if (instanceTemplate != null) 'instanceTemplate': instanceTemplate!,
        if (policy != null) 'policy': policy!,
      };
}

/// VM instance status.
class InstanceStatus {
  /// The Compute Engine machine type.
  core.String? machineType;

  /// The VM instance provisioning model.
  /// Possible string values are:
  /// - "PROVISIONING_MODEL_UNSPECIFIED" : Unspecified.
  /// - "STANDARD" : Standard VM.
  /// - "SPOT" : SPOT VM.
  /// - "PREEMPTIBLE" : Preemptible VM (PVM). Above SPOT VM is the preferable
  /// model for preemptible VM instances: the old preemptible VM model
  /// (indicated by this field) is the older model, and has been migrated to use
  /// the SPOT model as the underlying technology. This old model will still be
  /// supported.
  core.String? provisioningModel;

  /// The max number of tasks can be assigned to this instance type.
  core.String? taskPack;

  InstanceStatus({
    this.machineType,
    this.provisioningModel,
    this.taskPack,
  });

  InstanceStatus.fromJson(core.Map json_)
      : this(
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          provisioningModel: json_.containsKey('provisioningModel')
              ? json_['provisioningModel'] as core.String
              : null,
          taskPack: json_.containsKey('taskPack')
              ? json_['taskPack'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (machineType != null) 'machineType': machineType!,
        if (provisioningModel != null) 'provisioningModel': provisioningModel!,
        if (taskPack != null) 'taskPack': taskPack!,
      };
}

/// The Cloud Batch Job description.
class Job {
  /// Compute resource allocation for all TaskGroups in the Job.
  AllocationPolicy? allocationPolicy;

  /// When the Job was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Labels for the Job.
  ///
  /// Labels could be user provided or system generated. For example, "labels":
  /// { "department": "finance", "environment": "test" } You can assign up to 64
  /// labels.
  /// [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// apply. Label names that start with "goog-" or "google-" are reserved.
  core.Map<core.String, core.String>? labels;

  /// Log preservation policy for the Job.
  LogsPolicy? logsPolicy;

  /// Job name.
  ///
  /// For example: "projects/123456/locations/us-central1/jobs/job01".
  ///
  /// Output only.
  core.String? name;

  /// Notification configurations.
  core.List<JobNotification>? notifications;

  /// Priority of the Job.
  ///
  /// The valid value range is \[0, 100). A job with higher priority value is
  /// more likely to run earlier if all other requirements are satisfied.
  core.String? priority;

  /// Job status.
  ///
  /// It is read only for users.
  ///
  /// Output only.
  JobStatus? status;

  /// TaskGroups in the Job.
  ///
  /// Only one TaskGroup is supported now.
  ///
  /// Required.
  core.List<TaskGroup>? taskGroups;

  /// A system generated unique ID (in UUID4 format) for the Job.
  ///
  /// Output only.
  core.String? uid;

  /// The last time the Job was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Job({
    this.allocationPolicy,
    this.createTime,
    this.labels,
    this.logsPolicy,
    this.name,
    this.notifications,
    this.priority,
    this.status,
    this.taskGroups,
    this.uid,
    this.updateTime,
  });

  Job.fromJson(core.Map json_)
      : this(
          allocationPolicy: json_.containsKey('allocationPolicy')
              ? AllocationPolicy.fromJson(json_['allocationPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          logsPolicy: json_.containsKey('logsPolicy')
              ? LogsPolicy.fromJson(
                  json_['logsPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notifications: json_.containsKey('notifications')
              ? (json_['notifications'] as core.List)
                  .map((value) => JobNotification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          status: json_.containsKey('status')
              ? JobStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          taskGroups: json_.containsKey('taskGroups')
              ? (json_['taskGroups'] as core.List)
                  .map((value) => TaskGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocationPolicy != null) 'allocationPolicy': allocationPolicy!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (logsPolicy != null) 'logsPolicy': logsPolicy!,
        if (name != null) 'name': name!,
        if (notifications != null) 'notifications': notifications!,
        if (priority != null) 'priority': priority!,
        if (status != null) 'status': status!,
        if (taskGroups != null) 'taskGroups': taskGroups!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Notification configurations.
class JobNotification {
  /// The attribute requirements of messages to be sent to this Pub/Sub topic.
  ///
  /// Without this field, no message will be sent.
  Message? message;

  /// The Pub/Sub topic where notifications like the job state changes will be
  /// published.
  ///
  /// This topic exist in the same project as the job and billings will be
  /// charged to this project. If not specified, no Pub/Sub messages will be
  /// sent. Topic format: `projects/{project}/topics/{topic}`.
  core.String? pubsubTopic;

  JobNotification({
    this.message,
    this.pubsubTopic,
  });

  JobNotification.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
      };
}

/// Job status.
class JobStatus {
  /// The duration of time that the Job spent in status RUNNING.
  core.String? runDuration;

  /// Job state
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "QUEUED" : Job is admitted (validated and persisted) and waiting for
  /// resources.
  /// - "SCHEDULED" : Job is scheduled to run as soon as resource allocation is
  /// ready. The resource allocation may happen at a later time but with a high
  /// chance to succeed.
  /// - "RUNNING" : Resource allocation has been successful. At least one Task
  /// in the Job is RUNNING.
  /// - "SUCCEEDED" : All Tasks in the Job have finished successfully.
  /// - "FAILED" : At least one Task in the Job has failed.
  /// - "DELETION_IN_PROGRESS" : The Job will be deleted, but has not been
  /// deleted yet. Typically this is because resources used by the Job are still
  /// being cleaned up.
  core.String? state;

  /// Job status events
  core.List<StatusEvent>? statusEvents;

  /// Aggregated task status for each TaskGroup in the Job.
  ///
  /// The map key is TaskGroup ID.
  core.Map<core.String, TaskGroupStatus>? taskGroups;

  JobStatus({
    this.runDuration,
    this.state,
    this.statusEvents,
    this.taskGroups,
  });

  JobStatus.fromJson(core.Map json_)
      : this(
          runDuration: json_.containsKey('runDuration')
              ? json_['runDuration'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusEvents: json_.containsKey('statusEvents')
              ? (json_['statusEvents'] as core.List)
                  .map((value) => StatusEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          taskGroups: json_.containsKey('taskGroups')
              ? (json_['taskGroups'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    TaskGroupStatus.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runDuration != null) 'runDuration': runDuration!,
        if (state != null) 'state': state!,
        if (statusEvents != null) 'statusEvents': statusEvents!,
        if (taskGroups != null) 'taskGroups': taskGroups!,
      };
}

class KMSEnvMap {
  /// The value of the cipherText response from the `encrypt` method.
  core.String? cipherText;

  /// The name of the KMS key that will be used to decrypt the cipher text.
  core.String? keyName;

  KMSEnvMap({
    this.cipherText,
    this.keyName,
  });

  KMSEnvMap.fromJson(core.Map json_)
      : this(
          cipherText: json_.containsKey('cipherText')
              ? json_['cipherText'] as core.String
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cipherText != null) 'cipherText': cipherText!,
        if (keyName != null) 'keyName': keyName!,
      };
}

/// LifecyclePolicy describes how to deal with task failures based on different
/// conditions.
class LifecyclePolicy {
  /// Action to execute when ActionCondition is true.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Action unspecified.
  /// - "RETRY_TASK" : Action that tasks in the group will be scheduled to
  /// re-execute.
  /// - "FAIL_TASK" : Action that tasks in the group will be stopped
  /// immediately.
  core.String? action;

  /// Conditions that decide why a task failure is dealt with a specific action.
  ActionCondition? actionCondition;

  LifecyclePolicy({
    this.action,
    this.actionCondition,
  });

  LifecyclePolicy.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          actionCondition: json_.containsKey('actionCondition')
              ? ActionCondition.fromJson(json_['actionCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (actionCondition != null) 'actionCondition': actionCondition!,
      };
}

/// ListJob Response.
class ListJobsResponse {
  /// Jobs.
  core.List<Job>? jobs;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListJobsResponse({
    this.jobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
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
        if (jobs != null) 'jobs': jobs!,
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

/// ListTasks Response.
class ListTasksResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// Tasks.
  core.List<Task>? tasks;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTasksResponse({
    this.nextPageToken,
    this.tasks,
    this.unreachable,
  });

  ListTasksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tasks != null) 'tasks': tasks!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

class LocationPolicy {
  /// A list of allowed location names represented by internal URLs.
  ///
  /// Each location can be a region or a zone. Only one region or multiple zones
  /// in one region is supported now. For example, \["regions/us-central1"\]
  /// allow VMs in any zones in region us-central1. \["zones/us-central1-a",
  /// "zones/us-central1-c"\] only allow VMs in zones us-central1-a and
  /// us-central1-c. All locations end up in different regions would cause
  /// errors. For example, \["regions/us-central1", "zones/us-central1-a",
  /// "zones/us-central1-b", "zones/us-west1-a"\] contains 2 regions
  /// "us-central1" and "us-west1". An error is expected in this case.
  core.List<core.String>? allowedLocations;

  LocationPolicy({
    this.allowedLocations,
  });

  LocationPolicy.fromJson(core.Map json_)
      : this(
          allowedLocations: json_.containsKey('allowedLocations')
              ? (json_['allowedLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedLocations != null) 'allowedLocations': allowedLocations!,
      };
}

/// LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be
/// preserved.
class LogsPolicy {
  /// Where logs should be saved.
  /// Possible string values are:
  /// - "DESTINATION_UNSPECIFIED" : Logs are not preserved.
  /// - "CLOUD_LOGGING" : Logs are streamed to Cloud Logging.
  /// - "PATH" : Logs are saved to a file path.
  core.String? destination;

  /// The path to which logs are saved when the destination = PATH.
  ///
  /// This can be a local file path on the VM, or under the mount point of a
  /// Persistent Disk or Filestore, or a Cloud Storage path.
  core.String? logsPath;

  LogsPolicy({
    this.destination,
    this.logsPath,
  });

  LogsPolicy.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          logsPath: json_.containsKey('logsPath')
              ? json_['logsPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (logsPath != null) 'logsPath': logsPath!,
      };
}

/// Message details.
///
/// Describe the attribute that a message should have. Without specified message
/// attributes, no message will be sent by default.
class Message {
  /// The new job state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "QUEUED" : Job is admitted (validated and persisted) and waiting for
  /// resources.
  /// - "SCHEDULED" : Job is scheduled to run as soon as resource allocation is
  /// ready. The resource allocation may happen at a later time but with a high
  /// chance to succeed.
  /// - "RUNNING" : Resource allocation has been successful. At least one Task
  /// in the Job is RUNNING.
  /// - "SUCCEEDED" : All Tasks in the Job have finished successfully.
  /// - "FAILED" : At least one Task in the Job has failed.
  /// - "DELETION_IN_PROGRESS" : The Job will be deleted, but has not been
  /// deleted yet. Typically this is because resources used by the Job are still
  /// being cleaned up.
  core.String? newJobState;

  /// The new task state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : unknown state
  /// - "PENDING" : The Task is created and waiting for resources.
  /// - "ASSIGNED" : The Task is assigned to at least one VM.
  /// - "RUNNING" : The Task is running.
  /// - "FAILED" : The Task has failed.
  /// - "SUCCEEDED" : The Task has succeeded.
  core.String? newTaskState;

  /// The message type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified.
  /// - "JOB_STATE_CHANGED" : Notify users that the job state has changed.
  /// - "TASK_STATE_CHANGED" : Notify users that the task state has changed.
  core.String? type;

  Message({
    this.newJobState,
    this.newTaskState,
    this.type,
  });

  Message.fromJson(core.Map json_)
      : this(
          newJobState: json_.containsKey('newJobState')
              ? json_['newJobState'] as core.String
              : null,
          newTaskState: json_.containsKey('newTaskState')
              ? json_['newTaskState'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newJobState != null) 'newJobState': newJobState!,
        if (newTaskState != null) 'newTaskState': newTaskState!,
        if (type != null) 'type': type!,
      };
}

/// Represents an NFS volume.
class NFS {
  /// Remote source path exported from the NFS, e.g., "/share".
  core.String? remotePath;

  /// The IP address of the NFS.
  core.String? server;

  NFS({
    this.remotePath,
    this.server,
  });

  NFS.fromJson(core.Map json_)
      : this(
          remotePath: json_.containsKey('remotePath')
              ? json_['remotePath'] as core.String
              : null,
          server: json_.containsKey('server')
              ? json_['server'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (remotePath != null) 'remotePath': remotePath!,
        if (server != null) 'server': server!,
      };
}

/// A network interface.
class NetworkInterface {
  /// The URL of an existing network resource.
  ///
  /// You can specify the network as a full or partial URL. For example, the
  /// following are all valid URLs:
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  /// projects/{project}/global/networks/{network} global/networks/{network}
  core.String? network;

  /// Default is false (with an external IP address).
  ///
  /// Required if no external public IP address is attached to the VM. If no
  /// external public IP address, additional configuration is required to allow
  /// the VM to access Google Services. See
  /// https://cloud.google.com/vpc/docs/configure-private-google-access and
  /// https://cloud.google.com/nat/docs/gce-example#create-nat for more
  /// information.
  core.bool? noExternalIpAddress;

  /// The URL of an existing subnetwork resource in the network.
  ///
  /// You can specify the subnetwork as a full or partial URL. For example, the
  /// following are all valid URLs:
  /// https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}
  /// projects/{project}/regions/{region}/subnetworks/{subnetwork}
  /// regions/{region}/subnetworks/{subnetwork}
  core.String? subnetwork;

  NetworkInterface({
    this.network,
    this.noExternalIpAddress,
    this.subnetwork,
  });

  NetworkInterface.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          noExternalIpAddress: json_.containsKey('noExternalIpAddress')
              ? json_['noExternalIpAddress'] as core.bool
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (noExternalIpAddress != null)
          'noExternalIpAddress': noExternalIpAddress!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// NetworkPolicy describes VM instance network configurations.
class NetworkPolicy {
  /// Network configurations.
  core.List<NetworkInterface>? networkInterfaces;

  NetworkPolicy({
    this.networkInterfaces,
  });

  NetworkPolicy.fromJson(core.Map json_)
      : this(
          networkInterfaces: json_.containsKey('networkInterfaces')
              ? (json_['networkInterfaces'] as core.List)
                  .map((value) => NetworkInterface.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
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

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request to report agent's state.
///
/// The Request itself implies the agent is healthy.
class ReportAgentStateRequest {
  /// Agent info.
  AgentInfo? agentInfo;

  /// Agent timing info.
  AgentTimingInfo? agentTimingInfo;

  /// Agent metadata.
  AgentMetadata? metadata;

  ReportAgentStateRequest({
    this.agentInfo,
    this.agentTimingInfo,
    this.metadata,
  });

  ReportAgentStateRequest.fromJson(core.Map json_)
      : this(
          agentInfo: json_.containsKey('agentInfo')
              ? AgentInfo.fromJson(
                  json_['agentInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          agentTimingInfo: json_.containsKey('agentTimingInfo')
              ? AgentTimingInfo.fromJson(json_['agentTimingInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? AgentMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentInfo != null) 'agentInfo': agentInfo!,
        if (agentTimingInfo != null) 'agentTimingInfo': agentTimingInfo!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Response to ReportAgentStateRequest.
class ReportAgentStateResponse {
  /// Default report interval override
  core.String? defaultReportInterval;

  /// Minimum report interval override
  core.String? minReportInterval;

  /// Tasks assigned to the agent
  core.List<AgentTask>? tasks;

  ReportAgentStateResponse({
    this.defaultReportInterval,
    this.minReportInterval,
    this.tasks,
  });

  ReportAgentStateResponse.fromJson(core.Map json_)
      : this(
          defaultReportInterval: json_.containsKey('defaultReportInterval')
              ? json_['defaultReportInterval'] as core.String
              : null,
          minReportInterval: json_.containsKey('minReportInterval')
              ? json_['minReportInterval'] as core.String
              : null,
          tasks: json_.containsKey('tasks')
              ? (json_['tasks'] as core.List)
                  .map((value) => AgentTask.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultReportInterval != null)
          'defaultReportInterval': defaultReportInterval!,
        if (minReportInterval != null) 'minReportInterval': minReportInterval!,
        if (tasks != null) 'tasks': tasks!,
      };
}

/// Runnable describes instructions for executing a specific script or container
/// as part of a Task.
class Runnable {
  /// By default, after a Runnable fails, no further Runnable are executed.
  ///
  /// This flag indicates that this Runnable must be run even if the Task has
  /// already failed. This is useful for Runnables that copy output files off of
  /// the VM or for debugging. The always_run flag does not override the Task's
  /// overall max_run_duration. If the max_run_duration has expired then no
  /// further Runnables will execute, not even always_run Runnables.
  core.bool? alwaysRun;

  /// This flag allows a Runnable to continue running in the background while
  /// the Task executes subsequent Runnables.
  ///
  /// This is useful to provide services to other Runnables (or to provide
  /// debugging support tools like SSH servers).
  core.bool? background;

  /// Barrier runnable.
  Barrier? barrier;

  /// Container runnable.
  Container? container;

  /// Environment variables for this Runnable (overrides variables set for the
  /// whole Task or TaskGroup).
  Environment? environment;

  /// Normally, a non-zero exit status causes the Task to fail.
  ///
  /// This flag allows execution of other Runnables to continue instead.
  core.bool? ignoreExitStatus;

  /// Script runnable.
  Script? script;

  /// Timeout for this Runnable.
  core.String? timeout;

  Runnable({
    this.alwaysRun,
    this.background,
    this.barrier,
    this.container,
    this.environment,
    this.ignoreExitStatus,
    this.script,
    this.timeout,
  });

  Runnable.fromJson(core.Map json_)
      : this(
          alwaysRun: json_.containsKey('alwaysRun')
              ? json_['alwaysRun'] as core.bool
              : null,
          background: json_.containsKey('background')
              ? json_['background'] as core.bool
              : null,
          barrier: json_.containsKey('barrier')
              ? Barrier.fromJson(
                  json_['barrier'] as core.Map<core.String, core.dynamic>)
              : null,
          container: json_.containsKey('container')
              ? Container.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
          environment: json_.containsKey('environment')
              ? Environment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          ignoreExitStatus: json_.containsKey('ignoreExitStatus')
              ? json_['ignoreExitStatus'] as core.bool
              : null,
          script: json_.containsKey('script')
              ? Script.fromJson(
                  json_['script'] as core.Map<core.String, core.dynamic>)
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alwaysRun != null) 'alwaysRun': alwaysRun!,
        if (background != null) 'background': background!,
        if (barrier != null) 'barrier': barrier!,
        if (container != null) 'container': container!,
        if (environment != null) 'environment': environment!,
        if (ignoreExitStatus != null) 'ignoreExitStatus': ignoreExitStatus!,
        if (script != null) 'script': script!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Script runnable.
class Script {
  /// Script file path on the host VM.
  core.String? path;

  /// Shell script text.
  core.String? text;

  Script({
    this.path,
    this.text,
  });

  Script.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (text != null) 'text': text!,
      };
}

/// Carries information about a Google Cloud service account.
class ServiceAccount {
  /// Email address of the service account.
  ///
  /// If not specified, the default Compute Engine service account for the
  /// project will be used. If instance template is being used, the service
  /// account has to be specified in the instance template and it has to match
  /// the email field here.
  core.String? email;

  ServiceAccount({
    this.email,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
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

/// Status event
class StatusEvent {
  /// Description of the event.
  core.String? description;

  /// The time this event occurred.
  core.String? eventTime;

  /// Task Execution
  TaskExecution? taskExecution;

  /// Type of the event.
  core.String? type;

  StatusEvent({
    this.description,
    this.eventTime,
    this.taskExecution,
    this.type,
  });

  StatusEvent.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          eventTime: json_.containsKey('eventTime')
              ? json_['eventTime'] as core.String
              : null,
          taskExecution: json_.containsKey('taskExecution')
              ? TaskExecution.fromJson(
                  json_['taskExecution'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (taskExecution != null) 'taskExecution': taskExecution!,
        if (type != null) 'type': type!,
      };
}

/// A Cloud Batch task.
class Task {
  /// Task name.
  ///
  /// The name is generated from the parent TaskGroup name and 'id' field. For
  /// example:
  /// "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01/tasks/task01".
  core.String? name;

  /// Task Status.
  TaskStatus? status;

  Task({
    this.name,
    this.status,
  });

  Task.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          status: json_.containsKey('status')
              ? TaskStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
      };
}

/// This Task Execution field includes detail information for task execution
/// procedures, based on StatusEvent types.
class TaskExecution {
  /// When task is completed as the status of FAILED or SUCCEEDED, exit code is
  /// for one task execution result, default is 0 as success.
  core.int? exitCode;

  TaskExecution({
    this.exitCode,
  });

  TaskExecution.fromJson(core.Map json_)
      : this(
          exitCode: json_.containsKey('exitCode')
              ? json_['exitCode'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exitCode != null) 'exitCode': exitCode!,
      };
}

/// A TaskGroup contains one or multiple Tasks that share the same Runnable but
/// with different runtime parameters.
class TaskGroup {
  /// TaskGroup name.
  ///
  /// The system generates this field based on parent Job name. For example:
  /// "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01".
  ///
  /// Output only.
  core.String? name;

  /// Max number of tasks that can run in parallel.
  ///
  /// Default to min(task_count, 1000).
  core.String? parallelism;

  /// When true, Batch will configure SSH to allow passwordless login between
  /// VMs running the Batch tasks in the same TaskGroup.
  core.bool? permissiveSsh;

  /// When true, Batch will populate a file with a list of all VMs assigned to
  /// the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the
  /// path of that file.
  ///
  /// Defaults to false.
  core.bool? requireHostsFile;

  /// Number of Tasks in the TaskGroup.
  ///
  /// default is 1
  core.String? taskCount;

  /// Max number of tasks that can be run on a VM at the same time.
  ///
  /// If not specified, the system will decide a value based on available
  /// compute resources on a VM and task requirements.
  core.String? taskCountPerNode;

  /// An array of environment variable mappings, which are passed to Tasks with
  /// matching indices.
  ///
  /// If task_environments is used then task_count should not be specified in
  /// the request (and will be ignored). Task count will be the length of
  /// task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT
  /// environment variable, in addition to any environment variables set in
  /// task_environments, specifying the number of Tasks in the Task's parent
  /// TaskGroup, and the specific Task's index in the TaskGroup (0 through
  /// BATCH_TASK_COUNT - 1). task_environments supports up to 200 entries.
  core.List<Environment>? taskEnvironments;

  /// Tasks in the group share the same task spec.
  ///
  /// Required.
  TaskSpec? taskSpec;

  TaskGroup({
    this.name,
    this.parallelism,
    this.permissiveSsh,
    this.requireHostsFile,
    this.taskCount,
    this.taskCountPerNode,
    this.taskEnvironments,
    this.taskSpec,
  });

  TaskGroup.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parallelism: json_.containsKey('parallelism')
              ? json_['parallelism'] as core.String
              : null,
          permissiveSsh: json_.containsKey('permissiveSsh')
              ? json_['permissiveSsh'] as core.bool
              : null,
          requireHostsFile: json_.containsKey('requireHostsFile')
              ? json_['requireHostsFile'] as core.bool
              : null,
          taskCount: json_.containsKey('taskCount')
              ? json_['taskCount'] as core.String
              : null,
          taskCountPerNode: json_.containsKey('taskCountPerNode')
              ? json_['taskCountPerNode'] as core.String
              : null,
          taskEnvironments: json_.containsKey('taskEnvironments')
              ? (json_['taskEnvironments'] as core.List)
                  .map((value) => Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          taskSpec: json_.containsKey('taskSpec')
              ? TaskSpec.fromJson(
                  json_['taskSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parallelism != null) 'parallelism': parallelism!,
        if (permissiveSsh != null) 'permissiveSsh': permissiveSsh!,
        if (requireHostsFile != null) 'requireHostsFile': requireHostsFile!,
        if (taskCount != null) 'taskCount': taskCount!,
        if (taskCountPerNode != null) 'taskCountPerNode': taskCountPerNode!,
        if (taskEnvironments != null) 'taskEnvironments': taskEnvironments!,
        if (taskSpec != null) 'taskSpec': taskSpec!,
      };
}

/// Aggregated task status for a TaskGroup.
class TaskGroupStatus {
  /// Count of task in each state in the TaskGroup.
  ///
  /// The map key is task state name.
  core.Map<core.String, core.String>? counts;

  /// Status of instances allocated for the TaskGroup.
  core.List<InstanceStatus>? instances;

  TaskGroupStatus({
    this.counts,
    this.instances,
  });

  TaskGroupStatus.fromJson(core.Map json_)
      : this(
          counts: json_.containsKey('counts')
              ? (json_['counts'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => InstanceStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (counts != null) 'counts': counts!,
        if (instances != null) 'instances': instances!,
      };
}

/// Spec of a task
class TaskSpec {
  /// ComputeResource requirements.
  ComputeResource? computeResource;

  /// Environment variables to set before running the Task.
  Environment? environment;

  /// Deprecated: please use environment(non-plural) instead.
  core.Map<core.String, core.String>? environments;

  /// Lifecycle management schema when any task in a task group is failed.
  ///
  /// The valid size of lifecycle policies are \[0, 10\]. For each lifecycle
  /// policy, when the condition is met, the action in that policy will execute.
  /// If there are multiple policies that the task execution result matches, we
  /// use the action from the first matched policy. If task execution result
  /// does not meet with any of the defined lifecycle policy, we consider it as
  /// the default policy. Default policy means if the exit code is 0, exit task.
  /// If task ends with non-zero exit code, retry the task with max_retry_count.
  core.List<LifecyclePolicy>? lifecyclePolicies;

  /// Maximum number of retries on failures.
  ///
  /// The default, 0, which means never retry. The valid value range is \[0,
  /// 10\].
  core.int? maxRetryCount;

  /// Maximum duration the task should run.
  ///
  /// The task will be killed and marked as FAILED if over this limit.
  core.String? maxRunDuration;

  /// The sequence of scripts or containers to run for this Task.
  ///
  /// Each Task using this TaskSpec executes its list of runnables in order. The
  /// Task succeeds if all of its runnables either exit with a zero status or
  /// any that exit with a non-zero status have the ignore_exit_status flag.
  /// Background runnables are killed automatically (if they have not already
  /// exited) a short time after all foreground runnables have completed. Even
  /// though this is likely to result in a non-zero exit status for the
  /// background runnable, these automatic kills are not treated as Task
  /// failures.
  core.List<Runnable>? runnables;

  /// Volumes to mount before running Tasks using this TaskSpec.
  core.List<Volume>? volumes;

  TaskSpec({
    this.computeResource,
    this.environment,
    this.environments,
    this.lifecyclePolicies,
    this.maxRetryCount,
    this.maxRunDuration,
    this.runnables,
    this.volumes,
  });

  TaskSpec.fromJson(core.Map json_)
      : this(
          computeResource: json_.containsKey('computeResource')
              ? ComputeResource.fromJson(json_['computeResource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          environment: json_.containsKey('environment')
              ? Environment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lifecyclePolicies: json_.containsKey('lifecyclePolicies')
              ? (json_['lifecyclePolicies'] as core.List)
                  .map((value) => LifecyclePolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxRetryCount: json_.containsKey('maxRetryCount')
              ? json_['maxRetryCount'] as core.int
              : null,
          maxRunDuration: json_.containsKey('maxRunDuration')
              ? json_['maxRunDuration'] as core.String
              : null,
          runnables: json_.containsKey('runnables')
              ? (json_['runnables'] as core.List)
                  .map((value) => Runnable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeResource != null) 'computeResource': computeResource!,
        if (environment != null) 'environment': environment!,
        if (environments != null) 'environments': environments!,
        if (lifecyclePolicies != null) 'lifecyclePolicies': lifecyclePolicies!,
        if (maxRetryCount != null) 'maxRetryCount': maxRetryCount!,
        if (maxRunDuration != null) 'maxRunDuration': maxRunDuration!,
        if (runnables != null) 'runnables': runnables!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// Status of a task
class TaskStatus {
  /// Task state
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : unknown state
  /// - "PENDING" : The Task is created and waiting for resources.
  /// - "ASSIGNED" : The Task is assigned to at least one VM.
  /// - "RUNNING" : The Task is running.
  /// - "FAILED" : The Task has failed.
  /// - "SUCCEEDED" : The Task has succeeded.
  core.String? state;

  /// Detailed info about why the state is reached.
  core.List<StatusEvent>? statusEvents;

  TaskStatus({
    this.state,
    this.statusEvents,
  });

  TaskStatus.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusEvents: json_.containsKey('statusEvents')
              ? (json_['statusEvents'] as core.List)
                  .map((value) => StatusEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (statusEvents != null) 'statusEvents': statusEvents!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Volume describes a volume and parameters for it to be mounted to a VM.
class Volume {
  /// Device name of an attached disk volume, which should align with a
  /// device_name specified by
  /// job.allocation_policy.instances\[0\].policy.disks\[i\].device_name or
  /// defined by the given instance template in
  /// job.allocation_policy.instances\[0\].instance_template.
  core.String? deviceName;

  /// A Google Cloud Storage (GCS) volume.
  GCS? gcs;

  /// For Google Cloud Storage (GCS), mount options are the options supported by
  /// the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse).
  ///
  /// For existing persistent disks, mount options provided by the mount command
  /// (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are
  /// supported. This is due to restrictions of multi-writer mode
  /// (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms).
  /// For other attached disks and Network File System (NFS), mount options are
  /// these supported by the mount command
  /// (https://man7.org/linux/man-pages/man8/mount.8.html).
  core.List<core.String>? mountOptions;

  /// The mount path for the volume, e.g. /mnt/disks/share.
  core.String? mountPath;

  /// A Network File System (NFS) volume.
  ///
  /// For example, a Filestore file share.
  NFS? nfs;

  Volume({
    this.deviceName,
    this.gcs,
    this.mountOptions,
    this.mountPath,
    this.nfs,
  });

  Volume.fromJson(core.Map json_)
      : this(
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
          gcs: json_.containsKey('gcs')
              ? GCS
                  .fromJson(json_['gcs'] as core.Map<core.String, core.dynamic>)
              : null,
          mountOptions: json_.containsKey('mountOptions')
              ? (json_['mountOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
          nfs: json_.containsKey('nfs')
              ? NFS
                  .fromJson(json_['nfs'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceName != null) 'deviceName': deviceName!,
        if (gcs != null) 'gcs': gcs!,
        if (mountOptions != null) 'mountOptions': mountOptions!,
        if (mountPath != null) 'mountPath': mountPath!,
        if (nfs != null) 'nfs': nfs!,
      };
}
